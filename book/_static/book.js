/* Progressive enhancement for the Guidedog book:
   - Language switcher persistence & Escape handling
   - Live filtering of the 40 native-RST checkpoints on atlas.html
   - Scenario quick-filter pills on questions.html */
(function () {
  "use strict";

  /* 1. Language menu interactions */
  var menu = document.querySelector(".gd-language");
  if (menu) {
    var key = "export-controls-book-lang";
    menu.querySelectorAll("a[data-language]").forEach(function (link) {
      link.addEventListener("click", function () {
        try { localStorage.setItem(key, link.dataset.language); } catch (_) {}
      });
    });
    document.addEventListener("click", function (ev) {
      if (!menu.contains(ev.target)) menu.open = false;
    });
    document.addEventListener("keydown", function (ev) {
      if (ev.key === "Escape" && menu.open) {
        menu.open = false;
        var s = menu.querySelector("summary");
        if (s) s.focus();
      }
    });
  }

  /* 2. 40-Technology Atlas filter (operates directly on Guidedog-rendered .atlas-card DOM) */
  var toolbar = document.getElementById("atlas-toolbar");
  var cards = Array.from(document.querySelectorAll(".atlas-card"));
  if (toolbar && cards.length > 0) {
    var anchor = document.getElementById("atlas-explorer-start");
    if (anchor && anchor.parentNode) {
      anchor.parentNode.insertBefore(toolbar, anchor);
    }
    toolbar.hidden = false;
    var qInput = document.getElementById("atlas-query");
    var sectorSelect = document.getElementById("atlas-sector");
    var statusSelect = document.getElementById("atlas-status");
    var countEl = document.getElementById("atlas-count");
    var suffix = document.body.dataset.labelResults || "matching checkpoints";
    var zeroMsg = document.body.dataset.labelZero || "No checkpoints match your filter.";

    function applyAtlasFilter() {
      var q = (qInput.value || "").trim().toLowerCase();
      var sec = sectorSelect.value;
      var st = statusSelect.value;
      var shown = 0;
      cards.forEach(function (card) {
        var matchSec = sec === "all" || card.classList.contains("atlas-" + sec);
        var matchSt = st === "all" || card.classList.contains("atlas-" + st);
        var matchQ = !q || card.textContent.toLowerCase().indexOf(q) !== -1;
        var ok = matchSec && matchSt && matchQ;
        card.hidden = !ok;
        if (ok) shown += 1;
      });
      if (countEl) {
        countEl.textContent = shown > 0 ? (shown + " / " + cards.length + " " + suffix) : zeroMsg;
      }
    }

    qInput.addEventListener("input", applyAtlasFilter);
    sectorSelect.addEventListener("change", applyAtlasFilter);
    statusSelect.addEventListener("change", applyAtlasFilter);
    applyAtlasFilter();
  }

  /* 3. Real-World Scenario pills on questions.html */
  var scenToolbar = document.getElementById("scenario-toolbar");
  var scenCards = Array.from(document.querySelectorAll(".scenario-card"));
  var pillBox = document.getElementById("scenario-pills");
  if (scenToolbar && pillBox && scenCards.length > 0) {
    var scenAnchor = document.getElementById("scenario-explorer-start");
    if (scenAnchor && scenAnchor.parentNode) {
      scenAnchor.parentNode.insertBefore(scenToolbar, scenAnchor);
    }
    scenToolbar.hidden = false;

    function selectScenario(idx) {
      Array.from(pillBox.children).forEach(function (btn, bIdx) {
        btn.setAttribute("aria-selected", bIdx === idx ? "true" : "false");
      });
      scenCards.forEach(function (card, cIdx) {
        card.hidden = idx !== 0 && (cIdx + 1) !== idx;
      });
    }

    var allBtn = document.createElement("button");
    allBtn.type = "button";
    allBtn.className = "scenario-pill";
    allBtn.setAttribute("role", "tab");
    allBtn.textContent = "★ " + scenCards.length;
    allBtn.addEventListener("click", function () { selectScenario(0); });
    pillBox.appendChild(allBtn);

    scenCards.forEach(function (card, i) {
      var titleEl = card.querySelector("p strong") || card.querySelector("h3");
      var label = titleEl ? titleEl.textContent.replace(/^\d+\.\s*/, "") : ("#" + (i + 1));
      if (label.length > 36) label = label.slice(0, 34) + "…";
      var btn = document.createElement("button");
      btn.type = "button";
      btn.className = "scenario-pill";
      btn.setAttribute("role", "tab");
      btn.textContent = (i + 1) + ". " + label;
      btn.addEventListener("click", function () { selectScenario(i + 1); });
      pillBox.appendChild(btn);
    });
    selectScenario(0);
  }
}());
