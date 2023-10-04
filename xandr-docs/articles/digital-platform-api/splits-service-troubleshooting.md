---
Title : Splits Service Troubleshooting
Description : This page explains error messages and common issues that may occur when
using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
---


# Splits Service Troubleshooting



This page explains error messages and common issues that may occur when
using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
class="xref" target="_blank">Splits Service</a>.

**Error Messages**

<div id="splits-service-troubleshooting__SplitsServiceTroubleshooting-ErrorMessages"
>

This table lists common error messages and their meanings.



<table id="splits-service-troubleshooting__table_smz_b4d_xwb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Error Message</th>
<th id="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Fix</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_tmz_b4d_xwb"
class="pre"><code>Splits are missing allocation_percent:[Split-Name]</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">One
of the individual splits is missing an allocation percentage. Make sure
all splits have allocation percentages and the sum of the allocation
percentages is 100.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_umz_b4d_xwb"
class="pre"><code>Splits should sum to 100 but summed to:XX</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">The
sum of the allocations for all splits must equal 100. Modify the <code
class="ph codeph">allocation_percent</code> for the splits.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_fk2_44d_xwb"
class="pre codeblock"><code>&quot;splits&quot; at position 1 fails 
because 
[child &quot;allocation_strategy&quot; fails because [&quot;allocation_strategy&quot; 
must be one of [unconstrained, constrained]]]&quot;</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">At
least one split has no allocation strategy set. Make sure each split has
an <code class="ph codeph">allocation_strategy</code> equal to
"constrained", or "unconstrained".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_qx2_m4d_xwb"
class="pre"><code>&quot;child &quot;Default Split&quot; fails because [child &quot;allocation_strategy&quot; 
fails because [&quot;allocation_strategy&quot; must be one of[unconstrained]]]</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">The
allocation strategy for the default split must be "unconstrained".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_rx2_m4d_xwb"
class="pre"><code>There should be exactly 1 active split with is_default =true</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">Make
sure the <code class="ph codeph">budget_splitter</code> array contains
one active default split (whose name is “Default” or “default”) and
which has <code class="ph codeph">is_default</code> set to “True”. This
marks the line item remainder split.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_wq2_54d_xwb"
class="pre codeblock"><code>child &quot;Default Split&quot; fails because child &quot;bid_modifier&quot; 
fails because &quot;bid_modifier&quot; must be one of [1, null]</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">The
bid modifier for the default split must be set to either 1 or null. When
revenue type is CPM and optimization is disabled, the bid modifier
should be 1. For all other booked revenue and optimization combinations,
the bid modifier should be set to <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_uxh_w4d_xwb"
class="pre codeblock"><code>child &quot;Default Split&quot; fails because child 
&quot;conditions&quot; fails because &quot;conditions&quot; is not allowed</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">The
default split may not have any conditions. Remove any conditions
specified for the default split in your JSON.The default split must be
the last split in the <code class="ph codeph">budget-splitter</code>
array.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_xr2_y4d_xwb"
class="pre codeblock"><code>The default split must be the last split in the splits array</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">The
default split must be the last split in the <code
class="ph codeph">budget-splitter</code> array.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_clr_cpd_xwb"
class="pre codeblock"><code>child &quot;Default Split&quot; fails [because child &quot;name&quot; 
fails [because &quot;name&quot; must be one of [Default, default]]]</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">The
default split must be named "Default" or "default".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_anh_2pd_xwb"
class="pre codeblock"><code>Splits have duplicate orders: &quot;Split 1&quot; has order 1 and &quot;Split 2&quot; 
has order 1 and &quot;Default&quot; has order 1&quot;</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">Each
split must have a unique priority (order value).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_ldt_1c2_xwb"
class="pre codeblock"><code>&quot;order&quot; is required</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">At
least one split does not have a priority assigned. Assign a value to
<code class="ph codeph">order</code> for all splits.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_zh1_dc2_xwb"
class="pre"><code>Duplicate campaign IDs found</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">Currently,
your <code class="ph codeph">budget-splitter</code> array assigns the
same ID to more than one split. Split IDs must be unique.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_a31_dc2_xwb"
class="pre"><code>An inactive split cannot have an allocation_percent</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">An
inactive split cannot have an allocation percentage greater than 0 even
if the allocations for all the active splits equals 100. Explicitly set
any inactive splits to 0.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_oxh_2c2_xwb"
class="pre"><code>&quot;operator&quot; must be one of[any, not_any, every, not_every],&quot;value&quot; must be an array</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">If
you use the operators "in" or "not_in" in a condition, the value must be
an array.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_pxh_2c2_xwb"
class="pre"><code>&quot;Payload&quot; must contain at least 2 items</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">You
are trying to set up a <code class="ph codeph">budget-splitter</code>
object containing only one split. The <code
class="ph codeph">budget-splitter</code> must contain two or more
splits, including the default split.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_qxh_2c2_xwb"
class="pre"><code>&quot;You cannot supply both expected_value and bid_modifier for splits&quot;</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">You
can only supply either an expected value or a bid modifier on a split.
The required setup depends on the combination of the ALI booked revenue
and optimization, as detailed below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__codeblock_cpb_hc2_xwb"
class="pre codeblock"><code>&quot;\&quot;operator\&quot; must be one of [in, 
not_in, all, not_all]&quot;</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">You
are using an invalid operator for the <code
class="ph codeph">device_type</code> condition.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_lyw_fc2_xwb"
class="pre"><code>An internal server error occurred </code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">This
error can mean multiple things. Some possibilities to check are:
<ul>
<li>You are trying to create splits for a line item which already has a
custom model attached. Line items cannot have both splits and custom
models. Remove the custom model before creating the splits.</li>
<li>You are trying to set the default split as active with an allocation
percentage of 100 and set all other splits as inactive. The default
split cannot be the only active split.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__1"><pre
id="splits-service-troubleshooting__pre_nyw_fc2_xwb"
class="pre"><code>Invalid request payload JSON format</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_smz_b4d_xwb__entry__2">This
error can mean multiple things. Some possibilities to check out are:
<ul>
<li>You have more than one split defined as the default split. Make sure
only one split has the name "Default" or "default" and has <code
class="ph codeph">is_default</code> set to <code
class="ph codeph">"true"</code>.</li>
<li>You are using the operator “in” or “not_in” and have not included
the value/s in an array. Make sure that arrays are user for certain
conditions and value/s are listed inside square brackets ([]).</li>
<li>You have failed to enclose a string value inside quotation marks
("").</li>
</ul></td>
</tr>
</tbody>
</table>

<div id="splits-service-troubleshooting__section_xbj_kc2_xwb"
>

## Booked Revenue, Optimization, and Bid Modifiers/Expected Value

This table describes all the functional combinations of booked revenue +
optimization + inclusion of bid modifiers/expected values on splits.

<table id="splits-service-troubleshooting__table_j24_lc2_xwb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">ALI Booked Revenue</th>
<th id="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Optimization</th>
<th id="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Set Bid Modifiers/EVs on
Splits?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">Cost
Plus</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"><img
src="https://xandr-be-prod.zoominsoftware.io/bundle/xandr-api/page/files/_95783440check.svg?_LANG=enus"
id="splits-service-troubleshooting__image_k24_lc2_xwb" class="image"
alt="(tick)" /></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">Neither</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">Cost
Plus</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"><img
src="https://xandr-be-prod.zoominsoftware.io/bundle/xandr-api/page/files/_95783440error.svg?_LANG=enus"
id="splits-service-troubleshooting__image_l24_lc2_xwb" class="image"
alt="(error)" /></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">EVs</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">CPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"><img
src="https://xandr-be-prod.zoominsoftware.io/bundle/xandr-api/page/files/_95783440check.svg?_LANG=enus"
id="splits-service-troubleshooting__image_m24_lc2_xwb" class="image"
alt="(tick)" /></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">Neither</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">CPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"><img
src="https://xandr-be-prod.zoominsoftware.io/bundle/xandr-api/page/files/_95783440error.svg?_LANG=enus"
id="splits-service-troubleshooting__image_n24_lc2_xwb" class="image"
alt="(error)" /></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">Bid
Modifiers</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">CPC</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">Neither</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">dCPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"><img
src="https://xandr-be-prod.zoominsoftware.io/bundle/xandr-api/page/files/_95783440check.svg?_LANG=enus"
id="splits-service-troubleshooting__image_o24_lc2_xwb" class="image"
alt="(tick)" /></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">Neither</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">dCPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2"><img
src="https://xandr-be-prod.zoominsoftware.io/bundle/xandr-api/page/files/_95783440error.svg?_LANG=enus"
id="splits-service-troubleshooting__image_p24_lc2_xwb" class="image"
alt="(error)" /></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">EVs</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__1">vCPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__2">Required</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="splits-service-troubleshooting__table_j24_lc2_xwb__entry__3">Neither</td>
</tr>
</tbody>
</table>



<div id="splits-service-troubleshooting__section_i45_yc2_xwb"
>

## Frequently Asked Questions

**How do I include multiple conditions in a split?**



The correct way to do this is to include multiple conditions inside a
single conditions array:

``` pre
"conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8,10,11
                ]
            }
            {
                "field": "country",
                "operator": "in",
                "value": [
                    233
                ]
            }
        ],
```

It is **incorrect** to include multiple conditions inside a single
`budget-splitter` array. In the following example, the API call will
run, but only the first `conditions` array will be used in the split's
targeting. The second `conditions` array will be ignored.

``` pre
"conditions": [
            {
                "field": "browser",
                "operator": "in",
                "value": [
                    8,10,11
                ]
            }
        ],
        "conditions": [
            {
                "field": "country",
                "operator": "in",
                "value": [
                    233
                ]
            }
        ],
```



**Can I include decimal points in allocation percentages?**

Yes, as long as the sum of all allocation percentages is 100.

**If I do not include allocation perceptions in the API call, what
happens?**

The line item will spend as normal and the splits targeting will be used
for reporting only.



<div id="splits-service-troubleshooting__section_l55_jd2_xwb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
  class="xref" target="_blank">Splits Service</a>








