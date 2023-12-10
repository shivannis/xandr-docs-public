---
Title : Buyer Untargeted Segment Performance Report
Description : <b>Note:</b>
ms.date: 10/28/2023
ms.custom: digital-platform-api
Xandr UI users may only access this report via
the API. However, this documentation page is only exposed to
---


# Buyer Untargeted Segment Performance Report





<b>Note:</b>

Xandr UI users may only access this report via
the API. However, this documentation page is only exposed to
Xandr employees.

In addition, due to the cost of running this report, it is limited to
strategic/large clients only. Contact Steve Truxal to request access for
your client and provide details on the revenue opportunity, expected
hourly biddable impressions for 1 day, and how you expect the member's
seat to scale over the next 6-12 months.



  
The Buyer Untargeted Segment report can be used for discovery: to
identify segments you have access to but may not be targeting. This
report is available to members.

For instructions on retrieving a report, see the <a
href="buyer-untargeted-segment-performance-report.md#ID-00003367__example_batch_segment_performance_report"
class="xref">example</a> below.



## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- `today`
- `yesterday`
- `last_7_days`
- `last_30_days`
- `last_14_days`





>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00003367__dimensions_batch_segment_performance_report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="ID-00003367__dimensions_batch_segment_performance_report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="ID-00003367__dimensions_batch_segment_performance_report__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
hour of the auction.
<p>Example: <code class="ph codeph">"2010-02-01</code> <code
class="ph codeph">06:00:00"</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
day of the auction.
<p>Example: <code class="ph codeph">"2010-02-01</code><code
class="ph codeph">"</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
month of the auction.
<p>Example: <code class="ph codeph">"2010-02</code><code
class="ph codeph">"</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the buying member. If the impression was not purchased, this field
shows one of the following values: <code class="ph codeph">229</code> =
PSA, <code class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.
<p>Example: <code class="ph codeph">123</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">insertion_order_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the insertion order.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">campaign_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the campaign.
<p>Example: <code class="ph codeph">123</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the advertiser. If the value is 0, either the impression was
purchased by an external buyer, or a default or PSA was shown.
<p>Example: <code class="ph codeph">789</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the line item.
<p>Example: <code class="ph codeph">111</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">pixel_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the pixel.
<p>Example: <code class="ph codeph">123</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">advertiser_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
name of the advertiser.
<p>Example: <code class="ph codeph">"Verizon Wireless"</code></p>
<p><strong>Group:</strong> No</p>
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">advertiser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">line_item_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
name of the line item.
<p>Example: <code class="ph codeph">"Default Line Item"</code></p>
<p><strong>Group:</strong> No</p>
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">line_item</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the segment pixel.
<p>Example: <code class="ph codeph">220</code></p>
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">segment_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
name of the segment.
<p>Example: <code class="ph codeph">"Submitted application"</code></p>
<p><strong>Group:</strong> No</p>
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">insertion_order_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
name of the insertion order.
<p>Example: <code class="ph codeph">"Mobile Insertion Order"</code></p>
<p><strong>Group:</strong> No</p>
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">insertion_order</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">segment_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
(optional) custom code associated with the user segment present for this
impression.
<p>Example: <code class="ph codeph">12456</code></p>
<p><strong>Group:</strong> No</p>
<p><strong>Filter:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">age_bucket</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
age bucket in which the user is contained. See Age Bucket for more
information.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">age_bucket_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the age bucket.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
gender segment.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">is_targeted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">Whether
or not the line item targeted the segment.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">segment_owner_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
ID of the segment owner.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">segment_owner_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">The
name of the segment owner.
<p><strong>Group:</strong> No</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__1"><code
class="ph codeph">is_advertiser_segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__3">Whether
or not the segment is an advertiser segment for the buyer running the
report.
<p><strong>Group:</strong> Yes</p>
<p><strong>Filter:</strong> Yes</p></td>
</tr>
</tbody>
</table>

**Age Bucket**

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00003367__dimensions_batch_segment_performance_report__entry__82"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th
id="ID-00003367__dimensions_batch_segment_performance_report__entry__83"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"unknown"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"13-17"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"18-24"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"25-34"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"35-44"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"45-54"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"55-64"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__82"><code
class="ph codeph">7</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003367__dimensions_batch_segment_performance_report__entry__83"><code
class="ph codeph">"65+"</code></td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003367__metrics_batch_segment_performance_report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00003367__metrics_batch_segment_performance_report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003367__metrics_batch_segment_performance_report__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00003367__metrics_batch_segment_performance_report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00003367__metrics_batch_segment_performance_report__entry__5"
class="entry colsep-1 rowsep-1">Formula</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">imps</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total number of impressions (served and resold).</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">2437</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">imps</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">clicks</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total number of clicks across all impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">clicks</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">booked_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total revenue booked through direct advertisers (line item).</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">25.6788</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">booked_revenue</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">cpm</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
cost per 1000 impressions</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">1.6605</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5">(<code
class="ph codeph">cost</code> / <code class="ph codeph">imps</code>) x
1000</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">total_convs</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total number of post-view and post-click conversions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">9</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_click_convs + post_view_convs</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">convs_rate</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
rate of conversions to impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.0002218770</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">total_convs / imps</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">ctr</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
rate of clicks to impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.0002218777</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">clicks / imps</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">post_view_convs</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total number of recorded post-view converstions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_view_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">post_view_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">Advertiser
revenue from post-view conversions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">150.00</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_view_revenue</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">post_click_convs</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total number of recorded post-click conversions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_click_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">post_click_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">Advertiser
revenue from post-click conversions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">300.00</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_click_revenue</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">post_view_convs_rate</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
rate of post-view conversions to impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.0002</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_view_convs / imps</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">post_click_convs_rate</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
rate of post-click conversion to impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.0002</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">post_click_convs / imps</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">media_cost</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total amount spent.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">100.00</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">media_cost</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">profit</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
profit per thousand impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">4.14</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">profit</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">profit_ecpm</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
profit as a percentage of the revenue.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.778</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">((booked_revenue - media_cost) / imps)</code>*
100</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">revenue_ecpc</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total revenue per click.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.8256</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">booked_revenue / clicks</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">revenue_ecpa</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
total revenue per conversion.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">5.00</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">booked_revenue / total_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">cost_ecpc</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
cost per click.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.1834</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">media_cost / clicks</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">cost_ecpa</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
cost per attribution/conversion.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0.1834</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">media_cost / total_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">commissions</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
fees that come out of the booked revenue.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">commissions</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">serving_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
fees that are added to the media cost.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">0/025143</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5"><code
class="ph codeph">serving_fees</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">convs_per_mm</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
number of conversions per million impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">221.87708</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5">(<code
class="ph codeph">total_convs</code> / <code
class="ph codeph">imps</code>) x 1,000,000</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__1"><code
class="ph codeph">rpm</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__3">The
revenue per thousand impressions.</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__4"><code
class="ph codeph">100.00</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-00003367__metrics_batch_segment_performance_report__entry__5">(<code
class="ph codeph">booked_revenue</code> / <code
class="ph codeph">imps</code>) / 1000</td>
</tr>
</tbody>
</table>



>

## Example

**Step 1. Create the JSON report request**



  
The JSON file should include the following:

- `"report_type"` you want to run.
- `"columns"` (dimensions and metrics) you want to retrieve.
- `"report_interval"` you want to retrieve.



You can also include `filters` for dimensions, define granularity
(`year`, `month`, `day`), and specify the  `format` in which the data
should be returned ( `"csv"` ,  `"excel"` , or  `"html"` ).



<b>Note:</b> To filter a dimension by more
than one value, use an array. For example:

**Correct:**

`"filters": [{"bid_type": ["learn","optimized"]}, {"geo_country":"US"}]`

**Incorrect:**

`"filters": [{"bid_type":"learn"}, {"bid_type":"optimized"}, {"geo_country":"US"}]`



See <a
href="buyer-untargeted-segment-performance-report.md#ID-00003367__dimensions_batch_segment_performance_report"
class="xref">Dimensions</a> and <a
href="buyer-untargeted-segment-performance-report.md#ID-00003367__metrics_batch_segment_performance_report"
class="xref">Metrics</a> above for more details about the columns that
can be included in the request.

The example below demonstrates how to retrieve the Buyer Untargeted
Segment Performance Report. In this example, the report will display
data for the `hour`, `campaign_id`, `imps`, `clicks`, `total_convs`,
`ctr`, and `convs_rate` columns. This report will pull data from the
last 48 hours and will format it as a CSV file.

``` pre
$ cat report_request
{
        "report":{
                "report_type":"buyer_untargeted_segment_performance",
                "columns":[
                        "hour",
                        "campaign_id",
                        "imps",
                        "clicks",
                        "total_convs",
                        "ctr",
                        "convs_rate"
                ],
                "report_interval":"last_48_hours",
                "format":"csv"
        }
}
```

**Step 2. `POST`  the request to the Report Service**

  
`POST` the JSON request to get back a `report_ID`.

``` pre
$ curl -b cookies -X post -d @report_request "http://api.appnexus.com/report"
 
{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```

Alternatively, you can get a `report_id` via a `POST` request using a
`saved_report_id`.

``` pre
$ curl -b cookies -X POST 'http://api.appnexus.com/report?saved_report_id=30'
```

**Step 3. `GET`  the report status from the Report Service**

  
Make a `GET` call with the `report_id` to retrieve the status of the
report. Continue making this `GET` call until
the `execution_status` is `"ready"`. Then, use
the `report-download` service to save the report data to a file, as
described in the next step.

``` pre
$ curl -b cookies 'http://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:15:48",
         "json_request":"{\"report\":{\"report_type\":\"network_advertiser_frequency\",\"columns\":
          [\"hour\",\"campaign\",\"imps\",\"clicks\",\"total_convs\",
          \"ctr\",\"convs_rate\"],\"row_per\":[\"hour\",\"campaign_id\"],
          \"report_interval\":\"last_48_hours\",\"filters\":[{\"advertiser_id\":\"690\"}]}}",
         "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**Step 4. `GET` the report data from the Report Download Service**

  
To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download`service. You can find
the service and report ID in the `"url"` field of the response to your
previous `GET` call. When setting the file to which you want to save the
report, use the file extension of the `"format"` (e.g., .csv) that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `\-i` or `\-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'http://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' -o /tmp/network_advertiser_frequency.csv
```






