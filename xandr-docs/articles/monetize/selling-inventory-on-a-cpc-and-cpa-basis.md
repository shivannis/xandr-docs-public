---
Title : Selling Inventory on a CPC and CPA Basis
Description : In order to foster a stronger ecosystem on
Xandr, we pioneered the ability to resell your
inventory on a CPC or CPA basis in real time. Since many networks
---


# Selling Inventory on a CPC and CPA Basis



In order to foster a stronger ecosystem on
Xandr, we pioneered the ability to resell your
inventory on a CPC or CPA basis in real time. Since many networks
negotiate financial terms with publishers based on a revenue share per
conversion or click, it makes sense that networks should be able to
resell inventory in this fashion to other networks.

Selling inventory in this fashion allows you to demand a larger payout
for accepting more risk as the seller. We have built capabilities into
Monetize to support this tradeoff.

Overview

Sellers can now opt in to selling their inventory on a CPC and CPA basis
by publisher. Sellers can also set which payment types they accept on a
buyer-by-buyer basis. For more information, see <a
href="edit-buyer-eligibility-allowed-payment-types-and-targeting-access.html"
class="xref">Edit Buyer Eligibility, Allowed Payment Types, and
Targeting Access</a>.

You can choose to accept CPC and CPA payment types when you
<a href="create-a-publisher.html" class="xref">Create a Publisher</a>.

Publisher Risk Premium

Sellers take more risk when accepting
<a href="cpc-and-cpa-payment-types.html" class="xref">CPC and CPA
Payment Types</a>, and should be compensated for taking this risk. In
order to compensate sellers, we allow them to set risk premium per
publisher. Setting a risk premium allows them to demand that a CPA or
CPC payment from a buyer be a certain percentage higher than a CPM bid.

The table below shows how eCPM bids will be recalculated based on the
publisher's risk premium to derive a final bid:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004f9b__entry__1" class="entry">Payment Type</th>
<th id="ID-00004f9b__entry__2" class="entry">eCPM Bid</th>
<th id="ID-00004f9b__entry__3" class="entry">Publisher Risk Premium</th>
<th id="ID-00004f9b__entry__4" class="entry">Final Bid after Risk
Premium is Applied</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00004f9b__entry__1">6 CPA Goal</td>
<td class="entry" headers="ID-00004f9b__entry__2">$0.60</td>
<td class="entry" headers="ID-00004f9b__entry__3">n/a</td>
<td class="entry" headers="ID-00004f9b__entry__4">$0.60</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00004f9b__entry__1">$0.50 CPC</td>
<td class="entry" headers="ID-00004f9b__entry__2">$0.50</td>
<td class="entry" headers="ID-00004f9b__entry__3">10%</td>
<td class="entry" headers="ID-00004f9b__entry__4">$0.45</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00004f9b__entry__1">$ 8 CPA</td>
<td class="entry" headers="ID-00004f9b__entry__2">$0.8</td>
<td class="entry" headers="ID-00004f9b__entry__3">25%</td>
<td class="entry" headers="ID-00004f9b__entry__4">$0.60</td>
</tr>
</tbody>
</table>

Based on the example, the CPA payment type will win the auction. The
creative is served and the buyer will pay the seller $8 **if** the user
converts.

Allowing Payment Types on a Per-Buyer Basis

Sellers can choose which buyers they will accept CPA and CPC payment
types from. For instructions, see the <a
href="edit-buyer-eligibility-allowed-payment-types-and-targeting-access.html"
class="xref">Edit Buyer Eligibility, Allowed Payment Types, and
Targeting Access</a>.

Related Topics

- <a href="cpc-and-cpa-payment-types.html" class="xref">CPC and CPA
  Payment Types</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/online-advertising-and-ad-tech-glossary.html"
  class="xref" target="_blank">Glossary</a>




