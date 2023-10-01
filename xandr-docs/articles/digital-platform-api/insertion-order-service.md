---
Title : Insertion Order Service
Description : Insertion orders enable you to better organize, track, and allocate
budget to your line items. Additionally, budget intervals (i.e., sets of
---


# Insertion Order Service



Insertion orders enable you to better organize, track, and allocate
budget to your line items. Additionally, budget intervals (i.e., sets of
flight dates each with their own pacing and budget) can be used on
insertion orders, allowing you to represent available budget in a way
that more accurately reflects your contract with an advertiser.
Xandr suggests using insertion orders and budget
intervals.



Insertion orders can be associated with one or more line items. A line
item can belong to multiple insertion orders as long as the budget
intervals on those insertion orders do not overlap.

<div id="insertion-order-service__note_igj_fdx_5wb"


Note:

- Insertion orders are enabled at the Advertiser level using the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">Advertiser Service</a> (the
  `use_insertion_orders` field in that service must be set to `"true"`).

- Line items are created through the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
  class="xref" target="_blank">Line Item Service - ALI</a> (or <a
  href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
  class="xref" target="_blank">Line Item Service</a> for legacy line
  items)



<div id="insertion-order-service__note_i4p_3dx_5wb"


Note: Seamless insertion orders

There are two types of insertion orders:

- **Seamless** – Seamless insertion order for line items that provide
  additional targeting and budgeting settings. Please note that the
  `budget_type` setting of Seamless insertion orders may restrict
  associated guaranteed delivery augmented line items (GDALI) and
  programmatic guaranteed line items (PGLI) that have conflicting
  settings. We recommend using seamless insertion orders with
  `budget_type` set to `"flexible"` for GDALIs and PGLIs so you can
  associate both impression-based and revenue-based line items to the
  same insertion order.
- **Legacy** (non-seamless) – Legacy insertion order required for legacy
  guaranteed and non-guaranteed line items. Legacy insertion orders do
  not use the `budget_intervals` array and cannot be used with augmented
  line items (ALI), guaranteed delivery augmented line items (GDALI),
  and programmatic guaranteed line items (PGLI).

The main differences in setup for each type of insertion order are as
follows:

- To create a **Seamless** insertion order, you must:

  - use the budget and pacing related fields and the `start_date` and
    `end_date` fields in the `budget_intervals` array to specify the
    dates during which the insertion order should run, what budget is
    available to it during those dates and how spending of the budget
    should be paced.
  - leave the `start_date` and `end_date` fields (and any budget or
    pacing related fields) on the main insertion order level set to
    `null` (default setting).
  - only associate seamless line items with seamless insertion orders.
    For instructions on how to create seamless line items, see <a
    href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
    class="xref" target="_blank">Line Item Service - ALI</a>.

<!-- -->

- To create a **Legacy** (non-seamless) insertion order, you must:
  - use the budget and pacing related fields and the `start_date` and
    `end_date` fields on the main insertion order object to specify the
    dates during which the insertion order should run, what budget is
    available to it during those dates, and how the spending of the
    budget should be paced.
  - ensure the `budget_intervals` field is set to `null`.
  - only associate non-seamless line items with non-seamless insertion
    orders. For instructions on how to create non-seamless line items,
    see <a
    href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
    class="xref" target="_blank">Line Item Service</a> Line Item
    Service.



<div id="insertion-order-service__note_bnb_kdx_5wb"
class="note important note_important">

Important:

Seamless insertion orders are the preferred model. You should use the
seamless insertion order workflow when creating new insertion orders.
You cannot convert a non-seamless insertion order to seamless or link
non-seamless line items to seamless insertion orders.

In the UI, API `budget_intervals` are referred to as "Billing Periods".





<div id="insertion-order-service__note_bdc_mdx_5wb"


Note: Insertion Orders for Guaranteed
Delivery Augmented Line Items (GDALI)

For an insertion order to be associated with a guaranteed delivery
augmented line item (GDALI), the insertion order must:

- Be a Seamless Insertion Order (legacy insertion orders are not
  compatible).
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



<div id="insertion-order-service__section_rcy_5dx_5wb"
>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__section_rcy_5dx_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="insertion-order-service__section_rcy_5dx_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="insertion-order-service__section_rcy_5dx_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><p><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/insertion-order?advertiser_id=ADVERTISER_ID</a></p>
<p>(insertion order JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">Add a
new insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/insertion-order?id=INSERTIONORDER_ID&amp;advertiser_id=ADVERTISER_ID</a>(insertion
order JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">Modify
an existing insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/line-item?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/insertion-order?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">View
all of the insertion orders for one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/insertion-order?id=INSERTIONORDER_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/insertion-order?id=INSERTIONORDER_ID&amp;advertiser_id=ADVERTISER_ID</a>
<div id="insertion-order-service__note_vfk_zdx_5wb"
class="note important note_important">
Important: Deleting an insertion order
does not necessarily mean that associated line items will be deleted as
the relationship between an insertion order and line item can be many to
many. Also, deletion of an insertion order results in deletion of the
associated budget intervals.
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">Delete
an insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/line-item?id=LINEITEM_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/insertion-order?id=INSERTIONORDER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">View a
specific insertion order for one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/insertion-order?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/insertion-order?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">View
multiple insertion orders by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/insertion-order?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/insertion-order?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">Search
for insertion orders with IDs or names containing certain
characters.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__2"><a
href="https://api.appnexus.com/insertion-order/meta" class="xref"
target="_blank">https://api.appnexus.com/insertion-order/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_rcy_5dx_5wb__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>



<div id="insertion-order-service__section_xym_nfx_5wb"
>

## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__section_xym_nfx_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="insertion-order-service__section_xym_nfx_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="insertion-order-service__section_xym_nfx_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">d</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
ID of the insertion order.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT </code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
name of the insertion order. (Maximum of 255 characters.)</p>
<p><strong>Required On:</strong> <code
class="ph codeph">Post </code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
custom code for the insertion order. The code may only contain
alphanumeric characters, periods, underscores or dashes. The code you
enter is not case-sensitive (upper- and lower-case characters are
treated the same). No 2 objects at the same level (e.g., line items) can
use the same code per advertiser. For example, 2 lines items cannot both
use code "XYZ", but a single line item and its child campaign can.</p>
<p>Note that there may also be a custom code per budget interval. See
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html#InsertionOrderService-BudgetIntervals"
class="xref" target="_blank">Budget Intervals</a> array below for more
details.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
state of the insertion order. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</p>
<p><strong>Default:</strong> <code
class="ph codeph">"active" </code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
ID of the advertiser.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST </code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
start date of the non-seamless insertion order. If you are creating a
seamless insertion order, do not set this field.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(immediately)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
end date of the non-seamless insertion order. If you are creating a
seamless insertion order, do not set this field.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null </code>(indefinitely)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">remaining_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
number of days between today and the <code
class="ph codeph">end_date</code> for the insertion order. Note: This
will be null if the <code class="ph codeph">start_date</code> is in the
future or if either the <code class="ph codeph">start_date</code> or
<code class="ph codeph">end_date </code> is not set.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">total_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
number of days between the <code class="ph codeph">start_date</code> and
<code class="ph codeph">end_date</code> for the insertion order. Note:
This will be null if either the <code
class="ph codeph">start_date</code> or <code
class="ph codeph">end_date</code> is not set.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
time of the last modification to this campaign.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3">The
timezone by which budget and spend are counted. For a list of acceptable
timezone values, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>.
<div id="insertion-order-service__note_lnb_vfx_5wb"
class="note note_note">
Note: Any <code
class="ph codeph">PUT</code> calls to the <code
class="ph codeph">advertiser</code> service which include <code
class="ph codeph">set_child_timezone=true</code> in the query string
will cause any timezone settings on the lower level objects (e.g.,
insertion orders, line items) to be overridden with the latest timezone
value for that advertiser.

<strong>Default:</strong> <code class="ph codeph">"EST5EDT" </code>or
the advertiser's timezone.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
currency assigned to the insertion order. For a full list of available
currencies, use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>. Note: Once the
insertion order has been created, the currency cannot be changed.</p>
<p><strong>Default:</strong> Default currency of the
advertiser.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">comments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3">Comments
about the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">billing_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
billing code for the insertion order. This will only appear on invoices
that are insertion order-specific (e.g., if you receive an invoice per
insertion order). For details on invoices, see "Understanding Your
Invoice" in the Finance documentation (customer login required).</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">line_items</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3">The
line items which are associated with the insertion order. For more
information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html#InsertionOrderService-LineItems"
class="xref" target="_blank">Line Items</a>.
<div id="insertion-order-service__note_oxz_bgx_5wb"
class="note note_note">
Note: Seamless insertion orders may
only be associated with seamless line items. Non-seamless insertions
orders may only be associated with non-seamless line items.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3">The
labels assigned to the insertion order. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html#InsertionOrderService-Labels"
class="xref" target="_blank">Labels</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><div
id="insertion-order-service__note_zvg_pgx_5wb"
class="note warning note_warning">
Warning: For augmented line items
(ALIs):
<p>Broker fees are deprecated for augmented line items. Please create
partner fees and apply them to the line item using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>.</p>
<p>For standard line items:</p>
<ul>
<li>Broker fees created on an insertion order only apply to standard
line items. If you also use augmented line items, you will need to
create and apply partner fees to ALIs using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>.</li>
<li>Broker fees at the line item level override broker fees at the
insertion order level.</li>
</ul>

The commissions that the network must pass to brokers when serving an
ad. These commissions are deducted from the booked revenue (the amount
the network receives from the advertiser) and are typically for
brokering a relationship with the advertiser. They can either be a
percentage of the revenue or a flat CPM. See <a
href="insertion-order-service.html#insertion-order-service__insertion-order-service-broker-fees"
class="xref">Broker Fees</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><div
id="insertion-order-service__note_xld_2hx_5wb" class="note note_note">
Note: This array is only relevant to
and required for seamless insertion orders (if the insertion order is
non-seamless, leave this field set to <code
class="ph codeph">null</code>).

Budget intervals enable multiple date intervals to be attached to an
insertion order, each with corresponding budget values. See <a
href="insertion-order-service.html#insertion-order-service__insertion-order-service-budget-intervals"
class="xref">Budget Intervals</a> below for more details.
<div id="insertion-order-service__note_v21_ghx_5wb"
class="note note_note">
Note:
<p>If you use <code class="ph codeph">budget_intervals</code>, the
following fields should not be used on the top level insertion order
object:</p>
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
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">budget_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
budget type of the insertion order. Values may be <code
class="ph codeph">'revenue'</code>, <code
class="ph codeph">'impression'</code>, or <code
class="ph codeph">'flexible'</code>.</p>
<ul>
<li>If this field is set to <code class="ph codeph">'impression'</code>
then both the <code class="ph codeph">lifetime_budget</code> and <code
class="ph codeph">daily_budget</code> fields must be set to <code
class="ph codeph">null</code>.</li>
<li>If this field is set to <code class="ph codeph">'revenue'</code>
then both the <code class="ph codeph">lifetime_budget_imps</code> and
<code class="ph codeph">daily_budget_imps</code> fields must be set to
<code class="ph codeph">null</code>.</li>
<li>This field must be set when all four budget fields in the <code
class="ph codeph">budget_intervals</code> array (<code
class="ph codeph">lifetime_budget</code>, <code
class="ph codeph">lifetime_budget_imps</code>, <code
class="ph codeph">daily_budget</code> and <code
class="ph codeph">daily_budget_imps</code>) have been set to <code
class="ph codeph">null</code>.</li>
<li>If this field is set to <code class="ph codeph">'flexible'</code>
then the <code class="ph codeph">budget_intervals</code> array can only
have one interval and all four budget fields in the <code
class="ph codeph">budget_intervals</code> array (<code
class="ph codeph">lifetime_budget</code>, <code
class="ph codeph">lifetime_budget_imps</code>, <code
class="ph codeph">daily_budget</code> and <code
class="ph codeph">daily_budget_imps</code>) must be set to <code
class="ph codeph">null</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>If
<code class="ph codeph">true</code>, the non-seamless insertion order
will attempt to spend its overall lifetime budget evenly over the
insertion order flight dates. If <code class="ph codeph">true</code>
:</p>
<ul>
<li>You must establish a <code class="ph codeph">lifetime_budget</code>
or <code class="ph codeph">lifetime_budget_imps.</code></li>
<li>You must establish a <code class="ph codeph">start_date</code> and
<code class="ph codeph">end_date.</code></li>
<li>You cannot set a <code class="ph codeph">daily_budget.</code></li>
<li>You cannot set <code class="ph codeph">enable_pacing</code> to
false.</li>
</ul>
<div id="insertion-order-service__note_p3c_vkx_5wb"
class="note note_note">
Note: Only applicable to non-seamless
insertion orders.

<strong>Default:</strong> <code class="ph codeph">null</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
lifetime budget in revenue. The revenue currency is defined by the <code
class="ph codeph">currency</code> field.</p>
<div id="insertion-order-service__note_mq3_ykx_5wb"
class="note note_note">
Note:
<p>Only applicable to non-seamless insertion orders.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
lifetime budget in impressions. Note: If you add line items to this
insertion order, any spend already associated with those line items
before they are added to the insertion order is NOT counted against the
lifetime budget of the insertion order. Only spend that occurs while the
line item is a child of the insertion order is counted.</p>
<div id="insertion-order-service__note_hsp_1lx_5wb"
class="note note_note">
Note:
<p>Only applicable to non-seamless insertion orders.</p>

<p><strong>Default:</strong> <code
class="ph codeph">null </code>(unlimited)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>If
<code class="ph codeph">true</code>, then spending will be paced over
the course of the day. Only applicable if there is a <code
class="ph codeph">daily_budget</code>.</p>

<div id="insertion-order-service__note_szn_clx_5wb"
class="note note_note">
Note: Only applicable to non-seamless
insertion orders.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">lifetime_pacing_span</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>In
the event of an underspend event, this indicates the number of days
across which the underspent amount will be distributed.</p>

<div id="insertion-order-service__note_id1_2lx_5wb"
class="note note_note">
Note: Only applicable to non-seamless
insertion orders.


<p><strong>Default:</strong> <code class="ph codeph">null</code> (3
days)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
daily budget in revenue. The revenue currency is defined by the <code
class="ph codeph">currency</code> field. Note: if you add line items to
this insertion order, any impressions associated to those line items
when they are added to the insertion order are NOT counted under the
lifetime budget of the insertion order. Only impressions that occur
while the line item is a child of the insertion order are counted.</p>
<div id="insertion-order-service__note_hwd_glx_5wb"
class="note note_note">
Note:
<p>Only applicable to non-seamless insertion orders.</p>

<p><strong>Default:</strong> <code class="ph codeph">null</code>
(unlimited)</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
daily budget in impressions.</p>
<div id="insertion-order-service__note_br4_jlx_5wb"
class="note note_note">
Note:
<p>Only applicable to non-seamless insertion orders.</p>

<p><strong>Default:</strong> <code class="ph codeph">null</code>
(unlimited)</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">lifetime_pacing_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>A
double integer between (and including) 50 and 150, used to set pacing
throughout the insertion order's lifetime. Possible values can be any
double between 50 and 150 on the following scale:</p>
<ul>
<li><code class="ph codeph">50</code> - Pace behind schedule</li>
<li><code class="ph codeph">100</code> - Pace evenly</li>
<li><code class="ph codeph">150</code> - Pace ahead of schedule</li>
</ul>

<div id="insertion-order-service__note_dkp_llx_5wb"
class="note note_note">
Note: Only applicable to non-seamless
insertion orders.


<div id="insertion-order-service__note_f3y_llx_5wb"
class="note note_note">
Note: Alpha-Beta Notice
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>

<p><strong>Default:</strong> <code class="ph codeph">100</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3">Specifies
the ID of the profile attached to the seamless insertion order (i.e.,
must use budget_intervals). A profile can be used to define how
inventory is targeted and/or how frequency capping is enforced (see <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details). A profile
can also be set at the advertiser, line item, campaign, and creative
levels. The most restrictive setting always takes precedence.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3">The
<code class="ph codeph">stats</code> object has been deprecated (as of
October 17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">object_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>The
number of total, active, and inactive line items under the insertion
order. To include this object in a GET response, pass <code
class="ph codeph">object_stats=true</code> in the query string.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">viewability_standard_provider</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>This
field determines what standard to measure viewability against, for
example <code class="ph codeph">iab.</code></p>
<div id="insertion-order-service__note_o21_xlx_5wb"
class="note note_note">
Note:
<p>This field cannot be edited, and only appears on seamless insertion
orders.</p>

<p><strong>Default:</strong> <code
class="ph codeph">'iab'</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">is_running_political_ads</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>Declares
whether or not this insertion order contains political advertising
(defined as advertising related to an election, ballot initiative, or
political candidate, in the United States). If true, the <code
class="ph codeph">political_content</code> object is editable. If true,
and if the insertion order targets a state with additional political
reporting requirements, many fields in <code
class="ph codeph">political_content</code> object are required. For more
information on state requirements, see <a
href="https://docs.xandr.com/csh?context=107316939" class="xref"
target="_blank">Political Advertising Policy Implementation</a>. For
more information on the <code class="ph codeph">political_content</code>
object, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html#InsertionOrderService-PoliticalContent"
class="xref" target="_blank">Political Content</a>.</p>
<p><code class="ph codeph">is_running_political_ads</code> must be set
to true on the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">advertiser</a> to be set to true on the
insertion order. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>.</p>
<p><strong>Default:</strong> <code
class="ph codeph">0 false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__1"><code
class="ph codeph">political_content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__section_xym_nfx_5wb__entry__3"><p>Information
about political advertising conducted with this insertion order.
Political advertising must be enabled on the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">advertiser</a> and on this insertion order
for this object to be editable. (That is, the field <code
class="ph codeph">is_running_political_ads</code> must be true on both
the advertiser and the insertion order.)</p>
<p>For more information about this object, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html#InsertionOrderService-PoliticalContent"
class="xref" target="_blank">Political Content</a>.</p></td>
</tr>
</tbody>
</table>

**Line Items**



Each object in the `line_items` array contains the following fields.

<table id="insertion-order-service__table_vjc_14x_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__table_vjc_14x_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="insertion-order-service__table_vjc_14x_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="insertion-order-service__table_vjc_14x_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">The
numeric ID associated with this line item. Required on <code
class="ph codeph">POST</code> or <code
class="ph codeph">PUT</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">line_item_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2"><code
class="ph codeph">enum</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3"><p>The
type associated with the child line item. Possible values are:</p>
<ul>
<li><code class="ph codeph">"standard_v1"</code> - Denotes that the
child line item is a standard line item.</li>
<li><code class="ph codeph">"standard_v2"</code> - Denotes that the
child line item is an augmented line item.</li>
<li><code class="ph codeph">"guaranteed"</code> - Denotes that the child
line item is a guaranteed line item.</li>
<li><code class="ph codeph">"performance"</code> - This line item type
has been deprecated.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">The name
of the line item.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">If you
have chosen to associate an optional identifying name (a "code") with
this line item, it will show up here.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">Line
items can be <code class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">The date
when line items start serving.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">The date
when line items stop serving.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_vjc_14x_5wb__entry__3">The
timezone with which the line item is set to. This will affect the <code
class="ph codeph">start_date</code> and <code
class="ph codeph">end_date</code>.</td>
</tr>
</tbody>
</table>

**Labels**





You can use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/label-service.html"
class="xref" target="_blank">Label Service</a> to view all possible
labels for line items, advertisers, insertion orders, and publishers.
This service also allows you to view the labels that have already been
applied to your insertion order.

<table id="insertion-order-service__table_bkw_f4x_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__table_bkw_f4x_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="insertion-order-service__table_bkw_f4x_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="insertion-order-service__table_bkw_f4x_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__3">The value
assigned to the label. For example, for the <code
class="ph codeph">"Sales Rep"</code> label, this could be a name such as
<code class="ph codeph">"Michael Sellers"</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__3"><p>The ID
of the label.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST or PUT.</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_bkw_f4x_5wb__entry__3"><p>The
name of the label. Possible values:</p>
<ul>
<li><code class="ph codeph">"Trafficker"</code></li>
<li><code class="ph codeph">"Sales Rep"</code></li>
<li><code class="ph codeph">"Campaign Type"</code></li>
</ul></td>
</tr>
</tbody>
</table>

**Broker Fees**



<div id="insertion-order-service__note_vft_q4x_5wb"
class="note warning note_warning">

Warning:

For augmented line items (ALIs):

Broker fees are deprecated for augmented line items. Please create
partner fees and apply them to the line item using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>.

For standard line items:

- Broker fees created on an insertion order only apply to standard line
  items. If you also use augmented line items, you will need to create
  and apply partner fees to ALIs using the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
  class="xref" target="_blank">Partner Fee Service</a>.
- Broker fees at the line item level override broker fees at the
  insertion order level.



<div id="insertion-order-service__note_pcv_y4x_5wb"


Note:

The decimal position support for the broker fees in UI is for 1 place
after the decimal. For example, if you set 16.67% as a broker fee in the
Commissions section, after saving, the value would round off to 16.7%.
However, there is no restriction on number of places after decimal if
the Insertion Order service API is used to create the broker fee.



Each object in the `broker_fees` array contains the following fields.

<table id="insertion-order-service__table_l4s_dpx_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__table_l4s_dpx_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="insertion-order-service__table_l4s_dpx_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="insertion-order-service__table_l4s_dpx_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__1"><code
class="ph codeph">broker_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__3">The ID of
the broker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__3"><p>Type
of payment to the broker. Possible values:</p>
<ul>
<li><code class="ph codeph">"cpm"</code></li>
<li><code class="ph codeph">"revshare"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__3">The value
of the payment, based on the payment type.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_l4s_dpx_5wb__entry__3">The
free-form description of the broker fee entry.</td>
</tr>
</tbody>
</table>

**Budget Intervals**

<div id="insertion-order-service__note_nqx_3px_5wb"


Note:

This array is only used for seamless insertion orders.



Consider the following when using the `budget_interval` array:

- Budget intervals must contain a `start_date` and `end_date`.
- Date ranges (i.e., `start_date`, `end_date`) of different budget
  intervals on the same insertion order cannot overlap.
- Budget intervals must contain a `lifetime_budget` or
  `lifetime_budget_imps`.
- Budget intervals cannot be used if budget fields on the
  `insertion_order` object itself are set.
- Edits made to the budget interval (e.g., start or end dates) on the
  insertion order must be manually replicated on all child line items
  (using the `line-item` service).
  - For *standard* line items, use the `parent_interval_id` to link the
    line item to its parent insertion order. Budget interval dates will
    automatically be inherited by the line item once that association is
    made. See <a
    href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
    class="xref" target="_blank">Line Item Service</a>.
  - For *augmented* line items (ALI), ensure that start and end dates of
    each budget interval fall within the dates of the parent insertion
    order's budget intervals. See <a
    href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---ali.html"
    class="xref" target="_blank">Line Item Service (Augmented)</a>.
- A maximum of 52 budget intervals may be created per insertion order.
- If you want the budget interval to have an unlimited budget, all 4
  budget fields in the array (`lifetime_budget`, `lifetime_budget_imps`,
  `daily_budget` and `daily_budget_imps`) must be set to `null`. This is
  only allowed if the `lifetime_pacing` field is set to `"false"`.

Each object in the `budget_intervals` array contains the following
fields.

<table id="insertion-order-service__table_z4g_5px_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__table_z4g_5px_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="insertion-order-service__table_z4g_5px_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="insertion-order-service__table_z4g_5px_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3">The ID of
the budget interval.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3">The start
date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss must be set to <code class="ph codeph">00</code>).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3"><p>The
end date of the budget interval. Format must be YYYY-MM-DD hh:mm:ss
(hh:mm:ss must be set to <code class="ph codeph">23:59:59</code>). If
this field is set to <code class="ph codeph">null</code>, then the
insertion order's budget interval will run indefinitely. If you set this
field to 'null':</p>
<ul>
<li>there may not be more than one object in the <code
class="ph codeph">budget_intervals</code> array (i.e., maximum of 1
budget interval).</li>
<li>the <code class="ph codeph">lifetime_pacing field</code> must set to
<code class="ph codeph">"false".</code></li>
<li>the <code class="ph codeph">"daily_budget"</code> field must be set
to <code class="ph codeph">null</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3">The
timezone by which budget and spend are counted. For a list of acceptable
timezone values, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>. The default value is
<code class="ph codeph">"EST5EDT"</code> or the advertiser's
timezone.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3">The
custom code for the budget interval. The code may only contain
alphanumeric characters, periods, underscores or dashes. The code you
enter is not case-sensitive (upper- and lower-case characters are
treated the same).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3">The
lifetime budget in revenue for the budget interval. The revenue currency
is defined by the <code class="ph codeph">currency</code> field on the
<code class="ph codeph">insertion_order</code> object.
<div id="insertion-order-service__note_m45_bqx_5wb"
class="note note_note">
Note: If you also set the <code
class="ph codeph">lifetime_budget_imps</code> field within this array,
whichever budget is exhausted first will cause spending to stop. Best
practice is to only set one of these fields.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3"><p>The
lifetime budget in impressions for the budget interval. Note: if you add
line items to this insertion order, any spend already associated with
those line items before they are added to the insertion order is not
counted against the lifetime budget of the insertion order. Only spend
that occurs while the line item is a child of the insertion order is
counted.</p>
<p>This field defaults to <code class="ph codeph">null</code>
(unlimited).</p>
<div id="insertion-order-service__note_okc_hqx_5wb"
class="note note_note">
Note:
<p>If you also set the <code class="ph codeph">lifetime_budget</code>
field within this array, whichever budget is exhausted first will cause
spending to stop. Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph"> lifetime_pacing </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3"><p>If
<code class="ph codeph">true</code>, the insertion order will attempt to
pace the lifetime budget evenly over the budget interval. If <code
class="ph codeph">true</code>:</p>
<ul>
<li>You must establish a <code
class="ph codeph">lifetime_budget </code>or <code
class="ph codeph">lifetime_budget_imps.</code></li>
<li>You must establish a <code class="ph codeph">start_date</code> and
<code class="ph codeph">end_date.</code></li>
<li>You cannot set a <code class="ph codeph">daily_budget.</code></li>
<li>You cannot set <code class="ph codeph">enable_pacing</code> to <code
class="ph codeph">false.</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">daily_budget </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3"><div
id="insertion-order-service__note_xh1_wrx_5wb" class="note note_note">
Note:
<p>This field defaults to <code class="ph codeph">null</code>
(unlimited). Instead, use the line item to set this value.</p>

<div id="insertion-order-service__note_hrs_wrx_5wb"
class="note note_note">
Note:
<p>If you also set the <code class="ph codeph">daily_budget_imps</code>
field within this array, whichever budget is exhausted first will cause
spending to stop. Best practice is to only set one of these fields.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3"><div
id="insertion-order-service__note_p5b_zrx_5wb" class="note note_note">
Note: This field defaults to <code
class="ph codeph">null</code> (unlimited). Instead, use the line item to
set this value.

<div id="insertion-order-service__note_smm_yrx_5wb"
class="note note_note">
Note: If you also set the <code
class="ph codeph">daily_budget</code> field within this array, whichever
budget is exhausted first will cause spending to stop. Best practice is
to only set one of these fields.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3">If <code
class="ph codeph">true</code>, then spending will be paced over the
course of the day. Only applicable if there is a <code
class="ph codeph">daily_budget</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__1"><code
class="ph codeph">lifetime_pacing_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_z4g_5px_5wb__entry__3"><div
id="insertion-order-service__note_iwj_bsx_5wb" class="note note_note">
Note:
<p>Set this field to <code class="ph codeph">100</code> (the default)
and then use the line item to set lifetime pacing.</p>

<p>A double integer between (and including) 50 and 150, used to set
pacing throughout a budget interval. Possible values can be any double
between 50 and 150 on the following scale:</p>
<ul>
<li><code class="ph codeph">50</code> - Pace behind schedule</li>
<li><code class="ph codeph">100</code> - Pace evenly</li>
<li><code class="ph codeph">150</code> - Pace ahead of schedule</li>
</ul></td>
</tr>
</tbody>
</table>

**Political Content**

This array will only be editable if:

- `is_running_political_ads` is true on the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">Advertiser Service</a>.
- `is_running_political_ads` is true on the insertion order.

These fields must be filled out if you are using this insertion order
for advertising related to an election, ballot initiative, or political
candidate at the local or state level in the United States, or for
advertising related to federal election or political candidate in
Washington State. They are not required for political advertising at the
federal level in other states.



<div id="insertion-order-service__note_nxt_r4y_5wb"
class="note warning note_warning">

Warning: We do not validate the
required fields to make sure they're present when you create an
insertion order, but **your creative for state or local political
advertising** or **federal advertising that targets Washington State**
will not serve if the fields are not filled out. Any update to the
`political_content` object should include **all required fields** or ad
serving may be disrupted.





<table id="insertion-order-service__table_stq_t4y_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-service__table_stq_t4y_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="insertion-order-service__table_stq_t4y_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="insertion-order-service__table_stq_t4y_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>The
name of the person or organization that is purchasing ads on Xandr. This
will be automatically filled out with the name of the Xandr <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">member</a>.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_address_1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>The
street address for the person or organization that is purchasing ads on
Xandr.</p>
<p>Enter the contact details for the person or team who can best answer
any questions about political advertising on this insertion order.</p>
<p><strong>Required.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_address_2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3">Optional
additional line for the billing address for the person or organization
that is purchasing ads on Xandr.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_city</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>City
of the billing address for the person or organization that is purchasing
ads on Xandr.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_region</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>State
or region of the billing address for the person or organization that is
purchasing ads on Xandr.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_postal_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>ZIP or
postal code of the billing address for the person or organization that
is purchasing ads on Xandr.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_country</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Country
of the billing address for the person or organization that is purchasing
ads on Xandr.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_phone_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(10)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Country
code for the phone number for the person or organization that is
purchasing ads on Xandr.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">billing_phone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Contact
phone number for the person or organization that is purchasing ads on
Xandr.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">us_fecid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3">ID number
assigned by the <a href="https://fec.gov/" class="xref"
target="_blank">U.S. Federal Election Committee</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Name
of the person, group, organization, or business that is advertising (the
client that is paying you). For example, a candidate, an agency, or a
political consultant.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_address_1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Address
of the person, group, organization, or business that is advertising. For
example, a candidate, an agency, or a political consultant.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_address_2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3">Optional
second line for the address of the person, group, organization, or
business that is advertising.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_city</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>City
in the address of the person, group, organization, or business that is
advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_region</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>State
or region in the address of the person, group, organization, or business
that is advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_postal_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>ZIP or
postal code of the person, group, organization, or business that is
advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_country</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Country
of the person, group, organization, or business that is advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_phone_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(10)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Country
code for the phone number of the person, group, organization, or
business that is advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">organization_phone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Phone
number of the person, group, organization, or business that is
advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">treasurer_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Treasurer
for the committee purchasing the ads, or the individual whose role would
most closely fit that of a treasurer.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">payment_method_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">enum(1)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>How
the political organization pays you. Options are:</p>
<ul>
<li>"Direct Debit"</li>
<li>"Check"</li>
<li>"Credit Card"</li>
<li>"Other". If this is selected, <code
class="ph codeph">payment_method_other</code> is required.</li>
</ul>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">political_objective</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>The
candidate or ballot initiative that is supported or opposed.</p>
<p>This maps to the <strong>Subject of Ads</strong> field in the UI.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">payment_method_other</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">string(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>If "4"
(Other) is selected for <code
class="ph codeph">payment_method_type</code>. Details of how you are
being paid for political advertising.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">is_independent_expenditure_committee</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Specifies
whether any ads are being paid for by an independent expenditure
committee: That is, a third party that spends money on political
communications that expressly advocate the election or defeat of a
clearly identified candidate and does not coordinate with a candidate, a
candidate’s authorized committee, or an agent of the candidate.</p>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">registration_form</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Required
for NY and NJ when <code
class="ph codeph">is_independent_expenditure_committee</code> is true.
New York State and New Jersey require copies of state registration forms
from independent expenditure committees making purchases. Creatives
won’t serve in New York State or New Jersey until the form is uploaded.
Forms must be uploaded with the <a
href="https://docs.xandr.com/bundle/xandr-api/page/registration-form-service.html"
class="xref" target="_blank">Registration Form Service</a> before their
location can be specified in this array.</p>

The array must be in the format:
<pre id="insertion-order-service__codeblock_ipk_dpy_5wb"
class="pre codeblock"><code>{&quot;file_path&quot;: &quot;PATH_AND_FILE_NAME_OF_THE_UPLOADED_FILE&quot;}</code></pre>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">is_ineligible</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Notifies
you whether all the required fields in the <code
class="ph codeph">political_content</code> array have been filled out
(excluding <code class="ph codeph">registration_form</code>) for
political advertising at the state or local level. If the value is <code
class="ph codeph">true</code>, creatives will not serve. The value is
recalculated whenever the insertion order is updated.</p>
<div id="insertion-order-service__note_p1m_dqy_5wb"
class="note note_note">
Note:
<p>If <code class="ph codeph">is_ineligible</code> is <code
class="ph codeph">false</code>, creatives may still be prohibited from
serving, based on other factors such as whether the creative has passed
audit or whether a registration form has been uploaded for ad buys in
states which require it.</p>

<p>For more information on creative auditing, see "Creative
Troubleshooting and FAQ" in the UI documentation (separate login
required).</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">government_level</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>If
<code class="ph codeph">is_running_political_ads</code> is true.
Permitted values are:</p>
<ul>
<li><code class="ph codeph">state or local</code></li>
<li><code class="ph codeph">federal</code></li>
<li><code class="ph codeph">both</code> (the default)</li>
</ul>
<p><strong>Required</strong>.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__1"><code
class="ph codeph">is_accuracy_acknowledged</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="insertion-order-service__table_stq_t4y_5wb__entry__3"><p>Specifies
that the Xandr member has certified that the <code
class="ph codeph">political_content</code> information provided is
accurate and up-to-date and that Xandr is relying on the accuracy of the
information provided. If set to <code class="ph codeph">0</code> (the
default), creatives will not be allowed to serve.</p>
<p><strong>Required</strong>.</p></td>
</tr>
</tbody>
</table>

**Stats**

<div id="insertion-order-service__note_slr_kqy_5wb"
class="note warning note_warning">

Warning: The `stats` object has been
deprecated (October 17, 2016). Instead, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information.





<div id="insertion-order-service__section_t1j_pqy_5wb"
>

## Examples



**Adding a new seamless insertion order with budget intervals**

``` pre
$ cat insertion-order.json
{
    "insertion-order": {
        "name": "My Insertion Order LH_EP",
        "budget_intervals": [

            {
                "start_date": "2030-10-10 00:00:00",
                "end_date": "2030-10-12 23:59:59",
                "daily_budget": null,
                "daily_budget_imps": 10,
                "enable_pacing": true,
                "lifetime_budget": null,
                "lifetime_budget_imps": 980,
                "lifetime_pacing": false
            },
            {
                "start_date": "2030-10-13 00:00:00",
                "end_date": "2030-10-18 23:59:59",
                "daily_budget": null,
                "daily_budget_imps": 10,
                "enable_pacing": true,
                "lifetime_budget": null,
                "lifetime_budget_imps": 6,
                "lifetime_pacing": false
            }
        ]
    }
}
$ curl -b cookies -X POST -d @insertion-order.json "https://api.appnexus.com/insertion-order?advertiser_id=11'

{
   "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "insertion-orders": [
        {
            "id": 45797,
            "name": "MyInsertionOrderLH_EP",
            "code": null,
            "state": "active",
            "advertiser_id": 64,
            "start_date": null,
            "end_date": null,
            "last_modified": "2015-03-1718: 41: 57",
            "timezone": "EST5EDT",
            "currency": "USD",
            "budget_type": null,            
            "comments": null,
            "billing_code": null,
            "line_items": null,
            "labels": null,
            "broker_fees": null,
            "budget_intervals": [
                {
                    "id": 684,
                    "start_date": "2030-10-10 00:00:00",
                    "end_date": "2030-10-12 23:59:59",
                    "parent_interval_id": null,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": 980,
                    "lifetime_pacing": false,
                    "enable_pacing": false,
                    "daily_budget_imps": 10,
                    "daily_budget": null
                },
                {
                    "id": 685,
                    "start_date": "2030-10-13 00:00:00",
                    "end_date": "2030-10-18 23:59:59",
                    "parent_interval_id": null,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": 6,
                    "lifetime_pacing": false,
                    "enable_pacing": false,
                    "daily_budget_imps": 10,
                    "daily_budget": null
                }
            ],
            "lifetime_pacing": null,
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "enable_pacing": null,
            "lifetime_pacing_span": null,
            "allow_safety_pacing": null,
            "daily_budget": null,
            "daily_budget_imps": null
            }
        ]
    }
}
```





**Adding a new seamless insertion order with flexible budget type**

``` pre
$ cat insertion-order.json
{
    "insertion-order": {
        "name": "Test-Seamless-IO-GDALI",
        "advertiser_id": "33514",
        "timezone": "UTC",
        "budget_type": "flexible",
        "budget_intervals": [{
            "start_date": "2022-11-01 00:00:00",
            "timezone": "UTC"
        }],
        "currency": "USD"
    }
}



curl -b cookies -X POST -d @insertion-order.json "https://api.appnexus.com/insertion-order?advertiser_id=33514&member_id=958"


{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 6784364,
        "start_element": 0,
        "num_elements": 100,
        "insertion-order": {
            "id": 6784364,
            "name": "Test-Seamless-IO-GDALI",
            "code": null,
            "state": "active",
            "advertiser_id": 33514,
            "profile_id": null,
            "member_id": 958,
            "start_date": null,
            "end_date": null,
            "remaining_days": null,
            "total_days": null,
            "last_modified": "2022-01-26 20:00:29",
            "timezone": "UTC",
            "currency": "USD",
            "comments": null,
            "budget_type": "flexible",
            "billing_code": null,
            "viewability_standard_provider": "iab",
            "is_running_political_ads": false,
            "line_items": null,
            "labels": null,
            "broker_fees": null,
            "budget_intervals": [{
                "id": 16134020,
                "object_id": 6784364,
                "object_type": "insertion_order",
                "start_date": "2022-11-01 00:00:00",
                "end_date": null,
                "timezone": "UTC",
                "code": null,
                "lifetime_budget": null,
                "lifetime_budget_imps": null,
                "daily_budget_imps": null,
                "daily_budget": null,
                "enable_pacing": false,
                "lifetime_pacing": false,
                "lifetime_pacing_pct": null,
                "daily_budget_imps_opt": null,
                "daily_budget_opt": null
            }],
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
        }
    }
}
```





**Adding a new non-seamless insertion order**

``` pre
$ cat insertion-order.json

{
    "insertion-order":{
        "name":"My Insertion Order"
    }
}

$ curl -b cookies -X POST -d @insertion-order.json "https://api.appnexus.com/insertion-order?advertiser_id=11"
 
{
    "response":{
        "status":"OK",
        "id":2
    }
}
```





**Viewing all insertion orders for advertiser 11**

``` pre
$ curl -b cookies "https://api.appnexus.com/insertion-order?advertiser_id=11"

    "response":{
        "status":"OK",
        "count":2,
        "start_element":0,
        "num_elements":100,
        "insertion-orders":[
            {
                "id":1,
                "name":"TEST CPM IO",
                "code":null,
                "billing_code":"3az56",
                "state":"active",
                "advertiser_id":11,
                "start_date":"2010-07-01 00:00:00",
                "end_date":"2010-09-01 23:59:59",
                "last_modified":"2010-08-02 23:44:14",
                "timezone":"EST5EDT",
                "currency":"USD",
                "budget_type": null,                
                "comments":null,
                "users":null,
                "line_items":[
                    {
                        "id":5588,
                        "line_item_type": "standard_v1",
                        "name":"Test IO Line Item CPM",
                        "code":null,
                        "state":"active",
                        "start_date":null,
                        "end_date":null,
                        "timezone":"EST5EDT"
                    }
                ],
                "labels":null,
                "broker_fees":null,
                "lifetime_budget":null,
                "lifetime_budget_imps":1000,
                "daily_budget":null,
                "daily_budget_imps":100,
                "enable_pacing":true,
                "lifetime_pacing":false,
                "lifetime_pacing_span":null,
                "allow_safety_pacing":true
            },
            {
                "id":2,
                "name":"TEST CPM IO - Expired Flight Dates",
                "code":null,
                "billing_code":null,
                "state":"active",
                "advertiser_id":2396,
                "start_date":"2010-06-01 00:00:00",
                "end_date":"2010-06-30 23:59:59",
                "last_modified":"2010-07-30 01:29:28",
                "timezone":"EST5EDT",
                "currency":"USD",
                "budget_type": null,                
                "comments":null,
                "users":null,
                "line_items":[
                    {
                        "id":5588,
                        "line_item_type": "standard_v1",
                        "name":"Test IO Line Item CPM",
                        "code":null,
                        "state":"active",
                        "start_date":null,
                        "end_date":null,
                        "timezone":"EST5EDT"
                    }
                ],
                "labels":null,
                "broker_fees":null,
                "lifetime_budget":null,
                "lifetime_budget_imps":1000,
                "daily_budget":null,
                "daily_budget_imps":100,
                "enable_pacing":true,
                "lifetime_pacing":false,
                "lifetime_pacing_span":null,
                "allow_safety_pacing":true
            }
        ]
}
```



**Deleting a budget interval (on a seamless insertion order)**

<div id="insertion-order-service__note_nc3_dry_5wb"


Note:

The deletion of budget intervals on an insertion order will affect the
underlying line items differently, depending on their type:

- For non-ALI (augmented) line items: The deletion of budget intervals
  on the parent insertion order will automatically delete the relevant
  budget interval on the line item(s). Do not attempt to delete budget
  intervals from the line item object. Always use the parent insertion
  order to delete a budget interval.
- For ALI line items: You cannot delete a budget interval on a parent
  insertion until you have first removed it from all of the underlying
  *augmented* line items associated with the insertion order. Since
  augmented line items may have more than one budget interval within a
  given budget interval on the parent insertion order, be sure to remove
  all budget intervals on the augmented line line item that fall within
  the insertion order budget interval you intend to remove. Once the
  budget interval(s) has been removed from the augmented line items, it
  can be removed from the insertion order.



``` pre
//To delete a budget interval, both the "start_date" and "end_date" fields must be set to null.
$ cat delete-budget-interval
{
  "insertion-order": {
    "budget_intervals": [
      {
        "id": 79970,
        "start_date": null,
        "end_date": null
      }
    ]
  }
}
$ curl -b cookies -X PUT -d @delete-budget-interval "https://api.appnexus.com/insertion-order?id=357903"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": "357903",
    "start_element": 0,
    "num_elements": 100,
    "insertion-order": {
      "id": 357903,
      "name": "Seamless Insertion Order",
      "code": null,
      "state": "active",
      "advertiser_id": 1133550,
      "start_date": null,
      "end_date": null,
      "remaining_days": null,
      "total_days": null,
      "last_modified": "2016-07-26 21:33:34",
      "timezone": "America/Argentina/Buenos_Aires",
      "currency": "USD",
      "budget_type": null,
      "comments": null,
      "billing_code": null,
      "line_items": [
        {
          "id": 3188266,
          "line_item_type": "standard_v1",
          "name": "Seamless Line Item",
          "code": null,
          "state": "active",
          "start_date": null,
          "end_date": null,
          "timezone": "America/Argentina/Buenos_Aires"
        }
      ],
      "spend_protection_pixels": null,
      "labels": null,
      "broker_fees": null,
      "budget_intervals": [
        {
          "id": 79969,
          "object_id": 357903,
          "object_type": "insertion_order",
          "start_date": "2016-08-01 00:00:00",
          "end_date": "2016-08-31 23:59:59",
          "code": null,
          "timezone": "America/Argentina/Buenos_Aires",
          "lifetime_budget": 100,
          "lifetime_budget_imps": null,
          "lifetime_pacing": false,
          "enable_pacing": true,
          "daily_budget_imps": null,
          "daily_budget": null
        }
      ],
      "tpas_details": null,
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
      ...
    }
  }
}
```



**Modifying a budget interval (on a seamless insertion order)**

``` pre
$ cat modify-budget-interval
{

  "insertion-order": {
    "budget_intervals": [
      {
        "id": 79969,
        "lifetime_budget": 100
      }
    ]
  }
}
$ curl -b cookies -X PUT -d @modify-budget-interval "https://api.appnexus.com/insertion-order?id=357903"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": "357903",
    "start_element": 0,
    "num_elements": 100,
    "insertion-order": {
      "id": 357903,
      "name": "Seamless Insertion Order",
      "code": null,
      "state": "active",
      "advertiser_id": 1133550,
      "start_date": null,
      "end_date": null,
      "remaining_days": null,
      "total_days": null,
      "last_modified": "2016-07-29 17:26:26",
      "timezone": "America/Argentina/Buenos_Aires",
      "currency": "USD",
      "budget_type": null,
      "comments": null,
      "billing_code": null,
      "line_items": null,
      "spend_protection_pixels": null,
      "labels": null,
      "broker_fees": null,
      "budget_intervals": [
        {
          "id": 79969,
          "object_id": 357903,
          "object_type": "insertion_order",
          "start_date": "2016-08-01 00:00:00",
          "end_date": "2016-08-31 23:59:59",
          "code": null,          
          "timezone": "America/Argentina/Buenos_Aires",
          "lifetime_budget": 100,
          "lifetime_budget_imps": null,
          "lifetime_pacing": false,
          "enable_pacing": true,
          "daily_budget_imps": null,
          "daily_budget": null
        }
      ],
      "tpas_details": null,
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
      ...
    }
  }
}
```





**Delete an insertion order**

``` pre
$ curl -b cookies -X DELETE "https://api.appnexus.com/insertion-order?id=5851054&advertiser_id=5413231"
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



<div id="insertion-order-service__section_j25_3ry_5wb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>








