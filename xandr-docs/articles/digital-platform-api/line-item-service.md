---
Title : Line Item Service
Description : <div id="line-item-service__note_bjh_dhz_5wb"
Note: This page describes the Line Item
Service for standard (legacy) line items. If you use Augmented Line
---


# Line Item Service



<div id="line-item-service__note_bjh_dhz_5wb"


Note: This page describes the Line Item
Service for standard (legacy) line items. If you use Augmented Line
Items, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
class="xref" target="_blank">Line Item Service - ALI</a> instead.



The line items under an insertion order represent the agreed upon
strategies you will be executing for the advertiser. After setting up a
line item and optionally (depending on whether the advertiser uses
insertion orders) associating it to one or more insertion orders, you
can create campaigns to specify how to spend the money to fulfill your
agreement. Line items are where you will record "booked revenue" using
the `revenue_type` and `revenue_value` fields, which describe the
revenue type (CPM, CPA, etc.) and amount that you will be paid by your
advertisers.

<div id="line-item-service__note_bq2_thz_5wb"


Note: Insertion orders will eventually
be mandatory. Therefore, as a best practice,
Xandr encourages you to begin using insertion
orders as part of your API implementation.



Xandr suggests associating your line items with
insertion orders to preserve historical pacing and performance data
across line items under a single insertion order, and to streamline your
setup for long-standing advertiser relationships by adding budget
intervals to an insertion order. Line items can be associated to one or
more insertion orders, but only to those of the same type (an insertion
order that uses budget intervals or one that does not). Each line item
is associated with one or more child campaigns; bidding strategies and
inventory targeting are then set at the campaign level.

<div id="line-item-service__note_uwh_xhz_5wb"


Note: Seamless line items

There are two types of line items: seamless and non-seamless (legacy).
The main difference between seamless and non-seamless line items is that
seamless line items use the `budget_intervals` array and non-seamless
line items do not. In terms of setup, the main differences are:

- To create an **seamless** line item, you must:
  - associate the line item to each insertion order by specifying the
    IDs of the parent seamless insertion orders in the
    `insertion_orders` array. Each object in the array should have an
    `id` field whose value corresponds to one of the parent seamless
    insertion orders. This associates the line item with each of those
    insertion orders. You may not associate seamless line items with
    non-seamless insertion orders.

  - use the `parent_interval_id` field in the `budget_intervals` array
    to specify each budget interval defined on all insertion orders
    associated with the line item. This will determine when the line
    item runs.

  - leave the `start_date` and `end_date` fields (and any budget or
    pacing related fields) on the top-level line item object level set
    to `null`.

  - only associate seamless line items with seamless insertion orders.

You should also use the budget and pacing related fields in the
`budget_intervals` array to specify the budget available to the line
item during each budget interval and how the spending of that budget
should be paced.

- To create a **non-seamless** line item, you must:
  - use the budget and pacing related fields and the `start_date` and
    `end_date` fields on the main line item object to specify the dates
    during which the insertion order should run, what budget is
    available to it during those dates and how the spending of the
    budget should be paced.

  - leave all fields in the `budget_intervals` field (and any fields in
    its array) set to `null`. You may not associate non-seamless line
    items with seamless insertion orders.

  - only associate non-seamless line items with non-seamless insertion
    orders.

Seamless line items are the preferred model. You should use the seamless
line item workflow when creating new line items. You cannot convert a
non-seamless line item to seamless or link non-seamless line items to
seamless insertion orders (or seamless lines items to non-seamless
insertion orders).

In the UI , API `budget_intervals` are referred to as "Billing Periods".



<div id="line-item-service__note_nwp_vpz_5wb"


Note: About Performance Goals

Performance goals are also set on the line item. They are used to track
and measure campaign performance when an advertiser has articulated
performance goals and when the `revenue_type` and the `goal_type` are
not measured the same way. For example, a `revenue_type` of "cpm" might
be matched with a `goal_type` of "ctr" because the advertiser wants to
measure goal achievement in terms of the click-through rate but pay in
CPM.

To set performance goals for line items with `goal_type` "cpa", use the
`goal_pixels` array. This array contains information about performance
goal targets and thresholds. To set performance goals for line items
with the `goal_type` "cpc" or "ctr", use the `valuation` object. This
object contains the performance goal threshold, which determines the
bid/no bid cutoff on optimized campaigns, and the performance goal
target, which represents the desired clicks or click-through rate.

To learn more about performance goals, see "Understanding Performance
Goals" in the UI documentation.



<div id="line-item-service__section_t3p_prz_5wb"
>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_t3p_prz_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="line-item-service__section_t3p_prz_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="line-item-service__section_t3p_prz_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><p><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID</a></p>
<p>(line item JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3">Add a new
line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p>
<p>(line item JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3">Modify an
existing line item.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><p><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3">View all of
an advertiser's line items.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><a
href="https://api.appnexus.com/line-item?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/line-item?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3">View multiple
line items by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><a
href="https://api.appnexus.com/line-item?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/line-item?id=1</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3"><p>Delete a
specific line item identifying by its ID.</p>
<div id="line-item-service__note_gwl_35z_5wb"
class="note warning note_warning">
Warning:
<p>Deletion is Recursive and Permanent</p>
<p>Deleting a line item will also delete all of its associated budget
intervals and splits. The deletions are permanent and cannot be
reverted.</p>


Note:
<p><strong>Helpful Query String Filters</strong></p>
<ul>
<li>You can filter for line items based on when they first and last
served. This is particularly useful when you are approaching your <a
href="https://docs.xandr.com/bundle/xandr-api/page/object-limit-service.html"
class="xref" target="_blank">object limit</a> and need to identify line
items that can be deleted from the system. For more details, see <a
href="line-item-service.html#line-item-service__line-item-service-first-run-and-last-run"
class="xref">First Run and Last Run</a></li>
</ul>
<ul>
<li>You can filter for line that are not serving due to various
conditions. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html#LineItemService-Alerts"
class="xref" target="_blank">Alerts</a>.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><a
href="https://api.appnexus.com/line-item?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/line-item?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3">Search for
line items with IDs or names containing certain characters.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3"><p>Delete a
line item.</p>
<div id="line-item-service__note_n2p_n5z_5wb"
class="note warning note_warning">
Warning:
<p>Deletion is Recursive and Permanent</p>
<p>Deleting a line item will also delete all of its child campaigns,
impression trackers and clicktrackers. The deletions are permanent and
cannot be reverted. Although deleted objects continue to be available in
reporting, you will no longer have visibility into their specific
settings (e.g., revenue budget and tracking for line items, cost budget
and targeting for campaigns).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__2"><a
href="https://api.appnexus.com/line-item/meta" class="xref"
target="_blank">https://api.appnexus.com/line-item/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_t3p_prz_5wb__entry__3">Find out
which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>



<div id="line-item-service__section_wlt_nvz_5wb"
>

## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_wlt_nvz_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The ID of
the line item.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query string</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>A custom
code for the line item. The code may only contain alphanumeric
characters, periods, underscores or dashes. The code you enter is not
case-sensitive (upper- and lower-case characters are treated the same).
No 2 objects at the same level (e.g., line items or campaigns) can use
the same code per advertiser. For example, 2 lines items cannot both use
code "XYZ", but a single line item and its child campaign can.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The name
of the line item.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">Post</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">The ID of the
advertiser to which the line item belongs.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The state
of the line item. Possible values: "active" or "inactive".</p>
<p><strong>Default:</strong> <code
class="ph codeph">"active"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">line_item_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The type
of line item. Possible values are:</p>
<ul>
<li><code class="ph codeph">"standard_v1"</code> - standard line item
(non-ALI).</li>
<li><code class="ph codeph">"standard_v2"</code> - augmented line item
(ALI). Note: If you are creating an ALI, see this version of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
class="xref" target="_blank">Line Item service documentation</a> as
different field settings are required.</li>
<li><code class="ph codeph">"guaranteed_delivery"</code> - guaranteed
line item (GDLI).</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"standard_v1"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The date
and time when the non-seamless line item should start serving. This
value reflects the Advertiser's time zone.</p>
<div id="line-item-service__note_pyl_jzz_5wb"
class="note important note_important">
Important: If you are creating a
seamless line item, do not set this field.

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(immediately)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The date
and time when the non-seamless line item should stop serving. This value
reflects the Advertiser's time zone.</p>
<div id="line-item-service__note_mrt_l11_vwb"
class="note important note_important">
Important:
<p>If you are creating a seamless line item, do not set this field.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(indefinitely)</p>
<div id="line-item-service__note_njf_n11_vwb"
class="note important note_important">
Important: Dates are inclusive; for
example, an <code class="ph codeph">end_date</code> of May 4th means the
campaign runs until 23:59:59 on May 4th.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
timezone by which budget and spend are counted. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.</p>

Note:
<p>Any <code class="ph codeph">PUT</code> calls to the <code
class="ph codeph">advertiser</code> service which include <code
class="ph codeph">set_child_timezone=true</code> in the query string
will cause any timezone settings on the lower level objects (e.g.,
insertion orders, line items, campaigns) to be overridden with the
latest timezone value for that advertiser.</p>

<p><strong>Default:</strong> <code class="ph codeph">"EST5EDT"</code> or
the advertiser's timezone.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">discrepancy_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">publishers_allowed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">Specifies the
type of inventory to bid on with this line item. Possible values: <code
class="ph codeph">real_time</code> or <code
class="ph codeph">direct</code> . Real-time campaigns may target
inventory that is exposed for RTB by other Xandr members or by our
inventory supply partners. Direct campaigns may only target publisher
inventory within your network.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">revenue_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The amount
paid to the network by the advertiser.</p>

Note:
<p>This field must be set under certain conditions, but may not be set
in others. In addition to the POST/PUT requirements listed in the
<strong>Required On</strong> column, please note the following:</p>
<ul>
<li>The field <strong>may</strong> be populated when <code
class="ph codeph">revenue_type</code> is <code
class="ph codeph">cpm, cpc, cpa, cost_plus_margin, cost_plus_cpm, est_cpm</code>.
However, if the <code class="ph codeph">revenue_type</code> is <code
class="ph codeph">"cpa"</code> this field will be ignored because
revenue is tracked via <code class="ph codeph">post_view_revenue</code>
or <code class="ph codeph">post_click_revenue</code> on the pixel.</li>
<li>The field <strong>may not</strong> be populated when <code
class="ph codeph">revenue_type</code> is <code
class="ph codeph">"none"</code> or <code
class="ph codeph">"vcpm"</code>.</li>
</ul>

<p><strong>Required On:</strong></p>
<p><code class="ph codeph">POST/PUT</code>, if <code
class="ph codeph">revenue_type</code> is " <code
class="ph codeph">cpc</code> ".</p>
<p><code class="ph codeph">POST/PUT</code>, if <code
class="ph codeph">revenue_type </code> is " <code
class="ph codeph">flat_fee</code> ".</p>

Note: If "flat_fee_type" is "daily"
this is the value paid out per day. If "flat_fee_type" is "one_time"
this is the value paid out on the final allocation date.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">revenue_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The way
the advertiser has agreed to pay you. Possible values are listed
below.</p>


Note: If <code
class="ph codeph">post_view_revenue</code> or <code
class="ph codeph">post_click_revenue</code> is set for any pixel in the
<code class="ph codeph">pixels</code> array, <code
class="ph codeph">revenue_type</code> must be <code
class="ph codeph">"cpa"</code>.




Note: The <code
class="ph codeph">revenue_type</code> cannot be set to a value that is
incompatible with any of the line item's child campaigns.


<ul>
<li>"none" - Do not track revenue for the line item.</li>
<li>"cpm" - A flat payment per 1000 impressions.</li>
<li>"cpc" - A flat payment per click.</li>
<li>"cpa" - A flat payment per conversion.</li>
<li>"cost_plus_cpm" - Media cost (what you spend on inventory) plus an
extra CPM.</li>
<li>"cost_plus_margin" - Media cost (what you spend on inventory) plus a
percentage of what you spend.</li>
<li>"flat_fee" - A flat payment that the advertiser will pay you on a
specified allocation date. That date can be daily or at the end of the
flight. If you pay managed publishers a percentage of your revenue,
their share will be paid out on the allocation date, after which the
line item will no longer be editable. Note that the flat fee will not be
booked on the allocation date unless the line item has served at least 1
impression. If you define a <code class="ph codeph">revenue_type</code>
of <code class="ph codeph">flat_fee</code> you must specify a value for
<code class="ph codeph">flat_fee_type</code>.</li>
<li>"vcpm": (Publisher Ad Server only) A flat payment per 1000 viewable
impressions. For more information about viewability, see <a
href="https://docs.xandr.com/csh?context=67475211" class="xref"
target="_blank">Introduction to Viewability</a> (customer login
required).</li>
</ul>
<ul>
<li>"est_cpm": the estimated flat payment per 1000 impressions.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"none"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">goal_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>For line
items that make use of performance goals, the way that the advertiser
would like to measure campaign optimization. Possible values: "none",
"cpc", "cpa", or "ctr".</p>
<p><strong>Default:</strong> <code
class="ph codeph">"none"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">goal_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><strong>Deprecated</strong>.
Use <code class="ph codeph">valuation</code> object instead. See <a
href="line-item-service.html#line-item-service__line-item-service-valuation"
class="xref">Valuation</a> below for details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The time
of last modification to this line item.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">The click URL
to apply at the line item level.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string
(3)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
currency used for this line item. For a list of supported currencies,
see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a> .</p>

Note: Once the line item has been
created, the currency cannot be changed.



Note: As a best practice, align
currency to the billing currency in order to achieve the best possible
local currency experience.


<p><strong>Default:</strong> Default currency of the
advertiser.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">require_cookie_for_tracking</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">Indicates
whether you want to serve only to users who use cookies, in order to do
conversion tracking (because Xandr conversion attribution is
cookie-based). <code class="ph codeph">true</code> indicates you will
not serve to non-cookie users, because they have no potential for
conversion attribution. <code class="ph codeph">false</code> indicates
you will serve to non-cookie users and accept no conversion attribution
for those users. This flag is only enforced when a conversion pixel has
been applied, so setting <code class="ph codeph">true</code> will not
require cookies for a line item that has no conversion pixels.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">You may
associate an optional <code class="ph codeph">profile_id</code> with
this line item. A profile is a generic set of rules for targeting
inventory. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">ID of the
line item's owning member.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">comments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">Comments
about the line item.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">remaining_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">Read-only.
The number of days between today and the <code
class="ph codeph">end_date</code> for the line item. Note that this will
be null if the <code class="ph codeph">start_date</code> is in the
future or if either the <code class="ph codeph">start_date</code> or
<code class="ph codeph">end_date </code> is not set.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">total_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The number
of days between the <code class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> for the line item. Note that this will
be null if either the <code class="ph codeph">start_date</code> or <code
class="ph codeph">end_date</code> is not set.</p>
<p><strong>Read-only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">manage_creative</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>If <code
class="ph codeph">true</code>, creatives are managed at the line item
level. If <code class="ph codeph">false</code>, creatives are managed at
the campaign level.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">advertiser</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>An object
describing the advertiser with which this line item is associated. For
details, see <a
href="line-item-service.html#line-item-service__line-item-service-advertiser"
class="xref">Advertiser</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">flat_fee</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>A flat
payment that the advertiser will pay you on a specified allocation date.
That allocation date can be daily or at the end of the flight. If you
pay managed publishers a percentage of your revenue, their share will be
paid out on the allocation date, after which the line item will no
longer be editable. Note that the flat fee will not be booked on the
allocation date unless the line item has served at least 1 impression.
For more information, see <a
href="line-item-service.html#line-item-service__line-item-service-flat-fee"
class="xref">Flat Fee</a> below.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> if <code
class="ph codeph">revenue_type</code> is <code
class="ph codeph">"flat_fee"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">flat_fee_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Flat fees
can be paid out daily or on the flight end date. Available values
are:</p>
<ul>
<li><strong>one_time</strong>: The fee will be paid on the final
allocation date. The associated <code
class="ph codeph">revenue_value</code> is the value to be paid on that
date. The flight cannot be longer than one month.</li>
<li><strong>daily</strong>: The fee will be paid daily. The associated
<code class="ph codeph">revenue_value</code> is the daily fee,
<em>not</em> the fee for the entire flight.</li>
</ul>
<p><strong>Default:</strong> one_time</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> if <code
class="ph codeph">revenue_type</code> is <code
class="ph codeph">"flat_fee".</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
optional labels applied to the line item. Currently, four labels are
available: "Trafficker", "Sales Rep", and "Campaign Type". See <a
href="line-item-service.html#line-item-service__line-item-service-labels"
class="xref">Labels</a> below for more details.</p>

Note:
<p>You can report on line item labels with the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-analytics.html"
class="xref" target="_blank">Network Analytics</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-analytics.html"
class="xref" target="_blank">Network Advertiser Analytics</a> reports.
For example, if you use the "Trafficker" label to specify the name of
the trafficker responsible for each line item, you could run the Network
Analytics report filtered by "trafficker_for_line_item" to focus on the
line items that a particular trafficker is responsible for, or grouped
by "trafficker_for_line_item" to rank the performance of your
traffickers.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
commissions that the network must pass to brokers when serving an ad.
These commissions are deducted from the booked revenue (the amount the
network receives from the advertiser) and are typically for brokering a
relationship with the advertiser. They can either be a percentage of the
revenue or a flat CPM. See <a
href="line-item-service.html#line-item-service__line-item-service-broker-fees"
class="xref">Broker Fees</a> below for more details.</p>

Note:
<p>Broker fees at the line item level override broker fees at the
insertion order level.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
conversion pixels being used for CPA revenue type. Both post-click and
post-view revenue may be specified. You may only attach 20 pixels to a
line item. If you need to attach more, please speak with your Xandr
Implementation Consultant or Support. See <a
href="line-item-service.html#line-item-service__line-item-service-pixels"
class="xref">Pixels</a> below for more details and the example below for
a sample of the format.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">insertion_orders</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Objects
containing metadata for the insertion orders this line item is
associated with. For more information, see <a
href="line-item-service.html#line-item-service__line-item-service-insertion-orders"
class="xref">Insertion Order</a>s below.</p>

Note:
<p>Once a line item is associated with a seamless insertion order, it
cannot be associated to a non-seamless insertion order. Only seamless
insertion orders may be associated with seamless line items. Only
non-seamless insertions orders may be associated with non-seamless line
items.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">goal_pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">For a line
item with the <code class="ph codeph">goal_type</code> "cpa", the pixels
used for conversion tracking, as well as the post-view and post-click
revenue. See <a
href="line-item-service.html#line-item-service__line-item-service-goal-pixels"
class="xref">Goal Pixels</a> below for more details and the example
below for a sample of the format.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">imptrackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
third-party impression trackers associated with the line item. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html"
class="xref" target="_blank">Impression Tracker Service</a> for more
details.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">clicktrackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
third-party click trackers associated with the line item. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/click-tracker-service.html"
class="xref" target="_blank">Click Tracker Service</a> for more
details.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">campaigns</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
campaigns that are associated with the line item. See <a
href="line-item-service.html#line-item-service__line-item-service-campaigns"
class="xref">Campaigns</a> below for more details.</p>

Note:
<p>To associate a campaign to a line item, use the <code
class="ph codeph">line_item_id</code> field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a> . Please note that no
more than 500 campaigns can be associated to a single line item.</p>

<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">valuation</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">For a line
item with the <code class="ph codeph">goal_type</code> "cpc" or "ctr",
the performance goal threshold, which determines the bid/no bid cutoff
on optimized campaigns, and the performance goal target, which
represents the desired clicks or click-through rate. See <a
href="line-item-service.html#line-item-service__line-item-service-valuation"
class="xref">Valuation</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">The creatives
that are associated with the line item. See <a
href="line-item-service.html#line-item-service__line-item-service-creatives"
class="xref">Creatives</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><div
id="line-item-service__note_yk3_wc1_vwb" class="note note_note">
Note:
<p>This array is only relevant to and required for seamless line items
(if the line item is non-seamless, leave this field set to <code
class="ph codeph">null</code>).</p>

<p>Budget intervals enable multiple date intervals to be attached to a
line item, each with corresponding budget values. See <a
href="line-item-service.html#line-item-service__line-item-service-budget-intervals"
class="xref">Budget Intervals</a> below for more details.</p>

Note:
<p>If you use <code class="ph codeph">budget_intervals</code>, the
following fields should not be used on the <code
class="ph codeph">line-item</code> object:</p>
<ul>
<li><code class="ph codeph">lifetime_pacing</code></li>
<li><code class="ph codeph">lifetime_budget</code></li>
<li><code class="ph codeph">lifetime_budget_imps</code></li>
<li><code class="ph codeph">enable_pacing</code></li>
<li><code class="ph codeph">lifetime_pacing_span</code></li>
<li><code class="ph codeph">allow_safety_pacing</code></li>
<li><code class="ph codeph">daily_budget</code></li>
<li><code class="ph codeph">daily_budget_imps</code></li>
<li><code class="ph codeph">lifetime_pacing_pct</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">roadblock</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">The roadblock
settings for the line item. See <a
href="line-item-service.html#line-item-service__line-item-service-roadblock"
class="xref">Roadblock</a> below for details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
lifetime budget in revenue. The revenue currency is defined by the <code
class="ph codeph">currency</code> field. If you don't want to allocate
line item budget to this <code class="ph codeph">budget_interval</code>,
set this field to <code class="ph codeph">0</code>.</p>

Note: Only applicable to non-seamless
line items.


Note:
<p>If you also set the <code
class="ph codeph">lifetime_budget_imps</code> field, whichever budget is
exhausted first will cause spending to stop. Best practice is to only
set one of these fields.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
lifetime budget in impressions.</p>
<p><code class="ph codeph">lifetime_budget_imps</code> functions as a
lifetime "catch-all" or "cap" for a line item's total impression budget.
A line item won't exceeded the number of impressions set for this field,
and if the number of delivered impressions is greater than the mount set
for this field, the line item will stop bidding.</p>
<p>If you don't want to allocate line item budget to this <code
class="ph codeph">budget_interval</code> , set this field to <code
class="ph codeph">0</code>.</p>

Note: Only applicable to non-seamless
line items.


Note:
<p>If you also set the <code class="ph codeph">lifetime_budget</code>
field, whichever budget is exhausted first will cause spending to stop.
The best practice is to only set one of these fields.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The daily
budget in revenue. The revenue currency is defined by the <code
class="ph codeph">currency</code> field.</p>

Note: Only applicable to non-seamless
line items.


Note:
<p>If you also set the <code class="ph codeph">daily_budget_imps</code>
field, whichever budget is exhausted first will cause spending to stop.
Best practice is to only set one of these fields.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The daily
budget in impressions.</p>


Note: Only applicable to non-seamless
line items.



Note: If you also set the <code
class="ph codeph">lifetime_budget</code> field, whichever budget is
exhausted first will cause spending to stop. Best practice is to only
set one of these fields.

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>If <code
class="ph codeph">true</code>, the daily budgeted spend is spread out
evenly throughout a day. Only applicable if there is a daily budget.
That's why it defaults to <code class="ph codeph">true</code> if daily
budget is set, otherwise it defaults to <code
class="ph codeph">null</code>.</p>

Note: Only applicable to non-seamless
line items.

<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">allow_safety_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>If <code
class="ph codeph">true</code>, spend per minute is limited to a maximum
of 1% of the lifetime budget and 5% of the daily budget.</p>


Note: Only applicable to non-seamless
line items.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>If true,
the line item will attempt to spend its overall lifetime budget evenly
over the line item flight dates. If true, you cannot set a <code
class="ph codeph">daily_budget</code>, you cannot set <code
class="ph codeph">enable_pacing</code> to false, and you must first
establish a <code class="ph codeph">lifetime_budget</code>, a <code
class="ph codeph">start_date</code>, and an <code
class="ph codeph">end_date</code> for the line item.</p>

Note: Only applicable to non-seamless
line items.

<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">lifetime_pacing_span</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>In the
event of an underspend event, this indicates the number of days across
which the underspent amount will be distributed.</p>


Note: Only applicable to non-seamless
line items.


<p><strong>Default:</strong> <code class="ph codeph">null</code> (3
days)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">lifetime_pacing_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>A double
integer between-- and including-- 50 and 150, used to set pacing
throughout a budget interval. Possible values can be any double between
50 and 150 on the following scale:</p>
<ul>
<li><code class="ph codeph">50</code> - Pace behind schedule</li>
<li><code class="ph codeph">100</code> - Pace evenly</li>
<li><code class="ph codeph">150</code> - Pace ahead of schedule</li>
</ul>

Note:
<p>Alpha-Beta Notice</p>
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>



Note: Only applicable to non-seamless
line items.


<p><strong>Default:</strong> 100</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">payout_margin</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">The payout
margin on performance offer line items.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">insertion_order_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The ID of
the current active insertion order (when applicable). Must append <code
class="ph codeph">include_insertion_order_id=true</code> to return this
field in a GET call. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for
details.</p>

Note: Only seamless insertion orders
may be associated with seamless line items. Only non-seamless insertions
orders may be associated with non-seamless line items.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3">The <code
class="ph codeph">stats</code> object has been deprecated (as of October
17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">all_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>To show
Rapid Reports for all available intervals (today, yesterday, the last 7
days, life time), pass <code class="ph codeph">all_status=true</code> in
the query string of a GET request.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">object_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The number
of total, active, and inactive campaigns under the line item.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">first_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The date
and time when the line item had its first impression, refreshed on an
hourly basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they first served,
see <a
href="line-item-service.html#line-item-service__line-item-service-first-run-and-last-run"
class="xref">First Run and Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">last_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The date
and time when the line item had its last impression, refreshed on an
hourly basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they last served,
see <a
href="line-item-service.html#line-item-service__line-item-service-first-run-and-last-run"
class="xref">First Run and Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">expected_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Deprecated.</p>
<div id="line-item-service__note_atr_kb1_vwb"
class="note attention note_attention">
Attention:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">total_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Deprecated.</p>
<div id="line-item-service__note_gyn_jb1_vwb"
class="note attention note_attention">
Attention:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">has_pacing_dollars</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Deprecated.</p>
<div id="line-item-service__note_ptk_3b1_vwb"
class="note attention note_attention">
Attention:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">has_pacing_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Deprecated.</p>
<div id="line-item-service__note_hx2_hb1_vwb"
class="note attention note_attention">
Attention:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">imps_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Deprecated.</p>
<div id="line-item-service__note_nxg_gb1_vwb"
class="note attention note_attention">
Attention:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">rev_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Deprecated.</p>

<div id="line-item-service__note_syl_fb1_vwb"
class="note attention note_attention">
Attention: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">alerts</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The
conditions that are preventing the line item from serving. There are two
types of alerts: pauses and warnings. Pauses are considered intentional
and user-driven, whereas warnings are considered unintentional. Note
that, at this time, there are no warnings for line items. To retrieve
line items based on pauses, you must pass certain query string
parameters in the GET request. For more details, including a complete
list of possible pauses, see <a
href="line-item-service.html#line-item-service__line-item-service-alerts"
class="xref">Alerts</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">creative_distribution_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>When
multiple creatives of the same size are trafficked via a line item, this
field's setting is used to determine the creative rotation strategy that
will be used. Note that creatives must be managed on the line item in
order to use this field. Allowed values:</p>
<ul>
<li><code class="ph codeph">even</code>: The default. Use the standard
Xandr creative optimization algorithm, where each creative's valuation
is computed independently, and the best-valued creative is chosen to
serve.</li>
<li><code class="ph codeph">weighted</code>: Creative rotation is based
on a user-supplied weight.</li>
<li><code class="ph codeph">ctr-optimized</code>: The creative with the
highest CTR delivers the most.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"even"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">is_archived</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>Indicates
whether the line item has been automatically archived due to not being
used. Once set to <code class="ph codeph">true</code>, the value can't
be changed and the only calls that can be made on the line item object
are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code>.</p>

Note:
<p>If a line item is automatically archived, its profile as well as all
of its campaigns (and their profiles) will also be archived and the only
calls that may be made on those objects are <code
class="ph codeph">GET</code> and <code class="ph codeph">DELETE</code>.
In addition, once archived, the line item may not be associated with any
insertion orders.</p>

<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">archived_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>The date
and time on which the line item was archived (i.e., when the <code
class="ph codeph">is_archived</code> field was set to <code
class="ph codeph">true</code>).</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__3"><p>For Direct
Buying Strategy, the priority for campaigns that buy your own managed
inventory. Priority must be set on the campaign object.</p>
<p><strong>Default:</strong> 5</p></td>
</tr>
</tbody>
</table>

**Advertiser**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_wlt_nvz_5wb__entry__205"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__206"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__207"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__205"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__206">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__207">The unique
identifier for this advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__205"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__206">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__207">The name of
the advertiser associated with the unique ID above.</td>
</tr>
</tbody>
</table>

**Labels**



You can use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/label-service.html"
class="xref" target="_blank">Label Service</a> to view all possible
labels for line items, advertisers, insertion orders, campaigns, and
publishers. This service also allows you to view the labels that have
already been applied to your objects.

<table id="line-item-service__table_jr3_gg1_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_jr3_gg1_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_jr3_gg1_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_jr3_gg1_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__3">The ID of the
label. Possible values: 7, 8, 11.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__3"><p>The name of
the label. Possible values: "Trafficker", "Sales Rep", or "Campaign
Type".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_jr3_gg1_vwb__entry__3">The value
assigned to the label. For example, for the "Sales Rep" label, this
could be a name such as "Michael Sellers".</td>
</tr>
</tbody>
</table>

**Broker Fees**

When a network uses a broker to serve an impression, it pays a fee to
the broker for that service. This value varies between different
networks, different brokers, and different campaigns. Therefore, the
network must specify how much it will pay each broker it uses. This can
also be done at the Campaign level (<a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a>) or at the insertion
order level (<a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a>).

To create or edit brokers, refer to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/broker-service.html"
class="xref" target="_blank">Broker Service</a>.

<table id="line-item-service__table_icv_gg1_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_icv_gg1_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_icv_gg1_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_icv_gg1_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__1"><code
class="ph codeph">broker_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__3">The ID of the
broker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__1"><code
class="ph codeph">broker_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__3"><p>The name of
the broker.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__3"><p>The type of
payment to the broker. Possible values: "cpm" or "revshare".</p>


Note: The <code
class="ph codeph">payment_type</code> can only be set to " <code
class="ph codeph">cpm"</code> if the <code
class="ph codeph">revenue_type</code> is set to " <code
class="ph codeph">cpm</code> ". Where <code
class="ph codeph">revenue_type</code> is set to " <code
class="ph codeph">cpa</code> " or " <code class="ph codeph">cpc</code>
", <code class="ph codeph">payment_type</code> must be set to " <code
class="ph codeph">revshare</code> ".

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__3">The value of
the payment, based on the payment type.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_icv_gg1_vwb__entry__3">The free-form
description of the broker fee entry.</td>
</tr>
</tbody>
</table>



Create a Broker Fee

``` pre
$ cat add-LI-broker-fees.json
{
    "line-item":
        {
    "broker_fees":[
        {
            "broker_id": 145,
                "payment_type": "cpm",
                "value": "1.00",
                "description": "Smart JMS fee"
            }]
    }
}

$ curl -b cookies -c cookies -X PUT -d @add-LI-broker-fees.json 'https://api.appnexus.com/line-item?id=152083&advertiser_id=11'

{
    "response":{
        "status":"OK",
        "id":"152083",
        "count":1,
        "start_element":0,
        "num_elements":100,

        }
}
```





Modify a Broker Fee

``` pre
$ cat modify-LI-broker-fee.json
{
"line-item" :
{ "broker_fees": [
    {
    "broker_id": 145,
        "payment_type": "cpm",
    "value": "2.00",
        "description": "Extra JMS fee"
        }]
    }
}

$ curl -b cookies -c cookies -X PUT -d @modify-broker-fee.json $ curl -b cookies -c cookies -X PUT -d @modify-LI-broker-fee.json 'https://api.appnexus.com/line-item?id=152083&advertiser_id=11' | json-pp

{
    "response":{
        "status":"OK",
        "id":"152083",
        "count":1,
        "start_element":0,
        "num_elements":100,
     }
}
```



**Pixels**

Each object in the `pixels` array includes the following fields:

<table id="line-item-service__table_ksf_hg1_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_ksf_hg1_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_ksf_hg1_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_ksf_hg1_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__3">The ID of the
conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__3">The state of
the pixel. Possible values: "active" or "inactive".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__1"><code
class="ph codeph">post_click_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__3">The post click
revenue value for the pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__1"><code
class="ph codeph">post_view_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__3">The post view
revenue value for the pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__3"><p>The name of
the conversion pixel.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__1"><code
class="ph codeph">trigger_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_ksf_hg1_vwb__entry__3"><p>The type of
event required for an attributed conversion. Possible values: "view",
"click", or "hybrid".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>



**Insertion Orders**

<table id="line-item-service__table_p2h_3g1_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_p2h_3g1_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_p2h_3g1_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_p2h_3g1_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3"><p>The unique
ID of the insertion order.</p>

Note:
<p>Once a line item is associated with a seamless insertion order, it
cannot be associated with a non-seamless insertion order. Only seamless
insertion orders may be associated with seamless line items. Only
non-seamless insertions orders may be associated with non-seamless line
items.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The state of
this insertion order: "active" or "inactive."</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">An optional
custom code used to identify this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The name of
this insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The unique
identifier of the advertiser associated with this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The start date
for this insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The end date
for this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The timezone
that this insertion order is associated with. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a> for a list of allowed
values. The default value is <code class="ph codeph">"EST5EDT"</code> or
the advertiser's timezone.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The date at
which this insertion order object was last updated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The currency
type associated with this insertion order. For a list of supported
currencies, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_p2h_3g1_vwb__entry__3">The metadata
for the budget intervals from the associated insertion order. Budget
intervals enable multiple date intervals to be attached to an insertion
order, each with corresponding budget values. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information.</td>
</tr>
</tbody>
</table>



**Campaigns**

Each object in the `campaigns` array includes the following fields.

<table id="line-item-service__table_dnp_hg1_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_dnp_hg1_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_dnp_hg1_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_dnp_hg1_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3"><p>The ID of
the campaign.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3"><p>The name of
the campaign.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3"><p>The state of
the campaign. Possible values: "active", "inactive", or
"parent_inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">inventory_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3"><p>The type of
inventory targeted by this campaign. Possible values: "real_time",
"direct", or "both". "Real-time" includes all third-party inventory not
managed by your network that has been enabled for reselling (including
external supply partners such as Microsoft Advertising Exchange and
Google Ad Manager. "Direct" includes only inventory managed by your
network.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">cpm_bid_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3"><p>The bidding
strategy for buying third-party inventory on a per-impression basis.
Possible values: "base", "average", "clearing", "predicted", or
"margin". Average is equivalent to Estimated Average Price (EAP);
clearing is equivalent to Estimated Clear Price (ECP); predicted means
you set a CPC goal or CPA goal.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3"><p>For Direct
Buying Strategy, the priority for campaigns that buy your own managed
inventory.</p>
<p><strong>Default:</strong> 5.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3">The date the
campaign starts.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3">The date the
campaign ends.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">creative_count</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3">The number of
creatives associated with the campaign.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_dnp_hg1_vwb__entry__3">The ID of the
profile associated with the campaign.</td>
</tr>
</tbody>
</table>

**Valuation**

The valuation object is used to set performance goals for line items
with the `goal_type` "cpc" or "ctr". It contains the performance goal
threshold, which determines the bid/no bid cutoff on optimized
campaigns, and the performance goal target, which represents the desired
clicks or click-through rate.

The `valuation` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_wlt_nvz_5wb__entry__334"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__335"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__336"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__334"><code
class="ph codeph">min_margin_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__335">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__336"><p>For line
items with <code class="ph codeph">revenue_type</code> "cpm", "cpa", or
"cpc" the minimum margin PCT.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__334"><code
class="ph codeph">goal_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__335">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__336"><p>For line
items with the <code class="ph codeph">goal_type</code> "cpc" or "ctr",
the performance goal threshold, which determines the bid/no bid cutoff
on optimized campaigns.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__334"><code
class="ph codeph">goal_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__335">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__336"><p>For line
items with the <code class="ph codeph">goal_type</code> "cpc" or "ctr",
the performance goal target, representing the desired clicks or
click-through rate.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__334"><code
class="ph codeph">performance_mkt_managed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__335">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__336"><p>If <code
class="ph codeph">true</code>, the line item is a performance
marketplace line item that buys on managed inventory. This field is
applicable only when <code class="ph codeph">revenue_type</code> is
"cpc" or "cpa".</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__334"><code
class="ph codeph">campaign_group_valuation_strategy</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__335">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__336"><div
id="line-item-service__note_er5_bj1_vwb" class="note note_note">
Note:
<p>Alpha-Beta Notice</p>
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>

For line items with <code class="ph codeph">revenue_type</code> <code
class="ph codeph">“cpm”</code>, <code class="ph codeph">“cpc”</code> or
<code class="ph codeph">“cpa”</code>, determines which performance goal
optimization strategy will be applied. Possible values are:
<ul>
<li><code class="ph codeph">“prospecting”</code> - To use Xandr's
standard optimization.</li>
<li><code class="ph codeph">"retargeting"</code>- To optimize to a user
retargeting segment. If you select this setting, you must also associate
a user retargeting segment with the line item. To create user segments,
see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
class="xref" target="_blank">Segment service</a>. To associate user
retargeting segments with the line item, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Creatives**

Each object in the `creatives` array includes the following fields. To
obtain information for "id" or "code" fields you can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_wlt_nvz_5wb__entry__352"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__353"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__354"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">is_expired</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>If <code
class="ph codeph">true</code>, the creative is expired. If <code
class="ph codeph">false</code>, the creative is active.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">oolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>If <code
class="ph codeph">true</code>, the creative falls into a prohibited
category on the Xandr platform.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>The
width of the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>The
audit status of the creative. Possible values: <code
class="ph codeph">"no_audit"</code>, <code
class="ph codeph">"pending"</code>, <code
class="ph codeph">"rejected"</code>, <code
class="ph codeph">"audited"</code>, or <code
class="ph codeph">"unauditable"</code> .</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354">Read-only.
The name of the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">pop_window_maximize</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>If <code
class="ph codeph">true</code>, the publisher's tag will maximize the
window. Only relevant for creatives with format "url-html" and "url-js".
If <code class="ph codeph">pop_window_maximize</code> is set to <code
class="ph codeph">true</code>, then neither <code
class="ph codeph">height</code> nor <code class="ph codeph">width</code>
should be set on the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>The
height of the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>The
state of the creative. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>The
format of the creative file. Possible values: <code
class="ph codeph">"url-html"</code>, <code
class="ph codeph">"url-js"</code>, <code
class="ph codeph">"flash"</code>, <code
class="ph codeph">"image"</code>, <code
class="ph codeph">"raw-js"</code>, <code
class="ph codeph">"raw-html"</code>, <code
class="ph codeph">"iframe-html"</code>, or <code
class="ph codeph">"text"</code>.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">is_self_audited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354"><p>If <code
class="ph codeph">true</code>, the creative is self-audited.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354">The ID of
the creative. Either <code class="ph codeph">id</code> or <code
class="ph codeph">code</code> is required when updating creative
association.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">weight</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">int(10)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354">A
user-supplied weight that determines the creative rotation strategy for
same-sized creatives managed at the line item level. To use this field,
the value of <code class="ph codeph">creative_distribution_type</code>
must be <code class="ph codeph">"weighted"</code>. Allowed value: an
integer greater than <code class="ph codeph">0</code> and less than or
equal to <code class="ph codeph">1000</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__352"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__353">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__354">The custom
code for the creative. Either <code class="ph codeph">id</code> or <code
class="ph codeph">code</code> is required when updating creative
association.</td>
</tr>
</tbody>
</table>

**Budget Intervals**

<div id="line-item-service__note_wvs_tj1_vwb"


Note:

This array is only used for seamless line items.



Budget intervals on seamless line items must be copies of the budget
intervals defined on their parent insertion orders. Budget intervals on
the line item will automatically have the same `start_date` and
`end_date` as their corresponding insertion order budget intervals but
should have distinct budgets. These function as line item-specific
"sub-budgets" of the budget on the corresponding insertion order budget
interval.

Line item budget intervals are created (and linked to their insertion
order budget intervals) by the `parent_interval_id` field. When creating
a new seamless line item, you must populate the `budget_intervals` array
with references to all budget intervals on all insertion orders you are
associating with that line item (insertion orders are associated with
line items via the `insertion_orders` array in the Line Item Service).
This is done by adding objects to the array that contain a single field,
`parent_interval_id`, whose value is an insertion order budget interval
the line item should inherit. See *Add a seamless line item with budget
intervals* in the **Examples** section below.

Also consider the following when using the `budget_interval` array:

- Date ranges (e.g., `start_date`, `end_date`) of different budget
  intervals on the same line item cannot overlap.

- Budget intervals on the line item can have unlimited lifetime budgets
  (i.e., if those budget fields are left set to `null`).

- Budget intervals cannot be used if budget fields on the top-most level
  of the `insertion_order` object itself are set.

- Edits made to insertion order-level budget intervals are propagated to
  corresponding line item-level budget intervals (e.g., deleting a
  budget interval on the insertion order will also delete that budget
  interval on all line items that use it).

- If you are increasing the budget for the line item's budget interval,
  you must first increase the budget for the budget interval on the
  parent insertion order (otherwise you may not have sufficient budget).
  For more information, see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a>.

Each object in the `budget_intervals` array contains the following
fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_wlt_nvz_5wb__entry__394"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__395"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__396"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396">The ID of
the line item budget interval.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396">The start
date of the budget interval, which is inherited from the insertion
order. Format is YYYY-MM-DD hh:mm:ss.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396">The end
date of the budget interval, which is inherited from the insertion
order. Format must be YYYY-MM-DD hh:mm:ss (hh:mm:ss must be set to
23:59:59). Note that if the <code class="ph codeph">end_date</code> of
the parent insertion order's budget interval has been set to <code
class="ph codeph">null</code> (e.g, no end date), then the <code
class="ph codeph">end_date</code> on the line item must be set to a
non-null value.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396"><p>The
timezone by which budget and spend are counted. For a list of acceptable
timezone values, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>. The default value is
<code class="ph codeph">"EST5EDT"</code> or the advertiser's
timezone.</p>

Note:
<p>Any <code class="ph codeph">PUT</code> calls to the <code
class="ph codeph">advertiser</code> service which include <code
class="ph codeph">set_child_timezone=true</code> in the query string
will cause any timezone settings on the lower level objects (e.g.,
insertion orders, line items, campaigns) to be overridden with the
latest timezone value for that advertiser.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">parent_interval_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396">The ID of
the parent insertion order's budget interval. This is the <code
class="ph codeph">id</code> field in the <code
class="ph codeph">budget_intervals</code> array on the insertion order.
Required in order for the line item's budget interval to inherit the
values of the <code class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields in the insertion order's budget
interval.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396"><p>The
lifetime budget in revenue for the budget interval. The revenue currency
is defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object. Set this field to
<code class="ph codeph">0</code> if you don't want the line item to
spend during this budget interval.</p>
<p>This field defaults to <code class="ph codeph">null</code>
(unlimited).</p>

Note:
<p>If you also set the <code
class="ph codeph">lifetime_budget_imps</code> field in this array,
whichever budget is exhausted first will cause spending to stop. Best
practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396"><p>The
lifetime budget in impressions for the budget interval. Note that, if
you add line items to this insertion order, any spend already associated
with those line items before they are added to the insertion order is
NOT counted against the lifetime budget of the insertion order. Only
spend that occurs while the line item is a child of the insertion order
is counted. Set this field to <code class="ph codeph">0</code> if you
don't want the line item to spend during this budget interval.</p>
<p>This field defaults to <code class="ph codeph">null</code>
(unlimited).</p>

Note:
<p>If you also set the <code class="ph codeph">lifetime_budget</code>
field in this array, whichever budget is exhausted first will cause
spending to stop. Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396">If <code
class="ph codeph">true</code>, the line item will attempt to pace the
lifetime budget evenly over the budget interval. If <code
class="ph codeph">true</code> , you must set <code
class="ph codeph">lifetime_budget</code> or <code
class="ph codeph">lifetime_budget_imps</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396"><p>The
daily budget in revenue for the budget interval. The revenue currency is
defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object. Note that, if you
add line items to this insertion order, any impressions associated to
those line items when they are added to the insertion order are NOT
counted under the lifetime budget of the insertion order. Only
impressions that occur while the line item is a child of the insertion
order are counted.</p>
<p>This field defaults to <code class="ph codeph">null</code>
(unlimited).</p>

Note:
<p>If you also set the <code class="ph codeph">daily_budget_imps</code>
field in this array, whichever budget is exhausted first will cause
spending to stop. Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396"><p>The
daily budget in impressions.</p>
<p>This field defaults to <code class="ph codeph">null</code>
(unlimited).</p>

Note:
<p>If you also set the <code class="ph codeph">daily_budget</code>
field, whichever budget is exhausted first will cause spending to stop.
Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__394"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__395">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__396">If <code
class="ph codeph">true,</code> then spending will be paced over the
course of the day. Only applicable if there is a <code
class="ph codeph">daily_budget</code>.</td>
</tr>
</tbody>
</table>

**Goal Pixels**

The `goal_pixels` array is used when working with `goal_type`"cpa" and
contains information about performance goal targets and thresholds.

Each object in the `goal_pixels` array includes the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__section_wlt_nvz_5wb__entry__430"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__431"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__section_wlt_nvz_5wb__entry__432"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">The ID of
the conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">The state
of the pixel. Possible values: "active" or "inactive".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">post_click_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">Deprecated.
Use post_click_goal_target and post_click_goal_threshold instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">post_view_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">Deprecated.
Use post_view_goal_target and post_view_goal_threshold instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">trigger_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432"><p>The type
of event required for an attributed conversion. Possible values: "view",
"click", or "hybrid".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">post_click_goal_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">The
post-click advertiser goal value for the pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">post_view_goal_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">The
post-view advertiser goal value for the pixel. (Comparable to goal_value
for goal_type "cpc" and "ctr".)</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">post_click_goal_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">The
post-click advertiser goal threshold for the pixel, which determines the
bid/no bid cutoff on optimized campaigns. Cannot be enabled without a
target set. (Comparable to goal_threshold in the valuation object for
goal_type "cpc" and "ctr".)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__430"><code
class="ph codeph">post_view_goal_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__431">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__section_wlt_nvz_5wb__entry__432">The
post-view advertiser goal threshold for the pixel, which determines the
bid/no bid cutoff on optimized campaigns. Cannot be enabled without a
target set. (Comparable to goal_ threshold in the valuation object for
goal_type "cpc" and "ctr".)</td>
</tr>
</tbody>
</table>

**Delivery Goal**



This section applies only to Publisher Ad Server clients.

<table id="line-item-service__table_fl5_bmd_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_fl5_bmd_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_fl5_bmd_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_fl5_bmd_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_fl5_bmd_vwb__entry__1"><code
class="ph codeph">delivery_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_fl5_bmd_vwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_fl5_bmd_vwb__entry__3"><p><strong>For
Guaranteed Delivery line items only.</strong> For Guaranteed Delivery
line items, the most important performance indicator is that the line
item delivers its budget in full and evenly across its flight dates. To
achieve these ends, these line items have an associated <code
class="ph codeph">delivery_goal</code>. These line items will deliver
their impression or percentage goals evenly across their flight dates.
This array specifies exactly what the line item's goals are.</p>
<p>For more information about Guaranteed Delivery line items, see <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Guaranteed Delivery</a> (customer login required).</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>



**Delivery Goal**

<div id="line-item-service__note_fs2_rnd_vwb"


Note:

The `delivery_goal` array contains information about the delivery goal
attached to this line item. Guaranteed Delivery line items will attempt
to deliver against impression or percentage goals.

In order for Guaranteed Delivery line items to serve, there are a number
of different validations that have to be performed. The validations
change depending on the type of delivery goal; they are described below.



To see how to create a Guaranteed Delivery line item and its associated
campaign (in a way that passes the validations described in this
section), see the *Create a guaranteed delivery line item* example.

<table id="line-item-service__table_b4y_3nd_vwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_b4y_3nd_vwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_b4y_3nd_vwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_b4y_3nd_vwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3">The unique,
automatically generated ID of this delivery goal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3">The type of
delivery goal. Allowed values:
<ul>
<li><p><code class="ph codeph">"impressions"</code> : Guaranteed
Delivery line items with impression goals will attempt to serve the
specified number of impressions evenly across their flight dates. If the
delivery goal <code class="ph codeph">type</code> is <code
class="ph codeph">"impressions"</code>, budget must be set at the line
item level.</p></li>
<li><p><code class="ph codeph">"percentage"</code> : Currently, the
percentage goal is only available for "exclusive" Guaranteed line items.
Note that if the delivery goal <code class="ph codeph">type</code> is
<code class="ph codeph">"percentage"</code>, the line item cannot have a
budget.</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"><code
class="ph codeph">disallow_non_guaranteed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3">When <code
class="ph codeph">true</code>, this line item will always serve over
non-guaranteed line items participating in the same (managed)
auction.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"><code
class="ph codeph">percentage</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3">If the type of
delivery goal is <code class="ph codeph">"percentage"</code>, this is
the actual percentage at which the Guaranteed Delivery line item will
serve. Allowed values are integers 0 &lt;= n &lt;= 100. If the delivery
goal's <code class="ph codeph">type</code> is <code
class="ph codeph">"impressions"</code>, this field must be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"><code
class="ph codeph">reserved</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3"><strong>This is
a required field.</strong> When <code class="ph codeph">true</code>,
this line item has inventory "reserved" for it; in other words, the line
item is set to purchase a guaranteed number or percentage of impressions
on a seller's inventory during its flight. Note that you will not be
able to set a guaranteed line item's <code
class="ph codeph">state</code> to <code
class="ph codeph">"active"</code> unless this field is set to <code
class="ph codeph">true</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"><code
class="ph codeph">guaranteed_delivery_version</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3">This temporary
flag denotes the version of the Guaranteed Delivery pacing algorithm
being used. It can be set at either the member or line item level. The
flag will be removed when the new version (2) of the algorithm is
released platform-wide. Allowed values:
<ul>
<li><code class="ph codeph">1</code></li>
<li><code class="ph codeph">2</code></li>
</ul>
<p>Default: <code class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__1"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__2"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_b4y_3nd_vwb__entry__3"></td>
</tr>
</tbody>
</table>



Validations on Guaranteed Delivery Line Items

In order for a Guaranteed Delivery line item to serve, you must create
the line item and associate it with one or more campaigns -- the
campaigns are not created automatically when you set up the Guaranteed
Delivery line item.

Further validations on Guaranteed Delivery line items include:

- The line item must have a valid `start_date` and `end_date`.
- `lifetime_pacing` must be set to `true`.
- `enable_pacing` must be set to `false`.
- `manage_creative` must be set to `true`.
- `allow_safety_pacing` must be set to `false`.
- The associated campaign's `inventory_type` must be `"direct"`.
- If the delivery goal type is `"impressions"`, the budget must be set
  at the line item level.
- If the delivery goal type is `"impressions"`, the `lifetime_budget`
  and `daily_budget` fields must **not** be set.
- If the delivery goal type is `"impressions"`, then
  `lifetime_budget_imps` must be set.
- If the delivery goal type is `"percentage"`, the line item cannot have
  a budget associated with it.
- The line item's `revenue_type` must be one of:
  - `"cpm"`
  - `"flat_fee"`
- The line item's `publishers_allowed` must be set to `"direct"`.
- If you associate only one campaign with a line item, that campaign's
  `start_date` and `end_date` must be set to `null`.



**Stats**

The `stats` object has been deprecated (as of October 17, 2016). Use the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.

**First Run and Last Run**

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for line
items based on when they first and last served, as follows:

**Retrieve only line items that have never served**

**Retrieve only line items that first served on or after a specific
date**

**Retrieve only line items that first served on or before a specific
date**

**Retrieve only line items that first served within a specific date
range**

**Retrieve only line items that last served on or after a specific
date**

**Retrieve only line items that last served on or before a specific
date**

**Retrieve only line items that last served within a specific date
range**

Fields of the type date can be filtered by `nmin` and `nmax` as well.
The `nmin` filter lets you find dates that are either null or after the
specified date, and the `nmax` filter lets you find dates that are
either null or before the specified date.

**Alerts**

This field notifies you of conditions that are preventing the line item
from serving. There are two types of alerts: pauses and warnings. Pauses
are considered intentional and user-driven, whereas warnings are
considered unintentional.



<div id="line-item-service__note_yf4_5rd_vwb"


Note: At this time, there are no
warnings for line items.





To retrieve line items based on pauses, you must pass certain query
string parameters in the GET request. See below for use cases with query
string parameters and examples. Note that you can use these query string
parameters both when retrieving all line items or specific line items,
but the examples below only cover retrieving all line items, as that is
where this feature offers the most value.

**Retrieve all line items and show alerts**

Pass `show_alerts=true` in the query string. This parameter will add the
`alerts` object to every line item in the response, whether or not the
line item has pauses.



<div id="line-item-service__note_eds_1hf_xwb"


Note: For each of the use cases below,
you must pass `show_alerts=true` if you want the `alerts` object to show
up in the response.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?show_alerts=true'

{
    "response": {
        "status": "OK",
        "line-items": [

            {
                "id": 45047,
                "code": null,
                "name": "Line Item 1",
                "advertiser_id": 35081,
                "state": "active",
                "start_date": "2012-04-01 00:00:00",
                "end_date": "2012-05-01 00:00:00",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 4,
                            "message": "Flight end date is in the past."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 45048,
                "code": null,
                "name": "Line Item 2",
                "advertiser_id": 35081,
                "state": "inactive",
                "start_date": "2012-05-21 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 46308,
                "code": null,
                "name": "Test Line Item",
                "advertiser_id": 45278,
                "state": "inactive",
                "start_date": "2012-06-06 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 128,
                            "message": "All campaigns under this line item are inactive."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            ...
        ],
        ...
        }
    }
}
```



**Retrieve only line items that have at least one pause**



Pass `show_alerts=true&pauses=true` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?show_alerts=true&pauses=true'

{
    "response": {
        "status": "OK",
        "line-items": [
            {
                "id": 45047,
                "code": null,
                "name": "Line Item 1",
                "advertiser_id": 35081,
                "state": "active",
                "start_date": "2012-04-01 00:00:00",
                "end_date": "2012-05-01 00:00:00",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 4,
                            "message": "Flight end date is in the past."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 45048,
                "code": null,
                "name": "Line Item 2",
                "advertiser_id": 35081,
                "state": "inactive",
                "start_date": "2012-05-21 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 46308,
                "code": null,
                "name": "Line Item 6",
                "advertiser_id": 45278,
                "state": "inactive",
                "start_date": "2012-06-06 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        }   
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            ...
        ],
        ...
        }
    }
}
```



**Retrieve only line items that have no pauses**



Pass `show_alerts=true&pauses=false` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=false'

{
    "response": {
        "status": "OK",
        "line-items": [
            {
                "id": 45054,
                "code": null,
                "name": "Line Item 7",
                "advertiser_id": 35081,
                "state": "active",
                "start_date": "2012-04-01 00:00:00",
                "end_date": "2012-05-01 00:00:00",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 45057,
                "code": null,
                "name": "Line Item 9",
                "advertiser_id": 35081,
                "state": "active",
                "start_date": "2012-05-21 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 46345,
                "code": null,
                "name": "Line Item 12",
                "advertiser_id": 45278,
                "state": "active",
                "start_date": "2012-06-06 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            ...
        ],
        ...
        }
    }
}
```



**Retrieve only line items that have a specific pause**

Pass `show_alerts=true&pauses=PAUSE_ID` in the query string. For pause
IDs, see the \[#Pauses||\\|\] table below.



In this example, we use pause ID 2 to retrieve all line items with
flight start dates that are in the future.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?show_alerts=true&pauses=2'

{
    "response": {
        "status": "OK",
        "line-items": [
            {
                "id": 45047,
                "code": null,
                "name": "Line Item 5",
                "advertiser_id": 35081,
                "state": "active",
                "start_date": "2012-11-01 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 2,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 45048,
                "code": null,
                "name": "Line Item 7",
                "advertiser_id": 35081,
                "state": "active",
                "start_date": "2012-10-15 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 2,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },

            ...
        ],
        ...
        }
    }
}
```



**Retrieve only line items that have two or more specific pauses**

Pass `show_alerts=true&pauses=SUM_OF_PAUSE_IDS` in the query string. For
pause IDs, see the \[#Pauses||\\|\] table below.



In this example, we add together pause ID 1 and pause ID 2 to retrieve
all line items that are set to inactive and have a flight state date in
the future.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?show_alerts=true&pauses=3'

{
    "response": {
        "status": "OK",
        "line-items": [
            {
                "id": 45047,
                "code": null,
                "name": "Line Item 3",
                "advertiser_id": 35081,
                "state": "inactive",
                "start_date": "2012-11-01 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },
            {
                "id": 45048,
                "code": null,
                "name": "Line Item 7",
                "advertiser_id": 35081,
                "state": "inactive",
                "start_date": "2012-10-15 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": null,
                    "pauses_last_checked": "2012-07-27 19:01:07"
                }
            },

            ...
        ],
        ...
        }
    }
}
```

Pauses

<table id="line-item-service__table_a4w_nhf_xwb" class="table">
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_a4w_nhf_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">ID</th>
<th id="line-item-service__table_a4w_nhf_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__1">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__2">State is set to
inactive.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__1">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__2">Flight start is
in the future.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__1">4</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__2">Flight end is
in the past.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__1">128</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_a4w_nhf_xwb__entry__2">All campaigns
under this line item are inactive.</td>
</tr>
</tbody>
</table>

**Flat Fee**



The `flat_fee` object contains the following fields.

<table id="line-item-service__table_kvs_shf_xwb" class="table">
<colgroup>
<col style="width: 33%" />
<col style="width: 23%" />
<col style="width: 42%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_kvs_shf_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_kvs_shf_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_kvs_shf_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__1"><code
class="ph codeph">flat_fee_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__3"><p>The status
of the flat fee disbursement. Possible values: <code
class="ph codeph">"pending"</code> , <code
class="ph codeph">"processing"</code> , <code
class="ph codeph">"allocated"</code> , or <code
class="ph codeph">"error"</code> .</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__1"><code
class="ph codeph">flat_fee_allocation_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__3">The date when
the flat fee revenue is scheduled to be allocated to publishers.
Example: <code class="ph codeph">"2012-06-08 00:00:00".</code>This value
will be null if the <code class="ph codeph">flat_fee_type</code> is
<code class="ph codeph">daily</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__1"><code
class="ph codeph">flat_fee_adjustment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_kvs_shf_xwb__entry__3">The ID for any
adjustments required to this flat fee.</td>
</tr>
</tbody>
</table>

**Roadblock**

Roadblocks can be set at only one level, either line item or campaign.
If a roadblock has been set on a campaign, it can't be set on the parent
line item. Roadblocks can be applied only for managed inventory and
can't be enabled when you're working with third-party inventory.

<table id="line-item-service__table_oqp_n3f_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service__table_oqp_n3f_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service__table_oqp_n3f_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service__table_oqp_n3f_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__3"><p>The type of
roadblock. Possible values include:</p>
<p><code class="ph codeph">no_roadblock</code>: There is no roadblocking
set at the line item level.</p>
<p><code class="ph codeph">normal_roadblock</code>: The line item serves
if the number of creatives is greater than or equal to the number of ad
slots available.</p>
<p><code class="ph codeph">partial_roadblock</code>: The line item
serves when at least one creative of each size fits an eligible ad
slot.</p>
<p><code class="ph codeph">exact_roadblock</code>: The line item serves
when the number of creatives is equal to the number of ad slots
available.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__1"><code
class="ph codeph">master_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__3">The width of
the master creative. Set this value only when using page-level
roadblocking. For standard roadblocking, omit this field or set the
value to 0. (Do not set the value to null.)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__1"><code
class="ph codeph">master_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service__table_oqp_n3f_xwb__entry__3">The height of
the master creative. Set this value only when using page-level
roadblocking. For standard roadblocking, omit this field or set the
value to 0. (Do not set the value to null.)</td>
</tr>
</tbody>
</table>

The master creative is the creative with a size matching the
`master_height` and `master_width` specified in the roadblock object. If
more than one creative matches that size, the system will choose one as
the master.

The master creative is used for page-level roadblocking, where one
impression is recorded for the full set of creatives delivered for the
roadblock. That recorded impression is based on the master creative.
This means that if the master creative doesn't serve, no impression will
be recorded. If you want to use creative-level roadblocking, where each
creative delivered is counted as an impression, leave the `master_width`
and `master_height` values blank.



<div id="line-item-service__section_ohy_r3f_xwb"
>

## Examples

**Add a seamless line item with budget intervals**



In this example, we'll create a new inactive seamless line item,
"Lauren's Line Item", that uses budget intervals. We have already
created an insertion order `(238174)` with billing periods to which we
want to associate the new line item. The budget intervals of the line
item will be associated with those of the insertion order through the
`parent_interval_id` field in the `budget_intervals` array on the line
item.

``` pre
$ cat line-item
{
    "line-item": {
        "name": "Lauren's Line Item",
        "state": "inactive",
        "insertion_orders": [
            {
                "id": 238174
            }
        ],
        "budget_intervals": [
            {
                "parent_interval_id": 1377
            },
            {
                "parent_interval_id": 1378
            }
        ]
    }
}
```

``` pre
$ curl -b cookies -X POST -d @line-item.json "https://api.appnexus.com/line-item?&advertiser_id=599314"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 2304063,
    "start_element": 0,
    "num_elements": 100,
    "line-item": {
      "id": 2304063,
      "code": null,
      "name": "Lauren's Line Item",
      "advertiser_id": 599314,
      "state": "inactive",
      "start_date": null,
      "end_date": null,
      "timezone": "EST5EDT",
      "discrepancy_pct": 0,
      "publishers_allowed": "all",
      "revenue_value": 0,
      "revenue_type": "cpm",
      "goal_type": "none",
      "goal_value": null,
      "last_modified": "2015-09-02 14:17:50",
      "click_url": null,
      "currency": "USD",
      "require_cookie_for_tracking": true,
      "profile_id": null,
      "member_id": 958,
      "comments": null,
      "remaining_days": null,
      "total_days": null,
      "manage_creative": false,
      "advertiser": {
        "id": 599314,
        "name": "Cindy's Adv"
      },
      "flat_fee": null,
      "delivery_goal": null,
      "labels": null,
      "broker_fees": null,
      "pixels": null,
      "insertion_orders": [
        {
          "id": 238174,
          "state": "inactive",
          "code": null,
          "name": "LH Test IO",
          "advertiser_id": 599314,
          "start_date": null,
          "end_date": null,
          "timezone": "EST5EDT",
          "last_modified": "2015-09-02 13:56:56",
          "currency": "USD",
          "budget_intervals": [
            {
              "id": 1377,
              "object_id": 238174,
              "object_type": "insertion_order",
              "start_date": "2015-09-02 00:00:00",
              "end_date": "2015-09-10 00:00:00",
              "timezone": "EST5EDT",
              "lifetime_budget": 1000,
              "lifetime_budget_imps": null,
              "lifetime_pacing": false,
              "enable_pacing": false,
              "daily_budget_imps": null,
              "daily_budget": null
            },
            {
              "id": 1378,
              "object_id": 238174,
              "object_type": "insertion_order",
              "start_date": "2015-09-10 00:00:00",
              "end_date": "2015-09-18 00:00:00",
              "timezone": "EST5EDT",
              "lifetime_budget": 1000,
              "lifetime_budget_imps": null,
              "lifetime_pacing": false,
              "enable_pacing": false,
              "daily_budget_imps": null,
              "daily_budget": null
            }
          ]
        }
      ],
      "goal_pixels": null,
      "imptrackers": null,
      "clicktrackers": null,
      "campaigns": null,
      "valuation": {
        "performance_mkt_managed": false,
      },
      "creatives": null,
      "budget_intervals": [
        {
          "id": 1379,
          "object_id": 2304063,
          "object_type": "campaign_group",
          "start_date": "2015-09-02 00:00:00",
          "end_date": "2015-09-10 00:00:00",
          "timezone": "EST5EDT",
          "parent_interval_id": 1377,
          "budget_allocation": null
        },
        {
          "id": 1380,
          "object_id": 2304063,
          "object_type": "campaign_group",
          "start_date": "2015-09-10 00:00:00",
          "end_date": "2015-09-18 00:00:00",
          "timezone": "EST5EDT",
          "parent_interval_id": 1378,
          "budget_allocation": null
        }
      ],
      "lifetime_budget": null,
      "lifetime_budget_imps": null,
      "daily_budget": null,
      "daily_budget_imps": null,
      "enable_pacing": null,
      "allow_safety_pacing": null,
      "lifetime_pacing": null,
      "lifetime_pacing_span": null,
      "lifetime_pacing_pct": null,
      "payout_margin": null
    }
  }
}
```



**Add a non-seamless line item**



In this example, we'll create a new line item and associate a conversion
pixel with our new line item. Note that we are not linking any campaigns
to this line item yet; therefore `campaigns` is set to `null`.

``` pre
$ cat line-item
{
    "line-item": {
    "name": "Weekday French Speakers Q3 2012",
    "state": "inactive",
    "comments": "The name says it all -- that's who we're trying to advertise to",
    "daily_budget": null,
    "revenue_type": "cpa",
    "code": "wfspq312",
    "pixels": [
        {
        "id": "123456",
        "state": "inactive",
        "post_view_revenue": null,
        "post_click_revenue": "30.000000"
        }
    ],
    "start_date": "2011-11-04 00:00:00",
    "lifetime_budget": null,
    "end_date": null,
    "enable_pacing": null,
    "allow_safety_pacing": null,
    "publishers_allowed": "all",
    "campaigns": null
    }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @line-item "https://api.appnexus.com/line-item?advertiser_id=51"
```



**Add a line item with a CPC performance goal**



In this example, we'll create a line item with a CPC performance goal.
We're setting a cost-per-click goal threshold of $2.34 and a target (for
reporting purposes) of $2.00.

``` pre
$ cat line-item
{
    "line-item": {
    "name": "Weekday French Speakers Q3 2012",
    "state": "inactive",
    "comments": "The name says it all -- that's who we're trying to advertise to",
    "daily_budget": null,
    "revenue_type": "cpm",
    "goal_type": "cpc",
    "valuation": {
        "goal_target":2.00,
        "goal_threshold":2.34
    }
    "lifetime_budget": null,
    "end_date": null,
    "enable_pacing": null,
    "allow_safety_pacing": null,
    "publishers_allowed": "all",
    "campaigns": null
    }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @line-item "https://api.appnexus.com/line-item?advertiser_id=51"
```



**Add a line item with a CPA performance goal**



In this example, we'll create a line item with a CPA performance goal.
We're setting a CPA goal threshold of $4.56 and a target (for reporting
purposes) of $4.00.

``` pre
$ cat line-item
{
    "line-item": {
    "name": "Weekday French Speakers Q3 2012",
    "state": "inactive",
    "comments": "The name says it all -- that's who we're trying to advertise to",
    "daily_budget": null,
    "revenue_type": "cpm",
    "goal_type": "cpa",
    "pixels": [
        {
        "id": "123456",
        "state": "inactive",
        "post_view_revenue": null,
        "post_click_revenue": "30.000000"
        }
    ],
    "goal_pixels":[
        {
        "id":"123456",
        "post_view_goal_threshold":4.56,
        "post_view_goal_target":4.00
        }
    ].
    "lifetime_budget": null,
    "end_date": null,
    "enable_pacing": null,
    "allow_safety_pacing": null,
    "publishers_allowed": "all",
    "campaigns": null
    }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @line-item "https://api.appnexus.com/line-item?advertiser_id=51"
```



**Add a performance offer line item**



In this example, we'll create a performance offer line item that buys
both managed and cross-net inventory on a cpc basis.

``` pre
$ cat line-item
{
    "line-item": {
        "name": "US CA",
        "state": "inactive",
        "daily_budget": null,
        "revenue_type": "cpc",
        "revenue_value": "5.00",
        "goal_type": "none",
        "valuation": {
            "performance_mkt_managed": true,
        },
        "lifetime_budget": null,
        "end_date": null,
        "enable_pacing": null,
        "allow_safety_pacing": null,
        "publishers_allowed": "all",
        "campaigns": null,
        "manage_creative": true,
        "payout_margin": 0.2
    }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @line-item "https://api.appnexus.com/line-item?advertiser_id=51"
```



**View a line item**



To view a specific line item, we must pass in the line item and
advertiser IDs via the query string. This line item has a conversion
pixel already set up.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?id=164532&advertiser_id=52049'

{
    "response": {
    "status": "OK",
    "line-item": {
        "id": 164532,
        "code": "wfspq312",
        "name": "Weekday French Speakers Q3 2012",
        "advertiser_id": 52049,
        "state": "inactive",
        "start_date": "2011-11-04 00:00:00",
        "end_date": null,
        "timezone": "EST5EDT",
        "discrepancy_pct": 0,
        "lifetime_budget": null,
        "lifetime_budget_imps": null,
        "daily_budget": null,
        "daily_budget_imps": null,
        "enable_pacing": null,
        "allow_safety_pacing": null,
        "publishers_allowed": "all",
        "revenue_value": 0,
        "revenue_type": "cpa",
        "pixels": [
        {
            "id": "39688",
            "state": "inactive",
            "post_view_revenue": null,
            "post_click_revenue": "30.000000"
        }
        ],
        "campaigns": null,
        "insertion_orders": null,
        "goal_type": "none",
        "goal_value": null,
        "goal_pixels": null,
        "last_modified": "2012-06-19 20:29:38",
        "all_stats": null,
        "click_url": null,
        "currency": "USD",
        "require_cookie_for_tracking": true,
        "labels": null,
        "advertiser": {
        "id": 52049,
        "name": "Cody's Great Advertiser"
        },
        "broker_fees": null,
        "profile_id": null,
        "member_id": 1282,
        "flat_fee": null,
        "imptrackers": null,
        "clicktrackers": null,
        "comments": "The name says it all -- that's who we're trying to advertise to",
        "is_malicious": false,
        "remaining_days": null,
        "total_days": 60
    },
    "count": 1,
    "start_element": null,
    "num_elements": null
    }
}
```



**View all of an advertiser's line items**



Unlike the examples above, this line item has two campaigns attached, as
well as a `goal_pixels` array. Notice that even though this advertiser
has only one line item, it's returned via the `line-items` JSON array.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=51'

{
   "response":{
      "status":"OK",
      "line-items":[
         {
            "id":2,
            "code":null,
            "name":"Default Line Item",
            "advertiser_id":51,
            "state":"active",
            "start_date":null,
            "end_date":null,
            "timezone":"EST5EDT",
            "lifetime_budget":null,
            "lifetime_budget_imps":null,
            "daily_budget":null,
            "daily_budget_imps":null,
            "enable_pacing":false,
            "publishers_allowed":"all",
            "lifetime_spend":null,
            "lifetime_imps":null,
            "daily_spend":null,
            "daily_imps":null,
            "revenue_value":null,
            "revenue_type":null,
            "pixels":[
               {
                  "id":"934",
                  "state":"active",
                  "post_view_revenue":null,
                  "post_click_revenue":null
               }
            ],
            "campaigns":[
               {
                  "id":"21999",
                  "name":"My second campaign",
                  "state":"inactive"
               },
               {
                  "id":"21180",
                  "name":"My first campaign",
                  "state":"active"
               }
            ],
            "goal_type":"cpa",
            "goal_value":null,
            "goal_pixels":[
               {
                  "id":934,
                  "state":"active",
                  "post_view_goal":1,
                  "post_click_goal":2
               }
            ],
            "labels" [
               {
                  "value: "First Contact",
                  "id": 7,
                  "name": "Trafficker"
               },
               {
                  "value: "Second Contact",
                  "id": 8,
                  "name": "Sales Rep"
               },
            "last_modified":"2010-06-09 19:32:56",
            "comments": null
            "is_malicious": false,
            "remaining_days": null,
            "total_days": 30
         }
      ],
      "count":1,
      "start_element":null,
      "num_elements":null
   }
}
```



**Modify a budget interval on a seamless line item**

<div id="line-item-service__note_lr1_zjf_xwb"


Note:

Do not modify the values of the `start_date` or `end_date` fields within
the budget interval on the line item. The line item inherits its budget
interval dates from the parent insertion order.



``` pre
$ cat modify-budget-interval
{
    "line-item": {
        "budget_intervals": [
            {
                "parent_interval_id": 197186,
                "id": 219368,
                "lifetime_budget": 100
            },
            {
                "parent_interval_id": 197187,
                "id": 219369,
                "lifetime_budget": 100
            }
        ]
    }
}
curl -b cookies -X PUT -d @modify-budget-interval "https://api.appnexus.com/line-item?advertiser_id=608591&id=3319754"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": "3319754",
    "start_element": 0,
    "num_elements": 100,
    "line-item": {
      "id": 3319754,
      "code": null,
      "name": "Seamless Line Item Test",
      "advertiser_id": 608591,
      "state": "active",
      "start_date": null,
      "end_date": null,
      "timezone": "EST5EDT",
      "discrepancy_pct": 0,
      "publishers_allowed": "all",
      "revenue_value": 0,
      "revenue_type": "cpm",
      "goal_type": "none",
      "goal_value": null,
      "last_modified": "2016-09-01 17:44:32",
      "click_url": null,
      "currency": "USD",
      "require_cookie_for_tracking": true,
      "profile_id": null,
      "member_id": 958,
      "comments": null,
      "remaining_days": null,
      "total_days": null,
      "manage_creative": false,
      "creative_distribution_type": null,
      "line_item_type": "standard_v1",
      "prefer_delivery_over_performance": false,
      "advertiser": {
        "id": 608591,
        "name": "Don Test Advertiser"
      },
      "flat_fee": null,
      "delivery_goal": null,
      "labels": null,
      "broker_fees": null,
      "pixels": null,
      "insertion_orders": [
        {
          "id": 379643,
          "state": "inactive",
          "code": null,
          "name": "Seamless Insertion Order Test",
          "advertiser_id": 608591,
          "start_date": null,
          "end_date": null,
          "timezone": "EST5EDT",
          "last_modified": "2016-08-30 15:23:07",
          "currency": "USD",
          "budget_intervals": [
            {
              "id": 197186,
              "object_id": 379643,
              "object_type": "insertion_order",
              "start_date": "2016-09-01 00:00:00",
              "end_date": "2016-09-30 00:00:00",
              "timezone": "EST5EDT",
              "lifetime_budget": null,
              "lifetime_budget_imps": null,
              "daily_budget_imps": null,
              "daily_budget": null,
              "enable_pacing": false,
              "lifetime_pacing": false,
              "lifetime_pacing_pct": null
            },
            {
              "id": 197187,
              "object_id": 379643,
              "object_type": "insertion_order",
              "start_date": "2016-10-01 00:00:00",
              "end_date": "2016-10-31 00:00:00",
              "timezone": "EST5EDT",
              "lifetime_budget": null,
              "lifetime_budget_imps": null,
              "daily_budget_imps": null,
              "daily_budget": null,
              "enable_pacing": false,
              "lifetime_pacing": false,
              "lifetime_pacing_pct": null
            }
          ]
        }
      ],
      "goal_pixels": null,
      "imptrackers": null,
      "clicktrackers": null,
      "campaigns": null,
      "valuation": {
        "min_margin_pct": null,
        "max_avg_cpm": null,
        "min_avg_cpm": null,
        "goal_target": null,
        "goal_threshold": null,
        "no_revenue_log": false,
        "performance_mkt_managed": false,
        "bid_price_pacing_enabled": false,
        "bid_price_pacing_lever": 0,
        "goal_confidence_threshold": null
      },
      "creatives": null,
      "budget_intervals": [
        {
          "id": 219368,
          "object_id": 3319754,
          "object_type": "campaign_group",
          "start_date": "2016-09-01 00:00:00",
          "end_date": "2016-09-30 00:00:00",
          "timezone": "EST5EDT",
          "parent_interval_id": 197186,
          "lifetime_budget": 100,
          "lifetime_budget_imps": null,
          "lifetime_pacing": false,
          "enable_pacing": true,
          "daily_budget_imps": null,
          "daily_budget": null
        },
        {
          "id": 219369,
          "object_id": 3319754,
          "object_type": "campaign_group",
          "start_date": "2016-10-01 00:00:00",
          "end_date": "2016-10-31 00:00:00",
          "timezone": "EST5EDT",
          "parent_interval_id": 197187,
          "lifetime_budget": 100,
          "lifetime_budget_imps": null,
          "lifetime_pacing": false,
          "enable_pacing": true,
          "daily_budget_imps": null,
          "daily_budget": null
        }
      ],
      "expected_value_model": null,
      "custom_models": null,
      "inventory_discovery": null,
      "inventory_discovery_budget": null,
      "incrementality": null,
      "lifetime_budget": null,
      "lifetime_budget_imps": null,
      "daily_budget": null,
      "daily_budget_imps": null,
      "enable_pacing": null,
      "allow_safety_pacing": null,
      "lifetime_pacing": null,
      "lifetime_pacing_span": null,
      "lifetime_pacing_pct": null,
      "payout_margin": null
    },
    "dbg_info": {
      ...
    }
  }
}
```



<div id="line-item-service__note_wwv_xjf_xwb"


Note: This section applies only to
Publisher Ad Server clients. Create a guaranteed delivery line item.

Creating a Guaranteed Delivery line item requires that your line
item/campaign combo meets all of the validations described in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html#LineItemService-DeliveryGoal"
class="xref" target="_blank">Delivery Goal</a> section. Note that you
will also need to associate the line item with a targeting <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">profile</a>.

In this example we'll create a line item, and then a campaign associated
with that line item.



<div id="line-item-service__note_fxj_4kf_xwb"


Note: Always create the Line Item
first. In order to avoid a race condition in the API, create your line
item first, then the associated campaign.





``` pre
$ cat guaranteed-delivery-line-item.json
     
{
    "line-item": {
        "name": "Rich's Second Guaranteed Line Item - Impressions Delivery Goal",
        "state": "inactive",
        "lifetime_budget_imps": 10000,
        "lifetime_pacing": true,
        "enable_pacing": false,
        "manage_creative": true,
        "allow_safety_pacing": false,
        "delivery_goal": {
            "type": "impressions",
            "disallow_non_guaranteed": true
        },
        "daily_budget": null,
        "revenue_type": "cpm",
        "start_date": "2015-05-15 00:00:00",
        "end_date": "2015-05-20 00:00:00",
        "lifetime_budget": null,
        "publishers_allowed": "direct",
        "campaigns": null
    }
}

$ curl -b cookies -X POST -d @guaranteed-delivery-line-item.json 'https://api.appnexus.com/line-item?advertiser_id=561703'
```

Now that we have a Guaranteed Delivery line item, we need to create the
associated campaign:

``` pre
$ cat campaign.json


{
    "campaign": {
         "state": "inactive",
         "name": "Rich's Guaranteed Campaign",
         "advertiser_id": 41884,
         "line_item_id": 232854,
         "inventory_type": "direct"
    }
}

$ curl -b cookies -X POST -d @campaign.json 'https://api.appnexus.com/campaign?advertiser_id=561703'
```

Keep in mind that if you associate only one campaign with a line item,
the `start_date` and `end_date` for the campaign must both be set to
`null`.







**Delete a line item**

``` pre
$ curl -b cookies -X DELETE "https://api.appnexus.com/line-item?id=5851054&advertiser_id=5413231"
```

``` pre
{"response":
    {
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null,
        "dbg_info":
            {
                "warnings":[],
                "version":"1.0.190",
                "output_term":"not_found"}
            }
    }
}
```





<div id="line-item-service__section_t5b_xkf_xwb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
  class="xref" target="_blank">Campaign Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/conversion-pixel-service.html"
  class="xref" target="_blank">Conversion Pixel Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a>








