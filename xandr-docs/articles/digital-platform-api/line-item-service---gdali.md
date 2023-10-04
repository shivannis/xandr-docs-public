---
Title : Line Item Service - GDALI
Description : <div id="line-item-service-gdali__note_gs5_lnl_twb"
Note: This page describes the Line Item
Service for a Guaranteed Delivery Augmented Line Item (GDALI). While a
---


# Line Item Service - GDALI





<div id="line-item-service-gdali__note_gs5_lnl_twb"


Note: This page describes the Line Item
Service for a Guaranteed Delivery Augmented Line Item (GDALI). While a
GDALI uses the same line item service and endpoint as other types of
line items (<a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
class="xref" target="_blank">Line Item Service - ALI</a>, for example) ,
there are a number of required fields that have to be configured
properly to get the expected GDALI behavior.

To create a GDALI, you must set the `line_item_subtype` field to
"`gd_buying_imp"` or `"gd_buying_exclusive"`, and associate the line
item with a seamless insertion order via the `insertion_orders` array
(see <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information).





A line item defines your financial relationship with an advertiser,
including budget, revenue type, and inventory targeting.

A GDALI is typically used for direct-sold business when an arrangement
has been secured from a buyer with a committed impression volume, and is
designed to:

- Deliver budget in full across its flight dates.
- Deliver budget evenly across its flight dates.
- Optionally compete in the auction with other demand, such as RTB/Open
  Exchange, while guaranteeing the original delivery goal.

<div id="line-item-service-gdali__section_o2n_3ql_twb"
>

## REST API



<table id="line-item-service-gdali__table_vls_jql_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__table_vls_jql_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="line-item-service-gdali__table_vls_jql_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="line-item-service-gdali__table_vls_jql_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__2"><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID</a>(line
item JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__3">Add a new
GDALI.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p>
<p>(line item JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__3">Modify an
existing GDALI.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__2"><p><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__3">View all
of an advertiser's line items.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__2"><a
href="https://api.appnexus.com/line-item?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/line-item?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__3"><p>View
multiple line items by ID using a comma-separated list.</p>
<div id="line-item-service-gdali__note_j2j_4ql_twb"
class="note tip note_tip">
Tip: Helpful Query String Filters:
<p>You can filter for line items based on when they first and last
served. This is particularly useful when you are approaching your <a
href="https://docs.xandr.com/bundle/xandr-api/page/object-limit-service.html"
class="xref" target="_blank">object limit</a> and need to identify line
items that can be deleted from the system. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-FirstRunandLastRun"
class="xref" target="_blank">First Run and Last Run</a>.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__2"><a
href="https://api.appnexus.com/line-item?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/line-item?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__3">Search
for line items with IDs or names containing certain characters.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_vls_jql_twb__entry__3"><p>Delete
a line item.</p>

<div id="line-item-service-gdali__note_w4d_qql_twb"
class="note warning note_warning">
Warning: Deleting a line item will also
delete all of its impression trackers and clicktrackers. The deletions
are permanent and cannot be reverted. Although deleted objects continue
to be available in reporting, you will no longer have visibility into
their specific settings (e.g., revenue budget, tracking, cost budget,
and targeting).

</td>
</tr>
</tbody>
</table>





<div id="line-item-service-gdali__section_d5z_rql_twb"
>

## JSON Fields



<div id="line-item-service-gdali__note_nbt_sql_twb"


Note: **Migration Notes** in the table
are provided for users who are migrating from legacy line items to
GDALIs.

- NO CHANGE indicates a field that remains the same between legacy line
  items and GDALIs.

- ACTION REQUIRED

  indicates a field that is new for GDALIs and requires configuration.

- UNSUPPORTED indicates a field that is not used for GDALIs and should
  not be used.



**General**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
ID of the line item.</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>, in
query string</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>A
custom code for the line item. The code may only contain alphanumeric
characters, periods, underscores or dashes. The code you enter is not
case-sensitive (upper- and lower-case characters are treated the same).
No two objects at the same level (e.g., insertion orders or line items)
can use the same code per advertiser. For example, two line items cannot
both use code "XYZ", but a single insertion order and its child line
item can.</p>
<p><strong>Default</strong>: null</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
name of the line item.</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code></p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
ID of the advertiser to which the line item belongs.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
state of the line item. Possible values: "active" or "inactive".</p>
<p><strong>Default</strong>: "active"</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">line_item_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><div
id="line-item-service-gdali__note_knn_drl_twb" class="note note_note">
Note: When <code
class="ph codeph">"</code><code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">line_item_type</code> field may be omitted and will
default to "standard_v2".

<p>The type of line item.</p>
<p><strong>Default</strong>: "standard_v2"</p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>When <code class="ph codeph">"line_item_subtype</code><code
class="ph codeph">"</code> is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">line_item_type</code> field may be omitted and will
default to <code class="ph codeph">"standard_v2"</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">line_item_subtype</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
line item subtype. For GDALIs, the value for this field must be one of
the following:</p>
<ul>
<li><code class="ph codeph">"gd_buying_imp"</code> - guaranteed delivery
line item with impression delivery goal. Eligible only for transacting
on managed supply.</li>
<li><code class="ph codeph">"gd_buying_exclusive"</code> - guaranteed
delivery line item with exclusive delivery goal (also referred to as
"share of voice" or "SOV"). Eligible only for transacting on managed
supply.</li>
</ul>
<div id="line-item-service-gdali__note_uyp_3rl_twb"
class="note note_note">
Note:
<ul>
<li><code class="ph codeph">This </code>field is only applicable for
augmented line items (i.e., <code
class="ph codeph">"line_item_type" = "standard_v2"</code>). Any other
value will not display or accept a <code
class="ph codeph">line_item_subtype</code>.</li>
</ul>
<ul>
<li><p>By defining <code class="ph codeph">line_item_subtype</code>, the
user may omit the following fields/arrays in the request payload:</p>
<ul>
<li><code class="ph codeph">line_item_type</code></li>
<li><code class="ph codeph">bid_object_type</code></li>
<li><code class="ph codeph">delivery_model_type</code></li>
<li><code class="ph codeph">supply_strategies</code></li>
</ul></li>
<li>If the user provides conflicting <code
class="ph codeph">line_item_subtype</code> and fields/arrays outlined
above, we'll prefer the <code class="ph codeph">line_item_subtype</code>
and ignore other fields on the call.</li>
<li><code class="ph codeph">The line_item_subtype</code> field (and
associated fields/arrays listed above) cannot be changed after the line
item is created.</li>
</ul>

<p><strong>Required On</strong>: <code class="ph codeph">POST</code></p>
<p>Migration Notes: ACTION REQUIRED</p>
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
above, we will prefer the <code
class="ph codeph">line_item_subtype</code> and ignore other fields on
the call.</p>
<p><code class="ph codeph">The line_item_subtype</code> field (and
associated fields/arrays listed above) cannot be changed after the line
item is created.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields within the <code
class="ph codeph">budget_intervals</code> array to designate when the
line item should run.</p>
<p><strong>Default</strong>: null (immediately)</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields within the <code
class="ph codeph">budget_intervals</code> array to designate when the
line item should run.</p>
<p><strong>Default</strong>: null (indefinitely)</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">The
timezone by which budget and spend are counted. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.
<div id="line-item-service-gdali__note_cps_prl_twb"
class="note note_note">
Note: For ALIs, be sure to use this
field (and not the one in the <code
class="ph codeph">budget_intervals</code> array) to set the line item's
time zone.

<p><strong>Default</strong>: "UTC" or advertiser's timezone</p>
<p>Migration Notes: NO CHANGE</p>
<p>For ALIs, be sure to use this field (and not the one in the <code
class="ph codeph">budget_intervals</code> array) to set the line item's
time zone.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">ad_types</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
type of creative used for this line item. Possible values:</p>
<ul>
<li>"banner"</li>
<li>"video" (includes audio types as well)</li>
<li>"native"</li>
</ul>
<p>One or more values are supported. This value determines how auction
items are tracked for the line item's buying strategy, paying strategy,
forecasting, creative association, and targeting options.</p>
<div id="line-item-service-gdali__note_gl2_vrl_twb"
class="note note_note">
Note: All creatives associated to a
line item must have the same ad type, which should match the <code
class="ph codeph">ad_types</code> selected here.

<p><strong>Default</strong>: "banner"</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST/PUT</code></p>

Migration Notes: ACTION REQUIRED
<pre id="line-item-service-gdali__codeblock_msf_xrl_twb"
class="pre codeblock"><code>&quot;ad_types&quot;: [
    &quot;banner&quot;
]</code></pre>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">discrepancy_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated.</strong></p>
<p>Migration Notes: <strong>UNSUPPORTED</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">publishers_allowed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated.</strong>
Use the values of the <code class="ph codeph">supply_strategies</code>
array to set the supply types (e.g., RTB/Open Exchange, Deals,
Managed).</p>
<p>Migration Notes: <strong>UNSUPPORTED</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">revenue_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">The
amount paid to the network by the advertiser.
<div id="line-item-service-gdali__note_vyz_1sl_twb"
class="note note_note">
Note: Depending on what you set the
<code class="ph codeph">revenue_type</code> field to, this field must be
set to the actual value of that revenue type (e.g. <code
class="ph codeph">flat_fee</code>, <code class="ph codeph">cpm</code>,
or the desired viewable CPM).

<p><strong>Required On</strong>: <code
class="ph codeph">POST/PUT</code></p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">revenue_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
way the advertiser has agreed to pay you (also called Booked Revenue).
Possible values are listed below.</p>
<ul>
<li><code class="ph codeph">"cpm"</code> - Select this value if you are
being paid flat payment for 1000 impressions (CPM)
<ul>
<li>For Viewable CPM, set <code class="ph codeph">revenue_type</code> to
"cpm", the <code class="ph codeph">revenue_value</code> field to the
Viewable CPM value, the <code
class="ph codeph">revenue_auction_event_type</code> field to <code
class="ph codeph">"view"</code> the <code
class="ph codeph">revenue_auction_event_type_code</code> field to <code
class="ph codeph">"view_display_50pv1s_an"</code> and <code
class="ph codeph">"revenue_auction_type_id"</code> to <code
class="ph codeph">2</code>. Only measured viewable impressions will be
counted, according to the Xandr viewability measurement, using the IAB
definition.</li>
</ul></li>
<li><p>"flat_fee" - A flat payment that the advertiser will pay you on a
specified allocation date. That date can be daily or at the end of the
flight. If you pay managed publishers a percentage of your revenue,
their share will be paid out on the allocation date, after which the
line item will no longer be editable.</p></li>
</ul>
<div id="line-item-service-gdali__note_slq_2sl_twb"
class="note note_note">
Note: The flat fee will not be booked
on the allocation date unless the line item has served at least 1
impression. If you define a <code class="ph codeph">revenue_type</code>
of <code class="ph codeph">flat_fee</code> you must specify a value for
<code class="ph codeph">flat_fee_type</code>.

<p><strong>Required On</strong>: <code class="ph codeph">POST</code></p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>Viewable CPM revenue type has a new API configuration, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-AuctionEvent"
class="xref" target="_blank">Auction Event</a> for details.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">goal_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Not
currently supported for guaranteed delivery line items.</p>
<p><strong>Default</strong>: "none"</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">goal_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.
Use <code class="ph codeph">valuation</code> object instead. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-Valuation"
class="xref" target="_blank">Valuation</a> below for details.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
The time of last modification to this line item.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
click URL to apply at the line item level.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string
(3)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">The
currency used for this line item. For a list of supported currencies,
see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>.
<div id="line-item-service-gdali__note_qym_jsl_twb"
class="note warning note_warning">
Warning: Once the line item has been
created, the currency cannot be changed.

<div id="line-item-service-gdali__note_art_ksl_twb"
class="note tip note_tip">
Tip: As a best practice, align currency
to the billing currency in order to achieve the best possible local
currency experience.

<p><strong>Default</strong>: Default currency of the advertiser</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">require_cookie_for_tracking</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">Indicates
whether you want to serve only to users who use cookies, in order to do
conversion tracking (because Xandr conversion attribution is
cookie-based) and frequency capping.
<div id="line-item-service-gdali__note_p5d_qsl_twb"
class="note note_note">
Note: This flag is only enforced when a
conversion pixel and/or frequency / recency cap has been applied, so
setting <code class="ph codeph">true</code> will not require cookies for
a line item that has no conversion pixels and/or frequency capping.

<ul>
<li><code class="ph codeph">true</code> indicates you will not serve to
non-cookie users.</li>
<li><code class="ph codeph">false</code> indicates you will serve to
non-cookie users and accept no conversion attribution or frequency /
recency capping for those users.</li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">true</code></p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>You
may associate an optional <code class="ph codeph">profile_id</code> with
this line item. A profile is a generic set of rules for targeting
inventory. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>ID
of the member that owns the line item.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">comments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Comments
about the line item.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">remaining_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Not
currently supported for guaranteed delivery line items.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">total_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Not
currently supported for guaranteed delivery line items.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">manage_creative</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Must
be set to <code class="ph codeph">true</code> (creatives are managed at
the line item level).</p>
<p><strong>Default</strong>: true</p>
<p>Migration Notes: ACTION REQUIRED</p>
<pre id="line-item-service-gdali__codeblock_w14_wsl_twb"
class="pre codeblock"><code>&quot;manage_creative&quot;: true</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">advertiser</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
An object describing the advertiser with which this line item is
associated. For details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-Advertiser"
class="xref" target="_blank">Advertiser</a> below.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">The
optional labels applied to the line item. Currently, the labels
available are: "Trafficker" and "Sales Rep". See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-Labels"
class="xref" target="_blank">Labels</a> below for more details.
<div id="line-item-service-gdali__note_vmp_ctl_twb"
class="note note_note">
Note: You can report on line item
labels with the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-analytics.html"
class="xref" target="_blank">Network Analytics</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-analytics.html"
class="xref" target="_blank">Network Advertiser Analytics</a> reports.
For example, if you use the "Trafficker" label to specify the name of
the trafficker responsible for each line item, you could run the Network
Analytics report filtered by "trafficker_for_line_item" to focus on the
line items that a particular trafficker is responsible for, or grouped
by "trafficker_for_line_item" to rank the performance of your
traffickers.

Migration Notes: NO CHANGE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.
Broker fees are only eligible with legacy Insertion Order, Line Item,
and Campaign objects.</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>GDALIs do not support Broker Fees.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
conversion pixels used to track CPA revenue. Both post-click and
post-view revenue may be specified. You may only attach 20 pixels to a
line item. If you need to attach more, please speak with your Xandr
Implementation Consultant or Support. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-Pixels"
class="xref" target="_blank">Pixels</a> below for more details and the
example below for a sample of the format.</p>
<p><strong>Default</strong>: null</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">insertion_orders</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Objects
containing metadata for the insertion orders this line item is
associated with. For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-InsertionOrders"
class="xref" target="_blank">Insertion Orders</a> below.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">goal_pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">imptrackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
The third-party impression trackers associated with the line item. See
<a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html"
class="xref" target="_blank">Impression Tracker Service</a> for more
details.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">clicktrackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
The third-party click trackers associated with the line item. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/click-tracker-service.html"
class="xref" target="_blank">Click Tracker Service</a> for more
details.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">valuation</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Not
currently supported for guaranteed delivery line items.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
creatives that are associated with the line item. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-Creatives"
class="xref" target="_blank">Creatives</a> below for more details.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">budget_scheduling_settings</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">The
<code class="ph codeph">budget_scheduling_settings</code> is a parent
object that defines budget and scheduling settings. The <code
class="ph codeph">underspend_catchup_type</code> field is currently the
only existing field of this object. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-BudgetSchedulingSettings"
class="xref" target="_blank">Budget Scheduling Settings</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">Use
this array for defining budget and flight dates. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-BudgetIntervals"
class="xref" target="_blank">Budget Intervals</a> below for more
details.
<div id="line-item-service-gdali__note_xsy_3tl_twb"
class="note warning note_warning">
Warning: GDALIs only support a single
budget interval.
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

<p>Migration Notes: ACTION REQUIRED</p>

This array replaces budgeting and flight dates from legacy line items.
Use this array for defining budget and flight dates.
<div id="line-item-service-gdali__note_ydq_mtl_twb"
class="note warning note_warning">
Warning: GDALIs only support a single
budget interval.

<pre id="line-item-service-gdali__codeblock_ux3_ntl_twb"
class="pre codeblock"><code>&quot;budget_intervals&quot;: [
    {
      &quot;start_date&quot;: &quot;2020-02-03 00:00:00&quot;,
      &quot;end_date&quot;: &quot;2020-02-29 23:59:59&quot;,
     &quot;lifetime_budget&quot;: null,
      &quot;lifetime_budget_imps&quot;: 1000000,
      &quot;daily_budget_imps&quot;: null,
      &quot;daily_budget&quot;: null,
      &quot;enable_pacing&quot;: false,
      &quot;lifetime_pacing&quot;: false,
      &quot;lifetime_pacing_pct&quot;: null
    }
]</code></pre>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: null (unlimited)</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: null (unlimited)</p>
<p>Migration Notes: UNSUPPORTEDSee the <code
class="ph codeph">budget_intervals</code> array.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: null (unlimited)</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: null (unlimited)</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: null</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">allow_safety_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated.</strong>
This field may not be set.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: null</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">lifetime_pacing_span</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.
This field may not be set.</p>
<p><strong>Default</strong>: null (3 days)</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">lifetime_pacing_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default</strong>: 100</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>See the <code class="ph codeph">budget_intervals</code>
array.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">payout_margin</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
payout margin on performance offer line items.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">insertion_order_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
ID of the current active insertion order (when applicable). Must append
<code class="ph codeph">include_insertion_order_id=true</code> to return
this field in a GET call. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for
details.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated.</strong>
The <code class="ph codeph">stats</code> object has been deprecated (as
of October 17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">all_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
To show Rapid Reports for all available intervals (today, yesterday, the
last 7 days, life time), pass <code
class="ph codeph">all_status=true</code> in the query string of a GET
request.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">first_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
The date and time when the line item had its first impression, refreshed
on an hourly basis. This value reflects the UTC time zone. To include
this information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they first served,
see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-FirstRunandLastRun"
class="xref" target="_blank">First Run and Last Run</a> below.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">last_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Read-only.</strong>
The date and time when the line item had its last impression, refreshed
on an hourly basis. This value reflects the UTC time zone. To include
this information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they last served,
see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-FirstRunandLastRun"
class="xref" target="_blank">First Run and Last Run</a> below.</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">expected_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><strong>Deprecated</strong>.
<div id="line-item-service-gdali__note_v3r_c5l_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

Migration Notes: UNSUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">total_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.</p>
<div id="line-item-service-gdali__note_dll_f5l_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">has_pacing_dollars</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.</p>
<div id="line-item-service-gdali__note_l4s_h5l_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">has_pacing_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.</p>
<div id="line-item-service-gdali__note_zmk_35l_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">imps_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.</p>
<div id="line-item-service-gdali__note_xm3_k5l_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">rev_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.</p>
<div id="line-item-service-gdali__note_df1_l5l_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">alerts</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Not
currently supported for guaranteed delivery line items.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">inventory_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p><strong>Deprecated</strong>.
Use the values of the <code class="ph codeph">supply_strategies</code>
array to set the supply types (e.g., RTB/Open Exchange, Deals,
Managed).</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>Use the values of the <code
class="ph codeph">supply_strategies</code> array to set the supply types
(e.g., RTB/Open Exchange, Deals, Managed).</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">supply_strategies</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><div
id="line-item-service-gdali__note_cbr_45l_twb" class="note note_note">
Note: When <code
class="ph codeph">"line_item_subtype</code><code
class="ph codeph">"</code> is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">supply_strategies</code> field may be omitted.
<p>Guaranteed delivery line items will always be set to "<code
class="ph codeph">managed":</code> <code class="ph codeph">true</code>
and all other strategies will be set to <code
class="ph codeph">false</code>.</p>

An array containing several boolean fields used to designate which
inventory supply sources you would like to target. The values of this
object's boolean fields supersede the setting of the <code
class="ph codeph">inventory_type</code> field and once set will cause
the <code class="ph codeph">inventory_type</code> field to be
permanently locked and ignored. Values in this object include:
<ul>
<li>"<code class="ph codeph">managed</code>" - boolean</li>
<li><p>"<code class="ph codeph">rtb</code>" - boolean</p></li>
<li>"<code class="ph codeph">deals</code>" - boolean</li>
<li>"<code class="ph codeph">programmatic_guaranteed</code>" -
boolean</li>
</ul>
<p>For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-SupplyStrategies"
class="xref" target="_blank">Supply Strategies</a> below.</p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>When <code class="ph codeph">"</code><code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">supply_strategies</code> field may be omitted.</p>
<p>Guaranteed delivery line items will always be set to "<code
class="ph codeph">managed":</code> <code class="ph codeph">true</code>
and all other strategies will be set to <code
class="ph codeph">false</code>.</p>
<p>The <code class="ph codeph">supply_strategies </code>array replaces
the <code class="ph codeph">inventory_type</code> field previously
defined on the legacy campaign.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">creative_distribution_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>When
multiple creatives of the same size are trafficked via a line item, this
field's setting is used to determine the creative rotation strategy that
will be used. Allowed values:</p>
<ul>
<li><code class="ph codeph">even</code>: Even rotation is handled
automatically by our system. Also select this if you want creative
rotation to be handled at the splits level.</li>
<li><code class="ph codeph">weighted</code>: Creative rotation is based
on a user-supplied weight.</li>
<li><code class="ph codeph">ctr-optimized</code>: The creative in the
size bucket with the highest CTR delivers the most. The default.</li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">"even"</code></p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">prefer_delivery_over_performance</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Not
currently supported for guaranteed delivery line items.</p>
<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">viewability_vendor</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>This
field determines what provider measures the viewability of the ad unit.
The only value that is currently valid is <code
class="ph codeph">"appnexus"</code>.</p>
<p><strong>Default</strong>: "appnexus"</p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>This field defaults to <code class="ph codeph">appnexus</code>;<code
class="ph codeph"> appnexus</code> is the only value that is currently
valid.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">is_archived</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><strong>Read-only.</strong>
Indicates whether the line item has been automatically archived due to
not being used. Once set to <code class="ph codeph">true</code>, the
value can't be changed and the only calls that can be made on the line
item object are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code>.
<div id="line-item-service-gdali__note_utj_55l_twb"
class="note note_note">
Note: ALIs and GDALIs do not support
this feature.
<p>If a line item is automatically archived, its profile will also be
archived and the only calls that may be made on either of those objects
are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code> . In addition, once archived, the line
item may not be associated with any insertion orders.</p>

<p><strong>Default</strong>: <code class="ph codeph">false</code></p>
<p>Migration Notes: UNSUPPORTED</p>
<p>Auto-archival is not currently supported by augmented line
items.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">archived_on </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><strong>Read-only.</strong>
The date and time on which the line item was archived (i.e., when the
<code class="ph codeph">is_archived</code> field was set to <code
class="ph codeph">true</code> ).
<div id="line-item-service-gdali__note_rwb_x5l_twb"
class="note note_note">
Note: ALIs and GDALIs do not support
this feature.

<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">partner_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Currently
unsupported by guaranteed delivery line items. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a> for details.</p>
<p>Migration Notes: UNSUPPORTED</p>
<p>GDALIs do not support Partner Fees.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">delivery_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>For
guaranteed delivery line items, the most important performance indicator
is that the line item delivers its budget in full and evenly across its
flight dates. To achieve these ends, these line items have an associated
<code class="ph codeph">delivery_goal</code>. These line items will
deliver their impression or percentage goals evenly across their flight
dates. This array specifies exactly what the line item's goals are.</p>
<p>For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-DeliveryGoal"
class="xref" target="_blank">Delivery Goal</a> below.</p>
<p><strong>Default</strong>: null</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>For
a line item targeting managed inventory (supply_strategies <code
class="ph codeph">managed</code> is true), since you have already paid
for inventory, there is no need to input a buying strategy. However, you
can set the line item's priority to weight the line item against other
direct line items within your account.</p>
<p><strong>Default</strong>: 5</p>

Migration Notes: Priority was previously specified within a campaign
object; GDALIs define the priority on the line item object.
<div id="line-item-service-gdali__note_sjl_1vl_twb"
class="note note_note">
Note: The Monetize UI sets the default
value for impression <code class="ph codeph">guaranteed</code> lines to
14, and 19 for <code class="ph codeph">exclusive</code>. The default
value for all line items created via the API is 5.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">auction_event</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>An
object describing the auction event at which the line item should
record. GDALI's only support impression-based auction events.</p>

For details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-AuctionEvent"
class="xref" target="_blank">Auction Event</a> below.
<div id="line-item-service-gdali__note_asd_cvl_twb"
class="note note_note">
Note: Omitting the <code
class="ph codeph">auction_event</code> object (or setting to <code
class="ph codeph">null</code>) will automatically set this object to it
default impression-based value.


<p><strong>Default</strong>: null</p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>Omitting the <code class="ph codeph">auction_event</code> object (or
setting to <code class="ph codeph">null</code>) will automatically set
this object to it default impression-based value.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">bid_object_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><div
id="line-item-service-gdali__note_tfl_jvl_twb" class="note note_note">
Note: When <code
class="ph codeph">"</code><code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">bid_object_type</code> field i may be omitted and will
default to "creative".

<p>The bid object type of the line item (e.g. "creative" or "deal").</p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>When <code class="ph codeph">"</code><code
class="ph codeph">line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">bid_object_type</code> field i may be omitted and will
default to "creative".</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">custom_models</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Currently
unsupported by guaranteed delivery line items. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/splits-service.html"
class="xref" target="_blank">Splits Service</a> for details on how to
associate splits to GDALIs for creative targeting use cases.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">deals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Currently
unsupported by guaranteed delivery line items. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-line-item-api-setup-guide.html"
class="xref" target="_blank">Deal Line Item API Setup Guide</a> for
details.</p>
<p>Migration Notes: UNSUPPORTED</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">delivery_model_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><div
id="line-item-service-gdali__note_vgt_mvl_twb"
class="note caution note_caution">
CAUTION: When <code
class="ph codeph">"line_item_subtype</code>" is set to <code
class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">delivery_model_type</code> field may be omitted.

<p>The type of delivery model (e.g. "<code
class="ph codeph">guaranteed</code>" or "<code
class="ph codeph">exclusive</code>").</p>
<p>Migration Notes: ACTION REQUIRED</p>
<p>When <code class="ph codeph">"line_item_subtype"</code> is set to
<code class="ph codeph">gd_buying_imp</code> or <code
class="ph codeph">gd_buying_exclusive</code>, the <code
class="ph codeph">delivery_model_type</code> field may be
omitted.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">flat_fee</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3">A flat
payment that the advertiser will pay you on a specified allocation date.
That allocation date can be daily or at the end of the flight. If you
pay managed publishers a percentage of your revenue, their share will be
paid out on the allocation date, after which the line item will no
longer be editable.
<div id="line-item-service-gdali__note_msj_rvl_twb"
class="note note_note">
Note: The flat fee will not be booked
on the allocation date unless the line item has served at least one
impression. For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-FlatFee"
class="xref" target="_blank">Flat Fee</a> below.

<p><strong>Required On</strong>: POST/PUT, if revenue_type is
"flat_fee"</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">flat_fee_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>Flat
fees can be paid out daily or on the flight end date. Available values
are:</p>
<ul>
<li>one_time: The fee will be paid on the final allocation date. The
associated <code class="ph codeph">revenue_value</code> is the value to
be paid on that date. The flight cannot be longer than one month.</li>
<li>daily: The fee will be paid daily. The associated <code
class="ph codeph">revenue_value</code> is the daily fee, <em>not</em>
the fee for the entire flight.</li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">one_time</code></p>
<p><strong>Required On</strong>: POST/PUT if revenue_type is
"flat_fee"</p>
<p>Migration Notes: NO CHANGE</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__1"><code
class="ph codeph">roadblock</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__3"><p>The
roadblock settings for the line item. See <a
href="line-item-service---gdali.html#line-item-service-gdali__LineItemServiceGDALI-Roadblock"
class="xref">Roadblock</a> below for details.</p>

Migration Notes: NO CHANGE
<div id="line-item-service-gdali__note_gv1_wvl_twb"
class="note warning note_warning">
Warning: Only page-level "partial"
roadblocks are supported by GDALI.

</td>
</tr>
</tbody>
</table>

**Supply Strategies**



The `supply_strategies` object is used to designate which supply source
you wish to target when buying inventory.

<div id="line-item-service-gdali__note_vty_cwl_twb"


Note: When `"``line_item_subtype`" is
set to `gd_buying_imp` or `gd_buying_exclusive`, the `supply_strategies`
field may be omitted.





<div id="line-item-service-gdali__note_wfn_dwl_twb"
class="note caution note_caution">

CAUTION: The values of this object's
boolean fields supersede the setting of the `inventory_type` field. Once
any of these fields are set to `true` on an ALI, the `inventory_type`
field will be ignored and unsettable for that line item. If you attempt
to make a `PUT` call on the value of the `inventory_type` field after
one or more of these fields have been set to `true` , the following
error message will be generated:
`"inventory_type cannot be updated once supply_strategies has been set"`



<table id="line-item-service-gdali__table_o5g_hwl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__table_o5g_hwl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__table_o5g_hwl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__table_o5g_hwl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__1"><code
class="ph codeph">managed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__3">Designates
whether you wish to target managed inventory. This only includes
inventory managed by your network.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__1"><code
class="ph codeph">rtb</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__3">Designates
whether you wish to target inventory on the Open Exchange. This includes
all third-party inventory not managed by your network that has been
enabled for reselling (including external supply partners such as
Microsoft Advertising Exchange and Google Ad Manager).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__1"><code
class="ph codeph">deals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__3">Designates
whether you wish to target deal inventory. This includes any deals which
you are are eligible to bid on.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__1"><code
class="ph codeph">programmatic_guaranteed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__table_o5g_hwl_twb__entry__3">Designates
whether you wish to target a programmatic guaranteed deal with this line
item. If this is set to <code class="ph codeph">true</code>, then the
<code class="ph codeph">rtb</code>, <code
class="ph codeph">managed</code>, and <code
class="ph codeph">deals</code> fields must be set to false.</td>
</tr>
</tbody>
</table>

**Target Managed Inventory**

``` pre
$ cat LI-supply-strategies.json

{
    "line-item": {
      ...
      "supply_strategies": {
          "managed": true,
          "rtb": false,
          "deals": false,
          "programmatic_guaranteed": false
      }
      ...
    }
}
```

**Delivery Goal**

The `delivery_goal` array contains information about the delivery goal
attached to the GDALI. GDALIs will attempt to deliver against impression
or percentage goals.



In order for GDALIs to serve, there are a number of different
validations that have to be performed. The validations change depending
on the type of delivery goal (see `type` field below).\`

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__256"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__257"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__258"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__256"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__257">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__258">The
unique, automatically generated ID of this delivery goal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__256"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__257">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__258"><p>The
type of delivery goal. Allowed values:</p>
<ul>
<li><code class="ph codeph">"impressions"</code> : GDALIs with
impression goals will attempt to serve the specified number of
impressions evenly across their flight dates. If the delivery goal <code
class="ph codeph">type</code> is <code
class="ph codeph">"impressions"</code>, lifetime budget must be set at
the line item level.</li>
<li><p><code class="ph codeph">"percentage"</code> : Currently, the
percentage goal is only available for "exclusive" GDALIs.</p></li>
</ul>
<div id="line-item-service-gdali__note_edh_dyl_twb"
class="note note_note">
Note: If the delivery goal <code
class="ph codeph">type</code> is <code
class="ph codeph">"percentage"</code>, the line item cannot have a
budget.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__256"><code
class="ph codeph">disallow_non_guaranteed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__257">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__258">When
<code class="ph codeph">true</code>, this line item will always serve
over non-guaranteed line items participating in the same (managed)
auction.
<div id="line-item-service-gdali__note_llz_1yl_twb"
class="note note_note">
Note: For exclusive delivery type, we
recommend setting this field to <code class="ph codeph">true</code> to
ensure delivery. For impression guaranteed line items, setting this
field to <code class="ph codeph">true</code> may impact competition in
the auction, which could impact yield.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__256"><code
class="ph codeph">percentage</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__257">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__258">If
the type of delivery goal is <code
class="ph codeph">"percentage"</code>, this is the actual percentage at
which the GDALI will serve. Allowed values are integers 0 &lt;= n &lt;=
100. If the delivery goal's <code class="ph codeph">type</code> is <code
class="ph codeph">"impressions"</code>, this field must be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__256"><code
class="ph codeph">reserved</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__257">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__258"><strong>This
is a required field.</strong> When <code class="ph codeph">true</code>,
this line item has inventory "reserved" for it; in other words, the line
item is set to purchase a guaranteed number or percentage of impressions
on a seller's inventory during its flight.
<div id="line-item-service-gdali__note_rvl_yxl_twb"
class="note note_note">
Note: You will not be able to set a
GDALI's <code class="ph codeph">state</code> to <code
class="ph codeph">"active"</code> unless this field is set to <code
class="ph codeph">true</code>.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__256"><code
class="ph codeph">guaranteed_delivery_version</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__257">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__258"><strong>Deprecated</strong>.
This field is no longer in use.</td>
</tr>
</tbody>
</table>

**Apply a delivery goal to an exclusive guaranteed line item**

``` pre
$ cat LI-exclusive-delivery.json

{
    "line-item": {
      ...
      "line_item_subtype": "gd_buying_exclusive",
      ...
      "delivery_goal": {
          "type": "percentage",
          "percentage": 100,
          "disallow_non_guaranteed": true,
          "reserved": true
      }
      ...
    }
}
```





**Apply a delivery goal to an impression guaranteed line item**

``` pre
$ cat LI-imp-delivery.json

{
    "line-item": {
      ...
      "line_item_subtype": "gd_buying_imp",
      ...
      "delivery_goal": {
          "type": "impressions",
          "disallow_non_guaranteed": false,
          "reserved": true
      }
      ...
    }
}
```

**Flat Fee**





The `flat_fee` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__277"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__278"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__279"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__277"><code
class="ph codeph">lat_fee_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__278">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__279">Read-only.
The status of the flat fee disbursement. Possible values: <code
class="ph codeph">"pending"</code> , <code
class="ph codeph">"processing"</code> , <code
class="ph codeph">"allocated"</code> , or <code
class="ph codeph">"error"</code> .</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__277"><code
class="ph codeph">flat_fee_allocation_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__278">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__279">The
date when the flat fee revenue is scheduled to be allocated to
publishers. Example: <code
class="ph codeph">"2019-06-08 00:00:00"</code>This value will be null if
the <code class="ph codeph">flat_fee_type</code> is <code
class="ph codeph">daily</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__277"><code
class="ph codeph">flat_fee_adjustment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__279">Read-only.
The ID for any adjustments required to this flat fee.</td>
</tr>
</tbody>
</table>

**Apply a daily $100 flat fee to a line item**

``` pre
$ cat LI-daily-flat-fee.json

{
    "line-item": {
      ...
      "revenue_value": 100,
      "revenue_type": "flat_fee",
      “flat_fee_type”: “daily”,
      ...
    }
}
```

**Apply a one-time flat fee to a line item**

``` pre
$ cat LI-one-time-flat-fee.json

{
    "line-item": {
      ...
      "revenue_value": 10,
      "revenue_type": "flat_fee",
      "flat_fee_type": "one_time",
      ...
      "flat_fee": {
          " flat_fee_allocation_date": "2020-12-01 00:00:00"
      }
      ...
    }
}
```

**Budget Schedule Setting**





The `budget_scheduling_settings`contains the following field.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__289"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__290"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__291"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__289"><code
class="ph codeph">underspend_catchup_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__290">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__291"><p>Dictates
how Xandr's system deals with an underdelivered daily budget. Use the
<code class="ph codeph">"evenly"</code> value if you'd like the unspent
portions of your budget to be spent evenly throughout the rest of
flight, or <code class="ph codeph">"ASAP"</code> if you'd like the
unspent budget to be spent as soon as possible.</p>
<p>Possible values: <code class="ph codeph">"evenly"</code> or <code
class="ph codeph">"ASAP"</code> (default).</p></td>
</tr>
</tbody>
</table>



**Roadblock**

The `roadblock` object contains information to enable the delivery of
two or more creatives to the page in unison. Roadblocks can be applied
only for managed inventory and can't be enabled when you're working with
third-party inventory.

GDALIs support "page-level" roadblocks, where one impression is recorded
for the full set of creatives delivered for the roadblock. Impressions
are recorded based on delivery of the master creative; if the master
creative doesn't serve, no impression will be recorded. Budgets are
based on master impressions delivered, exclusive of companion delivery.

<div id="line-item-service-gdali__note_tfh_wzl_twb"


Note: The `master_width` and
`master_height` fields must be defined for roadblock line items. The
master creative is the creative with a size matching the `master_height`
and `master_width` specified in the `roadblock` object. If more than one
creative matches that size, the system will choose one as the master.

To serve a roadblock, one creative for each size must be eligible to
serve on the page. All creatives will serve if ad slots are available.
If more than one creative per size exists, creatives will rotate through
a single ad slot. There can be more ad slots available than there are
creatives to fill them.



For more on roadblocking, see <a
href="https://monetize.xandr.com/docs/target-your-inventory-with-roadblocking"
class="xref" target="_blank">Target Your Inventory with Roadblocking</a>
(customer login required).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__295"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__296"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__297"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__295"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__296">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__297"><p>The
type of roadblock. For GDALIs, this value must be either:</p>
<ul>
<li><code class="ph codeph">null</code>: (default) There is no
roadblocking set at the line item level.</li>
<li><code class="ph codeph">partial_roadblock</code>: Enables
roadblocking on the line item. The line item serves when at least one
creative of each size fits an eligible ad slot.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__295"><code
class="ph codeph">master_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__296">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__297">The
width of the master creative. This value is required when roadblock type
equals <code class="ph codeph"> partial_roadblock</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__295"><code
class="ph codeph">master_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__296">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__297">The
height of the master creative. This value is required when roadblock
type equals <code class="ph codeph"> partial_roadblock</code>.</td>
</tr>
</tbody>
</table>



**Apply a partial roadblock to a line item**

``` pre
$ cat LI-roadblock.json

{
    "line-item": {
      ...
      "roadblock": {
          "type": "partial_roadblock",
          "master_width": 300,
          "master_height": 600
      }
      ...
    }
}
```



**Advertiser**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a> to create or view
advertisers.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__307"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__308"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__309"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__307"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__308">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__309">The
unique identifier for this advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__307"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__308">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__309">The
name of the advertiser associated with the unique ID above.</td>
</tr>
</tbody>
</table>

**Labels**

You can use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/label-service.html"
class="xref" target="_blank">Label Service</a> to view all possible
labels for line items, advertisers, insertion orders, and publishers.
This service also allows you to view the labels that have already been
applied to your objects.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__316"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__317"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__318"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__316"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__317">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__318">The
ID of the label. Possible values: 7, 8, 11.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__316"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__317">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__318">Read-only.
The name of the label. Possible values: "Trafficker" or "Sales
Rep".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__316"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__317">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__318">The
value assigned to the label. For example, for the "Sales Rep" label,
this could be a name such as "Michael Sellers".</td>
</tr>
</tbody>
</table>



**Apply a trafficker label to a line item**

``` pre
$ cat LI-trafficker.json
 
{
    "line-item": {
      ...
      "labels": {
          "id": 7,
          “value”: “Michael Sellers”
      }
      ...
    }
}
```



**Pixels**

Each object in the `pixels` array includes the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__328"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__329"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__330"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328">Field</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">Type</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">Description</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">The
ID of the conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">The
state of the pixel. Possible values: "active" or "inactive".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328"><code
class="ph codeph">post_click_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">The
post click revenue value for the pixel. This field can only be set when
the line item's <code class="ph codeph">revenue_type</code> field has
been set to <code class="ph codeph">`cpa`</code> (as a result, this
field can't be used with augmented line items).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328"><code
class="ph codeph">post_view_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">The
post view revenue value for the pixel. This field cab only be set when
the line item's <code class="ph codeph">revenue_type</code> field has
been set to <code class="ph codeph">`cpa`</code> (as a result, this
field can't be used with augmented line items).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">Read-only.
The name of the conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__328"><code
class="ph codeph">trigger_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__329">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__330">Read-only.
The type of event required for an attributed conversion. Possible
values: "view", "click", or "hybrid".</td>
</tr>
</tbody>
</table>

**Insertion Orders**

<div id="line-item-service-gdali__note_l3k_gbm_twb"


Note: Insertion Orders for Guaranteed
Delivery Augmented Line Items (GDALI)

For an insertion order to be associated with a guaranteed delivery
augmented line item (GDALI), the insertion order must:

- Be a <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Seamless Insertion Order</a> (legacy
  insertion orders are not compatible).
- Have `budget_type` set to `impression`.
- Not contain more than one `budget_intervals` array.
- Have unlimited budget (set via the `budget_intervals` array).



Insertion orders not matching the above may only be associated to
non-guaranteed line items.

<div id="line-item-service-gdali__note_wjt_hbm_twb"


Note: The above criteria is also
required for programmatic guaranteed line items (PGLI). An insertion
order with the above settings may also be associated to non-guaranteed
line items.



Associating a `profile_id` (e.g., frequency capping or setting
additional targeting) on the insertion order object may result in
unexpected forecasting or delivery for PGLIs and GDALIs. It is
recommended not to use `profile_id` for insertion orders intended for
the use with GDALIs.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__note_l3k_gbm_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__note_l3k_gbm_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__note_l3k_gbm_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The unique
ID of the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The state
of this insertion order: "active" or "inactive."</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">An
optional custom code used to identify this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The name
of this insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The unique
identifier of the advertiser associated with this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">budget_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The budget
type of the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The
timezone that this insertion order is associated with. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a> for a list of allowed
values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The date
at which this insertion order object was last updated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The
currency type associated with this insertion order. For a list of
supported currencies, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>.
<div id="line-item-service-gdali__note_krw_qbm_twb"
class="note note_note">
Note: For best results, set the
currency on the parent insertion order. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__note_l3k_gbm_twb__entry__3">The
metadata for the budget intervals from the associated insertion order.
Budget intervals enable multiple date intervals to be attached to an
insertion order, each with corresponding budget values. See <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Insertion Order Service</a> for more information.</td>
</tr>
</tbody>
</table>



**Auction Event**



The following fields are contained within the `auction_event`object.

<div id="line-item-service-gdali__note_qlf_ybm_twb"


Note:

- Guaranteed delivery line items only support impression and view-based
  auction events.
- Omitting the `auction_event` object (or setting to `null`) results in
  the line item tracking revenue/payment based on impression events.
- Do not supply values for the fields within this object that end in
  `_code` or `_id`. Only supply values for the fields in the
  `auction_event` object that end in `_type` . The object will return
  the fields ending in `_code` and `_id`, but they will be ignored on
  `POST` and `PUT` calls.



<div id="line-item-service-gdali__note_p25_zbm_twb"


Note:

For Viewable CPM, set:

- `revenue_auction_event_type` field to `"view"`- use this value when
  your Revenue Type is Viewable CPM. Only measured viewable impressions
  will be counted, according to the Xandr viewability measurement, using
  the IAB definition.
- `revenue_auction_event_type_code` field to
  `"view_display_50pv1s_an"` - use this value when your Revenue Type is
  Viewable CPM.
- and `revenue_auction_type_id` to `2` - use this value when your
  Revenue Type is Viewable CPM.





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__385"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__386"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__387"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">revenue_auction_event_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">revenue_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - use this value when
your Revenue Type is CPM, Dynamic CPM or Cost Plus Margin.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">revenue_auction_event_type_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">revenue_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - use this value when
your Revenue Type is CPM, Dynamic CPM or Cost Plus Margin.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">revenue_auction_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">revenue_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">1</code> - use this value when your Revenue
Type is CPM, Dynamic CPM or Cost Plus Margin.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">kpi_auction_event_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">kpi_auction_event_type_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">kpi_auction_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">kpi_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">payment_auction_event_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">payment_auction_event_type_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__385"><code
class="ph codeph">payment_auction_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__386">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__387">Not
currently supported by GDALIs.</td>
</tr>
</tbody>
</table>



**Set $4 Viewable CPM revenue to a line item**

``` pre
$ cat LI-viewable-cpm.json
 
{
    "line-item": {
      ...
      “revenue_type”: “cpm”,
      “revenue_value”: 4
      ...
      "auction_event": {
          "revenue_auction_event_type": “view”,
          "revenue_auction_event_type_code": “view_display_50pv1s_an”,
          "revenue_auction_type_id": 2
      }
      ...
    }
}
```

**Creatives**



Each object in the `creatives` array includes the following fields. To
obtain information for `"id"` or `"code"`fields you can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__418"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__419"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__420"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">is_expired</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
If <code class="ph codeph">true</code>, the creative is expired. If
<code class="ph codeph">false</code>, the creative is active.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
If <code class="ph codeph">true</code>, the creative falls into a
prohibited category on the Xandr platform.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The width of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The audit status of the creative. Possible values: <code
class="ph codeph">"no_audit"</code>, <code
class="ph codeph">"pending"</code>, <code
class="ph codeph">"rejected"</code>, <code
class="ph codeph">"audited"</code>, or <code
class="ph codeph">"unauditable"</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The name of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">pop_window_maximize</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
If <code class="ph codeph">true</code>, the publisher's tag will
maximize the window. Only relevant for creatives with format "url-html"
and "url-js". If <code class="ph codeph">pop_window_maximize</code> is
set to <code class="ph codeph">true</code>, then neither <code
class="ph codeph">height</code> nor <code class="ph codeph">width</code>
should be set on the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The height of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The state of the creative. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The format of the creative file. Possible values: <code
class="ph codeph">"url-html"</code>, <code
class="ph codeph">"url-js"</code>, <code
class="ph codeph">"flash"</code>, <code
class="ph codeph">"image"</code>, <code
class="ph codeph">"raw-js"</code>, <code
class="ph codeph">"raw-html"</code>, <code
class="ph codeph">"iframe-html"</code>, or <code
class="ph codeph">"text"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">is_self_audited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
If <code class="ph codeph">true</code>, the creative is
self-audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">The
ID of the creative. Either <code class="ph codeph">id</code> or <code
class="ph codeph">code</code> is required when updating creative
association.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">The
custom code for the creative. Either <code class="ph codeph">id</code>
or <code class="ph codeph">code</code> is required when updating
creative association.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">weight</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">A
user-supplied weight that determines the creative rotation strategy for
same-sized creatives managed at the line item level. To use this field,
the value of <code class="ph codeph">creative_distribution_type</code>
must be <code class="ph codeph">"weighted"</code>. Allowed value: an
integer greater than <code class="ph codeph">0</code> and less than or
equal to <code class="ph codeph">1000</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">ad_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420">Read-only.
The creative ad type. Possible values: <code
class="ph codeph">"</code>banner", <code
class="ph codeph">"</code>video", and <code
class="ph codeph">"</code>native".
<div id="line-item-service-gdali__note_w12_2dm_twb"
class="note note_note">
Note: All creatives associated to a
line item must have the same ad type, which should match the <code
class="ph codeph">ad_types</code> selected for the line item.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">all_budget_intervals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420"><p>Indicates
whether the creative will serve during all budget intervals, including
all future budget intervals. Possible values are:</p>
<ul>
<li>True (the default)</li>
<li>False</li>
</ul>
<p>If true, <code class="ph codeph">custom_date_ranges</code> in the
<code class="ph codeph">creatives</code> array and <code
class="ph codeph">creatives</code> in the <code
class="ph codeph">budget_intervals</code> array must be set to null.
Conversely, if you want to use custom date ranges and/or creatives,
<code class="ph codeph">all_budget_intervals</code> must be set to
false.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__418"><code
class="ph codeph">custom_date_ranges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__419">array
of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__420"><p>The
date ranges setting the periods when the creative will serve.</p>
<p>If specified:</p>
<ul>
<li><code class="ph codeph">all_budget_intervals</code> must be set to
false</li>
<li>You must also specify the creative IDs in the <code
class="ph codeph">creatives</code> field of the <code
class="ph codeph">budget_intervals</code> array</li>
</ul>
<p>For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-CustomDateRanges"
class="xref" target="_blank">Custom Date Ranges</a>.</p></td>
</tr>
</tbody>
</table>

**Custom Date Ranges**

The `custom_date_ranges` array sets the date ranges during which a
creative will serve.

Dates must be in the format YYYY-MM-DD hh:mm:ss .

The date ranges must all meet the following specifications:

- They cannot include any dates before the start or after the end of any
  budget intervals defined for this line item.

- Both start and end dates are required.

- Date ranges must be at least an hour long.

- End dates cannot be later than `2038-01-19 00:00:00`.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__469"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__470"
class="entry colsep-1 rowsep-1">Type</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__471"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__469"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__470">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__471">The
start date of the custom date range. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be hh:00:00).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__469"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__470">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__471">The
end date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be set to hh:59:59).</td>
</tr>
</tbody>
</table>

**Schedule a creative to serve during a custom budget interval**

``` pre
$cat line-item-with-custom-budget-intervals

{
    line_item: {
        budget_intervals: [
            {
                start_date: 2/1/2020,
                end_date: 3/1/2020,
                lifetime_budget: 2000,
                id: 8888,                                  
                creatives: null
            }
        ],
        creatives: [
            {
                id: 56789,
                weight: 1,
                all_budget_intervals: true,                 
                custom_date_ranges: null                                                   
            },
            {
                id: 12345,
                weight: 2,
                all_budget_intervals: false,                
                custom_date_ranges: [
                    {                                      
                        start_date: 2/5/2020 00:00:00,      
                        end_date: 2/10/2020 00:00:00                     
                    }
                ]
            }
        ],
        creative_distribution_type: weighted
    }
}
```



**Budget Intervals**



When creating a new guaranteed delivery line item, ensure that the
`start_date` and `end_date` of each of its `budget_intervals` array
objects fall within one of the budget intervals defined on the parent
insertion order (insertion orders are associated with line items via the
`insertion_orders` array in the Line Item Service).

<div id="line-item-service-gdali__note_i2x_g2m_twb"


Note:

- Although budgets of any size may be configured on the line item,
  setting a lifetime budget with an equivalent daily impression budget
  of 1,000 impressions or less may result in the line item spending its
  lifetime budget prior to its designated end date.

- If the parent insertion order's `budget_type` field has been set to
  `"impression"` *and* the line item's `auction_event` field has been
  set to Viewable CPM, only the viewable impressions count against both
  line item and insertion order budgets.

- The `parent_interval_id` (in the `budget_intervals` array) has been
  deprecated and its value will be ignored.





Also consider the following when using the `budget_intervals` array:

- A guaranteed delivery line item must not contain more than one
  `budget_intervals` array.

- Impression guaranteed line items ("`line_item_subtype`":
  "`gd_buying_imp`") require a value be set for `lifetime_budget_imps`,
  as well as `lifetime_pacing` set to `true`. All revenue budget fields
  must be set to `null`. Setting `daily_budget_imps` in addition to
  `lifetime_budget_imps` may impact delivery; best practice is to only
  set the `lifetime_budget_imps` field.

- Exclusive line items ("`line_item_subtype`": "`gd_buying_exclusive`")
  must omit all budget fields, or set to `null`.

Each object in the `budget_intervals` array contains the following
fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__478"
class="entry colsep-1 rowsep-1">Field</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__479"
class="entry colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-gdali__section_d5z_rql_twb__entry__480"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
ID of the budget interval.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
start date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be hh:00:00).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
end date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be set to hh:59:59). Must not be <code
class="ph codeph">null</code> for guaranteed delivery line items. For
delivery to work best, your budget intervals should have a duration of
at least 4 hours.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">string</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
timezone by which budget and spend are counted. For a list of acceptable
timezone values, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">parent_interval_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">int</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480"><strong>Deprecated.</strong>
The value of this field will be ignored. Instead, use the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields of this array to define when
the line item should run.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
lifetime budget in revenue for the budget interval. The revenue currency
is defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object.
<div id="line-item-service-gdali__note_n2w_jfm_twb"
class="note note_note">
Note: If you also set the <code
class="ph codeph">lifetime_budget</code><code
class="ph codeph">_imps</code> field in this array, whichever budget is
exhausted first will cause spending to stop. A GDALI should only have
<code class="ph codeph">lifetime_budget_imps</code> defined).
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
lifetime budget in impressions for the budget interval.
<div id="line-item-service-gdali__note_ep1_mfm_twb"
class="note note_note">
Note:
<ul>
<li>If you add line items to this insertion order, any spend already
associated with those line items before they are added to the insertion
order is NOT counted against the lifetime budget of the insertion order.
Only spend that occurs while the line item is a child of the insertion
order is counted.</li>
<li>If you also set the <code class="ph codeph">lifetime_budget</code>
field in this array, whichever budget is exhausted first will cause
spending to stop. A GDALI should only have <code
class="ph codeph">lifetime_budget_imps</code> defined).</li>
<li>When a line item is enabled for roadblocks, only master creative
imps will count against <code
class="ph codeph">lifetime_budget_imps</code>.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">If
<code class="ph codeph">true</code>, the line item will attempt to pace
the lifetime budget evenly over the budget interval. If <code
class="ph codeph">true</code>, you must set <code
class="ph codeph">lifetime_budget</code> or <code
class="ph codeph">lifetime_budget_imps.</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">lifetime_pacing_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480"><p>A
double integer between-- and including-- 50 and 150, used to set pacing
throughout a budget interval. Possible values can be any double between
50 and 150 on the following scale:</p>
<ul>
<li><code class="ph codeph">50</code> - Pace behind schedule</li>
<li><code class="ph codeph">100</code> - Pace evenly</li>
<li><code class="ph codeph">150</code> - Pace ahead of schedule</li>
</ul>
<div id="line-item-service-gdali__note_hbf_qfm_twb"
class="note note_note">
Note: It's recommended to set this
field to <code class="ph codeph">105</code>. By default, the value will
be set to <code class="ph codeph">100</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">daily_budget</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
daily budget in revenue for the budget interval. The revenue currency is
defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object.
<div id="line-item-service-gdali__note_trw_sfm_twb"
class="note note_note">
Note:
<ul>
<li>If you add line items to this insertion order, any impressions
associated to those line items when they are added to the insertion
order are NOT counted under the lifetime budget of the insertion order.
Only impressions that occur while the line item is a child of the
insertion order are counted.</li>
<li>If you also set the <code class="ph codeph">daily_budget_imps</code>
field, whichever budget is exhausted first will cause spending to stop.
Best practice is to only set one of these fields.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">double</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">The
daily budget in impressions.
<div id="line-item-service-gdali__note_u3q_wfm_twb"
class="note note_note">
Note: If you also set the <code
class="ph codeph">daily_budget</code> field, whichever budget is
exhausted first will cause spending to stop. Best practice is to only
set one of these fields.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">If
true, then spending will be paced over the course of the day. Only
applicable if there is a <code
class="ph codeph">daily_budget</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__478"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__479">array</td>
<td class="entry colsep-1 rowsep-1"
headers="line-item-service-gdali__section_d5z_rql_twb__entry__480">Specifies
the creatives associated with this budget interval. In order to serve,
creatives must also be specified in the line item <code
class="ph codeph">creatives</code> field and <code
class="ph codeph">all_budget_intervals</code> must be false.</td>
</tr>
</tbody>
</table>



**Apply budget interval to a line item**

``` pre
$ cat LI-budget-intervals.json
 
{
    "line-item": {
      ...
      "budget_intervals": {
          "start_date": “2020-08-01 00:00:00”,
          "end_date": “2020-08-31 23:59:59”,
          "timezone": "UTC",
          "lifetime_budget_imps": 150000,
          "lifetime_pacing": true
      }
      ...
    }
}
```





**Stats**

<div id="line-item-service-gdali__note_d1g_dgm_twb"


Note: The `stats` object has been
deprecated (as of October 17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.





**First Run and Last Run**



<div id="line-item-service-gdali__section_fsj_kgm_twb"
>

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for line
items based on when they first and last served, as follows:

**Retrieve only line items that have never served**



Pass {{never_run=true}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&never_run=true'
```



<div id="line-item-service-gdali__note_syp_tgm_twb"


Note: You can use {{never_run=true}} in
combination with other filters, but please note that it will always be
an OR relationship. For example, if you pass both {{never_run=true}} and
{{min_first_run=2012-01-01 00:00:00}} in the query string, you will be
looking for line items that have never served OR line items that first
served on or after 2012-01-01.



**Retrieve only line items that first served on or after a specific
date**



Pass {{min_first_run=YYYY-MM-DD HH:MM:SS}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00'
```



**Retrieve only line items that first served on or before a specific
date**

Pass {{max_first_run=YYYY-MM-DD HH:MM:SS}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only line items that first served within a specific date
range**

Pass {{min_first_run=YYYY-MM-DD HH:MM:SS&max_first_run=YYYY-MM-DD
HH:MM:SS}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only line items that last served on or after a specific
date**

Pass {{min_last_run=YYYY-MM-DD HH:MM:SS}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00'
```

**Retrieve only line items that last served on or before a specific
date**



Pass {{max_last_run=YYYY-MM-DD HH:MM:SS}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&max_last_run=2012-08-01 00:00:00'
```



**Retrieve only line items that last served within a specific date
range**

Pass {{min_last_run=YYYY-MM-DD HH:MM:SS&max_last_run=YYYY-MM-DD
HH:MM:SS}} in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00&max_last_run=2012-08-01 00:00:00'
```

Fields of the type date can be filtered by `nmin` and `nmax` as well.
The `nmin` filter lets you find dates that are either null or after the
specified date, and the `nmax` filter lets you find dates that are
either null or before the specified date.



<div id="line-item-service-gdali__section_ist_mhm_twb"
>

## Examples

**View a line item**



To view a specific line item, we must pass in the line item and
advertiser IDs via the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?id=12954413&advertiser_id=3872575'

{
    "response": {
        "status": "OK",
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
            "last_modified": "2020-10-05 00:05:36",
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
            "priority": 5,
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
        "count": 1,
        "dbg_info": {
            "warnings": [

            ],
            "version": "1.0.56",
            "output_term": "line-item"
        }
    }
}
```



**View all of an advertiser's line items**

<div id="line-item-service-gdali__note_b3q_shm_twb"


Note: If an advertiser has only one
line item, it will be returned via the {{line-items}} JSON array.



``` pre
$ curl -b cookies 'https://api.appnexus.com/line-item?advertiser_id=3872575'
{
    "response": {
        "count": 3,
        "line-items": [
            { ..."id": 12954413,...},
            { ..."id": 4983291,...},
            { ..."id": 4983258,...}
        ]
    }
}
```

**Update a line item end date**

In this example, we are updating the end date of a line item.

``` pre
$ cat line_item_end_date_update.json

{
    "line-item": {
        "budget_intervals: [
            {
                "end_date": "2020-12-31 23:59:59"
            }
        ]
    }
}

curl -b cookies -X PUT -d @line_item_end_date_update.json "https://api.appnexus.com/line-item?id=12954413&advertiser_id=3872575"
```

**Update a line item reserve property to true**



In this example, we are updating the reserve property of a line item to
true. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html#LineItemServiceGDALI-DeliveryGoal"
class="xref" target="_blank">Delivery Goal</a> for more details.

``` pre
$ cat line_item_reserve.json
{
    "line-item": {
        "delivery_goal: {
            "reserved": true
        }
    }
}


curl -b cookies -X PUT -d @line_item_reserve.json "https://api.appnexus.com/line-item?id=12954413&advertiser_id=3872575"
```



**Create a GDALI with impression delivery model and CPM revenue type**

1\) Create a GDALI JSON (you'll need an existing insertion order ID and
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
**<a href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.appnexus.com/line-item</a>** endpoint using
this GDALI JSON and the appropriate `advertiser_id`.

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
            "version": "1.0.56",
            "output_term": "line-item"
        }
    }
}
```



**Create a GDALI exclusive line item with daily flat fee revenue**

1\) Create a GDALI JSON (you'll need an existing insertion order ID and
advertiser ID).

``` pre
$ cat gd_exclusive_flat

{
"line-item": {
    "name": "Test-flat fee-GDALI",
    "advertiser_id": "3872575",
    "insertion_orders": [{"id": 4971824}],
    "line_item_subtype": "gd_buying_exclusive",
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
        "timezone": "UTC"
      }
    ],
    "currency": "USD",
    "revenue_value": 100,
    "revenue_type": "flat_fee",
    “flat_fee_type”: “daily”,
    "delivery_goal": {
      "type": "percentage",
      "percentage": 100,
      "disallow_non_guaranteed": true,
      "reserved": true
    }
  }
}
```

2\) Make a POST request to the
<a href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.appnexus.com/line-item</a> endpoint using
this GDALI JSON and the appropriate `advertiser_id`.



``` pre
$ curl -b cookies -X POST -d @gd_exclusive_flat.json 'https://api.appnexus.com/line-item?advertiser_id=3872575'

{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "line-item": {
            "id": 13024486,
            "code": null,
            "name": "Test-flat fee-GDALI",
            "advertiser_id": 3872575,
            "state": "inactive",
            "start_date": null,
            "end_date": null,
            "timezone": "UTC",
            "discrepancy_pct": 0,
            "publishers_allowed": "all",
            "revenue_value": 100,
            "revenue_type": "flat_fee",
            "goal_type": "none",
            "goal_value": null,
            "last_modified": "2020-10-01 17:10:31",
            "click_url": null,
            "currency": "USD",
            "require_cookie_for_tracking": true,
            "profile_id": null,
            "member_id": 958,
            "flat_fee_type": "daily",
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
            "delivery_model_type": "exclusive",
            "waive_deductions_when_disallowed": false,
            "line_item_subtype": "gd_buying_exclusive",
            "advertiser": {
                "id": 3872575,
                "name": "GDALI Testing Advertiser"
            },
            "flat_fee": {
                "flat_fee_status": "pending",
                "flat_fee_allocation_date": null,
                "flat_fee_adjustment_id": null
            },
            "supply_strategies": {
                "managed": true,
                "rtb": false,
                "deals": false,
                "programmatic_guaranteed": false
            },
            "deals": null,
            "delivery_goal": {
                "id": 2253549,
                "type": "percentage",
                "disallow_non_guaranteed": true,
                "percentage": 100,
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
                    "last_modified": "2020-10-01 11:17:21",
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
                    "id": 10082806,
                    "object_id": 13024486,
                    "object_type": "campaign_group",
                    "start_date": "2020-10-01 00:00:00",
                    "end_date": "2020-10-31 23:59:59",
                    "timezone": "UTC",
                    "code": null,
                    "parent_interval_id": null,
                    "creatives": null,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": null,
                    "daily_budget_imps": null,
                    "daily_budget": null,
                    "enable_pacing": false,
                    "lifetime_pacing": false,
                    "lifetime_pacing_pct": null
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
        "count": 1,
        "dbg_info": {
            "warnings": [
            ],
            "version": "1.0.68",
            "output_term": "line-item"
        }
    }
}
```



**Create a GDALI roadblock line item**

1\) Create a GDALI JSON (you'll need an existing insertion order ID and
advertiser ID). Note that the impression budget for GDALIs with
roadblocks enabled represents *master* creative delivery only.

``` pre
$ cat gd_roadblock

{
"line-item": {
    "name": "Test-Roadblock-GDALI",
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
    "roadblock": {
        "type": "partial_roadblock",
        "master_width": 300,
        "master_height": 600
    },
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
target="_blank">https://api.appnexus.com/line-item</a> endpoint using
this GDALI JSON and the appropriate

`advertiser_id`.



``` pre
$ curl -b cookies -X POST -d @gd_roadblock.json 'https://api.appnexus.com/line-item?advertiser_id=3872575'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 12971164,
        "start_element": 0,
        "num_elements": 100,
        "line-item": {
            "id": 12971164,
            "code": null,
            "name": "Test-Roadblock-GDALI",
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
            "last_modified": "2020-10-05 15:04:17",
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
                "id": 2247697,
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
                    "id": 10008444,
                    "object_id": 12971164,
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
            "roadblock": {
                "type": "partial_roadblock",
                "master_width": 300,
                "master_height": 600
            },
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
            "version": "1.0.56",
            "output_term": "line-item"
        }
    }
}
```

<div id="line-item-service-gdali__section_efy_43m_twb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/publisher-gdali-api-setup-guide.html"
  class="xref" target="_blank">Publisher GDALI API Setup</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a>








