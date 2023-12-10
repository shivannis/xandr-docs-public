---
Title : Adjustment Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
<b>Note:</b> **Visible to Xandr employees
only**: These docs (and the related feature) are visible to select
clients only. Please do not send links to these docs or mention this
---


# Adjustment Service







<b>Note:</b> **Visible to Xandr employees
only**: These docs (and the related feature) are visible to select
clients only. Please do not send links to these docs or mention this
feature to clients unless you've confirmed they should have access.

The Adjustment Service is used to make changes to booked revenue and
media cost values in reporting.





>

## Adjustment Types

You can currently make three types of reporting adjustments:

**Advertiser Adjustments:**

- `advertiser_revenue` - This adjustment type changes the booked revenue
  and/or impressions, clicks, and conversions you see in reporting for
  an advertiser **and** adjusts your media cost payout to revshare
  publishers. See the first <a
  href="https://wiki.xandr.com/pages/viewpage.action?spaceKey=api&amp;title=Adjustment+Service#AdjustmentService-Examples"
  class="xref" target="_blank">example</a> below for more details about
  how payout to revshare publishers is adjusted.

<!-- -->

- `advertiser_credit` - This adjustment type changes the booked revenue
  and/or impressions, clicks, and conversions you see in reporting for
  an advertiser. It does **not** adjust your media cost payout to
  revshare publishers.

**Publisher Adjustments:**

- `"publisher"` - This adjustment type changes the media cost and/or
  impressions, clicks, and conversions you see in reporting for a
  publisher.



>

## Adjustment Status



Adjustments are applied asynchronously to reporting and will appear
several hours from the time they are created. The Adjustment Service
provides an interface to check the current status of an adjustment.



<b>Note:</b> In order for Adjustments to be
processed the associated objects must be active. For example, if a line
item is inactive the associated adjustment jobs will not be executed.







Status can be one of the following values:

<table id="adjustment-service__table_gyv_kdg_jyb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_gyv_kdg_jyb__entry__1"
class="entry colsep-1 rowsep-1">Status</th>
<th id="adjustment-service__table_gyv_kdg_jyb__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">new</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">Adjustment has
been entered into the system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">pending</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">Adjustment has
been picked up for processing.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">processing</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">Adjustment is
being processed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">propagating</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">Adjustment is
complete and is propagating to reporting caches.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">completed</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">Adjustment is
complete and should be available in reporting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">failed</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">Error while
processing adjustment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__1">cancelled</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_gyv_kdg_jyb__entry__2">User cancelled
adjustment.</td>
</tr>
</tbody>
</table>

>

## REST API



<table id="adjustment-service__table_l4g_5dg_jyb"
class="table frame-all">
<colgroup>
<col style="width: 13%" />
<col style="width: 64%" />
<col style="width: 21%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_l4g_5dg_jyb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="adjustment-service__table_l4g_5dg_jyb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="adjustment-service__table_l4g_5dg_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment" class="xref"
target="_blank">https://api.appnexus.com/adjustment</a></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To add a new
adjustment</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment?id=ADJUSTMENT_ID" class="xref"
target="_blank">https://api.appnexus.com/adjustment?id=ADJUSTMENT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To modify or
cancel an existing adjustment:</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment" class="xref"
target="_blank">https://api.appnexus.com/adjustment</a></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To view all
adjustments:</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/adjustment?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To view all
adjustments for an advertiser:</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment?id=ADJUSTMENT_ID" class="xref"
target="_blank">https://api.appnexus.com/adjustment?id=ADJUSTMENT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To view a
specific adjustment:</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment" class="xref"
target="_blank">https://api.appnexus.com/adjustment</a>
<p>state=new,processing,propagating,pending,completed,failed,cancelled</p></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To view all
adjustments in a given state:</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__2"><a
href="https://api.appnexus.com/adjustment?like_start_date=START_DATE&amp;like_end_date=END_DATE"
class="xref"
target="_blank">https://api.appnexus.com/adjustment?like_start_date=START_DATE&amp;like_end_date=END_DATE</a></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_l4g_5dg_jyb__entry__3">To view all
adjustments within a given time period:</td>
</tr>
</tbody>
</table>





>

## JSON Fields

**General**



<table id="adjustment-service__table_zwr_rp4_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_zwr_rp4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="adjustment-service__table_zwr_rp4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="adjustment-service__table_zwr_rp4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">adjustment_type</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3"><div
>
<ul>
<li><strong>Default</strong>: "advertiser_revenue"</li>
</ul>

<p>The type of adjustment. Possible values:</p>
<ul>
<li><code class="ph codeph">"advertiser_revenue"</code> - Adjusts the
amount of revenue from the advertiser to the network and also
re-attributes revshare payouts to publishers.</li>
<li><code class="ph codeph">"advertiser_credit"</code> - Changes only
the amount of revenue from the advertiser but does not re-attribute
publisher payouts.</li>
<li><code class="ph codeph">"publisher"</code> - Adjusts the media cost
paid by the network to the publisher.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">created_on</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3">The date and
time when the adjustment request was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3"><div
>
<ul>
<li><strong>Default</strong>: Yesterday</li>
</ul>

The end date for the adjustment period. This must be at least 24 hours
in the past.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3"><div
>
<ul>
<li><strong>Default</strong>: Auto-incremented number (i.e. 123)</li>
<li><strong>Required On</strong>: <code class="ph codeph">PUT</code>, in
query string</li>
</ul>

The unique identifier for the adjustment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">last_modified</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3">The date and
time when the adjustment request was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3">The ID of the
member who owns the adjustment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">notes</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3">Optional note
to associate with this adjustment.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3"><div
>
<ul>
<li><strong>Required On:</strong> POST</li>
</ul>
The start date for the adjustment. Adjustments will be applied evenly
over the time range defined by <code class="ph codeph">start_date</code>
and <code class="ph codeph">end_date</code>.

<p>Adjustments are only eligible for processing if they have a <code
class="ph codeph">start_date</code> within 90 days from the time the
adjustment is attempted to be executed.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">status</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3"><div
>
<ul>
<li><strong>Default</strong>: "new"</li>
</ul>

The current processing state for the adjustment. Possible values: <code
class="ph codeph">"new"</code>, <code
class="ph codeph">"processing"</code>, <code
class="ph codeph">"propagating"</code>, <code
class="ph codeph">"pending"</code>, <code
class="ph codeph">"completed"</code>, <code
class="ph codeph">"failed"</code>, or <code
class="ph codeph">"cancelled"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">timezone</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3"><div
>
<ul>
<li><strong>Default</strong>: Default member timezone</li>
</ul>

The timezone the adjustment will be made in. Adjustments will be made to
the first hour of the day of the given timezone. For a list of
acceptable timezone values, see <a
href="https://wiki.xandr.com/display/api/API+Timezones" class="xref"
target="_blank">API Timezones</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__1">user_id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_zwr_rp4_jyb__entry__3">The ID of the
user who made the adjustment.</td>
</tr>
</tbody>
</table>



**Advertiser Adjustments**

<table id="adjustment-service__table_q1y_xs4_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_q1y_xs4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="adjustment-service__table_q1y_xs4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="adjustment-service__table_q1y_xs4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3">The new booked
revenue paid by the advertiser to the network over the given adjustment
period (<code class="ph codeph">start_date</code> to <code
class="ph codeph">end_date</code>). If set to <code
class="ph codeph">null</code> or left blank, booked revenue will not be
changed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3">Optional value
for number of clicks over the adjustment period. Note that changing the
number of clicks on a CPC line item will <em>not</em> affect the line
item's booked revenue. If set to <code class="ph codeph">null</code> or
left blank, clicks will not be changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">delete_overlapping_adjustments</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3"><ul>
<li><strong>Default</strong>: <code class="ph codeph">true</code>, if
<code class="ph codeph">adjustment_type</code> is <code
class="ph codeph">"advertiser_revenue"</code></li>
</ul>
If <code class="ph codeph">true</code>, any prior adjustments to the
same line item within the start/end date of the current adjustment will
be deleted before the adjustment is applied.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3">Optional value
for number of impressions over the adjustment period. Note that changing
the number of imps on a CPM line item will <em>not</em> affect the line
item's booked revenue. To change the payment from advertiser to the
network, you need to set <code class="ph codeph">booked_revenue</code>
separately. If set to <code class="ph codeph">null</code> or left blank,
imps will not be changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3"><ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST</code>,
if <code class="ph codeph">adjustment_type</code> is <code
class="ph codeph">"advertiser_revenue"</code> or <code
class="ph codeph">"advertiser_credit"</code></li>
</ul>
The ID of the line item to be adjusted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3">Optional value
for number of post click conversions over the adjustment period. Note
that changing the number of post click conversions on a CPA line item
will <em>not</em> affect the line item's booked revenue. If set to <code
class="ph codeph">null</code> or left blank, post click conversions will
not be changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_q1y_xs4_jyb__entry__3">Optional value
for number of post view conversions over the adjustment period. Note
that changing the number of post view conversions on a CPA line item
will <em>not</em> affect the line item's booked revenue. If set to <code
class="ph codeph">null</code> or left blank, post view conversions will
not be changed.</td>
</tr>
</tbody>
</table>





**Publisher Adjustments**

<table id="adjustment-service__table_kdh_st4_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_kdh_st4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="adjustment-service__table_kdh_st4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="adjustment-service__table_kdh_st4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Described</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">Optional value
for number of clicks over the adjustment period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">country</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The two-letter
code for the country for which impression data will be adjusted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">height</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The height of
placements for which data will be adjusted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">imp_types</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3"><p><strong>Default</strong>:
<code class="ph codeph">"kept"</code></p>
<p>The types of impressions for which data will be adjusted. Possible
values:</p>
<ul>
<li><code class="ph codeph">"default"</code>: A default creative served
because no campaigns bid or no other creative was eligible.</li>
<li><code class="ph codeph">"kept"</code>: One of your managed
advertisers served a creative.</li>
<li><code class="ph codeph">"resold"</code>: The impression was sold to
a third-party buyer.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">Optional value
for the number of impressions over the adjustment period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The new media
cost paid by the network to the publisher over the given adjustment
period (<code class="ph codeph">start_date</code> to <code
class="ph codeph">end_date</code>). If set to <code
class="ph codeph">null</code> or left blank, media cost will not be
changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The type of
media for which data will be adjusted. Possible values: <code
class="ph codeph">"banner"</code>, <code class="ph codeph">"pop"</code>,
<code class="ph codeph">"text"</code>, <code
class="ph codeph">"interstitial"</code>, <code
class="ph codeph">"expandable"</code>, or <code
class="ph codeph">"video"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3"><ul>
<li><strong>Required On</strong>: <code class="ph codeph">POST</code>,
if <code class="ph codeph">adjustment_type</code> is <code
class="ph codeph">"publisher"</code></li>
</ul>
The ID of the placement for which data will be adjusted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">Optional value
for number of post click conversions over the adjustment period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">Optional value
for number of post view conversions over the adjustment period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The ID of the
publisher for which data will be adjusted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The ID of the
site for which data will be adjusted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__1">width</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_kdh_st4_jyb__entry__3">The width of
placements for which data will be adjusted.</td>
</tr>
</tbody>
</table>



**Examples**

**Adjusting advertiser revenue and impression count with attribution to
publishers**



For "advertiser_revenue" adjustments, attribution of booked revenue
adjustments to revshare publishers is done proportionally based on the
number of impressions served by a publisher.



<b>Note:</b>

- Advertiser runs a $1 CPM Line Item.
- Xandr records 10,000 impressions and $10 booked revenue for this line
  item, served across 3 publishers.
- Advertiser records 9,000 impressions and offers to pay $9.





*Report Before Adjustment*

<table id="adjustment-service__table_z3d_lw4_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 16%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_z3d_lw4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Advertiser Line Item</th>
<th id="adjustment-service__table_z3d_lw4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Publisher</th>
<th id="adjustment-service__table_z3d_lw4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Payment Rule</th>
<th id="adjustment-service__table_z3d_lw4_jyb__entry__4"
class="entry colsep-1 rowsep-1">Impressions</th>
<th id="adjustment-service__table_z3d_lw4_jyb__entry__5"
class="entry colsep-1 rowsep-1">Booked Revenue</th>
<th id="adjustment-service__table_z3d_lw4_jyb__entry__6"
class="entry colsep-1 rowsep-1">Media Cost</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__2">Publisher
1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__3">60% Revshare
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__4">1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__5">$1.00</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__6">$0.60</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__2">Publisher
2</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__3">60% Revshare
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__4">5,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__5">$5.00</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__6">$3.00</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__2">Publisher
3</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__3">$0.50 CPM
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__4">1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__5">$1.00</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__6">$0.50</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__2">Publisher
4</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__3">70% Revshare
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__4">3,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__5">$3.00</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_z3d_lw4_jyb__entry__6">$2.10</td>
</tr>
</tbody>
</table>

To adjust revenue down to $9 and impressions to 9,000 for the line item,
you create and POST the following JSON-formatted file:

``` pre
$ cat adjustment
  
{
   "adjustment": {
      "adjustment_type": "advertiser_revenue",
      "line_item_id": 4243,
      "booked_revenue": 9.00,
      "imps": 9000
      "start_date": "2011-01-01 00:00:00",
      "end_date": "2011-01-01 23:59:59",
      "note": "This is a note..."
   }
}
  
$ curl -b cookies -c cookies -X POST -d @adjustment 'https://api.appnexus.com/adjustment'
```

*Report After Adjustment*

<table id="adjustment-service__table_ilm_lx4_jyb"
class="table frame-all">
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_ilm_lx4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Advertiser Line Item</th>
<th id="adjustment-service__table_ilm_lx4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Publisher</th>
<th id="adjustment-service__table_ilm_lx4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Payment Rule</th>
<th id="adjustment-service__table_ilm_lx4_jyb__entry__4"
class="entry colsep-1 rowsep-1">Adjusted Impressions</th>
<th id="adjustment-service__table_ilm_lx4_jyb__entry__5"
class="entry colsep-1 rowsep-1">Adjusted Booked Revenue</th>
<th id="adjustment-service__table_ilm_lx4_jyb__entry__6"
class="entry colsep-1 rowsep-1">Adjusted Media Cost</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__2">Publisher
1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__3">60% Revshare
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__4">1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__5">$0.90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__6">$0.54</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__2">Publisher
2</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__3">60% Revshare
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__4">5,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__5">$4.50</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__6">$2.70</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__2">Publisher
2</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__3">$0.50 CPM
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__4">1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__5">$0.90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__6">$0.50</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__2">Publisher
3</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__3">70% Revshare
Payment Rule</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__4">3,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__5">$2.70</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__6">$1.89</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__1">$1 CPM Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__2">-</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__3">-</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__4">-1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__5">$0.00</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_ilm_lx4_jyb__entry__6">$0.00</td>
</tr>
</tbody>
</table>





<b>Note:</b>







- We insert an additional row for changes to impression, click, or
  conversion counts. This row will appear in network reporting when
  grouping by Publisher. However, this row will not appear in reports
  run by Advertisers because they cannot group by Publisher.

<!-- -->

- Media cost is *not* adjusted for publishers paid on a cpm basis, or to
  payments to other platform members.

**Adjusting advertising revenue and impression, click, and conversion
count without attribution to publishers**



``` pre
$ cat adjustment
  
{
   "adjustment": {
      "adjustment_type": "advertiser_credit",
      "line_item_id": 4321,
      "booked_revenue": 100.00,
      "imps": 10000,
      "clicks": 10,
      "conversions": 1,
      "start_date": "2011-01-01 00:00:00",
      "end_date": "2011-01-01 23:59:59",
      "note": "This is a note..."
   }
}
```

**Adjusting publisher media cost and impression count for placements
served with creatives**

*Report Before Adjustment*

<table id="adjustment-service__table_cdt_ty4_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_cdt_ty4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Publisher</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Site</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Placement</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__4"
class="entry colsep-1 rowsep-1">Payment Rule</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__5"
class="entry colsep-1 rowsep-1">Country</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__6"
class="entry colsep-1 rowsep-1">Size</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__7"
class="entry colsep-1 rowsep-1">Media Type</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__8"
class="entry colsep-1 rowsep-1">Payment Type</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__9"
class="entry colsep-1 rowsep-1">Media Cost</th>
<th id="adjustment-service__table_cdt_ty4_jyb__entry__10"
class="entry colsep-1 rowsep-1">Imps</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__1">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__2">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__3">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__4">$1 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__5">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__6">728x90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__7">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__8">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__9">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__10">1000</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__1">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__2">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__3">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__4">$1 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__5">CA</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__6">728x90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__7">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__8">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__9">0.5</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__10">500</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__1">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__2">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__3">Home Page
Pop</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__4">$10 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__5">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__6">0x0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__7">Popup</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__8">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__9">10</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__10">1000</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__1">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__2">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__3">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__4">$2 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__5">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__6">300x250</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__7">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__8">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__9">2</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__10">1000</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__1">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__2">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__3">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__4">60%
Revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__5">GB</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__6">300x250</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__7">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__8">Owner
Revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__9">1.25</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_cdt_ty4_jyb__entry__10">500</td>
</tr>
</tbody>
</table>

To adjust media cost down to $10 and impressions to 3500, you create and
POST the following JSON-formatted file:

``` pre
$ cat adjustment
  
{
   "adjustment": {
      "adjustment_type": "publisher",
      "publisher_id": 23,
      "media_cost": 10.00,
      "imps": 3500,
      "start_date": "2011-01-01 00:00:00",
      "end_date": "2011-01-01 23:59:59",
      "note": "This is a note...",
      "imp_types": [
         "resold"
      ]
   }
}
  
$ curl -b cookies -c cookies -X POST -d @adjustment 'https://api.appnexus.com/adjustment'
```

*Report After Adjustment*

<table id="adjustment-service__table_a5x_qz4_jyb"
class="table frame-all">
<colgroup>
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adjustment-service__table_a5x_qz4_jyb__entry__1"
class="entry colsep-1 rowsep-1">Adjustment ID</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__2"
class="entry colsep-1 rowsep-1">Publisher</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__3"
class="entry colsep-1 rowsep-1">Site</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__4"
class="entry colsep-1 rowsep-1">Placement</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__5"
class="entry colsep-1 rowsep-1">Payment Rule</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__6"
class="entry colsep-1 rowsep-1">Country</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__7"
class="entry colsep-1 rowsep-1">Size</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__8"
class="entry colsep-1 rowsep-1">Media Type</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__9"
class="entry colsep-1 rowsep-1">Payment Type</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__10"
class="entry colsep-1 rowsep-1">Media Cost</th>
<th id="adjustment-service__table_a5x_qz4_jyb__entry__11"
class="entry colsep-1 rowsep-1">Imps</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$1 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">728x90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">1000</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$1 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">728x90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">-0.322033898305085</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">-125</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$1 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">CA</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">728x90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">0.5</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">500</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$1 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">CA</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">728x90</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">-0.161016949152542</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">-62.5</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page
Pop</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$10 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">0x0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Popup</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">10</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">1000</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page
Pop</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$10 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">0x0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Popup</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">3.22033898305085</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">-125</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$2 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">300x250</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">2</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">1000</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">$2 CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">US</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">300x250</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">-0.64406779661017</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">-125</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">60%
Revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">GB</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">300x250</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner
Revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">1.25</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">500</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__2">NY Post</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__3">Business</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__4">Home Page</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__5">60%
Revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__6">GB</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__7">300x250</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__8">Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__9">Owner
Revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__10">-0.402542372881356</td>
<td class="entry colsep-1 rowsep-1"
headers="adjustment-service__table_a5x_qz4_jyb__entry__11">-62.5</td>
</tr>
</tbody>
</table>

**Canceling an adjustment**



You can cancel adjustments that have the status "new" or "pending".

``` pre
$ cat modify_adjustment
  
{
   "adjustment": {
      "id": 5,
      "status": "cancelled"
   }
}
  
$ curl -b cookies -c cookies -X PUT -d @modify_adjustment 'https://api.appnexus.com/adjustment'
```

**Viewing all adjustments**



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/adjustment'
  
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "adjustments": [
            {
                "id": 5,
                "member_id": 294,
                "line_item_id": 2725,
                "timezone": "EST5EDT",
                "start_date": "2011-03-02 00:00:00",
                "end_date": "2011-03-04 23:59:59",
                "status": "completed",
                "adjustment_type": "advertiser_revenue",
                "booked_revenue": 100,
                "imps": 2000,
                "clicks": null,
                "post_click_convs": null,
                "post_view_convs": null,
                "notes": null,
                "created_on": "0000-00-00 00:00:00",
                "last_modified": "2011-03-15 17:56:40",
                "publisher_id": null,
                "site_id": null,
                "placement_id": null,
                "payment_rule_id": null,
                "width": null,
                "height": null,
                "country": null,
                "imp_type_kept": false,
                "imp_type_resold": false,
                "imp_type_default": false,
                "media_cost": null,
                "delete_overlapping_adjustments": false,
                "media_type": null,
                "user": null,
                "imp_types": null
            },
            {
                "id": 6,
                "member_id": 294,
                "line_item_id": 2725,
                "timezone": "EST5EDT",
                "start_date": "2011-03-02 00:00:00",
                "end_date": "2011-03-04 23:59:59",
                "status": "completed",
                "adjustment_type": "advertiser_revenue",
                "booked_revenue": 200,
                "imps": 1000,
                "clicks": null,
                "post_click_convs": null,
                "post_view_convs": null,
                "notes": null,
                "created_on": "0000-00-00 00:00:00",
                "last_modified": "2011-03-16 22:56:29",
                "publisher_id": null,
                "site_id": null,
                "placement_id": null,
                "payment_rule_id": null,
                "width": null,
                "height": null,
                "country": null,
                "imp_type_kept": false,
                "imp_type_resold": false,
                "imp_type_default": false,
                "media_cost": null,
                "delete_overlapping_adjustments": false,
                "media_type": null,
                "user": null,
                "imp_types": null
            },
            ...
        ]
    }
}
```




