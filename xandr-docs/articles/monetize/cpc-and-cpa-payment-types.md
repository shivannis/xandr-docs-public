---
Title : CPC and CPA Payment Types
Description : Networks are often paid on a CPC and CPA basis by their advertisers and
would like to buy from publishers in the same manner. The Cross-Network
---


# CPC and CPA Payment Types



Networks are often paid on a CPC and CPA basis by their advertisers and
would like to buy from publishers in the same manner. The Cross-Network
CPC and CPA Payment Types allow networks to buy and sell from each other
on a CPC or CPA basis, instead of conducting all business on a CPM
basis. CPC and CPA Payment Types allow buyers to pay sellers only when
the user clicks or converts. Because sellers are taking on more risk by
accepting these payment types, we have built in a risk premium feature
to allow publishers to demand more revenue for taking on this risk.

Buying Inventory on a CPC/CPA Basis



Note: The ability to combine CPM booked
revenue with either the **Pay on a Per-click (CPC) Basis** or the **Pay
on a Per-conversion (CPA) Basis** buying strategy is being deprecated
soon. Although this combination will remain functional for existing
campaigns, you will no longer be able to use this combination on new
campaigns or duplicate existing campaigns that use it. For best results,
use the Performance Goals section on
your line item and use **Optimize to a % Margin of Booked Revenue** as
your campaign buying strategy.

For more information, please see
<a href="add-a-performance-goal-to-a-line-item.html" class="xref">Add a
Performance Goal to a Line Item</a> and
<a href="using-performance-goals-with-cpm-booked-revenue.html"
class="xref">Using Performance Goals with CPM Booked Revenue</a>.



In the Buying Strategies section of a
campaign, you can choose to bid on inventory outside of your network on
a CPC or CPA basis. You can continue to bid on a CPM basis as well.

You can choose multiple payment types in one campaign. The campaign will
submit a bid for each buying strategy you use. We do this for two
reasons:

1.  Sellers choose which type of deals they accept on their inventory,
    and some sellers do not accept CPC or CPA deals. **For this reason,
    you may want to submit a flat CPM bid along side a CPC or CPA
    payment type** to ensure that you have the option to win the
    impression. Currently all non-network supply partners only accept
    CPM deals.
2.  Even if sellers accept CPC and CPA deals, they have the ability to
    set a "risk premium" which allows them to insist that the expected
    payout for a CPC or CPA bid to be a certain percent higher than a
    flat CPM bid. Read more at
    <a href="selling-inventory-on-a-cpc-and-cpa-basis.html"
    class="xref">Selling Inventory on a CPC and CPA Basis</a>.

**Example with multiple bids:**

The Cheese of the Month Club pays Network A $10 per conversion. Network
A decides to pay for media on a per-impression basis (CPM), per-click
basis (CPC), and a per-conversion basis (CPA).

**CPM**: Network A chooses to optimize to a CPA goal of $6.50. This
would give Network A a 35% margin, with some risk.

**CPC**: Network A decides they are willing to pay $0.50 per-click based
on Network A's historical data. I.e. they believe that a $0.50 CPC will
result in a profitable CPA.

**CPA**: Network A decides they will pay $8 per conversion. This would
give Network A a 20% margin with no risk.



Note: When entering CPC and CPA Payment
Types, enter a value that ensures that you are making a margin. This is
the amount you will pay for media.



Based on these buying strategies, Network A would fill out the
third-party bidding strategies section like this:

<img src="../images/cpc-and-cpa-payment-types/cpa-cpc.jpg"
class="image" />

CPA and CPC Payment Bid Calculations

In order to submit a bid for CPC and CPA payment types, your CPC/A bid
must be converted by Microsoft Monetize into eCPMs
to compete with all CPM bids. Xandr uses
historical click-through-rate (CTR) and conversion-rate data to
calculate an eCPM.

Example:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000024ce__entry__1" class="entry">Payment Type</th>
<th id="ID-000024ce__entry__2" class="entry">Historical CTR/Conversion
Rate * 1000</th>
<th id="ID-000024ce__entry__3" class="entry">eCPM</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000024ce__entry__1">$6.50 CPA Goal</td>
<td class="entry" headers="ID-000024ce__entry__2">0.0001</td>
<td class="entry" headers="ID-000024ce__entry__3">$0.65</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000024ce__entry__1">$0.50 CPC</td>
<td class="entry" headers="ID-000024ce__entry__2">0.001</td>
<td class="entry" headers="ID-000024ce__entry__3">$0.5</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000024ce__entry__1">$ 8.50 CPA</td>
<td class="entry" headers="ID-000024ce__entry__2">0.0001</td>
<td class="entry" headers="ID-000024ce__entry__3">$0.85</td>
</tr>
</tbody>
</table>

The bids above would be sent to the Impression Bus for decisioning. For
CPC/A Payment types, Xandr is taking the risk of
calculating correctly. The bidder pays only on a click or conversion.
This is different from using our optimization system which uses a
networks goal to create a CPM bid; the network is paying for each
impression.

Targeting Inventory when using CPA/C Payment

Currently, only Network inventory is available on a CPA/C basis, so if
you choose to buy inventory in this manner, please ensure that you are
targeting Network inventory, not just exchange inventory. Please reach
out to your Xandr Implementation Consultant for
insight into what inventory is available on a CPC/A basis.

Reporting on Payment Types

We are very excited about the ability to report on payment types for
Buyers and Sellers. In order to do this, select "Payment types" as a
dimension in Network, Advertiser, and Publisher Analytics.

**Buyers**: Payment types can be CPM, CPC, or CPA

**Sellers**:

- Owner CPM: Publisher is paid on a CPM basis
- Owner Revshare: Publisher is paid on a Revshare basis (CPC or CPA)
- No Payment: Unfilled impressions (Defaults and PSAs)



Important: Please note that if you have
reserve prices set at the placement level, and you enable CPA / CPC
payment types at the publisher level, your net CPM for the publisher may
fall below your reserve price (depending on the number of clicks /
conversions your placement is generating).






