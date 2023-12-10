---
Title : Buyer Segment Performance Report
Description : This report provides buyers with segment performance across campaigns
ms.date: 10/28/2023
ms.custom: digital-platform-api
and multiple advertisers.
---


# Buyer Segment Performance Report





This report provides buyers with segment performance across campaigns
and multiple advertisers.

The `time_granularity` of the data is `hourly`. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="buyer-segment-performance-report.md#buyer-segment-performance-report__example"
class="xref">Example</a>.



<b>Note:</b> **Impressions across user
segments:** Since this report aggregates impressions served by user
segment, impressions associated with users who are present in multiple
segments will be counted more than once. As a result, be sure to group
by `segment_id` when running the report.







## Time Frame

The `report_interval` field in the JSON request must be set to one of
the following:

- today
- yesterday
- last_7_days
- last_14_days
- last_30_days

**Data Retention Period**

Data retention period for this report is 45 days.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-segment-performance-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-segment-performance-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-segment-performance-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="buyer-segment-performance-report__entry__4"
class="entry colsep-1 rowsep-1">Examples</th>
<th id="buyer-segment-performance-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The month of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The day of the
auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The hour of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the
insertion order. If the value is <code class="ph codeph">0</code>, the
impression was purchased by a third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">222</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the
campaign that purchased the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Fall Wares"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The name of the
campaign that purchased the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Fall Wares (222)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the
advertiser. If the value is <code class="ph codeph">0</code>, either the
impression was purchased by third-party buyer, or a default or PSA was
shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the line
item. If the value is <code class="ph codeph">0</code>, the impression
was purchased by a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Amco"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The name of the
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Amco (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Kitchen"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The name of the
line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Kitchen (111)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the split
that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_id</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The name of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_name</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Mobile Campaign Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The custom code for
the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">segment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">220</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the
segment pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">segment_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Submitted application"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The name of the
segment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">segment</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Submitted application (220)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Mobile Insertion Order"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The name of the
insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Mobile Insertion Order (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">segment_code</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"Mobile Insertion Order Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The (optional)
custom code associated with the user segment present for this
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">1942</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The unique
identification number of the conversion pixel.

<b>Note:</b> This dimension will return a
maximum of 10 conversion pixels. Also, you can filter by no more than 10
conversion pixels. Although <code class="ph codeph">pixel_id</code> is
groupable, we do not recommend that you group by this dimension since
doing so will cause conversion events to then be shown in separate rows
from impression and click events. We generally assume you want to view
all of these events in a single row so as to be able to retrieve
accurate and aggregated values for conversion rate and
cost-per-conversion calculations. As a result, we instead recommend that
you filter by <code class="ph codeph">pixel_id</code> so you can
retrieve conversion counts and related metrics for your most relevant
pixel ids.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">gender</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"m"</code>, <code class="ph codeph">"f"</code>, <code
class="ph codeph">"u"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The gender of the
user.

<b>Note:</b> For impressions older than 100
days, the gender will be <code class="ph codeph">"u"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">age_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">"18-24</code>, <code
class="ph codeph">"45-54"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The age bucket in
which the user is contained. See <a
href="buyer-segment-performance-report.md#buyer-segment-performance-report__age-bucket"
class="xref">Age Bucket</a> below for more information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__1">age_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__4"><code
class="ph codeph">1</code>, <code class="ph codeph">3</code>, <code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__5">The ID of the age
bucket. See <a
href="buyer-segment-performance-report.md#buyer-segment-performance-report__age-bucket"
class="xref">Age Bucket</a> below for more information.</td>
</tr>
</tbody>
</table>

**Age Bucket**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-segment-performance-report__entry__136"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="buyer-segment-performance-report__entry__137"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">0</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"unknown"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">1</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"13-17"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">2</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"18-24"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">3</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"25-34"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">4</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"35-44"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">5</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"45-54"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">6</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"55-64"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__136">7</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__137">"65+"</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-segment-performance-report__entry__154"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-segment-performance-report__entry__155"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-segment-performance-report__entry__156"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buyer-segment-performance-report__entry__157"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="buyer-segment-performance-report__entry__158"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">34534</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of impressions (including defaults).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.000221877080097626</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">total_convs /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The rate of
conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.002327</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">clicks /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The rate of
clicks to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">450.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_view_revenue
+ post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total revenue
booked through direct advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">booked_revenue_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">145.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(post_view_revenue
+ post_click_revenue) in buying currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total revenue
booked through direct advertisers expressed in buying currency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The number of
post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Advertiser
revenue from post-view conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The number of
post-click conversions that occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">300.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Advertiser
revenue from post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.00013</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_view_convs /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The rate of
post-view conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">post_click_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The rate of
post-click conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">spend</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">304.36</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">spend</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total
marketer spend across both direct and real time media buys for this
segment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total cost of
the inventory purchased.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">media_cost / imps
* 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The cost per
thousand impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">revenue_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">1.9221</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(booked_revenue /
impressions) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total revenue
per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">4.14</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">booked_revenue -
total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Booked revenue
minus total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">profit_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.4949</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(booked_revenue -
total_cost)/imps * 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The profit
(defined as booked revenue minus total cost) per 1,000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">revenue_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.8256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">booked_revenue /
clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total revenue
per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">revenue_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">booked_revenue /
total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total revenue
per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">media_cost /
clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The cost per
click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">1.1111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">media_cost /
total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The cost per
acquisition/conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">commissions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">Commissions for
standard line items, $0 for ALIs.</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Fees that come
out of the booked revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">serving_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">0.025143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">Serving fees for
standard line items, $0 for ALIs.</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Fees that are
added to the media cost.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">convs_per_mm</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">384.4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(total_convs /
imps) * 1,000,000</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The number of
conversions per million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">partner_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">partner_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total amount
of third-party costs, budgeted using the <a
href="partner-fee-service.md"
class="xref" target="_blank">Partner Fee Service</a>, that have accrued
on an augmented line item over the reported period of time.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">total_cost =
media_cost + data_costs + partner_fees + commissions + serving_fees +
publisher_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158"><p>The total
amount of costs accrued over the reported period of time. This generally
includes two types of costs, budgeted costs (media cost, data cost,
partner fees, serving fees, commissions) and publisher revenue if you
track publisher payouts on the platform.</p>


<b>Note:</b> We have added logic to prevent
double counting third-party fees during the breaking change period
(August 6-After the breaking change period).

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">total_cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(total_cost/imps)
* 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total cost
per 1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">total_cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">total_cost/clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total cost
per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">total_cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">total_cost/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total cost
per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">profit_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(booked_revenue -
total_cost)/clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Profit per
click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">profit_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(booked_revenue -
total_cost)/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">profit_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(booked_revenue -
total_cost)/booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">Buyer profit
margin.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_served</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_served</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of video responses served to the player.An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The total number
of times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">25.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The revenue per
video completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">22.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The cost per
video completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">(video
completions/total impressions) x 100</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The ratio of
video completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__154">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__155">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__156"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__157">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-segment-performance-report__entry__158">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>



>

## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"buyer_segment_performance"`, as well as the columns (dimensions and
metrics) and {{report_interval}} that you want to retrieve. You can also
filter for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat buyer_segment_performance

{"report": 
    {
        "format": "csv",
        "report_interval": "yesterday",
        "row_per": ["campaign_id"],
        "columns": ["campaign_id", "segment_id", "advertiser_id", "advertiser_name","line_item_id"],
        "report_type": "buyer_segment_performance"
    }
}
```



**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.



``` pre
$ curl -b cookies -c cookies -X POST -d @buyer_segment_performance "https://api.appnexus.com/report"

{
   "response":{
      "status":"OK",
      "report_id":"71816ec6d09b32a5140730afe5cf6af5"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=71816ec6d09b32a5140730afe5cf6af5'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-11-19 21:15:10",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"campaign_id\"],\"columns\":[\"campaign_id\",\"segment_id\",\"advertiser_id\",\"advertiser_name\",\"line_item_id\"],\"report_type\":\"buyer_segment_performance\",\"filters\":[{\"member_id\":\"1234\"}]}}",
            "url": "report-download?id=71816ec6d09b32a5140730afe5cf6af5"
        },
        "execution_status": "ready"
    }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=71816ec6d09b32a5140730afe5cf6af5' > /tmp/buyer_segment_performance.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.









## Related Topics

- <a
  href="report-service.md"
  class="xref" target="_blank">Report Service</a>






