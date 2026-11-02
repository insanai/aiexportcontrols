.. meta::
   :description: Chapter 3: Mind and Silicon, how export controls govern AI software, frontier model weights (266504X), AI and HBM/DRAM chip blueprints (266506X), and 10,000-card superclusters (266507X).

===========================================================
03. Mind and Silicon: Guarding Models, Chips, and Clusters
===========================================================

The Sourdough Starter, the Bakery Window, and the Cast-Iron Oven
================================================================

To an everyday person typing a question into a phone, artificial intelligence feels like one seamless magic trick: a text box that talks back. To an engineer, and now to export-control writers in Beijing and Washington, an AI system has **three distinct physical and digital layers**:

1. **The bakery window (Remote API & apps):** Handing a customer a warm slice of bread through a shop window tells them nothing about how to wire the oven or bake ten thousand loaves of their own tomorrow.
2. **The sourdough starter and master recipe (Weights, checkpoints & training code):** Billions or trillions of learned numerical parameters (``模型权重``), intermediate training snapshots (``关键检查点``), model architecture, and training/inference optimization code (``训练优化、推理加速``). Copy these files, and you replicate the trained mind itself.
3. **The cast-iron oven and power plant (AI chips, memory stacks & superclusters):** The physical silicon processors, high-bandwidth memory, chip blueprints, and optical cluster networks without which neither training nor private local deployment can happen.

MOFCOM's Q&A distinguishes remote API, app, web, SaaS and lightweight local services from transfers of restricted large-model technology under the proposed measures. This is a statement about that scope, not an exemption from every technology or data rule. Attachment 1 separately lists model technology (``266504X``), processor and memory designs (``266506X``), and specified technologies for clusters with more than 10,000 accelerator cards (``266507X``). `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_ `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_

.. typst-diagram::
   :caption: The three-layer AI stack showing how China's proposed entries and US EAR rules separate open public/API access (top) from frontier model cores (middle) and physical silicon & superclusters (bottom).
   :name: fig-ai-stack

   #import "figures/diagrams.typ": ai-hardware-software-stack
   #ai-hardware-software-stack(lang: "en")

Three Tripwires for a Frontier Model (``266504X``)
==================================================

Not every neural network trained in a university lab or startup garage crosses into proposed restricted entry **266504X Point 2**. A model's core technology (weights, key checkpoints, underlying source code, architecture, training optimization, and inference acceleration) enters scope if it crosses **any one** of three tripwires `CN-A1, 266504X(2), note 3 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_:

1. **Compute scale:** Total training computation reaches at least :math:`10^{26}` **floating-point operations (FLOPs)**, the massive compute threshold also used in America's ``4E091`` model-weight rule `US25 <https://www.govinfo.gov/content/pkg/FR-2025-01-15/html/2025-00636.htm>`_.
2. **Parameter size:** Total parameter count reaches at least **2 trillion (2,000 billion)**.
3. **Global Top-10 capability at the moment of export:** Even a lean, compact model qualifies if, **at the time export occurs**, public evaluations by mainstream domestic or international benchmark institutions or major industry platforms rank it in the **Global Top 10** across overall capability, specialist business tasks, global call volume, safety performance, or training efficiency `CN-A1, 266504X, note 3 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.

That third tripwire is uniquely alive. Because open-source researchers constantly invent clever ways to distil frontier reasoning into 30B or 70B parameters, a compact prodigy can step *into* restricted scope on the week it debuts at #6 in the world, and step *back out* eight months later when newer models overtake it. Classification belongs to a specific model version on a specific date, never to a brand name like "DeepSeek" or "Qwen" forever `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.

Data Red Lines (``266501J`` & ``266504X(1)``) and Autonomous Agents (``266505X`` & ``266502J``)
===============================================================================================

Even a small model hits a hard wall if trained on sovereign secrets. Borrowing categories from China's *Data Security Law*, Attachment 1 places models trained on legally designated **Core Data** behind a **proposed prohibition** (``266501J``), even for remote service provision, while placing models trained on **Important Data** in the **restricted lane** (``266504X(1)``), with explicit carve-outs when the Important Data came from **lawful public channels** or formed **at most a 0.1% sanitized trace share** incapable of boosting domain R&D or leaking into outputs `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.

Surrounding the base model, four restricted points in **266505X** cover high-end **AI agents**: task planners (:math:`\ge 20` steps at :math:`\ge 80\%` decomposition accuracy and :math:`\ge 90\%` completion), multi-agent swarms (:math:`\ge 60` concurrent agents), tool-calling engines (:math:`\ge 200` external software tools at :math:`\ge 90\%` multi-tool accuracy), and sub-200-millisecond decision systems beating :math:`90\%` of human operators. Only when built *specifically or mainly* for defense, critical infrastructure, or core government settings do such agents cross into prohibition (``266502J``) `CN-A1 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_.

The Hardware Layer Inside China's AI List: Chips, Memory, and 10,000-Card Clusters
==================================================================================

The AI section also covers processor designs, memory designs and large-cluster engineering:

* **AI Processor Blueprints (266506X Point 1):** Proposes restricting the export of AI processor architectures, custom instruction sets, IP cores, base software stacks, and design tools meeting *any* listed trait: not only :math:`\le 14\text{ nm}` process designs, 2.5D/3D chiplet packaging, or novel non-von-Neumann / compute-in-memory architectures, but even broad functional traits such as floating-point/integer compute or smart-voice, vision, and autonomous-driving uses `CN-A1, 266506X <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_. Think about what that touches: open-source hardware initiatives (such as RISC-V AI accelerators), custom NPU startups, and cross-border chip engineering teams! Because fabless chip teams must send finished layouts to overseas semiconductor foundries to manufacture physical silicon, **Footnote 2** had to build a vital escape valve: **automatic-licensing facilitation for overseas chip tape-out** (``赴境外开展芯片流片制造``) `CN-A1, note 2 <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_ `CNQA <https://www.mofcom.gov.cn/zwgk/zcjd/art/2026/art_b11d5c1e9374421e93e85dc87eba6e38.html>`_.
* **Memory designs (266506X, Point 2):** The point contains separate subpoints for 3D flash and memory-chip design. Flash tests include density, I/O speed or bonding; memory tests include a process of 18 nm or smaller, vertical channels, bonding or multilayer stacking. These are alternative characteristics, not a single 18 nm threshold for every kind of memory. `CN-A1, 266506X(2) <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_
* **Supercluster Plumbing (266507X Points 1 to 4):** Training a frontier open model on **more than 10,000 accelerator cards** requires industrial wizardry so the cluster does not stall every hour. Four restricted points guard :math:`\ge 800\text{ GB/s}` node interconnects, :math:`\le 120\text{-second}` automated fault recovery, :math:`\le 1\text{-microsecond}` collective routing, and **heterogeneous cluster software that combines chips from two or more hardware vendors** into one training pool `CN-A1, 266507X <https://insanai.github.io/aiexportcontrols/sources/announcement-48-attachment-1.pdf>`_. When Washington restricts Nvidia GPUs (``3A090``) and Beijing restricts multi-vendor cluster stitching (``266507X``), open-source distributed-training frameworks sit right on the fault line between both regimes!
