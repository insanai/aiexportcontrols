.. meta::
   :description: Impact of Export Controls on the Future of Open Source AI: how software, model weights, and silicon hardware gates reshape human progress, examined with primary sources and an illustrative game.

=========================================================
Impact of Export Controls on the Future of Open Source AI
=========================================================

An idea can be shared without using it up. Thomas Jefferson expressed this in an 1813 letter: *"He who lights his taper at mine, receives light without darkening me."* That image captures the promise of open-source AI: one team can learn from another without taking its knowledge away. `JEFFERSON <https://founders.archives.gov/documents/Jefferson/03-06-02-0322>`_

.. typst-diagram::
   :name: fig-cover-commons
   :caption: A shared path crosses a boundary while another is interrupted. The drawing represents the distinction between cooperation and broad restriction; it is not a map of a legal procedure.
   :alt: A shared path crosses a boundary while another is interrupted. The drawing represents the distinction between cooperation and broad restriction; it is not a map of a legal procedure.

   #import "figures/artwork.typ": commons
   #commons()

Open-weight models can give researchers and smaller organizations more control over how they use AI. A clinic, a language project or a university might adapt a public model on its own computers. These are illustrative uses, not documented deployments or proof that a model is clinically safe. Downloadable weights also differ from the fuller requirements of the Open Source AI Definition. `OSI <https://opensource.org/ai/open-source-ai-definition>`_ `R1 <https://github.com/deepseek-ai/DeepSeek-R1>`_ `QWEN <https://github.com/QwenLM/Qwen3>`_

Then the walls began to rise: not only in the sky of software, but deep underground in the bedrock of silicon.

Not Just Software or Weights: The Hardware Beneath Open Minds
=============================================================

Most conversations about open-source AI make a comforting mistake. They imagine an AI model as pure, weightless poetry: a file of code and numbers that can stay free forever as long as someone places an MIT or Apache 2.0 license on GitHub.

Open models depend on physical computers. Large training runs can need advanced processors, memory and fast networks; smaller models can run on less demanding equipment. Not every open-model user needs the latest manufacturing process or a cluster of ten thousand cards. Controls on scarce hardware can nevertheless affect which teams can train, inspect and deploy models.

.. typst-diagram::
   :name: fig-mind-silicon
   :caption: Open models depend on chips, memory and computing infrastructure. A restriction on one part can affect access to the whole system.
   :alt: Open models depend on chips, memory and computing infrastructure. A restriction on one part can affect access to the whole system.

   #import "figures/artwork.typ": mind-and-silicon
   #mind-and-silicon()

* **Hardware and design knowledge:** US controls cover specified chips, manufacturing items and some foreign-made items under defined conditions. China proposes controls on specified processor and memory designs, and on certain technologies for clusters with **more than 10,000** accelerator cards. Design knowledge, finished chips and clusters are different objects of control. `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_
* **Models and data:** Announcement 48 began temporary registration for covered transfers on **16 October 2026**. Its proposed catalogue includes model core technology meeting any of three tests: training calculation, parameter count or a qualifying global top-10 assessment. These proposed categories are separate from the registration already operating and from the US model-weight rule. `CN48 <https://www.mofcom.gov.cn/zwgk/zcfb/art/2026/art_0a31a3c9ac404f7a9b0e917ce3412997.html>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_

.. important::

   Even if software licenses remain free on paper, open-source AI cannot thrive in a vacuum: if export controls ration the chips needed to train open models, lock up open silicon blueprints, or price local hardware out of reach for hospitals and universities, humanity gets nudged back from owning minds to renting metered corporate cloud windows.

The Fortress Trap: How Both Sides Can Lose
==========================================

The central argument of this book is that broad restrictions on shared knowledge can leave both countries worse off. We can show one way this happens with a simple game. We cannot prove that every export control has this effect merely by choosing numbers for a table.

Imagine two countries choosing between **Share (S)** and **Wall (W)**. Sharing means allowing ordinary research and open-model cooperation; a wall means broadly restricting it. This deliberately simplifies real policy. Targeted controls, legitimate security benefits, third countries and unequal access to chips are not represented in the first example.

.. note::

   **Assumptions, not measurements.** The scores below are invented teaching values. They express preferences within this example, not dollars, measured innovation or national welfare. The table does not estimate a 70% loss or a fourfold increase in danger.

.. typst-diagram::
   :caption: Two countries can each prefer a wall while both prefer the outcome of mutual sharing. The scores are assumptions, not measured effects of export controls.
   :name: fig-game-theory

   #import "figures/diagrams.typ": game-theory-matrix
   #game-theory-matrix(lang: "en")

Reading the Four Outcomes
--------------------------

* **Both share:** A gets 17 and B gets 17. In this example, both value the benefits of exchange.
* **A shares, B restricts:** A gets 3 and B gets 20. We assume B gains a temporary advantage while still using A's public work.
* **A restricts, B shares:** A gets 20 and B gets 3. This is the mirror image.
* **Both restrict:** A gets 5 and B gets 5. We assume lost cooperation and duplicated effort outweigh the security benefits of these broad walls.

If B shares, A prefers 20 to 17. If B restricts, A prefers 5 to 3. B faces the same choices. A wall is therefore each country's best response whatever the other chooses. Under these assumptions, mutual restriction is a **Nash equilibrium**: neither can improve its score by changing its choice alone. Yet both would prefer 17 to 5. This is a **Prisoner's Dilemma**. Mutual sharing is a **Pareto-efficient** outcome here, but that term does not mean every country gets its largest possible individual score. `GAME <https://www.cs.cornell.edu/~rafael/networks-html/chapter1.html>`_

The conclusion depends on the ordering **20 > 17 > 5 > 3**, not on those particular numbers. It identifies a possible strategic trap. It does not measure the actual costs of US or Chinese policy, and it does not establish that an outcome outside this small table is impossible.

What Could Change the Result?
------------------------------

A control that prevents a serious misuse could provide security benefits large enough to change the ranking. A chip bottleneck, different national capabilities or an effective agreement could also change incentives. Export controls do not automatically prevent domestic publication, and public access does not automatically make a system safe. Those questions need evidence beyond this example. `NTIA <https://www.ntia.gov/sites/default/files/publications/ntia-ai-open-model-report.pdf>`_ `OPENRISK <https://arxiv.org/abs/2403.07918>`_

Countries also interact repeatedly. In this simplified game, suppose cooperation continues while both share, but a deviation earns 20 once and is followed by 5 forever. Let :math:`\delta` represent how much a country values the next round relative to this one. Cooperation is at least as attractive as that deviation when:

.. math::

   \frac{17}{1-\delta} \ge 20 + \frac{5\delta}{1-\delta}
   \quad\Longleftrightarrow\quad \delta \ge \frac{1}{5}

This is a calculation inside the assumed game, not a diplomatic forecast. It assumes an indefinite relationship, observable choices and a credible response to deviation. Errors, hidden actions or a known final round can undermine that strategy. The useful policy question is how to make continued cooperation credible, rather than treating mistrust as inevitable. `GAME <https://www.cs.cornell.edu/~rafael/networks-html/chapter1.html>`_

Why More Review Can Help, Without Guaranteeing Safety
-----------------------------------------------------

Open access can make independent testing and repair easier. A simple probability example explains one possible benefit. If a flaw exists with probability :math:`p_0` and each of :math:`n` teams independently detects it with probability :math:`q`, then:

.. math::

   P(\text{flaw remains undetected}) = p_0(1-q)^n

For a flaw known to exist and an assumed detection chance of one half, one team misses it with probability 50%, four independent teams with 6.25%, and ten with about 0.098%. These are conditional calculations. Real teams can share blind spots, lack testing resources or find a flaw without fixing it. An undetected-flaw probability is not a measure of total cyber, biological or societal risk.

Open weights can also help harmful actors modify a system or remove safeguards. NTIA's 2024 report considered both benefits and risks, recommending monitoring rather than restricting then-current open weights. Research on open foundation models stresses the need to compare the extra risk with existing alternatives. Neither source establishes a universal safety multiplier for openness. `NTIA <https://www.ntia.gov/sites/default/files/publications/ntia-ai-open-model-report.pdf>`_ `OPENRISK <https://arxiv.org/abs/2403.07918>`_

Our recommendation is to make controls precise, assess their security benefit against their cost to cooperation, and protect workable routes for legitimate open research. That is an argument informed by the evidence, not a theorem that every restriction harms everyone.

The Central Factual Discovery: An Ajar Doorway, Not a Sealed Wall
=================================================================

When we turn from game theory back to the verified legal texts of November 2026, we find something remarkable: despite alarming headlines, regulators in both Beijing and Washington have deliberately left real bridges standing for open-source AI:

.. typst-diagram::
   :caption: Attachment 1's 40 proposed checkpoints across AI and hardware (23), solar (12), and biomedicine (5), alongside the three footnote fast lanes preserving open-source and humanitarian science.
   :name: fig-forty-overview

   #import "figures/diagrams.typ": forty-checkpoints-chart
   #forty-checkpoints-chart(lang: "en")

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
