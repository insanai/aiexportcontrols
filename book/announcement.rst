.. meta::
   :description: Chapter 1: How China's Announcement No. 48 of 16 October 2026 started two separate clocks, a 30-day public consultation and immediate pre-export registration on ecomp.mofcom.gov.cn.

=============================================
01. The Day Knowledge Got a Customs Booth
=============================================

One Friday Afternoon, Two Very Different Clocks
===============================================

Picture a city council announcing on Friday afternoon that it plans to lower the speed limit on forty stretches of highway next winter, and inviting citizens to write in with comments for thirty days. Then read the second half of the notice: starting that same Friday afternoon, a real tollbooth is already open on the highway, recording every covered truck that drives past, including trucks that left the warehouse yesterday and have not yet crossed the bridge.

That is almost literally how **Announcement No. 48 of 2026** works. Issued jointly on **16 October 2026** by China's Ministry of Commerce (MOFCOM, led by its Bureau of Industry, Security, Import and Export Control) and the Ministry of Science and Technology (MOST) under China's *Foreign Trade Law* and *Regulations on the Administration of Technology Import and Export*, the document sets two separate clocks ticking at once ``[CN48, sections I and III]`` ``[CNTIER]``:

.. typst-diagram::
   :caption: Announcement No. 48 splits into two parallel tracks on 16 October 2026: a 30-day consultation on 40 proposed catalogue entries, and an immediate pre-export registration mandate on ecomp.mofcom.gov.cn.
   :name: fig-two-clocks

   #import "figures/diagrams.typ": two-clocks-timeline
   #two-clocks-timeline(lang: "en")

1. **The Consultation Clock (16 October to 15 November 2026):** Beijing proposes adding **40 technology points** (14 prohibited from export and 26 restricted) across artificial intelligence and chips (23), biomedicine (5), and solar energy (12) to the *Catalogue of Technologies Prohibited or Restricted from Export*. Until the public comment window closes and a final revised catalogue is formally promulgated, those new prohibitions and licensing rules remain **proposals, not final bans** ``[CN48, sections I and II]``.
2. **The Registration Clock (Running Right Now):** From the moment Announcement 48 went live on 16 October 2026 until the day the final revised catalogue eventually takes effect (a date Beijing has intentionally left unfixed), anyone exporting a technology listed in Attachment 1 must complete **pre-export information registration** online through MOFCOM's Unified Business System Platform at ``https://ecomp.mofcom.gov.cn`` ``[CN48, section III(1)]`` ``[CNPLAT]``.

Confusing those two clocks is the single most common mistake people make when discussing China's new rules. Registration is active today, yet registration is a reporting gate, not an export ban. Conversely, waiting until mid-November to pay attention can catch a startup or university lab off guard if it is signing an overseas license, shipping covered equipment, or closing a foreign financing round right now ``[CN48]`` ``[CNQA]``.

Crossing a Border Without Packing a Single Crate
================================================

When our grandparents heard the word *export*, they pictured harbor cranes lifting steel containers onto a cargo ship in Shanghai or Rotterdam. When a modern technology regulator says *export*, not a single wooden crate needs to touch a dock.

Under Section III(2) of Announcement 48, four transactions trigger mandatory pre-export registration before completion, **including transfers that had already started before October 16 but are not yet finished** ``[CN48, section III(2)]``:

* **Selling the crown jewels abroad:** Transferring ownership of domestic technology to an overseas buyer, such as assigning patents or selling proprietary model or chip intellectual property.
* **Granting an overseas license:** Keeping ownership in China while licensing a foreign partner, client, or subsidiary to use covered domestic technology outside the country.
* **Changing who holds the steering wheel:** A corporate acquisition, restructuring, or cap-table shift through which the owner or *actual controller* of domestic technology changes into an overseas entity. Even if every engineer and server stays in Hangzhou or Beijing, if ultimate corporate control crosses the border, the rule engages.
* **Additional scenarios notified by MOFCOM:** A statutory catch-all allowing the ministry to address new transfer structures by official notice.

When an exporter logs into the Technology Trade Management Information Application on ``ecomp.mofcom.gov.cn`` to file **Attachment 2** (*Technology Export Information Registration Form*), the portal asks for concrete, auditable facts: the exporter's corporate identity and official company seal (``公章``), the technology owner, the foreign recipient's Chinese and English names, country, address, and corporate relationship to the exporter, the exact seven-character catalogue code and technical metrics, the end user and end use, whether the IP is self-developed, and the contract value converted into US dollars ``[CN-A2]``. Multiple technologies transferred to the same overseas partner in one deal may be bundled onto one form; separate partners require separate filings ``[CN48, section III(3)]``.

Four Words That Change Everything
=================================

Legal catalogues look intimidating because casual readers read every line as a "ban." In practice, four regulatory categories carry vastly different meanings for human progress ``[CN-A1, notes 1 to 4]`` ``[CNQA]`` ``[CNTIER]``:

Prohibited (``禁止出口``, codes ending in ``J``)
   A solid red wall. Once finalized, covered technology within the stated scope cannot legally be exported at all ``[CNTIER, Art. 32]``.

Restricted (``限制出口``, codes ending in ``X``)
   A guarded gate with a lock and a key. Export is lawful, provided the exporter obtains official government permission before transferring the technology ``[CNTIER, Art. 33]``.

Automatic licensing (``自动许可``)
   The express lane at the gate. Proposed in Footnotes 2 and 3 for open-source AI releases, Chinese firms' self-owned overseas clouds, overseas foundry chip tape-outs, and humanitarian biomedicine, MOFCOM describes this path as virtually **"apply and go" (** ``即报即出`` **)**: an administrative record rather than a roadblock ``[CN-A1, notes 2 and 3]`` ``[CNQA]``.

Excluded (``不纳入管理范围``)
   Outside this catalogue altogether. Already-public open-source AI and published academic papers sit here under Footnote 1, while ordinary laws like data security or copyright remain in place ``[CN-A1, note 1]``.

   Think of it like an international airport: *prohibited* items cannot fly; *restricted* items need a declared export permit; *automatic licensing* is the fast-track e-gate; and *excluded* items stay in your backpack without stopping at customs.
