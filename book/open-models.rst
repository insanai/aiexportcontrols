.. meta::
   :description: Chapter 4 — How open-source AI was released before export controls (4-step midnight git push) versus how it navigates 4 checkpoints under Announcement 48 and US EAR rules.

===================================================
04. Open-Source AI Before and After the Walls
===================================================

The Golden Midnight Upload: How Open AI Used to Reach Humanity
==============================================================

To feel what is at stake for human progress, rewind to how an open-source AI breakthrough entered the world before export controls caught up with neural networks.

.. figure:: assets/images/open-ai-release-gates.jpg
   :name: fig-release-gates

   Before and after the border gates: on the left, open-source breakthroughs radiated straight from laboratory benches across the globe; on the right, new releases pass through classification arches and statutory scales before reaching the open commons.

Suppose twenty engineers in Hangzhou, Paris, or San Francisco finished training a remarkable reasoning model on a Tuesday night. Their entire global release pipeline had **four steps**:

1. **Finish internal benchmarks and safety checks** on the trained weights and inference code.
2. **Attach a permissive copyright license** — a short text file like the **MIT License** (used by DeepSeek for its flagship DeepSeek-R1 code and weights) or **Apache License 2.0** (used by Alibaba's Qwen team for its Qwen3 family) ``[R1]`` ``[QWEN]``.
3. **Run** ``git push`` **and upload the weight files** to global public hubs like Hugging Face, GitHub, and ModelScope alongside a technical paper.
4. **Go to sleep** while the rest of humanity woke up and built.

No customs lawyer was retained. No provincial bureau stamped an export sheet. By Wednesday afternoon, an agronomist in Brazil was fine-tuning that model to spot cassava blight on cheap phones; a student in Seoul was quantizing it to run on a laptop GPU; a hospital team in Berlin was summarizing discharge notes behind its own air-gapped server without sending a single patient's name to a foreign cloud.

.. note::

   **Open weights vs. Open Source AI:** Releasing downloadable weights under MIT or Apache 2.0 is precisely called *open weights*, whereas the Open Source Initiative's **Open Source AI Definition 1.0** asks for code, parameters, and enough training-data detail to substantially recreate the system ``[OSI]``. Export regulators, however, care far less about terminology than about what concrete files and hardware capabilities cross a border.

How Export Controls Transform the Open-Source Release Pipeline
==============================================================

Now trace that exact same Tuesday-night release under **China's Announcement 48** and parallel **US EAR rules**. The journey from laboratory compute cluster to global developer is no longer an unguarded midnight bridge; it passes through four structured checkpoints ``[CN48]`` ``[CN-A1]`` ``[CNQA]`` ``[EAR734]``:

.. graphviz::
   :class: graphviz-adaptive
   :caption: Open-source AI release pipeline BEFORE export controls (top track) versus UNDER China's Announcement 48 and US EAR rules (bottom 4-gate track).
   :name: fig-flowchart-release

   digraph open_ai_release {
     graph [rankdir=TB, bgcolor="transparent", pad="0.24", nodesep="0.34", ranksep="0.46",
            fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif"];
     node [shape=box, style="rounded,filled", fillcolor="#fcfaf5", color="#08716d",
           fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif",
           fontcolor="#172e38", fontsize=10, margin="0.16,0.10"];
     edge [color="#4e616a", fontname="Lato, Noto Serif CJK SC, Noto Serif CJK JP, Noto Serif CJK KR, Noto Serif Devanagari, sans-serif",
           fontcolor="#4e616a", fontsize=9, arrowsize=0.7];

     subgraph cluster_before {
       label="BEFORE EXPORT CONTROLS · 4-Step Borderless Release";
       fontsize=10.5;
       fontcolor="#08716d";
       style="rounded,dashed";
       color="#08716d";

       b1 [class="gd-input", fillcolor="#e4f3f1", label=<<B>1. Train &amp; Safety-Test</B><BR/><FONT POINT-SIZE="8.5">Weights + inference code</FONT>>];
       b2 [class="gd-input", fillcolor="#e4f3f1", label=<<B>2. Attach MIT / Apache 2.0</B><BR/><FONT POINT-SIZE="8.5">Open copyright permission</FONT>>];
       b3 [class="gd-output", fillcolor="#e4f3f1", label=<<B>3. Midnight git push</B><BR/><FONT POINT-SIZE="8.5">GitHub / Hugging Face / ModelScope</FONT>>];
       b4 [class="gd-output", fillcolor="#e4f3f1", label=<<B>4. Global Humanity Builds</B><BR/><FONT POINT-SIZE="8.5">Clinics, labs, students &amp; startups</FONT>>];
       b1 -> b2 -> b3 -> b4;
     }

     subgraph cluster_after {
       label="UNDER EXPORT CONTROLS · 4-Gate Sovereign Pipeline (China Announcement 48 & US EAR)";
       fontsize=10.5;
       fontcolor="#ae3d2c";
       style="rounded";
       color="#ae3d2c";

       g1 [class="gd-choice", shape=box, fillcolor="#fcf3de", color="#a66f10",
           label=<<B>Gate 1 · Prohibited Red-Line Audit</B><BR/><FONT POINT-SIZE="8.5">PRC Core Data (266501J), offensive cyber (266402J), or defense agent (266502J)?</FONT>>];
       stop1 [class="gd-stop", fillcolor="#faeae7", color="#ae3d2c", fontcolor="#ae3d2c",
              label=<<B>STOP · Proposed Prohibited</B><BR/><FONT POINT-SIZE="8.5">Cannot export or open-source</FONT>>];

       g2 [class="gd-choice", shape=box, fillcolor="#fcf3de", color="#a66f10",
           label=<<B>Gate 2 · Already in Public Domain?</B><BR/><FONT POINT-SIZE="8.5">Existing open-source weights/papers? (China Note 1 / US 15 CFR 734.7 &amp; 4E091)</FONT>>];
       free1 [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
              label=<<B>OUTSIDE CATALOGUE</B><BR/><FONT POINT-SIZE="8.5">Free to mirror, quantize &amp; fine-tune</FONT>>];

       g3 [class="gd-choice", shape=box, fillcolor="#fcf3de", color="#a66f10",
           label=<<B>Gate 3 · Model &amp; Hardware Thresholds</B><BR/><FONT POINT-SIZE="8.5">&ge;10^26 FLOPs / &ge;2T params / Global Top-10 (266504X)?<BR/>Or controlled agents (266505X), chip IP (266506X), &gt;10k cluster tech (266507X)?</FONT>>];
       free2 [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
              label=<<B>BELOW THRESHOLDS</B><BR/><FONT POINT-SIZE="8.5">Publish openly without export license</FONT>>];

       g4 [class="gd-choice", shape=box, fillcolor="#fcf3de", color="#a66f10",
           label=<<B>Gate 4 · Open-Source Release vs. Closed Deal</B><BR/><FONT POINT-SIZE="8.5">Public open-source / chip tape-out / self-owned cloud vs. private buyer?</FONT>>];
       fast [class="gd-output", fillcolor="#e4f3f1", color="#08716d",
             label=<<B>OPEN-SOURCE FAST LANE (Note 2)</B><BR/><FONT POINT-SIZE="8.5">ecomp.mofcom.gov.cn · Automatic Licensing<BR/>(&quot;Apply &amp; Go&quot; facilitation) -&gt; Global Release</FONT>>];
       priv [class="gd-stop", fillcolor="#faeae7", color="#ae3d2c",
             label=<<B>FULL PRIVATE EXPORT LICENSE</B><BR/><FONT POINT-SIZE="8.5">Pre-export registration now; 2-Stage Provincial<BR/>License (30 + 15 working days) or BIS SNAP-R</FONT>>];

       g1 -> stop1 [label=" Yes"];
       g1 -> g2 [label=" No"];
       g2 -> free1 [label=" Yes"];
       g2 -> g3 [label=" Unreleased"];
       g3 -> free2 [label=" Below all"];
       g3 -> g4 [label=" Crosses bar"];
       g4 -> fast [label=" Open-source / Tape-out"];
       g4 -> priv [label=" Private transfer"];
     }
   }

Walk through each gate in :numref:`fig-flowchart-release` as if you were the lead maintainer preparing to press "Publish":

Gate 1: Audit Training Data and Prohibited Red Lines
----------------------------------------------------

Before checking parameter size, verify what went into the training pot and what the system is built to do. Models trained on legally designated **PRC Core Data** (``266501J``), autonomous cyber-intrusion tools targeting critical systems (``266402J``), or high-performance agents tailored for military or critical infrastructure (``266502J``) hit a hard stop: they are **proposed prohibited** and cannot be exported or published openly ``[CN-A1]``. If legally designated **Important Data** was used (``266504X(1)``), confirm it satisfies Note 1's carve-out (lawfully public channels, or a sanitized :math:`\le 0.1\%` trace share that cannot be reproduced in outputs) before proceeding.

Gate 2: Separate Already-Public Open AI from Unreleased Files
-------------------------------------------------------------

Are you sharing a mirror, fine-tune, or quantization of weights and code that **already entered the public domain** via open source or academic papers? Under **Footnote 1** of China's draft (and **15 CFR 734.7 / 4E091** in the United States), already-public open-source technology sits **outside catalogue management** ``[CN-A1, note 1]`` ``[EAR734]`` ``[EAR774]``.

Watch one crucial trap: **a public paper does not make private weights public.** Publishing a benchmark report on arXiv in September leaves unreleased 2-trillion-parameter weights private until the weights themselves are lawfully published ``[CN-A1]``.

Gate 3: Measure Both the Model and Any Bundled Hardware/Cluster Stack
---------------------------------------------------------------------

For brand-new weights, checkpoints, training-optimization code, or hardware/cluster packages, test against Attachment 1:

* Does the model hit :math:`10^{26}` **FLOPs**, **2 trillion parameters**, or a **Global Top-10 ranking at export time** (``266504X(2)``)?
* Does the release bundle controlled **agent orchestration** (``266505X``), **custom AI chip RTL/ISA IP** (``266506X``), or **>10,000-card cluster scheduling/interconnect code** (``266507X``)?

If the answer across all thresholds is **no**, you sit below the restricted line and may publish openly to GitHub and Hugging Face without a technology-export permit ``[CN-A1]``.

Gate 4: Take the Open-Source Fast Lane (Versus Full Private Licensing)
----------------------------------------------------------------------

What if your new model *is* a Global Top-10 marvel? Here the road splits depending on whether you share with humanity or sell behind closed doors:

* **Open-Source Fast Track (Footnote 2):** During today's transition period (from 16 October 2026), verify whether your cross-border release requires pre-export registration on ``ecomp.mofcom.gov.cn``. Once the revised catalogue takes effect, **Footnote 2** grants **automatic licensing and facilitation** for open-source exports of restricted AI — a streamlined mechanism MOFCOM describes as **"apply and go" (** ``即报即出`` **)**, explicitly designed to back China's open-source community and Global South AI adoption ``[CN-A1, note 2]`` ``[CNQA]``.
* **Closed Private Transfer:** Licensing unpublished frontier weights privately to a foreign company or deploying full restricted weights onto third-party overseas servers does *not* get open-source facilitation; it requires pre-export registration today and a formal two-stage provincial **Technology Export License** once finalized (unless hosted on a Chinese firm's self-owned overseas cloud, which also qualifies under Footnote 2) ``[CN48]`` ``[CN-A1]`` ``[CNQA]``.

How Hardware Walls Quietly Reshape What "Open" Even Means
=========================================================

Because export controls pinch silicon and software at the same time, four real-world shifts are already reshaping the future of open-source AI:

1. **Hardware scarcity breeds algorithmic genius — up to a point:** Restricted access to US ``3A090`` chips forced open-weight labs to pioneer frugal mixture-of-experts (MoE) routing, aggressive quantization, and reasoning distillation (``R1``, ``QWEN``). That made open models *easier* for ordinary citizens to run on smaller hardware! Yet if foundry and HBM memory walls grow tighter every year, training the *next* generation of foundational base models could concentrate inside a tiny handful of state-backed or hyperscale clusters ``[US26]`` ``[EAR742]``.
2. **The "Open Small, Cloud Giant" split:** Studios have a strong incentive to publish dazzling 7B-to-70B open models that run on consumer GPUs and clear thresholds smoothly, while holding 2-trillion-parameter titans and 60-agent swarms behind metered cloud APIs (which MOFCOM exempts from model-export licensing) ``[CN-A1]`` ``[CNQA]``.
3. **Local hardware matters for human freedom:** An open-weight medical or legal model only protects privacy if a hospital, newsroom, or university can buy affordable high-memory workstations to run it locally. When export rules cap GPU memory bandwidth or restrict open chip architectures (``266506X``), the practical boundary of local self-reliance shrinks even if the software stays MIT-licensed.
4. **Provenance becomes an everyday engineering habit:** Smart open-source teams now ship a simple one-page "compliance birth certificate" alongside every repository: exact commit SHA-256 hash, license text, measured training FLOPs, zero-Core-Data attestation, and download date.
