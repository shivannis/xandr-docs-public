---
Title : Curator Analytics Report
Description : <b>Note:</b> This report is only available to
ms.date: 10/28/2023
ms.custom: digital-platform-api
curators.
---


# Curator Analytics Report









<b>Note:</b> This report is only available to
curators.





The Curator Analytics Report provides curators insight into how money is
flowing from demand to supply within their curated marketplace.

For instructions on retrieving a report, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="curator-analytics-report.md#curator-analytics-report__example"
class="xref">Example</a> below.





## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- last_hour
- today
- yesterday
- month_to_date
- last_month
- lifetime

**Data Retention Period**

Data in this report is retained for 1100 days.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.





**Time ranges including dates occurring greater than 45 days ago**

If you create Curator Analytics reports with the `report_interval` set
to `"lifetime"`, your report (regardless of metrics included) will be
added to a special queue for "resource-intensive" reports. As a result,
the report may take longer than usual to complete. In addition, these
resource-intensive reports may, due to the amount of data being
requested, fail before being completed. If your report fails to
complete, you will receive a notification. If your report request fails
or is deleted, you can:

- rerun the report at a later time.
- use a report type other than `curator_analytics`.
- alter the way you structure your reports (if possible) so they do not
  include dates greater than 45 days ago.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="curator-analytics-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="curator-analytics-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="curator-analytics-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="curator-analytics-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="curator-analytics-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">ID of the bidder who bought
on the transaction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Bidder"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Name of the bidder who
bought on the transaction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">billing_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The currency <span
class="ph">Xandr bills the curator in</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">brand_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Brand ID associated with
the creative that served on the curated deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">brand_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Brand"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Brand name associated with
the creative that served on the curated deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Buyer (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member name of the buyer
who bought on the transaction with their member ID in brackets</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member ID of the buyer who
bought on the transaction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Buyer"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member name of the buyer
who bought on the transaction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"My Deal Name (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Curated deal name with its
deal ID in brackets</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Advertiser ID of the
curator member object that owns the deal line item associated with the
curated deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Advertiser"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Advertiser name of the
curator member object that owns the deal line item associated with the
curated deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Curated deal ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Insertion Order ID of the
curator member object that owns the deal line item associated with the
curated deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Line Item ID of the curator
member object that owns the deal line item associated with the curated
deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"IO Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Insertion Order name of the
curator member object that owns the deal line item associated with the
curated deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"My Curated LI"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Line Item name of the
curator member object that owns the deal line item associated with the
curated deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curated_deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"My Deal Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Curated deal name</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curator_margin_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Percent"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5"><p>Margin type (if a
curator has a margin associated to the line item). Possible values:</p>
<ul>
<li><code class="ph codeph">"Unknown"</code></li>
<li><code class="ph codeph">"Percent"</code></li>
<li><code class="ph codeph">"CPM"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curator_margin_type_filterable</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5"><p>Filterable margin type
(if a curator has a margin associated to the line item). Possible
values:</p>
<ul>
<li><code class="ph codeph">0</code> (Unknown)</li>
<li><code class="ph codeph">1</code> (Percent)</li>
<li><code class="ph codeph">2</code> (CPM)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curator_member</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"My Account (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member name of the curator
account with their member ID in brackets</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curator_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member ID of the curator
account</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">curator_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"My Account"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member name of the curator
account</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"2020-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The day of the auction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"desktops &amp; laptops"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Device type on which the
impression was served. Possible values are:
<ul>
<li><code class="ph codeph">"desktops &amp; laptops"</code></li>
<li><code class="ph codeph">"tablets"</code></li>
<li><code class="ph codeph">"mobile phones"</code></li>
<li><code class="ph codeph">"tv"</code></li>
<li><code class="ph codeph">"game consoles"</code></li>
<li><code class="ph codeph">"set top box"</code></li>
<li><code class="ph codeph">"media players"</code></li>
<li><code class="ph codeph">"other devices"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The country in which the
impression took place. For impression requests for which <span
class="ph">Xandr received no indication that the ad was rendered
(i.e., non-transacted), country information is not provided.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"2020-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5"><p>The hour of the
auction</p>


<b>Note:</b> For impressions older than 100
days, the day will be returned rather than the hour.

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5"><p>Media type associated
with the creative that served on this impression. Possible values
are:</p>
<ul>
<li><code class="ph codeph">"banner"</code></li>
<li><code class="ph codeph">"pop"</code></li>
<li><code class="ph codeph">"interstitial"</code></li>
<li><code class="ph codeph">"video"</code></li>
<li><code class="ph codeph">"text"</code></li>
<li><code class="ph codeph">"expandable"</code></li>
<li><code class="ph codeph">"skin"</code></li>
<li><code class="ph codeph">"facebook"</code></li>
<li><code class="ph codeph">"image and text"</code></li>
<li><code class="ph codeph">"high impact"</code></li>
<li><code class="ph codeph">"native"</code></li>
<li><code class="ph codeph">"audio"</code></li>
<li><code class="ph codeph">"Unknown"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">member_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The currency associated
with the curator member's seat</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member ID of the curator
account</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">mobile_application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><p><code
class="ph codeph">"343200656"</code> (iOS) or</p>
<p><code class="ph codeph">"com.rovio.angrybirds"</code></p>
<p>(Android)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The mobile application ID
associated with the creative that served on this impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">mobile_application_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Angry Birds"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The mobile application name
associated with the creative that served on this impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"2020-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The month of the
auction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Ivillage 160x600 (456)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Placement name of the
seller where the curated transaction served with the placement's ID in
brackets</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">placement_group_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">4321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Placement Group ID of the
seller where the curated transaction served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">placement_group_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Placement Group Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Placement Group name of the
seller where the curated transaction served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Placement ID of the seller
where the curated transaction served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Ivillage 160x600"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Placement name of the
seller where the curated transaction served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Publisher ID of the seller
where the curated transaction served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Newscorp"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Publisher name of the
seller where the curated transaction served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_deal</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Seller Deal (6543)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The seller deal name being
included in a curated deal with the seller deal ID in brackets

<b>Note:</b> If applicable, since not all
curated deals will include a seller deal
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">6543</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The seller deal ID being
included in a curated deal

<b>Note:</b> If applicable, since not all
curated deals will include a seller deal
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Seller Deal"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The seller deal name being
included in a curated deal

<b>Note:</b> If applicable, since not all
curated deals will include a seller deal
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_deal_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The ID of the type of
seller deal being included in a curated deal, if applicable. Possible
values are:
<ul>
<li><code class="ph codeph">1</code> (Open Auction)</li>
<li><code class="ph codeph">2</code> (Private Auction)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_deal_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Private Marketplace"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The name of the type of
seller deal being included in a curated deal, if applicable. Possible
values are:
<ul>
<li><code class="ph codeph">"---"</code> (Open Auction)</li>
<li><code class="ph codeph">"Private Marketplace"</code> (Private
Auction)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">4567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member ID of the seller
where the curated transaction served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Member name of the seller
where the curated transaction served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"bestsiteever.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Site Domain / App where the
curated transaction served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"320x50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The size of the
creative</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">video_context</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"pre-roll"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The type of video format
the curated transaction served on. Possible values are:
<ul>
<li><code class="ph codeph">"unknown"</code></li>
<li><code class="ph codeph">"pre-roll"</code></li>
<li><code class="ph codeph">"mid-roll"</code></li>
<li><code class="ph codeph">"post-roll"</code></li>
<li><code class="ph codeph">"outstream"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">video_content_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Short-Form"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">Length of the content in
seconds (two options: short (less than 480s), long (more than
480s).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">content_delivery_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"VOD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The type of streaming
content delivery.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">video_content_genre</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Action"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The main genre of the
program on which the ad will be played.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">video_program_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Movie"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The higher level
categorization of the program on which the ad will be played.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__1">video_content_rating</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__4"><code
class="ph codeph">"Children(7+)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__5">The type of rating of the
content.</td>
</tr>
</tbody>
</table>





## Metrics



<b>Note:</b> Clicks metrics are available for
impressions bought through Microsoft Invest. Video
metrics are available for impressions bought through any DSP.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="curator-analytics-report__entry__276"
class="entry colsep-1 rowsep-1">Column</th>
<th id="curator-analytics-report__entry__277"
class="entry colsep-1 rowsep-1">Type</th>
<th id="curator-analytics-report__entry__278"
class="entry colsep-1 rowsep-1">Example</th>
<th id="curator-analytics-report__entry__279"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="curator-analytics-report__entry__280"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">curator_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">2.57676</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The profit a curator
makes on a transaction

<b>Note:</b> When taken as a percentage,
Curator Margin is calculated off Curator Revenue.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">curator_net_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">20.6138056</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_revenue -
curator_margin - curator_tech_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The amount of spend a
curator sends to exchange sellers, net of curator fees and margins, if
applicable. This is the same as gross seller revenue, inclusive of
seller fees.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">curator_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">25.767257</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The amount of spend a
buyer sends to the curator, net of buyer fees, if applicable. This is
the same as buyer media cost, exclusive of buyer fees.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">curator_tech_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">2.5767257</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_tech_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The fees <span
class="ph">Xandr charges to a curator on a transaction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">curator_total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">23.1905313</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_revenue -
curator_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The amount of spend a
curator sends to the exchange and exchange sellers, net of curator
margin but gross of curator fees</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The number of delivered
impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">viewdef_viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">1638</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">viewdef_viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The number of measured
impressions that were viewable, per the buyer's viewability
definition</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">viewdef_view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">double</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">0.70</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">viewdef_view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The number of measured
impressions that were viewable, per the buyer's viewability definition,
divided by the number of measured impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">1872</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that an impression is viewable if 50% of the pixels are
in-view during 1 consecutive second</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">view_measurable_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">172</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">view_measurable_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">7</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of
clicks across all impressions. For Microsoft Invest
DSP, clicks from all media types are supported. For external
DSPs, only clicks from Native and Video media types are supported.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">double</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">0.3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">clicks / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The proportion of Clicks
versus Imps.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">buyer_cpc</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">3.68</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_revenue /
clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">Curator Revenue divided
by Clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
an error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">2335</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
the first segment of the video creative was downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">double</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">0.99786</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_starts / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The proportion of Video
Starts versus Imps.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
a user skipped the video.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">double</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">0.0051282</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_skips / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The proportion of Video
Skips versus Imps.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">2100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
the video completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">2000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
the video completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">1900</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
the video completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">1800</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The total number of times
the video played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">double</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">0.76923</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">video_completions /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">The proportion of Video
Completions versus Imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">buyer_cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">0.014315</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_revenue /
video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">Curator Revenue divided
by Video Completions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__276">buyer_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__277">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__278"><code
class="ph codeph">11.01164</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__279">curator_revenue / imps *
1000</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-analytics-report__entry__280">Curator Revenue divided
by Imps expressed as a CPM.</td>
</tr>
</tbody>
</table>




## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type` of `"curator_analytics"`,
as well as the `columns` (dimensions and metrics) and `report_interval`
that you want to retrieve. You can also filter for specific dimensions,
define granularity (year, month, day), and specify the format in which
the data should be returned (csv, excel, or html). For a full
explanation of fields that can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat curator_analytics

{
    "report": {
        "columns": [
            "hour",
            "buyer_member_name",
            "curated_deal",
            "imps",
            "curator_revenue",
            "curator_margin"
        ],
        "format": "csv",
        "report_interval": "today",
        "report_type": "curator_analytics"
    }
}
```

**`POST` the request to the Report Service**



``` pre
$ curl -b cookies -X POST -d @curator_analytics 'https://api.appnexus.com/report'

{
   "response":{
      "status":"OK",
      "report_id":"6b177543a9411ffa67b09bdf5e76cac1"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=6b177543a9411ffa67b09bdf5e76cac1'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2020-08-25 13:03:37",
         "json_request":"{\"report\":{\"report_type\":\"curator_analytics\",\"columns\":[\"hour\",\"buyer_member_name\",\"curated_deal\",\"imps\",\"curator_revenue\",\"curator_margin\"],\"report_interval\":\"today\",\"format\":\"csv\",\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"filters\":[{\"member_id\":\"123456\"}],\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1598400000,\"start_date\":1598313600,\"user_id\":\"987654\"}",
         "url": "report-download?id=6b177543a9411ffa67b09bdf5e76cac1"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=6b177543a9411ffa67b09bdf5e76cac1' > /tmp/curator_analytics.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










