---
Title : Video Mediation Demand Report
Description : The **Video Mediation Demand Report** can be used by video mediation
ms.date: 10/28/2023
ms.custom: digital-platform-api
clients to evaluate performance of mediated networks and optimize
waterfall priorities. The report incorporates mediation and financial
---


# Video Mediation Demand Report





The **Video Mediation Demand Report** can be used by video mediation
clients to evaluate performance of mediated networks and optimize
waterfall priorities. The report incorporates mediation and financial
data as well as data on individual partner waterfall performance that
will be made available through updates to the video mediation framework.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="video-mediation-demand-report.md#video-mediation-demand-report__video-mediation-demand-report-example"
class="xref">example</a> below.



>

## Time Frame

>

The `report_interval` field in the JSON request can be set to one of the
following:

- custom

- today

- last_24_hours

- yesterday

- last_48_hours

- last_7_days

- last_14_days

- month_to_date

- month_to_yesterday

- last_30_days



>



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







>

**Data Retention Period**

Data retention period for this report is 45 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="video-mediation-demand-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="video-mediation-demand-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="video-mediation-demand-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="video-mediation-demand-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="video-mediation-demand-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The hour of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The day of the
auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The month of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the buyer
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">675</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the buyer
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of the
publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Test (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name and ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The code for the
geographic country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of the
geographic country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">194</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the site.

<b>Note:</b> For impressions older than 100
days, the site_id will be 0.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Site Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of the
site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Site Name(194)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name and ID of the
site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">tag_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">675</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The placement id with
visibility profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">placement_code</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Ivillage Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The custom code for
the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Ivillage 160x600"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">
The name of the placement.

<b>Note:</b> For impressions older than 100
days, placements will be aggregated into one row with "All placement
data older than 100 days" as the placement_name.

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Ivillage 160x600 (675)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name and ID of the
placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"video"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The general display
style of the creative (banner, expandable, video, etc.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID associated with
the media type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Laptop"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name for the type
of device where the creative is displayed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">mediated_network_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">121</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the mediated
network.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">mediated_network_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"MediatedNW"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of the
mediated network.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">mediated_bid_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">177</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the mediated
bid.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">mediated_bid_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"MediatedBidOne"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of the
mediated bid.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">call_type</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Open RTB"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The type of the ad
request call.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">operating_system_family_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID for an
operating system family (Linux, Windows etc.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">operating_system_family_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Linux"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of an
operating system family.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">waterfall_position</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">90</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The 0-based position
of the creative in the video waterfall.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">waterfall_depth</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The depth of the video
waterfall.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">video_operating_system_id</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">9</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The ID of the
operating system of the video waterfall.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__1">video_operating_system_name</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__4"><code
class="ph codeph">"Mac OS"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__5">The name of the
operating system of the video waterfall.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="video-mediation-demand-report__entry__161"
class="entry colsep-1 rowsep-1">Column</th>
<th id="video-mediation-demand-report__entry__162"
class="entry colsep-1 rowsep-1">Type</th>
<th id="video-mediation-demand-report__entry__163"
class="entry colsep-1 rowsep-1">Example</th>
<th id="video-mediation-demand-report__entry__164"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="video-mediation-demand-report__entry__165"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">mediation_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">5660</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">mediation_requests</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The total number of
mediation requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">mediation_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">7789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">mediation_responses</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The total number of
successful video mediation responses where a valid video creative was
returned and unwrapped.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">mediation_response_no_bid</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">2000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">mediation_response_no_bid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of video
mediation no-bid responses.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">mediation_response_timeout</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">677</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">mediation_response_timeout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of video
mediation timeouts.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">mediation_response_error</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">899</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">mediation_response_error</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of video
mediation error responses.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">mediation_latency</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">77</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">mediation_latency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The average video
mediation latency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">waterfall_inclusions</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">54</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">waterfall_inclusions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of video
waterfall inclusions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">average_waterfall_depth</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">7</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">average_waterfall_depth</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The average video
waterfall depth.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">average_waterfall_latency</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">average_waterfall_latency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The average video
waterfall latency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">waterfall_ad_load_attempts</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">110</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">waterfall_ad_load_attempts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of video
waterfall ad load attempts.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">waterfall_ad_load_success</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">77</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">waterfall_ad_load_success</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of
successful ad loads for video waterfall.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">waterfall_ad_load_vast_error</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">22</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">waterfall_ad_load_vast_error</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of VAST
errors for ad loads in video waterfall.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">waterfall_ad_load_timeout</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">55</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">waterfall_ad_load_timeout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The number of time
outs for ad loads in video waterfall.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__161">average_waterfall_position</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__163"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__164"><code
class="ph codeph">average_waterfall_position</code></td>
<td class="entry colsep-1 rowsep-1"
headers="video-mediation-demand-report__entry__165">The average of video
waterfall positions.</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**

The JSON file should include the `report_type`
`"video_mediation_demand_analytics"`, as well as the `columns`
(dimensions and metrics) and `report_interval` that you want to
retrieve. You can also filters for specific dimensions, define
granularity (year, month, day), and specify the format in which the data
should be returned (csv, excel, or html). For a full explanation of
fields that can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat buyer_bid_error

{
    "report":
    {
        "report_type":"video_mediation_demand_report",
        "columns":[
            "hour",
            "media_type",
            "buyer_member",
            "imps"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```



**POST the request to the Reporting Service**



``` pre
$ curl -b cookies -c cookies -X POST -d @video_mediation_demand 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```





**GET the report status from the Report Service**

``` pre
Make a GET call with the Report ID to retrieve the status of the report. Continue making this GET call until the {{execution_status}} is "ready". Then use the *report-download* service to save the report data to a file, as described in the next step.
```





``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"video_mediation_demand\",\"columns\":[\"hour\",\"media_type\",
            \"buyer_member\",\"imps\",
            \"report_interval\":\"last_48_hours\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
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



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/video_mediation_demand.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








