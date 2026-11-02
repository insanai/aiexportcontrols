/* Browser QA for the complete multilingual reading experience. */
const fs=require('fs'),path=require('path'),assert=require('assert');
const {chromium}=require(process.env.PLAYWRIGHT_MODULE||'/home/insan/projects/ensodoc/frontend/node_modules/playwright');
let activeBrowser;
const base=process.env.BOOK_BASE_URL||'http://127.0.0.1:8778/';
(async()=>{const root=path.resolve(__dirname,'..'),browser=await chromium.launch({executablePath:process.env.CHROMIUM_PATH||'/usr/bin/chromium',headless:true,args:['--no-sandbox']});
activeBrowser=browser;
const errors=[],failed=[],checks=[];
const context=await browser.newContext({viewport:{width:1440,height:1000}}),page=await context.newPage();
page.on('pageerror',e=>errors.push(e.message));page.on('response',r=>{if(r.url().startsWith(base)&&r.status()>=400)failed.push([r.status(),r.url()])});
async function visit(url){const r=await page.goto(new URL(url,base).href);assert.equal(r.status(),200,url);await page.evaluate(()=>document.fonts.ready)}
const langs=['en','zh-cn','ja','ko','hi','es','de'];
const chapters=['index','announcement','atlas','ai','open-models','biomedicine','solar','united-states','comparison','questions','sources'];
await visit('');assert.equal(await page.locator('h1').count(),1);await page.screenshot({path:'/tmp/chinaexport-root-desktop.png',fullPage:true});
for(const lang of langs){
 for(const slug of chapters){await visit(lang+'/'+slug+'.html');assert.equal(await page.locator('h1').count(),1);assert.equal(await page.locator('#language').inputValue(),lang);const size=await page.evaluate(()=>[document.documentElement.scrollWidth,innerWidth]);assert(size[0]<=size[1]+2,lang+'/'+slug+' desktop overflow '+size)}
 await visit(lang+'/atlas.html');await page.waitForSelector('.atlas-card');assert.equal(await page.locator('.atlas-card').count(),40);
 await page.selectOption('#atlas-sector','ai');assert.equal(await page.locator('.atlas-card').count(),23);
 await page.selectOption('#atlas-status','proposed-prohibited');assert.equal(await page.locator('.atlas-card').count(),6);
 await page.selectOption('#atlas-sector','solar');assert.equal(await page.locator('.atlas-card').count(),5);
 await page.selectOption('#atlas-status','proposed-restricted');assert.equal(await page.locator('.atlas-card').count(),7);
 await page.selectOption('#atlas-sector','all');await page.selectOption('#atlas-status','all');await page.fill('#atlas-query','266504X');assert.equal(await page.locator('.atlas-card').count(),2);
 await page.fill('#atlas-query','no_such_technology_91');assert.equal(await page.locator('.atlas-card').count(),0);await page.fill('#atlas-query','');assert.equal(await page.locator('.atlas-card').count(),40);
 await page.click('#search-open');await page.fill('#book-search','266504X');await page.waitForSelector('#search-results a');assert(await page.locator('#search-results a').count()>=3);await page.keyboard.press('Escape');await page.waitForFunction(()=>!document.querySelector('#search-dialog').open);assert.equal(await page.locator('#search-dialog').evaluate(e=>e.open),false);
 await visit(lang+'/questions.html');await page.waitForSelector('#scenario-interactive:not([hidden])');const answers=[];for(let i=0;i<6;i++){await page.selectOption('#scenario-select',String(i));answers.push(await page.locator('#scenario-answer').innerText());assert(await page.locator('#scenario-answer a').count()>0)}assert.equal(new Set(answers).size,6);
 for(const slug of ['index','atlas','questions','comparison','sources']){await page.setViewportSize({width:390,height:844});await visit(lang+'/'+slug+'.html');const size=await page.evaluate(()=>[document.documentElement.scrollWidth,innerWidth]);assert(size[0]<=size[1]+2,lang+'/'+slug+' mobile overflow '+size);if(slug==='index'){await page.click('#menu-toggle');assert.equal(await page.locator('#menu-toggle').getAttribute('aria-expanded'),'true');assert(await page.locator('#chapter-nav').isVisible())}}
 checks.push(lang+': 11 desktop chapters, 5 mobile pages, 40 atlas items, filters, code search and 6 scenarios');await page.setViewportSize({width:1440,height:1000});
}
await visit('en/open-models.html');await page.selectOption('#language','zh-cn');await page.waitForURL('**/zh-cn/open-models.html');assert((await page.locator('h1').innerText()).includes('中国'));
await page.click('#theme-switch');assert.equal(await page.locator('html').getAttribute('data-theme'),'dark');await page.reload();assert.equal(await page.locator('html').getAttribute('data-theme'),'dark');await page.click('#theme-switch');
await visit('en/index.html');await page.screenshot({path:'/tmp/chinaexport-final-desktop.png',fullPage:false});
await visit('en/atlas.html');await page.waitForSelector('.atlas-card');await page.locator('#atlas-interactive').scrollIntoViewIfNeeded();await page.screenshot({path:'/tmp/chinaexport-final-atlas.png',fullPage:false});
await page.setViewportSize({width:390,height:844});await visit('hi/index.html');await page.screenshot({path:'/tmp/chinaexport-final-mobile.png'});await visit('');await page.screenshot({path:'/tmp/chinaexport-root-mobile.png'});
const nojs=await browser.newContext({javaScriptEnabled:false});const staticPage=await nojs.newPage();await staticPage.goto(new URL('en/atlas.html',base).href);assert.equal(await staticPage.locator('.prose h2').count(),42);await nojs.close();
assert.equal(errors.length,0,JSON.stringify(errors));assert.equal(failed.length,0,JSON.stringify(failed));
const report={date:'2026-11-02',base,checks,additional:['Root landing: country comparison and seven editions','Language switch preserves chapter','Theme persists after reload','Static full atlas works without JavaScript'],page_errors:errors,failed_local_responses:failed};fs.writeFileSync(path.join(root,'research/browser-verification.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));await browser.close();
})().catch(async e=>{console.error(e);if(activeBrowser)await activeBrowser.close();process.exitCode=1});
