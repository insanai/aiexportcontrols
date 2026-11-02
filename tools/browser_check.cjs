/* Browser QA for the native Guidedog website & 7-language book. */
const fs = require("fs");
const http = require("http");
const path = require("path");
const assert = require("assert");
const { chromium } = require(
  process.env.PLAYWRIGHT_MODULE ||
    "/home/insan/projects/ensodoc/frontend/node_modules/playwright"
);

const MIME = {
  ".html": "text/html; charset=utf-8",
  ".css": "text/css; charset=utf-8",
  ".js": "application/javascript; charset=utf-8",
  ".json": "application/json; charset=utf-8",
  ".svg": "image/svg+xml",
  ".png": "image/png",
  ".jpg": "image/jpeg",
  ".woff2": "font/woff2",
  ".ttf": "font/ttf",
  ".pdf": "application/pdf",
  ".xml": "application/xml; charset=utf-8",
};

function startStaticServer(pubDir) {
  return new Promise((resolve, reject) => {
    const server = http.createServer((req, res) => {
      const clean = decodeURIComponent((req.url || "/").split("?")[0]);
      let filePath = path.join(pubDir, clean);
      if (fs.existsSync(filePath) && fs.statSync(filePath).isDirectory()) {
        filePath = path.join(filePath, "index.html");
      }
      if (!filePath.startsWith(pubDir) || !fs.existsSync(filePath) || !fs.statSync(filePath).isFile()) {
        res.statusCode = 404;
        res.end("Not found");
        return;
      }
      const ext = path.extname(filePath).toLowerCase();
      res.setHeader("Content-Type", MIME[ext] || "application/octet-stream");
      fs.createReadStream(filePath).pipe(res);
    });
    server.on("error", reject);
    server.listen(0, "127.0.0.1", () => {
      const { port } = server.address();
      resolve({ server, url: `http://127.0.0.1:${port}/` });
    });
  });
}

let activeBrowser;
let activeServer;

(async () => {
  const root = path.resolve(__dirname, "..");
  let base = process.env.BOOK_BASE_URL;
  if (!base) {
    const started = await startStaticServer(path.join(root, "public"));
    activeServer = started.server;
    base = started.url;
  }
  const browser = await chromium.launch({
    executablePath: process.env.CHROMIUM_PATH || "/usr/bin/chromium",
    headless: true,
    args: ["--no-sandbox"],
  });
  activeBrowser = browser;
  const errors = [];
  const failed = [];
  const checks = [];

  const context = await browser.newContext({ viewport: { width: 1440, height: 1000 } });
  const page = await context.newPage();
  page.on("pageerror", (e) => errors.push(e.message));
  page.on("response", (r) => {
    if (r.url().startsWith(base) && r.status() >= 400) {
      failed.push([r.status(), r.url()]);
    }
  });

  async function visit(url) {
    const r = await page.goto(new URL(url, base).href);
    assert.equal(r.status(), 200, url);
    await page.evaluate(() => document.fonts.ready);
  }

  const editions = [
    { code: "en", dir: "en", home: "" },
    { code: "zh_CN", dir: "zh-cn", home: "home/zh-cn/" },
    { code: "ja", dir: "ja", home: "home/ja/" },
    { code: "ko", dir: "ko", home: "home/ko/" },
    { code: "hi", dir: "hi", home: "home/hi/" },
    { code: "es", dir: "es", home: "home/es/" },
    { code: "de", dir: "de", home: "home/de/" },
  ];
  const chapters = [
    "index",
    "announcement",
    "atlas",
    "ai",
    "open-models",
    "biomedicine",
    "solar",
    "united-states",
    "comparison",
    "questions",
    "sources",
  ];

  // 1. Check all 7 Landing Pages
  for (const ed of editions) {
    await visit(ed.home + "index.html");
    assert.equal(await page.locator("h1").count(), 1);
    assert((await page.locator(".editions-grid li").count()) === 7);
    if (ed.code === "en") {
      await page.screenshot({ path: "/tmp/chinaexport-landing-desktop.png", fullPage: true });
    }
  }

  // 2. Check all 7 Book Editions (all 11 chapters, interactive 40-item atlas, search, scenarios, mobile)
  for (const ed of editions) {
    for (const slug of chapters) {
      await visit(`${ed.dir}/${slug}.html`);
      assert.equal(await page.locator("h1").count(), 1);
      const size = await page.evaluate(() => [document.documentElement.scrollWidth, innerWidth]);
      assert(size[0] <= size[1] + 2, `${ed.dir}/${slug} desktop overflow ${size}`);
    }

    // Atlas interactive filter over 40 native-RST cards
    await visit(`${ed.dir}/atlas.html`);
    assert.equal(await page.locator(".atlas-card:visible").count(), 40);
    await page.selectOption("#atlas-sector", "ai");
    assert.equal(await page.locator(".atlas-card:visible").count(), 23);
    await page.selectOption("#atlas-status", "prohibited");
    assert.equal(await page.locator(".atlas-card:visible").count(), 6);
    await page.selectOption("#atlas-sector", "solar");
    assert.equal(await page.locator(".atlas-card:visible").count(), 5);
    await page.selectOption("#atlas-status", "restricted");
    assert.equal(await page.locator(".atlas-card:visible").count(), 7);
    await page.selectOption("#atlas-sector", "all");
    await page.selectOption("#atlas-status", "all");
    await page.fill("#atlas-query", "266504X");
    assert.equal(await page.locator(".atlas-card:visible").count(), 2);
    await page.fill("#atlas-query", "");
    assert.equal(await page.locator(".atlas-card:visible").count(), 40);

    // Scenarios pills on questions.html
    await visit(`${ed.dir}/questions.html`);
    assert.equal(await page.locator(".scenario-card:visible").count(), 6);
    await page.locator(".scenario-pill").nth(2).click();
    assert.equal(await page.locator(".scenario-card:visible").count(), 1);
    await page.locator(".scenario-pill").nth(0).click();
    assert.equal(await page.locator(".scenario-card:visible").count(), 6);

    // Mobile responsive check
    await page.setViewportSize({ width: 390, height: 844 });
    for (const slug of ["index", "atlas", "open-models", "comparison", "sources"]) {
      await visit(`${ed.dir}/${slug}.html`);
      const size = await page.evaluate(() => [document.documentElement.scrollWidth, innerWidth]);
      assert(size[0] <= size[1] + 2, `${ed.dir}/${slug} mobile overflow ${size}`);
    }
    await page.setViewportSize({ width: 1440, height: 1000 });
    checks.push(`${ed.dir}: landing page, 11 desktop chapters, 5 mobile pages, 40-item atlas filter & 6 scenarios`);
  }

  // Screenshots for visual verification
  await visit("en/index.html");
  await page.screenshot({ path: "/tmp/chinaexport-book-cover-en.png", fullPage: false });
  await visit("zh-cn/index.html");
  await page.screenshot({ path: "/tmp/chinaexport-book-cover-zh.png", fullPage: false });
  await visit("en/open-models.html");
  await page.screenshot({ path: "/tmp/chinaexport-open-models-en.png", fullPage: true });
  await visit("en/comparison.html");
  await page.screenshot({ path: "/tmp/chinaexport-comparison-en.png", fullPage: true });
  await page.setViewportSize({ width: 390, height: 844 });
  await visit("index.html");
  await page.screenshot({ path: "/tmp/chinaexport-landing-mobile.png", fullPage: false });
  await visit("en/index.html");
  await page.screenshot({ path: "/tmp/chinaexport-book-mobile.png", fullPage: false });

  // No-JS progressive enhancement fallback check
  const nojs = await browser.newContext({ javaScriptEnabled: false });
  const staticPage = await nojs.newPage();
  await staticPage.goto(new URL("en/atlas.html", base).href);
  assert.equal(await staticPage.locator(".atlas-card").count(), 40);
  await nojs.close();

  assert.equal(errors.length, 0, JSON.stringify(errors));
  assert.equal(failed.length, 0, JSON.stringify(failed));

  const report = {
    date: "2026-11-02",
    engine: "guidedog 1.0.0-beta.10 (native rst, typst-diagram, cetz, fletcher, graphviz, ssg)",
    base,
    checks,
    additional: [
      "7 localized landing pages verified",
      "40 native-RST atlas cards work with and without JavaScript",
      "6 scenario pills verified across all 7 editions",
      "Zero console errors and zero HTTP >=400 local responses",
    ],
    page_errors: errors,
    failed_local_responses: failed,
  };
  fs.writeFileSync(
    path.join(root, "research/browser-verification.json"),
    JSON.stringify(report, null, 2) + "\n"
  );
  console.log(JSON.stringify(report, null, 2));
  await browser.close();
  if (activeServer) activeServer.close();
})().catch(async (e) => {
  console.error(e);
  if (activeBrowser) await activeBrowser.close();
  if (activeServer) activeServer.close();
  process.exitCode = 1;
});
