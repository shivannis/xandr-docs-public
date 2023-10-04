---
Title : Using Minimum Margin to Balance Margin and Delivery
Description : This page illustrates how you can use Minimum Margin to better manage
your margins and find the right balance between margin and delivery for
your line items.
---


# Using Minimum Margin to Balance Margin and Delivery



This page illustrates how you can use Minimum Margin to better manage
your margins and find the right balance between margin and delivery for
your line items.

With Minimum Margin, you have the ability to **manage your margin from a
central location on the line item.** This easy to use lever, allows you
to find the **right balance between delivery and margin**. To understand
how Minimum Margin can help you, consider the following scenario.

You are responsible for trafficking the following line item from an
insertion order with the following specifications:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015fe__entry__1" class="entry">Placement</th>
<th id="ID-000015fe__entry__2" class="entry">Flight Dates</th>
<th id="ID-000015fe__entry__3" class="entry">Rate Type</th>
<th id="ID-000015fe__entry__4" class="entry">Rate</th>
<th id="ID-000015fe__entry__5" class="entry">Units</th>
<th id="ID-000015fe__entry__6" class="entry">Net Cost</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__1">Creative_ABC_RON</td>
<td class="entry" headers="ID-000015fe__entry__2">5/1/14 - 5/31/14</td>
<td class="entry" headers="ID-000015fe__entry__3">CPM</td>
<td class="entry" headers="ID-000015fe__entry__4">$5.00</td>
<td class="entry" headers="ID-000015fe__entry__5">50,000,000</td>
<td class="entry" headers="ID-000015fe__entry__6">$10,000</td>
</tr>
</tbody>
</table>

Your number one goal, first and foremost, is to deliver the budget in
full. However, you want to make as much margin as possible from this
line item. Let's take a look how you would set up this line item.

The Setup

First, you set up a line item with a budget of $10,000 and a $5.00 CPM
booked revenue. Not wanting to impact the initial delivery of the line
item, you begin with a conservative minimum margin of 5%.

<img
src="../images/using-minimum-margin-to-balance-margin-and-delivery/min_margin.png"
class="image" />

The minimum margin % on the line item ensures that all child campaigns
are bidding at or below the minimum margin % for 3rd party inventory.
Let's look at how it works behind the scenes.

In Action

For this example line item, consider two children campaigns, A & B,
buying 3rd party inventory. The minimum margin of 5% essentially caps
the bids of all the campaigns.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015fe__entry__13" class="entry"></th>
<th id="ID-000015fe__entry__14" class="entry">Campaign A</th>
<th id="ID-000015fe__entry__15" class="entry">Campaign B</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__13">Buying Strategy</td>
<td class="entry" headers="ID-000015fe__entry__14">Prospecting campaign 
<p>Optimize to 20% of Booked Revenue</p></td>
<td class="entry" headers="ID-000015fe__entry__15">Re-targeting
campaign 
<p>Bid a base of $5.00</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__13">Bid</td>
<td class="entry" headers="ID-000015fe__entry__14">$5.00 * (1-.20) =
$4.00</td>
<td class="entry" headers="ID-000015fe__entry__15">$5.00</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__13"><strong>Min Margin
Cap</strong></td>
<td class="entry" headers="ID-000015fe__entry__14"><strong>$5.00 *
(1-.05) = $4.75</strong></td>
<td class="entry" headers="ID-000015fe__entry__15"><strong>$5.00 *
(1-.05) = $4.75</strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__13"><strong>Final Bid
with Min Margin of 5%</strong></td>
<td class="entry"
headers="ID-000015fe__entry__14"><strong>$4.00</strong></td>
<td class="entry"
headers="ID-000015fe__entry__15"><strong>$4.75</strong></td>
</tr>
</tbody>
</table>

After some time, you notice the budget is on pace and are making a
healthy margin of 18% with the two campaigns. You now want to see if you
can make more, so you adjust the minimum margin to 25% to ensure an even
greater margin.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015fe__entry__28" class="entry"></th>
<th id="ID-000015fe__entry__29" class="entry">Campaign A</th>
<th id="ID-000015fe__entry__30" class="entry">Campaign B</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__28">Buying Strategy</td>
<td class="entry" headers="ID-000015fe__entry__29">Prospecting campaign 
<p>Optimize to 20% of Booked Revenue</p></td>
<td class="entry" headers="ID-000015fe__entry__30">Re-targeting
campaign 
<p>Bid a base of $5.00</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__28">Bid</td>
<td class="entry" headers="ID-000015fe__entry__29">$5.00 * (1-.20) =
$4.00</td>
<td class="entry" headers="ID-000015fe__entry__30">$5.00</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__28"><strong>Min Margin
Cap</strong></td>
<td class="entry" headers="ID-000015fe__entry__29"><strong>$5.00 *
(1-.25) = $3.75</strong></td>
<td class="entry" headers="ID-000015fe__entry__30"><strong>$5.00 *
(1-.25) = $3.75</strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__28"><strong>Final Bid
with Min Margin of 25%</strong></td>
<td class="entry"
headers="ID-000015fe__entry__29"><strong>$3.75</strong></td>
<td class="entry"
headers="ID-000015fe__entry__30"><strong>$3.75</strong></td>
</tr>
</tbody>
</table>

However after raising the minimum margin to 25% you start to see
delivery on the line item start to suffer and readjust downwards to 20%
So on and so forth until you find the right balance.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015fe__entry__43" class="entry"></th>
<th id="ID-000015fe__entry__44" class="entry">Campaign A</th>
<th id="ID-000015fe__entry__45" class="entry">Campaign B</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__43">Buying Strategy</td>
<td class="entry" headers="ID-000015fe__entry__44">Prospecting campaign 
<p>Optimize to 20% of Booked Revenue</p></td>
<td class="entry" headers="ID-000015fe__entry__45">Re-targeting
campaign 
<p>Bid a base of $5.00</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__43">Bid</td>
<td class="entry" headers="ID-000015fe__entry__44">$4.00</td>
<td class="entry" headers="ID-000015fe__entry__45">$5.00</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__43"><strong>Min Margin
Cap</strong></td>
<td class="entry" headers="ID-000015fe__entry__44"><strong>$5.00 *
(1-.20) = $4.00</strong></td>
<td class="entry" headers="ID-000015fe__entry__45"><strong>$5.00 *
(1-.20) = $4.00</strong></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__43"><strong>Final Bid
with Min Margin of 20%</strong></td>
<td class="entry"
headers="ID-000015fe__entry__44"><strong>$4.00</strong></td>
<td class="entry"
headers="ID-000015fe__entry__45"><strong>$4.00</strong></td>
</tr>
</tbody>
</table>

**Minimum Margin is a single, easy to use lever to lower your overall
margin to improve delivery (and vice versa if delivery is strong).**

Campaigns Targeting Direct Inventory

For campaigns targeting direct publishers in your network, you enable
margin controls at the network level. This is a network-wide setting and
should be enabled when when you have made a business decision to
prioritize margin for your line items over fill on your direct
inventory.

If the network setting is enabled, the direct campaign will only serve
on direct inventory where the minimum margin is met. Let's take our
previous example and add a third campaign targeting three direct
publishers.

Line item: $5.00 CPM booked revenue and minimum margin of 20%

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015fe__entry__58" class="entry"></th>
<th id="ID-000015fe__entry__59" class="entry">Campaign A</th>
<th id="ID-000015fe__entry__60" class="entry">Campaign B</th>
<th id="ID-000015fe__entry__61" class="entry">Campaign C</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__58">Buying Strategy</td>
<td class="entry" headers="ID-000015fe__entry__59">Prospecting campaign 
<p>Optimize to 20% of Booked Revenue</p></td>
<td class="entry" headers="ID-000015fe__entry__60">Re-targeting
campaign 
<p>Bid a base of $5.00</p></td>
<td class="entry" headers="ID-000015fe__entry__61">Direct Inventory
<p>Targeting: Publishers X, Y &amp; Z</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000015fe__entry__58">Bid</td>
<td class="entry" headers="ID-000015fe__entry__59">$4.00</td>
<td class="entry" headers="ID-000015fe__entry__60">$5.00</td>
<td class="entry" headers="ID-000015fe__entry__61">$5.00</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000015fe__entry__58">Final Bid with Min
Margin of 20%</td>
<td class="entry" headers="ID-000015fe__entry__59">$4.00</td>
<td class="entry" headers="ID-000015fe__entry__60">$4.00</td>
<td class="entry" headers="ID-000015fe__entry__61">---</td>
</tr>
</tbody>
</table>

Let's see what happens when this Campaign C bids on the three
publishers.

<img
src="../images/using-minimum-margin-to-balance-margin-and-delivery/min-margin-on-direct.png"
class="image" />

Minimum Margin ensures that the direct campaign only serves on
publishers where you will meet your minimum margin %.




