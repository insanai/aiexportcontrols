#!/usr/bin/env python3
"""Assemble seven GuideDog projects, build HTML/PDF, then package one Pages site."""
import argparse, html, json, pathlib, re, shutil, subprocess
from ui import LANGS, UI, SCENARIOS, COMPARE
ROOT=pathlib.Path(__file__).resolve().parents[1]
BOOK=ROOT/'book'
PUBLIC=ROOT/'public'
SOURCES=json.loads((ROOT/'research/sources.json').read_text())
BY_ID={r['id']:r for r in SOURCES}
ATLAS=json.loads((ROOT/'content/atlas.json').read_text())

def esc(s):return html.escape(str(s),quote=True)
def cite(text):
 def sub(m):
  ref=m.group(1)
  label=ref+m.group(2)
  return f'[{label}]({BY_ID[ref]["url"]})'
 return re.sub(r'\[('+'|'.join(sorted(BY_ID,key=len,reverse=True))+r')([^\]]*)\]',sub,text)
def table(rows):
 return '\n'+'\n'.join('| '+' | '.join(r)+' |' for r in [rows[0],['---']*len(rows[0])]+rows[1:])+'\n'
def localized_atlas(lang):
 if lang=='en':return ATLAS
 lines=(ROOT/f'content/{lang}.atlas').read_text().splitlines()
 assert len(lines)==len(ATLAS)
 return [dict(r,name=t.split('|',1)[0],detail=t.split('|',1)[1]) for r,t in zip(ATLAS,lines,strict=True)]
def atlas_md(rows,u):
 out=[]
 for n,r in enumerate(rows,1):
  out.append(f'## {n:02d}. {r["name"]}\n\n**{r["code"]} / {r["point"]}** | {u[r["sector"]]} | {u["prohibited" if r["status"].endswith("-prohibited") else "restricted"]}\n\n{r["detail"]} [CN-A1]\n')
 return '\n'.join(out)
def diagram(lang,kind):
 u=UI[lang]
 font={'zh-cn':'Noto Sans CJK SC','ja':'Noto Sans CJK JP','ko':'Noto Sans CJK KR','hi':'Noto Sans Devanagari'}.get(lang,'DejaVu Sans')
 pre=f'#set text(font: ("{font}", "DejaVu Sans"), size: 15pt, fill: rgb("#172e38"))\n#set par(justify: false)\n'
 q=lambda s: json.dumps(s,ensure_ascii=False)
 if kind=='sectors':
  body='#let row(label, n, col) = grid(columns: (140pt, 300pt, 40pt), gutter: 14pt, align: horizon, text(weight: "bold", label), rect(width: n / 40 * 300pt, height: 28pt, fill: col, stroke: none), text(size: 25pt, weight: "bold", str(n)))\n#stack(dir: ttb, spacing: 18pt,\n'+',\n'.join(f'row({q(u[k])}, {n}, rgb("{c}"))' for k,n,c in [('ai',23,'#b44232'),('bio',5,'#08716d'),('solar',12,'#d29b2b')])+'\n)'
  alt=' / '.join(f'{u[k]} {n}' for k,n in [('ai',23),('bio',5),('solar',12)])+' / CN48'
 elif kind=='timeline':
  labels={'en':['16 OCT 2026','Registration starts','15 NOV 2026','Comments close','DATE NOT FIXED','Final catalogue takes effect'],'zh-cn':['2026年10月16日','登记开始','2026年11月15日','征求意见结束','日期未定','正式目录实施'],'ja':['2026年10月16日','登録開始','2026年11月15日','意見募集終了','日付未定','最終目録実施'],'ko':['2026년 10월16일','등록 시작','2026년 11월15일','의견 수렴 종료','날짜 미정','최종 목록 시행'],'hi':['16 अक्टूबर 2026','पंजीकरण शुरू','15 नवंबर 2026','राय की अंतिम तारीख','तारीख तय नहीं','अंतिम सूची लागू'],'es':['16 OCT 2026','Empieza el registro','15 NOV 2026','Acaba la consulta','SIN FECHA FIJA','Catálogo definitivo'],'de':['16. OKT 2026','Registrierung beginnt','15. NOV 2026','Anhörung endet','TERMIN OFFEN','Endgültiger Katalog']}[lang]
  body='#let tile(date, label, col) = block(width: 172pt, height: 110pt, inset: 14pt, fill: col.lighten(93%), stroke: (top: 3pt + col))[#text(size: 11pt, weight: "bold", fill: col, date) #v(12pt) #text(size: 18pt, weight: "bold", label)]\n#grid(columns: (172pt,172pt,172pt), gutter: 12pt,\n'+',\n'.join(f'tile({q(labels[i])},{q(labels[i+1])},rgb("{c}"))' for i,c in [(0,'#b44232'),(2,'#08716d'),(4,'#52606a')])+'\n)'
  alt=' / '.join(labels)+' / CN48'
 else:
  labels={'en':['Already public','Draft exclusion','First open release','Facilitated permission','Private technology','Check criteria and transfer'],'zh-cn':['已公开技术','草案排除','首次开源','便利许可','私有技术','核对条件与转移'],'ja':['既存公知','案の除外','初めての公開','便宜ある許可','非公開技術','条件と移転を確認'],'ko':['기존 공개','초안 제외','최초 공개','편의 허가','비공개 기술','조건·이전 확인'],'hi':['पहले से सार्वजनिक','मसौदे में बाहर','पहली खुली रिलीज','सरल अनुमति','निजी तकनीक','कसौटी·हस्तांतरण देखें'],'es':['Ya público','Exclusión propuesta','Primera apertura','Permiso facilitado','Tecnología privada','Revisar criterio y entrega'],'de':['Bereits öffentlich','Entwurfsausnahme','Erste Öffnung','Erleichterte Erlaubnis','Private Technik','Kriterien und Übergabe prüfen']}[lang]
  body='#let tile(a,b,c) = block(width: 540pt, inset: 15pt, fill: c.lighten(94%), stroke: (left: 4pt + c))[#grid(columns: (205pt,1fr), gutter: 20pt, text(weight: "bold", a), b)]\n#stack(dir: ttb, spacing: 12pt,\n'+',\n'.join(f'tile({q(labels[i])},{q(labels[i+1])},rgb("{c}"))' for i,c in [(0,'#08716d'),(2,'#a57516'),(4,'#b44232')])+'\n)'
  alt=' / '.join(labels)+' / CN-A1'
 return '\n```{typst-diagram}\n:alt: '+alt+'\n:caption: '+alt+'\n\n'+pre+body+'\n```\n'
def source_md(u):
 out=['## '+u['sources']]
 for s in SOURCES:
  out.append(f'### {s["id"]}\n\n[{s["title"]}]({s["url"]})\n\n{s["date"]} | {s["locator"]}\n')
  if s['id'] in ('US26','US25'):out.append('[PDF](https://insanai.github.io/chinaexportcontrol/sources/'+s['id'].lower()+'-official.pdf)\n')
 return '\n'.join(out)
def prepare(lang,code,name):
 u=UI[lang]
 parts=re.split(r'^@@ ([\w-]+) \| (.+)\n', (ROOT/f'content/{lang}.book').read_text(),flags=re.M)
 chapters=[(parts[i],parts[i+1],parts[i+2].strip()) for i in range(1,len(parts),3)]
 assert len(chapters)==11
 dest=BOOK/lang;dest.mkdir(parents=True,exist_ok=True)
 (dest/'_templates').mkdir(exist_ok=True)
 for template in ('book.typ','theme.typ'):shutil.copy2(BOOK/'_templates'/template,dest/'_templates'/template)
 title=chapters[0][1]
 nav=[{'slug':s,'title':t,'text':re.sub(r'[#*{}]', '', b)} for s,t,b in chapters]
 cfg=f'''project = {json.dumps(title,ensure_ascii=False)}
author = "China Export Control Research"
copyright = "2026"
language = "{code}"
root_doc = "index"
smartquotes = false
source_suffix = [".md"]
templates_path = ["../_templates"]
include_roots = [".."]
html_static_path = ["../_static"]
exclude_patterns = ["_build"]
html_title = {json.dumps(title,ensure_ascii=False)}
html_short_title = {json.dumps(u['brand'],ensure_ascii=False)}
html_baseurl = "https://insanai.github.io/chinaexportcontrol/{lang}/"
pdf_paper_size = "a4"
pdf_font_paths = ["/usr/share/fonts/opentype/noto", "/usr/share/fonts/truetype/noto"]

[[pdf_documents]]
root = "index"
file = "technology-borders.pdf"
title = {json.dumps(title,ensure_ascii=False)}
author = "China Export Control Research"

[html_theme_options]
accent = "#08716d"

[html_context]
edition = "{lang}"
u = {json.dumps(u,ensure_ascii=False).replace(': ', ' = ')}
languages = [{', '.join('{path = "'+l+'", name = '+json.dumps(n,ensure_ascii=False)+'}' for l,c,n in LANGS)}]
chapters = [{', '.join('{slug = "'+s+'", title = '+json.dumps(t,ensure_ascii=False)+'}' for s,t,b in chapters)}]
'''
 # TOML inline tables use commas and '='; JSON values contain no object structures here.
 (dest/'conf.toml').write_text(cfg)
 localized=localized_atlas(lang)
 for slug,heading,body in chapters:
  body=body.replace('{{ATLAS}}',atlas_md(localized,u)).replace('{{COMPARISON}}',table(COMPARE[lang])+ '\n[CN48] [CN-A1] [CNQA] [EAR734] [EAR742] [EAR774] [GAO26]\n')
  if '{{SCENARIOS}}' in body:
   print_scenarios='\n\n'.join('### '+u[k]+'\n\n'+answer for k,answer in zip(['public','fresh','private','service','acquisition','line'],SCENARIOS[lang]))
   body=body.replace('{{SCENARIOS}}',print_scenarios)
  body=body.replace('{{SOURCES}}',source_md(u))
  if slug in ('index','announcement','open-models'):
   kind={'index':'sectors','announcement':'timeline','open-models':'open'}[slug]
   # Diagrams open the explanatory content, after the first paragraph.
   p=body.find('\n\n');body=body[:p]+diagram(lang,kind)+body[p:]
  if slug=='index':
   toc='\n```{toctree}\n:maxdepth: 1\n:hidden:\n\n'+'\n'.join(s for s,t,b in chapters[1:])+'\n```\n'
   body+='\n## '+u['source_documents']+'\n\n'+'\n'.join('- **48 / '+str(i)+'** ['+u['original']+'](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-'+str(i)+'.wps) | ['+u['converted']+'](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-'+str(i)+'.pdf)' for i in (1,2))+'\n\n[48 / HTML / PDF](https://insanai.github.io/chinaexportcontrol/sources/announcement-48-official-page.pdf)\n'+toc
  (dest/(slug+'.md')).write_text('# '+heading+'\n\n'+cite(body)+'\n')
 return nav,localized

def build(langs,pdf=True):
 for lang,code,name in LANGS:
  if lang not in langs:continue
  nav,atlas=prepare(lang,code,name)
  out=PUBLIC/lang
  htmlout=ROOT/'_build'/'html'/lang
  subprocess.run(['guidedog','build','-b','html',str(BOOK/lang),str(htmlout),'-W','-j','2'],check=True)
  shutil.copytree(htmlout,out,dirs_exist_ok=True)
  if pdf:
   subprocess.run(['guidedog','build','-b','pdf',str(BOOK/lang),str(ROOT/'_build'/lang/'pdf'),'-W','-j','2'],check=True)
   files=list((ROOT/'_build'/lang/'pdf').glob('*.pdf'))
   assert len(files)==1,files
   shutil.copy2(files[0],out/'technology-borders.pdf')
  (out/'reader-data.json').write_text(json.dumps({'ui':UI[lang],'chapters':nav,'atlas':atlas,'scenarios':SCENARIOS[lang],'sources':{r['id']:r['url'] for r in SOURCES}},ensure_ascii=False))
 for i in (1,2):shutil.copy2(ROOT/f'research/snapshots/announcement-48-attachment-{i}.wps',PUBLIC/f'sources/announcement-48-attachment-{i}.wps')
 shutil.copy2(ROOT/'research/sources.json',PUBLIC/'sources/sources.json')
 landing=(ROOT/'tools/landing.html').read_text()
 editions=''.join('<div class="edition" lang="'+l+'"><a href="'+l+'/index.html">'+esc(n)+'</a><a href="'+l+'/technology-borders.pdf">'+esc(UI[l]['download'])+'</a></div>' for l,c,n in LANGS)
 (PUBLIC/'index.html').write_text(landing.replace('<!-- EDITIONS -->',editions))
 (PUBLIC/'favicon.svg').write_text('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64"><rect width="64" height="64" fill="#f4f0e7"/><path d="M8 8h48M8 56h48" stroke="#ae3d2c" stroke-width="5"/><text x="9" y="44" font-family="sans-serif" font-size="32" font-weight="bold" fill="#172e38">TB</text></svg>')
 (PUBLIC/'.nojekyll').write_text('')
 (PUBLIC/'robots.txt').write_text('User-agent: *\nAllow: /\nSitemap: https://insanai.github.io/chinaexportcontrol/sitemap.xml\n')
 urls=[f'https://insanai.github.io/chinaexportcontrol/{p.relative_to(PUBLIC)}' for p in PUBLIC.rglob('*.html')]
 (PUBLIC/'sitemap.xml').write_text('<?xml version="1.0"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'+''.join('<url><loc>'+esc(u)+'</loc></url>' for u in urls)+'</urlset>')
if __name__=='__main__':
 a=argparse.ArgumentParser();a.add_argument('--language',action='append');a.add_argument('--html-only',action='store_true');a.add_argument('--prepare-only',action='store_true');args=a.parse_args()
 langs=args.language or [x[0] for x in LANGS]
 if args.prepare_only:
  for l,c,n in LANGS:
   if l in langs:prepare(l,c,n)
 else:build(langs,not args.html_only)
