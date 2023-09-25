---
Title : Migrating from Broker Fees to Partner Fees
Description : <b>Important:</b> Partner Fees are an
enhancement and replacement for
<a href="broker-fees.md" class="xref">Broker Fees</a> for augmented
---


# Migrating from Broker Fees to Partner Fees





<b>Important:</b> Partner Fees are an
enhancement and replacement for
<a href="broker-fees.md" class="xref">Broker Fees</a> for augmented
line items (ALIs) and programmatic guaranteed line items (PGLIs).



If you're migrating from
<a href="broker-fees.md" class="xref">Broker Fees</a>, you'll find
partner fees work differently in a few ways:

- Partner fees can be eligible for multiple advertisers and can be
  applied to multiple line items.
- A particular partner fee can be made required or optional for all an
  advertiser's augmented line items.
- Partner fees cannot be applied to insertion orders.

All serving fees on existing augmented line items have already been
converted to partner fees. You can view them in the
Fees section of the line item. If you
have Member-level access, hover over your member
name in the upper-right corner of the menu bar and click
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
  Total costs are calculated as follows:
  - **Total cost**: media costs + data cost + partner fees +
    commissions + serving fees OR publisher revenue
  - **Total cost eCPM**: (total cost/imps) \* 1,000
  - **Total cost eCPC**: total cost/clicks
  - **Total cost eCPA**: total cost/conversions

- **Profit**: In the past, we have sometimes used "profit" to represent
  buyer profit and sometimes used it to represent
  Member profit. Going forward, it will always
  indicate buyer profit (booked revenue - total cost).

- **Member profit**: The sum of booked revenue
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

<a href="buyer-segment-performance-report.md" class="xref">Buyer
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
third-party costs, budgeted using <a href="partner-fees.md"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Commissions</td>
<td class="entry" headers="ID-00000579__entry__2">Commissions +
equivalent partner fees
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted
</td>
<td class="entry" headers="ID-00000579__entry__3">$0.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__2">Media cost + data
costs + partner fees + commissions + serving fees + publisher revenue
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__2">(total cost / imps) *
1,000</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__2">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__2">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Profit</td>
<td class="entry" headers="ID-00000579__entry__2">booked revenue - media
cost</td>
<td class="entry" headers="ID-00000579__entry__3">booked revenue - total
cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
media cost) / imps * 1,000</td>
<td class="entry" headers="ID-00000579__entry__3">(booked revenue -
total cost / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__1">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__1">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__2">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__3">Same</td>
</tr>
</tbody>
</table>

<a href="buyer-geo-analytics-report.md" class="xref">Buyer Geo
Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__37" class="entry">Metric</th>
<th id="ID-00000579__entry__38" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__39" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__37">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__38">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__37">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__38">(total cost / imps) *
1,000</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__37">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__38">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__37">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__38">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__37">Profit</td>
<td class="entry" headers="ID-00000579__entry__38">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__39">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__37">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__38">(booked revenue -
total cost) / imps * 1,000</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__37">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__38">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__37">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__38">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__37">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__38">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__39">Same</td>
</tr>
</tbody>
</table>

<a href="advertiser-analytics-report.md" class="xref">Advertiser
Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__67" class="entry">Metric</th>
<th id="ID-00000579__entry__68" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__69" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Partner Fees</td>
<td class="entry" headers="ID-00000579__entry__68">The total amount of
third-party costs, budgeted using <a href="partner-fees.md"
class="xref">Partner Fees</a> , that have accrued on an augmented line
item over the reported period of time.</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Commissions</td>
<td class="entry" headers="ID-00000579__entry__68">Commissions +
equivalent partner fees
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__69">$0.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__68">Media cost + data
costs + partner fees + commissions + serving fees + publisher revenue
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__68">(total cost / imps) *
1,000</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__68">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__68">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Profit</td>
<td class="entry" headers="ID-00000579__entry__68">network revenue -
network cost</td>
<td class="entry" headers="ID-00000579__entry__69">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__68">(booked revenue -
media cost / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__69">(booked revenue -
total cost / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__68">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__68">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__69">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__68">(network revenue -
media cost) / network revenue</td>
<td class="entry" headers="ID-00000579__entry__69">(booked revenue -
total cost) / booked revenue</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Total Revenue (net
commissions)</td>
<td class="entry" headers="ID-00000579__entry__68">total revenue -
commissions</td>
<td class="entry" headers="ID-00000579__entry__69">Deprecated. Returns
error.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__67">Revenue eCPM (net
commissions)</td>
<td class="entry" headers="ID-00000579__entry__68">((cost / clicks) *
1,000) - commissions</td>
<td class="entry" headers="ID-00000579__entry__69">Deprecated. Returns
error.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__67">Revenue eCPA (net
commissions)</td>
<td class="entry" headers="ID-00000579__entry__68">(cost / conversions)
- commissions</td>
<td class="entry" headers="ID-00000579__entry__69">Deprecated. Returns
error.</td>
</tr>
</tbody>
</table>

<a href="advertiser-video-analytics-report.md" class="xref">Advertiser
Video Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__112" class="entry">Metric</th>
<th id="ID-00000579__entry__113" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__114" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Commissions</td>
<td class="entry" headers="ID-00000579__entry__113">Commissions +
equivalent partner fees
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__114">$0.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__113">Media cost + data
costs + partner fees + commissions + serving fees + publisher revenue
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__113">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__113">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__113">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Profit</td>
<td class="entry" headers="ID-00000579__entry__113">network revenue -
network media cost</td>
<td class="entry" headers="ID-00000579__entry__114">booked revenue -
total cost</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__113">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__114">((booked revenue -
total cost) / imps) * 1,000</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__113">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__113">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__113">(booked revenue -
media cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__114">(booked revenue -
total cost) / booked revenue</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__113">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__113">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__113">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__112">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__113">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__112">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__113">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__114">Same</td>
</tr>
</tbody>
</table>



<a href="network-analytics-report.md" class="xref">Member Analytics
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
href="partner-fees.md" class="xref">Partner Fees</a>, that have
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
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">$0.
<p>Previous data will not be impacted.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">Media
cost + data costs + partner fees + commissions + serving fees +
publisher revenue
<div class="note note_note">
<b>Note:</b> Third-party fees will not be
double-counted in the partner fees field.
</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost eCPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(total
cost / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost eCPC</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">total
cost / clicks</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Total
Cost eCPA</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">total
cost / conversions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
revenue - network media cost</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">booked
revenue - total cost</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
eCPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">((booked
revenue - total cost) / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
eCPC</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue - total cost) / clicks</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
eCPA</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue - total cost) / conversions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Profit
Margin</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue - total cost) / booked revenue</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(booked
revenue + reseller revenue) - total cost</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit eCPM</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">(network
profit / imps) * 1,000</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit eCPC</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
profit / clicks</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit eCPA</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
profit / conversions</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__1">Network
Profit Margin</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__2">network
profit / booked revenue + reseller revenue</td>
<td class="entry"
headers="ID-00000579__table-e0273d8c-73ee-4a72-8cc1-56e7e78ad924__entry__3">Same</td>
</tr>
<tr class="odd row">
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
<tr class="even row">
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
<tr class="odd row">
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
<tr class="even row">
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
<tr class="odd row">
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



<a href="network-video-analytics-report.md" class="xref">Member Video
Analytics Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__226" class="entry">Metric</th>
<th id="ID-00000579__entry__227" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__228" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__227">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__227">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__227">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__227">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Profit</td>
<td class="entry" headers="ID-00000579__entry__227">total network
revenue - network cost</td>
<td class="entry" headers="ID-00000579__entry__228">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__227">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__228">(profit / imps) *
1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__227">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__227">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__227">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__227">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__227">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__227">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__227">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__226">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__227">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__228">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__226">PPM</td>
<td class="entry" headers="ID-00000579__entry__227">network profit per
1,000 impressions</td>
<td class="entry" headers="ID-00000579__entry__228">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>

<a href="creative-frequency-and-recency-report.md"
class="xref">Creative Frequency and Recency Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__274" class="entry">Metric</th>
<th id="ID-00000579__entry__275" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__276" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__275">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__275">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__275">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__275">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Profit</td>
<td class="entry" headers="ID-00000579__entry__275">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__276">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__275">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__276">(profit / imps) *
1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__275">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__275">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__275">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__275">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__275">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__275">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__275">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__274">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__275">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__276">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__274">PPM</td>
<td class="entry" headers="ID-00000579__entry__275">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__276">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>

<a href="network-site-domain-performance-report.md"
class="xref">Member Site Domain Performance Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__322" class="entry">Metric</th>
<th id="ID-00000579__entry__323" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__324" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__322">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__323">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__322">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__323">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__322">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__323">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__322">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__323">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__322">Profit</td>
<td class="entry" headers="ID-00000579__entry__323">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__324">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__322">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__323">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__324">((booked revenue -
total cost) / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__322">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__323">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__322">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__323">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__322">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__323">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__324">Same</td>
</tr>
</tbody>
</table>

<a href="site-domain-performance.md" class="xref">Site Domain
Performance</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__352" class="entry">Metric</th>
<th id="ID-00000579__entry__353" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__354" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__352">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__353">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__352">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__353">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__352">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__353">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__352">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__353">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__352">Profit</td>
<td class="entry" headers="ID-00000579__entry__353">booked revenue -
media cost</td>
<td class="entry" headers="ID-00000579__entry__354">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__352">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__353">((booked revenue -
media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__354">(( booked revenue -
total cost) / imps) * 1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__352">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__353">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__352">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__353">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__352">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__353">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__354">Same</td>
</tr>
</tbody>
</table>

<a href="carrier-analytics-report.md" class="xref">Carrier Analytics
Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__382" class="entry">Metric</th>
<th id="ID-00000579__entry__383" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__384" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__382">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__383">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__382">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__383">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__382">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__383">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__382">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__383">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__382">Profit</td>
<td class="entry" headers="ID-00000579__entry__383">network revenue -
network media cost</td>
<td class="entry" headers="ID-00000579__entry__384">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__382">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__383">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__382">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__383">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__382">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__383">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__382">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__383">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__384">Same</td>
</tr>
</tbody>
</table>

<a href="device-analytics-report.md" class="xref">Device Analytics
Report</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000579__entry__412" class="entry">Metric</th>
<th id="ID-00000579__entry__413" class="entry">During the Transition
Period</th>
<th id="ID-00000579__entry__414" class="entry">After the Transition
Period</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Total Cost</td>
<td class="entry" headers="ID-00000579__entry__413">Media cost + data
costs + partner fees + commissions + serving fees + publisher
revenue</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Total Cost eCPM</td>
<td class="entry" headers="ID-00000579__entry__413">(total cost / imps)
* 1,000</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Total Cost eCPC</td>
<td class="entry" headers="ID-00000579__entry__413">total cost /
clicks</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Total Cost eCPA</td>
<td class="entry" headers="ID-00000579__entry__413">total cost /
conversions</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Profit</td>
<td class="entry" headers="ID-00000579__entry__413">network revenue -
network media cost</td>
<td class="entry" headers="ID-00000579__entry__414">booked revenue -
total cost</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Profit eCPM</td>
<td class="entry" headers="ID-00000579__entry__413">((booked revenue -
total cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__414">(profit / imps) *
1,000</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Profit eCPC</td>
<td class="entry" headers="ID-00000579__entry__413">(booked revenue -
total cost) / clicks</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Profit eCPA</td>
<td class="entry" headers="ID-00000579__entry__413">(booked revenue -
total cost) / conversions</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Profit Margin</td>
<td class="entry" headers="ID-00000579__entry__413">(booked revenue -
total cost) / booked revenue</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Network Profit</td>
<td class="entry" headers="ID-00000579__entry__413">(booked revenue +
reseller revenue) - total cost</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Network Profit
eCPM</td>
<td class="entry" headers="ID-00000579__entry__413">(network profit /
imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Network Profit
eCPC</td>
<td class="entry" headers="ID-00000579__entry__413">network profit /
clicks</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">Network Profit
eCPA</td>
<td class="entry" headers="ID-00000579__entry__413">network profit /
conversions</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000579__entry__412">Network Profit
Margin</td>
<td class="entry" headers="ID-00000579__entry__413">network profit /
booked revenue + reseller revenue</td>
<td class="entry" headers="ID-00000579__entry__414">Same</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000579__entry__412">PPM</td>
<td class="entry" headers="ID-00000579__entry__413">((network revenue -
network media cost) / imps) * 1,000</td>
<td class="entry" headers="ID-00000579__entry__414">Deprecated.<br />
Returns error.</td>
</tr>
</tbody>
</table>

Log-Level Data

Partner fees are reported in the field `partner_fees` in the <a
href="log-level-data/standard-feed.md"
class="xref" target="_blank">Standard Feed</a>.




