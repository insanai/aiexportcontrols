.. meta::
   :description: Chapter 7 — United States export controls in plain language: BIS EAR 3A090 AI chips, the January 2026 H200/MI325X rule, ECCN 4E091 model weights, and GAO Decision B-337935.

==============================================================
07. Washington's Gatekeepers: Silicon Chips and Model Weights
==============================================================

Guarding the Physical Engines of Global Computing
=================================================

Cross the Pacific to Washington, D.C., and you meet the older, hardware-first half of the global border architecture. Administered by the Department of Commerce's **Bureau of Industry and Security (BIS)** under the **Export Administration Regulations (15 CFR Parts 730–774)**, the US system governs global access to **frontier computing hardware, chip-design software, and semiconductor manufacturing tools** ``[EAR734]`` ``[EAR742]`` ``[EAR774]``.

Every project touching the US system faces four sequential questions:

1. **Is it subject to the EAR (Part 734)?** Every item in the US, every US-origin item worldwide, and certain *foreign-manufactured* AI chips and equipment produced using US software or fab tools under the **Foreign Direct Product Rules (734.9)** fall inside US jurisdiction. Crucially, however, **unrestricted published open-source software, published model weights, and fundamental scientific research (734.7 and 734.8) sit outside the EAR** ``[EAR734]``.
2. **What is its ECCN (Part 774)?** Controlled items carry codes on the Commerce Control List, notably **3A090** for advanced AI accelerators and **4E091** for certain closed frontier AI model weights ``[EAR774]``.
3. **Where is it going (Part 742)?** Licensing turns on destination country groups.
4. **Who is the end user, and what is the end use (Part 744)?** Shipments to parties on the **Entity List (744.11)** or supporting restricted supercomputer, advanced-node semiconductor, or weapons end uses (``744.23``, ``744.4``) require licenses even when an item would otherwise be unrestricted ``[EAR744]``.

The January 2026 Semiconductor Rule: Permission to Knock, Not an Open Door
==========================================================================

For three years, high-end AI data-center chips bound for China faced presumptive denial. On **15 January 2026**, BIS issued a targeted hardware calibration (``91 FR 1684``, revising ``15 CFR 742.6(b)(10)``): qualifying exports from the United States to end users in China or Macau may apply for **case-by-case license review** rather than automatic denial if the chip sits below **Total Processing Performance (TPP) of 21,000** and **total DRAM bandwidth of 6,500 GB/s** — a performance window exemplified in the rule by Nvidia's **H200** and AMD's **MI325X** ``[US26]`` ``[EAR742]``.

Yet read the conditions carefully: case-by-case review is permission to apply, not a free pass. Applicants must certify that US domestic customers face no supply shortage, that global foundry capacity is not diverted away from US buyers, that aggregate shipments stay within strict ratios of US volume, that rigorous physical and cybersecurity KYC controls block unauthorized remote or Entity-List use, and that an **independent US-headquartered laboratory** tests and verifies the chips' performance before export ``[US26, sections I and IV]``. Third-country reexports do not automatically enjoy the same review lane.

The Strange Legal Life of America's AI Model-Weight Rule (``4E091``)
====================================================================

When Washington tried to move from hardware chips up into **AI model weights**, it produced a remarkable three-act legal drama:

* **Act 1 (15 January 2025):** BIS published the **Framework for Artificial Intelligence Diffusion** (``90 FR 4544``), creating ECCN **4E091** to license exports of closed model weights trained with at least :math:`10^{26}` computational operations, while **expressly excluding publicly available open-weight models** (and models below the leading open-weight benchmark) ``[US25]`` ``[EAR774, 4E091]``.
* **Act 2 (13 May 2025):** BIS announced it was **directing enforcement officials not to enforce** the AI Diffusion Rule pending a formal replacement rulemaking ``[USNE]``.
* **Act 3 (12 May 2026):** The Government Accountability Office (**GAO**, Decision ``B-337935``) ruled that a press release cannot repeal codified law: ``4E091`` remains printed in ``15 CFR Part 774`` (where we verified it live on ``bis.gov`` on 2 November 2026) until repealed through formal rulemaking, and BIS's blanket non-enforcement directive itself constituted a "rule" subject to the Congressional Review Act ``[GAO26]`` ``[EAR774]``.

For open-source AI, the bright silver lining across all three acts is constant: **genuinely open, unrestricted public weights sit outside US export licensing** under ``15 CFR 734.7`` and ``4E091``'s notes. What pinches open-source builders from the US side is not a ban on ``git push`` — it is the hardware licensing wall around the ``3A090`` silicon needed to train and run the largest models.

Two Neighboring Washington Gates: Venture Dollars and Bulk Sensitive Data
=========================================================================

Beside BIS stand two separate federal gatekeepers:

* **US Treasury Outbound Investment Security Program:** Since **2 January 2025**, US persons funding Chinese semiconductors, quantum tech, or certain AI systems face prohibition or mandatory notification; on **22 October 2026**, Treasury opened public comments (through **7 December 2026**) on proposed refinements to technical thresholds ``[TREAS]``.
* **US Department of Justice Data Security Program:** Restricts bulk cross-border transfers or access involving sensitive US personal data (genomic, biometric, health, financial, geolocation) and government-related data ``[DOJ]``.
