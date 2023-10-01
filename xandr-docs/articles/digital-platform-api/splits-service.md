---
Title : Splits Service
Description : <div id="splits-service__note_f5s_crc_xwb"
class="note warning note_warning">
Warning:
The `segment[]`condition is no longer used and will be deprecated on
August 21, 2022. When setting up targeting for new line items, use <a
---


# Splits Service



<div id="splits-service__note_f5s_crc_xwb"
class="note warning note_warning">

Warning:

The `segment[]`condition is no longer used and will be deprecated on
August 21, 2022. When setting up targeting for new line items, use <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html#SplitsService-SegmentGroup"
class="xref" target="_blank">Segment Group</a> (`segment_group`)
instead. For more information, see
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Breaking Change Notice - June 16, 2022 - Splits
Service</a>.



The Splits Service creates and modifies programmable splits for <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
class="xref" target="_blank">augmented line items</a>. When you create a
line item, you specify the inventory you'd like to target, the budget
you'd like to spend over the flight, how you want to track revenue, and
how to use Xandr optimization. **Programmable splits** can further
target subsets of that total inventory, allocate the specified budget to
different targets, set bidding criteria, and distribute creatives. The
targeting on the line item acts as a filter; impressions must match the
criteria specified by the line item before they'll be passed on to
splits. For more information on how splits work, see “Understanding
Splits” in the UI documentation (customer login required).

The Splits Service allows you to specify:

- Targeting conditions
- Bidding rules
- Budget allocation
- Which creatives are associated with a split.



<div id="splits-service__note_jgd_msc_xwb" 

Note: Using splits with custom models
is not currently supported. You will receive an error if you attempt to
create or modify splits on a line item that has a custom model attached.





<div id="splits-service__section_fyd_4sc_xwb" >

## REST API

The Splits service works a little differently from most of Xandr's other
API services. By default, the budget-splitter (Splits) service creates
or modifies all the splits on the line item at the same time instead of
creating or modifying a single split. Rather than creating a single
split, the service creates a `budget-splitter` object (an array) that is
associated with the line item. The `budget-splitter` array contains two
or more splits, and must meet the following requirements:

- The sum of the budget allocation for all splits on a line item must
  always equal 100. This ensures that all impressions for a line item
  are accounted for by at least one split.
- Each split must be assigned a priority, which determines the split to
  which an incoming impression will be assigned if the impression meets
  the targeting requirements for more than one split. The same priority
  cannot be used for more than one split.
- One split must be defined as the default split. This is the fallback
  split to which impressions will be assigned if they don't meet the
  conditions of any of the other splits. The default split is referred
  to as the "Line Item Remainder" in the UI.
- The default split must be named "Default" or "default" and appear as
  the last split listed in the `budget-splitter` array. It cannot be
  assigned any conditions or assigned a capped (constrained) allocation
  strategy, because it is meant as a fallback in case other conditions
  don't apply. You can, however, allocate 0% of your budget to the
  default split, which means it will never serve.
- The default split may only have a bid modifier of "1" or null.
- The default split must be assigned an order, but no matter what order
  it is assigned, it will be prioritized last.

The `POST` method is not supported for the Split service.

To modify an individual split, you must use the `PATCH` method as
described in the examples below.

<div id="splits-service__note_zl3_rsc_xwb" 

Note:

You cannot use the `PATCH` method to modify split allocation. Because
the sum of the budget allocation for all splits on a line item must
equal 100, it is not valid to change the allocation on one split without
changing the allocation on at least one other split.



Unlike other Xandr API services, the JSON for the `budget-splitters`
array does not appear inside a wrapper named after the object. It
appears simply as an unnamed array. For example, this is the JSON file
to create a `budget-splitters` array with three splits:



**Example budget-splitter object**

``` pre
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": 2,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": 1,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "expected_value": 0.5,
        "is_default": true,
        "name": "Default",
        "order": 3
    }
```

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="splits-service__section_fyd_4sc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="splits-service__section_fyd_4sc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="splits-service__section_fyd_4sc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__2"><a
href="https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits"
class="xref"
target="_blank">https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits</a>
{budget-splitter JSON}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__3">Add splits to a
line item which has none.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__2"><a
href="https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits"
class="xref"
target="_blank">https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__3">View all splits
for a line item.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__2"><a
href="https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits"
class="xref"
target="_blank">https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits</a>
{budget-splitter JSON}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__3">Update all
splits for a line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__2"><a
href="https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits"
class="xref"
target="_blank">https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__3">Delete all
splits from a line item. This will delete all splits from the line item
permanently. The information for past splits traffic will still appear
in reporting.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__1">PATCH</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__2"><p><a
href="https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits"
class="xref"
target="_blank">https://api.appnexus.com/budget-splitter/LINE-ITEM-ID/splits</a></p>
<p>(split-update JSON)</p>
<p>#The split ID must appear in the split-update JSON.</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__section_fyd_4sc_xwb__entry__3">Modify a single
split.</td>
</tr>
</tbody>
</table>





<div id="splits-service__section_o3m_kyc_xwb" >

## JSON Fields



<table id="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the split.</p>
<p>Example:</p>
<pre id="splits-service__pre_a2b_5tc_xwb" class="pre"><code>&quot;id&quot;:21197314</code></pre>
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT/PATCH/DELETE</code>, in JSON.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name you assign the split.</p>
<p>Example:</p>
<pre id="splits-service__pre_b2b_5tc_xwb" class="pre"><code>&quot;name&quot;:&quot;Split 123&quot;</code></pre>


Note: The default split must be named
"Default" or "default".

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_default</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Specifies
whether this is the default split, which is used when an impression does
not meet the targeting requirements for any other splits. Every line
item must have one and only one default split. The default split must be
named "Default" or "default" and cannot have any conditions. Possible
values are "true" and "false".</p>
<p>Example:</p>
<pre id="splits-service__pre_c2b_5tc_xwb" class="pre"><code>&quot;is_default&quot;:true</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">conditions</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
targeting conditions for the split. A condition is specified by an array
containing a field, an operator, and a value.</p>
<p>Example:</p>
<pre id="splits-service__pre_d2b_5tc_xwb" class="pre"><code>&quot;conditions&quot;:[{&quot;field&quot;:&quot;city&quot;,&quot;operator&quot;:&quot;in&quot;,&quot;value&quot;:[196646]}]</code></pre>
<p>See <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html#SplitsService-Conditions"
class="xref" target="_blank">Conditions</a> below for more
information.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Specifies
the status of a split. Possible values are "true" or "false".</p>
<p>Example:</p>
<pre id="splits-service__pre_e2b_5tc_xwb" class="pre"><code>&quot;active&quot;:true</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">order</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
priority of this split in the <code
class="ph codeph">budget_splitters</code> array. (In the UI, this field
is referred to as "Priority".)</p>
<p>If an impression meets the targeting requirements for multiple
splits, the priority determines the split to which the impression will
be assigned. For example, suppose that Split A (priority 1) is targeting
"domain=<a href="http://cnn.com/" class="xref"
target="_blank">cnn.com</a>" and Split B (priority 2) is targeting
"city=Boston", and an impression is available from a user in Boston
visiting <a href="http://cnn.com/" class="xref"
target="_blank">cnn.com</a>. The impression will be assigned to Split A
because it has a higher priority than Split B.</p>
<p>You cannot set the same priority for multiple splits.</p>
<p>The order can start at any value, so long as the values are
sequential. For example, the order for three splits can be <code
class="ph codeph">0, 1, 2</code> or <code
class="ph codeph">4, 5, 6</code>.</p>
<p>Example:</p>
<pre id="splits-service__pre_f2b_5tc_xwb" class="pre"><code>&quot;order&quot;:1</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allocation_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
percentage of the line item budget assigned to this split. The
allocation for each split should be between 0 and 100. The sum of the
allocation percentages for all splits in a line item must equal 100.</p>
<p>Example:</p>
<pre id="splits-service__pre_g2b_5tc_xwb" class="pre"><code>&quot;allocation_percent&quot;:30</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allocation_strategy</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Specifies
how to handle conflicts between the split allocation goal and the line
item delivery goal. Possible values are:</p>
<ul>
<li>"unconstrained" - Line item delivery is prioritized over allocation.
When a line item with uncapped splits is underdelivering, the uncapped
splits are permitted to exceed the allocation goal to reach the line
item delivery goal. In the UI, this state is called "uncapped".</li>
<li>"constrained" - Allocation is prioritized over delivery. Even when
line items are underdelivering, capped splits are not permitted to
exceed the allocation goal to help the line item reach its delivery
goal. This will prevent overspend on a split, but may cause the line
item to underdeliver. In the UI, this state is called "capped".</li>
</ul>
<p>For more information, see "Understanding Splits" in the UI
documentation.</p>
<p>Example:</p>
<pre id="splits-service__pre_i2b_5tc_xwb" class="pre"><code>&quot;allocation_strategy&quot;:&quot;unconstrained&quot;</code></pre>
<p><strong>Default:</strong> "unconstrained"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">bid_modifier</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">float</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number used to modify the bid for this split. A bid modifier can only be
applied to a split when the line item's booked revenue type is CPM and
optimization is not enabled. The value of the bid modifier will be
multiplied by the CPM booked revenue to serve as the maximum CPM that
the split can bid.</p>
<p>Example:</p>
<pre id="splits-service__pre_j2b_5tc_xwb" class="pre"><code>&quot;bid_modifier&quot;:1.25</code></pre>

Note:
<ul>
<li>The default split may only have a bid modifier of "1" or null.
Inactive splits must be assigned a bid modifier of "0".</li>
<li>The <code class="ph codeph">bid_modifier</code> field is not used by
GDALI.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">expected_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">float</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
expected value of the impression for this split. An expected value must
be included for each split when the line item's booked revenue type is
cost plus or dCPM and optimization is not enabled. The expected value
serves as the maximum CPM that the split can bid.</p>
<p>Example:</p>
<pre id="splits-service__pre_l2b_5tc_xwb" class="pre"><code>&quot;expected_value&quot;:10.50</code></pre>


Note: The <code
class="ph codeph">expected_value</code> field is not used by GDALI.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Optional.
The IDs of the creatives to be served on this split.</p>
<p>Example:</p>
<pre id="splits-service__pre_m2b_5tc_xwb" class="pre"><code>&quot;creatives&quot;:[{&quot;creative_id&quot;:123},{&quot;creative_id&quot;:456}]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Optional.
Any creative macros that are added to the served creative.</p>
<p>For more information, see <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Macro Check Service</a>.</p>


Note: The <code
class="ph codeph">creative_macros</code> field is not used by GDALI.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">user_test_group_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Optional.
Targets distinct groups of users per split for A/B testing.

Note:
<p>When the Line Item Remainder split is set to active or has a budget
allocation greater than 0%, the line item remainder will always include
the remaining pool of users not targeted by the other splits.
Additionally, the Line Item Remainder split will always include
cookieless users.</p>

<p>If you do not want to serve cookieless users:</p>
<ul>
<li>If you're using allocations, on the default split, set <code
class="ph codeph">allocation_percent</code> to "0".</li>
</ul>
<ul>
<li>If you're not using allocations, on the default split, set <code
class="ph codeph">active</code> to "false".</li>
</ul></td>
</tr>
</tbody>
</table>

**Conditions**





A condition is specified by an array containing a field, an operator,
and a value. For example, to create a condition that targets impressions
from the United States, the condition is:

``` pre
"conditions": [
  {
    "field": "country",
    "operator": "=",
    "value": [
      233
    ]
  }
]
```



**Custom Categories**



Evaluate impressions based on specific custom categories present.

<table id="splits-service__table_yk2_2vc_xwb" class="table">
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">content_category</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Custom category ID.
Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a> to retrieve
custom category IDs.</p>
<div id="splits-service__note_h52_gvc_xwb"
class="note warning note_warning">
Warning:
<p>Custom categories should only be targeted to managed inventory.</p>
</td>
</tr>
</tbody>
</table>

**Key-Value**



Evaluate impressions based on specific key-values present.

<table id="splits-service__table_vqc_lvc_xwb" class="table">
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">key_group</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">and, or</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>A nested conditions
array that specifies key groups. Each key group array includes key
ID(s), action(s) ("include" or "exclude"), and value(s):</p>
<div id="splits-service__note_w31_wxc_xwb"
class="note warning note_warning">
Warning:
<p>Key-values should only be targeted to managed inventory.</p>

<ul>
<li><code class="ph codeph">key_id</code> - the ID of the key. Use the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/targeting-key-service.html"
class="xref" target="_blank">Targeting Key Service</a> to retrieve key
IDs.</li>
<li><code class="ph codeph">action</code> - can be <code
class="ph codeph">"include"</code> or "exclude".</li>
<li><code class="ph codeph">value_equals</code> is an array of value IDs
that must be matched in the auction for the split to be eligible to
serve. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/targeting-value-service.html"
class="xref" target="_blank">Targeting Value Service</a> to retrieve
value IDs. When one value is passed, that key-value combination must be
present on the request for the split to be eligible to serve. When
multiple values are defined in the array, one of the key-value
combinations must be present.</li>
<li><code class="ph codeph">value_less</code> is the high end of the
range of permitted values, exclusive.</li>
<li><code class="ph codeph">value_greater</code> is the low end of the
range of permitted values, exclusive.</li>
</ul>
<p>Key-values may be passed on the impression request. See Xandr’s <a
href="https://docs.xandr.com/bundle/seller-tag/page/seller-tag.html"
class="xref" target="_blank">Seller Tag (AST)</a> for more
information.</p></td>
</tr>
</tbody>
</table>

The following Key-Value example (see JSON below) evaluates to

`[ [include Key ID 123: value ID: [1 OR 2 OR 9] ] AND [exclude Key ID 234: value ID: [20] ] ] OR [include Key ID 789: value ID: [15] ]`

``` pre
{
   "conditions": [{
      "field": "key_group",
      "operator": "or",
      "value": [
         [{
               "key_id": 123,
               "action": "include",
               "value_equals": [1, 2, 9]
            },
            {
               "key_id": 234,
               "action": "exclude",
               "value_equals": [20]
            }
         ],
         [{
            "key_id": 789,
            "action": "include",
            "value_equals": [15]
         }]
      ]
   }]
}
```

**Country**

Evaluate impressions based on the user's country.

<table id="splits-service__table_vsf_myc_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">country</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Country ID or code,
such as <code class="ph codeph">233</code> or <code
class="ph codeph">"US".</code></p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a> to retrieve these IDs
or codes.</p></td>
</tr>
</tbody>
</table>

**Region**

Evaluate impressions based on the user's geographic region.

<table id="splits-service__table_wrg_bzc_xwb" class="table">
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">region</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Region ID or
country/region code combination, such as <code
class="ph codeph">"US:NY"</code>.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a> to retrieve these IDs
and codes.</p></td>
</tr>
</tbody>
</table>

**City**

Evaluate impressions based on the user's city.

<table id="splits-service__table_pkv_3zc_xwb" class="table">
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">city</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>City ID or
country/region/city code combination, such as <code
class="ph codeph">"US:NY:New York"</code>.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/city-service.html"
class="xref" target="_blank">City Service</a> to retrieve these IDs and
codes.</p></td>
</tr>
</tbody>
</table>

**DMA**

Evaluate impressions based on the user's DMA (designated market area).

<table id="splits-service__table_an4_mzc_xwb" class="table">
<colgroup>
<col style="width: 30%" />
<col style="width: 69%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">dma</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>DMA ID, such as <code
class="ph codeph">602</code> (for Chicago metro area).</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/city-service.html"
class="xref" target="_blank">City Service</a> to retrieve DMA
IDs.</p></td>
</tr>
</tbody>
</table>

**Postal Code**

Evaluate impressions based on the user's postal code. Postal code is
available only for some mobile impressions and impressions from external
supply partners.

<table id="splits-service__table_jlv_rzc_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">postal_code</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Postal code ID (an
integer) or country/postal code combination (a string such as <code
class="ph codeph">"CA:J0K 1B0"</code> or <code
class="ph codeph">"US:10010")</code>. Includes US zip codes.</p>
<p>Use the Postal Code Service (documented in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>) to retrieve postal
code IDs.</p></td>
</tr>
</tbody>
</table>

**Postal Code List**

Evaluate impressions based on the user's post codes in the postal code
list.

<table id="splits-service__table_ywn_41d_xwb" class="table">
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">postal_code_list</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Postal code list ID
(an integer).</p>
<p>Use the Postal Code List Service (documented in <a
href="https://docs.xandr.com/bundle/xandr-api/page/postal-code-list-service.html"
class="xref" target="_blank">Postal Code List Service</a>) to retrieve
postal code list IDs.</p></td>
</tr>
</tbody>
</table>

**Size**

Evaluate impressions based on placement size. Please note that in case
promo_sizes are passed in the ad call, the evaluation will be performed
using the primary size only.

<table id="splits-service__table_ltf_x1d_xwb" class="table">
<colgroup>
<col style="width: 30%" />
<col style="width: 69%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">size</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">String representing
placement dimensions, formatted as <code
class="ph codeph">"WIDTHxHEIGHT"</code>.</td>
</tr>
</tbody>
</table>

**Inventory URL ID**

Evaluate impressions based on specific inventory url IDs.

<div id="splits-service__note_zsx_nbd_xwb" 

Note:

Not supported by GDALI.



<table id="splits-service__table_fqm_nbd_xwb" class="table">
<colgroup>
<col style="width: 30%" />
<col style="width: 69%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">inventory_url_id</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Inventory URL ID.</p>
<p>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/validate-inventory-item-service.html"
class="xref" target="_blank">Validate Inventory Item Service</a> to
retrieve these IDs.</p></td>
</tr>
</tbody>
</table>

**Domain**

Evaluate impressions based on domain.



<div id="splits-service__note_opx_sbd_xwb" 

Note: Not supported by GDALI.





<div id="splits-service__note_k1k_tbd_xwb" 

Note:

This feature is not supported in the Invest UI. If you will also be
using the UI to manage your splits, use the Inventory URL ID feature
(within this service) instead.



<table id="splits-service__table_dm4_sbd_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">domain</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">String representing a
top-level domain name, such as <code class="ph codeph">"</code><a
href="http://food.com/" class="xref" target="_blank"><code
class="ph codeph">food.com</code></a><code class="ph codeph">"</code> or
<code class="ph codeph">"books"</code>.</td>
</tr>
</tbody>
</table>

**Mobile App**

Evaluate impressions based on specific mobile apps.



<div id="splits-service__note_ktx_xbd_xwb" 

Note: Not supported by GDALI.





<table id="splits-service__table_e24_xbd_xwb" class="table">
<colgroup>
<col style="width: 34%" />
<col style="width: 65%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">mobile_app_bundle</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Mobile app ID or
names.</p>
<p>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/mobile-app-service.html"
class="xref" target="_blank">Mobile App Service</a> to retrieve these
IDs or names.</p></td>
</tr>
</tbody>
</table>

**Placement**

Evaluate impressions based on specific placements.

<table id="splits-service__table_whf_hcd_xwb" class="table"
style="width:100%;">
<colgroup>
<col style="width: 34%" />
<col style="width: 65%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">placement</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Placement ID.</p>
<p>Placement ID is listed as <code class="ph codeph">tag_id</code> in
log-level data.</p></td>
</tr>
</tbody>
</table>

**Publisher**

Evaluate impressions based on specific publishers.

<table id="splits-service__table_avj_rcd_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">publisher</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Publisher ID.</p>

Tip:
<p>Publisher ID is listed as <code class="ph codeph">publisher_id</code>
in log-level data.</p>
</td>
</tr>
</tbody>
</table>

**Seller Member**

Evaluate impressions based on specific seller members.

<div id="splits-service__note_k5l_xcd_xwb" 

Note:

Not supported by GDALI.



<table id="splits-service__table_v4b_xcd_xwb" class="table"
style="width:100%;">
<colgroup>
<col style="width: 34%" />
<col style="width: 65%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">seller_member_id</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Member ID of the
seller.</td>
</tr>
</tbody>
</table>

**Deal ID**



Target deal inventory.

<div id="splits-service__note_unw_bdd_xwb" 

Note: Not supported by GDALI.





<table id="splits-service__table_d2m_bdd_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">deal_id</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Deal ID.</td>
</tr>
</tbody>
</table>

**Deal List ID**

Target deal list inventory.



<div id="splits-service__note_rxr_gdd_xwb" 

Note: Not supported by GDALI.





<table id="splits-service__table_rwh_gdd_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">deal_list</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Deal List ID.</td>
</tr>
</tbody>
</table>

**Operating System Family**

Evaluate impressions based on the user's operating system.

<table id="splits-service__table_rth_c2d_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">os_family</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Operating System
Family ID or name, such as <code class="ph codeph">2</code> or <code
class="ph codeph">"Android"</code>.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family Service</a> to
retrieve these IDs and names.</p></td>
</tr>
</tbody>
</table>

**Operating System Version**

Evaluate impressions based on the specific **version** of the user's
operating system.

<table id="splits-service__table_ev3_g2d_xwb" class="table">
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">os_extended</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Operating System
Extended ID, such as 81 for <code
class="ph codeph">"10.8 Mountain Lion"</code>.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended Service</a> to
retrieve these IDs.</p>

Note:
<p>Operating system ID is listed as <code
class="ph codeph">operating_system</code> in log-level data.</p>
</td>
</tr>
</tbody>
</table>

**Browser**

Evaluate impressions based on the user's browser.

<table id="splits-service__table_vx4_k2d_xwb" class="table">
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">browser</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Browser ID or name,
such as <code class="ph codeph">8</code> or <code
class="ph codeph">"Chrome (all versions)"</code>.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/browser-service.html"
class="xref" target="_blank">Browser Service</a> to retrieve these IDs
and names.</p></td>
</tr>
</tbody>
</table>

**Browser Language**

Evaluate impressions based on the browser language.

<table id="splits-service__table_ndd_jfd_xwb" class="table">
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">language</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Language ID.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a> to retrieve these
IDs.</p></td>
</tr>
</tbody>
</table>

**Device Type**

Evaluate impressions based on specific types of physical devices.

<table id="splits-service__table_hb2_4fd_xwb" class="table">
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">device_type</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Device type name.
Possible values:</p>
<ul>
<li><code class="ph codeph">"pc &amp; other devices" </code>- Use this
value to target desktops and laptops.</li>
<li><code class="ph codeph">"phone"</code> - Use this value to target
mobile phones.</li>
<li><code class="ph codeph">"tablet"</code>- Use this value to target
mobile tablets.</li>
</ul></td>
</tr>
</tbody>
</table>

**Device Model**

Evaluate impressions based on specific models of physical devices.

<table id="splits-service__table_w5y_rfd_xwb" class="table">
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">device_model</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Device model ID.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to retrieve these
IDs.</p>
<p>Device model ID is listed as <code class="ph codeph">device_id</code>
in log-level data.</p></td>
</tr>
</tbody>
</table>

**Carrier**

Evaluate impressions based on specific mobile carriers.

<table id="splits-service__table_sks_wfd_xwb" class="table">
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">carrier</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not_in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Mobile carrier ID or
name, such as <code class="ph codeph">14</code> or <code
class="ph codeph">"Verizon"</code>.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/carrier-service.html"
class="xref" target="_blank">Carrier Service</a> to retrieve these IDs
and names.</p></td>
</tr>
</tbody>
</table>

**Predicted IAB Viewability Rate**

(Previously known as "Estimated IAB Viewability Rate".) Evaluate web
display impressions by how likely they are to be measured as viewable by
the IAB standard, as determined by the Optimization Guide (available in
the UI documentation).



<div id="splits-service__note_jwr_dgd_xwb" 

Note: Not supported by GDALI.





<table id="splits-service__table_pzg_1gd_xwb" class="table">
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">predicted_iab_view_rate</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">&lt;, &lt;=, =, &gt;,
&gt;=</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Decimal number between
<code class="ph codeph">0</code> and 1, representing a percentage.</td>
</tr>
</tbody>
</table>

**Predicted IAB Video Viewability Rate**

Evaluate web video impressions by how likely they are to be measured as
viewable by the IAB standard, as determined by the Optimization Guide
(available in the UI documentation).



<div id="splits-service__note_ew1_hgd_xwb" 

Note: Not supported by GDALI.





<table id="splits-service__table_qlr_ggd_xwb" class="table">
<colgroup>
<col style="width: 30%" />
<col style="width: 69%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">predicted_iab_video_view_rate</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">&lt;, &lt;=, =, &gt;,
&gt;=</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Decimal number between
<code class="ph codeph">0</code> and 1, representing a percentage.</td>
</tr>
</tbody>
</table>

**Predicted Video Completion Rate**

Evaluate web video impressions by how likely they are to be completed,
as determined by the Optimization Guide (available in the UI
documentation).



<div id="splits-service__note_xpm_ngd_xwb" 

Note: Not supported by GDALI.





<table id="splits-service__table_qtd_ngd_xwb" class="table">
<colgroup>
<col style="width: 30%" />
<col style="width: 69%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">estimated_video_completion_rate</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">&lt;, &lt;=, =, &gt;,
&gt;=</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Decimal number between
<code class="ph codeph">0</code> and 1, representing a percentage. <code
class="ph codeph">0</code> represents non-video inventory.</td>
</tr>
</tbody>
</table>

**Creative**

The creatives to serve on this split.

<table id="splits-service__table_mxh_mhd_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">creative</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>List of creative
IDs.</p>
<p>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> to retrieve these
IDs.</p></td>
</tr>
</tbody>
</table>

**Segment Group**

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Field</strong></td>
<td class="entry"><p><code class="ph codeph">segment_group</code></p>
<p>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
class="xref" target="_blank">Segment Service</a> to retrieve segment
IDs.</p></td>
</tr>
<tr class="even row">
<td class="entry"><strong>Operator</strong></td>
<td class="entry">and, or</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>Value</strong></td>
<td class="entry"><p>A nested conditions array that specifies segment
groups. Each segment group array includes segment ID, age, value, and
action ("include" or "exclude").</p>
<ul>
<li><code class="ph codeph">action</code> may be "include" or
"exclude".</li>
<li><code class="ph codeph">start_minutes</code> is the lower bound of
minutes since the user has been added to this segment, inclusive. <code
class="ph codeph">"start_minutes": 5 </code>includes users who have been
added to the segment from the five-minute mark, including 5:00.</li>
<li><code class="ph codeph">expire_minutes</code> is the upper bound of
minutes since the user has been added to this segment, inclusive. <code
class="ph codeph">"expire_minutes": 10 </code>includes users who have
been added to the segment until the ten-minute mark, including
10:00.</li>
<li><p><code class="ph codeph">value_less </code>is the low end of the
range of permitted values, exclusive. <code
class="ph codeph">"value_less" : 5</code> includes only values greater
than, but not including, 5.</p></li>
<li><p><code class="ph codeph">value_greater </code>is the high end of
the range of permitted values, exclusive. <code
class="ph codeph">"value_greater" : 10</code> includes only values up
to, but not including, 10.</p></li>
<li><code class="ph codeph">value_equals</code> is the exact match to
the permitted value. <code class="ph codeph">“value_equals” : 5</code>
includes only values equal to 5.</li>
<li><p>Unlike the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>, the Splits service
allows you to target segment values of zero (0).</p>
<pre id="splits-service__codeblock_n2h_n3d_xwb"
class="pre codeblock"><code>&quot;conditions&quot;: [
            {
                &quot;field&quot;: &quot;segment_group&quot;,
                &quot;operator&quot;: &quot;and&quot;,
                &quot;value&quot;: [ 
                            [
                                {   
                                    &quot;segment_ID&quot;: SEGMENT_ID,
                                    &quot;action&quot;: SEGMENT_ACTION,
                                    &quot;start_minutes&quot;: YOUNGEST_SEGMENT_AGE,
                                    &quot;expire_minutes&quot;: OLDEST_SEGMENT_AGE,
                                    &quot;value_less&quot;: LOWER_BOUND_SEGMENT_VALUE,
                                    &quot;value_greater&quot;: UPPER_BOUND_SEGMENT_VALUE,
                                    &quot;value_equals&quot;: EXACT_SEGMENT_VALUE
                                }
                        &#10;                            ]
                        ]
                }
            ]</code></pre></li>
</ul>
Segment values may be passed in a number of ways, for example, through
the Batch Segment Service or a first-party or third-party segment query
string.</td>
</tr>
</tbody>
</table>

**Segment**

<div id="splits-service__note_zwc_t3d_xwb"
class="note warning note_warning">

Warning:

The `segment[]`condition is no longer used and will be deprecated on
August 21, 2022. When setting up targeting for new line items, use <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html#SplitsService-SegmentGroup"
class="xref" target="_blank">Segment Group</a> (`segment_group`)
instead.



<table id="splits-service__table_akm_q3d_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p><code
class="ph codeph">segment[SEGMENTID,...]</code></p>
<p>where <code class="ph codeph">SEGMENTID</code> is an optional list of
segment IDs.</p>
<p>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
class="xref" target="_blank">Segment Service</a> to retrieve segment
IDs.</p></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">&lt;, &lt;=, =, &gt;,</code> &gt;=, present,
absent</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>A nested conditions
array that specifies segment age, value, or presence.</p>
<ul>
<li>Segment presence is "present" or "absent".</li>
<li>Segment age is measured in minutes and must be a positive
integer.</li>
<li>Segment value is a non-zero, positive integer representing a
user-defined value.</li>
</ul>
<pre id="splits-service__codeblock_i3q_w3d_xwb"
class="pre codeblock"><code>&quot;conditions&quot;: [
            {
                &quot;field&quot;: &quot;segment[]&quot;,
                &quot;operator&quot;: &quot;any&quot;,
                &quot;value&quot;: [
                    {
                        &quot;conditions&quot;: [
                            {
                                &quot;field&quot;: &quot;age&quot;,
                                &quot;operator&quot;: &quot;&lt;=&quot;,
                                &quot;value&quot;: 1440
                            }
                        ],
                        &quot;id&quot;: 275913
                    }
                ]
            }
        ],</code></pre>
Segment values may be passed in a number of ways, for example, through
the Batch Segment Service or a first-party or third-party segment query
string.</td>
</tr>
</tbody>
</table>

Evaluate impressions based on the presence, absence, value, or segment
age of the user in a first-party or third-party segment.

**Daily Frequency**

The number of ads seen by a user for an advertiser, line item, or split
on the current day.

<table id="splits-service__table_dvw_1jd_xwb" class="table">
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p><code
class="ph codeph">OBJECT[ID].</code><code
class="ph codeph">day_frequency</code></p>
<p>where the object is <code
class="ph codeph">advertiser, line_item</code>, or <code
class="ph codeph">campaign</code> (representing split), and ID is the
object ID. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>, or <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
class="xref" target="_blank">Splits Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p><code
class="ph codeph">&gt;</code><code
class="ph codeph">, =&gt;, </code><code
class="ph codeph">&lt;</code><code
class="ph codeph">, =&lt;, </code><code class="ph codeph">=</code></p>
<div id="splits-service__note_wrl_djd_xwb"
class="note important note_important">
Important: Although the operator <code
class="ph codeph">=</code> is supported for frequency and recency, we
<strong>strongly recommend</strong> that you do not use it, as it tends
to cause underdelivery. This is because when you target an impression
with <code class="ph codeph">frequency=5</code>, you exclude impressions
with frequencies equal to 0, 1, 2, 3, or 4.
</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Positive integer. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has not seen this object on the current day).</td>
</tr>
</tbody>
</table>

**Lifetime Frequency**

The number of ads seen by a user over the lifetime of an advertiser,
line item, or split.

<table id="splits-service__table_gcj_qjd_xwb" class="table">
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p><code
class="ph codeph">OBJECT[ID].</code><code
class="ph codeph">lifetime_frequency</code></p>
<p>where the object is <code
class="ph codeph">advertiser, line_item,</code> or <code
class="ph codeph">campaign</code> (representing split), and ID is the
object ID. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>, or <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
class="xref" target="_blank">Splits Service</a> to retrieve IDs.</p>
<div id="splits-service__note_pby_5jd_xwb"
class="note caution note_caution">
CAUTION: Although the operator <code
class="ph codeph">=</code> is supported for frequency and recency, we
<strong>strongly recommend</strong> that you do not use it, as it tends
to cause underdelivery. This is because when you target an impression
with <code class="ph codeph">frequency=5</code>, you exclude impressions
with frequencies equal to 0, 1, 2, 3, or 4.
</td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">&gt;</code>, =&gt;, <code
class="ph codeph">&lt;</code>, =&lt;, <code
class="ph codeph">=</code></td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">Positive integer. <code
class="ph codeph">0</code> indicates no frequency information is
available (the user has never seen this object).</td>
</tr>
</tbody>
</table>

**Recency**

The number of minutes since a user has seen an ad. This can be
determined for a user for all ads under an advertiser, line item, or
split.

<table id="splits-service__table_bxf_1kd_xwb" class="table">
<colgroup>
<col style="width: 22%" />
<col style="width: 77%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p><code
class="ph codeph">OBJECT[ID].</code><code
class="ph codeph">recency</code></p>
<p>where the object is <code
class="ph codeph">advertiser, line_item,</code> or <code
class="ph codeph">campaign</code> (representing split), and ID is the
object ID. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>, or <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
class="xref" target="_blank">Splits Service</a> to retrieve
IDs.</p></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p><code
class="ph codeph">&gt;</code><code
class="ph codeph">, =&gt;, </code><code
class="ph codeph">&lt;</code><code
class="ph codeph">, =&lt;, </code><code class="ph codeph">=</code></p>
<div id="splits-service__note_uxz_2kd_xwb"
class="note important note_important">
Important: Although the operator <code
class="ph codeph">=</code> is supported for frequency and recency, we
<strong>strongly recommend</strong> that you do not use it, as it tends
to cause underdelivery. This is because when you target an impression
with <code class="ph codeph">frequency=5</code>, you exclude impressions
with frequencies equal to 0, 1, 2, 3, or 4.
</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1">A positive integer
indicating the number of minutes since a user has seen an impression,
rounded down. 59 seconds will evaluate to <code
class="ph codeph">0</code>, 61 seconds will evaluate to 1. <code
class="ph codeph">0</code> means the impression was seen very recently.
<code class="ph codeph">Null</code> means no recency data is available
(the user has not seen this impression before).</td>
</tr>
</tbody>
</table>

**Inventory Type**

The type of inventory ("app" or "web") targeted by the split. "App"
targets mobile app inventory and "web" targets web inventory (including
pages shown in mobile web browsers).

<table id="splits-service__table_z3q_mkd_xwb" class="table">
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">inventory_type</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">=, in, not in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>"web", "app"</p>

Example:
<pre id="splits-service__codeblock_cyf_qkd_xwb"
class="pre codeblock"><code>&quot;conditions&quot;: [
    {
    &quot;field&quot;: &quot;inventory_type&quot;,
    &quot;operator&quot;: &quot;in&quot;,
    &quot;value&quot;: [
        &quot;app&quot;,
        &quot;web&quot;
        ]
    }
]</code></pre>
</td>
</tr>
</tbody>
</table>

**Inventory URL List**

Target an allowlist or blocklist established at the Network level. You
can only target a single list.



<div id="splits-service__note_tgz_kld_xwb" 

Note: Not supported by GDALI.







<table id="splits-service__table_qnv_mld_xwb" class="table"
style="width:100%;">
<colgroup>
<col style="width: 35%" />
<col style="width: 64%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">inventory_url_list</code></td>
</tr>
<tr class="even row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Operator</strong></td>
<td class="entry align-left colsep-1 rowsep-1">all, not in</td>
</tr>
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
<td class="entry align-left colsep-1 rowsep-1"><p>Inventory list ID.</p>
<pre id="splits-service__pre_rnv_mld_xwb" class="pre"><code>&quot;conditions&quot;:[{&quot;field&quot;:&quot;inventory_url_list&quot;,&quot;operator&quot;:&quot;not in&quot;,&quot;value&quot;:[12345]}]</code></pre>
<p>To create an inventory list, or retrieve the list IDs for use in
split targeting, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/inventory-list-service.html"
class="xref" target="_blank">Inventory List Service</a>.</p></td>
</tr>
</tbody>
</table>





<div id="splits-service__section_wns_qld_xwb" >

## Examples

**Create splits for a line item with cost-plus booked revenue and
optimization disabled**

This example creates three splits for Line Item 6377624:

- Split 1 - User must be using the Chrome browser. Impressions are
  assigned an expected value of 2. Forty percent of the line item's
  traffic is allocated to this split, which is first in priority.
  Allocation is unconstrained.
- Split 2 - Impressions must belong to Segment 275913 and must have been
  added within the last 1440 minutes. They are assigned an expected
  value of 1. Thirty percent of the line item's traffic is allocated to
  this split, which is second in priority. Allocation is unconstrained.
- Split 3 (unnamed) - The default split. Impressions are assigned an
  expected value of 0.5. Thirty percent of the line item's traffic is
  allocated to this split, which is third in priority. Allocation is
  unconstrained.



Since optimization is disabled, we are setting expected values for the
splits.

``` pre
$ cat ali_cost_plus_ev.json
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": 2,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": 1,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "expected_value": 0.5,
        "is_default": true,
        "name": "Default",
        "order": 3
    }

$ curl -b cookies -X PUT -s -d '@ali_cost_plus_ev.json' "https://api.appnexus.com/budget-splitter/6377624/splits"   
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": 2,
        "id": 24025228,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": 1,
        "id": 24025229,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "expected_value": 0.5,
        "id": 24025230,
        "is_default": true,
        "name": "Default",
        "order": 3
    }
]
```



**Create splits for a line item with cost-plus booked revenue and
optimization enabled**

This example creates three splits for Line Item 6377631:

- Split 1 - User must be using the Chrome browser. Impressions are
  assigned an expected value of 2. Forty percent of the line item's
  traffic is allocated to this split, which is first in priority.
  Allocation is unconstrained.
- Split 2 - Impressions must belong to Segment 275913 and must have been
  added within the last 1440 minutes. They are assigned an expected
  value of 1. Thirty percent of the line item's traffic is allocated to
  this split, which is second in priority. Allocation is unconstrained.
- Split 3 (unnamed) - The default split. Impressions are assigned an
  expected value of 0.5. Thirty percent of the line item's traffic is
  allocated to this split, which is third in priority. Allocation is
  unconstrained.

``` pre
$ cat ali_cost_plus_opt.json
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "expected_value": null,
        "is_default": true,
        "name": "Default",
        "order": 3
    }


$ curl -b cookies -X PUT -s -d '@ali_cost_plus_opt.json' "https://api.appnexus.com/budget-splitter/6377631/splits"
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "id": 24025315,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "id": 24025316,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": null,
        "expected_value": null,
        "id": 24025317,
        "is_default": true,
        "name": "Default",
        "order": 3
```

**Create splits for a line item with CPM booked revenue and optimization
disabled**

This example creates three splits for Line Item 6377633:

- Split 1 - User must be using the Chrome browser. Bids are multiplied
  by 0.5. Forty percent of the line item's traffic is allocated to this
  split, which is first in priority. Allocation is unconstrained.
- Split 2 - Impressions must belong to Segment 275913 and must have been
  added within the last 1440 minutes. Bids are multiplied by 0.4. Thirty
  percent of the line item's traffic is allocated to this split, which
  is second in priority. Allocation is unconstrained.
- Split 3 (unnamed) - The default split. Bids are multiplied by 1 (they
  remain the same). Thirty percent of the line item's traffic is
  allocated to this split, which is third in priority. Allocation is
  unconstrained.



Since optimization is disabled, we are setting bid modifiers for each
split.

``` pre
$ cat ali_cpm_bid_modifier.json
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": 0.5,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": 0.4,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": 1,
        "expected_value": null,
        "is_default": true,
        "name": "Default",
        "order": 3
    }

$ curl -b cookies -X PUT -s -d '@ali_cpm_bid_modifier.json' "https://api.appnexus.com/budget-splitter/6377633/splits"   
[
    {
        "active": true,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "bid_modifier": 0.5,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "id": 24025342,
        "is_default": false,
        "name": "Split 1",
        "order": 1
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": 0.4,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creative_macros": [],
        "creatives": [],
        "expected_value": null,
        "id": 24025343,
        "is_default": false,
        "name": "Split 2",
        "order": 2
    },
    {
        "active": true,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "bid_modifier": 1,
        "expected_value": null,
        "id": 24025344,
        "is_default": true,
        "name": "Default",
        "order": 3
    }
]
```



**Update one split on a line item**



In this example, Line Item 5200075 already has 3 splits, all with
unconstrained allocation strategies. We update Split 1 to use a
constrained allocation strategy.

``` pre
# View the current splits
$ curl -b cookies 'https://api.appnexus.com/budget-splitter/5200075/splits'
    {
        "id": 24025093,
        "name": "Split 1",
        "is_default": false,
        "active": true,
        "bid_modifier": null,
        "expected_value": 2,
        "allocation_percent": 40,
        "allocation_strategy": "unconstrained",
        "order": 1,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creatives": [

        ],
        "creative_macros": [

        ]
    },
    {
        "id": 24025094,
        "name": "Split 2",
        "is_default": false,
        "active": true,
        "bid_modifier": null,
        "expected_value": 1,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "order": 2,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creatives": [

        ],
        "creative_macros": [

        ]
    },
    {
        "id": 24025096,
        "name": "Default",
        "is_default": true,
        "active": true,
        "bid_modifier": null,
        "expected_value": 0.5,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "order": 3
    }
]

# View the split1-update JSON 
$ cat split1-update.json
[
    {
        "id": 24025093,
        "name": "Split 1",
        "is_default": false,
        "active": true,
        "bid_modifier": null,
        "expected_value": 2,
        "allocation_percent": 40,
        "allocation_strategy": "constrained",
        "order": 1,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creatives": [
        ],
        "creative_macros": [
        ]
    }
]

# Update Split 1

$ curl -b cookies -X PATCH -d @split1_update.json 'https://api.appnexus.com/budget-splitter/5200075/splits'
[
    {
        "id": 24025093,
        "name": "Split 1",
        "is_default": false,
        "active": true,
        "bid_modifier": null,
        "expected_value": 2,
        "allocation_percent": 40,
        "allocation_strategy": "constrained",
        "order": 1,
        "conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8
                ]
            }
        ],
        "creatives": [

        ],
        "creative_macros": [

        ]
    },
    {
        "id": 24025094,
        "name": "Split 2",
        "is_default": false,
        "active": true,
        "bid_modifier": null,
        "expected_value": 1,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "order": 2,
        "conditions": [
            {
                "field": "segment_group",
                "operator": "and",
                "value": [
                            [
                                {
                                "segment_id": 275913,
                                "start_minutes": 0,
                                "expire_minutes": 1440
                                }
                            ]
                         ]    
            }
        ],
        "creatives": [

        ],
        "creative_macros": [

        ]
    },
    {
        "id": 24025096,
        "name": "Default",
        "is_default": true,
        "active": true,
        "bid_modifier": null,
        "expected_value": 0.5,
        "allocation_percent": 30,
        "allocation_strategy": "unconstrained",
        "order": 3
    }
]
```





<div id="splits-service__section_cbt_hnd_xwb" >

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
  class="xref" target="_blank">Line Item Service - ALI</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/splits-service-troubleshooting.html"
  class="xref" target="_blank">Splits Service Troubleshooting</a>








