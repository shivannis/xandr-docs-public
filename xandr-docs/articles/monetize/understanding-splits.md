---
Title : Understanding Splits
Description : Note: This page explains what splits
are and how they work. For step-by-step instructions on creating a
---


# Understanding Splits





Note: This page explains what splits
are and how they work. For step-by-step instructions on creating a
split, see <a href="configure-a-programmable-split.html" class="xref"
title="You can use programmable splits to refine line item targeting and dynamically adjust bids, budget allocation, and creative allocation across a line item&#39;s targeted inventory. Splits are recommended if you have sophisticated targeting requirements.">Configure
a Programmable Split</a>.



What Is a Split?

When you create a
<a href="create-an-augmented-line-item-ali.html" class="xref"
title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">line
item</a>, you specify the inventory you'd like to target, the budget
you'd like to spend over the line item's flight, how you want to track
revenue, and how to use Xandr optimization. If
you choose, you can also split up the line item inventory with
**programmable splits**, which you can use to:

<img src="../images/understanding-splits/LI-splits.png" class="image" />

- Target different subsections of the inventory that matches the line
  item's criteria
- Dynamically adjust bids based on targeting
- Allocate the line item budget to different targets
- Distribute creatives

In essence, the line item acts as a filter. Impressions must match the
targeting specified on the line item before they are passed on to
splits.

You define a split by specifying the inventory you want available for
it, using any combination of targeting conditions, such as geography,
inventory performance, and segment information. You can then optionally
define bidding or valuation rules, budget allocations, bidding priority,
and/or creative selection for each split.



Important: When you create a split,
behind the scenes you're actually creating a logic tree, or a program,
powered by <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
class="xref" target="_blank">custom models</a>.



Here are some examples of how you can use splits:

- Manually optimize KPI (for example, attribute conversions to a
  third-party server)
- Manage secondary KPIs (such as spending 20% in a particular geo zone
  if you meet the delivery and performance goal of the line item)
- Implement dynamic creative decisioning
- Bias spend towards a particular seller or publisher to achieve
  business goals

Split Spend Allocation

Split spend allocation is the percentage of the line item daily budget
assigned to a split. Xandr will attempt to spend
as much as it can to reach the spend allocation goal.



Note: In some cases, a split's spend
allocation goal may conflict with a line item delivery goal. For
example, consider a simple line item with two splits. Based on current
performance, it looks like Split A can scale (that is, has enough
inventory to reach the line item budget), but Split B cannot. If your
spend allocation goals on Split A are low, then
Xandr will not be able to spend as much as
required to reach the delivery goal for the line item as a whole.



Capped and Uncapped Splits

To determine how conflicts between split spend allocation and line item
delivery goals are addressed, you can make your splits either
capped or
uncapped.

- **Uncapped** - Uncapped splits prioritize delivery over spend
  allocation. When a line item with uncapped splits is underdelivering,
  the uncapped splits are permitted to exceed their spend allocation
  goals to reach the line item delivery goal. That is, if the line item
  cannot reach the delivery goal, Xandr will
  ignore spend allocation goals and maximize spend on every split until
  the line item reaches the delivery goal. If the line item delivery
  goal is being met, then split spend allocation goals will be met. If
  the spend allocation goal isn't met, then it implies that the
  particular split does not have enough inventory to reach allocation
  goals. By default, splits are uncapped.
- **Capped** - Capped splits prioritize spend allocation over delivery.
  Even when line items are underdelivering, capped splits are not
  permitted to exceed the spend allocation goal to help line items reach
  their delivery goals. This will prevent overspend on a split, but may
  cause the line item to underdeliver.

The expected behavior for a split varies depending on whether the split
is capped or uncapped and on how the line item as a whole is delivering.
This table describes the expected behavior for different combinations of
split capping and line item pacing.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002049__entry__1" class="entry">Split Capping</th>
<th id="ID-00002049__entry__2" class="entry">Line Item Scenario</th>
<th id="ID-00002049__entry__3" class="entry">Expected Behavior</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td rowspan="2" class="entry" headers="ID-00002049__entry__1">All splits
are uncapped</td>
<td class="entry" headers="ID-00002049__entry__2">Delivering to
target</td>
<td class="entry" headers="ID-00002049__entry__3"><ul>
<li>If <strong>all</strong> splits can scale, the spend allocation goal
will be met perfectly.</li>
<li>If any split cannot scale, Xandr spends as
much as it can on that split and reallocates the remainder of the spend
to another split. As a result, some splits will exceed their spend
allocation goals.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002049__entry__2">Underdelivering</td>
<td class="entry" headers="ID-00002049__entry__3"><ul>
<li>Maximize spend on all splits. Some splits may exceed their spend
allocation goals.</li>
</ul></td>
</tr>
<tr class="odd row">
<td rowspan="2" class="entry" headers="ID-00002049__entry__1">All splits
are capped</td>
<td class="entry" headers="ID-00002049__entry__2">Delivering to
target</td>
<td class="entry" headers="ID-00002049__entry__3"><ul>
<li>If <strong>all</strong> splits can scale, the spend allocation goal
will be met perfectly.</li>
<li>If a split cannot scale, Xandr spends as
much as it can on the split. The excess spend cannot be reallocated to
other splits. Splits will not exceed their spend allocation goals, but
the line item delivery goal will not be met.<br />
</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002049__entry__2">Underdelivering</td>
<td class="entry" headers="ID-00002049__entry__3"><ul>
<li>Maximize spend on all splits up to (but not exceeding) the spend
allocation goal.</li>
</ul></td>
</tr>
<tr class="odd row">
<td rowspan="2" class="entry" headers="ID-00002049__entry__1">Some
splits are capped</td>
<td class="entry" headers="ID-00002049__entry__2">Delivering to
target</td>
<td class="entry" headers="ID-00002049__entry__3"><ul>
<li>If <strong>all</strong> splits can scale, the spend allocation goal
will be met perfectly.</li>
<li>If a split cannot scale to allocation goals, <span
class="ph">Xandr spends as much as it can on the split.
<ul>
<li>If an uncapped split can scale, Xandr
reallocates excess spend to it, implying it will exceed spend allocation
goals.</li>
<li>If a capped split can scale, Xandr
reallocates excess spend to it, but only up to the spend allocation
goal</li>
</ul></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002049__entry__2">Underdelivering</td>
<td class="entry" headers="ID-00002049__entry__3"><ul>
<li>Maximize spend on all splits.<br />
&#10;<ul>
<li>If a split is capped, do not exceed spend allocation goal.</li>
<li>If a split is uncapped, exceed spend allocation goal.</li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

Line Item Default

Any traffic that passes the line item targeting but doesn't meet the
conditions for a particular split is assigned to the **line item default
split**, which is created automatically.

Splits and Optimization

You can use splits with or without
<a href="optimization-guide-ali.html" class="xref">optimization</a>. You
can <a href="create-an-augmented-line-item-ali.html" class="xref"
title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">enable
or disable</a> optimization at the line item level.

Splits When Optimization Is Enabled

Using Xandr optimization means you specify a
performance goal on the line item and then rely on
Xandr for inventory discovery and bid valuation.

If you select this option:

- **Spend Allocation -** Xandr will prefer
  delivery and performance to split spend allocation. Spend allocations
  will only be observed if the line item can also meet its performance
  goal. This implies that we may not deliver on some splits if we
  predict that the inventory in a split does not help meet your
  performance goal. For example, if you have a split for cnn.com, but
  cnn.com is not the right inventory for your line item performance
  goals, we will not spend on cnn.com.
- **Valuation -** Xandr optimization will
  determine the bids on splits. You will not be able to specify max bid
  (how much you are willing to pay for impressions) by split. Spend
  allocations can only be used to influence how much to spend on the
  split as a whole.

Splits When Optimization Is Disabled

If you disable Xandr optimization, you will be
optimizing manually. There will be no discovery of inventory or
valuation of bids on the inventory to reach your performance goal.

- **Spend Allocation** - Split spend allocations will only be observed
  if the line item can also meet its delivery goal. It is possible to
  buy all the inventory in a split.
- **Valuation -** You will be able to specify max bid by split. There
  are two ways to do this:
  - If the revenue type is cost plus or dCPM, you must specify max bid
    by split.
  - If the revenue type is CPM, you can specify bid multipliers by
    split. This modifies the CPM revenue that you entered at the line
    item to calculate a max bid per split. For example, if you entered
    $1 CPM on the line item and assigned a bid multiplier of 3 to a
    split, the max bid for the split would be $3 CPM.
  - If revenue type is CPC or vCPM, there is no valuation option,
    because revenue tracking requires that Xandr
    optimization be enabled and optimization will determine the
    valuation.



Note: The valuation provided by the
split is an expected max bid and not an actual bid. Generally, we try to
lower CPMs as much as we can while still reaching the line item's
delivery goals and the split's spend allocation goals. However, if the
line item settings favor delivery, the maximum bid may be up to twice as
much as the max bid you enter.



Related Topics

- <a href="configure-a-programmable-split.html" class="xref"
  title="You can use programmable splits to refine line item targeting and dynamically adjust bids, budget allocation, and creative allocation across a line item&#39;s targeted inventory. Splits are recommended if you have sophisticated targeting requirements.">Configure
  a Programmable Split</a>
- <a href="update-splits.html" class="xref">Update Splits</a>
- <a href="import-or-export-split-csvs.html" class="xref">Import or Export
  Split CSVs</a>
- <a href="optimization-guide-ali.html" class="xref">Optimization Guide -
  ALI</a>




