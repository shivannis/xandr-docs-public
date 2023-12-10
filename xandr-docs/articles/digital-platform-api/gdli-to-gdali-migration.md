---
Title : GDLI to GDALI Migration
ms.date: 10/28/2023
ms.custom: digital-platform-api
## Overview
Xandr now offers a Guaranteed Delivery Augmented
Line Item (GDALI) that is based on our Augmented Line Item (ALI) and
associated with the Seamless Insertion Order. The new GDALI offers
---


# GDLI to GDALI Migration




## Overview

Xandr now offers a Guaranteed Delivery Augmented
Line Item (GDALI) that is based on our Augmented Line Item (ALI) and
associated with the Seamless Insertion Order. The new GDALI offers
similar features to the legacy GDLI, but by consolidating onto the ALI
framework, we will be able to simplify the API, provide Ad Ops with a
more intuitive workflow and user experience, and improve on the feature
set available to guaranteed delivery line items.

This document will explain the differences between the legacy GDLI and
the new GDALI and provide links to the resources you'll need to migrate
to using GDALIs.




## What's Changing?

The GDALI uses the same insertion order and line item service
endpoints as the legacy GDLI. But we've updated and added new fields and
logic to both the insertion order and line item objects to enable the
GDALI features.

**Insertion Order Changes**


<b>Note:</b> For an insertion order to be
associated with a guaranteed delivery augmented line item (GDALI), the
insertion order must:

- Be a <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Seamless Insertion Order</a> (legacy
  insertion orders are not compatible).
- Have budget_type set to "flexible" or "impression".
- Not contain more than one budget_intervals array.
- Have unlimited budget (set via the budget_intervals array).

Insertion orders not matching the above may only be associated to
non-guaranteed line items. Note the above settings are also required for
programmatic guaranteed line items (PGLI). An insertion order with the
above settings may also be associated to non-guaranteed line items.

Associating a profile_id (e.g., frequency capping or setting additional
targeting) on the insertion order object may result in unexpected
forecasting or delivery for PGLIs and GDALIs. It is recommended not to
use profile_id for insertion orders intended for the use with GDALIs.



<table id="ID-00002b4e__table_fnc_rjg_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002b4e__table_fnc_rjg_twb__entry__1"
class="entry colsep-1 rowsep-1">Feature</th>
<th id="ID-00002b4e__table_fnc_rjg_twb__entry__2"
class="entry colsep-1 rowsep-1">Legacy Setting</th>
<th id="ID-00002b4e__table_fnc_rjg_twb__entry__3"
class="entry colsep-1 rowsep-1">New Setting</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__1">Budget Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__2">Budget type was
specified on the insertion order object but was not required.
<pre id="ID-00002b4e__codeblock_gnc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;budget_type&quot;: null
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__3">Budget type is
specified on the insertion order object and must be set to <code
class="ph codeph">"flexible"</code> or <code
class="ph codeph">"impression"</code> for the insertion order to be
compatible with GDALI and PG line items.
<pre id="ID-00002b4e__codeblock_hnc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;budget_type&quot;: &quot;impression&quot;
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__1">Flight Dates and
Budgeting</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__2">Flight dates and
budgets were specified on the insertion order object.
<pre id="ID-00002b4e__codeblock_inc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;start_date&quot;: &quot;2020-10-01 00:00:00&quot;,
  &quot;end_date&quot;: null,
  &quot;timezone&quot;: &quot;UTC&quot;,
  &quot;lifetime_pacing&quot;: null,
  &quot;lifetime_budget&quot;: null,
  &quot;lifetime_budget_imps&quot;: null,
  &quot;enable_pacing&quot;: null,
  &quot;lifetime_pacing_span&quot;: null,
  &quot;allow_safety_pacing&quot;: null,
  &quot;daily_budget&quot;: null,
  &quot;daily_budget_imps&quot;: null,
  &quot;lifetime_pacing_pct&quot;: null,
  ...
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__3">Flight dates and
budgets are specified within the <code
class="ph codeph">budget_intervals</code> property on the insertion
order object. <b>Note:</b>
<ul>
<li>The insertion order must not contain more than one <code
class="ph codeph">budget_intervals</code> array.</li>
<li>GDALI and PG line items require an "unlimited" budget set on the
insertion order. Budget fields may be omitted or set to <code
class="ph codeph">null</code><br />
</li>
<li><p>The <code class="ph codeph">allow_safety_pacing</code> field is
no longer used</p>
<pre id="ID-00002b4e__codeblock_knc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;budget_intervals&quot;: [
      {
        &quot;start_date&quot;: &quot;2020-10-01 00:00:00&quot;,
        &quot;end_date&quot;: null,
        &quot;timezone&quot;: &quot;UTC&quot;,
        &quot;lifetime_budget&quot;: null,
        &quot;lifetime_budget_imps&quot;: null,
        &quot;daily_budget_imps&quot;: null,
        &quot;daily_budget&quot;: null,
        &quot;enable_pacing&quot;: false,
        &quot;lifetime_pacing&quot;: false,
        &quot;lifetime_pacing_pct&quot;: null
        ...
      }
  ]
}</code></pre></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__1">Profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__2">Profile was not
supported on legacy insertion orders.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_fnc_rjg_twb__entry__3">Use of the <code
class="ph codeph">profile_id</code> on the insertion order is not
recommended, as use may result in unexpected forecasting results or
delivery.</td>
</tr>
</tbody>
</table>

**Examples**



<b>Tip:</b> See <a
href="publisher-gdali-api-setup-guide.md"
class="xref" target="_blank">Publisher GDALI API Setup Guide</a>  for a
step-by-step API guide for creating a GDALI



**Example Legacy IO for GDLI API Setup**

1\) Create Legacy IO JSON (you'll need an existing advertiser ID).

``` pre
$ cat legacy_io_gdli
{
"insertion-order": {
    "name": "Test-Legacy-IO-GDLI",
    "advertiser_id": "3872575",
    "timezone": "UTC",
    "start_date": "2020-10-01 00:00:00",
    "currency": "USD"
  }
}
```

2\) Make a POST request to the
<a href="https://api.appnexus.com/insertion-order" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a> endpoint using this
JSON and the appropriate `advertiser_id`.

``` pre
$ curl -b cookies -X POST -d @legacy_io_gdli.json 'https://api.appnexus.com/insertion-order?advertiser_id=3872575'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 4969719,
        "start_element": 0,
        "num_elements": 100,
        "insertion-order": {
            "id": 4969719,
            "name": "Test-Legacy-IO-GDLI",
            "code": null,
            "state": "active",
            "advertiser_id": 3872575,
            "profile_id": null,
            "member_id": 958,
            "start_date": "2020-10-01 00:00:00",
            "end_date": null,
            "remaining_days": null,
            "total_days": null,
            "last_modified": "2020-10-01 03:28:27",
            "timezone": "UTC",
            "currency": "USD",
            "comments": null,
            "budget_type": null,
            "billing_code": null,
            "viewability_standard_provider": null,
            "is_running_political_ads": false,
            "line_items": null,
            "labels": null,
            "broker_fees": null,
            "budget_intervals": null,
            "tpas_details": null,
            "political_content": null,
            "lifetime_pacing": null,
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "enable_pacing": null,
            "lifetime_pacing_span": null,
            "allow_safety_pacing": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "lifetime_pacing_pct": null
        },
        "dbg_info": {
            "warnings": [
            ],
            "version": "1.0.56",
            "output_term": "insertion-order"
        }
    }
}
```

**Example Seamless IO for GDALI API Setup**

1\) Create Seamless IO JSON (you'll need an existing advertiser ID).

``` pre
$ cat seamless_io_gdali
{
"insertion-order": {
    "name": "Test-Seamless-IO-GDALI",
    "advertiser_id": "3872575",
    "timezone": "UTC",
    "budget_type": "impression"
    "budget_intervals": [
      {
        "start_date": "2020-10-01 00:00:00",
        "timezone": "UTC"
      }
    ],
    "currency": "USD"
  }
}
```

2\) Make a POST request to the
<a href="https://api.appnexus.com/insertion-order" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a> endpoint using this
JSON and the appropriate `advertiser_id`.

``` pre
$ curl -b cookies -X POST -d @seamless_io_gdali.json 'https://api.appnexus.com/insertion-order?advertiser_id=3872575'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 4971824,
        "start_element": 0,
        "num_elements": 100,
        "insertion-order": {
            "id": 4971824,
            "name": "Test-Seamless-IO-GDALI",
            "code": null,
            "state": "active",
            "advertiser_id": 3872575,
            "profile_id": null,
            "member_id": 958,
            "start_date": null,
            "end_date": null,
            "remaining_days": null,
            "total_days": null,
            "last_modified": "2020-10-01 11:17:21",
            "timezone": "UTC",
            "currency": "USD",
            "comments": null,
            "budget_type": "impression",
            "billing_code": null,
            "viewability_standard_provider": "iab",
            "is_running_political_ads": false,
            "line_items": null,
            "labels": null,
            "broker_fees": null,
            "budget_intervals": [
                {
                    "id": 9974698,
                    "object_id": 4971824,
                    "object_type": "insertion_order",
                    "start_date": "2020-10-01 00:00:00",
                    "end_date": null,
                    "timezone": "UTC",
                    "code": null,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": null,
                    "daily_budget_imps": null,
                    "daily_budget": null,
                    "enable_pacing": false,
                    "lifetime_pacing": false,
                    "lifetime_pacing_pct": null
                }
            ],
            "tpas_details": null,
            "political_content": null,
            "lifetime_pacing": null,
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "enable_pacing": null,
            "lifetime_pacing_span": null,
            "allow_safety_pacing": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "lifetime_pacing_pct": null
        },
        "dbg_info": {
            "warnings": [
            ],
            "version": "1.0.56",
            "output_term": "insertion-order"
        }
    }
}
```

**Line Item Changes**

<table id="ID-00002b4e__table_qnc_rjg_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002b4e__table_qnc_rjg_twb__entry__1"
class="entry colsep-1 rowsep-1">Feature</th>
<th id="ID-00002b4e__table_qnc_rjg_twb__entry__2"
class="entry colsep-1 rowsep-1">Legacy GDLI</th>
<th id="ID-00002b4e__table_qnc_rjg_twb__entry__3"
class="entry colsep-1 rowsep-1">GDALI</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Line Item
Subtype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">This is a new field
to the line item service.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">Line item subtype
should be specified as <code class="ph codeph">gd_buying_imp</code> for
impression guaranteed line items, and <code
class="ph codeph">gd_buying_exclusive</code> for exclusive (also known
as share of voice/SOV) guaranteed line items.
<p>By defining <code class="ph codeph">line_item_subtype</code>, the
user may omit the following fields/arrays in the request payload:</p>
<ul>
<li><code class="ph codeph">line_item_type</code></li>
<li><code class="ph codeph">bid_object_type</code></li>
<li><code class="ph codeph">delivery_model_type</code></li>
<li><code class="ph codeph">supply_strategies</code></li>
</ul>
<p>If the user provides conflicting <code
class="ph codeph">line_item_subtype</code> and fields/arrays outlined
above, we'll prefer the <code class="ph codeph">line_item_subtype</code>
and ignore other fields on the call.</p>

<b>Note:</b> <code
class="ph codeph">The line_item_subtype</code> field cannot be changed
after the line item is created.

<p>More details on the <code class="ph codeph">line_item_sub type</code>
field can be found in <a
href="line-item-service---gdali.md"
class="xref" target="_blank">Line Item Service - GDALI</a>.</p>
<pre id="ID-00002b4e__codeblock_tnc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;line_item_subtype&quot;: &quot;gd_buying_imp&quot;
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Line Item Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Line Item Type was
specified as <code class="ph codeph">guaranteed_delivery</code>.
<pre id="ID-00002b4e__codeblock_unc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;line_item_type&quot;: &quot;guaranteed_delivery&quot;
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3"><div
id="ID-00002b4e__note_vnc_rjg_twb" class="note tip note_tip">
<b>Tip:</b> When <code
class="ph codeph">"</code> <code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">line_item_type</code> field may be omitted and will
default to "standard_v2".
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Bid Object Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Bid object type was
specified on the line item object but was not required.
<pre id="ID-00002b4e__codeblock_wnc_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;bid_object_type&quot;: null
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3"><div
id="ID-00002b4e__note_xnc_rjg_twb" class="note tip note_tip">
<b>Tip:</b> When <code
class="ph codeph">"</code> <code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">bid_object_type</code> field may be omitted and will
default to "creative".
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Delivery Model
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Delivery model type
was specified on the line item object but was not required.
<pre id="ID-00002b4e__codeblock_ync_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;delivery_model_type&quot;: null
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3"><div
id="ID-00002b4e__note_znc_rjg_twb" class="note tip note_tip">
<b>Tip:</b> When <code
class="ph codeph">"</code> <code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">delivery_model_type</code> field may be omitted.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Supply
Strategies</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Supply Strategies
were previously specified using the <code
class="ph codeph">inventory_type</code> field within a campaign object
with a value of <code class="ph codeph">real_time</code>, <code
class="ph codeph">direct</code>, or <code class="ph codeph">both</code>.
<pre id="ID-00002b4e__codeblock_a4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;campaigns&quot;: [
    {
      ...,
      &quot;inventory_type&quot;: &quot;direct&quot;
    }
  ]
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3"><div
id="ID-00002b4e__note_b4c_rjg_twb" class="note tip note_tip">
<b>Tip:</b> When <code
class="ph codeph">"</code> <code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">supply_strategies</code> field may be omitted.
<p>Guaranteed delivery line items will always be set to "<code
class="ph codeph">managed":</code> <code class="ph codeph">true</code>
and all other strategies will be set to <code
class="ph codeph">false</code>.</p>

<p>See the "Supply Strategies" section in <a
href="line-item-service---gdali.md"
class="xref" target="_blank">Line Item Service - GDALI</a> for more
information.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Flight Dates and
Budgeting</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Flight dates and
budget details were specified on the line item object.
<pre id="ID-00002b4e__codeblock_c4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;start_date&quot;: &quot;2020-10-01 00:00:00&quot;,
  &quot;end_date&quot;: &quot;2020-10-31 23:59:59&quot;,
  &quot;timezone&quot;: &quot;UTC&quot;,
  &quot;lifetime_pacing&quot;: true,
  &quot;lifetime_budget&quot;: null,
  &quot;lifetime_budget_imps&quot;: 10000,
  &quot;enable_pacing&quot;: null,
  &quot;lifetime_pacing_span&quot;: null,
  &quot;allow_safety_pacing&quot;: null,
  &quot;daily_budget&quot;: null,
  &quot;daily_budget_imps&quot;: null,
  &quot;lifetime_pacing_pct&quot;: 105
  ...
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">Flight dates and
budget details are specified within the <code
class="ph codeph">budget_intervals</code> property on the line item
object.

<b>Note:</b>
<ul>
<li>A guaranteed delivery line item must not contain more than one 
<code class="ph codeph">budget_intervals</code> array.</li>
<li>Impression line items ( <code
class="ph codeph">"line_item_subtype": "gd_buying_imp"</code> )  require
a value be set for <code class="ph codeph">lifetime_budget_imps</code>,
as well as <code class="ph codeph">lifetime_pacing set</code> to true.
All revenue budget fields must be set to <code
class="ph codeph">null</code>. Setting <code
class="ph codeph">daily_budget_imps</code> in addition to <code
class="ph codeph">lifetime_budget_imps</code> may impact delivery.</li>
<li><p>Exclusive line items (<code
class="ph codeph">"line_item_subtype": "gd_buying_exclusive"</code>) must
omit all budget fields, or set them to <code
class="ph codeph">null</code>.</p>
<pre id="ID-00002b4e__codeblock_f4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;budget_intervals&quot;: [
      {
        &quot;start_date&quot;: &quot;2020-10-01 00:00:00&quot;,
        &quot;end_date&quot;: &quot;2020-10-31 23:59:59&quot;,
        &quot;timezone&quot;: &quot;UTC&quot;,
        &quot;lifetime_budget&quot;: null,
        &quot;lifetime_budget_imps&quot;: 10000,
        &quot;daily_budget_imps&quot;: null,
        &quot;daily_budget&quot;: null,
        &quot;enable_pacing&quot;: true,
        &quot;lifetime_pacing&quot;: true,
        &quot;lifetime_pacing_pct&quot;: 105
      }
  ]
}</code></pre></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Creative
Scheduling</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Required campaign
shells to target specific creatives to deliver on specific dates within
the line item's flight.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">Creatives now support
defining custom date ranges at which they will serve, see "Custom Date
Ranges" in <a
href="gdli-to-gdali-migration.md"
class="xref" target="_blank">Line Item Service - GDALI</a> for
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Priority</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Priority was
previously specified within a campaign object. The default value is 5.
<pre id="ID-00002b4e__codeblock_g4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;campaigns&quot;: [
    {
      ...,
      &quot;priority&quot;: 14
    }
  ]
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">Priority is specified
on the line item object. The Monetize UI sets the default value for
impression guaranteed line items to 14, and 19 for exclusive. The
default value for all line items created via the API is 5.
<pre id="ID-00002b4e__codeblock_h4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;priority&quot;: 14
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Ad Types</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Ad types were
specified on the line item object but was not required.
<pre id="ID-00002b4e__codeblock_i4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;ad_types&quot;: null
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">One or more ad types
are required (accepted inputs are banner, video (includes audio) and
native). Among others, this field will be used for forecasting.
<pre id="ID-00002b4e__codeblock_j4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;ad_types&quot;: [
    &quot;banner&quot;
  ]
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Revenue Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Viewable CPM was
defined as a revenue type.
<pre id="ID-00002b4e__codeblock_k4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;revenue_type&quot;: &quot;vcpm&quot;
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">Acceptable values
include: "cpm" and "flat_fee". See Auction Event (in this table) for
information on Viewable CPM.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Auction Event</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Auction event was
specified on the line item object but was not required.
<pre id="ID-00002b4e__codeblock_l4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;auction_event&quot;: null
}</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">The Auction Event
object should be used to define a non-impression based transaction, such
as booking revenue on a Viewable CPM basis. See <a
href="line-item-service---gdali.md"
class="xref" target="_blank">Line Item Service - GDALI</a> for details.
<p>For example, the following configuration would enable a $4 Viewable
CPM:</p>
<pre id="ID-00002b4e__codeblock_m4c_rjg_twb"
class="pre codeblock"><code>{
    &quot;line-item&quot;: {
      ...
      &quot;revenue_type&quot;: &quot;cpm&quot;,
      &quot;revenue_value&quot;: 4
      ...
      &quot;auction_event&quot;: {
          &quot;revenue_auction_event_type&quot;: &quot;view&quot;,
          &quot;revenue_auction_event_type_code&quot;: &quot;view_display_50pv1s_an&quot;,
          &quot;revenue_auction_type_id&quot;: 2
      }
      ...
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Roadblocks</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Roadblock could be
defined on the campaign or line item object.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">Roadblock is
specified on the line item object.
class="note warning note_warning">
<b>Warning:</b> Only page-level partial
roadblocks are supported by GDALI. The <code
class="ph codeph">master_width</code> and <code
class="ph codeph">master_height</code> fields must be defined for
roadblock line items.
<pre id="ID-00002b4e__codeblock_o4c_rjg_twb"
class="pre codeblock"><code>{
  ...,
  &quot;roadblock&quot;: {
        &quot;type&quot;: &quot;partial_roadblock&quot;,
        &quot;master_width&quot;: 728,
        &quot;master_height&quot;: 90
  }
}</code></pre>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Campaigns</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Required defining a
campaign object and associating to the line item in order for the line
to deliver.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">GDALI no longer
supports campaign objects; this step is no longer required.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Splits</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">Splits were not
supported on legacy GDLIs.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">The <a
href="splits-service.md"
class="xref" target="_blank">Splits Service</a> can be utilized for use
cases such as targeting creatives to a subset of inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Broker Fees</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">The <code
class="ph codeph">broker_fees</code> array was used to define <a
href="broker-service.md"
class="xref" target="_blank">Broker Fees</a>.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">GDALI does not
support broker fees or <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fees</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Alerts</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">The alerts object
returned the conditions that are preventing the line item from
serving.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">GDALI does not
support alerts.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__1">Underspend Catch
Up</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__2">"Underspend catch up"
was not supported in legacy GDLIs</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002b4e__table_qnc_rjg_twb__entry__3">GDALI supports
"underspend catch up." For more information, see the "Budget Scheduling
Settings" section of <a
href="line-item-service---gdali.md"
class="xref" target="_blank">Line Item Service - GDALI.</a></td>
</tr>
</tbody>
</table>



**Examples**


**Example Legacy GDLI API Setup**

1\) Create legacy GDLI JSON (you'll need an existing insertion order ID
and advertiser ID).

``` pre
$ cat legacy_gd_imp_cpm
{
"line-item": {
    "name": "Test-Legacy-GDLI",
    "advertiser_id": "3872575",
    "insertion_orders": [{"id": 4969719}],
    "line_item_type": "guaranteed_delivery",
    "publishers_allowed": "direct",
    "state": "inactive",
    "start_date": "2020-10-01 00:00:00",
    "end_date": "2020-10-31 00:00:00",
    "timezone": "UTC",
    "lifetime_budget_imps": 150000,
    "lifetime_pacing": true,
    "lifetime_pacing_pct": 105,
    "allow_safety_pacing": false,
    "enable_pacing": false,
    "currency": "USD",
    "revenue_type": "cpm",
    "revenue_value": 1,
    "manage_creative": true,
    "delivery_goal": {
      "type": "impressions",
      "disallow_non_guaranteed": false,
      "reserved": true
    }
  }
}
```

2\) Make a POST request to the
<a href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a> endpoint using this JSON
and the appropriate `advertiser_id`.

``` pre
$ curl -b cookies -X POST -d @legacy_gd_imp_cpm.json 'https://api.appnexus.com/line-item?advertiser_id=3872575'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 12950674,
        "start_element": 0,
        "num_elements": 100,
        "line-item": {
            "id": 12950674,
            "code": null,
            "name": "Test-Legacy-GDLI",
            "advertiser_id": 3872575,
            "state": "inactive",
            "start_date": "2020-10-01 00:00:00",
            "end_date": "2020-10-31 00:00:00",
            "timezone": "UTC",
            "discrepancy_pct": 0,
            "publishers_allowed": "direct",
            "revenue_value": 1,
            "revenue_type": "cpm",
            "goal_type": "none",
            "goal_value": null,
            "last_modified": "2020-10-02 10:50:23",
            "click_url": null,
            "currency": "USD",
            "require_cookie_for_tracking": true,
            "profile_id": null,
            "member_id": 958,
            "flat_fee_type": null,
            "comments": null,
            "remaining_days": 29,
            "total_days": 30,
            "manage_creative": true,
            "budget_set_per_flight": true,
            "creative_distribution_type": null,
            "line_item_type": "guaranteed_delivery",
            "bid_object_type": "creative",
            "prefer_delivery_over_performance": false,
            "priority": null,
            "enable_v8": false,
            "viewability_vendor": null,
            "is_archived": false,
            "archived_on": null,
            "delivery_model_type": "standard",
            "waive_deductions_when_disallowed": false,
            "line_item_subtype": null,
            "advertiser": {
                "id": 3872575,
                "name": "Adrian Custom Format Testing"
            },
            "flat_fee": null,
            "deals": null,
            "delivery_goal": {
                "id": 2245570,
                "type": "impressions",
                "disallow_non_guaranteed": false,
                "percentage": null,
                "reserved": true,
                "guaranteed_delivery_version": null
            },
            "labels": null,
            "broker_fees": null,
            "pixels": null,
            "insertion_orders": [
                {
                    "id": 4969719,
                    "state": "active",
                    "code": null,
                    "name": "Test-Legacy-IO-GDLI",
                    "advertiser_id": 3872575,
                    "start_date": "2020-10-01 00:00:00",
                    "end_date": null,
                    "timezone": "UTC",
                    "last_modified": "2020-10-02 03:28:27",
                    "currency": "USD",
                    "budget_intervals": null,
                    "political_content": null
                }
            ],
            "goal_pixels": null,
            "imptrackers": null,
            "clicktrackers": null,
            "campaigns": null,
            "valuation": null,
            "creatives": null,
            "budget_intervals": null,
            "custom_models": null,
            "inventory_discovery": null,
            "incrementality": null,
            "auction_event": null,
            "custom_optimization_note": null,
            "roadblock": null,
            "budget_scheduling_settings": null,
            "ad_types": null,
            "user_info": null,
            "partner_fees": null,
            "product": null,
            "in_demo_measurement": null,
            "lifetime_budget": null,
            "lifetime_budget_imps": 150000,
            "daily_budget": null,
            "daily_budget_imps": 5240,
            "enable_pacing": false,
            "allow_safety_pacing": false,
            "lifetime_pacing": true,
            "lifetime_pacing_span": null,
            "lifetime_pacing_pct": 105
        },
        "dbg_info": {
            "warnings": [
            ],
            "version": "1.0.56",
            "output_term": "line-item"
        }
    }
}
```

3\) Create campaign JSON (you'll need an existing line item ID and
advertiser ID).

``` pre
$ cat legacy_campaign
{
"campaign": {
    "name": "Test-Legacy-Campaign",
    "advertiser_id": "3872575",
    "line_item_id": 12950674,
    "state": "active",
    "priority": 14,
    "inventory_type": "direct"
  }
}
```

4\) Make a POST request to the
<a href="https://api.appnexus.com/campaign" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/campaign</a> endpoint using this JSON and
the appropriate `advertiser_id` and `line_item_id`.

``` pre
$ curl -b cookies -X POST -d @legacy_campaign.json 'https://api.appnexus.com/campaign?advertiser_id=3872575&line_item_id=12950674'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 46327974,
        "start_element": 0,
        "num_elements": 100,
        "campaign": {
            "id": 46327974,
            "state": "active",
            "parent_inactive": true,
            "code": null,
            "advertiser_id": 3872575,
            "line_item_id": 12950674,
            "creative_id": null,
            "pixel_id": null,
            "short_name": null,
            "name": "Test-Legacy-Campaign",
            "profile_id": null,
            "start_date": null,
            "end_date": null,
            "timezone": "UTC",
            "priority": 14,
            "cadence_modifier_enabled": false,
            "cpc_goal": null,
            "cpm_bid_type": "margin",
            "base_bid": null,
            "min_bid": null,
            "max_bid": null,
            "bid_margin": 0,
            "roadblock_creatives": false,
            "roadblock_type": "no_roadblock",
            "inventory_type": "direct",
            "last_modified": "2020-10-02 10:55:04",
            "max_learn_bid": null,
            "cadence_type": "advertiser",
            "member_id": 958,
            "click_url": null,
            "require_cookie_for_tracking": true,
            "allow_unverified_ecp": false,
            "defer_to_li_prediction": false,
            "ecp_learn_divisor": null,
            "projected_learn_events": null,
            "learn_threshold": 3,
            "cpc_payout": null,
            "comments": null,
            "optimization_version": "v7",
            "learn_override_type": null,
            "base_cpm_bid_value": null,
            "impression_limit": 40000,
            "bid_multiplier": 1,
            "remaining_days": null,
            "total_days": null,
            "campaign_type": "default",
            "creative_distribution_type": null,
            "allocation_pct": null,
            "allocation_strategy": "unconstrained",
            "is_archived": false,
            "archived_on": null,
            "supply_type_action": null,
            "supply_type": null,
            "creatives": null,
            "pixels": null,
            "optimization_lookback": null,
            "campaign_modifiers": null,
            "labels": null,
            "broker_fees": null,
            "valuation": null,
            "bid_model": null,
            "bid_modifier_model": null,
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "allow_safety_pacing": null,
            "lifetime_pacing": null,
            "lifetime_pacing_span": null,
            "lifetime_pacing_pct": null
        },
        "dbg_info": {
            "warnings": [
            ],
            "version": "1.0.56",
            "output_term": "campaign"
        }
    }
}
```

**Example GDALI API Setup**

Further examples can be found on <a
href="line-item-service---gdali.md"
class="xref" target="_blank">Line Item Service - GDALI.</a>

1\) Create GDALI JSON (you'll need an existing insertion order ID and
advertiser ID).

``` pre
$ cat gd_imp_cpm
{
"line-item": {
    "name": "Test-GDALI",
    "advertiser_id": "3872575",
    "insertion_orders": [{"id": 4971824}],
    "line_item_subtype": "gd_buying_imp",
    "state": "inactive",
    "priority": 14,
    "ad_types": [
      "banner"
    ],
    "timezone": "UTC",
    "budget_intervals": [
      {
        "start_date": "2020-10-01 00:00:00",
        "end_date": "2020-10-31 23:59:59",
        "timezone": "UTC",
        "lifetime_budget_imps": 150000,
        "lifetime_pacing": true,
        "lifetime_pacing_pct": 105
      }
    ],
    "currency": "USD",
    "revenue_type": "cpm",
    "revenue_value": 1,
    "delivery_goal": {
      "type": "impressions",
      "disallow_non_guaranteed": false,
      "reserved": true
    }
  }
}
```

2\) Make a POST request to the
<a href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a> endpoint using this JSON
and the appropriate `advertiser_id`.

``` pre
$ curl -b cookies -X POST -d @gd_imp_cpm.json 'https://api.appnexus.com/line-item?advertiser_id=3872575'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 12954413,
        "start_element": 0,
        "num_elements": 100,
        "line-item": {
            "id": 12954413,
            "code": null,
            "name": "Test-GDALI",
            "advertiser_id": 3872575,
            "state": "inactive",
            "start_date": null,
            "end_date": null,
            "timezone": "UTC",
            "discrepancy_pct": 0,
            "publishers_allowed": "all",
            "revenue_value": 1,
            "revenue_type": "cpm",
            "goal_type": "none",
            "goal_value": null,
            "last_modified": "2020-10-01 17:31:15",
            "click_url": null,
            "currency": "USD",
            "require_cookie_for_tracking": true,
            "profile_id": null,
            "member_id": 958,
            "flat_fee_type": null,
            "comments": null,
            "remaining_days": null,
            "total_days": null,
            "manage_creative": true,
            "budget_set_per_flight": true,
            "creative_distribution_type": null,
            "line_item_type": "standard_v2",
            "bid_object_type": "creative",
            "prefer_delivery_over_performance": false,
            "priority": 14,
            "enable_v8": true,
            "viewability_vendor": "appnexus",
            "is_archived": false,
            "archived_on": null,
            "delivery_model_type": "guaranteed",
            "waive_deductions_when_disallowed": false,
            "line_item_subtype": "gd_buying_imp",
            "advertiser": {
                "id": 3872575,
                "name": "GDALI Testing Advertiser"
            },
            "flat_fee": null,
            "supply_strategies": {
                "managed": true,
                "rtb": false,
                "deals": false,
                "programmatic_guaranteed": false
            },
            "deals": null,
            "delivery_goal": {
                "id": 2246279,
                "type": "impressions",
                "disallow_non_guaranteed": false,
                "percentage": null,
                "reserved": true,
                "guaranteed_delivery_version": null
            },
            "labels": null,
            "broker_fees": null,
            "pixels": null,
            "insertion_orders": [
                {
                    "id": 4971824,
                    "state": "active",
                    "code": null,
                    "name": "Test-Seamless-IO-GDALI",
                    "advertiser_id": 3872575,
                    "start_date": null,
                    "end_date": null,
                    "timezone": "UTC",
                    "last_modified": "2020-10-02 11:17:21",
                    "currency": "USD",
                    "budget_intervals": [
                        {
                            "id": 9974698,
                            "object_id": 4971824,
                            "object_type": "insertion_order",
                            "start_date": "2020-10-01 00:00:00",
                            "end_date": null,
                            "timezone": "UTC",
                            "code": null,
                            "lifetime_budget": null,
                            "lifetime_budget_imps": null,
                            "daily_budget_imps": null,
                            "daily_budget": null,
                            "enable_pacing": false,
                            "lifetime_pacing": false,
                            "lifetime_pacing_pct": null
                        }
                    ],
                    "political_content": null
                }
            ],
            "goal_pixels": null,
            "imptrackers": null,
            "clicktrackers": null,
            "campaigns": null,
            "valuation": null,
            "creatives": null,
            "budget_intervals": [
                {
                    "id": 9980002,
                    "object_id": 12954413,
                    "object_type": "campaign_group",
                    "start_date": "2020-10-01 00:00:00",
                    "end_date": "2020-10-31 23:59:59",
                    "timezone": "UTC",
                    "code": null,
                    "parent_interval_id": null,
                    "creatives": null,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": 150000,
                    "lifetime_pacing": true,
                    "enable_pacing": true,
                    "lifetime_pacing_pct": 105
                }
            ],
            "custom_models": null,
            "inventory_discovery": null,
            "incrementality": null,
            "auction_event": null,
            "custom_optimization_note": null,
            "roadblock": null,
            "budget_scheduling_settings": null,
            "ad_types": [
                "banner"
            ],
            "user_info": null,
            "partner_fees": null,
            "product": null,
            "in_demo_measurement": null,
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "allow_safety_pacing": null,
            "lifetime_pacing": null,
            "lifetime_pacing_span": null,
            "lifetime_pacing_pct": null,
            "inventory_type": "direct"
        },
        "dbg_info": {
            "warnings": [
            ],
            "version": "x1.0.56",
            "output_term": "line-item"
        }
    }
}
```




## GDALI Documentation

Publishers should refer to the following new API documents to learn more
about GDALIs:

- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>: A reference
  for creating and configuring a seamless insertion order required for a
  GDALI along with other publisher order management workflows.
- <a
  href="line-item-service---gdali.md"
  class="xref" target="_blank">Line Item Service - GDALI</a>: A
  reference for creating and configuring a GDALI.
- <a href="publisher-gdali-api-setup-guide.md" class="xref">Publisher
  GDALI API Setup Guide</a>: A step-by-step API guide for creating a
  GDALI. 






