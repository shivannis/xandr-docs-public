---
Title : Line Item Service - ALI
ms.date: 10/28/2023
ms.custom: digital-platform-api
<b>Note:</b>
GET This page describes the Line Item Service for augmented line items.
---


# Line Item Service - ALI





<b>Note:</b>

GET This page describes the Line Item Service for augmented line items.
It links to other API documentation that is designed for legacy line
items and may mention fields and objects that are not used with
augmented line items. Most importantly, augmented line items can only be
used with seamless insertion orders, not legacy insertion orders, which
don't support budget intervals (i.e., don't use the `budget_intervals`
array).

To create an augmented line item, you must set the `line_item_type`
field to `'standard_v2'` and associate the line item with a seamless
insertion order via the `insertion_orders` array.



A line item defines your financial relationship with an advertiser,
including budget, revenue type, performance goals, bidding strategies,
and inventory targeting. The augmented line item must be used with the
seamless insertion order. We suggest that you streamline your setup for
long-standing advertiser relationships by adding budget intervals to
your insertion orders.

>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__section_kch_hsn_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="line-item-service-ali__section_kch_hsn_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="line-item-service-ali__section_kch_hsn_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__2"><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID</a>(line
item JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__3">Add a new
line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p>
<p>(line item JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__3">Modify an
existing line item.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__2"><p><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__3">View all
of an advertiser's line items.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/line-item?id=1,2,3</a></p>
class="note note_note">
<b>Note:</b>
<p><strong>Helpful Query String Filters</strong></p>
<ul>
<li>You can filter for line items based on when they first and last
served. This is particularly useful when you are approaching your object
limit and need to identify line items that can be deleted from the
system. For more details, see <a
href="line-item-service---ali.md#LineItemServiceALI-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a>.</li>
</ul>
<ul>
<li>You can filter for line that are not serving due to various
conditions. For more details, see <a
href="line-item-service---ali.md#LineItemServiceALI-Alerts"
class="xref" target="_blank">Alerts</a>.</li>
</ul>
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__3">View
multiple line items by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__2"><a
href="https://api.appnexus.com/line-item?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/line-item?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__3">Search
for line items with IDs or names containing certain characters.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__2"><p><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/line-item?code=LINE-ITEM_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p>
class="note warning note_warning">
<b>Warning:</b>
<p>Deletion is Recursive and Permanent</p>
<p>Deleting a line item will also delete all of its impression trackers,
click trackers, associated budget intervals, and splits. The deletions
are permanent and cannot be reverted. Although deleted objects continue
to be available in reporting, you will no longer have visibility into
their specific settings (e.g., revenue budget, tracking, cost budget and
targeting).</p>
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__section_kch_hsn_wwb__entry__3">Delete a
line item.</td>
</tr>
</tbody>
</table>



<b>Note:</b>

About Performance Goals

Goal Pixels are used to track and measure performance when the
`revenue_type` and the `goal_type` are not measured the same way. For
example, a `revenue_type` of "cpm" might be matched with a `goal_type`
of "cpa" because the advertiser wants to measure goal achievement in
terms of conversions but pay in CPM.

- **CPA**: To set performance goals for line items with `goal_type`
  "cpa", use both the <a
  href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-goal-pixels"
  class="xref">Goal Pixels</a> array of objects and the <a
  href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-valuation"
  class="xref">Valuation</a> object. The `goal_pixels` array contains
  information about CPA goal targets and thresholds. See **CPC** below
  for a basic explanation of the `valuation` object.
- **CPC**: To set performance goals for line items with the `goal_type`
  "cpc", use the `valuation` object. The `valuation` object contains the
  performance goal threshold, which determines the bid/no bid cutoff on
  optimized line items, and the performance goal target, which
  represents the desired clicks or click-through rate. See the
  description of the `valuation` object below for more details on which
  fields to set.





<b>Note:</b> About Geography Targeting

For Augmented Line Item, it is mandatory to set at least one country as
geography targeting. To add geography targeting, see **Country Targets**
under **Targeting** section in the **<a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>** page.





>

## JSON Fields

**General**

<table
id="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all">
<colgroup>
<col style="width: 33%" />
<col style="width: 16%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the line item.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>A
custom code for the line item. The code may only contain alphanumeric
characters, periods, underscores or dashes. The code you enter is not
case-sensitive (upper- and lower-case characters are treated the same).
No 2 objects at the same level (e.g., insertion orders or line items)
can use the same code per advertiser. For example, 2 line items cannot
both use code "XYZ", but a single insertion order and its child line
item can.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the line item.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
ID of the advertiser to which the line item belongs.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the line item. Possible values: "active" or "inactive".</p>
<p><strong>Default:</strong><code
class="ph codeph"> "active"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_item_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
type of line item. Possible values are:</p>
<ul>
<li><code class="ph codeph">"standard_v1"</code> - standard line item
(non-ALI).</li>
<li><code class="ph codeph">"standard_v2"</code> - augmented line item
(ALI).</li>
<li><code class="ph codeph">"guaranteed_delivery"</code> - guaranteed
line item (GDLI).</li>
<li><code class="ph codeph">"curated"</code> - curated line item.</li>
</ul>
class="note note_note">
<b>Note:</b>
<p>Ensure this field is set to <code
class="ph codeph">"standard_v2"</code> for ALIs.</p>
<p><strong>Default:</strong> "standard_v2"</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Do
not use this field. Instead, use the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields within the <code
class="ph codeph">budget_intervals</code> array to designate when the
line item should run.</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code>
(immediately)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Do
not use this field. Instead, use the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields within the <code
class="ph codeph">budget_intervals</code> array to designate when the
line item should run.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(indefinitely)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
timezone by which budget and spend are counted. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.</p>
class="note note_note">
<b>Note:</b>
<p>For ALIs, be sure to use this field (and not the one in the <code
class="ph codeph">budget_intervals</code> array) to set the line item's
time zone.</p>

<p><strong>Default:</strong> "UTC" or advertiser's timezone</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">ad_types</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
type of creative used for this line item. Possible values:</p>
<ul>
<li>"banner"</li>
<li>"video"</li>
<li>"native"</li>
<li>"audio"</li>
</ul>
<p>The array should only have a single value. This value determines how
auction items are tracked for the line item's buying strategy, paying
strategy, optimization options, creative association, and targeting
options.</p>
class="note note_note">
<b>Note:</b>
<p>All creatives associated to a line item must have the same ad type,
which should match the <code class="ph codeph">ad_types</code> selected
here.</p>

<p><strong>Default:</strong> "banner"</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">discrepancy_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">publishers_allowed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong>
Use the values of the <code class="ph codeph">supply_strategies</code>
array to set the supply types (e.g., RTB/Open Exchange, Deals,
Managed).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">revenue_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
amount paid to the network by the advertiser.</p>

class="note note_note">
<b>Note:</b> Depending on what you set the
<code class="ph codeph">revenue_type</code> field to, this field must be
set to the actual value of that revenue type (e.g., the desired CPC). If
your <code class="ph codeph">revenue_type</code> is <code
class="ph codeph">"cost_plus_margin"</code>, set this field to the
percentage margin your client pays you (e.g., <code
class="ph codeph">.20</code> for 20%).


<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">revenue_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
way the advertiser has agreed to pay you (also called Booked Revenue).
Possible values are listed below.</p>
<ul>
<li><code class="ph codeph">"cpm"</code> - Select this value if you are
being paid flat payment for 1000 impressions (CPM), per click (CPC) or
per view (Viewable CPM:
<ul>
<li>If CPM, set this to <code class="ph codeph">"cpm"</code>, the <code
class="ph codeph">revenue_value</code> field to the CPM value and set
the <code class="ph codeph">max_avg_cpm</code> and <code
class="ph codeph">min_avg_cpm</code> fields to <code
class="ph codeph">null</code>.</li>
<li>If CPC, set this to "cpm", the <code
class="ph codeph">revenue_value</code> field to the CPC value and set
<code class="ph codeph">"revenue_auction_event_type"</code> to <code
class="ph codeph">"click"</code>, <code
class="ph codeph">"revenue_auction_event_type_code"</code> to <code
class="ph codeph">"click"</code> and <code
class="ph codeph">"revenue_auction_type_id"</code> to 3.</li>
<li>If Viewable CPM, set this to "cpm", the <code
class="ph codeph">revenue_value</code> field to the Viewable CPM value,
the <code class="ph codeph">revenue_auction_event_type</code> field to
<code class="ph codeph">"view"</code>, the <code
class="ph codeph">revenue_auction_event_type_code</code> field to <code
class="ph codeph">"view_display_50pv1s_an"</code> and <code
class="ph codeph">"revenue_auction_type_id"</code> to 2. Only measured
viewable impressions will be counted, according to the Xandr viewability
measurement, using the IAB definition.</li>
<li>If CPCV, set this to <code class="ph codeph">"cpm"</code>, the <code
class="ph codeph">ad_types</code> field to <code
class="ph codeph">"video"</code>,<code
class="ph codeph"> "revenue_auction_event_type"</code> to <code
class="ph codeph">"video"</code>, <code
class="ph codeph">"revenue_auction_event_type_code"</code> to <code
class="ph codeph">"video_completion"</code>, and <code
class="ph codeph">"revenue_auction_type_id"</code> to <code
class="ph codeph">10</code>.</li>
</ul></li>
</ul>
<ul>
<li><code class="ph codeph">"vcpm"</code> - A dynamic CPM (where Booked
Revenue is equal to the cost of the impression before bid reduction). If
<code class="ph codeph">"vcpm"</code> is selected here, <code
class="ph codeph">goal_type</code> has been set to <code
class="ph codeph">'none'</code>, and no <code
class="ph codeph">'expected_value'</code> model has been attached, you
must set a <code class="ph codeph">'max_avg_cpm'</code> value.</li>
</ul>
class="note note_note">
<b>Note:</b>
<p>If <code class="ph codeph">programmatic_guaranteed</code> (in <code
class="ph codeph">supply_strategies</code>) is set to <code
class="ph codeph">true</code>, <code
class="ph codeph">revenue_type</code> must be set to <code
class="ph codeph">cost_plus_margin or cost_plus_cpm</code>.</p>

<ul>
<li><p><code class="ph codeph">"cost_plus_margin"</code> - Media cost
(what you spend on inventory) plus a percentage of what you spend. If
selected, you must also set the <code
class="ph codeph">revenue_value</code> to a percentage margin you
receive (e.g., <code class="ph codeph">.2</code> for 20%). Data costs
will also be added if you participate in third-party data clearing
(e.g., segments). If you disable optimization for Cost Plus (via the
<code class="ph codeph">goal_type</code> field), you must set a flat CPM
for Cost Plus via the <code class="ph codeph">max_avg_cpm</code> field
(in the <code class="ph codeph">valuation</code> object).</p></li>
</ul>
<ul>
<li><p><code class="ph codeph">"cost_plus_cpm"</code>- Media cost (what
you spend on inventory) plus a service fee that you charge the
advertiser based on CPM revenue. If selected, you must also set the
<code class="ph codeph">revenue_value</code> to a flat CPM margin you
receive (e.g., <code class="ph codeph">1</code> for a $1 CPM). Data
costs will also be added if you participate in third-party data clearing
(e.g., segments). If you disable optimization for Cost Plus (via the
<code class="ph codeph">goal_type</code> field), you must set a flat CPM
for Cost Plus via the <code class="ph codeph">max_avg_cpm</code> field
(in the <code class="ph codeph">valuation</code> object).</p></li>
</ul>
class="note note_note">
<b>Note:</b>
<p>If the <code class="ph codeph">lifetime_budget_imps</code> or <code
class="ph codeph">daily_budget_imps</code> fields are set or the line
item's parent insertion order's <code
class="ph codeph">budget_type</code> is set to <code
class="ph codeph">impression</code>, then <code
class="ph codeph">revenue_type</code> may not be set to <code
class="ph codeph">"CPC"</code>.</p>

<p><strong>Default:</strong> <code
class="ph codeph">"none"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">goal_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>For
line items that make use of performance goals. Possible values: <code
class="ph codeph">null</code>, <code class="ph codeph">"cpc"</code>,
<code class="ph codeph">"cpa"</code>,<code
class="ph codeph"> "ctr"</code>, or <code
class="ph codeph">"custom"</code></p>
<ul>
<li>If you want to optimize to a CPA performance goal for both
post-click and post-view conversions, set this field to <code
class="ph codeph">"cpa"</code>. You must also set the <code
class="ph codeph">post_click_goal_threshold </code>and <code
class="ph codeph">post_view_goal_threshold </code>fields (in the <code
class="ph codeph">goal_pixels </code>array of objects) to your CPA goal.
These values must be the same, since Xandr will optimize to one value.
Additionally, you must set <code
class="ph codeph">campaign_group_valuation_strategy</code> to <code
class="ph codeph">"retargeting" or "prospecting"</code>. See <code
class="ph codeph">campaign_valuation_strategy</code> in <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-valuation"
class="xref">Valuation</a> for details.</li>
<li>If you want to optimize to a CPA performance goal for only
post-click conversions, set this field to <code
class="ph codeph">"cpa". </code>You must also set the <code
class="ph codeph">post_click_goal_target </code>and <code
class="ph codeph">post_click_goal_threshold </code>fields (in the <code
class="ph codeph">goal_pixels </code>array of objects) to your CPA
goal.</li>
<li>If you want to optimize to a CPC goal, set this field to<code
class="ph codeph"> "cpc"</code>. You must also set the <code
class="ph codeph">goal_target </code>and <code
class="ph codeph">goal_threshold </code>fields (in the <code
class="ph codeph">valuation </code>object) to your CPC goal and set
<code class="ph codeph">goal_pixel </code>to <code
class="ph codeph">null</code>.</li>
<li>If you want to optimize to a Viewable CPM goal, set this field to
<code class="ph codeph">null</code>. You must also set the <code
class="ph codeph">goal_target</code> and <code
class="ph codeph">goal_threshold</code> fields (in the <code
class="ph codeph">valuation</code> object) and <code
class="ph codeph">goal_pixels</code> to <code
class="ph codeph">null</code>. In addition, you must also set the
following fields in the <code class="ph codeph">auction_event</code>
object: <code class="ph codeph">kpi_auction_event_type</code>, <code
class="ph codeph">kpi_auction_event_type_code</code>, <code
class="ph codeph">kpi_auction_type_id</code> and <code
class="ph codeph">kpi_value</code>.</li>
<li>If you want to optimize to a CTR goal, set this field to <code
class="ph codeph">"ctr"</code>. In addition, you must also set the <code
class="ph codeph">goal_target</code> and the <code
class="ph codeph">goal_threshold</code> in the <code
class="ph codeph">valuation</code> object to the desired clickthrough
rate (a decimal value between 0 and 1.)</li>
<li>If you want to upload your own custom EV model (Expected Valuation),
as opposed to a <code class="ph codeph">click_imp</code> or <code
class="ph codeph">ev_click model</code>, set this field to <code
class="ph codeph">"custom"</code>. See <a
href="data-science-toolkit/custom-models.md"
class="xref" target="_blank">Custom Models</a> for details.</li>
<li>If you want to disable optimization, set this field to <code
class="ph codeph">null</code>. In addition, for PUT calls, if the line
item was previously set to optimize to a Viewable CPM, you must also set
the following fields (in the <code
class="ph codeph">auction_event</code> object) as follows:
<ul>
<li><code
class="ph codeph">"kpi_auction_event_type":"impression"</code></li>
<li><code
class="ph codeph">"kpi_auction_event_type_code":"impression"</code></li>
<li><code class="ph codeph">"kpi_auction_type_id":1</code></li>
<li><code class="ph codeph">"kpi_value":null</code></li>
</ul></li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"none"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">goal_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated</strong>.
Use <code class="ph codeph">valuation</code> object instead. See <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-valuation"
class="xref">Valuation</a> below for details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
time of last modification to this line item.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
click URL to apply at the line item level.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(3)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
currency used for this line item. For a list of supported currencies,
see the <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>.</p>
class="note note_note">
<b>Note:</b>
<p>Once the line item has been created, the currency cannot be
changed.</p>

class="note tip note_tip">
<b>Tip:</b>
<p>As a best practice, align currency to the billing currency in order
to achieve the best possible local currency experience.</p>

<p><strong>Default:</strong> Default currency of the
advertiser.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">require_cookie_for_tracking</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Indicates
whether or not you want to serve only to users who use cookies for
conversion-tracking purposes (because Xandr conversion attribution is
cookie-based). If set to <code class="ph codeph">true</code>, this
indicates that you won't serve to non-cookie users because they have no
potential for conversion attribution. If set to <code
class="ph codeph">false</code>, this indicates that you'll serve to
non-cookie users and accept no conversion attribution for those users.
This field's setting is only relevant when a conversion pixel has been
applied, so setting this to <code class="ph codeph">true</code> won't
require cookies for a line item that has no conversion pixels.</p>
<ul>
<li>If <code class="ph codeph">true</code>, a cookie is required for
conversion tracking.</li>
<li>If <code class="ph codeph">programmatic_guaranteed</code> (in <code
class="ph codeph">supply_strategies</code>) is set to <code
class="ph codeph">true</code>, <code
class="ph codeph">require_cookie_for_tracking</code> must be set to
<code class="ph codeph">false</code>.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">You
may associate an optional <code class="ph codeph">profile_id</code> with
this line item. A profile is a generic set of rules for targeting
inventory. See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">ID
of the member that owns the line item.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">comments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Comments
about the line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">remaining_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number of days between today and the <code
class="ph codeph">end_date</code> for the line item. Note that this will
be null if the <code class="ph codeph">start_date</code> is in the
future or if either the <code class="ph codeph">start_date</code> or
<code class="ph codeph">end_date </code> is not set.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">total_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number of days between the <code class="ph codeph">start_date</code> and
<code class="ph codeph">end_date</code> for the line item. Note that
this will be null if either the <code
class="ph codeph">start_date</code> or <code
class="ph codeph">end_date</code> is not set.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>An
object describing the advertiser with which this line item is
associated. For details, see <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-advertiser"
class="xref">Advertiser</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
optional labels applied to the line item. Currently, the labels
available are: "Trafficker" and "Sales Rep". See <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-labels"
class="xref">Labels</a> below for more details.</p>
class="note note_note">
<b>Note:</b>
<p>You can report on line item labels with the <a
href="network-analytics.md"
class="xref" target="_blank">Network Analytics</a> and <a
href="network-advertiser-analytics.md"
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
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated</strong>.
Use <code class="ph codeph">partner_fees</code> instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
conversion pixels used to track CPA revenue. Both post-click and
post-view revenue may be specified. You may only attach 20 pixels to a
line item. If you need to attach more, please speak with your Xandr
Implementation Consultant or Support. See <a
href="line-item-service---ali.md#LineItemServiceALI-Pixels"
class="xref" target="_blank">Pixels</a> below for more details and the
example below for a sample of the format.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated</strong>.
Use <code class="ph codeph">partner_fees</code> instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
conversion pixels used to track CPA revenue. Both post-click and
post-view revenue may be specified. You may only attach 20 pixels to a
line item. If you need to attach more, please speak with your Xandr
Implementation Consultant or Support. See <a
href="line-item-service---ali.md#LineItemServiceALI-Pixels"
class="xref" target="_blank">Pixels</a> below for more details and the
example below for a sample of the format.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">insertion_orders</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Objects
containing metadata for the insertion orders this line item is
associated with. For more information, see <a
href="line-item-service---ali.md#LineItemServiceALI-InsertionOrders"
class="xref" target="_blank">Insertion Orders</a> below.</p>
class="note note_note">
<b>Note:</b>
<p>Once a line item is associated with a seamless insertion order, it
cannot be associated to a legacy insertion order.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">goal_pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
a line item with the <code class="ph codeph">goal_type</code> "cpa", the
pixels used for conversion tracking, as well as the post-view and
post-click revenue. See <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-goal-pixels"
class="xref">Goal Pixels</a> below for more details and the example
below for a sample of the format.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">imptrackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
third-party impression trackers associated with the line item. See <a
href="impression-tracker-service.md"
class="xref" target="_blank">Impression Tracker Service</a> for more
details.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">clicktrackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
third-party click trackers associated with the line item. See <a
href="click-tracker-service.md"
class="xref" target="_blank">Click Tracker Service</a> for more
details.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">valuation</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
a line item with the <code class="ph codeph">goal_type</code> "cpc" or
"cpa", the performance goal threshold, which determines the bid/no bid
cutoff on optimized line items, and the performance goal target, which
represents the desired clicks (conversions for <code
class="ph codeph">"cpa"</code> are set in the <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-goal-pixels"
class="xref">Goal Pixels</a> array of objects). See <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-valuation"
class="xref">Valuation</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
creatives that are associated with the line item. See <a
href="line-item-service---ali.md#LineItemServiceALI-Creatives"
class="xref" target="_blank">Creatives</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Budget
intervals enable multiple date intervals to be attached to a line item,
each with corresponding budget values. See <a
href="line-item-service---ali.md#LineItemServiceALI-BudgetIntervals"
class="xref" target="_blank">Budget Intervals</a> below for more
details.</p>
class="note note_note">
<b>Note:</b>
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
<li><code class="ph codeph">subflights</code></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Do
not use this field. Instead, use the budget fields within the <code
class="ph codeph">budget_intervals</code> array.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true</code>, the daily budgeted spend is spread
out evenly throughout a day. Only applicable if there is a daily budget.
That's why it defaults to <code class="ph codeph">true</code> if daily
budget is set; otherwise, it defaults to <code
class="ph codeph">null</code>.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_safety_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong>
This field may not be set.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
true, the line item will attempt to spend its overall lifetime budget
evenly over the line item flight dates. If true, you cannot set a <code
class="ph codeph">daily_budget</code>, you cannot set <code
class="ph codeph">enable_pacing</code> to false, and you must first
establish a <code class="ph codeph">lifetime_budget</code>, a <code
class="ph codeph">start_date</code>, and an <code
class="ph codeph">end_date</code> for the line item.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_pacing_span</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
id="line-item-service-ali__note_vdb_pvn_wwb" class="note note_note">
<b>Note:</b> Do not use or edit the value of
this field.

<p><strong>Default:</strong> <code class="ph codeph">null </code>(3
days)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_pacing_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>A
double integer between-- and including-- 50 and 150, used to set pacing
throughout a budget interval. Possible values can be any double between
50 and 150 on the following scale:</p>
<ul>
<li><code class="ph codeph">50</code> - Pace behind schedule</li>
<li><code class="ph codeph">100</code> - Pace evenly</li>
<li><code class="ph codeph">150</code> - Pace ahead of schedule</li>
</ul>
<p><strong>Default:</strong> 100</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">payout_margin</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
payout margin on performance offer line items.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">insertion_order_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
ID of the current active insertion order (when applicable). Must append
<code class="ph codeph">include_insertion_order_id=true</code> to return
this field in a GET call. See the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Insertion Order Service</a> for details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
<code class="ph codeph">stats</code> object has been deprecated (as of
October 17, 2016). Use the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">all_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>To
show Rapid Reports for all available intervals (today, yesterday, the
last 7 days, life time), pass <code
class="ph codeph">all_status=true</code> in the query string of a GET
request.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">first_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the line item had its first impression, refreshed on
an hourly basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they first served,
see <a
href="line-item-service---ali.md#LineItemServiceALI-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the line item had its last impression, refreshed on
an hourly basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they last served,
see <a
href="line-item-service---ali.md#LineItemServiceALI-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">expected_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
<p><b>Note:</b></p>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">total_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
<p><b>Note:</b></p>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">has_pacing_dollars</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">has_pacing_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">imps_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">rev_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b> The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">alerts</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
conditions that are preventing the line item from serving. There are two
types of alerts: pauses and warnings. Pauses are considered intentional
and user-driven, whereas warnings are considered unintentional. To
retrieve line items based on pauses, you must pass certain query string
parameters in the GET request. For more details, including a complete
list of possible pauses, see <a
href="line-item-service---ali.md#LineItemServiceALI-Alerts"
class="xref" target="_blank">Alerts</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">inventory_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.</p>
<p>The type of inventory targeted by this line item. Possible values:
"real_time", "direct", or "both". "Real-time" includes all third-party
inventory not managed by your network that has been enabled for
reselling (including external supply partners such as Microsoft
Advertising Exchange and Google Ad Manager). "Direct" includes only
inventory managed by your network.</p>

class="note note_note">
<b>Note:</b> Although you can continue to use
this field, the fields within <code
class="ph codeph">supply_strategies</code> object are the preferred
mechanism for designating inventory supply sources. However, once you
set any of the boolean fields within <code
class="ph codeph">supply_strategies</code> object to <code
class="ph codeph">true</code>, the value of the <code
class="ph codeph">inventory_type</code> field will be permanently
ignored and unsettable for that augmented line item.


<p><strong>Default:</strong> "real_time"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">supply_strategies</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">An
object containing several boolean fields used to designate which
inventory supply sources you would like to target. The values of this
object's boolean fields supersede the setting of the <code
class="ph codeph">inventory_type</code> field and once set will cause
the <code class="ph codeph">inventory_type</code> field to be
permanently locked and ignored. For more details, see <a
href="line-item-service---ali.md#LineItemServiceALI-SupplyStrategies"
class="xref" target="_blank">Supply Strategies</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_distribution_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>When
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
size bucket with the highest CTR delivers the most.</li>
</ul>

<strong>Default:</strong> <code class="ph codeph">null</code>

<b>Note:</b> If a specific <code
class="ph codeph">creative_distribution_type</code> is not passed
through the API (<code class="ph codeph">null</code> value is passed),
then value of <code class="ph codeph">creative_distribution_type</code>
is set to <code class="ph codeph">even</code>.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">prefer_delivery_over_performance</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
field is used to indicate your goal priority (whether you wish to give
greater priority to delivery, performance, or margin). Options are:</p>
<ul>
<li><p><code class="ph codeph">true</code> - This option (delivery)
prioritizes impression volume by multiplying bids up to 2x in response
to delivery. When you optimize to clicks, it also allows line items to
discover inventory with historical CPCs up to 10x the goal.</p>
class="note warning note_warning">
<b>Warning:</b>
<p>This may cause margin and performance to be deprioritized, possibly
resulting in a negative margin.</p>
</li>
<li><code class="ph codeph">false</code> - Select this option to do one
of the following:
<ul>
<li>prioritize performance (e.g., clicks). This prioritizes your
advertiser goal over impression volume and profit. If you select this
option, you must also set <code class="ph codeph">min_margin_pct</code>
(in the <code class="ph codeph">valuation</code> object) to <code
class="ph codeph">null</code>.</li>
<li>prioritize margin. This reduces optimized bids by your desired
profit margin. Additional margin may be earned through Adaptive Pacing
if your revenue type is CPM, Dynamic CPM, Viewable CPM, or CPC. If you
select this option, you must also set the <code
class="ph codeph">min_margin_pct</code> field (in the <code
class="ph codeph">valuation</code> object) to your desired margin (e.g.
10 for 10%)</li>
</ul></li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">use_ip_tracking</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Determines
whether IP Attribution is enabled or not for a given line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">viewability_vendor</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
field determines what provider measures the viewability of the ad unit.
The only value that is currently valid is <code
class="ph codeph">"appnexus"</code>.</p>
<p><strong>Default:</strong> "appnexus"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_archived</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Read-only.</strong>
Indicates whether the line item has been automatically archived due to
not being used. Once set to <code class="ph codeph">true</code>, the
value can't be changed and the only calls that can be made on the line
item object are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code>.</p>
class="note note_note">
<b>Note:</b>
<p>If a line item is automatically archived, its profile will also be
archived and the only calls that may be made on either of those objects
are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code> . In addition, once archived, the line
item may not be associated with any insertion orders.</p>

<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> archived_on </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time on which the line item was archived (i.e., when the <code
class="ph codeph">is_archived</code> field was set to <code
class="ph codeph">true</code> ).</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">partner_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">An
array of partner fees applied to this line item. You can create or view
third-party partner fees with the <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fee Service</a>. For more details,
see <a
href="line-item-service---ali.md#LineItemServiceALI-PartnerFees"
class="xref" target="_blank">Partner Fees</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_item_subtype</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
subtype of the line item. The line_item_subtype field cannot be changed
after the line item is created. For Invest buyers, the supported values
are as follows:</p>
<ul>
<li><code class="ph codeph">standard_buying</code> - Augmented line item
eligible to serve on managed, RTB, or deals. Omitting the
line_item_subtype on POST requests will default to this subtype
behaviour.</li>
<li><code class="ph codeph">pg_buying</code> - Eligible only to transact
on PG deals. If the subtype is passed on the POST, the <code
class="ph codeph">line_item_type</code>, <code
class="ph codeph">bid_object_type</code>, <code
class="ph codeph">delivery_model_type</code>, and <code
class="ph codeph">supply_strategies</code> fields are not required.</li>
<li><code class="ph codeph">standard_curated</code> - For curated deal
line items. For more details, see <code
class="ph codeph">line_item_subtype</code> in <a
href="curated-deal-line-item-api-setup-guide.md"
class="xref" target="_blank">Curated Deal Line Item API Setup
Guide</a></li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">standard_buying</code></p></td>
</tr>
</tbody>
</table>

**Budgeting/Pricing**

<table id="line-item-service-ali__table_nkb_h14_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_nkb_h14_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_nkb_h14_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_nkb_h14_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>The
lifetime budget in dollars (media cost). Null corresponds to
"unlimited".</p>
class="note warning note_warning">
<b>Warning:</b>
<p>If <code class="ph codeph">lifetime_budget</code> is set to <code
class="ph codeph">null</code> (unlimited), and the line item and
insertion order lifetime budgets are also set to <code
class="ph codeph">null</code>, severe overspend can occur.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>The
lifetime budget in impressions. Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>The
daily budget in dollars (revenue). Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>The
daily budget in impressions. Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">learn_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">learn_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">learn_budget_daily_cap</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">learn_budget_daily_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>If true,
the line item's daily budgeted spend is spread out evenly throughout
each day. This is only applicable if <code
class="ph codeph">daily_budget</code> is set.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>If true,
the line item will attempt to spend its overall lifetime budget evenly
over the line item flight dates. If true, you cannot set a <code
class="ph codeph">daily_budget</code>, you cannot set <code
class="ph codeph">enable_pacing</code> to false, and you must first
establish a <code class="ph codeph">lifetime_budget</code>, a <code
class="ph codeph">start_date</code>, and an <code
class="ph codeph">end_date</code> for the line item.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">lifetime_pacing_span</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>In the
event of an underspend event, this indicates the number of days across
which the underspent amount will be distributed. The default value of
<code class="ph codeph">null</code> indicates a value of three (3)
days.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p>For a
line item targeting managed inventory (<code
class="ph codeph">inventory_type</code> is "direct"), since you have
already paid for inventory, there is no need to input a buying strategy.
However, you can set the line item's priority to weight the line item
against other direct line items within your account. The line item with
the highest priority will always win, even if a lower priority line item
bids more.</p>
<p><strong>Default:</strong> 5</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">expected_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated.</strong></p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">total_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">has_pacing_dollars</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">has_pacing_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">imps_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__1"><code
class="ph codeph">media_cost_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkb_h14_wwb__entry__3"><p><strong>Deprecated</strong>.</p>
class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>
</td>
</tr>
</tbody>
</table>

**Supply Strategies**

The `supply_strategies` object is used to designate which supply source
you wish to target when buying inventory. You can target any combination
of the `rtb` (Open Exchange), `managed`, or `deals` fields by setting
each to `true` or `false`. If you are targeting a programmatic
guaranteed deal, set the `programmatic_guaranteed` field to `true` and
the `rtb`, `managed`, and `deals` fields to `false`. At least one of
these `supply_strategies` object fields must be set to `true`.



<b>Note:</b>

For deals, in addition setting the `deals` field to `true` within this
object, you must also ensure that you both provide a list of deals to
target or exclude in the `deal_targets` array and set the
`deal_action_include` field to `true` or `false` (depending on inclusion
or exclusion) in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>.



class="note warning note_warning">

<b>Warning:</b>

The values of this object's boolean fields supersede the setting of the
`inventory_type` field. Once any of these fields are set to `true` on an
ALI, the `inventory_type` field will be ignored and unsettable for that
line item. If you attempt to make a `PUT` call on the value of the
`inventory_type` field after one or more of these fields have been set
to `true` , the following error message will be generated:
`"inventory_type cannot be updated once supply_strategies has been set".`







<b>Note:</b> The Line Item API Service
supports Roadblocks only if the `supply_strategy` is `managed`.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__section_et2_ctn_wwb__entry__271"
class="entry align-left">Field</th>
<th id="line-item-service-ali__section_et2_ctn_wwb__entry__272"
class="entry align-left">Type</th>
<th id="line-item-service-ali__section_et2_ctn_wwb__entry__273"
class="entry align-left">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__271"><code
class="ph codeph">rtb</code></td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__272">boolean</td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__273">Designates
whether you wish to target inventory on the Open Exchange. This includes
all third-party inventory not managed by your network that has been
enabled for reselling (including external supply partners such as
Microsoft Advertising Exchange and Google Ad Manager).</td>
</tr>
<tr class="even row">
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__271"><code
class="ph codeph">managed</code></td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__272">boolean</td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__273">Designates
whether you wish to target managed inventory. This only includes
inventory managed by your network.</td>
</tr>
<tr class="odd row">
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__271"><code
class="ph codeph">deals</code></td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__272">boolean</td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__273">Designates
whether you wish to target deal inventory. This includes any deals which
you are are eligible to bid on.</td>
</tr>
<tr class="even row">
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__271"><code
class="ph codeph">programmatic_guaranteed</code></td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__272">boolean</td>
<td class="entry align-left"
headers="line-item-service-ali__section_et2_ctn_wwb__entry__273">Designates
whether you wish to target a programmatic guaranteed deal with this line
item. If this is set to <code class="ph codeph">true</code>, then the
<code class="ph codeph">rtb</code>, <code
class="ph codeph">managed</code>, and <code
class="ph codeph">deals</code> fields must be set to false.</td>
</tr>
</tbody>
</table>

**Target Open Exchange and 2 Deals but *not* Managed inventory**

``` pre
{code} $ cat LI-supply-strategies.json

{
    "line-item": {
      ...
      "supply_strategies": {
          "managed": false,
          "rtb": true,
          "deals": true
      }
      ...
    }
}
 
$ cat profile-supply-strategies.json 
{
    "profile": {
      "deal_action_include": true,
      "deal_targets": [
          {
              "id": 44,
              "name": "Deal with external supply partner",
              "code": "APN-1234-2200f"
          },
          {
              "id": 45,
              "name": "Deal with Console seller",
              "code": null
          }
      ]
  }
}
{code}
```

**Advertiser**



You can use the <a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a> to create or view
advertisers.

<table id="line-item-service-ali__table_nkk_fgp_wwb" class="table"
style="width:100%;">
<colgroup>
<col style="width: 21%" />
<col style="width: 22%" />
<col style="width: 55%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_nkk_fgp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_nkk_fgp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_nkk_fgp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkk_fgp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkk_fgp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkk_fgp_wwb__entry__3">The unique
identifier for this advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkk_fgp_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkk_fgp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nkk_fgp_wwb__entry__3">The name of
the advertiser associated with the unique ID above.</td>
</tr>
</tbody>
</table>

**Labels**

You can use the read-only <a
href="label-service.md"
class="xref" target="_blank">Label Service</a> to view all possible
labels for line items, advertisers, insertion orders, and publishers.
This service also allows you to view the labels that have already been
applied to your objects.

<table id="line-item-service-ali__table_pht_lgp_wwb" class="table"
style="width:100%;">
<colgroup>
<col style="width: 22%" />
<col style="width: 26%" />
<col style="width: 51%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_pht_lgp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_pht_lgp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_pht_lgp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__3">The ID of
the label. Possible values: 7, 8, 11.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__3">Read-only.
The name of the label. Possible values: "Trafficker" or "Sales
Rep".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pht_lgp_wwb__entry__3">The value
assigned to the label. For example, for the "Sales Rep" label, this
could be a name such as "Michael Sellers".</td>
</tr>
</tbody>
</table>

**Broker Fees**

Broker fees are deprecated for augmented line items. Please create
partner fees and apply them to the line item using the <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fee Service</a>.

**Partner Fees**

If you need to reserve a portion of your budget for third-party
costs--costs owed to parties other than the publisher--you can define
this information with the <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fee Service</a>. Fees can be
tracked on a CPM, cost share, or revenue share basis, and can be applied
to multiple advertisers and line items, if desired. A single advertiser
or line item can have multiple fees applied.

The `partner fee` array includes the following field:

<table id="line-item-service-ali__table_fsh_qhp_wwb" class="table">
<colgroup>
<col style="width: 23%" />
<col style="width: 30%" />
<col style="width: 46%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_fsh_qhp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_fsh_qhp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_fsh_qhp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_fsh_qhp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_fsh_qhp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_fsh_qhp_wwb__entry__3">The ID of a
partner fee applied to this line item.</td>
</tr>
</tbody>
</table>

**Apply a fee to a line item**

``` pre
$cat LI-update.json

{
    "line-item": {
        "partner_fees": [
            {"id": 4401
            },
            { "id": 4402
            }
    ]
}

$curl -b cookie -X PUT -d @LI-update.json "https://api.appnexus.com/line-item?id=2345432"

{
    "response": {
        "status" : "OK",
        "id": 2345432
    }
}
```

**Remove a fee from a line item**



<b>Note:</b>

You cannot remove a fee from a line item if `required` on the <a
href="partner-fee-service.md"
class="xref" target="_blank">partner fee</a> is true. You must first set
`required` to false and then remove the fee from the line item.





``` pre
$curl -b cookie -x GET "https://api.appnexus.com/line-item?id=2345432"

 {
    "line-item": {
        ...,
        "partner_fees": [
            {
                "id": 1
            },
            {"id": 2
            }, 
            {"id": 3
            }
        ],
        ...
    }
}



$cat LI-update.json

{
    "line-item": {
        "partner_fees": [
            {
                "id": 1
            },
            {
                "id": 3
            }, 
    ]
                }
}

$curl -b cookie -X PUT -d @LI-update.json "https://api.appnexus.com/line-item?id=2345432"

{
    "line-item": {
        ...,
        "partner_fees": [
            {
                "id": 1
            },
            {
                "id": 3
            }
        ],
        ...
    }
}
```



**Pixels**

Each object in the `pixels` array includes the following fields:

<table id="line-item-service-ali__table_r2y_tjp_wwb" class="table">
<colgroup>
<col style="width: 26%" />
<col style="width: 28%" />
<col style="width: 44%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_r2y_tjp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_r2y_tjp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_r2y_tjp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__3">The ID of
the conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__3">The state
of the pixel. Possible values: "active" or "inactive".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__1"><code
class="ph codeph">post_click_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__3">The post
click revenue value for the pixel. This field can only be set when the
line item's <code class="ph codeph">revenue_type</code> field has been
set to <code class="ph codeph">`cpa`</code> (as a result, this field
can't be used with augmented line items).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__1"><code
class="ph codeph">post_view_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__3">The post
view revenue value for the pixel. This field cab only be set when the
line item's <code class="ph codeph">revenue_type</code> field has been
set to <code class="ph codeph">`cpa`</code> (as a result, this field
can't be used with augmented line items).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__3"><p>The name
of the conversion pixel.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__1"><code
class="ph codeph">trigger_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_r2y_tjp_wwb__entry__3"><p>The type
of event required for an attributed conversion. Possible values: "view",
"click", or "hybrid".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Insertion Orders**

<table id="line-item-service-ali__table_pdw_gkp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_pdw_gkp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_pdw_gkp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_pdw_gkp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3"><p>The
unique ID of the insertion order.</p>

class="note note_note">
<b>Note:</b> Once a line item is associated
with a seamless insertion order, it cannot be associated to a legacy
insertion order.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The state
of this insertion order: "active" or "inactive."</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">An optional
custom code used to identify this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The name of
this insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The unique
identifier of the advertiser associated with this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The start
date for this insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The end
date for this insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The
timezone that this insertion order is associated with. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for a list of allowed
values.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The date at
which this insertion order object was last updated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3"><p>The
currency type associated with this insertion order. For a list of
supported currencies, see the <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>.</p>
class="note note_note">
<b>Note:</b> For best results, set the
currency on the parent insertion order. See <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Insertion Order Service</a> for more information.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pdw_gkp_wwb__entry__3">The
metadata for the budget intervals from the associated insertion order.
Budget intervals enable multiple date intervals to be attached to an
insertion order, each with corresponding budget values. See <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a> for more
information.</td>
</tr>
</tbody>
</table>

**Valuation**

The valuation object is used to set performance goals for line items
with the `goal_type` of `"cpc"` or `"cpa"`. It contains the performance
goal threshold, which determines the bid/no bid cutoff on optimized line
items, and the performance goal target, which represents the desired
clicks or conversions.

The `valuation` object contains the following fields:

<table id="line-item-service-ali__table_edm_wqp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_edm_wqp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_edm_wqp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_edm_wqp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">min_margin_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>Only set
this field if you have set <code
class="ph codeph">prefer_delivery_over_performance</code> to <code
class="ph codeph">false</code> and <code
class="ph codeph">revenue_type</code> has not been set to <code
class="ph codeph">cost_plus_margin</code>. Set this to your desired
minimum margin (e.g., 10 for 10%). This may cause your delivery and
performance to be deprioritized.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">goal_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>The
performance goal threshold determines bidding, inventory discovery, and
the bid/no bid check on optimized line items. A value is required here
when you are optimizing to a CTR or CPC goal, or a CPA goal for only
post-click conversions.</p>
<ul>
<li>If you are optimizing to a CTR, enter the desired clickthrough rate
(a value between 0 and 1).</li>
<li>If you are optimizing to a CPC goal, enter your CPC goal.</li>
<li>If you are optimizing to a CPA goal for only post-click conversions,
enter your CPC goal (<strong>not</strong> your CPA goal), and set the
<code class="ph codeph">post_click_goal_task</code> and <code
class="ph codeph">post_click_goal_threshold</code> fields in the <code
class="ph codeph">goal_pixels</code> array of objects.</li>
</ul>
class="note note_note">
<b>Note:</b>
<p>If you are optimizing to a CPA goal with both post-click and
post-view conversions, see <a
href="line-item-service---ali.md#line-item-service-ali__line-item-service---ali-goal-pixels"
class="xref">Goal Pixels</a> for required settings.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">goal_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>The
performance goal target is a required value when you are optimizing to a
CTR, CPC goal, CPA goal (for only post-click conversions), or Viewable
CPM goal.</p>
<ul>
<li>If you are optimizing to a CTR, enter the desired clickthrough rate
(a value between 0 and 1).</li>
<li>If you are optimizing to a CPC goal, enter your CPC goal.</li>
<li>If you are optimizing to a CPA goal for only post-click conversions,
enter your CPC goal ( not your CPA goal), and set the <code
class="ph codeph">post_click_goal_target </code>and <code
class="ph codeph">post_click_goal_threshold </code>fields in the <code
class="ph codeph">goal_pixels </code>array of objects.</li>
<li>If you are optimizing to a Viewable CPM, set this field to
null.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">campaign_group_valuation_strategy </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>Determines
whether a line item that has a CPA goal for both post-click and
post-view conversions is optimized for retargeting or prospecting.</p>
<ul>
<li>Set to <code class="ph codeph">"retargeting"</code> for a
retargeting line item (a line item that aims to drive users who have
already shown interest in the brand further down a conversion funnel).
The line item profile must target at least one segment that is not in
the data marketplace. Use the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> to set up segment
targeting.</li>
<li>Set to <code class="ph codeph">"prospecting"</code> for a
prospecting line item (a line item that aims to drive new users into a
conversion funnel).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">min_avg_cpm</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3">The value
below which the average CPM may not fall. If the <code
class="ph codeph">max_avg_cpm</code> field is also set, <code
class="ph codeph">min_avg_cpm</code> serves as a lower bound of a range.
You must set this field if you set <code
class="ph codeph">revenue_type</code> to <code
class="ph codeph">"vcpm"</code> (Dynamic CPM) or <code
class="ph codeph">"cost_plus_margin"</code>. If you set <code
class="ph codeph">revenue_type</code> to <code
class="ph codeph">"cpm"</code> , you must set this field to <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">max_avg_cpm</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>The
value above which the average CPM may not rise. If the <code
class="ph codeph">min_avg_cpm</code> field is also set, <code
class="ph codeph">max_avg_cpm</code> serves as a upper bound of a range.
You must set this field if you set <code
class="ph codeph">revenue_type</code> to <code
class="ph codeph">"vcpm"</code> or <code
class="ph codeph">"cost_plus_margin"</code> If you set <code
class="ph codeph">revenue_type</code> to <code
class="ph codeph">"cpm"</code>, you must set this field to <code
class="ph codeph">null</code>.</p>
<p>If you have disabled optimization for Cost Plus (via the <code
class="ph codeph">goal_type</code> field), you must set a flat CPM for
Cost Plus. Use this field to set the flat CPM value.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">min_margin_cpm</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>Margin
Value when Margin Type is CPM. <strong>Note</strong>: The <code
class="ph codeph">min_margin_cpm</code> and <code
class="ph codeph">min_margin_pct</code> fields cannot both be set at the
same time. If one is set, the other must be null. Xandr validates
customer entitlements when clients use these fields.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__1"><code
class="ph codeph">min_margin_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_edm_wqp_wwb__entry__3"><p>Margin
Value when Margin Type is Percentage. <strong>Note</strong>: The <code
class="ph codeph">min_margin_cpm</code> and <code
class="ph codeph">min_margin_pct</code> fields cannot both be set at the
same time. If one is set, the other must be null. Xandr validates
customer entitlements when clients use these fields.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Auction Event**



The following fields are contained within the `auction_event` object.



<b>Note:</b> Do not supply values for the
fields within this object that end in `_code` or `_id`. Only supply
values for the fields in the `auction_event` object that end in
**`_type`** . The object will return the fields ending in `_code` and
`_id`, but they will be ignored on `POST` and `PUT` calls.







<table id="line-item-service-ali__table_ysc_4rp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_ysc_4rp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_ysc_4rp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_ysc_4rp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">revenue_auction_event_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">revenue_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - use this value when
your Revenue Type is CPM, Dynamic CPM or Cost Plus Margin.</li>
<li><code class="ph codeph">"view"</code> - use this value when your
Revenue Type is Viewable CPM. Only measured viewable impressions will be
counted, according to the Xandr viewability measurement, using the IAB
definition.</li>
<li><code class="ph codeph">"click"</code> - use this value when your
Revenue Type is CPC.</li>
<li><code class="ph codeph">"video"</code> - use this value when your
Revenue Type is CPCV.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">revenue_auction_event_type_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">revenue_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - use this value when
your Revenue Type is CPM, Dynamic CPM or Cost Plus Margin.</li>
<li><code class="ph codeph">"view_display_50pv1s_an"</code> - use this
value when your Revenue Type is Viewable CPM.</li>
<li><code class="ph codeph">"click"</code> - use this value when your
Revenue Type is CPC.</li>
<li><code class="ph codeph">"video_completion"</code> - use this value
when your Revenue Type is CPCV.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">revenue_auction_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">revenue_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">1</code> - use this value when your Revenue
Type is CPM, Dynamic CPM or Cost Plus Margin.</li>
<li><code class="ph codeph">2</code> - use this value when your Revenue
Type is Viewable CPM.</li>
<li><code class="ph codeph">3</code> - use this value when your Revenue
Type is CPC.</li>
<li><code class="ph codeph">10</code> - use this value when your Revenue
Type is CPCV.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">kpi_auction_event_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">goal_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - use this value when
you are optmizing optimizing to CPC, CPA, CTR, or not using
optimization.</li>
<li><code class="ph codeph">"view"</code> - use this value when you are
optimizing to a Viewable CPM.</li>
<li><code class="ph codeph">"click"</code> - use this value when your
Revenue Type is CPC.</li>
<li><code class="ph codeph">"video"</code> - use this value when you are
optimizing to CPCV or VCR.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">kpi_auction_event_type_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">goal_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - use this value when
you are optmizing optimizing to CPC, CPA, CTR, or not using
optimization.</li>
<li><code class="ph codeph">"view_display_50pv1s_an"</code> - use this
value when you are optimizing to a Viewable CPM.</li>
<li><p><code class="ph codeph">"video_completion"</code> - use this
value when you are optimizing to CPCV or VCR.</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">kpi_auction_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">goal_type</code> field. Options are:</p>
<ul>
<li><code class="ph codeph">1</code> - use this value when you are
optimizing to CPC, CPA , CTR, or not using optimization.</li>
<li><code class="ph codeph">2</code> - use this value when you are
optimizing to a Viewable CPM.</li>
<li><code class="ph codeph">10</code> - use this value when your Revenue
Type is CPCV or VCR.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">kpi_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">goal_type</code> field. Set this to one of the
following:</p>
<ul>
<li><code class="ph codeph">null </code>- if you are optimizing to CPC,
CPA, CTR, or not using optimization.</li>
<li>your goal - if you are optimizing to Viewable CPM goal (e.g., 5).,
CPCV or VCR. VCR goals must be between 0 and 1.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">kpi_value_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is used in conjunction with the settings of the <code
class="ph codeph">kpi_code</code> field. Set this to one of the
following:</p>
<ul>
<li><code class="ph codeph">none</code> - if you are optimizing to CPC,
CPA, CTR, or not using optimization.</li>
<li><code class="ph codeph">goal_value</code> - if you are optimizing to
a cost-based goal not covered above (CPCV).</li>
<li><code class="ph codeph">rate_threshold</code> - if you are
optimizing to a rate-based goal not covered above (VCR).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">payment_auction_event_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is only relevant if you have either set <code
class="ph codeph">inventory_type</code> to <code
class="ph codeph">"real_time"</code> (RTB) or set the <code
class="ph codeph">rtb</code> field in the <code
class="ph codeph">supply_strategies</code> object to <code
class="ph codeph">true</code>. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - if you want to pay per
impression.</li>
<li><code class="ph codeph">"view"</code> - if you want to pay per view.
This option is only allowed when you have set your <code
class="ph codeph">revenue_type</code> field to use either Viewable CPM
or Cost Plus (and disabled optimization).</li>
<li><code class="ph codeph">"click"</code> - use this value when your
Revenue Type is CPC.</li>
<li><code class="ph codeph">"video"</code> - if you want to pay per
video complete.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">payment_auction_event_type_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is only relevant if you have either set <code
class="ph codeph">inventory_type</code> to <code
class="ph codeph">"real_time"</code> (RTB) or set the <code
class="ph codeph">rtb</code> field in the <code
class="ph codeph">supply_strategies</code> object to <code
class="ph codeph">true</code>. Options are:</p>
<ul>
<li><code class="ph codeph">"impression"</code> - if you want to pay per
impression.</li>
<li><code class="ph codeph">"view_display_50pv1s_an"</code> - if you
want to pay per view. This option is only allowed when you have set your
<code class="ph codeph">revenue_type</code> field to use either Viewable
CPM or Cost Plus (and disabled optimization).</li>
<li><code class="ph codeph">"video_completion"</code> - if you want to
pay per video complete.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__1"><code
class="ph codeph">payment_auction_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_ysc_4rp_wwb__entry__3"><p>This
field is only relevant if you have either set <code
class="ph codeph">inventory_type</code> to <code
class="ph codeph">"real_time"</code> (RTB) or set the <code
class="ph codeph">rtb</code> field in the <code
class="ph codeph">supply_strategies</code> object to <code
class="ph codeph">true</code>. Options are:</p>
<ul>
<li><code class="ph codeph">1</code> - if you want to pay per
impression.</li>
<li><code class="ph codeph">2</code> - if you want to pay per view. This
option is only allowed when you have set your <code
class="ph codeph">revenue_type</code> field to use either Viewable CPM
or Cost Plus (and disabled optimization).</li>
<li><code class="ph codeph">10</code> - if you want to pay per video
complete.</li>
</ul></td>
</tr>
</tbody>
</table>

**Budget Scheduling Settings**



The following fields are contained within the
`budget_scheduling_settings` object.

<table id="line-item-service-ali__table_rlm_5rp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_rlm_5rp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_rlm_5rp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_rlm_5rp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_rlm_5rp_wwb__entry__1"><code
class="ph codeph">underspend_catchup_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_rlm_5rp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_rlm_5rp_wwb__entry__3"><p>Dictates
how Xandr's system deals with an underdelivered daily budget. Use the
<code class="ph codeph">"evenly"</code> value if you'd like the unspent
portions of your budget to be spent evenly throughout the rest of
flight, or <code class="ph codeph">"ASAP"</code> if you'd like the
unspent budget to be spent as soon as possible.</p>
<p>Possible values: <code class="ph codeph">"evenly"</code> or <code
class="ph codeph">"ASAP"</code>.</p></td>
</tr>
</tbody>
</table>

**Demographic Measuring**

The `in_demo_measurement` object enables demographic measuring and its
relevant specifications for your line item. The `in_demo_measurement`
object is a part of the Nielsen Digital Ad Ratings (DAR) feature, which
costs $0.25 CPM to use.



<b>Note:</b>

To utilize demographic measuring for connected TV (CTV), your line item
must have a targeting configuration that exclusively targets within the
United States.





**An example of the `in_demo_measurement` object within a JSON
response**

``` pre
"in_demo_measurement": {
    "campaign_group_id": 12795878,
    "provider": "nielsen-dar",
    "status": "active",
    "pixel": null,
    "attributes": [{
            "key": "on_target_goal_pct",
            "value": "50"
        },
        {
            "key": "target_gender",
            "value": "all"
        },
        {
            "key": "target_age_lower",
            "value": "13"
        },
        {
            "key": "target_age_upper",
            "value": "99"
        }
    ]
},
...
```



<table id="line-item-service-ali__table_pkt_ssp_wwb" class="table">
<colgroup>
<col style="width: 27%" />
<col style="width: 27%" />
<col style="width: 44%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_pkt_ssp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_pkt_ssp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_pkt_ssp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__1"><code
class="ph codeph">campaign_group_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__3"><p>This
field is used to associate the <code
class="ph codeph">in_demo_measurement</code> object with this line
item.</p>
<p>This field's value is your line item's ID.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__1"><code
class="ph codeph">provider</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__3"><p>This
field indicates which third-party provider is providing the demographic
measuring service.</p>
<p>Currently, the only possible value for this field is <code
class="ph codeph">"nielsen-dar"</code>.</p>
<p><strong>Required.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__1"><code
class="ph codeph">status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__3"><p>This
field indicates whether or not the selected <code
class="ph codeph">provider</code> has acknowledged and begun demographic
measuring for your line item. To activate demographic measurement, set
this field to <code class="ph codeph">"active"</code>. It can take up to
24 hours for a third-party measurement provider to begin tracking your
line item's impressions, during which time this field's value is set to
<code class="ph codeph">"active-pending"</code>.</p>
<p>Possible values:</p>
<ul>
<li><code class="ph codeph">"active"</code> - Measurement has been
activated for this line item, and Xandr has received an acknowledgment
from a third-party measurement provider's API. Impressions are being
measured.</li>
<li><code class="ph codeph">"active-pending"</code> - Measurement has
been activated for this line item, but impressions aren't being measured
as the line item awaits confirmation from a third-party measurement
provider’s API.</li>
<li><code class="ph codeph">"inactive"</code> - Measurement isn't
currently enabled for this line item.</li>
<li><code class="ph codeph">"inactive-pending"</code> - This value is
similar to <code class="ph codeph">"inactive"</code>, but it indicates
that your selected third-party measurement provider's API hasn't yet
processed your line item's deactivation request. Once the third-party
measurement provider has acknowledged your line item's measurement
deactivation, this value changes to <code
class="ph codeph">"inactive"</code>.</li>
</ul>
<p><strong>Required.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__1"><code
class="ph codeph">pixel</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__3"><p>The
default value for this field is <code class="ph codeph">null</code>.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__1"><code
class="ph codeph">attributes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pkt_ssp_wwb__entry__3">The <code
class="ph codeph">attributes</code> array of objects is comprised of
four key-value objects containing values to specify what demography your
line item is measuring its targeting performance against:
<pre id="line-item-service-ali__codeblock_gjv_z5p_wwb"
class="pre codeblock"><code>&quot;attributes&quot;:[
               {
                  &quot;key&quot;:&quot;on_target_goal_pct&quot;,
                  &quot;value&quot;:&quot;50&quot;
               },
               {
                  &quot;key&quot;:&quot;target_gender&quot;,
                  &quot;value&quot;:&quot;all&quot;
               },
               {
                  &quot;key&quot;:&quot;target_age_lower&quot;,
                  &quot;value&quot;:&quot;13&quot;
               },
               {
                  &quot;key&quot;:&quot;target_age_upper&quot;,
                  &quot;value&quot;:&quot;99&quot;
               }
            ]</code></pre>
<p>For more information on the <strong>attributes</strong> array of
key-value objects, see the <strong>Demographic Attributes</strong> table
below.</p>
<p><strong>Required.</strong></p></td>
</tr>
</tbody>
</table>



**Demographic Attributes**

<table id="line-item-service-ali__table_bhh_gvp_wwb" class="table"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_bhh_gvp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Key</th>
<th id="line-item-service-ali__table_bhh_gvp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_bhh_gvp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__1"><code
class="ph codeph">on_target_goal_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__3"><p>Indicates
how often you'd like your line item to deliver to your specified
demography (such specification is done by inserting values for the keys
below). This reference goal percentage is used in reporting and doesn't
affect line item performance.</p>
<p>Possible values: <code class="ph codeph">1</code> to <code
class="ph codeph">100.</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__1"><code
class="ph codeph">target_gender</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__3"><p>Specifies
the gender of the demography that you're trying to target.</p>
<p>Possible values: <code class="ph codeph">"all"</code>, <code
class="ph codeph">"male"</code>, or <code
class="ph codeph">"female".</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__1"><code
class="ph codeph">target_age_lower</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__3"><p>Specifies
the age threshold of the demographic age range that you're trying to
target.</p>
<p>Possible values: <code class="ph codeph">13</code>, <code
class="ph codeph">18</code>, <code class="ph codeph">21</code>, <code
class="ph codeph">25</code>, <code class="ph codeph">30</code>, <code
class="ph codeph">35</code>, <code class="ph codeph">40</code>, <code
class="ph codeph">45</code>, <code class="ph codeph">50</code>, <code
class="ph codeph">55</code>, <code class="ph codeph">60</code>, or <code
class="ph codeph">65.</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__1"><code
class="ph codeph">target_age_upper</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_bhh_gvp_wwb__entry__3"><p>Specifies
the age limit for the demographic age range that you're trying to
target.</p>
<p>Possible values: <code class="ph codeph">17</code>, <code
class="ph codeph">20</code>, <code class="ph codeph">24</code>, <code
class="ph codeph">29</code>, <code class="ph codeph">34</code>, <code
class="ph codeph">39</code>, <code class="ph codeph">44</code>, <code
class="ph codeph">49</code>, <code class="ph codeph">54</code>, <code
class="ph codeph">59</code>, <code class="ph codeph">64</code>, or <code
class="ph codeph">99</code> (which represents ages 65+).</p></td>
</tr>
</tbody>
</table>

**Offline Attribution**



The `offline_attribution` object enables offline sales attribution for
your line item. Offline sales attribution is a **Beta** feature provided
by Nielsen Catalina Solutions (NCS), so you'll need to gain **Beta**
testing access to this feature prior to using it. To gain access,
contact your Xandr account representative.



<b>Note:</b>

To utilize offline sales attribution, your line item must have a
targeting configuration that exclusively targets within the United
States.





**An example of the `offline_attribution` object within a JSON `PUT`
request**

``` pre
$ cat line-item.json

{
    "line-item": {
        "id": 1,
        ...
        "offline_attribution": {
            "product_group_id": 123,
            "report_level_type": "line_item",
            "frequency_type": "weekly",
            "lookback_type": "flight_lifetime"
        }
    }
}

$ curl -b cookies -c cookies -X PUT -d @line-item.json "https://api.appnexus.com/line-item?id=ID_INTEGER&advertiser_id=ID_INTEGER"
```





**An example of the `offline_attribution` object within a JSON
response**

``` pre
{
    "line-item": {
        "id": 1,
        ...
        "offline_attribution": {
            "product_group_id": 123,
            "product_group": {
                "provider_member_name": "ncs",
                "category_name": "CATEGORY NAME",
                "brand_name": "BRAND NAME",
                "product_high_name": "PRODUCT HIGH NAME",
                "product_low_name": "PRODUCT LOW NAME",
            }
            "report_level_type": "line_item",
            "frequency_type": "weekly",
            "lookback_type": "flight_lifetime"
        }
    }
}
...
```





**An example of the `offline_attribution` object being deleted within a
JSON `PUT` request**

``` pre
$ cat line-item.json

{
    "line-item": {
        "id": 1,
        ...
        "offline_attribution": null
    }
}

$ curl -b cookies -c cookies -X PUT -d @line-item.json "https://api.appnexus.com/line-item?id=ID_INTEGER&advertiser_id=ID_INTEGER"
```



<table id="line-item-service-ali__table_tgh_mvp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_tgh_mvp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_tgh_mvp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_tgh_mvp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__1"><code
class="ph codeph">product_group_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__3"><p>The
product group entry to report on. You can find a product group ID by
using the <strong>Offline Attribution Product Group
Service</strong>.</p>
<p><strong>Required.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__1"><code
class="ph codeph">offline_attribution_product_group</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__3"><p>An
object that returns information on the product group you're tracking
against (based on your <code class="ph codeph">product_group_id</code>
selection) such as its</p>
<ul>
<li><code class="ph codeph">provider_member_name</code>,</li>
<li><code class="ph codeph">category_name</code>,</li>
<li><code class="ph codeph">brand_name</code>,</li>
<li><code class="ph codeph">product_high_name</code>,</li>
<li>and <code class="ph codeph">product_low_name</code>.</li>
</ul>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__1"><code
class="ph codeph">report_level_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__3"><p>What you
want to show sales attribution data for in your generated reports.</p>
<p>Potential values:</p>
<ul>
<li><code class="ph codeph">"line_item"</code></li>
<li><code class="ph codeph">"split"</code></li>
</ul>
<p><strong>Required.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__1"><code
class="ph codeph">frequency_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__3"><p>Pertains
to when you'll start receiving offline sales attribution data reports
for your line item and how often new reports will be made.</p>
<p>Potential values:</p>
<ul>
<li><code class="ph codeph">"weekly"</code></li>
<li><code class="ph codeph">"per_flight"</code></li>
</ul>
<p><strong>Required.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__1"><code
class="ph codeph">lookback_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_tgh_mvp_wwb__entry__3"><p>Pertains
to how much line item data is shown in each generated report (this field
is also based on your <code class="ph codeph">frequency_type</code>
selection).</p>
<p>Potential values:</p>
<ul>
<li><code class="ph codeph">"flight_lifetime"</code></li>
<li><code class="ph codeph">"last_week"</code></li>
</ul>
<p><strong>Required.</strong></p></td>
</tr>
</tbody>
</table>

**Creatives**

Each object in the `creatives` array includes the following fields. To
obtain information for `"id"` or `"code"` fields you can use the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.

<table id="line-item-service-ali__table_lzt_dwp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_lzt_dwp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_lzt_dwp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_lzt_dwp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">is_expired</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>If <code
class="ph codeph">true</code>, the creative is expired. If <code
class="ph codeph">false</code>, the creative is active.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>If <code
class="ph codeph">true</code>, the creative falls into a prohibited
category on the Xandr platform.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The
width of the creative.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The
audit status of the creative. Possible values: <code
class="ph codeph">"no_audit"</code>, <code
class="ph codeph">"pending"</code>, <code
class="ph codeph">"rejected"</code>, <code
class="ph codeph">"audited"</code>, or <code
class="ph codeph">"unauditable"</code> .</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The name
of the creative.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">pop_window_maximize</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>If <code
class="ph codeph">true</code>, the publisher's tag will maximize the
window. Only relevant for creatives with format "url-html" and "url-js".
If <code class="ph codeph">pop_window_maximize</code> is set to <code
class="ph codeph">true</code>, then neither <code
class="ph codeph">height</code> nor <code class="ph codeph">width</code>
should be set on the creative.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The
height of the creative.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The
state of the creative. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The
format of the creative file. Possible values: <code
class="ph codeph">"url-html"</code>, <code
class="ph codeph">"url-js"</code>, <code
class="ph codeph">"flash"</code>, <code
class="ph codeph">"image"</code>, <code
class="ph codeph">"raw-js"</code>, <code
class="ph codeph">"raw-html"</code>, <code
class="ph codeph">"iframe-html"</code>, or <code
class="ph codeph">"text"</code>.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">is_self_audited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>If <code
class="ph codeph">true</code>, the creative is self-audited.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3">The ID of
the creative. Either <code class="ph codeph">id</code> or <code
class="ph codeph">code</code> is required when updating creative
association.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3">The custom
code for the creative. Either <code class="ph codeph">id</code> or <code
class="ph codeph">code</code> is required when updating creative
association.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">weight</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3">A
user-supplied weight that determines the creative rotation strategy for
same-sized creatives managed at the line item level. To use this field,
the value of <code class="ph codeph">creative_distribution_type</code>
must be <code class="ph codeph">"weighted"</code>. Allowed value: an
integer greater than <code class="ph codeph">0</code> and less than or
equal to <code class="ph codeph">1000</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">ad_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The
creative ad type. Possible values: <code
class="ph codeph">"</code>banner", <code
class="ph codeph">"</code>video", <code
class="ph codeph">"</code>native", "audio".</p>

class="note note_note">
<b>Note:</b> All creatives associated to a
line item must have the same ad type, which should match the <code
class="ph codeph">ad_types</code> selected for the line item.


<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">all_budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>Indicates
whether the creative will serve during all budget intervals, including
all future budget intervals. Possible values are:</p>
<ul>
<li>True (the default)</li>
<li>False</li>
</ul>
<p>If <code class="ph codeph">true,</code> <code
class="ph codeph">custom_date_ranges</code> in the <code
class="ph codeph">creatives</code> array and <code
class="ph codeph">creatives</code> in the <code
class="ph codeph">budget_intervals</code> array must be set to null.
Conversely, if you want to use custom date ranges and/or creatives,
<code class="ph codeph">all_budget_intervals</code> must be set to
false.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__1"><code
class="ph codeph">custom_date_ranges</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lzt_dwp_wwb__entry__3"><p>The date
ranges setting the periods when the creative will serve.</p>
<p>If specified:</p>
<ul>
<li><code class="ph codeph">all_budget_intervals</code> must be set to
false</li>
</ul>
<p>For more information, see <a
href="line-item-service---ali.md#LineItemServiceALI-CustomDateRanges"
class="xref" target="_blank">Custom Date Ranges</a> below.</p></td>
</tr>
</tbody>
</table>

**Custom Date Ranges**

The `custom_date_ranges` array sets the date ranges during which a
creative will serve.

Dates must be in the format YYYY-MM-DD hh:mm:ss.

The date ranges must all meet the following specifications:

- They cannot include any dates before the start or after the end of any
  budget intervals defined for this line item.

- Date ranges must be at least an hour long.

- End dates cannot be later than `2038-01-19 00:00:00`.

<table id="line-item-service-ali__table_xhn_qxp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_xhn_qxp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_xhn_qxp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_xhn_qxp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_xhn_qxp_wwb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_xhn_qxp_wwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_xhn_qxp_wwb__entry__3">The start
date of the custom date range. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be hh:00:00).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_xhn_qxp_wwb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_xhn_qxp_wwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_xhn_qxp_wwb__entry__3">The end
date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
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
                start_date: 1/1/2020,
                end_date: 2/1/2020,
                lifetime_budget: 1000,
                id: 7777,                                  
                creatives: [12345]                          
            },
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
                id: 12345,
                weight: 1,
                all_budget_intervals: false,                
                custom_date_ranges: [
                    {                                      
                        start_date: 2/5/2020 00:00:00,      
                        end_date: 2/10/2020 00:00:00                     
                    }
                ]
            },
            {
                id: 56789,
                weight: 2,
                all_budget_intervals: true,                 
                custom_date_ranges: null                                                   
            }
        ],
        creative_distribution_type: weighted
    }
}
```



**Budget Intervals**

Budget intervals on an augmented line item must fall within the budget
intervals defined on the line item's parent insertion order(s). Budget
intervals on line items should have budgets distinct from those of the
parent insertion order(s). These function as line item-specific
"sub-budgets" of the budget on the corresponding insertion order budget
interval.

When creating a new augmented line item, ensure that the `start_date`
and `end_date` of each of its `budget_intervals` array objects fall
within one of the budget intervals defined on the parent insertion order
(insertion orders are associated with line items via the
`insertion_orders` array in the Line Item Service).





<b>Note:</b> The `parent_interval_id` (in the
`budget_intervals` array) has been deprecated and its value will be
ignored.





Also consider the following when using the `budget_interval` array:

- Budget intervals on the same line item cannot overlap.

- Budget intervals on the line item can have unlimited lifetime budgets
  (i.e., if all budget fields are left set to `null`).

- Budget intervals cannot be used if budget fields on the top-most level
  of the `line_item` object (as described in the **General** section of
  this page) itself are set.

- If you are increasing the budget for the line item's budget interval,
  you must first increase the budget for the budget interval on the
  parent insertion order (otherwise you may not have sufficient budget).
  For more information, see <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>.

- For optimization to work best, your budget intervals should have a
  duration of at least 4 hours.



<b>Note:</b>

- If line item's parent insertion order's `budget_type` field is set to
  **`impression`** :

<!-- -->

- - the `lifetime_budget` and `daily_budget` fields in this array must
    be set to `null.`
  - use either the `lifetime_budget_imps` or `daily_budget_imps` field
    in this array to set your line item's budget.

- If the line item's parent insertion order's `budget_type` field is set
  to **`revenue`** :
  - the `lifetime_budget_imps` and `daily_budget_imps` fields in this
    array must be set to `null.`
  - use either the `lifetime_budget` or `daily_budget` field in this
    array to set your line item's budget.



Each object in the `budget_intervals` array contains the following
fields.

<table id="line-item-service-ali__table_pyy_hyp_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_pyy_hyp_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_pyy_hyp_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_pyy_hyp_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">The ID of
the budget interval.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">The start
date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be hh:00:00).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">The end
date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss should be set to hh:59:59). For optimization to work best,
your budget intervals should have a duration of at least 4 hours. If
this field is set to <code class="ph codeph">null</code> , then the line
item's budget interval will run indefinitely. If you set this field to
'null':
<ul>
<li>there may not be more than one object in the <code
class="ph codeph">budget_intervals</code> array (i.e., maximum of 1
budget interval).</li>
<li>the <code class="ph codeph">lifetime_pacing field</code> must set to
<code class="ph codeph">"false".</code></li>
<li>the <code class="ph codeph">"lifetime_budget"</code> must be set to
<code class="ph codeph">null</code> and the <code
class="ph codeph">"daily_budget"</code> field must be set to a non-null
or non-0 value.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">The
timezone by which budget and spend are counted. For a list of acceptable
timezone values, see <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">parent_interval_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3"><strong>Deprecated.</strong>
The value of this field will be ignored. Instead, use the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> fields of this array to define when
the line item should run.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3"><p>The
lifetime budget in revenue for the budget interval. The revenue currency
is defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object.</p>
class="note note_note">
<b>Note:</b>
<p>If you also set the <code class="ph codeph">lifetime_budget</code>
_imps field in this array, whichever budget is exhausted first will
cause spending to stop. Best practice is to only set one of these
fields.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3"><p>The
lifetime budget in impressions for the budget interval. Note that, if
you add line items to this insertion order, any spend already associated
with those line items before they are added to the insertion order is
NOT counted against the lifetime budget of the insertion order. Only
spend that occurs while the line item is a child of the insertion order
is counted.</p>
class="note note_note">
<b>Note:</b>
<p>If you also set the <code class="ph codeph">lifetime_budget</code>
field in this array, whichever budget is exhausted first will cause
spending to stop. Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">If <code
class="ph codeph">true</code>, the line item will attempt to pace the
lifetime budget evenly over the budget interval. If <code
class="ph codeph">true</code>, you must set <code
class="ph codeph">lifetime_budget</code> or <code
class="ph codeph">lifetime_budget_imps.</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><p><code
class="ph codeph">subflights</code></p>
class="note note_note">
<b>Note:</b>
<p>Subflights are an <strong>Alpha</strong> feature. If you'd like to
gain access to them for your augmented line item, please contact your
Xandr account representative.</p>
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3"><p>An
optional array that contains subflights you can create to further
customize your budget interval's budgeting and scheduling behavior.
Subflights allow you to set custom budget and pacing settings for
specific days within a line item flight.</p>
<p>For more information on the <code class="ph codeph">subflights</code>
array of key-value objects, see the <strong>Subflights</strong> table
below.</p>

class="note note_note">
<b>Note:</b> Line items can use no more than
one subflight for any given date.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3"><p>The
daily budget in revenue for the budget interval. The revenue currency is
defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object. Note that, if you
add line items to this insertion order, any impressions associated to
those line items when they are added to the insertion order are NOT
counted under the lifetime budget of the insertion order. Only
impressions that occur while the line item is a child of the insertion
order are counted.</p>
class="note note_note">
<b>Note:</b>
<p>If you also set the <code class="ph codeph">daily_budget_imps</code>
field, whichever budget is exhausted first will cause spending to stop.
Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3"><p>The
daily budget in impressions.</p>
class="note note_note">
<b>Note:</b>
<p>If the parent insertion order's <code
class="ph codeph">budget_type</code> field has been set to <code
class="ph codeph">"impression"</code> <em>and</em> the line items <code
class="ph codeph">revenue_type</code> field has been set to Viewable
CPM, only the viewable impressions count against both line item and
insertion order budgets.</p>

class="note note_note">
<b>Note:</b>
<p>If you also set the <code class="ph codeph">daily_budget</code>
field, whichever budget is exhausted first will cause spending to stop.
Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">If <code
class="ph codeph">true,</code> then spending will be paced over the
course of the day. Only applicable if there is a <code
class="ph codeph">daily_budget</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_pyy_hyp_wwb__entry__3">Specifies
the creatives associated with this budget interval. In order to serve,
creatives must also be specified in the line item <code
class="ph codeph">creatives</code> field and <code
class="ph codeph">all_budget_intervals</code> must be false.</td>
</tr>
</tbody>
</table>

**Delete a budget interval**





<b>Note:</b> You may remove budget intervals
from an augmented line item. However, if you want to remove a budget
interval from the parent insertion order, you must first remove any
budget intervals (that fall within the parent insertion order's budget
interval) from all augmented line items associated with the insertion
order. Only then can you remove the budget interval from the insertion
order. For more details, see <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a>.



``` pre
$ cat delete-budget-interval
{
  "line-item": {
    "budget_intervals": [
      {
        "id": 79970,
        "start_date": null,
        "end_date": null
      }
    ]
  }
}
```

**Subflights**



Subflights allow you to set custom budget and pacing settings for
specific days within a line item flight. They're an **Alpha** feature,
so please contact your Xandr account representative if you'd like to
gain access to them for your augmented line item.



<b>Note:</b>

Line items can use no more than one subflight for any given date.





**Create a subflight**

``` pre
$ cat create-subflight

{
  "line-item": {
    ...,
    "budget_intervals": [
      {
        "id": 342856,
        "lifetime_pacing_percent": 150,
        "lifetime_budget": 10000,
        "lifetime_budget_imps": null,
        "start_date": "2022-04-01 00:00:00",
        "end_date": "2022-04-30 11:59:59",
        ...,
        "subflights": [
          {
            "id": 1, // ID generated on LI creation or update
            "name": "spend 200 every weekend for entire flight",
            "is_recurring": true,
            "use_flight_date_range": true,
            "recurring_day_of_week": [0,1,6],
            "start_date": null,
            "end_date": null,
            "daily_budget": 80,
            "daily_budget_imps": null,
            "subflight_pacing_percent": null,
          }
        ]
      }
    ],
    ...
  }
}
```





**Delete a subflight**

``` pre
$ cat delete-subflight

{
  "line-item": {
    ...,
    "budget_intervals": [
      {
        "id": 342856,
        "subflights": [
          {
            "id": 1,
            "use_flight_date_range": false,
            "start_date": null,
            "end_date": null,
          }
        ]
      }
    ],
    ...
  }
}
```



<table id="line-item-service-ali__table_gml_mbq_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_gml_mbq_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_gml_mbq_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="line-item-service-ali__table_gml_mbq_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>The
subflight ID generated upon creating a new subflight.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>The name
given to the subflight.</p>
<p><strong>Required</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">is_recurring</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>Determines
if the subflight is to be recurring. Having a recurring subflight means
that you can select certain days of the week for which your subflight
will take effect, whereas a standard subflight operates constantly under
its start and end dates.</p>
<p><strong>Possible Values:</strong></p>
<ul>
<li><code class="ph codeph">true</code> - recurring subflight.</li>
<li><code class="ph codeph">false</code> - <strong>(default
value)</strong> standard subflight.</li>
</ul>
<p><strong>Required</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">recurring_day_of_week</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">array of
integers</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>Determines
which days of the week your recurring subflight will take effect. Select
either a single day or up to six consecutive days.</p>
<p><strong>Possible Values:</strong></p>
<ul>
<li><code class="ph codeph">0 </code>(Sunday)</li>
<li><code class="ph codeph">1 </code>(Monday)</li>
<li><code class="ph codeph">2 </code>(Tuesday)</li>
<li><code class="ph codeph">3 </code>(Wednesday)</li>
<li><code class="ph codeph">4 </code>(Thursday)</li>
<li><code class="ph codeph">5 </code>(Friday)</li>
<li><code class="ph codeph">6 </code>(Saturday)</li>
</ul>
<p><strong>Saturday-Monday Example:</strong> <code
class="ph codeph">"recurring_day_of_week": [0, 1, 6].</code></p>
<p><strong>Required</strong> <strong>if</strong> <code
class="ph codeph">is_recurrin</code>g <strong>equals</strong> <code
class="ph codeph">true.</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">use_flight_date_range</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>Determines
whether the subflight uses its parent flight’s date range or its own
date range, as determined by the subflight’s <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code> selections.</p>
<p><strong>Possible Values:</strong></p>
<ul>
<li>t<code class="ph codeph">rue</code> - The subflight will use its
parent flight’s date range.</li>
<li><code class="ph codeph">false</code> - The subflight will use its
own start and end date.</li>
</ul>
class="note note_note">
<b>Note:</b>
<p>If you set <code class="ph codeph">is_recurring</code> to <code
class="ph codeph">false</code>, then you must also set <code
class="ph codeph">use_flight_date_range</code> to <code
class="ph codeph">false</code>.</p>

<p><strong>Required</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">date
(yyyy-mm-dd)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>The
subflight’s start date (relative to your line item’s designated time
zone). Your start date selection must match or start later than the
start date selected for the subflight’s budget interval.</p>
class="note note_note">
<b>Note:</b>
<p>If <code class="ph codeph">use_flight_date_range</code> is set to
<code class="ph codeph">true</code>, this field's value must be set to
<code class="ph codeph">null</code> .</p>

<p><strong>Required</strong> <strong>if</strong> <code
class="ph codeph">is_recurrin</code>g <strong>equals</strong> <code
class="ph codeph">false.</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">date
(yyyy-mm-dd)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>The
subflight’s end date (relative to your line item’s designated time
zone). Your end date selection must match or end earlier than the end
date selected for the subflight’s budget interval.</p>
class="note note_note">
<b>Note:</b>
<p>If <code class="ph codeph">use_flight_date_range</code> is set to
<code class="ph codeph">true</code>, this field's value must be set to
<code class="ph codeph">null</code> .</p>

<p><strong>Required</strong> <strong>if</strong> <code
class="ph codeph">is_recurrin</code>g <strong>equals</strong> <code
class="ph codeph">false.</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>Determines
how much money you want your subflight to be able to spend daily. To
make a selection for this field, you must set the parent flight’s <code
class="ph codeph">lifetime_pacing_percent</code> field selection to
<code class="ph codeph">null</code>.</p>
class="note note_note">
<b>Note:</b>
<p>If your line item is underspending while utilizing subflights with
daily budgets, underspend catch-up settings will take effect on the next
non-subflight date.</p>

<p><strong>Required if</strong> <code
class="ph codeph">daily_budget</code> <strong>isn't provided for the
parent flight.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>The
daily number of impressions that the subflight is allowed to win.</p>
class="note note_note">
<b>Note:</b>
<p>If your line item is underspending while utilizing subflights with
daily budgets, underspend catch-up settings will take effect on the next
non-subflight date.</p>

<p><strong>Required if:</strong></p>
<ul>
<li><strong>the parent flight's</strong> <code
class="ph codeph">daily_budget</code> <strong>equals</strong> <code
class="ph codeph">true</code> <strong>and</strong> <strong>the
subflight's</strong> <code class="ph codeph">daily_budget</code>
<strong>equals</strong> <code class="ph codeph">null</code>.</li>
<li><strong>the parent flight's</strong> <code
class="ph codeph">lifetime_pacing_percent</code> <strong>equals</strong>
<code class="ph codeph">null</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__1"><code
class="ph codeph">subflight_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_gml_mbq_wwb__entry__3"><p>Determines
how evenly the subflight's budget is distributed between its start and
end date.</p>
<p>If set to 100, the subflight's budget pacing is unaltered and
distributed over every applicable day for the subflight, with roughly
similar budget amounts being spent daily. If set higher than 100, the
subflight spends more per day at the beginning of its date range and
less at the end. The reverse occurs if the pacing is lower than 100.</p>
<p><strong>Possible Values:</strong> 50-150</p>
<p><strong>Required</strong> <strong>if</strong> <code
class="ph codeph">daily_budget</code> <strong>isn't
provided.</strong></p></td>
</tr>
</tbody>
</table>

**Goal Pixels**



The `goal_pixels` array of objects is used when working with `goal_type`
"cpa" and contains information about performance goal targets and
thresholds. Each object in the `goal_pixels` array of objects includes
the following fields:

<table id="line-item-service-ali__table_lvs_mcq_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_lvs_mcq_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="line-item-service-ali__table_lvs_mcq_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="line-item-service-ali__table_lvs_mcq_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3">The ID of
the conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3">The state
of the pixel. Possible values: "active" or "inactive".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">post_click_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3"><strong>Deprecated</strong>.
Use post_click_goal_target and post_click_goal_threshold instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">post_view_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3"><strong>Deprecated</strong>.
Use post_view_goal_target and post_view_goal_threshold instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">trigger_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3"><p>The type
of event required for an attributed conversion. Possible values: "view",
"click", or "hybrid".</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">post_click_goal_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3">The
advertiser goal value for post-click conversions for the pixel. If you
want to set a CPA goal and optimize to only post-click conversions, set
this field to your CPA goal value.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">post_view_goal_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3">The
advertiser goal value for post-view conversions for the pixel
(comparable to goal_value for goal_type "cpc"). If you want to set a CPA
goal and optimize only to post-view conversions, ensure this field is
set to <code class="ph codeph"> null</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">post_click_goal_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3">The
advertiser goal threshold for post-click conversions for the pixel. This
determines the bid/no bid cutoff on optimized line items. If you want to
set a CPA goal and optimize to both post-click and post-view
conversions, this field must contain the same value as <code
class="ph codeph">post_view_goal_threshold</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__1"><code
class="ph codeph">post_view_goal_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_lvs_mcq_wwb__entry__3">The
advertiser goal threshold for post-view conversions for the pixel. This
determines the bid/no bid cutoff on optimized line items. If you want to
set a CPA goal and optimize to both post-click and post-view
conversions, this field must contain the same value as <code
class="ph codeph">post_click_goal_threshold</code>.</td>
</tr>
</tbody>
</table>

**Stats**



<b>Note:</b> The `stats` object has been
deprecated (as of October 17, 2016). Use the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.





**First Run/ Last Run**

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for line
items based on when they first and last served, as follows:

**Retrieve only line items that have never served**

Pass `never_run=true` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&never_run=true'
```



<b>Note:</b>

You can use `never_run=true` in combination with other filters, but
please note that it will always be an OR relationship. For example, if
you pass both `never_run=true` and `min_first_run=2012-01-01 00:00:00`
in the query string, you will be looking for line items that have never
served OR line items that first served on or after 2012-01-01.



**Retrieve only line items that first served on or after a specific
date**

Pass `min_first_run=YYYY-MM-DD HH:MM:SS` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00'
```

**Retrieve only line items that first served on or before a specific
date**

Pass `max_first_run=YYYY-MM-DD HH:MM:SS` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only line items that first served within a specific date
range**

Pass
`min_first_run=YYYY-MM-DD HH:MM:SS&max_first_run=YYYY-MM-DD HH:MM:SS` in
the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only line items that last served on or after a specific
date**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00'
```

**Retrieve only line items that last served on or before a specific
date**

Pass `max_last_run=YYYY-MM-DD HH:MM:SS` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&max_last_run=2012-08-01 00:00:00'
```

**Retrieve only line items that last served within a specific date
range**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS&max_last_run=YYYY-MM-DD HH:MM:SS`
in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00&max_last_run=2012-08-01 00:00:00'
```

Fields of the type date can be filtered by `nmin` and `nmax` as well.
The `nmin` filter lets you find dates that are either null or after the
specified date, and the `nmax` filter lets you find dates that are
either null or before the specified date.

**Alerts**

This field notifies you of conditions that are preventing the line item
from serving. There are two types of alerts: pauses and warnings. Pauses
are considered intentional and user-driven, whereas warnings are
considered unintentional.

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





<b>Note:</b> For each of the use cases below,
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
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?show_alerts=true&pauses=false'

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
IDs, see the table below.



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
pause IDs, see the table below.



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



**Pauses**

<table id="line-item-service-ali__table_nyy_tdq_wwb" class="table">
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="line-item-service-ali__table_nyy_tdq_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">ID</th>
<th id="line-item-service-ali__table_nyy_tdq_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nyy_tdq_wwb__entry__1">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nyy_tdq_wwb__entry__2">State is
set to inactive.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nyy_tdq_wwb__entry__1">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nyy_tdq_wwb__entry__2">Flight
start is in the future.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nyy_tdq_wwb__entry__1">4</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="line-item-service-ali__table_nyy_tdq_wwb__entry__2">Flight end
is in the past.</td>
</tr>
</tbody>
</table>



>

## Examples

**Update a line item to use a CPC performance goal**



In this example, we'll update a line item to use a CPC performance goal.
We're setting a cost-per-click goal threshold of $3.

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
        "goal_target":3,
        "goal_threshold":3
    }
    "lifetime_budget": null,
    "end_date": null,
    "enable_pacing": null,
    "allow_safety_pacing": null,
    "publishers_allowed": "all"
    }
}
```



``` pre
$ curl -b cookies -c cookies -X PUT -d @line-item "https://api.appnexus.com/line-item?id=152083&advertiser_id=51"
```

**Update a line item to use both a CPC and CPA performance goal**



In this example, we'll update a line item to use both a CPC and CPA
performance goal. We're setting the CPC goal of $5 and the CPA goal to
$10.

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
        "id": "123456"
        }
    ],
    "goal_pixels":[
        {
        "id":"123456",
        "post_click_goal_threshold":10,
        "post_click_goal_target":10
        }
    ],
    “valuation”: {
        “goal_target”: 5,
        “goal_threshold”: 5
        }
    }
}
```

``` pre
$ curl -b cookies -X PUT -d @line-item "https://api.appnexus.com/line-item?id=152083&advertiser_id=51"
```



**View a line item**

To view a specific line item, we must pass in the line item and
advertiser IDs via the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/line-item?id=4979347&advertiser_id=1887392'
{
    "response": {
        "count": 1,
        "dbg_info": {
            "output_term": "line-item",
            "version": "1.18.227",
            "warnings": []
        },
        "line-item": {
            "ad_types": [
                "banner"
            ],
            "advertiser": {
                "id": 1887392,
                "name": "ALI Closed Beta Demo Advertiser"
            },
            "advertiser_id": 1887392,
            "allow_safety_pacing": null,
            "auction_event": null,
            "bid_object_type": "creative",
            "broker_fees": null,
            "budget_intervals": [
                {
                    "code": null,
                    "enable_pacing": true,
                    "end_date": "2017-12-02 23:59:59",
                    "id": 2509919,
                    "lifetime_budget": 1,
                    "lifetime_budget_imps": null,
                    "lifetime_pacing": true,
                    "lifetime_pacing_pct": 100,
                    "object_id": 4979347,
                    "object_type": "campaign_group",
                    "parent_interval_id": null,
                    "start_date": "2017-11-30 00:00:00",
                    "timezone": "US/Eastern"
                }
            ],
            "budget_set_per_flight": true,
            "campaigns": null,
            "click_url": null,
            "clicktrackers": null,
            "code": null,
            "comments": null,
            "creative_distribution_type": null,
            "creatives": null,
            "currency": "USD",
            "custom_models": [
                {
                    "active": "1",
                    "id": 477441,
                    "name": "cadence 2017-11-07 18:03:37.738",
                    "type": "cadence"
                }
            ],
            "custom_optimization_note": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "deals": null,
            "delivery_goal": null,
            "discrepancy_pct": 0,
            "enable_pacing": null,
            "enable_v8": false,
            "end_date": null,
            "goal_pixels": [
                {
                    "id": 932952,
                    "name": "Test Pixel",
                    "post_click_goal": null,
                    "post_click_goal_confidence_threshold": null,
                    "post_click_goal_target": 10,
                    "post_click_goal_threshold": 10,
                    "post_click_model_id": null,
                    "post_view_goal": null,
                    "post_view_goal_confidence_threshold": null,
                    "post_view_goal_target": null,
                    "post_view_goal_threshold": null,
                    "post_view_model_id": null,
                    "state": "active",
                    "trigger_type": "hybrid"
                }
            ],
            "goal_type": "cpc",
            "goal_value": null,
            "id": 4979347,
            "imptrackers": null,
            "incrementality": null,
            "insertion_orders": [
                {
                    "advertiser_id": 1887392,
                    "budget_intervals": [
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": null,
                            "id": 2509856,
                            "lifetime_budget": 1,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 676605,
                            "object_type": "insertion_order",
                            "start_date": "2017-11-30 00:00:00",
                            "timezone": "US/Eastern"
                        }
                    ],
                    "code": null,
                    "currency": "USD",
                    "end_date": null,
                    "id": 676605,
                    "last_modified": "2017-12-01 02:44:34",
                    "name": "Swetha_Seamless_IO",
                    "start_date": null,
                    "state": "active",
                    "timezone": "US/Eastern"
                }
            ],
            "inventory_discovery": {
                "fail_criteria_amount": 9.486486,
                "fail_criteria_type": "booked_revenue",
                "use_ranked_discovery": true
            },
            "inventory_discovery_budget": null,
            "inventory_type": "real_time",
            "labels": null,
            "last_modified": "2017-12-02 05:30:29",
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "lifetime_pacing": null,
            "lifetime_pacing_pct": null,
            "lifetime_pacing_span": null,
            "line_item_type": "standard_v2",
            "manage_creative": true,
            "member_id": 1370,
            "name": "Swetha_ALI_Basic_API1",
            "pixels": [
                {
                    "id": 932952,
                    "name": "Test Pixel",
                    "post_click_revenue": null,
                    "post_view_revenue": null,
                    "state": "active",
                    "trigger_type": "hybrid"
                }
            ],
            "prefer_delivery_over_performance": false,
            "priority": "5",
            "profile_id": 96266622,
            "publishers_allowed": "all",
            "remaining_days": null,
            "require_cookie_for_tracking": true,
            "revenue_type": "vcpm",
            "revenue_value": null,
            "roadblock": null,
            "start_date": null,
            "state": "active",
            "timezone": "US/Eastern",
            "total_days": null,
            "valuation": {
                "bid_price_pacing_enabled": false,
                "bid_price_pacing_lever": 0,
                "goal_confidence_threshold": null,
                "goal_target": 5,
                "goal_threshold": 5,
                "max_avg_cpm": 3,
                "max_revenue_value": null,
                "min_avg_cpm": 2,
                "min_margin_pct": null,
                "min_revenue_value": null,
                "no_revenue_log": false
            }
        },
        "num_elements": 100,
        "start_element": 0,
        "status": "OK"
    }
}
```

**View all of an advertiser's line items**



Unlike the examples above, this line item has a `goal_pixels` array of
objects attached. Notice that even though this advertiser has only one
line item, it's returned via the `line-items` JSON array.

``` pre
$ curl -b cookies 'https://api.appnexus.com/line-item?advertiser_id=51'
{
    "response": {
        "count": 3,
        "line-items": [
            { ..."id": 4274691,...},
            { ..."id": 4983291,...},
            { ..."id": 4983258,...}
        ]
    }
}
```





**Create a line item with a CPM revenue type, optimized to a CPA goal
(post-click and post-view conversions)**

``` pre
cat li_cpa.json

{
    "line-item": {
    "name": "LI CPA Test",
    "state": "inactive",
    "daily_budget": null,
    "revenue_type": "cpm",
    "goal_type": "cpa",
    "goal_pixels": [
        {
            "id": 987654321,
            "name": "Confirmation Page",
            "post_click_goal": null,
            "post_click_goal_confidence_threshold": null,
            "post_click_goal_target": 1,
            "post_click_goal_threshold": 1,
            "post_click_model_id": null,
            "post_view_goal": null,
            "post_view_goal_confidence_threshold": null,
            "post_view_goal_target": 1,
            "post_view_goal_threshold": 1,
            "post_view_model_id": null,
            "state": "active",
            "trigger_type": "hybrid"
                }
            ], 
    "valuation": {
        "bid_price_pacing_enabled": false,
        "bid_price_pacing_lever": 0,
        "campaign_group_valuation_strategy": "retargeting",
        "goal_confidence_threshold": null,
        "goal_target": null,
        "goal_threshold": null,
        "max_avg_cpm": null,
        "max_revenue_value": null,
        "min_avg_cpm": null,
        "min_margin_pct": null,
        "min_revenue_value": null,
        "no_revenue_log": false
            },
}

$curl -b cookies -X POST -d @li_cpa.json 'https://api.appnexus.com/line-item?advertiser_id=12345'
{
    "response": {
        "count": 1,
        "dbg_info": {
            "output_term": "line-item",
            "version": "1.18.1023",
            "warnings": []
        },
        "line-item": {
            "ad_types": [
                "banner"
            ],
            "advertiser": {
                "id": 12345,
                "name": "Console Challenge (Please Do Not Modify)"
            },
            "advertiser_id": 12345,
            "allow_safety_pacing": null,
            "archived_on": null,
            "auction_event": {
                "kpi_auction_event_type": "impression",
                "kpi_auction_event_type_code": "impression",
                "kpi_auction_type_id": 1,
                "kpi_value": null,
                "payment_auction_event_type": "impression",
                "payment_auction_event_type_code": "impression",
                "payment_auction_type_id": 1,
                "revenue_auction_event_type": "impression",
                "revenue_auction_event_type_code": "impression",
                "revenue_auction_type_id": 1
            },
            "bid_object_type": "creative",
            "broker_fees": null,
            "budget_intervals": [
                {
                    "code": null,
                    "enable_pacing": true,
                    "end_date": "2019-02-11 23:59:59",
                    "id": 3886503,
                    "lifetime_budget": 0.01,
                    "lifetime_budget_imps": null,
                    "lifetime_pacing": true,
                    "lifetime_pacing_pct": 100,
                    "object_id": 7358523,
                    "object_type": "campaign_group",
                    "parent_interval_id": null,
                    "start_date": "2019-02-10 00:00:00",
                    "timezone": "US/Eastern"
                }
            ],
            "budget_set_per_flight": false,
            "campaigns": null,
            "click_url": null,
            "clicktrackers": null,
            "code": null,
            "comments": null,
            "creative_distribution_type": "ctr-optimized",
            "creatives": null,
            "currency": "USD",
            "custom_models": [
                {
                    "active": "1",
                    "experiment": "control",
                    "id": 222333,
                    "name": "Test 001",
                    "origin": "optimization",
                    "type": "conv_imp"
                },
                {
                    "active": "1",
                    "experiment": "control",
                    "id": 222334,
                    "name": "Test 002",
                    "origin": "optimization",
                    "type": "cadence"
                },
                {
                    "active": "1",
                    "experiment": "control",
                    "id": 222335,
                    "name": "Budget Splitter - 7358523 - Mon Feb 11 2019 04:08:49 GMT+0000",
                    "origin": "splitters",
                    "type": "budget_splitter"
                }
            ],
            "custom_optimization_note": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "deals": null,
            "delivery_goal": null,
            "discrepancy_pct": 0,
            "enable_pacing": null,
            "enable_v8": false,
            "end_date": null,
            "flat_fee": null,
            "flat_fee_type": null,
            "goal_pixels": [
                {
                    "id": 987654321,
                    "name": "Confirmation Page",
                    "post_click_goal": null,
                    "post_click_goal_confidence_threshold": null,
                    "post_click_goal_target": 1,
                    "post_click_goal_threshold": 1,
                    "post_click_model_id": null,
                    "post_view_goal": null,
                    "post_view_goal_confidence_threshold": null,
                    "post_view_goal_target": 1,
                    "post_view_goal_threshold": 1,
                    "post_view_model_id": null,
                    "state": "active",
                    "trigger_type": "hybrid"
                }
            ],
            "goal_type": "cpa",
            "goal_value": null,
            "id": 87654321,
            "imptrackers": null,
            "incrementality": null,
            "insertion_orders": [
                {
                    "advertiser_id": 12345,
                    "budget_intervals": [
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2018-05-31 23:59:59",
                            "id": 2957582,
                            "lifetime_budget": 100,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2018-05-23 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2018-09-24 23:59:59",
                            "id": 3331427,
                            "lifetime_budget": 100,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2018-09-23 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2018-11-30 23:59:59",
                            "id": 3494586,
                            "lifetime_budget": 600,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2018-10-31 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2018-12-12 23:59:59",
                            "id": 3636004,
                            "lifetime_budget": 300,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2018-12-07 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2019-01-14 23:59:59",
                            "id": 3746556,
                            "lifetime_budget": 400,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2019-01-07 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2019-01-22 23:59:59",
                            "id": 3773032,
                            "lifetime_budget": 0.01,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2019-01-15 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2019-02-06 23:59:59",
                            "id": 3857762,
                            "lifetime_budget": 0.01,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2019-02-04 00:00:00",
                            "timezone": "US/Eastern"
                        },
                        {
                            "code": null,
                            "daily_budget": null,
                            "daily_budget_imps": null,
                            "enable_pacing": false,
                            "end_date": "2019-02-28 23:59:59",
                            "id": 3886493,
                            "lifetime_budget": 600,
                            "lifetime_budget_imps": null,
                            "lifetime_pacing": false,
                            "object_id": 811332,
                            "object_type": "insertion_order",
                            "start_date": "2019-02-10 00:00:00",
                            "timezone": "US/Eastern"
                        }
                    ],
                    "code": null,
                    "currency": "USD",
                    "end_date": null,
                    "id": 811332,
                    "last_modified": "2019-02-25 15:36:24",
                    "name": "Natasha Test IO",
                    "start_date": null,
                    "state": "active",
                    "timezone": "US/Eastern"
                }
            ],
            "inventory_discovery": null,
            "inventory_type": "both",
            "is_archived": false,
            "labels": null,
            "last_modified": "2019-03-01 21:12:45",
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "lifetime_pacing": null,
            "lifetime_pacing_pct": null,
            "lifetime_pacing_span": null,
            "line_item_type": "standard_v2",
            "manage_creative": true,
            "member_id": 1370,
            "name": "Copy test2_01_17",
            "pixels": [
                {
                    "id": 1017110,
                    "name": "Confirmation Page",
                    "post_click_revenue": null,
                    "post_view_revenue": null,
                    "state": "active",
                    "trigger_type": "hybrid"
                }
            ],
            "prefer_delivery_over_performance": false,
            "priority": "5",
            "profile_id": 109625231,
            "publishers_allowed": "all",
            "remaining_days": null,
            "require_cookie_for_tracking": true,
            "revenue_type": "cpm",
            "revenue_value": 1,
            "roadblock": null,
            "start_date": null,
            "state": "inactive",
            "supply_strategies": {
                "deals": false,
                "managed": false,
                "rtb": true
            },
            "timezone": "US/Eastern",
            "total_days": null,
            "user_info": {
                "creator_id": 17707,
                "owner_id": 17707
            },
            "valuation": {
                "bid_price_pacing_enabled": false,
                "bid_price_pacing_lever": 0,
                "campaign_group_valuation_strategy": "retargeting",
                "goal_confidence_threshold": null,
                "goal_target": null,
                "goal_threshold": null,
                "max_avg_cpm": null,
                "max_revenue_value": null,
                "min_avg_cpm": null,
                "min_margin_pct": null,
                "min_revenue_value": null,
                "no_revenue_log": false
            },
            "viewability_vendor": "appnexus"
        },
        "num_elements": 100,
        "start_element": 0,
        "status": "OK"
    }
}
```



**Create a line item with a revenue type of Dynamic CPM and optimized to
a CPC goal**

``` pre
In this example, we set the CPC goal to $5 and minimum average CPM to $2 and maximum average CPM to $3.
{code}$ cat line_item_dcp_cpc
{
  "line-item": {
    "ad_types": [
      "banner"
     ],
    "advertiser": {
      "id": 1887392,
      "name": "ALI Closed Beta Demo Advertiser"
     },
    "currency": "USD",
    "insertion_orders": [{
      "advertiser_id": 1887392,
      "budget_intervals": [{
            "code": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "enable_pacing": false,
            "end_date": null,
            "id": 2509856,
            "lifetime_budget": 1,
            "lifetime_budget_imps": null,
            "lifetime_pacing": false,
            "object_id": 676605,
            "object_type": "insertion_order",
            "start_date": "2017-11-30 00:00:00",
            "timezone": "US/Eastern"
        }],
        "code": null,
        "currency": "USD",
        "end_date": null,
        "id": 676605,
        "last_modified": "2017-12-01 02:44:34",
        "name": "Swetha_Seamless_IO",
        "start_date": null,
        "state": "active",
        "timezone": "US/Eastern"
    }],
    "advertiser_id": 1887392,
    "budget_intervals": [{
        "code": null,
        "enable_pacing": true,
        "end_date": "2017-12-02 23:59:59",
        "lifetime_budget": 1,
        "lifetime_budget_imps": null,
        "lifetime_pacing": true,
        "lifetime_pacing_pct": 100,
        "parent_interval_id": null,
        "start_date": "2017-11-30 00:00:00",
        "timezone": "US/Eastern"
    }],
        "goal_pixels": null,
        "goal_type": "cpc",
        "goal_value": null,
        "inventory_type": "real_time",
        "line_item_type": "standard_v2",
        "manage_creative": true,
        "name": "Swetha_ALI_Basic_API1",
        "profile_id": 96266482,
        "revenue_type": "vcpm",
        "revenue_value": null,
        "state": "active",
        "valuation": {
            "goal_target": 5,
            "goal_threshold": 5,
            "min_avg_cpm": 2,
            "max_avg_cpm": 3
        }
    }
}
{code}

{code}
curl -b cookies -X POST -d  @line_item_dcp_cpc.json  "https://api.appnexus.com/line-item?&advertiser_id=1887392"
{code}
```

**Create a line item with a revenue type of Viewable CPM and optimized
to both a CPC and CPA goal**

``` pre
In this example, we create a line item with a revenue type of Viewable CPM, a CPC goal of $5 and and CPA goal of $10.
{code}$ cat line_item_dcp_vcpm_cpaopt
{
    "line-item": {
        "ad_types": [
            "banner"
        ],
        "advertiser": {
            "id": 1887392,
            "name": "ALI Closed Beta Demo Advertiser"
        },
        "currency": "USD",
        "insertion_orders": [{
            "advertiser_id": 1887392,
            "budget_intervals": [{
                "code": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "enable_pacing": false,
                "end_date": null,
                "id": 2509856,
                "lifetime_budget": 1,
                "lifetime_budget_imps": null,
                "lifetime_pacing": false,
                "object_id": 676605,
                "object_type": "insertion_order",
                "start_date": "2017-11-30 00:00:00",
                "timezone": "US/Eastern"
            }],
            "code": null,
            "currency": "USD",
            "end_date": null,
            "id": 676605,
            "last_modified": "2017-12-01 02:44:34",
            "name": "Swetha_Seamless_IO",
            "start_date": null,
            "state": "active",
            "timezone": "US/Eastern"
        }],

        "advertiser_id": 1887392,
        "budget_intervals": [{
            "code": null,
            "enable_pacing": true,
            "end_date": "2017-12-02 23:59:59",
            "lifetime_budget": 1,
            "lifetime_budget_imps": null,
            "lifetime_pacing": true,
            "lifetime_pacing_pct": 100,
            "parent_interval_id": null,
            "start_date": "2017-11-30 00:00:00",
            "timezone": "US/Eastern"
        }],
        "goal_type": "cpa",
        "goal_value": null,
        "inventory_type": "real_time",
        "line_item_type": "standard_v2",
        "manage_creative": true,
        "name": "Swetha_ALI_VCPM_CPA",
        "profile_id": 96293804,
        "revenue_type": "cpm",
        "revenue_value": 3,
        "state": "active",
        "goal_pixels": [{
            "id": 932952,
            "post_click_goal_target": 10,
            "post_click_goal_threshold": 10
        }],
        "pixels": [{
            "id": 932952
        }],

        "valuation": {
            "goal_target": 5,
            "goal_threshold": 5
        },
        "auction_event": {
            "revenue_auction_event_type": "view",
            "revenue_auction_event_type_code": "view_display_50pv1s_an",
            "revenue_auction_type_id": 2}
    }
}
{code}

{code}
curl -b cookies -X POST -d @line_item_dcp_vcpm_cpaopt.json “https://api.appnexus.com/line-item?&advertiser_id=1887392”
{code}
```

**Create a line item with a CPM revenue type, optimized to a VCR goal**



In this example, we set the VCR goal to 50% and the CPM revenue value to
$3. <b>Note:</b> Managed supply strategy must be set to false to apply a VCR
goal to the line item. Note that VCR optimization is not supported for
line items targeting managed inventory.

``` pre
$ cat line_item_vcr 
{
 "line-item": {
 
     "ad_types": [
         "video"
     ],
     "advertiser": {
         "id": 4127136,
         "name": "VCR Test Advertiser"
     },
     "advertiser_id": 4127136,
     "inventory_type": "both",
     "name": "Test VCR LI",
     "state": "active",
     "currency": "USD",
     "timezone": "US/Eastern",
     "revenue_type": "cpm",
     "revenue_value": 3,
     "supply_strategies": {
         "managed": false,
         "rtb": true,
         "deals": false,
         "programmatic_guaranteed": false
     },
     "goal_type": "none",
     "budget_intervals": [
         {
             "id": 12024043,
             "object_id": 14286184,
             "object_type": "campaign_group",
             "start_date": "2021-03-19 00:00:00",
             "end_date": "2021-04-30 23:59:59",
             "timezone": "US/Eastern",
             "code": null,
             "parent_interval_id": null,
             "creatives": null,
             "subflights": null,
             "lifetime_budget": 2,
             "lifetime_budget_imps": null,
             "lifetime_pacing": true,
             "enable_pacing": true,
             "lifetime_pacing_pct": 100,
             "daily_budget_imps_opt": null,
             "daily_budget_opt": null
         }
     ],
     "insertion_orders": [
         {
             "id": 3205367,
             "state": "inactive"
             "name": "VCR Test IO",
             "advertiser_id": 4127136,
             "currency": "USD",
             "budget_intervals": [
                 {
                     "id": 6461220,
                     "object_id": 3205367,
                     "object_type": "insertion_order",
                     "start_date": "2019-11-30 00:00:00",
                     "end_date": "2019-12-31 23:59:59",
                     "timezone": "US/Eastern",
                     "code": null,
                     "lifetime_budget": 1,
                     "lifetime_budget_imps": null,
                     "lifetime_pacing": false,
                     "enable_pacing": false,
                     "daily_budget_imps": null,
                     "daily_budget": null,
                     "daily_budget_imps_opt": null,
                     "daily_budget_opt": null
                 }
             ],
         }
     ],
     "auction_event": {
         "payment_auction_event_type_code": "impression",
         "payment_auction_event_type": "impression",
         "payment_auction_type_id": 1,
         "revenue_auction_event_type_code": "impression",
         "revenue_auction_event_type": "impression",
         "revenue_auction_type_id": 1,
         "kpi_auction_event_type_code": "video_completion",
         "kpi_auction_event_type": "video",
         "kpi_auction_type_id": 10,
         "kpi_value_type": "rate_threshold",
         "kpi_value": 0.5
     },
     "valuation": {
         "min_margin_pct": null,
         "min_margin_cpm": null,
         "max_avg_cpm": null,
         "min_avg_cpm": null,
         "min_revenue_value": null,
         "max_revenue_value": null,
         "goal_target": null,
         "goal_threshold": null,
         "no_revenue_log": false,
         "bid_price_pacing_enabled": false,
         "bid_price_pacing_lever": 0,
         "campaign_group_valuation_strategy": null,
         "goal_confidence_threshold": null
     }
  } 
} 
```



**Update a line item to optimize to a Viewable CPM goal**

``` pre
In this example, we are updating a line item to optimize to is a Viewable CPM goal of $5.
{code}$ cat line_item_vcpmopt.json
{
    "line-item": {
        "goal_type": "none",
        "goal_value": null,
        "name": "ALI_VCPMOpt",
        "state": "active",
        "goal_pixels": null,
        "auction_event": {
            "kpi_auction_event_type": "view",
            "kpi_auction_event_type_code": "view_display_50pv1s_an",
            "kpi_auction_type_id": 2,
            "kpi_value": 5
        }
    }
}
{code}

{code}
curl -b cookies -X PUT -d @line_item_vcpmopt.json "https://api.appnexus.com/line-item?id=152083&advertiser_id=1887392"
{code}
```



**Update a line item to use a revenue type of Viewable CPM**

``` pre
In this example, we are updating a line item to use a Revenue Type of VCPM and setting the value to $3.
{code}$ cat lineitem_vcpm.json
{
    "line-item": {
        "goal_type": "none",
        "goal_value": null,
        "inventory_type": "real_time",
        "line_item_type": "standard_v2",
        "revenue_type": "cpm",
        "revenue_value": 3,
        "state": "active",
        "auction_event": {               
            "revenue_auction_event_type": "view",
            "revenue_auction_event_type_code": "view_display_50pv1s_an",
            "revenue_auction_type_id": 2}
    }
}
{code}

{code}
curl -b cookies -X PUT -d @lineitem_vcpm.json "https://api.appnexus.com/line-item?id=152083&advertiser_id=1887392"
{code}
```



**Update a line item to use a revenue type of CPC**

``` pre
In this example, we are updating a line item to use a Revenue Type of CPC and setting the revenue value to $3.
{code}$ cat line_item_cpc.json
{
    "line-item": {
        "inventory_type": "real_time",
        "line_item_type": "standard_v2",
        "revenue_type": "cpm",
        "revenue_value": 3,
        "state": "active",
        "auction_event": {
        "revenue_auction_event_type": "click",
        "revenue_auction_event_type_code": "click",
        "revenue_auction_type_id": 3
        }
    }
}
{code}
{code}
curl -b cookies -X PUT -d @line_item_cpc.json "https://api.appnexus.com/line-item?id=152083&advertiser_id=1887392"
{code}
```

**Update a line item to use a revenue type of Cost Plus Margin (paying a
flat CPM) and disable optimization**

``` pre
In this example, we are updating a line item to use a Revenue Type of Cost Plus Margin with a margin of 20% and with optimization disabled. The CPM is a flat CPM of 11.
{code}$ cat line_item_costplus_base.json
{
    "line-item": {
        "goal_type": "none",
        "goal_value": null,
        "inventory_type": "real_time",
        "line_item_type": "standard_v2",
        "revenue_type": "cost_plus_margin",
        "revenue_value": 0.20,
        "state": "active",
        "goal_pixels": null,
        "valuation":{"max_avg_cpm": 11}
    }
}
{code}

{code}
curl -b cookies -X PUT -d @line_item_costplus_base.json "https://api.appnexus.com/line-item?id=152083&advertiser_id=1887392"
{code}
```

**Update a line item to disable optimization**

``` pre
In this example, we are updating a line item to disable optimiztion.
{code}$ cat line_item_no_opt.json
{
    "line-item": {
        "auction_event": {
        "kpi_auction_event_type": "impression",
        "kpi_auction_event_type_code": "impression",
        "kpi_auction_type_id": 1,
        "kpi_value": null,
        "payment_auction_event_type": "impression",
        "payment_auction_event_type_code": "impression",
        "payment_auction_type_id": 1,
        "revenue_auction_event_type": "impression",
        "revenue_auction_event_type_code": "impression",
        "revenue_auction_type_id": 1
        },
        "goal_pixels": null,
        "goal_type": "none",
        "goal_value": null
    }
}


{code}

{code}
$ curl -b cookies -X PUT -d @line_item_no_opt.json "https://api.appnexus.com/line-item?&id=152083&advertiser_id=1887392"
{code}
```

**Create a Programmatic Guaranteed buying line item**

Scenario: You have negotiated a Programmatic Guaranteed deal (PG deal)
with a seller and would like to target this deal with a Programmatic
Guaranteed buying line item (PG buying line item).

1\) Create a PG deal profile and note the ID for this profile (see
**Target a Programmatic Guaranteed deal** example in <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> ).



2\) Create a PG buying line item JSON (you'll need an existing insertion
order ID and profile ID).

``` pre
$ cat pg_buying_line_item
{
  "line-item": {
    "insertion_orders": [
      {
        "id": 1234
      }
    ],
    "name": "My PG Buying Line Item",
    "state": "active",
    "ad_types": [
      "banner"
    ],
    "profile_id": 123456,
    "currency": "USD",
    "supply_strategies": {
      "rtb": false,
      "managed": false,
      "deals": false,
      "programmatic_guaranteed": true
    },
    "revenue_value": 0.0,
    "revenue_type": "cost_plus_margin",
    "creatives": [],
    "require_cookie_for_tracking": false,
    "line_item_type": "standard_v2",
    "manage_creative": true
  }
}
```



3\) Make a POST request to the **https://api.appnexus.com/line-item**
endpoint using this PG buying line item JSON and the appropriate
`advertiser_id`.



``` pre
$ curl -b cookies -X POST -d @pg_buying_line_item 'https://api.appnexus.com/line-item?advertiser_id=123'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 8757356,
        "start_element": 0,
        "num_elements": 100,
        "line-item": {
            "id": 8757356,
            "code": null,
            "name": "My PG Buying Line Item",
            "advertiser_id": 123,
            "state": "active",
            "start_date": null,
            "end_date": null,
            "timezone": "CET",
            "discrepancy_pct": 0,
            "publishers_allowed": "all",
            "revenue_value": 0,
            "revenue_type": "cost_plus_margin",
            "goal_type": "none",
            "goal_value": null,
            "last_modified": "2019-08-07 19:49:45",
            "click_url": null,
            "currency": "USD",
            "require_cookie_for_tracking": false,
            "profile_id": 123456,
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
            "priority": "5",
            "enable_v8": false,
            "viewability_vendor": null,
            "is_archived": false,
            "archived_on": null,
            "delivery_model_type": "standard",
            "advertiser": {
                "id": 123,
                "name": "My Advertiser"
            },
            "flat_fee": null,
            "supply_strategies": {
                "managed": false,
                "rtb": false,
                "deals": false,
                "programmatic_guaranteed": true
            },
            "deals": null,
            "delivery_goal": null,
            "labels": null,
            "broker_fees": null,
            "pixels": null,
            "insertion_orders": [
                {
                    "id": 1234,
                    "state": "active",
                    "code": null,
                    "name": "Test IO",
                    "advertiser_id": 123,
                    "start_date": null,
                    "end_date": null,
                    "timezone": "CET",
                    "last_modified": "2018-03-06 21:16:47",
                    "currency": "USD",
                    "budget_intervals": [
                        {
                            "id": 2436841,
                            "object_id": 1234,
                            "object_type": "insertion_order",
                            "start_date": "2017-11-08 00:00:00",
                            "end_date": "2017-11-13 23:59:59",
                            "timezone": "CET",
                            "code": null,
                            "lifetime_budget": 10,
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
            "valuation": null,
            "creatives": null,
            "budget_intervals": null,
            "custom_models": null,
            "inventory_discovery": null,
            "incrementality": null,
            "auction_event": null,
            "custom_optimization_note": null,
            "roadblock": null,
            "ad_types": null,
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
            "inventory_type": "both"
        },
        "dbg_info": {
            "warnings": [],
            "version": "1.18.1247",
            "output_term": "line-item"
        }
    }
}
```





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



**Update a line item to optimize for CPCV**

``` pre
In this example, we are updating a line item to optimize to CPCV 0.08$
{code}$ cat line_item_CPCV.json
{
    "line-item": {
        "goal_type": "none",
        "goal_value": null,
        "name": "ALI_CPCV",
        "state": "active",
        "goal_pixels": null,
        "auction_event": {
                "payment_auction_event_type_code": "impression",
                "payment_auction_event_type": "impression",
                "payment_auction_type_id": 1,
                "revenue_auction_event_type_code": "impression",
                "revenue_auction_event_type": "impression",
                "revenue_auction_type_id": 1,
                "kpi_auction_event_type_code": "video_completion",
                "kpi_auction_event_type": "video",
                "kpi_auction_type_id": 10,
                "kpi_value_type": "goal_value",
                "kpi_value": 0.08
            }
    }
}
{code}
{code}
curl -b cookies -X PUT -d @line_item_CPCV.json "https://api.appnexus.com/line-item?id=152083&advertiser_id=1887392"
{code}
```

**A line item that is not optimized for CPCV**

``` pre
In this example, we have a line item that is not optimized for CPCV
{code}$ cat line_item_CPCV.json
{
    "line-item": {
        "goal_type": "none",
        "goal_value": null,
        "name": "ALI_CPCV",
        "state": "active",
        "goal_pixels": null,
        "auction_event": { 
                "kpi_auction_event_type": "impression", 
                "kpi_auction_event_type_code": "impression", 
                "kpi_auction_type_id": 1, 
                "kpi_value": null, 
                "kpi_value_type": "none", 
                "payment_auction_event_type": "impression",
                "payment_auction_event_type_code": "impression", 
                "payment_auction_type_id": 1, 
                "revenue_auction_event_type": "impression",
                "revenue_auction_event_type_code": 
                "impression", "revenue_auction_type_id": 1 }
    }
}
{code}

{code}
curl -b cookies -X PUT -d @line_item_CPCV.json "https://api.appnexus.com/line-item?id=152083&advertiser_id=1887392"
{code}
```



>

## Related Topics



- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="conversion-pixel-service.md"
  class="xref" target="_blank">Conversion Pixel Service</a>
- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>








