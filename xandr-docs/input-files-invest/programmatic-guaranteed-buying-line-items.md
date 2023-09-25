---
Title : Programmatic Guaranteed Buying Line Items
Description : A programmatic guaranteed buying line item (PG buying line item)
provides you with a workflow specifically designed for buying a
programmatic guaranteed deal (PG deal).
---


# Programmatic Guaranteed Buying Line Items



A programmatic guaranteed buying line item (PG buying line item)
provides you with a workflow specifically designed for buying a
programmatic guaranteed deal (PG deal).

PG buying line items have very different targeting, budgeting, and
optimization options compared to augmented line items.

Programmatic Guaranteed Deals

Programmatic Guaranteed deals (PG deals) bring the targeting, messaging,
and reporting benefits of programmatic advertising to guaranteed media
buys. They offer an automated solution for getting guaranteed access to
media from sellers and provide an efficient approach that eliminates
many of the additional steps required when buying via an insertion
order.

PG buyers, using PG buying line items, transact (bid) on sellers' PG
deals that define the targeting, frequency/recency, and creative
specifications, for the buyer to follow.



<b>Note:</b> Prior to transacting on a PG
deal, confirm with its seller that the creatives you wish to serve meet
their deal's creative format, size, and technical attribute
requirements.



If you have questions about how to set up a PG deal, please contact your
account manager.

Key Differences Between PG Line Items and Augmented Line items



<b>Important:</b> Only PG line items can
target PG deals.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d60__entry__1" class="entry">Feature</th>
<th id="ID-00001d60__entry__2" class="entry">PG Line Item</th>
<th id="ID-00001d60__entry__3" class="entry">Augmented Line Item</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001d60__entry__1">Budgeting</td>
<td class="entry" headers="ID-00001d60__entry__2">Determined by PG deal
to which the line item is associated</td>
<td class="entry" headers="ID-00001d60__entry__3">Determined by
insertion order or line item</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d60__entry__1">Flight Dates</td>
<td class="entry" headers="ID-00001d60__entry__2">Inherits insertion
order flight dates and deal flight dates; unique flight dates cannot be
set on line item.</td>
<td class="entry" headers="ID-00001d60__entry__3">Flight dates can be
set on insertion order and/or line item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d60__entry__1">Frequency &amp;
Recency</td>
<td class="entry" headers="ID-00001d60__entry__2">Determined by PG deal
to which the line item is associated</td>
<td class="entry" headers="ID-00001d60__entry__3">Determined by
insertion order or line item</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d60__entry__1">Optimization</td>
<td class="entry" headers="ID-00001d60__entry__2">Conversion
tracking</td>
<td class="entry" headers="ID-00001d60__entry__3">Conversion tracking,
goal priority, and selection of optimization method</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001d60__entry__1">Revenue Type</td>
<td class="entry" headers="ID-00001d60__entry__2">Cost Plus</td>
<td class="entry" headers="ID-00001d60__entry__3">CPM, CPC, Dynamic CPM,
Viewable CPM, or Cost Plus</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d60__entry__1">Targeting</td>
<td class="entry" headers="ID-00001d60__entry__2">Determined by PG deal
to which the line item is associated.</td>
<td class="entry" headers="ID-00001d60__entry__3">Determined by line
item. ALIs cannot target PG deals.</td>
</tr>
</tbody>
</table>

Advantages of PG Line Items

PG line items offer the following advantages:

- Easy access to PG deals for guaranteed buying of premium video and
  display media
- Streamlined execution and reporting of guaranteed media buys
- Insight into frequency, reach, and attribution of PG deals
- Predictable spending on deals

PG Deal Billing

With PG deal buying, you'll never pay for more than a deal's agreed-to
number of booked impressions. You only pay for a number of delivered
impressions that is less than or equal to a PG deal's booked impression
number. Xandr only charges fees on the
cost-of-media collected.



<b>Note:</b> While
Xandr's billing reports show PG deals as being
capped at their agreed-to booked impressions, non-billing reports still
reflect overdelivery regarding logged delivered impressions versus
adjusted-for-billing impressions.



- **What happens with billing in the month that a deal ends?**
  - The deal is reconciled (spend is capped), and the buyer is charged
    up to the agreed-upon deal amount.

<!-- -->

- **What happens if the deal ends but is not fully delivered?**
  - The buyer is only charged for delivery that is less than or equal to
    the agreed-upon deal budget.

<!-- -->

- **What happens if a deal is modified (the deal is extended, or the
  deal's price rate is increased) mid-flight?**
  - We use the latest version of a deal's size (booked imps) to
    determine if an adjustment is necessary. When a deal size changes
    mid-month, assuming it isn't changed to an amount lower than the
    number of delivered impressions, we use the updated impressions
    value for billing.

Auto-Monitoring Feature

PG buying line items are required to bid on every possible impression
associated with the targeted PG deal. Certain line item or PG deal
setups, however, may prevent your line item from bidding on available
impressions.

With **auto-monitoring**, your line item is sent a warning once its bid
rate drops to a certain percentage. If the line item's bid rate
percentage drops further, your line item automatically deactivates and
switches to an Inactive state. The
line item's targeted PG deal also switches its acceptance status to
Inactive. This allows you to then
troubleshoot your line item by fixing its setup issues (like
member-level targeting conflicts and creative eligibility issues) or
renegotiating the terms of the seller's PG deal. After making the
necessary adjustments to increase your line item's bid rate, you can
manually re-activate your line item to continue fulfilling the deal.



<b>Note:</b> When your line item deactivates,
Xandr sends a notification email to all email
addresses marked as **Notification Addresses** for your account's
Sherlock deactivations.



Related Topics

- <a href="create-a-programmatic-guaranteed-buying-line-item.md"
  class="xref"
  title="A programmatic guaranteed buying line item (PG line item) provides you with a workflow specifically designed for buying a programmatic guaranteed deal (PG deal).">Create
  a Programmatic Guaranteed Buying Line Item</a>
- <a href="metrics-for-programmatic-guaranteed-buying-line-items.md"
  class="xref"
  title="Programmatic guaranteed (PG) buying line items bring with them a unique set of metrics for analyzing the line item&#39;s performance in bidding and delivering toward a targeted PG deal. You can find these metrics being monitored for any PG buying line item within the Line Item Details pane&#39;s Analytics tab.">Metrics
  for Programmatic Guaranteed Buying Line Items</a>
- <a
  href="troubleshoot-your-programmatic-guaranteed-buying-line-item-bid-performance.md"
  class="xref"
  title="You can improve your programmatic guaranteed buying line item&#39;s impression count and bid performance, which in return will help you submit and win more bids, by accessing the Troubleshooting tab and reviewing all bid performance messages.">Troubleshoot
  your Programmatic Guaranteed Buying Line Item Bid Performance</a>
- <a
  href="bid-performance-messages-for-programmatic-guaranteed-buying-line-items.md"
  class="xref"
  title="You can access the Troubleshooting tab from the Line Item Details pane to obtain a list of bid performance messages. These messages contain reasons and recommendations for improving your programmatic guaranteed buying line item&#39;s bid performance.">Bid
  Performance Messages for Programmatic Guaranteed Buying Line Items</a>
- <a href="netflix-programmatic-guaranteed-buying-line-item.md"
  class="xref">Netflix Programmatic Guaranteed Buying Line Item</a>




