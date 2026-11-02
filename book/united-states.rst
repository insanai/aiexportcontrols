.. meta::
   :description: Chapter 7: United States export controls in plain language, covering BIS EAR 3A090 AI chips, the January 2026 H200/MI325X rule, ECCN 4E091 model weights, and GAO Decision B-337935.

==============================================================
07. Washington's Gatekeepers: Silicon Chips and Model Weights
==============================================================

Guarding the Physical Engines of Global Computing
=================================================

Cross the Pacific to Washington, D.C., and you meet the older, hardware-first half of the global border architecture. Administered by the Department of Commerce's **Bureau of Industry and Security (BIS)** under the **Export Administration Regulations (15 CFR Parts 730-774)**, the US system governs global access to **frontier computing hardware, chip-design software, and semiconductor manufacturing tools** `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_.

Every project touching the US system faces four sequential questions:

1. **Is it subject to the EAR?** Part 734 covers items in the US, US-origin items abroad and specified foreign-made items, subject to stated exclusions and conditions. The published-information and fundamental-research provisions have qualifications, including special treatment for encryption. A foreign chip is not covered merely because some US software was involved. `EAR734 <https://www.bis.gov/regulations/ear/734>`_
2. **What is its ECCN (Part 774)?** Controlled items carry codes on the Commerce Control List, notably **3A090** for advanced AI accelerators and **4E091** for certain closed frontier AI model weights `EAR774 <https://www.bis.gov/regulations/ear/774>`_.
3. **Where is it going (Part 742)?** Licensing turns on destination country groups.
4. **Who is the end user, and what is the end use (Part 744)?** Shipments to parties on the **Entity List (744.11)** or supporting restricted supercomputer, advanced-node semiconductor, or weapons end uses (``744.23``, ``744.4``) require licenses even when an item would otherwise be unrestricted `EAR744 <https://www.bis.gov/regulations/ear/744>`_.

The January 2026 Semiconductor Rule: Permission to Knock, Not an Open Door
==========================================================================

For three years, high-end AI data-center chips bound for China faced presumptive denial. On **15 January 2026**, BIS issued a targeted hardware calibration (``91 FR 1684``, revising ``15 CFR 742.6(b)(10)``): qualifying exports from the United States to end users in China or Macau may apply for **case-by-case license review** rather than automatic denial if the chip sits below **Total Processing Performance (TPP) of 21,000** and **total DRAM bandwidth of 6,500 GB/s**, a performance window exemplified in the rule by Nvidia's **H200** and AMD's **MI325X** `US26 <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_ `EAR742 <https://www.bis.gov/regulations/ear/742>`_.

Yet read the conditions carefully: case-by-case review is permission to apply, not a free pass. Applicants must certify that US domestic customers face no supply shortage, that global foundry capacity is not diverted away from US buyers, that aggregate shipments stay within strict ratios of US volume, that rigorous physical and cybersecurity KYC controls block unauthorized remote or Entity-List use, and that an **independent US-headquartered laboratory** tests and verifies the chips' performance before export `US26, sections I and IV <https://www.govinfo.gov/content/pkg/FR-2026-01-15/html/2026-00789.htm>`_. Third-country reexports do not automatically enjoy the same review lane.

The Strange Legal Life of America's AI Model-Weight Rule (``4E091``)
====================================================================

When Washington tried to move from hardware chips up into **AI model weights**, it produced a remarkable three-act legal drama:

* **Act 1 (15 January 2025):** BIS published the **Framework for Artificial Intelligence Diffusion** (``90 FR 4544``), creating ECCN **4E091** to license exports of closed model weights trained with at least :math:`10^{26}` computational operations, while **expressly excluding publicly available open-weight models** (and models below the leading open-weight benchmark) `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_ `EAR774, 4E091 <https://www.bis.gov/regulations/ear/774>`_.
* **Act 2 (13 May 2025):** BIS announced it was **directing enforcement officials not to enforce** the AI Diffusion Rule pending a formal replacement rulemaking `USNE <https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens>`_.
* **Act 3 (12 May 2026):** GAO Decision ``B-337935`` concluded that the announced non-enforcement policy was a rule requiring submission under the Congressional Review Act. GAO separately recorded Commerce's explanation that rescission had been initiated, not completed. This was a decision about congressional review, not a court judgment repealing or enforcing ``4E091``. We separately checked that the entry remained in BIS's published Part 774 text on 2 November 2026. `GAO26 <https://www.gao.gov/products/b-337935>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_

The public-weights provisions are important for open-model developers. They do not mean every modification of a public model automatically remains excluded: 4E091 has specific derivative-model notes. Hardware access, software or data restrictions and the distinction between the rule text and announced non-enforcement remain separate questions. `EAR734 <https://www.bis.gov/regulations/ear/734>`_ `EAR774 <https://www.bis.gov/regulations/ear/774>`_ `GAO26 <https://www.gao.gov/products/b-337935>`_

Two Neighboring Washington Gates: Venture Dollars and Bulk Sensitive Data
=========================================================================

Beside BIS stand two separate federal gatekeepers:

* **US Treasury Outbound Investment Security Program:** Since **2 January 2025**, US persons funding Chinese semiconductors, quantum tech, or certain AI systems face prohibition or mandatory notification; on **22 October 2026**, Treasury opened public comments (through **7 December 2026**) on proposed refinements to technical thresholds `TREAS <https://home.treasury.gov/policy-issues/international/outbound-investment-program>`_.
* **US Department of Justice Data Security Program:** Restricts bulk cross-border transfers or access involving sensitive US personal data (genomic, biometric, health, financial, geolocation) and government-related data `DOJ <https://www.justice.gov/nsd/data-security>`_.

What This Means for the Two Teams
===================================

Country A and Country B in the game are fictional. US and Chinese controls have different scopes, institutions and positions in the computing supply chain. This chapter explains those differences; it does not assign either real country a score of 3, 5, 17 or 20.

The two teams' starting point is in :ref:`shared-workbench-story`.
