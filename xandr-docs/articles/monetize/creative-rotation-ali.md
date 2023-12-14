---
Title : Creative Rotation (ALI)
Description : When multiple creatives of the same size are trafficked to a line item,
ms.date: 10/28/2023
you can set a creative delivery strategy using the
Creative Rotation settings in the
Associated Creatives section on
the Create New Line Item and
Edit Line Item screens.
---


# Creative Rotation (ALI)



When multiple creatives of the same size are trafficked to a line item,
you can set a creative delivery strategy using the
Creative Rotation settings in the
Associated Creatives section on
the Create New Line Item and
Edit Line Item screens.

>

## How Creative Rotation Works

The following table outlines the available creative rotation strategies
and describes how they work.



<b>Note:</b> If you're using a custom model to
deliver creatives, a message will display indicating that a model is
attached. For more information, see <a
href="advanced-ads-toolset/custom-models.md"
class="xref" target="_blank">custom model</a>.



<table id="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__1"
class="entry">Creative Rotation Strategy</th>
<th
id="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__1">Auto-optimize
creative weight</td>
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__2">The
creative within a size bucket with the highest click-through-rate (CTR)
delivers the most. This is the default setting.
<p>Xandr assigns weights per creative for nodes
(tag and inventory URL combinations) that have at least 50,000
impressions and 10 clicks served by the line item. When the creative is
new, default weights are assigned instead.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__1">Evenly
weight creatives</td>
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__2">Impressions
are allocated evenly across same-sized creatives, which is handled
automatically by our system.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__1">Manually
weight creatives</td>
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__2">The
rotation is based on a user-supplied weight. If you select the manual
weighting option, you'll have the option to set the creative weight when
you edit the creative. The allowed weight is between 1 and 999. The
default weight is 10.
<p>The allocation percentage is determined by dividing this creative's
weight by the sum of the weights of all same-sized creatives. For
example, if you set the weight of a 300x50 creative to 30, and the
weights of all 300x50 creatives on the line item total 100, this
creative will bid on that line item's behalf 30% of the time. For more
information, see <a
href="creative-rotation-ali.md#ID-00004271__section_fe915c52-87e4-435b-813c-174f1c6b2344"
class="xref">How Manual Weighting Works</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__1">Inherit
creative weight from splits</td>
<td class="entry"
headers="ID-00004271__table_9c856df4-d628-4ca7-8f06-23a3e907c2b0__entry__2">The
rotation is based on a user-supplied weight that is defined per split.
Impressions are allocated per split with weights assigned to the splits
themselves. For example, if a split has a spend allocation of 50%, 50%
of impressions will go to that split. If multiple creatives are
associated with a split, impressions are distributed evenly among the
associated creatives.</td>
</tr>
</tbody>
</table>



>

## How Manual Weighting Works


Let's say your line item has the following creatives competing to serve
and you've selected the Manually weight
creatives option:

- Creative A is 300x600 with a weight of 50
- Creative B is 300x600 with a weight of 100
- Creative C is 300x600 with a weight of 150

As a result, these creatives will bid on your line item's behalf as
follows:

- Creative A will bid on 17% of eligible impressions
- Creative B will bid on 33% of eligible impressions
- Creative C will bid on 50% of eligible impressions





>

## Related Topics

- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>
- <a href="working-with-programmable-splits.md" class="xref">Working
  with Programmable Splits</a>
- <a href="create-a-programmable-split.md" class="xref"
  title="You can create a programmable split when creating or editing an augmented line item.">Create
  a Programmable Split</a>
- <a href="buying-strategies.md" class="xref">Buying Strategies</a>






