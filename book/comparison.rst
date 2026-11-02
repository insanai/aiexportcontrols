.. meta::
   :description: Chapter 8: Side-by-side comparison of China and US export controls, plus an illustrated filing guide, government departments, statutory timelines, and verified phone, fax, email, and room contacts.

===============================================================
08. Two Border Systems and How to Get Official Approval
===============================================================

Two Philosophies Meeting Inside the Same Project
================================================

Set China's Announcement 48 beside America's Export Administration Regulations and you see two superpowers guarding opposite ends of the same bridge. Beijing guards **outward transfers of domestic ingenuity and corporate ownership**, asking whether Chinese-developed model cores, chip blueprints, gene platforms, or solar machines are leaving China or passing under foreign control. Washington guards **global access to physical computing bottlenecks and restricted end users**, tracking chips, tools, and Entity-List parties worldwide `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `EAR744 <https://www.bis.gov/regulations/ear/744>`_.

.. list-table:: Side-by-side comparison of China's Announcement 48 and US BIS EAR controls
   :header-rows: 1
   :widths: 22 39 39

   * - Dimension
     - China (MOFCOM & MOST Announcement 48)
     - United States (BIS Export Administration Regulations)
   * - **Core legal hook**
     - Outward transfer of domestic technology ownership, overseas licensing, or change of actual controller into a foreign entity `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CNTIER <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_.
     - US-origin items, items in the US, and foreign-made items built with US chip software/tools under Foreign Direct Product Rules `EAR734 <https://www.bis.gov/regulations/ear/734>`_.
   * - **Hardware & silicon**
     - Proposed ``266506X`` (<=14 nm AI chips, chiplets, <=18 nm DRAM/HBM, 3D NAND), ``266507X`` (>10,000-card clusters), and listed solar equipment categories `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.
     - ECCN ``3A090`` AI chips, fab equipment, and EDA software; Jan 2026 ``742.6(b)(10)`` case-by-case review for China/Macau chips <21,000 TPP & <6,500 GB/s `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_.
   * - **Frontier AI weights**
     - Proposed ``266504X(2)``: >=10^26 FLOPs, >=2T parameters, or Global Top-10 rank at export; Core Data models ``266501J`` proposed prohibited; APIs outside model export `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.
     - Codified ``4E091`` (>=10^26 ops closed weights), under May 2025 BIS non-enforcement directive contested by May 2026 GAO Decision ``B-337935`` `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ `USNE <https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_.
   * - **Open-source AI**
     - **Footnote 1** excludes already-public open-source AI & papers; **Footnote 2** grants automatic-licensing facilitation ("apply & go") for new open releases & chip tape-outs `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.
     - **15 CFR 734.7** (published) and **4E091 notes** exclude unrestricted publicly available open-source code and open model weights from licensing `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_.
   * - **Online filing portal**
     - ``https://ecomp.mofcom.gov.cn`` (Technology Trade Management Information Application) `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CNPLAT <http://jsjckqy.fwmys.mofcom.gov.cn/notice>`_.
     - ``https://snapr.bis.gov`` (SNAP-R filing) and ``https://snapr.bis.gov/public/stela`` (STELA tracker) `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.

Consider a hypothetical lab working across China and Singapore that uses covered chips and later licenses private model technology abroad. The chips, parties and uses may engage US rules; the technology transfer may engage Chinese registration. We must check the facts of each activity. One permission does not settle the other system. `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR744 <https://www.bis.gov/regulations/ear/744>`_

Step-by-Step: How to Register or Apply for Official Approval
============================================================

Because most writing on export controls stops at ominous warnings, everyday founders, open-source maintainers, university researchers, and equipment buyers are left asking a simple practical question: *"If our release, chip tape-out, or partnership actually falls inside these rules, which government department handles it, what portal do we open, how many working days does approval take, and whom can we call or email?"*

:numref:`fig-flowchart-approval` introduces the documents involved in a filing. The country-specific steps and contacts follow below `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-2.pdf>`_ `CNTIER <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_ `CNPLAT <http://jsjckqy.fwmys.mofcom.gov.cn/notice>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_:

.. figure:: assets/illustrations/filing.jpg
   :name: fig-flowchart-approval
   :alt: A researcher presents technical documents for review. The illustration introduces the paperwork, not a complete legal procedure or a promise of approval.
   :width: 100%

   A researcher presents technical documents for review. The illustration introduces the paperwork, not a complete legal procedure or a promise of approval.

.. graphviz::
   :class: graphviz-adaptive
   :name: fig-approval-questions
   :caption: Current Chinese registration, the proposed Chinese catalogue and US jurisdiction are separate checks. Dashed lines mark the proposed track.
   :alt: Current Chinese registration, the proposed Chinese catalogue and US jurisdiction are separate checks. Dashed lines mark the proposed track.

   digraph approval_questions {
     graph [rankdir=TB, bgcolor="transparent", pad="0.15", nodesep="0.25", ranksep="0.4", fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif"];
     node [shape=box, style="rounded,filled", fillcolor="#f6f2e9", color="#8d9b9b", fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif", fontsize=11, margin="0.18,0.16"];
     edge [color="#687c7b", arrowsize=0.7];
     subgraph cluster_current {
       label="CHINA / CURRENT REGISTRATION"; fontcolor="#ae3d2c"; fontsize=11; color="#d4b6aa"; style=rounded;
       c1 [label="Covered technology\nand transfer"]; c2 [label="Register before completion\necomp.mofcom.gov.cn",fillcolor="#edf5ef"]; c1 -> c2;
     }
     subgraph cluster_draft {
       label="CHINA / PROPOSED CATALOGUE"; fontcolor="#956c16"; fontsize=11; color="#d5c7a5"; style="rounded,dashed";
       d1 [label="Read the entry, exclusions\nand section notes"]; d2 [label="Check the applicable route\nif the final text is adopted",style="rounded,dashed,filled"]; d1 -> d2 [style=dashed];
     }
     subgraph cluster_us {
       label="UNITED STATES / SEPARATE CHECK"; fontcolor="#08716d"; fontsize=11; color="#9dbfba"; style=rounded;
       u1 [label="Is the item subject\nto the EAR?"]; u2 [label="If covered: classify the item,\ndestination, parties and use"]; u3 [label="Check the permission route\nSNAP-R where required",fillcolor="#edf5ef"]; u1 -> u2 -> u3;
     }
   }


China: Government Departments, Statutory Timelines, and Verified Contacts
=========================================================================

In China, technology export administration works as a **central-plus-provincial partnership** under the *Regulations on the Administration of Technology Import and Export* (``中华人民共和国技术进出口管理条例``, Arts. 30-39) and the *Measures for Prohibited and Restricted Technology Exports* (``禁止出口限制出口技术管理办法``, MOFCOM & MOST Order No. 2 of 2009, Arts. 4-18): **MOFCOM** and **MOST** set national rules and operate the unified online portal in Beijing, while formal restricted-technology licenses are examined and issued by the **Provincial-level Commerce Department** and **Provincial-level Science and Technology Department** where the exporter is registered `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CNTIER <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_.

.. important::

   **Scope of the clocks:** The 30-working-day and 15-working-day periods describe the existing standard restricted-technology procedure in the cited regulations. They are not a guaranteed total of 45 elapsed days, a time limit for temporary registration, or the final procedure for proposed automatic licensing. Negotiation, document preparation and other required reviews can affect the full process. Contact details below are those printed in the cited records; confirm current channels before relying on them.

The Three Official Filing Paths in China
----------------------------------------

1. **Path A: Mandatory Pre-Export Registration (Active Right Now, since 16 Oct 2026):**

   * **When required:** Before transferring technology ownership abroad, licensing domestic technology for overseas use, or changing a domestic technology owner/actual controller into a foreign entity for any of the 40 points in Attachment 1 (including ongoing unfinished transfers) `CN48, section III <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_.
   * **How to file:** Open **MOFCOM's Unified Business System Platform** (``https://ecomp.mofcom.gov.cn``), select the **Technology Trade Management Information Application** (``技术贸易管理信息应用``), and submit **Attachment 2** (*Technology Export Information Registration Form* with official company seal ``公章``, owner details, foreign recipient names/country/address/relationship, seven-character code, technical indicators, end use, and USD contract value) `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-2.pdf>`_ `CNPLAT <http://jsjckqy.fwmys.mofcom.gov.cn/notice>`_.

2. **Path B: Open-Source, Chip Tape-Out & Cloud Fast-Track ("Automatic Licensing", Proposed in Footnotes 2 & 3):**

   * **When applicable:** Once the revised catalogue takes effect, open-sourcing restricted AI technology, deploying models on a **Chinese firm's self-built, self-operated overseas compute center**, sending chip blueprints abroad for **foundry tape-out** (``芯片流片``), conducting joint international R&D or standards work, and exporting restricted biomedical targets for out-licensing or humanitarian relief `CN-A1, notes 2 and 3 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.
   * **What is specified:** The draft and official explanation propose automatic licensing or similar facilitation. They do not establish a complete final filing procedure or a guaranteed turnaround for that future route. Confirm the implemented procedure with the competent authority. `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_

3. **Path C: Standard Two-Stage Restricted Technology Export License (** ``技术出口许可证`` **):**

   * **Stage 1: Before substantive negotiation or signing a contract (up to 30 working days):** File the *Application for Chinese Restricted Export Technology* (``中国限制出口技术申请书``) with your **Provincial Commerce Department** (``省、自治区、直辖市商务主管部门``) `CNMEAS, Arts. 4-5 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_. Within **5 working days**, Provincial Commerce forwards technical materials to the **Provincial Science & Technology Department** (``省、自治区、直辖市科技行政主管部门``), which convenes experts to complete technical review within **15 working days** `CNMEAS, Art. 7 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_. Within **30 working days total** from receipt, the authorities decide and, if approved, issue the **Letter of Intent for Technology Export License** (``中华人民共和国技术出口许可意向书``), valid for **up to 3 years** `CNTIER, Arts. 35-36 <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS, Arts. 6, 10 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_. *(Statutory rule: without holding this Letter of Intent, no entity or individual may conduct substantive export negotiations or make legally binding commitments `CNMEAS, Art. 11 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_.)*
   * **Stage 2: After signing the contract (up to 15 working days):** Sign the contract, log contract details in the online system, and submit to Provincial Commerce: **(i)** Letter of Intent, **(ii)** signed contract copy, **(iii)** Technical Documentation Export Checklist (``技术资料出口清单``), and **(iv)** legal-status proofs of both contracting parties `CNTIER, Art. 37 <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS, Arts. 13, 16 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_. Provincial Commerce reviews contract authenticity and decides within **15 working days**, issuing the formal **Technology Export License** (``中华人民共和国技术出口许可证``) `CNTIER, Arts. 37-38 <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS, Art. 14 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_. **Crucial statutory rule:** A restricted technology export contract *takes legal effect only on the date the Technology Export License is issued*, and the exporter presents that license to clear **customs, foreign exchange, banking, and tax** procedures `CNTIER, Art. 38 <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS, Arts. 15, 18 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.

.. container:: contact-card china-card

   **Verified China Official Contact Directory**

   * **Lead Central Departments (Catalogue Policy, Scope & Public Consultation):** Bureau of Industry, Security, Import and Export Control, Ministry of Commerce of the PRC (``中华人民共和国商务部安全与管制局``), jointly with the Ministry of Science and Technology (``科学技术部``) `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_.
   * **Postal Address:** No. 2 Dongchang'an Avenue, Beijing 100731, China (``北京市东长安街2号商务部安全与管制局，邮编：100731``) `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_.
   * **Official Consultation & Policy Email:** ``jinxianmulu@mofcom.gov.cn`` *(for public comments through 15 Nov 2026, mark subject* ``《中国禁止出口限制出口技术目录》公开征求意见`` *and attach contact details and company seal if filing as an organization)* `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_.
   * **Official Fax:** ``+86-10-6519-7565`` (``010-65197565``) `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_.
   * **Unified Online Registration & Licensing Portal:** ``https://ecomp.mofcom.gov.cn``: *Technology Trade Management Information Application* (``商务部业务系统统一平台 - 技术贸易管理信息应用``, integrating ``jsjckqy.fwmys.mofcom.gov.cn``) `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CNMEAS, Art. 16 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_ `CNPLAT <http://jsjckqy.fwmys.mofcom.gov.cn/notice>`_.
   * **Unified Platform Technical Support Phone:** ``+86-10-6787-0108`` (``86-10-67870108``) `CNPLAT <http://jsjckqy.fwmys.mofcom.gov.cn/notice>`_.
   * **Local Licensing Authorities:** Provincial, Autonomous-Region, or Municipal Commerce Department and Science & Technology Department in the exporter's place of registration (``所在地省、自治区、直辖市商务主管部门会同科技行政主管部门``) `CNMEAS, Art. 4 <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_.

United States: Federal Agencies, SNAP-R Workflow, and Verified Contacts
=======================================================================

In the United States, dual-use hardware, software, and technology export licensing is administered federally by the **Bureau of Industry and Security (BIS)** within the **U.S. Department of Commerce**, with zero government filing fee for electronic submissions `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.

Four Steps to Classify or Obtain US Export Approval
---------------------------------------------------

1. **Step 1: Establish jurisdiction and publication status:** Check the exact artifact under 734.3, 734.7, 734.8 and the 4E091 notes. Qualifying published material can be outside the EAR; an item that is merely eligible for no license to one destination can still be subject to the EAR. Part 744 requirements generally concern items subject to the EAR, while other sanctions and US-person rules require separate analysis. `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR744 <https://www.bis.gov/regulations/ear/744>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_
2. **Step 2: Obtain a Company Identification Number (CIN) on SNAP-R:** Parties exporting controlled hardware (``3A090``), chip equipment, or private controlled technology register online for a CIN on BIS's **Simplified Network Application Process Redesign (SNAP-R)** portal at ``https://snapr.bis.gov`` (US-located parties submit Export License applications, while parties abroad may submit Reexport License or Commodity Classification requests) `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.
3. **Step 3: File a Commodity Classification (CCATS) or Policy Inquiry if uncertain:** Submit technical specifications as a Commodity Classification Work Item on ``snapr.bis.gov`` to receive an official ECCN determination (``ACN`` tracking number), or contact BIS's Regulatory Policy Division for rule interpretation `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.
4. **Step 4: Submit License Application & Track via STELA:** Upload PDF supporting documents, end-user statements, and technical specs (for January 2026 China/Macau chip reviews under ``742.6(b)(10)``, attach certifications of ``TPP < 21,000``, ``DRAM bandwidth < 6,500 GB/s``, US supply adequacy, KYC security, and independent US lab verification) `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_. Track status on **STELA** (``https://snapr.bis.gov/public/stela``) `EAR734 <https://www.bis.gov/regulations/ear/734>`_.

.. container:: contact-card

   **Verified United States Official Contact Directory**

   * **Electronic Licensing & Tracking Portals:** SNAP-R Filing Portal: ``https://snapr.bis.gov`` | STELA Status Tracker: ``https://snapr.bis.gov/public/stela`` `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.
   * **SNAP-R Helpdesk & Account Support:** Technical Helpdesk: ``snapr@bis.doc.gov`` | Account Recovery & Empowered Official Letters: ``ECDOEXS@bis.doc.gov`` `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.
   * **BIS Outreach and Educational Services Division (Washington, D.C.):** U.S. Department of Commerce, 14th and Pennsylvania Avenue, NW., Room H1099D, Washington, DC 20230 | Tel: ``+1 (202) 482-4811`` | Fax: ``+1 (202) 482-2927`` `EAR734 <https://www.bis.gov/regulations/ear/734>`_.
   * **BIS Western Regional Office (Southern California):** 2302 Martin St., Suite 330, Irvine, CA 92612 | Tel: ``+1 (949) 660-0144`` | Fax: ``+1 (949) 660-9347`` `EAR734 <https://www.bis.gov/regulations/ear/734>`_.
   * **BIS Northern California Branch (Silicon Valley):** 160 W. Santa Clara Street, Suite 725, San Jose, CA 95113 | Tel: ``+1 (408) 998-8806`` | Fax: ``+1 (408) 998-8677`` `EAR734 <https://www.bis.gov/regulations/ear/734>`_.
   * **BIS Regulatory Policy Division:** Room 2099B, U.S. Department of Commerce, Washington, DC 20230 | Tel: ``+1 (202) 482-2440`` | Email: ``RPD2@bis.doc.gov`` `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_.
   * **BIS Technical Leads (Semiconductors & AI):** Category 3 Semiconductors (``3A090``): Carlos Monroy, ``+1 (202) 482-3246``, ``Carlos.Monroy@bis.doc.gov`` `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ | Category 4 Computers & AI Model Weights (``4E091``): Aaron Amundson, ``+1 (202) 482-0707``, ``Aaron.Amundson@bis.doc.gov`` `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_.
   * **U.S. Department of the Treasury (Outbound Investment Security Program):** ``https://home.treasury.gov/policy-issues/international/outbound-investment-program`` | Inquiries: ``Outbound@treasury.gov`` | Regulations: ``OIS.Outbound.Regulations@treasury.gov`` | IT Support: ``Outbound.ITSupport@treasury.gov`` `TREAS <https://home.treasury.gov/policy-issues/international/outbound-investment-program>`_.
   * **U.S. Department of Justice (Data Security Program, National Security Division):** ``https://www.justice.gov/nsd/data-security`` | Compliance: ``NSD.FIRS.datasecurity@usdoj.gov`` | Public Affairs: ``nsd.public@usdoj.gov`` `DOJ <https://www.justice.gov/nsd/data-security>`_.

What This Means for the Two Teams
===================================

The shared-workbench story now becomes a practical inquiry: what is being transferred, which system covers it, and which route remains available? Clear exclusions, usable procedures and credible continuing cooperation may change incentives. Their effects need evidence; a completed form alone cannot tell us whether cooperation has improved.

The two teams' starting point is in :ref:`shared-workbench-story`.
