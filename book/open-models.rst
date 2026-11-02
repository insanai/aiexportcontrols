.. meta::
   :description: Chapter 4: Public AI releases, private transfers, current Chinese registration, proposed catalogue changes, and separate US publication rules.

============================================================
04. Open Models: Public Releases and Private Transfers
============================================================

An Open License Is One Part of a Release
=========================================

A team can publish code and weights for others to inspect, adapt and run. A permissive copyright license is one part of that release. Applicable export, data and safety rules still need assessment. DeepSeek-R1 and Qwen3 are documented examples of public releases; their publication does not establish an exemption for every related activity. `R1 <https://github.com/deepseek-ai/DeepSeek-R1>`_ `QWEN <https://github.com/QwenLM/Qwen3>`_

.. typst-diagram::
   :name: fig-release-gates
   :caption: A release can follow different paths depending on the artifact, jurisdiction and transfer. Existing public files and first releases need different analysis.
   :alt: One file follows branching routes, with an open path, a review point and an interruption.

   #import "figures/artwork.typ": release-gates
   #release-gates()

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

.. typst-diagram::
   :caption: Keep three questions separate: what is already operating, what the Chinese draft proposes, and what the US rules cover. These are reading questions, not a transaction clearance.
   :name: fig-flowchart-release

   #import "figures/diagrams.typ": release-reading-map
   #release-reading-map(lang: "en")

United States: A Separate Jurisdiction Test
============================================

First establish whether the artifact is subject to the EAR. Published-information provisions and the 4E091 notes can exclude qualifying public technology or weights. The model-weight entry has additional-training conditions for derivatives, so a privately improved model is not automatically treated like its public base. The announced non-enforcement policy and GAO's decision must also be distinguished from the published text. `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774, 4E091 notes <https://www.bis.gov/regulations/ear/774>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_

MOFCOM's answer on API, app, web, SaaS and lightweight local deployment concerns restricted large models under the proposed measures. It should not be turned into a universal US exemption or a clearance for other Chinese controls. Handing private weights to another party is also different from providing a remote service. `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_

Possible Effects on Open Models
=================================

**Continued public releases** are consistent with the draft's explicit facilitation. **More documentation or delay** is a possible result of classification work. **A public smaller model alongside a private service** is a possible business choice. **Greater concentration of training** is a possible result if affordable computing becomes harder to obtain. These are mechanisms to investigate, not outcomes established by the announcement or measured forecasts. `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_ `NTIA <https://www.ntia.gov/sites/default/files/publications/ntia-ai-open-model-report.pdf>`_

We should not claim that chip restrictions caused a particular model's efficiency improvements without evidence isolating that cause. Smaller parameter counts do not guarantee exclusion because other criteria may apply. Local use can reduce reliance on a remote service, but it does not by itself guarantee privacy, security or clinical reliability.

A Practical Release Record
============================

Our suggested record identifies the model version, file hashes, license, public and private artifacts, data categories, measured criteria, recipient, destination and transfer form. Keep publication evidence and any relevant filing or permission. This is a documentation suggestion, not a new compulsory form or a substitute for the official registration fields. `CN-A2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-2.pdf>`_
