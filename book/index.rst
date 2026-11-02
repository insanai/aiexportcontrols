.. meta::
   :description: Impact of Export Controls on the Future of Open Source AI: how software, model weights, and silicon hardware gates reshape human progress, proven with primary sources and game theory.

=========================================================
Impact of Export Controls on the Future of Open Source AI
=========================================================

Imagine a world with no tollbooths on human thought. Two centuries ago, Thomas Jefferson marveled at a peculiarity of the human mind that no customs officer could quite grasp: *"He who receives an idea from me, receives instruction himself without lessening mine; as he who lights his taper at mine, receives light without darkening me."* Give away a loaf of bread and your table has one loaf fewer; give away an equation and two kitchens can bake tomorrow.

.. figure:: assets/images/cover-walled-commons.jpg
   :name: fig-cover-commons

   From an open commons to a guarded horizon: ideas once sailed freely across borders like folded paper birds, before export walls rose across both silicon hardware and frontier models, leaving one narrow jade doorway ajar for open-source science.

For four hundred years, humanity's greatest leaps rested on that quiet miracle. Movable type, germ theory, astronomical tables, the internet protocol suite, Linux, and most recently **open-source artificial intelligence** flourished because strangers across oceans could read, test, repair, and improve one another's work without waiting in line for a sovereign export stamp. Between 2023 and 2026, open-weight models turned what might have become a closed corporate priesthood into a living global commons. A rural clinic in Kenya triaging childhood pneumonia offline, a linguist rescuing an endangered mother tongue, and university students with two consumer graphics cards in Munich or Bengaluru suddenly held genuine frontier reasoning in their own hands ``[OSI]`` ``[R1]`` ``[QWEN]``.

Then the walls began to rise: not only in the sky of software, but deep underground in the bedrock of silicon.

Not Just Software or Weights: The Hardware Beneath Open Minds
=============================================================

Most conversations about open-source AI make a comforting mistake. They imagine an AI model as pure, weightless poetry: a file of code and numbers that can stay free forever as long as someone places an MIT or Apache 2.0 license on GitHub.

In physical reality, no neural network floats in thin air. Every open model sits atop an industrial pyramid of **extreme-ultraviolet lithography lenses, silicon wafers, stacked high-bandwidth memory (HBM), custom processor instruction sets, and miles of optical fiber stitching ten thousand accelerator cards into a single supercomputer**. Export controls have now clamped onto **both halves of that stack** at once:

.. figure:: assets/images/mind-and-silicon.jpg
   :name: fig-mind-silicon

   Mind and silicon are inseparable: open-source constellations illuminating clinics, classrooms, and workshops above ground draw their life from subterranean silicon wafers, stacked HBM memory, and ten-thousand-card supercluster cables now guarded by border gates.

* **Below the surface (Hardware & Silicon Chokepoints):** Washington built its border fortress around physical computation, restricting flagship AI chips (``3A090``), semiconductor manufacturing tools, and foreign-made chips designed with US software (``15 CFR 734.9``), even after calibrating conditional case-by-case review for H200-class exports in January 2026 ``[US26]`` ``[EAR734]`` ``[EAR742]`` ``[EAR774]``. Beijing's October 2026 draft answers in kind on the architectural side, proposing export controls on **AI processor designs, custom instruction sets, IP cores, 2.5D/3D chiplet packaging, non-von-Neumann chips, high-density 3D NAND, and <=18 nm or stacked DRAM designs** (``266506X``), alongside **10,000-card supercluster interconnects and multi-vendor chip-orchestration stacks** (``266507X``) and 18 classes of solar factory machinery ``[CN-A1]``.
* **Above the surface (Software, Weights & Data Gates):** On **16 October 2026**, China's Ministry of Commerce (MOFCOM) and Ministry of Science and Technology (MOST) issued **Announcement No. 48 of 2026**, proposing **40 technology checkpoints** across AI and chips (23), biomedicine (5), and solar manufacturing (12) while switching on mandatory pre-export registration that same afternoon ``[CN48]`` ``[CNQA]``. Private transfers of frontier model weights crossing :math:`10^{26}` FLOPs, **2 trillion parameters**, or a **Global Top-10 benchmark** (``266504X``) enter licensing gates, alongside Washington's own contested ``4E091`` closed-weight rule ``[CN-A1]`` ``[US25]`` ``[GAO26]``.

.. important::

   Even if software licenses remain free on paper, open-source AI cannot thrive in a vacuum: if export controls ration the chips needed to train open models, lock up open silicon blueprints, or price local hardware out of reach for hospitals and universities, humanity gets nudged back from owning minds to renting metered corporate cloud windows.

The Fortress Trap: Why High Walls Leave Everyone Worse Off
==========================================================

Every capital builds export walls hoping to stay ahead and stay safe. At first glance, hoarding technology inside national borders sounds like simple common sense: *if we keep our breakthroughs to ourselves, won't we be stronger and safer?*

To test whether that instinct holds up in the real world, imagine two technological neighbors across a dark strait, **Country A** and **Country B**. Each country faces a basic choice over its non-military AI software and chip designs:

* **Share Openly (S):** Publish research papers, open-weight AI models, and safety fixes so engineers, doctors, and universities everywhere can inspect, test, and build upon them.
* **Build a Wall (W):** Lock AI models, chip blueprints, and computing hardware behind broad export controls so outsiders cannot easily use or inspect them.

Notice the catch: what happens to Country A depends not only on Country A's own decision, but also on what Country B decides at the exact same moment. Mathematicians and economists have a name for studying situations like this. They call it **game theory**: not a study of board games, but the clear math of strategic choices where everyone's outcome is tied together.

.. note::

   **Analytical model:** The plain-number score sheet and equations below illustrate strategic incentives across open and closed technology choices; they are an analytical proof rather than a legal rule.

.. figure:: assets/images/prisoners-fortress.jpg
   :name: fig-prisoners-fortress

   Two fortresses across a dark strait: when rival powers hoard dim, solitary flames behind crimson battlements, storm shadows gather around both, whereas two flames joined in a shared lighthouse illuminate the entire sea.

Step 1: Keeping Score with Plain Everyday Numbers
-------------------------------------------------

Before touching a single equation, let us keep score on a simple **20-point scale** that anyone can check on the back of an envelope:

* **Homegrown work (+10 points):** Working purely on its own, each country's scientists, labs, and factories generate **+10** points of baseline progress.
* **The shared-knowledge bonus (+8 points):** Whenever a country chooses **Share Openly (S)**, its published breakthroughs, open code, and bug fixes save the other country years of dead ends, adding **+8** points to the other side without taking a single point away from the sharer (Jefferson's candle).
* **The duplicate-factory cost (-1 point):** Choosing **Build a Wall (W)** forces a country to spend billions reinventing supply chains, chip tools, and isolated computing clusters from scratch, costing **-1** point.
* **The temporary one-sided lead (+5 or -5 points):** If *only one* country builds a wall while the other keeps sharing, the walled country briefly gets both worlds: it still reads the open country's discoveries (**+8**) while keeping its own secret, grabbing a **+5** monopoly lead and pushing the lone sharer **-5** behind. *Notice what happens if both build walls:* neither can read the other's work, so the **+5** and **-5** cancel straight back to **0**.
* **The hidden-bug danger (-1, -2, or -4 points):** Every complex AI model or chip design can hide dangerous alignment flaws or security bugs. How much harm those hidden bugs cause depends on how many independent eyes are allowed to inspect the technology.

Step 2: Why Secrecy Multiplies Danger Instead of Safety (The Coin-Flip Test)
----------------------------------------------------------------------------

Why would locking AI behind high walls make the world *more* dangerous rather than safer? Think of tossing a coin while hunting for a hidden software bug.

Suppose a serious flaw slips into a new AI model, and any single research team testing behind closed doors has a **50 percent** (:math:`1/2`) chance of missing it before launch:

* If **1 closed lab** checks the system in secret, there is a **50%** chance the dangerous flaw survives unseen into the real world.
* If **4 independent teams** openly inspect and test the system, *all four* would have to miss the flaw in a row: :math:`(1/2)^4 = \mathbf{6.25\%}`.
* If **10 independent communities** around the world (universities, hospital engineers, chip designers, security auditors) inspect it openly, the chance that *every single one* misses the flaw drops to :math:`(1/2)^{10}`, **less than 0.1%** (under one in a thousand).

Open-source engineers call this "many-eyes" discovery **Linus's Law** (*"given enough eyeballs, all bugs are shallow"*). In mathematics, if a hidden flaw starts with probability :math:`p_0` and each independent auditing group catches it with probability :math:`q`, then across :math:`n` independent groups the chance that a dangerous flaw survives unnoticed shrinks exponentially:

.. math::

   P(\text{flaw survives}) = p_0 (1 - q)^n

That simple curve explains why our hidden-bug penalty changes across the board:

* When **both countries share (S, S)**, global teams test weights and chip tools in the open, while hospitals, power grids, and small cities can run local open AI to defend their networks. Bug risk stays low (**R = 1**).
* When **one country walls up (S, W or W, S)**, half of global scrutiny disappears behind closed doors, doubling unseen risk (**R = 2**).
* When **both countries wall up (W, W)**, three hazards stack together: **(1)** closed black boxes have far fewer independent testers; **(2)** everyday hospitals, schools, and utilities lose open defensive AI tools while covert attackers ignore export laws anyway; and **(3)** rival governments cannot see inside each other's secret labs, breeding worst-case suspicion and rushed launches. Hidden danger quadruples (**R = 4**).

Step 3: Checking All Four Choices Side by Side
----------------------------------------------

Putting those five plain pieces together gives one transparent score rule for either country:

.. math::

   \text{Net Score} = 10 + B_{\text{share}} - C_{\text{wall}} + L_{\text{solo}} - R_{\text{bugs}}

where :math:`B_{\text{share}} = 8` if the other side shares (else :math:`0`), :math:`C_{\text{wall}} = 1` if you build a wall (else :math:`0`), :math:`L_{\text{solo}} = +5` or :math:`-5` only when one side walls alone (:math:`0` if both make the same choice), and :math:`R_{\text{bugs}} \in \{1, 2, 4\}`.

Now check all four boxes in :numref:`fig-game-theory` using ordinary addition and subtraction:

* **Both Share Openly (S, S):** Each country earns :math:`10 + 8 - 1 = \mathbf{+17}`. Combined world progress reaches **34**, and bug risk stays at its safest (**1x**).
* **Country A Shares Alone, Country B Builds a Wall (S, W):** Country B still reads A's open work (**+8**), pays **-1** for its wall, grabs the **+5** solo lead, and faces **-2** bug risk, scoring :math:`10 + 8 - 1 + 5 - 2 = \mathbf{+20}`. Country A drops to :math:`10 + 0 - 5 - 2 = \mathbf{+3}` (world total falls to **23**).
* **Country A Builds a Wall, Country B Shares Alone (W, S):** The exact mirror image: Country A scores **+20** and Country B drops to **+3** (world total **23**).
* **Both Build Walls (W, W):** Neither gets the **+8** shared bonus, both pay **-1** for duplicate factories, their solo leads cancel to **0**, and bug risk hits **-4**. Each country finishes with only :math:`10 + 0 - 1 + 0 - 4 = \mathbf{+5}` (world total crashes to **10**).

.. typst-diagram::
   :caption: Symmetric 2x2 payoff table for Country A and Country B (top), paired with the Many-Eyes bug-risk curve and plain arithmetic key (bottom), compiled natively with Typst and CeTZ.
   :name: fig-game-theory

   #import "figures/diagrams.typ": game-theory-matrix
   #game-theory-matrix(lang: "en")

Step 4: Three Famous Ideas That Explain the Trap
------------------------------------------------

Once the plain numbers are on the table, three famous concepts from economics and strategy become effortless to grasp:

1. **Pareto Optimum (top-left box, A: +17 | B: +17):** Named after economist Vilfredo Pareto, a *Pareto Optimum* simply means the best shared outcome where no change could make one country better off without hurting the other. Mutual open sharing creates **34** points of human progress and the lowest global risk (**1x**).
2. **Prisoner's Dilemma (why smart leaders walk into a bad outcome):** Look through Country A's eyes when there is no mutual trust. *If Country B shares*, building a wall lifts A from **+17** to **+20**. *If Country B builds a wall*, building a wall protects A from falling to **+3** and gives **+5** instead. Because **+20 beats +17** and **+5 beats +3**, each side feels pressured to build a wall, even though both can see ahead of time that two walls hurt everyone. Game theorists call this self-defeating trap a **Prisoner's Dilemma**.
3. **Nash Equilibrium (bottom-right box, A: +5 | B: +5):** Named after mathematician John Nash, a *Nash Equilibrium* is a stuck standoff where neither side can improve its score by changing course alone. Once both countries sit behind high walls at **(+5, +5)**, neither dares open up first for fear of dropping from **+5** to **+3**. Yet look at the human cost of that stalemate: **70 percent of shared progress vanishes (34 down to 10), global bug and cyber danger quadruples (4x), and neither power gains a single point of lead over the other (5 = 5).**

How do wise societies escape a Prisoner's Dilemma? Never by ignoring real weapons, and never by walling off everyday science. They redesign the rules: build **high, narrow fences** around genuine weapons (core state secrets, autonomous cyber-weapons, engineered pathogens), while keeping **legally guaranteed open bridges** for shared research and open-source AI so neither country fears being stranded alone at **+3**.

The Central Factual Discovery: An Ajar Doorway, Not a Sealed Wall
=================================================================

When we turn from game theory back to the verified legal texts of November 2026, we find something remarkable: despite alarming headlines, regulators in both Beijing and Washington have deliberately left real bridges standing for open-source AI:

.. typst-diagram::
   :caption: Attachment 1's 40 proposed checkpoints across AI and hardware (23), solar (12), and biomedicine (5), alongside the three footnote fast lanes preserving open-source and humanitarian science.
   :name: fig-forty-overview

   #import "figures/diagrams.typ": forty-checkpoints-chart
   #forty-checkpoints-chart(lang: "en")

* **Already-public open AI stays free.** Footnote 1 of China's draft explicitly excludes AI technologies that have already entered the public domain through open-source releases or published academic papers, mirroring the US published-information exemption in ``15 CFR 734.7`` and ``4E091``. Existing MIT and Apache 2.0 models are not pulled back behind a wall ``[CN-A1, note 1]`` ``[EAR734]`` ``[EAR774]`` ``[R1]`` ``[QWEN]``.
* **New open-source AI and chip tape-outs get a dedicated fast lane.** Rather than banning open releases of restricted AI, China's Footnote 2 proposes **automatic licensing and facilitation** ("apply and go" in MOFCOM's official explanation) for open-source exports, overseas foundry chip tape-outs (``芯片流片``), and Chinese firms' self-operated overseas compute clouds ``[CN-A1, note 2]`` ``[CNQA]``.
* **Yet the unguarded midnight upload is ending.** Pre-export registration on ``ecomp.mofcom.gov.cn`` already operates today for covered IP sales, overseas licenses, and foreign-control shifts; Core Data models (``266501J``) face outright prohibition; and hardware chokepoints continue to test who can build tomorrow's open minds ``[CN48]`` ``[CN-A1]`` ``[EAR742]``.

How to Read This Book
=====================

We wrote this book for normal, curious human beings (builders, researchers, doctors, founders, students, journalists, and citizens) who want vivid clarity backed by verified primary evidence:

* :doc:`announcement` and :doc:`atlas` unpack Beijing's Announcement 48, its two separate clocks, and all **40 guarded technologies**.
* :doc:`ai` takes you inside both the software recipe and the silicon hardware stack (``266504X``, ``266506X``, ``266507X``).
* :doc:`open-models` walks step-by-step, with visual flowcharts, through how open-source AI was released *before* export controls and how it navigates checkpoints *now*.
* :doc:`biomedicine` and :doc:`solar` explore living gene platforms and solar machines where know-how travels inside physical equipment.
* :doc:`united-states` demystifies Washington's chip (``3A090``) and model-weight (``4E091``) rules, including the May 2026 GAO clash ``[USNE]`` ``[GAO26]``.
* :doc:`comparison` sets both countries side by side with a complete directory of **government departments, portals, exact statutory timelines, and verified phone numbers, faxes, emails, and street addresses** for getting official approval.
* :doc:`questions` and :doc:`sources` close with six everyday scenarios, a plain-language glossary, and all **22 primary sources** verified as of **2 November 2026**.

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
