/* Make a reading copy of the exact official article text, with explicit provenance. */
const fs=require('fs'),path=require('path');
const pw=process.env.PLAYWRIGHT_MODULE||'/home/insan/projects/ensodoc/frontend/node_modules/playwright';
const {chromium}=require(pw);
(async()=>{
const root=path.resolve(__dirname,'..');
const browser=await chromium.launch({executablePath:process.env.CHROMIUM_PATH||'/usr/bin/chromium',headless:true,args:['--no-sandbox']});
const page=await browser.newPage();
const original=fs.readFileSync(path.join(root,'research/snapshots/cn48.html'),'utf8');
const article=await page.evaluate(html=>{const doc=new DOMParser().parseFromString(html,'text/html');const a=doc.querySelector('[ergodic="article"]');if(!a)throw Error('Article missing');for(const link of a.querySelectorAll('a'))link.href=new URL(link.getAttribute('href'),'https://www.mofcom.gov.cn').href;return{title:doc.querySelector('.art-title').textContent,body:a.innerHTML}},original);
const url=JSON.parse(fs.readFileSync(path.join(root,'research/sources.json'))).find(s=>s.id==='CN48').url;
const print='<!doctype html><html lang="zh-CN"><head><meta charset="utf-8"><title>Announcement 48 / official article reading copy</title><style>@page{size:A4;margin:22mm}body{font-family:"Noto Serif CJK SC",serif;font-size:10pt;line-height:1.9;color:#182d35}h1{font:700 18pt/1.5 "Noto Sans CJK SC",sans-serif}p{orphans:3;widows:3}a{color:#00645f;overflow-wrap:anywhere}.note{border-bottom:1px solid #aaa;padding-bottom:12pt;font:9pt/1.6 sans-serif}</style></head><body><div class="note"><strong>Reading copy / 官方网页阅读副本</strong><p>Official article dated 16 October 2026. Downloaded and printed locally on 2 November 2026. This PDF was not issued by MOFCOM. The article below is preserved in Chinese. Original: <a href="'+url+'">MOFCOM Announcement 48</a>.</p></div><h1>'+article.title+'</h1>'+article.body+'</body></html>';
fs.writeFileSync(path.join(root,'public/sources/announcement-48-official-page.html'),print);
await page.setContent(print);await page.evaluate(()=>document.fonts.ready);
await page.pdf({path:path.join(root,'public/sources/announcement-48-official-page.pdf'),format:'A4',printBackground:true,displayHeaderFooter:true,headerTemplate:'<span></span>',footerTemplate:'<div style="font:8px sans-serif;width:100%;text-align:center">MOFCOM / 48 / 2026 | Local reading copy | <span class="pageNumber"></span> / <span class="totalPages"></span></div>'});
await browser.close();console.log('Official article PDF reading copy written.');
})();
