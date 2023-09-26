---
Title : Migrating from Broker Fees to Partner Fees
Description : Important: Partner Fees are an
enhancement and replacement for
<a href="broker-fees.html" class="xref">Broker Fees</a> for augmented
---


# Migrating from Broker Fees to Partner Fees





Important: Partner Fees are an
enhancement and replacement for
<a href="broker-fees.html" class="xref">Broker Fees</a> for augmented
line items (ALIs) and programmatic guaranteed line items (PGLIs).



If you're migrating from
<a href="broker-fees.html" class="xref">Broker Fees</a>, you'll find
partner fees work differently in a few ways:

- Partner fees apply only to augmented line items (ALIs) and guaranteed
  delivery line items (GDLIs).
- Partner fees can be eligible for multiple advertisers and can be
  applied to multiple line items.
- A particular partner fee can be made required or optional for all an
  advertiser's augmented line items.
- Partner fees cannot be applied to insertion orders.

All serving fees on existing augmented line items have already been
converted to partner fees. You can view them in the
Fees section of the line item. If you
have Network-level access, hover over your
member name in the upper-right corner of the menu bar and click
Fees to access the
Fees screen.

Reporting Changes

With partner fees, several new metrics have been added to reports and
there has been a standardization of how metrics are named and calculated
across different reports. This resulted in the deprecation of some
metrics and changes in the definitions of others.

Fields are now defined as follows for every report in which they appear:

- **Partner fees**: The total amount of third party costs, budgeted
  using Partner Fees, that have accrued on an augmented line item over
  the reported period of time.

- **Total cost**: All costs that are paid out to third parties. For
  buyers, total cost is all costs included in the budget, including
  media cost, data cost, partner fees, serving fees, and commissions.
  For sellers, total cost is any publisher revenue paid
  out to publishers, whether as revshare or CPM. Total costs are
  calculated as follows:
  - **Total cost**: media costs + data cost + partner fees +
    commissions + serving fees OR publisher revenue
  - **Total cost eCPM**: (total cost/imps) \* 1,000
  - **Total cost eCPC**: total cost/clicks
  - **Total cost eCPA**: total cost/conversions

- **Profit**: In the past, we have sometimes used "profit" to represent
  buyer profit and sometimes used it to represent
  Network profit. Going forward, it will always
  indicate buyer profit (booked revenue - total cost).

- **Network profit**: The sum of booked revenue
  and reseller revenue, minus total cost.

  Profit metrics based on including broker fees or data cost, but not
  including media cost, will be retired, in favor of the new definition
  of profit based on total cost. You will still be able to determine
  separate media and data costs.

Transition Period

The transition to partner fees was completed **November 12, 2019**. For
reports and metrics related to ALIs prior to that date, some things to
keep in mind:

- Reports which already had profit fields will continue to use the
  definitions they had used in the past.
- Logic was added to prevent double-counting third party costs (partner
  fees vs commissions & serving fees) in total cost metrics for ALIs.
- Commissions are no longer populated for augmented line items. These
  fees appear in the partner fees
  field.

Affected Reports

The changes for each report are summarized in the tables below.

<a href="buyer-segment-performance-report.html" class="xref">Buyer
Segment Performance Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__1" class="entry">Metric</th>
<th id="ID-00000579__entry__2" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__3" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Partner Fees</td>
<td class="entry" headers="ID-00000579__entry__2">The total amount of
third-party costs, budgeted using <a href="partner-fees.html"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Commissions</td>
<td class="entry" headers="ID-00000579__entry__2">Commissions +
equivalent partner fees

Note: Third-party fees will not be
double-counted
</td>
<td class="entry" headers="ID-00000579__entry__3">$0
for ALI, commissions for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Serving Fees</td>
<td class="entry" headers="ID-00000579__entry__2">Serving fees +
equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__3">$0 for ALI, serving
fees for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__2">Media cost + data
costs + partner fees + commissions + serving fees + publisher revenue

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__2">(total cost / imps) *
1,000</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__2">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__2">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Profit</td>
<td class="entry" headers="ID-00000579__entry__2">booked revenue - media
cost</td>
<td class="entry" headers="ID-00000579__entry__3">booked revenue - total
cost</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
media cost) / imps * 1,000</td>
<td class="entry" headers="ID-00000579__entry__3">(booked revenue -
total cost / imps) * 1,000</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
</tbody>
</table>

<a href="buyer-geo-analytics-report.html" class="xref">Buyer Geo
Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__40" class="entry">Metric</th>
<th id="ID-00000579__entry__41" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__42" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__40">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__41">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__40">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__41">(total cost / imps) *
1,000</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__40">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__41">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__40">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__41">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__40">Profit</td>
<td class="entry" headers="ID-00000579__entry__41">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__42">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__40">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__41">(booked revenue -
total cost) / imps * 1,000</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__40">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__41">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__40">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__41">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__40">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__41">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__42">Same</td>
</tr>
</tbody>
</table>

<a href="advertiser-analytics-report.html" class="xref">Advertiser
Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__70" class="entry">Metric</th>
<th id="ID-00000579__entry__71" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__72" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Partner Fees</td>
<td class="entry" headers="ID-00000579__entry__71">The total amount of
third-party costs, budgeted using <a href="partner-fees.html"
class="xref">Partner Fees</a> , that have accrued on an augmented line
item over the reported period of time.</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Commissions</td>
<td class="entry" headers="ID-00000579__entry__71">Commissions +
equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__72">$0
for ALI, commissions for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Serving Fees</td>
<td class="entry" headers="ID-00000579__entry__71">Serving fees +
equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__72">$0 for ALI, serving
fees for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__71">Media cost + data
costs + partner fees + commissions + serving fees + publisher revenue

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__71">(total cost / imps) *
1,000</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__71">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__71">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Profit</td>
<td class="entry" headers="ID-00000579__entry__71">network revenue -
network cost</td>
<td class="entry" headers="ID-00000579__entry__72">booked revenue -
total cost</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__71">(booked revenue -
media cost / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__72">(booked revenue -
total cost / imps) * 1,000</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__71">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__71">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__72">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__71">(network revenue -
media cost) / network revenue</td>
<td class="entry" headers="ID-00000579__entry__72">(booked revenue -
total cost) / booked revenue</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Total Revenue (net
commissions)</td>
<td class="entry" headers="ID-00000579__entry__71">total revenue -
commissions</td>
<td class="entry" headers="ID-00000579__entry__72">Deprecated. Returns
error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__70">Revenue eCPM (net
commissions)</td>
<td class="entry" headers="ID-00000579__entry__71">((cost / clicks) *
1,000) - commissions</td>
<td class="entry" headers="ID-00000579__entry__72">Deprecated. Returns
error.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__70">Revenue eCPA (net
commissions)</td>
<td class="entry" headers="ID-00000579__entry__71">(cost / conversions)
- commissions</td>
<td class="entry" headers="ID-00000579__entry__72">Deprecated. Returns
error.</td>
</tr>
</tbody>
</table>

<a href="advertiser-video-analytics-report.html" class="xref">Advertiser
Video Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__118" class="entry">Metric</th>
<th id="ID-00000579__entry__119" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__120" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Commissions</td>
<td class="entry" headers="ID-00000579__entry__119">Commissions +
equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__120">$0
for ALI, commissions for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Serving Fees</td>
<td class="entry" headers="ID-00000579__entry__119">Serving fees +
equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__120">$0 for ALI, serving
fees for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__119">Media cost + data
costs + partner fees + commissions + serving fees + publisher revenue

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__119">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__119">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__119">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Profit</td>
<td class="entry" headers="ID-00000579__entry__119">network revenue -
network media cost</td>
<td class="entry" headers="ID-00000579__entry__120">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__119">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__120">((booked revenue -
total cost) / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__119">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__119">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__119">(booked revenue -
media cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__120">(booked revenue -
total cost) / booked revenue</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__119">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__119">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__119">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__118">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__119">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__118">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__119">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__120">Same</td>
</tr>
</tbody>
</table>



<a href="network-analytics-report.html" class="xref">Network Analytics
Report</a>

<table id="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1"
class="entry">Metric</th>
<th
id="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2"
class="entry">During the Transition Period</th>
<th
id="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3"
class="entry">After the Transition Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Partner
Fees</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">The
total amount of third-party costs, budgeted using <a
href="partner-fees.html" class="xref">Partner Fees</a>, that have
accrued on an augmented line item over the reported period of time.</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Commissions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">Commissions
+ equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">$0<span
class="ph"> for ALI, commissions for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Serving
Fees</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">Serving
fees + equivalent partner fees

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">$0
for ALI, serving fees for standard line item.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">Media
cost + data costs + partner fees + commissions + serving fees +
publisher revenue

Note: Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost eCPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(total
cost / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost eCPC</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">total
cost / clicks</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost eCPA</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">total
cost / conversions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
revenue - network media cost</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">booked
revenue - total cost</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
eCPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">((booked
revenue - total cost) / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
eCPC</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue - total cost) / clicks</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
eCPA</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue - total cost) / conversions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
Margin</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue - total cost) / booked revenue</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue + reseller revenue) - total cost</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit eCPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(network
profit / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit eCPC</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
profit / clicks</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit eCPA</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
profit / conversions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit Margin</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
profit / booked revenue + reseller revenue</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">RPM
including Fees</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">((revenue
- fees) / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
(net commissions/gross serving fees)</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">profit
- (serving fees + commissions)</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">PPM
including Fees</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(profit
/ imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">CPM
including Fees</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(cost
/ imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">PPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(profit
/ imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>



<div id="ID-00000579__section-81df4636-e62f-4776-b887-9df6ee7c8fdc"
>

<a href="publisher-analytics.html" class="xref">Publisher Analytics</a>

<table id="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1"
class="entry">Metric</th>
<th
id="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2"
class="entry">During the Transition Period</th>
<th
id="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3"
class="entry">After the Transition Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Partner
Fees</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">The
total amount of third-party costs, budgeted using <a
href="partner-fees.html" class="xref">Partner Fees</a>, that have
accrued on an augmented line item over the reported period of time.</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Total
Cost</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">Media
cost + data costs + partner fees + commissions + serving fees +
publisher revenue</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Total
Cost eCPM</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">(total
cost / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Total
Cost eCPC</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">total
cost / clicks</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Total
Cost eCPA</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">total
cost / conversions</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Profit</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">booked
revenue - total cost</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Profit
eCPM</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">((booked
revenue - total cost) / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Profit
eCPC</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">(booked
revenue - total cost) / clicks</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Profit
eCPA</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">(booked
revenue - total cost) / conversions</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Profit
Margin</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">(booked
revenue - total cost) / booked revenue</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
Profit</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">network
revenue - publisher revenue</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">(booked
revenue + reseller revenue) - total cost</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
Profit eCPM</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">(network
profit / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
Profit eCPC</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">network
profit / clicks</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
Profit eCPA</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">network
profit / conversions</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
Profit Margin</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">network
profit / booked revenue + reseller revenue</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
PPM</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">(total
network RPM - total publisher RPM)</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__1">Network
ROI</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__2">network
ROI</td>
<td class="entry"
headers="ID-00000579__table-1661852d-8b7f-4846-ac34-64b8a8d197ee__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>



<a href="network-video-analytics-report.html" class="xref">Network Video
Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__292" class="entry">Metric</th>
<th id="ID-00000579__entry__293" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__294" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__293">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__293">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__293">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__293">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Profit</td>
<td class="entry" headers="ID-00000579__entry__293">total network
revenue - network cost</td>
<td class="entry" headers="ID-00000579__entry__294">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__293">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__294">(profit / imps) *
1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__293">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__293">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__293">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__293">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__293">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__293">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__293">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__292">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__293">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__294">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__292">PPM</td>
<td class="entry" headers="ID-00000579__entry__293">network profit per
1,000 impressions</td>
<td class="entry" headers="ID-00000579__entry__294">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>

<div id="ID-00000579__section-d939b4de-a72c-4e90-ad58-2ecdf11a65dd"
>

<a href="publisher-video-analytics-report.html" class="xref">Publisher
Video Analytics Report</a>

<table id="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1"
class="entry">Metric</th>
<th
id="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2"
class="entry">During the Transition Period</th>
<th
id="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3"
class="entry">After the Transition Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Total
Cost</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">Media
cost + data costs + partner fees + commissions + serving fees +
publisher revenue</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Total
Cost eCPM</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">(total
cost / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Total
Cost eCPC</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">total
cost / clicks</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Total
Cost eCPA</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">total
cost / conversions</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
Profit</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">network
revenue - network media cost</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">(booked
revenue + reseller revenue) - total cost</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
Profit eCPM</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">((booked
revenue + reseller revenue) - total cost imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
Profit eCPC</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">(booked
revenue + reseller revenue) - total cost / clicks</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
Profit eCPA</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">(booked
revenue + reseller revenue) - total cost / conversions</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
Profit Margin</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">(booked
revenue + reseller revenue) - total cost/ booked revenue + reseller
revenue</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
PPM</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">network
RPM - publisher RPM</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__1">Network
ROI</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__2">network
ROI</td>
<td class="entry"
headers="ID-00000579__table-29aa4988-5176-4f59-80e1-cc5a04127737__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>



<div id="ID-00000579__section-652ceb37-19db-4a34-a531-17574a3fbc80"
>

<a href="seller-brand-review-report.html" class="xref">Seller Brand
Review Report</a>

<table id="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1"
class="entry">Metric</th>
<th
id="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2"
class="entry">During the Transition Period</th>
<th
id="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3"
class="entry">After the Transition Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Total
Cost</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">Media
cost + data costs + partner fees + commissions + serving fees +
publisher revenue</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Total
Cost eCPM</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">(total
cost / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Total
Cost eCPC</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">total
cost / clicks</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Total
Cost eCPA</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">total
cost / conversions</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Profit</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">network
revenue - network media cost</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">booked
revenue - total cost</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Profit
eCPM</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">((booked
revenue - total cost) / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">(profit
/ imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Profit
eCPC</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">(booked
revenue - total cost) / clicks</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Profit
eCPA</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">(booked
revenue - total cost) / conversions</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Profit
Margin</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">(booked
revenue - total cost) / booked revenue</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Network
Profit</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">(booked
revenue + reseller revenue) - total cost</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Network
Profit eCPM</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">(network
profit / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Network
Profit eCPC</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">network
profit / clicks</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Network
Profit eCPA</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">network
profit / conversions</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">Network
Profit Margin</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">network
profit / booked revenue + reseller revenue</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__1">PPM</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__2">((network
revenue - network media cost) / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-16bcda36-9fbd-42c0-969e-86ecc1512152__entry__3">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>



<a href="creative-frequency-and-recency-report.html"
class="xref">Creative Frequency and Recency Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__424" class="entry">Metric</th>
<th id="ID-00000579__entry__425" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__426" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__425">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__425">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__425">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__425">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Profit</td>
<td class="entry" headers="ID-00000579__entry__425">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__426">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__425">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__426">(profit / imps) *
1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__425">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__425">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__425">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__425">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__425">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__425">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__425">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__424">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__425">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__426">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__424">PPM</td>
<td class="entry" headers="ID-00000579__entry__425">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__426">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>

<a href="network-site-domain-performance-report.html"
class="xref">Network Site Domain Performance Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__472" class="entry">Metric</th>
<th id="ID-00000579__entry__473" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__474" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__472">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__473">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__472">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__473">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__472">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__473">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__472">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__473">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__472">Profit</td>
<td class="entry" headers="ID-00000579__entry__473">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__474">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__472">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__473">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__474">((booked revenue -
total cost) / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__472">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__473">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__472">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__473">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__472">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__473">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__474">Same</td>
</tr>
</tbody>
</table>

<a href="site-domain-performance.html" class="xref">Site Domain
Performance</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__502" class="entry">Metric</th>
<th id="ID-00000579__entry__503" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__504" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__502">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__503">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__502">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__503">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__502">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__503">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__502">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__503">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__502">Profit</td>
<td class="entry" headers="ID-00000579__entry__503">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__504">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__502">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__503">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__504">(( booked revenue -
total cost) / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__502">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__503">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__502">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__503">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__502">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__503">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__504">Same</td>
</tr>
</tbody>
</table>

<a href="carrier-analytics-report.html" class="xref">Carrier Analytics
Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__532" class="entry">Metric</th>
<th id="ID-00000579__entry__533" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__534" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__532">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__533">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__532">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__533">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__532">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__533">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__532">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__533">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__532">Profit</td>
<td class="entry" headers="ID-00000579__entry__533">network revenue -
network media cost</td>
<td class="entry" headers="ID-00000579__entry__534">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__532">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__533">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__532">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__533">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__532">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__533">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__532">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__533">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__534">Same</td>
</tr>
</tbody>
</table>

<a href="device-analytics-report.html" class="xref">Device Analytics
Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__562" class="entry">Metric</th>
<th id="ID-00000579__entry__563" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__564" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__563">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__563">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__563">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__563">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Profit</td>
<td class="entry" headers="ID-00000579__entry__563">network revenue -
network media cost</td>
<td class="entry" headers="ID-00000579__entry__564">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__563">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__564">(profit / imps) *
1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__563">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__563">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__563">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__563">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__563">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__563">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__563">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__562">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__563">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__564">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__562">PPM</td>
<td class="entry" headers="ID-00000579__entry__563">((network revenue -
network media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__564">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>

<div id="ID-00000579__section-93243466-a1cb-4b23-9fa1-aaa3dd58857f"
>

Standard Line Items

If you still use standard line items, you must use
<a href="broker-fees.html" class="xref">Broker Fees</a> to administer
third-party fees for those. You can still apply broker fees on the
insertion order, line item, or campaign; however, if the insertion order
has both standard and augmented line items, the broker fees **will only
apply to the standard line items**. You must create partner fees for
augmented line items even if the parent insertion order has a broker fee
applied.



Log-Level Data

Partner fees are reported in the field `partner_fees` in the <a
href="https://docs.xandr.com/bundle/log-level-data/page/standard-feed.html"
class="xref" target="_blank">Standard Feed</a>.




