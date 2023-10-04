---
Title : Creative Rotation (Standard Line Item and Guaranteed Delivery Line Item)
Description : When multiple creatives of the same size are trafficked to a
line item or campaign, you can set a creative
delivery strategy using the Creative
Rotation settings.
---


# Creative Rotation (Standard Line Item and Guaranteed Delivery Line Item)



When multiple creatives of the same size are trafficked to a
line item or campaign, you can set a creative
delivery strategy using the Creative
Rotation settings.



Note: Creative rotation will only work
for Guaranteed Delivery Line Items and Direct Campaigns. It does not
work for RTB.



<div id="ID-000041dd__section_caf46cf4-b44b-4206-a324-50c05c88992f"
>

## How Creative Rotation Works

The table below lists the available creative rotation strategies and
describes how they work.



Note: If you are using other
optimization strategies in addition to creative rotation such as a
<a href="cadence-modifier-and-the-chaos-factor.html"
class="xref">Cadence Modifier and the Chaos Factor</a>), Creative
Rotation will probably be overridden by those other strategies.



<table id="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__1"
class="entry">Creative Rotation Strategy</th>
<th
id="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__1">Evenly
weight creatives</td>
<td class="entry"
headers="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__2">Impressions
are allocated evenly across same-sized creatives, which is handled
automatically by our system. This is the default setting.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__1">Auto-optimize
creative weight</td>
<td class="entry"
headers="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__2">The
creative with the highest click-through-rate (CTR) delivers the most.
75% of delivery is allocated to the highest performing creative (based
on CTR). All remaining creatives of the same size receive equal
allocations of the remaining 25% of overall delivery.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__1">Manually
weight creatives</td>
<td class="entry"
headers="ID-000041dd__table_9d70264f-6d3c-4969-a0d7-bd740a4f774a__entry__2">The
rotation is based on a user-supplied weight. If you select the manual
weighting option, you'll have the option to set the creative weight in
the dialog that appears when you edit the creative. The allowed weight
is between 1 and 999. The default weight is 10.
<p>The rotation is based on a user-supplied weight. The allocation
percentage is determined by dividing this creative's weight by the sum
of the weights of all same-sized creatives. For example, if you set the
weight of a 300x50 creative to 30, and the weights of all 300x50
creatives on the line item total 100, this creative will bid on that
line item's behalf 30% of the time.</p></td>
</tr>
</tbody>
</table>



<div id="ID-000041dd__section_ba5fd0a7-2f3f-4704-9e08-e017aeb39285"
>

## Using Creative Rotation with Creatives of Different Sizes

<div id="ID-000041dd__p_387e1238-0a1e-46b0-b809-b400d9a800bf" >

Creative rotation can apply to creatives of different sizes,
specifically in the case where an impression is allowing multiple sizes
(also known as "promo sizes"). For more information about promo sizes,
see <a href="using-promo-sizes.html" class="xref">Using Promo Sizes</a>.
See the tables below to better understand how promo sizes interact with
the following creative rotation strategies:

- Manually Weighted
- Auto-Optimized





**Manually Weighted**

<div id="ID-000041dd__p_8947d6ad-95b3-4733-acb5-1c12616b7146" >

Let's say your line item has the following creatives competing to serve
and you've selected the Manually weight
creatives option:

- Creative A is 160x600 with a weight of 20
- Creative B is 300x600 with a weight of 30
- Creative C is 300x600 with a weight of 50

As a result, these creatives will bid on your line item's behalf as
follows:

- Creative A will bid on 20% of eligible impressions
- Creative B will bid on 30% of eligible impressions
- Creative C will bid on 50% of eligible impressions







**Auto-Optimized**





The creative within a size bucket with the highest click-through-rate
(CTR) delivers the most. This is the default setting.

Xandr assigns weights per creative for nodes
(tag and inventory URL combinations) that have at least 50,000
impressions and 10 clicks served by the line item. When the creative is
new, default weights are assigned instead.





<div id="ID-000041dd__section_bb8bfffc-7e85-41f4-ac5a-4875c683676e"
>

## Related Topics

- <a href="create-a-standard-line-item.html" class="xref">Create a
  Standard Line Item</a>
- <a href="using-promo-sizes.html" class="xref">Using Promo Sizes</a>
- <a href="understanding-performance-goals.html"
  class="xref">Understanding Performance Goals</a>






