---
Title : Seller Segment Performance Report
Description : The Seller Segment Performance Report provides sellers insights into how
their targeted segments are contributing to the overall performance of
their line items. The report provides data on all targeted segments
---


# Seller Segment Performance Report







The Seller Segment Performance Report provides sellers insights into how
their targeted segments are contributing to the overall performance of
their line items. The report provides data on all targeted segments
(includes and excludes) that contributed towards transacted
impressions.This reporting helps sellers in the following ways:

- by providing data on the usage per segment, so they can understand how
  often they used each segment and thus enable them to bill their data
  providers and/or advertisers appropriately

- by providing data of performance per segment, so they can analyze
  which segments are performing well or not well and optimize
  appropriately

- facilitating data clearing, so that instead of them being responsible
  for billing their data providers each month,
  Xandr can do it for them.

For instructions on retrieving a report, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the <a
href="seller-segment-performance-report.html#seller-segment-performance-report__seller-segment-performance-report-example"
class="xref">example</a> below.





<div id="seller-segment-performance-report__section-4f6e6047-e755-414b-a938-459084fc7cbb"
>

## Time Frame

<div id="seller-segment-performance-report__p-640d1e1f-1d58-4173-b5ba-f76f053b43bc"
>

The `report_interval` field in the JSON request can be set to one of the
following:

- custom

- last_hour

- last_48_hours

- today

- yesterday

- last_7_days

- month_to_date

- quarter_to_date

- last_month

- last_30_days



<div id="seller-segment-performance-report__p-f4f4cb5e-82ee-4b88-9a67-a8cc55673421"
>

<div id="seller-segment-performance-report__note-e3a0e4f9-aa96-4ce7-8476-325b3c4bc784"


Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.







<div id="seller-segment-performance-report__section-94036982-2941-42ca-aa92-ba12fcdcbbba"
>

**Data Retention Period**

Data retention period for this report is 100 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-segment-performance-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-segment-performance-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-segment-performance-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-segment-performance-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-segment-performance-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">99000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The ID of the
bidder associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"123.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name of the
bidder associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"123.com (99000)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name and ID of
the bidder associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">11100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The ID of the
buyer who buys the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"Accenture LLP"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name of the
buyer who buys the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"Accenture LLP (11100)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name and ID of
the buyer who buys the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">165888</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The ID of the deal
associated with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"5StarsCine"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name of the
deal associated with the transaction for the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"5StarsCine (165888)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name and ID of
the deal associated with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">curator_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member ID of the
curator account</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">curator_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"My Account"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member name of the
curator account</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"2020-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The day of the
auction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"desktops &amp; laptops"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Device type on
which the impression was served. Possible values are:
<ul>
<li>"desktops &amp; laptops"</li>
<li>"tablets"</li>
<li>"mobile phones"</li>
<li>"tv"</li>
<li>"game consoles"</li>
<li>"set top box"</li>
<li>"media players"</li>
<li>"other devices"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">device_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">
Device type ID on which the impression was served. Possible values are:
<ul>
<li>0(other devices)</li>
<li>1 (desktops &amp; laptops)</li>
<li>2 (mobile phones)</li>
<li>3 (tablets)</li>
<li>4 (tv)</li>
<li>5 (game consoles)</li>
<li>6 (media players)</li>
<li>7 (set top box)</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">device_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"desktops &amp; laptops"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Device type name
on which the impression was served. Possible values are:
<ul>
<li>"desktops &amp; laptops"</li>
<li>"tablets"</li>
<li>"mobile phones"</li>
<li>"tv"</li>
<li>"game consoles"</li>
<li>"set top box"</li>
<li>"media players"</li>
<li>"other devices"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">geo_country_code</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The country code
in which the impression took place. For impression requests for which
Xandr received no indication that the ad was
rendered (i.e., non-transacted), country information is not
provided.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The country name
in which the impression took place. For impression requests for which
Xandr received no indication that the ad was
rendered (i.e., non-transacted), country information is not
provided.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"2020-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5"><p>The hour of the
auction.</p>

Note: For impressions older than 100
days, the day will be returned rather than the hour.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">
The media type associated with the creative that served on an
impression.Possible values are:
<ul>
<li><p>"banner"</p></li>
<li><p>"pop"</p></li>
<li><p>"interstitial"</p></li>
<li><p>"video"</p></li>
<li><p>"text"</p></li>
<li><p>"expandable"</p></li>
<li><p>"skin"</p></li>
<li><p>"facebook"</p></li>
<li><p>"image and text"</p></li>
<li><p>"high impact"</p></li>
<li><p>"native"</p></li>
<li><p>"audio"</p></li>
<li><p>"Unknown"</p></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">
Media type ID associated with the creative that served on this
impression. Possible values are:
<ul>
<li><p>1 (banner)</p></li>
<li><p>2 (pop)</p></li>
<li><p>3 (interstitial)</p></li>
<li><p>4 (video)</p></li>
<li><p>5 (text)</p></li>
<li><p>6 (expandable)</p></li>
<li><p>8 (skin)</p></li>
<li><p>9 (facebook)</p></li>
<li><p>10 (image and text)</p></li>
<li>11 (high impact)</li>
<li><p>12 (native)</p></li>
<li><p>13 (audio)</p></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"2020-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The month of the
auction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">segment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The ID of a
segment that targeted the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">segment_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"That Segment"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name of a
segment that targeted the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">segment</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"That Segment(123456)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name and ID of
a segment that targeted the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">segment_owner_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member ID of the
segment owner that owns the targeted segment(s)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">segment_owner_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"That Segment Owner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member name of the
segment owner that owns the targeted segment(s)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">4567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member ID of the
seller of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member name of the
seller of the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">Member ID and name
of the seller of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">supply_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">
ID of the supply type of the ad that was rendered. Possible values are:
<ul>
<li><p>0 (web)</p></li>
<li><p>1 (mobile_web)</p></li>
<li><p>2 (mobile_app)</p></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">supply_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">
Name of the supply type of the ad that was rendered. Possible values
are:
<ul>
<li>"web"</li>
<li>"mobile_web"</li>
<li>"mobile_app"</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">targeting_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"Inclusion"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">
Whether the segment contributed to the line item targeting by being
included or excluded. Possible values are:
<ul>
<li>"Inclusion"</li>
<li>"Exclusion"</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">1825156</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The ID of the
publisher on whose inventory this impression occurre</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"12up.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name of the
publisher on whose inventory this impression occurre</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"12up.com (1825156)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name and ID of
the publisher on whose inventory this impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">314</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The ID of the line
item associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"Kansas City Winter Commuters"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name of the
line item associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"Kansas City Winter Commuters (314)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The name and ID of
the line item associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__1">sales_channel</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__4"><code
class="ph codeph">"Managed"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__5">The sales channels
of the line item for the impression. For example, Managed, Open
Exchange, Curated, Deals, Programmatic Guaranteed, etc.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-segment-performance-report__entry__201"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-segment-performance-report__entry__202"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-segment-performance-report__entry__203"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-segment-performance-report__entry__204"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">48.4185</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">Targeted revenue
of the segment which is sum of booked revenue and seller revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_revenue_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">2.5588</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The targeted
revenue, expressed as eCPM. For definitions of eCPM and other terms, see
the <a
href="https://docs.xandr.com/bundle/industry-reference/page/online-advertising-and-ad-tech-glossary.html"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_revenue_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">2.5588</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The targeted
revenue, expressed as eCPC. For definitions of eCPC and other terms, see
the <a
href="https://docs.xandr.com/bundle/industry-reference/page/online-advertising-and-ad-tech-glossary.html"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_revenue_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">2.5588</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The targeted
revenue, expressed as eCPA. For definitions of eCPA and other terms, see
the <a
href="https://docs.xandr.com/bundle/industry-reference/page/online-advertising-and-ad-tech-glossary.html"
class="xref" target="_blank">Glossary</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">18922</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The number of
transacted impressions that the segment targeted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">17000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The number of
transacted clicks that the segment targeted.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_view_measured_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">17867</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The number of
transacted impressions that Xandr measured
viewability on that the segment targeted</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_viewable_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">14135</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The number of
viewed impressions that the segment targeted</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__201">targeted_conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__202">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__203"><code
class="ph codeph">11211</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-segment-performance-report__entry__204">The number of
targeted conversions of a segment</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"seller_segment_performance"`, as well as the `columns` (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat curator_segment_performance

{
    "report": {
        "report_type": "seller_segment_performance",
        "columns": [
            "deal_id",
            "deal_name",
            "segment_id",
            "segment_name",
            "targeting_type",
            "targeted_impressions",
            "targeted_revenue"
        ],
        "report_interval": "today",
        "format": "csv"
    }
}
```



**POST the request to the Report Service**



``` pre
$ curl -b cookies -X POST -d @seller_segment_performance 'https://api.appnexus.com/report'

{
    "response": {
        "status": "OK",
        "report_id": "a2c95fcff2d8759e69cec123364f9b32"
    }
}
```



**GET the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=a2c95fcff2d8759e69cec123364f9b32'
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2020-09-04 12:46:08",
            "json_request": "{\"report\":{\"report_type\":\"seller_segment_performance\",\"columns\":[\"deal_id\",\"deal_name\",\"segment_id\",\"segment_name\",\"targeting_type\",\"targeted_impressions\",\"targeted_revenue\"],\"report_interval\":\"today\",\"format\":\"csv\",\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"filters\":[{\"curator_member_id\":\"12025\"}],\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1599264000,\"start_date\":1599177600,\"user_id\":\"123456\"}",
            "url": "report-download?id=a2c95fcff2d8759e69cec123364f9b32"
        },
        "execution_status": "ready"
    }
}
```



**GET the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



Tip: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=a2c95fcff2d8759e69cec123364f9b32' > /tmp/seller_segment_performance.csv
```






