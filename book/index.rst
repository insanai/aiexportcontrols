.. meta::
   :description: Impact of Export Controls on the Future of Open Source AI: how software, model weights, and silicon hardware gates reshape human progress, examined with primary sources and an illustrative game.

=========================================================
Impact of Export Controls on the Future of Open Source AI
=========================================================

An idea can be shared without using it up. Thomas Jefferson expressed this in an 1813 letter: *"He who lights his taper at mine, receives light without darkening me."* That image captures the promise of open-source AI: one team can learn from another without taking its knowledge away. `JEFFERSON <https://founders.archives.gov/documents/Jefferson/03-06-02-0322>`_

.. figure:: assets/illustrations/cover.jpg
   :name: fig-cover-commons
   :alt: A border barrier holds up computer parts and technical plans while two research teams try to work together.
   :width: 100%

   A border barrier holds up computer parts and technical plans while two research teams try to work together.

Open-weight models can give researchers and smaller organizations more control over how they use AI. A clinic, a language project or a university might adapt a public model on its own computers. These are illustrative uses, not documented deployments or proof that a model is clinically safe. Downloadable weights also differ from the fuller requirements of the Open Source AI Definition. `OSI <https://opensource.org/ai/open-source-ai-definition>`_ `R1 <https://github.com/deepseek-ai/DeepSeek-R1>`_ `QWEN <https://github.com/QwenLM/Qwen3>`_

Sharing a model is only the beginning. To turn shared knowledge into a useful tool, a team also needs computers and a way to keep learning from other teams.

Not Just Software or Weights: The Hardware Beneath Open Minds
=============================================================

A model can travel as code and learned numbers. The computers that train and run it are physical machines. An open software license and access to those machines solve different parts of the problem.

Open models depend on physical computers. Large training runs can need advanced processors, memory and fast networks; smaller models can run on less demanding equipment. Not every open-model user needs the latest manufacturing process or a cluster of ten thousand cards. Controls on scarce hardware can nevertheless affect which teams can train, inspect and deploy models.

.. figure:: assets/illustrations/hardware.jpg
   :name: fig-mind-silicon
   :alt: Open models depend on chips, memory and computing infrastructure. A restriction on one part can affect access to the whole system.
   :width: 100%

   Open models depend on chips, memory and computing infrastructure. A restriction on one part can affect access to the whole system.

* **Hardware and design knowledge:** US controls cover specified chips, manufacturing items and some foreign-made items under defined conditions. China proposes controls on specified processor and memory designs, and on certain technologies for clusters with **more than 10,000** accelerator cards. Design knowledge, finished chips and clusters are different objects of control. `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_
* **Models and data:** Announcement 48 began temporary registration for covered transfers on **16 October 2026**. Its proposed catalogue includes model core technology meeting any of three tests: training calculation, parameter count or a qualifying global top-10 assessment. These proposed categories are separate from the registration already operating and from the US model-weight rule. `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_

.. important::

   A team may have permission to use an open model yet struggle to obtain suitable computers. Our story therefore follows both the knowledge being shared and the hardware needed to use it.

.. _shared-workbench-story:

The Fortress Trap: How Both Sides Can Lose
==========================================

The hardware problem leads to a political problem. A useful open model depends on contributions from many teams, yet each government also wants to protect its country's capabilities. How can choices made for national advantage end up holding back both sides? We can follow the problem through a fictional shared workbench.

Two Teams, One Shared Starting Point
------------------------------------

Imagine a research team in Country A and another in Country B. Both start from the same publicly available AI model. They want to adapt it for ordinary local-language work. A's team finds a way to run it with less memory. B's team develops tests that uncover errors and helps fix them. These are imagined teams and contributions, not accounts of actual deployments.

If the teams exchange their next improvements, each can build on the other's work. A receives better testing; B receives a model that needs fewer resources. Both still need computers, staff and time. Sharing knowledge helps them use those resources; it does not make physical hardware free.

.. figure:: assets/illustrations/cooperation.jpg
   :name: fig-game-theory
   :alt: Two teams finish a computer by sharing parts and knowledge, then struggle when a wall separates them. This illustrates the assumed game, not a measured outcome.
   :width: 100%

   Two teams finish a computer by sharing parts and knowledge, then struggle when a wall separates them. This illustrates the assumed game, not a measured outcome.

Two Choices for Each Government
-------------------------------

Now the governments make policy for the next round of work. Each wants useful progress at home. Each also worries about giving the other country an advantage without receiving anything in return. We simplify their choices to two:

* **Share:** Allow the teams' ordinary research improvements to be exchanged.
* **Wall:** Broadly restrict the country's new contributions from reaching the other side.

The wall concerns future contributions. It cannot make copies of an already-public model disappear. The teams can keep their starting files, but their next improvements may stop reaching each other. Real export controls offer many more choices, including narrow restrictions and specific permissions. We first set those complications aside so we can see one incentive problem clearly.

Four Possible Endings, Then Four Scores
----------------------------------------

We now give the outcomes invented preference scores. A higher score means that a government prefers that outcome in this story. The scores combine its assumed concern for useful progress, protection and relative advantage. They are not AI test results, percentages or measured national gains. Nothing in the announcement supplies these numbers.

**Both share: 17 each.** A's memory-saving improvement reaches B, and B's testing and fixes reach A. Both teams improve their work without independently repeating every discovery. We give each government 17 to represent a good result from mutual cooperation.

**A shares while B builds a wall: A gets 3, B gets 20.** B can use A's newly shared improvement while withholding its own new contribution. We assume B values that one-sided advantage most, so it gets 20. A gets 3 because we assume its government dislikes sharing alone while the other country protects its contribution. A's team can still do useful work; 3 expresses its government's least-preferred outcome here.

**A builds a wall while B shares: A gets 20, B gets 3.** The roles reverse. A takes the one-sided advantage, while B is the only country sharing. We give both countries the same assumed priorities so we can see the strategic problem without assigning today's United States or China to either role.

**Both build walls: 5 each.** Neither receives the other's next contribution. They keep working from the public starting point, but must repeat more work or go without useful improvements. We assume each government prefers protecting its contribution to being the only side sharing, so 5 is above 3. We also assume both value mutual cooperation more than mutual isolation, so 17 is above 5.

The hardest assumption is that **20 is better than 17**: each government values a one-sided advantage more than shared progress in this round. That preference creates the temptation to restrict. If a government instead values mutual progress most, this particular trap may not arise. The numbers describe an assumed ranking; choosing them does not prove that real governments have it. `GAME <https://www.cs.cornell.edu/~rafael/networks-html/chapter1.html>`_

Reading the Game Picture
-------------------------

Country A's choice selects a row. Country B's choice selects a column. The box where they meet gives A's score beside the letter A and B's score beside B. For example, the top-right box means A shares and B builds a wall: A gets 3 and B gets 20. The green box is mutual sharing; the red box is mutual restriction.

.. typst-diagram::
   :name: fig-game-scores
   :caption: Four endings for the two teams. The scores are invented preferences; higher means preferred within this example.
   :alt: A chooses a row and B a column. Both sharing gives 17 each. A alone sharing gives A 3 and B 20. B alone sharing gives A 20 and B 3. Both restricting gives 5 each. All scores are assumptions.

   #import "figures/diagrams.typ": game-theory-matrix
   #game-theory-matrix(lang: "en")

Why the Wall Starts to Look Like the Safer Choice
-------------------------------------------------

A's government considers what B might do. **If B shares**, A compares sharing for 17 with withholding its own contribution for 20. Under our assumptions, A chooses the wall to gain the one-sided advantage. In the picture, this means comparing the two boxes in the left column.

**If B builds a wall**, A compares sharing alone for 3 with also restricting for 5. A again chooses the wall, this time to avoid being the only side sharing. In the picture, this means comparing the two boxes in the right column.

B reasons the same way. Each government can tell itself that its wall is sensible whatever the other does. Both therefore choose walls and receive 5 each, even though both would prefer the 17 each available through cooperation. Neither has to want a poorer joint result for that result to emerge.

This is the **Prisoner's Dilemma**. The ending is also a **Nash equilibrium**: with the other wall still in place, neither government improves its score by changing its choice alone. For A, opening alone would move its score from 5 down to 3. Mutual sharing needs both to change, or a change in what makes cooperation worthwhile. `GAME <https://www.cs.cornell.edu/~rafael/networks-html/chapter1.html>`_

What This Explains About Export Controls
-----------------------------------------

The story puts a policy question behind the technical entries in the next chapters. A government may see protection or bargaining advantage in a broad restriction. Across both countries, the same restrictions may interrupt complementary improvements, duplicate effort and make smaller research teams' work harder. Those are mechanisms to investigate, not costs that our invented scores have measured.

Real US and Chinese controls are not this symmetric two-choice game. The countries have different capabilities and legal tools. A reporting duty, a prohibition, a normal license, a public-information exclusion and an easier release route can affect cooperation differently. The following chapters separate those cases. We do not label every filing requirement a wall or every exclusion a complete freedom to transfer.

A narrow control that prevents serious harm could also change the ranking of outcomes. Public model access has benefits and misuse risks. The policy task is to identify the specific risk being controlled and the cooperation being lost, rather than treating either complete openness or broad closure as an automatic answer. `NTIA <https://www.ntia.gov/sites/default/files/publications/ntia-ai-open-model-report.pdf>`_ `OPENRISK <https://arxiv.org/abs/2403.07918>`_

Can the Teams Keep Working Together?
--------------------------------------

Return to the workbench. The teams expect to make another improvement next month, and another after that. A government that takes a short-term advantage today may lose access to future cooperation it values. A credible continuing arrangement can therefore change the choice. Whether that works depends on observable actions, the value of future exchanges and the possibility of mistakes; a promise alone does not solve the problem.

We carry one question into the rest of the book: **which rules address a specific danger while leaving a workable route for the next useful contribution?** As we examine model files, hardware, medical platforms and solar equipment, the object being shared changes. The question about lost cooperation remains. An optional calculation is in :ref:`checking-game-example`; the story can be followed without it.

The Central Factual Discovery: An Ajar Doorway, Not a Sealed Wall
=================================================================

The fictional wall hides distinctions that matter in the real rules. Is the technology already public? Is a new transfer prohibited, restricted or eligible for an easier route? Announcement 48 and the US rules answer different questions. We now turn from our imagined workbench to the source texts:

.. figure:: assets/illustrations/sectors.jpg
   :name: fig-forty-overview
   :alt: Computing, biomedicine and solar manufacturing, shown through a processor, a cell and the layers of a solar panel.
   :width: 100%

   Computing, biomedicine and solar manufacturing, shown through a processor, a cell and the layers of a solar panel.

.. list-table:: The 40 proposed technology points
   :header-rows: 1
   :widths: 50 25 25

   * - Area
     - Proposed prohibited
     - Proposed restricted
   * - AI and computing hardware
     - 6
     - 17
   * - Biomedicine
     - 3
     - 2
   * - Solar manufacturing
     - 5
     - 7

* **Already public and newly released are different.** The Chinese draft excludes AI technology already public through open source or papers. US rules have their own published-information provisions and model-weight notes. A public paper does not necessarily disclose private weights; a new private derivative needs its own assessment. Neither exclusion settles every other legal question. `CN-A1, note 1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_
* **New open-source AI and chip tape-outs get a dedicated fast lane.** Rather than banning open releases of restricted AI, China's Footnote 2 proposes **automatic licensing and facilitation** ("apply and go" in MOFCOM's official explanation) for open-source exports, overseas foundry chip tape-outs (``芯片流片``), and Chinese firms' self-operated overseas compute clouds `CN-A1, note 2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.
* **Registration is current; the new prohibitions remain proposed.** Covered ownership transfers, overseas licenses and foreign-control changes require attention now. The new core-data prohibition is in the draft, not an already-final ban created by Announcement 48. `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_

How to Read This Book
=====================

We wrote this book for normal, curious human beings (builders, researchers, doctors, founders, students, journalists, and citizens) who want vivid clarity backed by verified primary evidence:

* :doc:`announcement` and :doc:`atlas` unpack Beijing's Announcement 48, its two separate clocks, and all **40 proposed technology points**.
* :doc:`ai` takes you inside both the software recipe and the silicon hardware stack (``266504X``, ``266506X``, ``266507X``).
* :doc:`open-models` distinguishes public releases from private transfers and keeps current duties separate from proposed routes.
* :doc:`biomedicine` and :doc:`solar` explore living gene platforms and solar machines where know-how travels inside physical equipment.
* :doc:`united-states` demystifies Washington's chip (``3A090``) and model-weight (``4E091``) rules, including the May 2026 GAO clash `USNE <https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_.
* :doc:`comparison` sets both countries side by side with a complete directory of **government departments, portals, exact statutory timelines, and verified phone numbers, faxes, emails, and street addresses** for getting official approval.
* :doc:`questions` and :doc:`sources` close with six everyday scenarios, a plain-language glossary, and all **26 primary sources** verified as of **2 November 2026**.

.. note::

   **Note on official files:** MOFCOM published Attachments 1 and 2 in WPS format; we preserve the untouched original files in :doc:`sources` alongside local PDF reading copies. An unrelated organoid research presentation previously saved locally as ``china_export_control.pdf`` was excluded from our evidence.

.. toctree::
   :maxdepth: 2
   :hidden:

   announcement
   atlas
   ai
   open-models
   biomedicine
   solar
   united-states
   comparison
   questions
   sources
