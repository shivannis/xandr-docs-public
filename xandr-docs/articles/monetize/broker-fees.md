---
Title : Broker Fees
Description : Important: Broker fees are deprecated
on augmented line items and programmatic guaranteed line items. If you
---


# Broker Fees





Important: Broker fees are deprecated
on augmented line items and programmatic guaranteed line items. If you
wish to track a third-party fee for an ALI or PGLI, please use
<a href="partner-fees.html" class="xref">Partner Fees</a>.



<div id="ID-00000eae__section-b76229b6-ce42-4a92-a20b-1b4ce9239a59"
>

If you use standard line items, broker fees provide a way for
Networks to calculate payments and fees for
third party "brokers," such as data providers, agency partners, finder
fees, ad serving costs, etc. Broker Fees come in two flavors:

**Commissions:** Commissions are used on Line Items and Insertion
Orders, and they are taken out of booked revenue (the amount that the
advertiser pays to the Network.) They can either
be a percentage of revenue or a flat CPM. Think of this as the
Network paying out a portion of its cut from the
advertiser.

**Serving Fees:** Serving Fees are fees that a
Network must pay in addition to media costs when
serving an ad. These can be data costs or additional ad serving or
creative hosting fees. They can either be a percentage of costs or a
flat CPM. Think of this as the Network having
other costs associated with acquiring the inventory.

Xandr does not physically handle broker fees: we
don't collect money from Networks and pay out to
third parties. But we want you to be able to run the business side of
things as easily as possible on the platform.

Applied at Line Item or Insertion Order Levels (Commissions)



Warning:

- Broker fees applied to an insertion order do NOT apply to any
  augmented line items belonging to that insertion order. They apply
  ONLY to standard line items.
- If you set broker fees at both the line item level and the insertion
  order level, the line item fees will override the insertion order
  fees.
- When goal priority is set to prefer
  delivery or prefer
  performance, line item level broker fees are not deducted from
  the bid. To always deduct broker fees from the bid, the trader should
  select margin as the goal priority



When creating or editing a line item or insertion order, click the
Add Fee button under
Commissions. You can then select the
broker, enter a description, choose the fee type, and enter the fee
value in the box that appears.

For non-CPM buying strategies, bids are calculated according to the new
booked revenue, after the commission was deducted. For example, a Line
Item with $1 CPM booked revenue and a 10% broker fee would result in a
new "revenue" of $0.90, and a relatively adjusted bid.

<div id="ID-00000eae__p-083d8f22-fe30-4272-978b-c124fe72cc74" >



Note: The decimal position support for
the broker fees is for 1 place after the decimal. For example, if you
set 16.67% as a broker fee in the **Commissions** section, after saving,
the value would round off to 16.7%. However, there is no restriction on
number of places after decimal if the <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order service API</a> is used to
create the broker fee.





Applied at Campaign Level (Serving Fees)

When creating or editing a campaign, click the the
Add Fee button under
Serving Fees. You can then select the
broker, enter a description, choose the fee type, and enter the fee
value in the box that appears.

In the details screen, click
Advanced Options
 \> Serving Fees to get
the Serving Fees panel.

Third-Party Inventory

For optimized bids, bids are automatically reduced to account for
serving fees. For example, a campaign with a CPC goal and a $0.20 CPM
serving fee would result in bids being reduced by $0.20. For all other
bids (flat CPM bids and learn bids) serving fees are calculated on top
of your bid. For example, for a 10% serving fee on a $1 cpm bid, you
will still bid $1, but your net media cost will be $1.10.

Direct Inventory

You may owe serving fees to third parties for services such as creative
hosting or user data. Serving fees are applied to your media cost, so,
for example, a 10% serving fee on $10 of media cost would result in $1
in additional serving costs.

Reporting on Broker Fees

You can report on Serving Fees and Commissions in
<a href="network-reporting.html" class="xref">Network Analytics</a> and
<a href="advertiser-reporting.html" class="xref">Advertiser
Analytics</a>.






