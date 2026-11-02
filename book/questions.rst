.. meta::
   :description: Chapter 9: Practical field guide and six real-world scenarios for open-source AI maintainers, hospital and university users, chip designers, investors, and equipment exporters.

===============================================
09. Everyday Situations: A Reader's Field Guide
===============================================

Can I Still Download DeepSeek, Qwen, or Other Open Models onto My Own Hardware?
===============================================================================

Yes. Downloading, studying, quantizing, or fine-tuning an already-public model from Hugging Face or GitHub breaks neither country's export rules. China's draft Footnote 1 expressly excludes AI technology already in the public domain via open source or published papers, and US rule ``15 CFR 734.7`` (plus ``4E091`` notes) leaves unrestricted public code and weights outside the EAR ``[CN-A1, note 1]`` ``[EAR734]`` ``[EAR774]``. For *future* open releases from Chinese labs, Footnote 2 proposes automatic-licensing facilitation so open-source sharing can continue lawfully ``[CN-A1, note 2]`` ``[CNQA]``.

Does Hardware Affect Open-Source AI Even When the Software License Is MIT or Apache 2.0?
========================================================================================

Profoundly. An MIT license gives you the *legal right* to run a model, whereas physical GPUs, high-bandwidth memory, and cluster interconnects give you the *physical ability* to train or run it. US rules (``3A090``, ``742.6(b)(10)``) govern who can buy advanced AI accelerators, while China's proposed ``266506X`` and ``266507X`` govern cross-border transfers of AI processor architectures, 3D NAND/DRAM designs, and >10,000-card cluster engineering (with Footnote 2 easing overseas foundry tape-outs) ``[CN-A1]`` ``[US26]`` ``[EAR742]``. Always check both the software files and any custom silicon or cluster stack moving alongside them.

If Overseas Users Chat with Our AI App or Call Our API, Is That a Model Export?
===============================================================================

No. MOFCOM's official Q&A explicitly confirms that offering **remote API calls, web/app chat, SaaS software, or lightweight edge deployment** built on a restricted large model sits **outside large-model technology export management** ``[CNQA]``. Gates engage only if the model used prohibited PRC Core Data (``266501J``) or if full restricted weights are deployed locally onto overseas servers (where Chinese firms' self-owned overseas clouds qualify for Footnote 2 automatic licensing) ``[CN-A1]`` ``[CNQA]``.

Our Lab Stays in China, but Foreign Investors Are Acquiring Control. Do We Register?
====================================================================================

Check immediately. Section III(2) of Announcement 48 requires pre-export registration whenever the **owner or actual controller of covered domestic technology changes into an overseas entity**, even if every server and engineer stays put ``[CN48, section III(2)]``. If US investors participate, separately verify US Treasury's Outbound Investment rules (``Outbound@treasury.gov``) ``[TREAS]``.

What Should We Record in a Two-Page "Release Passport" Before Publishing?
=========================================================================

Before any major open-weight release, overseas chip tape-out, or cross-border license, keep a clean internal folder recording: **(1)** exact version and SHA-256 hash; **(2)** catalogue codes checked (``266504X``, ``266506X``, ``266507X``, ``3A090``, ``4E091``); **(3)** measured training FLOPs, parameter count, and public benchmark rankings on the release date; **(4)** training-data audit confirming zero Core Data and documenting public/trace Important Data; **(5)** prior publication proof or first-release status; and **(6)** copies of any ``ecomp.mofcom.gov.cn`` registration or ``snapr.bis.gov`` ACN filing ``[CN-A1]`` ``[CN-A2]`` ``[SNAPR]``.

Six Real-World Scenarios
========================

.. note::

   **Illustrative scenarios:** The six cases below demonstrate how verified rules operate in practice; always check exact project facts and official primary texts before acting.

.. _scenario-explorer-start:

.. container:: scenario-card

   **1. Fine-Tuning an Existing Public Open-Weight Model**

   A hospital research team in Berlin or a startup in São Paulo downloads publicly released Apache 2.0 or MIT weights (such as Qwen3 or DeepSeek-R1) onto local workstations to fine-tune an offline clinical assistant. Because those weights already entered the public domain lawfully, China's Footnote 1 and US ``15 CFR 734.7`` / ``4E091`` leave the public model outside export-catalogue licensing ``[CN-A1, note 1]`` ``[EAR734]``. Keep the original download hash, license file, and local patient-privacy safeguards.

.. container:: scenario-card

   **2. Publishing a Brand-New Top-10 Open-Source Model from China**

   A Chinese AI lab prepares the very first global open-source upload of a newly trained reasoning model whose live benchmarks place it at #7 in the world (crossing ``266504X(2)``). First confirm zero PRC Core Data (``266501J``) and check Important Data trace rules. During the post-16 October 2026 transition window, verify pre-export registration requirements on ``ecomp.mofcom.gov.cn``; once the revised catalogue takes effect, use **Footnote 2's automatic-licensing fast lane** ("apply and go") ``[CN48]`` ``[CN-A1, note 2]`` ``[CNQA]``.

.. container:: scenario-card

   **3. Licensing Private Frontier Weights or Custom Chip IP to a Foreign Partner**

   A Beijing team signs a closed commercial contract handing unpublished 2.4-trillion-parameter weights (``266504X``) or a custom 7 nm NPU instruction-set core (``266506X``) to an overseas enterprise. Because this is a private commercial transfer rather than open-source publication, file **Attachment 2 pre-export registration** on ``ecomp.mofcom.gov.cn`` today, and prepare for the **two-stage Provincial Commerce + Provincial S&T license** (30 working days for Letter of Intent + 15 working days for formal Technology Export License) once finalized ``[CN48]`` ``[CNTIER]`` ``[CNMEAS]``. *(Note: sending a chip layout abroad solely for foundry wafer fabrication qualifies for Footnote 2 facilitation.)*

.. container:: scenario-card

   **4. Offering Global Web Chat or Metered API Access**

   A Shanghai startup serves overseas customers through a web interface and HTTPS API powered by its flagship frontier model hosted in China. MOFCOM's official Q&A confirms that remote API and app services without transferring underlying weights or source code sit **outside large-model technology export controls** (provided the model was not trained on prohibited Core Data ``266501J``) ``[CN-A1]`` ``[CNQA]``.

.. container:: scenario-card

   **5. Foreign Venture Restructuring or Cross-Border Acquisition**

   A domestic startup holding unreleased ``266505X`` 60-agent orchestration software or an undisclosed ``262705X`` gene-therapy target discovery engine restructures so an offshore holding company becomes its actual controller. Even if zero files leave Shenzhen servers, Section III(2) of Announcement 48 requires **pre-export registration before the control shift completes**, and if US capital is involved, US Treasury's Outbound Investment rules must be checked in parallel ``[CN48, section III(2)]`` ``[TREAS]``.

.. container:: scenario-card

   **6. Shipping a Turnkey Solar Wafer or Perovskite Line Overseas**

   A Chinese equipment maker contracts to ship monocrystalline crystal-pulling furnaces and PECVD coaters to equip a new overseas solar plant, bundled with process recipes and engineer commissioning. Under **Footnote 4**, the physical machines themselves fall under export control if they embody listed ``263004X``–``263802X`` indicators (and ``<=70 micrometer`` wafer slicing ``263004J`` or ``>=30%`` tandem recipes ``263801J`` face proposed prohibition). Complete ``ecomp.mofcom.gov.cn`` pre-export registration before completion ``[CN48]`` ``[CN-A1, note 4]`` ``[CNQA]``.
