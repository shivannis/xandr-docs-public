---
Title : Seller Fill and Delivery Network Report
Description : The Seller Fill and Delivery Report was designed as a troubleshooting
ms.date: 10/28/2023
ms.custom: digital-platform-api
tool to provide sellers granular information regarding all impressions
sent to Xandr for auction and to help diagnose
delivery issues all the way down to the tag and domain level. Using the
---


# Seller Fill and Delivery Network Report





The Seller Fill and Delivery Report was designed as a troubleshooting
tool to provide sellers granular information regarding all impressions
sent to Xandr for auction and to help diagnose
delivery issues all the way down to the tag and domain level. Using the
new descriptive fields, it is possible to see an approximation of
overall fill rate on Xandr using the “Total Ad
Responses" and "Total Ad Requests” metrics.



<b>Note:</b>

- This report only provides directional guidance on potential areas to
  troubleshoot. Figures in this report might see slight discrepancies
  with other standard reports, including the Network Analytics Report
  and the Video Analytics Report.

- We recommend viewing each report independently and not comparing the
  directional figures from the Seller Fill and Delivery Report with
  other Xandr reporting, to avoid unnecessary
  confusion.





The data contained in this report will help pinpoint issues contributing
to untransacted impressions stemming from:

- Improper default/passback tag setup

- Inventory blocklists related to IP or domain blocking

- Video player errors etc.





<b>Note:</b>

**For video sellers only**: As a result of video caching by video
players, the Xandr data pipeline allows a
six-hour window to register a response from a video player after the
auction is complete and the creative VAST XML has been sent to the page,
before considering a video impression ‘non-responsive’ (Bid Sent No
Response). Xandr will update some counts, for
video tags only, six hours after the time of the auction. Therefore, to
receive the most accurate view of video counts across dimensions,
schedule your reports to run after the six-hour window for a given hour
of data.


![Seller Fill and Delivery Network Report](media/seller-fill-and-delivery-network-report.png)




>

## Time Frame

>

The `report_interval` field in the JSON request must be set to one of
the following:

- last_48_hours

- today

- yesterday

- last_7_days

- last_24_days

- last_14_days

- last_2_days

- month_to_date

- quarter_to_date

- last_month

- last_available_day

- last_7_available_days

- last_14_available_days



>

class="note tip note_tip">

<b>Tip:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







>

**Data Retention Period**

Data retention period for this report is 403 days.

The `time_granularity` of the data is `hourly`. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="seller-fill-and-delivery-network-report.md#seller-fill-and-delivery-network-report__seller-fill-and-delivery-network-report-example"
class="xref">Example</a> below.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-fill-and-delivery-network-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-fill-and-delivery-network-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-fill-and-delivery-network-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-fill-and-delivery-network-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-fill-and-delivery-network-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The month of
the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The day of
the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The hour of
the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">2718</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The seller's
Xandr member ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"MegaSeller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The seller's
name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"MegaSeller (2718)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">A full
description of the seller, including both the <code
class="ph codeph">seller_member_name</code>and <code
class="ph codeph">seller_member_id</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">737099</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The ID of
the placement where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"Webmail.com ROS 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The name of
the placement where the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">44389</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The ID
associated with the publisher on whose site the impression
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"LOL - US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The name of
the publisher on whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"LOL - US (44389)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">A full
description of the publisher on whose site the impression occurred,
including the <code class="ph codeph">publisher_name</code> and <code
class="ph codeph">publisher_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The code of
the geographical country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The name of
the geographical country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">223936</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The ID of
the <a
href="site-service.md"
class="xref" target="_blank">site</a> containing this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"Total-Web Email"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The name of
the <a
href="site-service.md"
class="xref" target="_blank">site</a> where the impression
occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"Total-Web Email (223936)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">A full
description of the <a
href="site-service.md"
class="xref" target="_blank">site</a>where the impression occurred,
including the <code class="ph codeph">site_name</code> and <code
class="ph codeph">site_id</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The ID of
the deal. For more information about negotiated deals between buyers and
sellers, see <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a> and <a
href="deal-buyer-setting-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The name of
the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The name of
the deal followed by the ID (Xandr format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">mobile_application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">'343200656' (iOS) or 'com.rovio.angrybirds' (Android)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">A targetable
Apple App Store ID, Google Play package name, or Windows application
ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"gwar-rules-forever.org"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5"><p>The
domain where the impression occurred. There is one additional value that
may appear in place of a domain:</p>
<p><code class="ph codeph">"---"</code> : This means that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', 'mobile_app', and 'mobile_web'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">call_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">"/ttj"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The type of
handler that was used to send the impression to <span
class="ph">Xandr (e.g., ttj, ut, mob, ptv, openrtb)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__1">allowed_media_types</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__4"><code
class="ph codeph">Banner</code>, <code
class="ph codeph">Expandable</code>, <code
class="ph codeph">Native</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__5">The media
types that are allowed to participate in the auction. The permitted
media types is a combination that is enabled through the ad call and
placement settings.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-fill-and-delivery-network-report__entry__126"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-fill-and-delivery-network-report__entry__127"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-fill-and-delivery-network-report__entry__128"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="seller-fill-and-delivery-network-report__entry__129"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">filtered_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">Ad
requests filtered pre-bid by Xandr for inventory
quality.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">imps_kept</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">An
impression where a managed advertiser's creative serves on a managed
publisher's site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">imps_resold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">An
impression that is resold to a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">seller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">Revenue
earned by the Seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">defaults</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">Ad
requests where a default creative served because there were no valid
bids.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">video_player_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">Errors
reported from the video player after the VAST XML has been
delivered.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">video_default_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">Errors
reported from the video player when a default creative should have
served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">bid_sent_no_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129"><p>Bid
responses returned by Xandr where ultimately the
creative does not render.</p>
<p>The most common scenario in which this occurs is when <span
class="ph">Xandr receives an ad request from an external system -
such as a publisher ad server utilizing prebid or a traditional
waterfall - and returns a response, but the external system selects a
different bid.</p>
<p>Other examples of reasons this can occur include:</p>
<ul>
<li>The end user leaves the page before the impression tracker
fires.</li>
<li>An ad is requested but never loads due to lazy loading.</li>
<li>A video player requests an ad but never plays the ad.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">default_no_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">Ad
requests where a default creative was sent but no response was received
from the end ad server. This could be the result of an error or an
alternate default tag was chosen by the final ad server.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">psas_or_blanks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The number
of blanks or PSAs served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">total_ad_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">filtered_requests + imps_kept + imps_resold + defaults + video_player_errors + video_default_errors + bid_sent_no_responses + default_no_responses + psas_or_blanks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The total
number of ad requests sent to Xandr for
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">total_ad_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">imps_kept + imps_resold + video_player_errors + bid_sent_no_responses</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The total
number of ad responses counted within <span
class="ph">Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">response_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">total_ad_responses / (total_ad_requests - filtered_requests)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The rate
of total number of ad responses counted within <span
class="ph">Xandr to the number of ad requests that are not
filtered pre-bid by Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">win_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">(imps_resold+imps_kept)/total_ad_responses</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The rate
of total number of managed and kept impressions to the total number of
ad responses counted within Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">filtered_request_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">filtered_requests/total_ad_requests</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The rate
of filtered requests to the total number of ad requests sent to <span
class="ph">Xandr for auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">fill_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">(imps_resold+imps_kept)/total_ad_requests</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">The rate
of total number of resold and kept impressions to the total number of ad
requests sent to Xandr for auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">(seller_revenue/total_ad_requests)*1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">For
definition of rpm, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. In this report, rpm is seller
revenue earned per 1000 ad requests sent to <span
class="ph">Xandr for auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__126">ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__127">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__128"><code
class="ph codeph">(seller_revenue/imps_resold)*1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-fill-and-delivery-network-report__entry__129">For
definition of ecpm, see the <a
href="industry-reference/online-advertising-and-ad-tech-glossary.md"
class="xref" target="_blank">Glossary</a>. In this report, ecpm is
seller revenue earned per 1000 impression resold to a third-party
buyer.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"seller_fill_and_delivery_network"`, as well as the columns (dimensions
and metrics) and `report_interval` that you want to retrieve. You can
also filter for specific dimensions, define granularity (year, month,
day), and specify the format in which the data should be returned (csv,
excel, or html). For a full explanation of fields that can be included
in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat seller_fill_and_delivery_network

{"report":
    {
        "format": "csv",
        "report_interval": "yesterday",
        "row_per": ["geo_country"],
        "columns":["placement_id","imps_kept","total_ad_responses","total_ad_requests","geo_country"],
        "report_type": "seller_fill_and_delivery_network"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @seller_fill_and_delivery_network "https://api.appnexus.com/report"

{
   "response":{
      "status":"OK",
      "report_id":"c445bca183a3d338dc1c5b85a3d484f5"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=c445bca183a3d338dc1c5b85a3d484f5'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-11-19 22:33:31",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"geo_country\"],\"columns\":[\"placement_id\",\"imps_kept\",\"total_ad_responses\",\"total_ad_requests\",\"geo_country\"],\"report_type\":\"seller_fill_and_delivery_network\",\"filters\":[{\"seller_member_id\":\"958\"}]}}",
            "url": "report-download?id=c445bca183a3d338dc1c5b85a3d484f5"
        },
        "execution_status": "ready"
    }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and reportID in the `url` field of the response to your
previous `GET` call. When identifying the file that you want to save to,
be sure to use the file extension of the file `"format"` that you
specified in your initial `POST`.



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=c445bca183a3d338dc1c5b85a3d484f5' > /tmp/seller_fill_and_delivery_network.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








