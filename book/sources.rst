.. meta::
   :description: Chapter 10 — All 22 verified primary sources, untouched WPS and PDF official documents, SHA-256 verification method, and plain-language glossary as of 2 November 2026.

==================================================
10. Primary Sources, Method, and Plain Glossary
==================================================

How Every Fact in This Book Was Verified
========================================

A book arguing for trustworthy, verifiable knowledge owes its readers strict honesty about its own evidence. Every statutory rule, numerical threshold, date, working-day deadline, portal URL, telephone number, fax, email, and room address in this book was verified against **22 primary sources** as of **2 November 2026**: MOFCOM and MOST's Announcement 48, both original WPS attachments, MOFCOM's spokesperson Q&A, China's *Regulations on the Administration of Technology Import and Export* (``xzfg.moj.gov.cn``), MOFCOM & MOST Order No. 2 of 2009 (``mofcom.gov.cn``), MOFCOM's Unified Platform notice, the US Federal Register texts of the January 2025 AI Diffusion Rule and January 2026 Semiconductor Rule, live Code of Federal Regulations parts (``734``, ``742``, ``744``, ``774``) on ``bis.gov``, BIS's official SNAP-R guide and portal, BIS's May 2025 non-enforcement release, GAO's May 2026 decision (``B-337935``), US Treasury and Justice Department records, the Open Source Initiative's OSAID 1.0, the DeepSeek-R1 and Qwen3 repositories, and the GuideDog documentation platform.

Original WPS bytes and SHA-256 hashes are preserved untouched alongside converted PDF reading copies. Where GAO's server blocked automated byte archiving (``HTTP 403``), we note that limitation transparently. Throughout the book, primary legal facts carry bracketed citations, while our game-theoretic matrix and future scenarios are presented openly as analytical models rather than legal advice for a specific transaction.

Untouched Official Document Copies
----------------------------------

* `Announcement No. 48 Official Page (PDF reading copy) <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-official-page.pdf>`_
* `Attachment 1: 40 Proposed Technologies (Original WPS) <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.wps>`_ | `Converted PDF <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.pdf>`_
* `Attachment 2: Pre-Export Registration Form (Original WPS) <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.wps>`_ | `Converted PDF <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.pdf>`_
* `MOFCOM & MOST Order No. 2 of 2009: Licensing Measures (Official PDF) <https://insanai.github.io/chinaexportcontrol/sources/cnmeas.pdf>`_
* `US BIS Jan 2026 Semiconductor Rule 91 FR 1684 (Official PDF) <https://insanai.github.io/chinaexportcontrol/sources/us26-official.pdf>`_
* `US BIS Jan 2025 AI Diffusion Rule 90 FR 4544 (Official PDF) <https://insanai.github.io/chinaexportcontrol/sources/us25-official.pdf>`_
* `US BIS Official SNAP-R Filing Guide & FAQ (Official PDF) <https://insanai.github.io/chinaexportcontrol/sources/snapr.pdf>`_
* `Machine-Readable Provenance & SHA-256 Manifest (sources.json) <https://insanai.github.io/chinaexportcontrol/sources/sources.json>`_

Plain-Language Glossary for Normal Humans
=========================================

Model weights (parameters)
   The billions or trillions of tuned numerical values learned during training that hold an AI model's reasoning skills. Copying the weights copies the trained mind.

Checkpoint
   A saved snapshot of weights during or at the end of training, used to resume training, distil smaller models, or fine-tune for specialist tasks.

FLOPs (floating-point operations)
   Individual math steps performed during training. :math:`10^{26}` **FLOPs** (a 1 followed by 26 zeros) is the frontier compute threshold in both China's proposed ``266504X`` and America's ``4E091``.

TPP & HBM (the hardware bottleneck)
   **Total Processing Performance (TPP)** measures an AI chip's raw compute throughput, while **High-Bandwidth Memory (HBM / DRAM bandwidth)** measures how fast data feeds into the chip (capped at ``TPP < 21,000`` and ``6,500 GB/s`` in the January 2026 US China-review rule ``742.6(b)(10)``).

Chip tape-out (``芯片流片``)
   Sending a finished processor blueprint from a chip-design team to a semiconductor foundry to manufacture physical silicon wafers — explicitly offered automatic-licensing facilitation in Announcement 48's Footnote 2.

API / SaaS (the bakery window)
   Letting remote users send prompts to your cloud server and receive answers back, without handing over underlying model weights, source code, or chip designs.

Nash Equilibrium (the Fortress Trap)
   In game theory, a stalemate where each player chooses a defensive move (``Wall``) that looks best individually, trapping both sides in an outcome (:math:`+5, +5`) far worse and more dangerous than mutual cooperation (:math:`+17, +17`).

Software license vs. export license
   An *MIT* or *Apache 2.0* license is a private copyright permission from creators allowing anyone to reuse code or weights. A *Technology Export License* (``技术出口许可证`` or BIS license) is a sovereign government permit allowing controlled technology or hardware to cross a national border.

Automatic licensing (``自动许可``)
   The streamlined "apply-and-go" (``即报即出``) government permit channel proposed in Announcement 48's footnotes for open-sourcing restricted AI, self-owned overseas clouds, overseas chip tape-out, and humanitarian biomedicine.

ECCN, CCATS & SNAP-R
   In the US system, an **ECCN** (``3A090`` for AI chips, ``4E091`` for weights) identifies a controlled item; **SNAP-R** (``snapr.bis.gov``) is the free electronic portal where exporters file license applications and **CCATS** classification requests.

Complete Register of 22 Verified Primary Sources
================================================

.. list-table:: Primary legal, regulatory, and technical sources verified 2 November 2026
   :header-rows: 1
   :widths: 12 40 16 32

   * - Code
     - Official Source & Scope Verified
     - Date
     - Primary URL & SHA-256 Prefix
   * - ``CN48``
     - MOFCOM & MOST, Announcement No. 48 of 2026 (Sections I, II & III)
     - 2026-10-16
     - `mofcom.gov.cn <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ (``a5261a74…``)
   * - ``CN-A1``
     - Announcement 48, Attachment 1: 40 Proposed Technologies & 4 Footnotes (WPS)
     - 2026-10-16
     - `Original WPS <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-1.wps>`_ (``213158bb…``)
   * - ``CN-A2``
     - Announcement 48, Attachment 2: Pre-Export Registration Form (WPS)
     - 2026-10-16
     - `Original WPS <https://insanai.github.io/chinaexportcontrol/sources/announcement-48-attachment-2.wps>`_ (``d65818c2…``)
   * - ``CNQA``
     - MOFCOM Spokesperson Official Q&A on Announcement No. 48
     - 2026-10-16
     - `mofcom.gov.cn <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_ (``37fc685a…``)
   * - ``CNTIER``
     - PRC State Council, Regulations on Administration of Tech Import & Export (Arts. 30–39)
     - 2020-11-29
     - `xzfg.moj.gov.cn <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ (``39f4b9bb…``)
   * - ``CNMEAS``
     - MOFCOM & MOST Order No. 2 of 2009, Measures for Prohibited/Restricted Tech Exports
     - 2009-04-20
     - `mofcom.gov.cn PDF <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_ (``d14e5230…``)
   * - ``CNPLAT``
     - MOFCOM Unified Business System Platform Notice & Support (``+86-10-6787-0108``)
     - 2026-11-02
     - `mofcom.gov.cn <http://jsjckqy.fwmys.mofcom.gov.cn/notice>`_ (``5bc9740f…``)
   * - ``US26``
     - US BIS Final Rule on Semiconductor License Review (``91 FR 1684``; ``742.6(b)(10)``)
     - 2026-01-15
     - `govinfo.gov <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ (``d3b27863…``)
   * - ``US25``
     - US BIS Framework for Artificial Intelligence Diffusion (``90 FR 4544``; ``4E091``)
     - 2025-01-15
     - `govinfo.gov <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ (``6e202458…``)
   * - ``USNE``
     - US BIS Press Release Directing Non-Enforcement of AI Diffusion Rule
     - 2025-05-13
     - `bis.gov <https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens>`_ (``14a05e6e…``)
   * - ``GAO26``
     - US GAO Decision ``B-337935`` on AI Diffusion Rule & Congressional Review Act
     - 2026-05-12
     - `gao.gov <https://www.gao.gov/products/b-337935>`_ *(HTTP 403; web-verified)*
   * - ``EAR734``
     - 15 CFR Part 734 — Scope of the EAR, Published Open Source (``734.7``) & Contacts
     - 2026-11-01
     - `bis.gov/ear/734 <https://www.bis.gov/regulations/ear/734>`_ (``eeb76281…``)
   * - ``EAR742``
     - 15 CFR Part 742 — Control Policy: CCL Based Controls (``742.6(b)(10)``)
     - 2026-11-01
     - `bis.gov/ear/742 <https://www.bis.gov/regulations/ear/742>`_ (``3eccf859…``)
   * - ``EAR744``
     - 15 CFR Part 744 — End-User and End-Use Based Controls (``744.11``, ``744.23``)
     - 2026-11-01
     - `bis.gov/ear/744 <https://www.bis.gov/regulations/ear/744>`_ (``ab19c823…``)
   * - ``EAR774``
     - 15 CFR Part 774 — Commerce Control List (ECCNs ``3A090`` and ``4E091``)
     - 2026-11-01
     - `bis.gov/ear/774 <https://www.bis.gov/regulations/ear/774>`_ (``01d3beba…``)
   * - ``SNAPR``
     - US BIS SNAP-R Electronic Filing FAQ & Contact Guide (``snapr.bis.gov``)
     - 2026-11-02
     - `snapr.bis.gov PDF <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_ (``e0c3bdee…``)
   * - ``TREAS``
     - US Treasury Outbound Investment Security Program & Oct 2026 Proposed Rule
     - 2026-10-22
     - `home.treasury.gov <https://home.treasury.gov/policy-issues/international/outbound-investment-program>`_ (``75f52eee…``)
   * - ``DOJ``
     - US Department of Justice National Security Division — Data Security Program
     - 2026-11-02
     - `justice.gov/nsd <https://www.justice.gov/nsd/data-security>`_ (``1bf01adb…``)
   * - ``OSI``
     - Open Source Initiative — Open Source AI Definition 1.0
     - 2024-10-28
     - `opensource.org <https://opensource.org/ai/open-source-ai-definition>`_ (``a5442179…``)
   * - ``R1``
     - DeepSeek-R1 Official Repository & MIT License Record
     - 2025-01-20
     - `github.com/deepseek-ai <https://github.com/deepseek-ai/DeepSeek-R1>`_ (``875b282c…``)
   * - ``QWEN``
     - Qwen3 Official Repository & Apache 2.0 License Record
     - 2025-04-29
     - `github.com/QwenLM <https://github.com/QwenLM/Qwen3>`_ (``2b7cdab9…``)
   * - ``GD``
     - GuideDog Documentation & Book Publishing Engine (``v1.0.0-beta.10``)
     - 2026-11-02
     - `github.com/insanai/guidedog <https://github.com/insanai/guidedog>`_ (``6fe7704f…``)
