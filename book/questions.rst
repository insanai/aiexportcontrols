.. meta::
   :description: Chapter 9: Practical field guide and six real-world scenarios for open-source AI maintainers, hospital and university users, chip designers, investors, and equipment exporters.

===============================================
09. Everyday Situations: A Reader's Field Guide
===============================================

Can I Still Download DeepSeek, Qwen, or Other Open Models onto My Own Hardware?
===============================================================================

Announcement 48 does not establish a blanket ban on downloading existing public models. The Chinese draft excludes already-public AI technology, and US rules contain provisions for qualifying published code and weights. A private fine-tune, restricted data or a later onward transfer needs its own assessment; downloading an original public model is not a universal clearance for every derivative or use. `CN-A1, note 1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_

Does Hardware Affect Open-Source AI Even When the Software License Is MIT or Apache 2.0?
========================================================================================

Profoundly. An MIT license gives you the *legal right* to run a model, whereas physical GPUs, high-bandwidth memory, and cluster interconnects give you the *physical ability* to train or run it. US rules (``3A090``, ``742.6(b)(10)``) govern who can buy advanced AI accelerators, while China's proposed ``266506X`` and ``266507X`` govern cross-border transfers of AI processor architectures, 3D NAND/DRAM designs, and >10,000-card cluster engineering (with Footnote 2 easing overseas foundry tape-outs) `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_. Always check both the software files and any custom silicon or cluster stack moving alongside them.

If Overseas Users Chat with Our AI App or Call Our API, Is That a Model Export?
===============================================================================

MOFCOM distinguishes remote services from transferring restricted large-model technology. Its answer covers API access, apps, web interaction, SaaS and lightweight local deployment. The explanation is about restricted large models after the measures take effect. It is not a universal exemption for prohibited core-data technology, other controlled items, data rules or every current registration question. `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_

Our Lab Stays in China, but Foreign Investors Are Acquiring Control. Do We Register?
====================================================================================

Check immediately. Section III(2) of Announcement 48 requires pre-export registration whenever the **owner or actual controller of covered domestic technology changes into an overseas entity**, even if every server and engineer stays put `CN48, section III(2) <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_. If US investors participate, separately verify US Treasury's Outbound Investment rules (``Outbound@treasury.gov``) `TREAS <https://home.treasury.gov/policy-issues/international/outbound-investment-program>`_.

What Should We Record in a Two-Page "Release Passport" Before Publishing?
=========================================================================

Before any major open-weight release, overseas chip tape-out, or cross-border license, keep a clean internal folder recording: **(1)** exact version and SHA-256 hash; **(2)** catalogue codes checked (``266504X``, ``266506X``, ``266507X``, ``3A090``, ``4E091``); **(3)** measured training FLOPs, parameter count, and public benchmark rankings on the release date; **(4)** training-data audit confirming zero Core Data and documenting public/trace Important Data; **(5)** prior publication proof or first-release status; and **(6)** copies of any ``ecomp.mofcom.gov.cn`` registration or ``snapr.bis.gov`` ACN filing `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CN-A2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-2.pdf>`_ `SNAPR <https://snapr.bis.gov/help/SNAPR-FAQ.pdf>`_.

Six Real-World Scenarios
========================

.. note::

   **Illustrative scenarios:** The six cases below demonstrate how verified rules operate in practice; always check exact project facts and official primary texts before acting.

.. _scenario-explorer-start:

.. container:: scenario-card

   **1. Fine-Tuning an Existing Public Open-Weight Model**

   A hypothetical hospital research team obtains public weights and adapts them locally. The original public artifact and a later private clinical adaptation are distinct. Check the applicable publication provisions, data obligations and any onward transfer. A copyright license does not establish clinical safety or grant government permission. `CN-A1, note 1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_

.. container:: scenario-card

   **2. Publishing a Brand-New Top-10 Open-Source Model from China**

   A Chinese AI lab prepares the very first global open-source upload of a newly trained reasoning model whose live benchmarks place it at #7 in the world (crossing ``266504X(2)``). First confirm zero PRC Core Data (``266501J``) and check Important Data trace rules. During the post-16 October 2026 transition window, verify pre-export registration requirements on ``ecomp.mofcom.gov.cn``; once the revised catalogue takes effect, use **Footnote 2's automatic-licensing fast lane** ("apply and go") `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A1, note 2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.

.. container:: scenario-card

   **3. Licensing Private Frontier Weights or Custom Chip IP to a Foreign Partner**

   A Beijing team signs a closed commercial contract handing unpublished 2.4-trillion-parameter weights (``266504X``) or a custom 7 nm NPU instruction-set core (``266506X``) to an overseas enterprise. Because this is a private commercial transfer rather than open-source publication, file **Attachment 2 pre-export registration** on ``ecomp.mofcom.gov.cn`` today, and prepare for the **two-stage Provincial Commerce + Provincial S&T license** (30 working days for Letter of Intent + 15 working days for formal Technology Export License) once finalized `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CNTIER <https://xzfg.moj.gov.cn/front/law/detail?LawID=898>`_ `CNMEAS <https://www.mofcom.gov.cn/dl/file/20211203230621.pdf>`_. *(Note: sending a chip layout abroad solely for foundry wafer fabrication qualifies for Footnote 2 facilitation.)*

.. container:: scenario-card

   **4. Offering Global Web Chat or Metered API Access**

   A Shanghai startup serves overseas customers through a web interface and HTTPS API powered by its flagship frontier model hosted in China. MOFCOM's official Q&A confirms that remote API and app services without transferring underlying weights or source code sit **outside large-model technology export controls** (provided the model was not trained on prohibited Core Data ``266501J``) `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.

.. container:: scenario-card

   **5. Foreign Venture Restructuring or Cross-Border Acquisition**

   A domestic startup holding unreleased ``266505X`` 60-agent orchestration software or an undisclosed ``262705X`` gene-therapy target discovery engine restructures so an offshore holding company becomes its actual controller. Even if zero files leave Shenzhen servers, Section III(2) of Announcement 48 requires **pre-export registration before the control shift completes**, and if US capital is involved, US Treasury's Outbound Investment rules must be checked in parallel `CN48, section III(2) <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `TREAS <https://home.treasury.gov/policy-issues/international/outbound-investment-program>`_.

.. container:: scenario-card

   **6. Shipping a Turnkey Solar Wafer or Perovskite Line Overseas**

   A Chinese equipment maker contracts to ship monocrystalline crystal-pulling furnaces and PECVD coaters to equip a new overseas solar plant, bundled with process recipes and engineer commissioning. Under **Footnote 4**, the physical machines themselves fall under export control if they embody listed ``263004X``-``263802X`` indicators (and ``<=70 micrometer`` wafer slicing ``263004J`` or ``>=30%`` tandem recipes ``263801J`` face proposed prohibition). Complete ``ecomp.mofcom.gov.cn`` pre-export registration before completion `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A1, note 4 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.
