---
Title : Optimization Override Service
Description : The Optimization Override service allows clients with sophisticated
optimization needs to override a line item's default settings for
Discovery, an optimization feature ranks inventory based on its
historical CPC and stops your line item from serving on inventory that
doesn't perform. Discovery uses a **fail criterion** to cap amount of
---


# Optimization Override Service



The Optimization Override service allows clients with sophisticated
optimization needs to override a line item's default settings for
Discovery, an optimization feature ranks inventory based on its
historical CPC and stops your line item from serving on inventory that
doesn't perform. Discovery uses a **fail criterion** to cap amount of
budget or number of impressions spent before a section of inventory is
"axed" (considered failed and removed from eligibility for this line
item).

The Optimization Override service allows you to:

- Turn off Discovery.
- Adjust the Discovery fail criteria.

When you set custom fail criteria, these are the rules followed based on
the objective you choose for line item optimization preference:

- When **Prefer performance** is selected, Xandr axes inventory at 1x
  the fail criteria value.
- When **Prefer delivery** is selected, Xandr axes inventory at a
  dynamic threshold up to 10x the fail criteria value.
- When **Prefer margin** is selected, Xandr axes inventory at 1x the
  fail criteria.

For more about selecting to prefer performance, delivery, or margin, see
<a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
class="xref" target="_blank">Line Item Service - ALI</a>.

Optimization override can be useful if:

- You're using CPC optimization to value clicks, but do not want to
  filter the inventory you serve on based on its historical CPC.
- You want to use Discovery, but you want to set a fail criteria at a
  threshold that's less strict than the line item's CPC goal.
- You want to turn off Discovery altogether and leverage only Xandr
  click prediction.

<div id="optimization-override-service__section_ump_wgc_xwb"
>

## REST API



<table id="optimization-override-service__table_rbs_xgc_xwb"
class="table">
<colgroup>
<col style="width: 27%" />
<col style="width: 45%" />
<col style="width: 27%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="optimization-override-service__table_rbs_xgc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="optimization-override-service__table_rbs_xgc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="optimization-override-service__table_rbs_xgc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__2"><a
href="https://api.appnexus.com/discovery" class="xref"
target="_blank">https://api.appnexus.com/discovery</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__3"><p>Retrieve
Discovery settings for all customized line items in a member.</p>
<div id="optimization-override-service__note_u1h_hhc_xwb"
class="note note_note">
Note:
<p>Information is returned only when the Discovery settings have been
customized. If the Discovery settings are the default settings, no
details are returned.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__2"><a
href="https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID"
class="xref"
target="_blank">https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__3"><p>Retrieve
custom Discovery settings for a single line item.</p>
<div id="optimization-override-service__note_lrk_3hc_xwb"
class="note note_note">
Note:
<p>Information is returned only when the Discovery settings have been
customized. If the Discovery settings are the default settings, no
details are returned.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__2"><a
href="https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID"
class="xref"
target="_blank">https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_rbs_xgc_xwb__entry__3">Update
custom Discovery settings.</td>
</tr>
</tbody>
</table>





<div id="optimization-override-service__section_iyt_bhc_xwb"
>

## JSON Fields



<table id="optimization-override-service__table_bm2_dhc_xwb"
class="table" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 26%" />
<col style="width: 40%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="optimization-override-service__table_bm2_dhc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="optimization-override-service__table_bm2_dhc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="optimization-override-service__table_bm2_dhc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__1"><code
class="ph codeph">discovery_enabled</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__3"><p>Turn
discovery on or off.</p>
<div id="optimization-override-service__note_zvn_fhc_xwb"
class="note note_note">
Note: Discovery can only be enabled on
Augmented Line Items where the goal type is CPC or post-click CPA.

<ul>
<li><strong>Default</strong>: <code class="ph codeph">true</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__1"><code
class="ph codeph">fail_criteria_amount</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__2">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__3">The
amount of booked revenue (in the local currency set at the advertiser
level) to spend on a selection of inventory before the inventory is
failed.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__3"><p>The
ID of the Discovery settings profile.</p>
<ul>
<li><strong>Default</strong>: auto-generated number.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__3">The
ID of the line item whose Discovery Settings are being altered.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="optimization-override-service__table_bm2_dhc_xwb__entry__3">Member
ID.</td>
</tr>
</tbody>
</table>





<div id="optimization-override-service__section_tkx_khc_xwb"
>

## Examples



**View custom Discovery settings for a line item**

``` pre
curl -X GET -c cookies -b cookies "https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID"
 
[
   {
      "id" : 1,
      "member_id" : MEMBER_ID,
      "line_item_id" : LINE_ITEM_ID,
      "discovery_enabled" : true,
      "fail_criteria_amount" : 3
   }
]
```



**Disable Discovery**



Check to see if a discovery profile exists.

``` pre
$ curl -b cookie "https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID"
```





If a profile doesn't exist (a blank is returned instead of a profile),
you must create a discovery profile. You can create a discovery profile
that is already disabled or disable an existing discovery profile with
the same JSON.

``` pre
$ cat discovery.json
{
    "member_id" : MEMBER_ID,
    "line_item_id" : LINE_ITEM_ID,
    "discovery_enabled": false
}

$ curl -X POST -b cookies -d @discovery.json "https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID"
```





**Update Discovery settings**

``` pre
$ cat discovery
{
    "id" : ID_VALUE,
    "member_id" : MEMBER_ID,
    "line_item_id" : LINE_ITEM_ID,
    "discovery_enabled": true,
    "fail_criteria_amount": FAIL_CRITERIA_AMOUNT
}

$ curl -b cookie -X PUT -d @discovery "https://api.appnexus.com/discovery?line_item_id=LINE_ITEM_ID"
```








