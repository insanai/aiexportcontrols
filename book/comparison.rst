.. meta::
   :description: Chapter 8: Side-by-side comparison of China and US export controls, plus official approval flowcharts, government departments, statutory timelines, and verified phone, fax, email, and room contacts.

===============================================================
08. Two Border Systems and How to Get Official Approval
===============================================================

Two Philosophies Meeting Inside the Same Project
================================================

Set China's Announcement 48 beside America's Export Administration Regulations and you see two superpowers guarding opposite ends of the same bridge. Beijing guards **outward transfers of domestic ingenuity and corporate ownership**, asking whether Chinese-developed model cores, chip blueprints, gene platforms, or solar machines are leaving China or passing under foreign control. Washington guards **global access to physical computing bottlenecks and restricted end users**, tracking chips, tools, and Entity-List parties worldwide ``[CN48]`` ``[EAR734]`` ``[EAR742]`` ``[EAR744]``.

.. list-table:: Side-by-side comparison of China's Announcement 48 and US BIS EAR controls
   :header-rows: 1
   :widths: 22 39 39

   * - Dimension
     - China (MOFCOM & MOST Announcement 48)
     - United States (BIS Export Administration Regulations)
   * - **Core legal hook**
     - Outward transfer of domestic technology ownership, overseas licensing, or change of actual controller into a foreign entity ``[CN48]`` ``[CNTIER]``.
     - US-origin items, items in the US, and foreign-made items built with US chip software/tools under Foreign Direct Product Rules ``[EAR734]``.
   * - **Hardware & silicon**
     - Proposed ``266506X`` (<=14 nm AI chips, chiplets, <=18 nm DRAM/HBM, 3D NAND), ``266507X`` (>10,000-card clusters), and 18 solar equipment classes ``[CN-A1]``.
     - ECCN ``3A090`` AI chips, fab equipment, and EDA software; Jan 2026 ``742.6(b)(10)`` case-by-case review for China/Macau chips <21,000 TPP & <6,500 GB/s ``[US26]`` ``[EAR742]``.
   * - **Frontier AI weights**
     - Proposed ``266504X(2)``: >=10^26 FLOPs, >=2T parameters, or Global Top-10 rank at export; Core Data models ``266501J`` barred; APIs outside model export ``[CN-A1]`` ``[CNQA]``.
     - Codified ``4E091`` (>=10^26 ops closed weights), under May 2025 BIS non-enforcement directive contested by May 2026 GAO Decision ``B-337935`` ``[US25]`` ``[USNE]`` ``[GAO26]``.
   * - **Open-source AI**
     - **Footnote 1** excludes already-public open-source AI & papers; **Footnote 2** grants automatic-licensing facilitation ("apply & go") for new open releases & chip tape-outs ``[CN-A1]``.
     - **15 CFR 734.7** (published) and **4E091 notes** exclude unrestricted publicly available open-source code and open model weights from licensing ``[EAR734]`` ``[EAR774]``.
   * - **Online filing portal**
     - ``https://ecomp.mofcom.gov.cn`` (Technology Trade Management Information Application) ``[CN48]`` ``[CNPLAT]``.
     - ``https://snapr.bis.gov`` (SNAP-R filing) and ``https://snapr.bis.gov/public/stela`` (STELA tracker) ``[EAR734]`` ``[SNAPR]``.

Real engineering teams frequently cross **both gates in the same week**. A lab with engineers in Hangzhou and Singapore renting US-controlled GPUs abroad to fine-tune a specialized model and licensing private weights to a European client must check BIS chip/entity rules (``Part 742/744``) *and* MOFCOM pre-export registration (``ecomp.mofcom.gov.cn``). One country's green light never waives the other's.

Step-by-Step: How to Register or Apply for Official Approval
============================================================

Because most writing on export controls stops at ominous warnings, everyday founders, open-source maintainers, university researchers, and equipment buyers are left asking a simple practical question: *"If our release, chip tape-out, or partnership actually falls inside these rules, which government department handles it, what portal do we open, how many working days does approval take, and whom can we call or email?"*

:numref:`fig-flowchart-approval` maps every official step in both countries from start to finish ``[CN48]`` ``[CN-A2]`` ``[CNTIER]`` ``[CNMEAS]`` ``[CNPLAT]`` ``[EAR734]`` ``[EAR742]`` ``[SNAPR]``:

.. graphviz::
   :class: graphviz-adaptive
   :caption: Official government registration and export-licensing workflows in China (MOFCOM/MOST + Provincial Authorities) and the United States (BIS SNAP-R & STELA).
   :name: fig-flowchart-approval

   digraph gov_approval {
     graph [rankdir=TB, bgcolor="transparent", pad="0.24", nodesep="0.34", ranksep="0.46",
            fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif"];
     node [shape=box, style="rounded,filled", fillcolor="#fcfaf5", color="#08716d",
           fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif",
           fontcolor="#172e38", fontsize=9.8, margin="0.16,0.10"];
     edge [color="#4e616a", fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif",
           fontcolor="#4e616a", fontsize=8.8, arrowsize=0.7];

     subgraph cluster_cn {
       label="CHINA · MOFCOM / MOST & Provincial Licensing Workflow";
       fontsize=10.5;
       fontcolor="#ae3d2c";
       style="rounded";
       color="#ae3d2c";

       cn0 [class="gd-input", fillcolor="#faeae7", color="#ae3d2c",
            label=<<B>Active Today (from 16 Oct 2026)</B><BR/><FONT POINT-SIZE="8.5">Log into ecomp.mofcom.gov.cn -&gt; Tech Trade App<BR/>File Attachment 2 Registration (with company seal)</FONT>>];
       cn_route [class="gd-choice", fillcolor="#fcf3de", color="#a66f10",
                 label=<<B>Once Final Revised Catalogue Takes Effect</B><BR/><FONT POINT-SIZE="8.5">Which restricted (X) channel applies?</FONT>>];
       cn_fast [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
                label=<<B>Footnotes 2 &amp; 3 · Automatic Licensing</B><BR/><FONT POINT-SIZE="8.5">Open-source AI, self-owned cloud, chip tape-out,<BR/>bio out-licensing / relief (&quot;Apply &amp; Go&quot;)</FONT>>];
       cn_s1 [class="gd-input", fillcolor="#fcfaf5", color="#ae3d2c",
              label=<<B>Stage 1 · Pre-Negotiation Application</B><BR/><FONT POINT-SIZE="8.5">Provincial Commerce + Provincial S&amp;T review<BR/>5d referral + 15d expert review = &le;30 working days<BR/>-&gt; Letter of Intent (valid up to 3 years)</FONT>>];
       cn_s2 [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
              label=<<B>Stage 2 · Post-Contract License</B><BR/><FONT POINT-SIZE="8.5">Sign contract + submit checklist &amp; party proofs<BR/>Provincial Commerce decides in &le;15 working days<BR/>-&gt; Tech Export License (contract takes effect;<BR/>clears Customs, FX, Banking &amp; Tax)</FONT>>];

       cn0 -> cn_route;
       cn_route -> cn_fast [label=" Open / Tape-out"];
       cn_route -> cn_s1 [label=" Private transfer"];
       cn_s1 -> cn_s2 [label=" Sign contract"];
     }

     subgraph cluster_us {
       label="UNITED STATES · Commerce BIS (SNAP-R & STELA) Workflow";
       fontsize=10.5;
       fontcolor="#08716d";
       style="rounded";
       color="#08716d";

       us1 [class="gd-choice", fillcolor="#fcf3de", color="#a66f10",
            label=<<B>Step 1 · Public / Open-Source Check</B><BR/><FONT POINT-SIZE="8.5">Unrestricted open code/weights or fundamental research?<BR/>(15 CFR 734.7 / 734.8 / 4E091 notes; check Part 744)</FONT>>];
       us_free [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
                label=<<B>OUTSIDE EAR LICENSING</B><BR/><FONT POINT-SIZE="8.5">No BIS export license needed</FONT>>];
       us2 [class="gd-input", fillcolor="#fcfaf5", color="#08716d",
            label=<<B>Step 2 · Register CIN on SNAP-R</B><BR/><FONT POINT-SIZE="8.5">https://snapr.bis.gov (free electronic account)</FONT>>];
       us3 [class="gd-input", fillcolor="#fcfaf5", color="#08716d",
            label=<<B>Step 3 · CCATS or Export License Filing</B><BR/><FONT POINT-SIZE="8.5">File CCATS classification (3A090 / 4E091) or License<BR/>(China/Macau H200-class 742.6(b)(10): attach US supply,<BR/>KYC &amp; independent US lab test certifications)</FONT>>];
       us4 [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
            label=<<B>Step 4 · Interagency Review &amp; STELA</B><BR/><FONT POINT-SIZE="8.5">Track ACN at snapr.bis.gov/public/stela</FONT>>];

       us1 -> us_free [label=" Public"];
       us1 -> us2 [label=" Controlled chip / private tech"];
       us2 -> us3 -> us4;
     }
   }

China: Government Departments, Statutory Timelines, and Verified Contacts
=========================================================================

In China, technology export administration works as a **central-plus-provincial partnership** under the *Regulations on the Administration of Technology Import and Export* (``中华人民共和国技术进出口管理条例``, Arts. 30–39) and the *Measures for Prohibited and Restricted Technology Exports* (``禁止出口限制出口技术管理办法``, MOFCOM & MOST Order No. 2 of 2009, Arts. 4–18): **MOFCOM** and **MOST** set national rules and operate the unified online portal in Beijing, while formal restricted-technology licenses are examined and issued by the **Provincial-level Commerce Department** and **Provincial-level Science and Technology Department** where the exporter is registered ``[CN48]`` ``[CNTIER]`` ``[CNMEAS]``.

The Three Official Filing Paths in China
----------------------------------------

1. **Path A: Mandatory Pre-Export Registration (Active Right Now, since 16 Oct 2026):**

   * **When required:** Before transferring technology ownership abroad, licensing domestic technology for overseas use, or changing a domestic technology owner/actual controller into a foreign entity for any of the 40 points in Attachment 1 (including ongoing unfinished transfers) ``[CN48, section III]``.
   * **How to file:** Open **MOFCOM's Unified Business System Platform** (``https://ecomp.mofcom.gov.cn``), select the **Technology Trade Management Information Application** (``技术贸易管理信息应用``), and submit **Attachment 2** (*Technology Export Information Registration Form* with official company seal ``公章``, owner details, foreign recipient names/country/address/relationship, seven-character code, technical indicators, end use, and USD contract value) ``[CN48]`` ``[CN-A2]`` ``[CNPLAT]``.

2. **Path B: Open-Source, Chip Tape-Out & Cloud Fast-Track ("Automatic Licensing", Proposed in Footnotes 2 & 3):**

   * **When applicable:** Once the revised catalogue takes effect, open-sourcing restricted AI technology, deploying models on a **Chinese firm's self-built, self-operated overseas compute center**, sending chip blueprints abroad for **foundry tape-out** (``芯片流片``), conducting joint international R&D or standards work, and exporting restricted biomedical targets for out-licensing or humanitarian relief ``[CN-A1, notes 2 and 3]``.
   * **How it works:** Submitted online through ``ecomp.mofcom.gov.cn`` under **automatic licensing** (``自动许可``), designed per MOFCOM's official Q&A to operate virtually **"apply and go"** (``即报即出``) ``[CNQA]``.

3. **Path C: Standard Two-Stage Restricted Technology Export License (** ``技术出口许可证`` **):**

   * **Stage 1: Before substantive negotiation or signing a contract (up to 30 working days):** File the *Application for Chinese Restricted Export Technology* (``中国限制出口技术申请书``) with your **Provincial Commerce Department** (``省、自治区、直辖市商务主管部门``) ``[CNMEAS, Arts. 4–5]``. Within **5 working days**, Provincial Commerce forwards technical materials to the **Provincial Science & Technology Department** (``省、自治区、直辖市科技行政主管部门``), which convenes experts to complete technical review within **15 working days** ``[CNMEAS, Art. 7]``. Within **30 working days total** from receipt, the authorities decide and, if approved, issue the **Letter of Intent for Technology Export License** (``中华人民共和国技术出口许可意向书``), valid for **up to 3 years** ``[CNTIER, Arts. 35–36]`` ``[CNMEAS, Arts. 6, 10]``. *(Statutory rule: without holding this Letter of Intent, no entity or individual may conduct substantive export negotiations or make legally binding commitments ``[CNMEAS, Art. 11]``.)*
   * **Stage 2: After signing the contract (up to 15 working days):** Sign the contract, log contract details in the online system, and submit to Provincial Commerce: **(i)** Letter of Intent, **(ii)** signed contract copy, **(iii)** Technical Documentation Export Checklist (``技术资料出口清单``), and **(iv)** legal-status proofs of both contracting parties ``[CNTIER, Art. 37]`` ``[CNMEAS, Arts. 13, 16]``. Provincial Commerce reviews contract authenticity and decides within **15 working days**, issuing the formal **Technology Export License** (``中华人民共和国技术出口许可证``) ``[CNTIER, Arts. 37–38]`` ``[CNMEAS, Art. 14]``. **Crucial statutory rule:** A restricted technology export contract *takes legal effect only on the date the Technology Export License is issued*, and the exporter presents that license to clear **customs, foreign exchange, banking, and tax** procedures ``[CNTIER, Art. 38]`` ``[CNMEAS, Arts. 15, 18]`` ``[CNQA]``.

.. container:: contact-card china-card

   **Verified China Official Contact Directory**

   * **Lead Central Departments (Catalogue Policy, Scope & Public Consultation):** Bureau of Industry, Security, Import and Export Control, Ministry of Commerce of the PRC (``中华人民共和国商务部安全与管制局``), jointly with the Ministry of Science and Technology (``科学技术部``) ``[CN48]``.
   * **Postal Address:** No. 2 Dongchang'an Avenue, Beijing 100731, China (``北京市东长安街2号商务部安全与管制局，邮编：100731``) ``[CN48]``.
   * **Official Consultation & Policy Email:** ``jinxianmulu@mofcom.gov.cn`` *(for public comments through 15 Nov 2026, mark subject* ``《中国禁止出口限制出口技术目录》公开征求意见`` *and attach contact details and company seal if filing as an organization)* ``[CN48]``.
   * **Official Fax:** ``+86-10-6519-7565`` (``010-65197565``) ``[CN48]``.
   * **Unified Online Registration & Licensing Portal:** ``https://ecomp.mofcom.gov.cn``: *Technology Trade Management Information Application* (``商务部业务系统统一平台 - 技术贸易管理信息应用``, integrating ``jsjckqy.fwmys.mofcom.gov.cn``) ``[CN48]`` ``[CNMEAS, Art. 16]`` ``[CNPLAT]``.
   * **Unified Platform Technical Support Phone:** ``+86-10-6787-0108`` (``86-10-67870108``) ``[CNPLAT]``.
   * **Local Licensing Authorities:** Provincial, Autonomous-Region, or Municipal Commerce Department and Science & Technology Department in the exporter's place of registration (``所在地省、自治区、直辖市商务主管部门会同科技行政主管部门``) ``[CNMEAS, Art. 4]``.

United States: Federal Agencies, SNAP-R Workflow, and Verified Contacts
=======================================================================

In the United States, dual-use hardware, software, and technology export licensing is administered federally by the **Bureau of Industry and Security (BIS)** within the **U.S. Department of Commerce**, with zero government filing fee for electronic submissions ``[EAR734]`` ``[EAR742]`` ``[SNAPR]``.

Four Steps to Classify or Obtain US Export Approval
---------------------------------------------------

1. **Step 1: Check the public-domain & open-source exemption first:** If you are publishing **unrestricted open-source code, scientific papers, or open model weights** free for anyone to download without access gates, check **15 CFR 734.7 (Published)**, **734.8 (Fundamental Research)**, and the public-weights exclusion in **4E091**: no BIS export license is required unless sanctions or prohibited weapons end uses (``Part 744``) apply ``[EAR734]`` ``[EAR744]`` ``[EAR774]``.
2. **Step 2: Obtain a Company Identification Number (CIN) on SNAP-R:** Parties exporting controlled hardware (``3A090``), chip equipment, or private controlled technology register online for a CIN on BIS's **Simplified Network Application Process Redesign (SNAP-R)** portal at ``https://snapr.bis.gov`` (US-located parties submit Export License applications, while parties abroad may submit Reexport License or Commodity Classification requests) ``[EAR734]`` ``[SNAPR]``.
3. **Step 3: File a Commodity Classification (CCATS) or Policy Inquiry if uncertain:** Submit technical specifications as a Commodity Classification Work Item on ``snapr.bis.gov`` to receive an official ECCN determination (``ACN`` tracking number), or contact BIS's Regulatory Policy Division for rule interpretation ``[EAR734]`` ``[SNAPR]``.
4. **Step 4: Submit License Application & Track via STELA:** Upload PDF supporting documents, end-user statements, and technical specs (for January 2026 China/Macau chip reviews under ``742.6(b)(10)``, attach certifications of ``TPP < 21,000``, ``DRAM bandwidth < 6,500 GB/s``, US supply adequacy, KYC security, and independent US lab verification) ``[US26]`` ``[EAR742]`` ``[SNAPR]``. Track status on **STELA** (``https://snapr.bis.gov/public/stela``) ``[EAR734]``.

.. container:: contact-card

   **Verified United States Official Contact Directory**

   * **Electronic Licensing & Tracking Portals:** SNAP-R Filing Portal: ``https://snapr.bis.gov`` | STELA Status Tracker: ``https://snapr.bis.gov/public/stela`` ``[EAR734]`` ``[SNAPR]``.
   * **SNAP-R Helpdesk & Account Support:** Technical Helpdesk: ``snapr@bis.doc.gov`` | Account Recovery & Empowered Official Letters: ``ECDOEXS@bis.doc.gov`` ``[SNAPR]``.
   * **BIS Outreach and Educational Services Division (Washington, D.C.):** U.S. Department of Commerce, 14th and Pennsylvania Avenue, NW., Room H1099D, Washington, DC 20230 | Tel: ``+1 (202) 482-4811`` | Fax: ``+1 (202) 482-2927`` ``[EAR734]``.
   * **BIS Western Regional Office (Southern California):** 2302 Martin St., Suite 330, Irvine, CA 92612 | Tel: ``+1 (949) 660-0144`` | Fax: ``+1 (949) 660-9347`` ``[EAR734]``.
   * **BIS Northern California Branch (Silicon Valley):** 160 W. Santa Clara Street, Suite 725, San Jose, CA 95113 | Tel: ``+1 (408) 998-8806`` | Fax: ``+1 (408) 998-8677`` ``[EAR734]``.
   * **BIS Regulatory Policy Division:** Room 2099B, U.S. Department of Commerce, Washington, DC 20230 | Tel: ``+1 (202) 482-2440`` | Email: ``RPD2@bis.doc.gov`` ``[US25]`` ``[US26]`` ``[EAR742]``.
   * **BIS Technical Leads (Semiconductors & AI):** Category 3 Semiconductors (``3A090``): Carlos Monroy, ``+1 (202) 482-3246``, ``Carlos.Monroy@bis.doc.gov`` ``[US25]`` ``[US26]`` | Category 4 Computers & AI Model Weights (``4E091``): Aaron Amundson, ``+1 (202) 482-0707``, ``Aaron.Amundson@bis.doc.gov`` ``[US25]``.
   * **U.S. Department of the Treasury (Outbound Investment Security Program):** ``https://home.treasury.gov/policy-issues/international/outbound-investment-program`` | Inquiries: ``Outbound@treasury.gov`` | Regulations: ``OIS.Outbound.Regulations@treasury.gov`` | IT Support: ``Outbound.ITSupport@treasury.gov`` ``[TREAS]``.
   * **U.S. Department of Justice (Data Security Program, National Security Division):** ``https://www.justice.gov/nsd/data-security`` | Compliance: ``NSD.FIRS.datasecurity@usdoj.gov`` | Public Affairs: ``nsd.public@usdoj.gov`` ``[DOJ]``.
