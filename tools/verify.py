#!/usr/bin/env python3
"""Check the published package without network or third-party Python packages."""
import collections,hashlib,json,pathlib,re,subprocess,sys
from html.parser import HTMLParser
from urllib.parse import urlsplit,unquote
ROOT=pathlib.Path(__file__).resolve().parents[1];PUBLIC=ROOT/'public'
LANGS=['en','zh-cn','ja','ko','hi','es','de'];errors=[]
class Page(HTMLParser):
 def __init__(self):super().__init__();self.links=[];self.ids=set();self.lang='';self.h1=0
 def handle_starttag(self,tag,attrs):
  a=dict(attrs)
  if tag=='html':self.lang=a.get('lang','')
  if tag=='h1':self.h1+=1
  if 'id' in a:self.ids.add(a['id'])
  for k in ('href','src'):
   if k in a:self.links.append(a[k])
pages={}
for f in PUBLIC.rglob('*.html'):
 p=Page();p.feed(f.read_text());pages[f.resolve()]=p
 if not p.lang:errors.append(f'No language: {f}')
 if f.parent.name in LANGS and f.name not in ['genindex.html','search.html'] and p.h1!=1:errors.append(f'Expected one title: {f}')
links=0
for f,p in pages.items():
 for link in p.links:
  u=urlsplit(link)
  if u.scheme in ('mailto','javascript','data','tel'):continue
  if u.netloc:
   if u.netloc=='insanai.github.io' and u.path.startswith('/chinaexportcontrol/'):
    target=PUBLIC/unquote(u.path.removeprefix('/chinaexportcontrol/'))
   else:continue
  else:target=(f.parent/unquote(u.path)) if u.path else f
  if target.is_dir():target=target/'index.html'
  target=target.resolve();links+=1
  if not target.is_relative_to(PUBLIC.resolve()):errors.append(f'Escaping local path: {link}')
  elif not target.is_file():errors.append(f'Missing target: {f.relative_to(PUBLIC)} -> {link}')
  elif u.fragment and target.suffix=='.html' and unquote(u.fragment) not in pages[target].ids:errors.append(f'Missing anchor: {link} from {f.name}')
# CSS fonts are separate from HTML link attributes.
for f in PUBLIC.rglob('*.css'):
 for rel in re.findall(r'url\([\'\"]?([^\)\'\"]+)',f.read_text()):
  if not rel.startswith(('data:','http','#')) and not (f.parent/rel).is_file():errors.append(f'Missing CSS asset: {rel} in {f}')
atlas=json.loads((ROOT/'content/atlas.json').read_text());codes={r['code'] for r in atlas}
assert len(atlas)==40
assert collections.Counter((r['sector'],r['status']) for r in atlas)=={('ai','proposed-prohibited'):6,('ai','proposed-restricted'):17,('bio','proposed-prohibited'):3,('bio','proposed-restricted'):2,('solar','proposed-prohibited'):5,('solar','proposed-restricted'):7}
pdf_reports=[]
for lang in LANGS:
 d=json.loads((PUBLIC/lang/'reader-data.json').read_text())
 if len(d['atlas'])!=40 or len(d['chapters'])!=11:errors.append(f'Incomplete edition: {lang}')
 if [(r['id'],r['code'],r['point'],r['status']) for r in d['atlas']]!=[(r['id'],r['code'],r['point'],r['status']) for r in atlas]:errors.append(f'Changed atlas mapping: {lang}')
 pdf=PUBLIC/lang/'technology-borders.pdf'
 if not pdf.read_bytes().startswith(b'%PDF-'):errors.append(f'Not PDF: {pdf}')
 t=subprocess.run(['pdftotext','-layout',str(pdf),'-'],capture_output=True,check=True).stdout.decode('utf8');flat=re.sub(r'\s','',t)
 for code in codes:
  if code not in flat:errors.append(f'Missing {code} in {lang} PDF')
 if '\ufffd' in t:errors.append(f'Broken text decoding: {lang}')
 info=subprocess.run(['pdfinfo',str(pdf)],capture_output=True,check=True).stdout.decode();n=int(re.search(r'Pages:\s+(\d+)',info)[1]);pdf_reports.append({'language':lang,'pages':n,'bytes':pdf.stat().st_size,'sha256':hashlib.sha256(pdf.read_bytes()).hexdigest()})
 if n<20:errors.append(f'Unexpectedly short PDF: {lang}')
for source in json.loads((ROOT/'research/sources.json').read_text()):
 if 'snapshot' in source:
  f=ROOT/source['snapshot']
  if hashlib.sha256(f.read_bytes()).hexdigest()!=source['sha256']:errors.append(f'Source hash mismatch: {source["id"]}')
for f in (ROOT/'content').glob('*'):
 if any(c in f.read_text() for c in ['\u2014','\u2013']):errors.append(f'Prose contains a dash outside ASCII: {f.name}')
# Both original attachment bytes must be identical to the published download.
for i in (1,2):
 a=ROOT/f'research/snapshots/announcement-48-attachment-{i}.wps';b=PUBLIC/f'sources/announcement-48-attachment-{i}.wps'
 if a.read_bytes()!=b.read_bytes():errors.append(f'Original WPS changed: {i}')
report={'checked':'2026-11-02','html_pages':len(pages),'local_links_and_assets':links,'languages':len(LANGS),'technology_points_per_edition':40,'pdfs':pdf_reports,'errors':errors}
(ROOT/'research/package-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(report,ensure_ascii=False,indent=2))
sys.exit(bool(errors))
