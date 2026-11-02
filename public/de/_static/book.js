/* Local interactions only. No analytics, external requests or stored user content. */
(()=>{'use strict';
const $=s=>document.querySelector(s),page=document.body.dataset.page;
const base=new URL('.',location.href),theme=$('#theme-switch');
theme?.addEventListener('click',()=>{const next=document.documentElement.dataset.theme==='dark'?'light':'dark';document.documentElement.dataset.theme=next;try{localStorage.setItem('borders-theme',next)}catch(e){}});
$('#language')?.addEventListener('change',e=>{location.href=new URL('../'+e.target.value+'/'+page+'.html',base).href});
$('#menu-toggle')?.addEventListener('click',e=>{const open=$('#chapter-nav').classList.toggle('open');e.currentTarget.setAttribute('aria-expanded',String(open))});
const headings=[...document.querySelectorAll('.prose h2')];
headings.forEach((h,i)=>{if(!h.id)h.id=h.closest('section')?.id||'section-'+i;const a=document.createElement('a');a.href='#'+h.id;a.textContent=h.textContent.replace(/¶$/, '');$('#page-outline')?.append(a)});
let ticking=false;
const progress=()=>{const max=document.documentElement.scrollHeight-innerHeight,value=max>0?Math.min(100,Math.max(0,scrollY/max*100)):100;$('.reading-meter span').style.width=value+'%';$('.reading-meter').setAttribute('aria-valuenow',String(Math.round(value)));ticking=false};
addEventListener('scroll',()=>{if(!ticking){requestAnimationFrame(progress);ticking=true}},{passive:true});addEventListener('resize',progress);progress();
const dialog=$('#search-dialog');$('#search-open')?.addEventListener('click',()=>{dialog.showModal();$('#book-search').focus()});
addEventListener('keydown',e=>{if(e.key==='/'&&!/INPUT|TEXTAREA|SELECT/.test(document.activeElement.tagName)){e.preventDefault();dialog.showModal();$('#book-search').focus()}});
dialog?.addEventListener('keydown',e=>{if(e.key==='Escape'){e.preventDefault();dialog.close()}});
dialog?.addEventListener('click',e=>{if(e.target===dialog){const r=dialog.getBoundingClientRect();if(e.clientX<r.left||e.clientX>r.right||e.clientY<r.top||e.clientY>r.bottom)dialog.close()}});
function node(tag,text,cls){const n=document.createElement(tag);if(text!=null)n.textContent=text;if(cls)n.className=cls;return n}
function sourceLinks(target,text,sources){let start=0;const re=/\[([A-Z][A-Z0-9-]*)([^\]]*)\]/g;let m;while((m=re.exec(text))){target.append(document.createTextNode(text.slice(start,m.index)));const a=node('a',m[0]);a.href=sources[m[1]]||'sources.html';target.append(a);start=re.lastIndex}target.append(document.createTextNode(text.slice(start)))}
fetch(new URL('reader-data.json',base)).then(r=>{if(!r.ok)throw Error('reader data');return r.json()}).then(data=>{
const u=data.ui;
function search(){const q=$('#book-search').value.trim().toLocaleLowerCase();const dest=$('#search-results');dest.replaceChildren();if(!q)return;const matches=[];for(const c of data.chapters){if((c.title+' '+c.text).toLocaleLowerCase().includes(q))matches.push({url:c.slug+'.html',title:c.title,kind:u.chapters})}for(const a of data.atlas){if((a.name+' '+a.detail+' '+a.code).toLocaleLowerCase().includes(q))matches.push({url:'atlas.html?item='+a.id,title:a.name,kind:a.code})}for(const r of matches.slice(0,30)){const a=node('a',r.title);a.href=r.url;a.append(node('small',r.kind));dest.append(a)}if(!matches.length)dest.textContent=u.no_results}
$('#book-search')?.addEventListener('input',search);
if(page==='atlas'){
 const app=$('#atlas-interactive');app.hidden=false;let selected=new URLSearchParams(location.search).get('item');
 // Keep the full static atlas available when JavaScript or its data is unavailable.
 const staticSections=[...document.querySelectorAll('.prose h2')].filter(h=>/^\d{2}\./.test(h.textContent));
 [...$('#page-outline').querySelectorAll('a')].slice(2).forEach(a=>a.remove());
 staticSections.forEach(h=>{const section=h.closest('section');if(section)section.hidden=true;else{let n=h;while(n&&!(n!==h&&n.tagName==='H2')){const next=n.nextElementSibling;n.hidden=true;n=next}}});
 const intro=$('.prose');intro.after(app);
 function render(){const q=$('#atlas-query').value.trim().toLocaleLowerCase(),sector=$('#atlas-sector').value,status=$('#atlas-status').value;const rows=data.atlas.filter(a=>(sector==='all'||a.sector===sector)&&(status==='all'||a.status===status)&&(!selected||a.id===selected)&&(a.name+' '+a.detail+' '+a.code).toLocaleLowerCase().includes(q));$('#atlas-count').textContent=rows.length+' / 40 '+u.results;const grid=$('#atlas-grid');grid.replaceChildren();for(const a of rows){const card=node('article',null,'atlas-card');card.id=a.id;const meta=node('div',null,'atlas-meta');meta.append(node('span',a.code+' / '+a.point),node('span',u[a.sector],'tag'),node('span',a.status.endsWith('-prohibited')?u.prohibited:u.restricted,'tag '+(a.status.endsWith('-prohibited')?'tag-prohibited':'tag-restricted')));card.append(meta,node('h3',a.name),node('p',a.detail));const link=node('a',u.evidence+' / CN-A1');link.href=data.sources['CN-A1'];card.append(link);grid.append(card)}if(!rows.length)grid.append(node('p',u.no_results))}
 for(const s of ['#atlas-query','#atlas-sector','#atlas-status'])$(s).addEventListener('input',()=>{selected=null;render()});render();
}
if(page==='questions'){
 const app=$('#scenario-interactive');app.hidden=false;const first=$('.prose h2');if(first)first.before(app);
 function show(){const dest=$('#scenario-answer');dest.replaceChildren();sourceLinks(dest,data.scenarios[Number($('#scenario-select').value)],data.sources)}$('#scenario-select').addEventListener('change',show);show();
}
}).catch(()=>{/* Static chapters, atlas and PDF remain readable if optional enhancement fails. */});
})();
