#!/usr/bin/env python3
"""Download public evidence without credentials; preserve bytes and provenance."""
import concurrent.futures, hashlib, json, pathlib, urllib.request, datetime
ROOT = pathlib.Path(__file__).resolve().parents[1]
SOURCES = [
 ('CN48','MOFCOM and MOST, Announcement 48','2026-10-16','https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html','Sections I, II and III'),
 ('CNQA','MOFCOM spokesperson, questions and answers','2026-10-16','https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html','Questions on AI, biomedicine, solar and registration'),
 ('US26','BIS, semiconductor license review final rule','2026-01-15','https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm','91 FR 1684; sections I and IV; 742.6(b)(10)'),
 ('US25','BIS, Framework for AI Diffusion','2025-01-15','https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm','90 FR 4544; ECCN 4E091 and published weights'),
 ('USNE','BIS, announcement of rescission and non-enforcement','2025-05-13','https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens','Non-enforcement directive; planned formal rulemaking'),
 ('GAO26','GAO, decision B-337935','2026-05-12','https://www.gao.gov/products/b-337935','Commerce Response; CRA Exceptions; Conclusion'),
 ('EAR734','BIS, current EAR Part 734','2026-11-01','https://www.bis.gov/regulations/ear/734','734.3, 734.7, 734.8 and 734.9'),
 ('EAR742','BIS, current EAR Part 742','2026-11-01','https://www.bis.gov/regulations/ear/742','742.6(a)(6), (b)(10) and (a)(13)'),
 ('EAR744','BIS, current EAR Part 744','2026-11-01','https://www.bis.gov/regulations/ear/744','744.1, 744.4, 744.11 and 744.23'),
 ('EAR774','BIS, current Commerce Control List','2026-11-01','https://www.bis.gov/regulations/ear/774','Categories 1, 3 and 4; 3A090 and 4E091'),
 ('TREAS','US Treasury, Outbound Investment Security Program','2026-10-22','https://home.treasury.gov/policy-issues/international/outbound-investment-program','2024 final rule and October 2026 proposed rule'),
 ('DOJ','US Justice Department, Data Security Program','2026-11-02','https://www.justice.gov/nsd/data-security','Overview and program rules'),
 ('OSI','Open Source Initiative, Open Source AI Definition 1.0','2024-10-28','https://opensource.org/ai/open-source-ai-definition','Freedoms; data information, code and parameters'),
 ('R1','DeepSeek, R1 repository and license','2025-01-20','https://github.com/deepseek-ai/DeepSeek-R1','License; released weights; distilled variants'),
 ('QWEN','Qwen team, Qwen3 repository','2025-04-29','https://github.com/QwenLM/Qwen3','Release history, model files and Apache 2.0 license'),
 ('GD','GuideDog repository and publishing instructions','2026-11-02','https://github.com/insanai/guidedog','README language list and HTML/PDF build commands'),
]
def fetch(s):
 id,title,date,url,locator=s
 out={'id':id,'title':title,'date':date,'url':url,'locator':locator,'accessed':'2026-11-02'}
 try:
  req=urllib.request.Request(url,headers={'User-Agent':'Mozilla/5.0','Referer':url})
  with urllib.request.urlopen(req,timeout=45) as r:b=r.read();out['resolved_url']=r.url;out['http_status']=r.status
  p=ROOT/'research'/'snapshots'/(id.lower()+'.html');p.write_bytes(b)
  out.update(snapshot=str(p.relative_to(ROOT)),sha256=hashlib.sha256(b).hexdigest())
 except Exception as e:out['download_note']=str(e)+'; verified using web research tool; no local byte snapshot'
 return out
if __name__=='__main__':
 with concurrent.futures.ThreadPoolExecutor(max_workers=5) as p: rows=list(p.map(fetch,SOURCES))
 for i,url in enumerate(json.loads((ROOT/'research/attachment-urls.json').read_text()),1):
  f=ROOT/f'research/snapshots/announcement-48-attachment-{i}.wps'
  rows.insert(i,{'id':f'CN-A{i}','title':f'Announcement 48, attachment {i} (official WPS original)','date':'2026-10-16','url':url,'locator':'AI, biomedicine, solar and four footnotes' if i==1 else 'Registration form fields','accessed':'2026-11-02','snapshot':str(f.relative_to(ROOT)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'http_status':200})
 (ROOT/'research/sources.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2)+'\n')
 for r in rows:print(r['id'],r.get('http_status',r.get('download_note')))
