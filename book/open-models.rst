.. meta::
   :description: Chapter 4: Public AI releases, private transfers, current Chinese registration, proposed catalogue changes, and separate US publication rules.

============================================================
04. Open Models: Public Releases and Private Transfers
============================================================

An Open License Is One Part of a Release
=========================================

A team can publish code and weights for others to inspect, adapt and run. A permissive copyright license is one part of that release. Applicable export, data and safety rules still need assessment. DeepSeek-R1 and Qwen3 are documented examples of public releases; their publication does not establish an exemption for every related activity. `R1 <https://github.com/deepseek-ai/DeepSeek-R1>`_ `QWEN <https://github.com/QwenLM/Qwen3>`_

.. figure:: assets/illustrations/release.jpg
   :name: fig-release-gates
   :alt: Receiving files and knowledge to work independently differs from using a service that keeps its underlying model elsewhere.
   :width: 100%

   Receiving files and knowledge to work independently differs from using a service that keeps its underlying model elsewhere.

Start with the Actual Artifact
================================

A public paper, downloadable weights, private training code and a later fine-tune are different artifacts. The Open Source AI Definition asks for freedoms and access to code, parameters and sufficient data information. A product called open source may provide only some of these. A copyright label alone also does not determine export-law status. `OSI <https://opensource.org/ai/open-source-ai-definition>`_

China: Registration Now, Catalogue Proposal Separately
=======================================================

Announcement 48 requires temporary registration before covered transfers, including unfinished exports. It identifies ownership transfers, overseas licensing, foreign ownership or control changes and further notified cases. The proposed catalogue prohibitions and licensing categories are a separate track. A proposed prohibited entry is not, by itself, a new ban already in force. Existing law still needs to be checked. `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_

We read the Chinese draft with its section-wide notes, rather than treating every release as a compulsory sequence of four gates:

1. **Already-public AI technology:** Note 1 excludes technology already public through open source or papers. Identify exactly what was published. A paper about private weights does not publish those weights; a private derivative does not automatically inherit every exclusion. `CN-A1, note 1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_
2. **Unpublished data-sensitive technology:** The draft places specified core-data models in a proposed prohibited category and important-data models in a restricted category. The trace-data exclusion has several conditions, not just a 0.1% test. These categories need exact facts and legal interpretation. `CN-A1, 266501J and 266504X <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_
3. **Other unpublished controlled technology:** Check alternative model thresholds and any agent, chip-design or cluster technology being transferred. Being below one model threshold does not clear every entry, existing law or bundled artifact. `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_
4. **Facilitated routes:** Note 2 proposes automatic licensing or similar facilitation for specified restricted AI exports, including open-source releases, overseas chip fabrication and certain self-operated computing centers. An exclusion and an easier permission route are different. Final procedures and applicable conditions still matter. `CN-A1, note 2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_

.. list-table:: Three separate questions before a transfer
   :name: fig-flowchart-release
   :header-rows: 1
   :widths: 35 65

   * - Question
     - What we check
   * - Current Chinese registration
     - The covered technology and transfer, including unfinished exports.
   * - Proposed Chinese catalogue
     - The precise entry, its notes, exclusions and proposed facilitated routes.
   * - Separate US rules
     - Whether the artifact is subject to the EAR, followed by its classification and applicable conditions.

United States: A Separate Jurisdiction Test
============================================

First establish whether the artifact is subject to the EAR. Published-information provisions and the 4E091 notes can exclude qualifying public technology or weights. The model-weight entry has additional-training conditions for derivatives, so a privately improved model is not automatically treated like its public base. The announced non-enforcement policy and GAO's decision must also be distinguished from the published text. `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774, 4E091 notes <https://www.bis.gov/regulations/ear/774>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_

MOFCOM's answer on API, app, web, SaaS and lightweight local deployment concerns restricted large models under the proposed measures. It should not be turned into a universal US exemption or a clearance for other Chinese controls. Handing private weights to another party is also different from providing a remote service. `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_

Possible Effects on Open Models
=================================

**Continued public releases** are consistent with the draft's explicit facilitation. **More documentation or delay** is a possible result of classification work. **A public smaller model alongside a private service** is a possible business choice. **Greater concentration of training** is a possible result if affordable computing becomes harder to obtain. These are mechanisms to investigate, not outcomes established by the announcement or measured forecasts. `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_ `NTIA <https://www.ntia.gov/sites/default/files/publications/ntia-ai-open-model-report.pdf>`_

We should not claim that chip restrictions caused a particular model's efficiency improvements without evidence isolating that cause. Smaller parameter counts do not guarantee exclusion because other criteria may apply. Local use can reduce reliance on a remote service, but it does not by itself guarantee privacy, security or clinical reliability.

Independent Review and Its Limits
==================================

Open access can let teams outside the original developer inspect a model and suggest repairs. More reviewers can help, but they can share the same blind spots or lack resources to test well. Finding a flaw is also different from fixing it. The optional probability example in :ref:`checking-review-example` explains these limits.

Open weights can also help harmful actors modify a system or remove safeguards. NTIA's 2024 report considered both benefits and risks, recommending monitoring rather than restricting then-current open weights. Research on open foundation models stresses the need to compare the extra risk with existing alternatives. Neither source establishes a universal safety multiplier for openness. `NTIA <https://www.ntia.gov/sites/default/files/publications/ntia-ai-open-model-report.pdf>`_ `OPENRISK <https://arxiv.org/abs/2403.07918>`_

A Practical Release Record
============================

Our suggested record identifies the model version, file hashes, license, public and private artifacts, data categories, measured criteria, recipient, destination and transfer form. Keep publication evidence and any relevant filing or permission. This is a documentation suggestion, not a new compulsory form or a substitute for the official registration fields. `CN-A2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-2.pdf>`_

What This Means for the Two Teams
===================================

Our teams keep their public starting model. Their next contribution could be a paper, new code, private weights or a service, each needing its own assessment. Public-information exclusions and proposed facilitated routes matter because they may preserve specific exchanges that the story's broad wall would stop.

The two teams' starting point is in :ref:`shared-workbench-story`.
