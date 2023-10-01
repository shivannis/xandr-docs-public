---
Title : Curator Segment Performance Report
Description : Note: This report is only available to
curators.
---


# Curator Segment Performance Report









Note: This report is only available to
curators.





The Curator Segment Performance Report provides curators insights into
how their targeted segments are contributing to the overall performance
of their curated deals. The report provides data on all targeted
segments (includes and excludes) that contributed towards transacted
impressions. For curators, this includes all curated deal activity.

For instructions on retrieving a report, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the <a
href="curator-segment-performance-report.html#curator-segment-performance-report__example"
class="xref">Example</a> below.





## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- last_hour
- last_48_hours
- today
- yesterday
- last_7_days
- month_to_date
- quarter_to_date
- last_month
- last_30_days

**Data Retention Period**

Data in this report is retained for 429 days.





Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="curator-segment-performance-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="curator-segment-performance-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="curator-segment-performance-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="curator-segment-performance-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="curator-segment-performance-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">ID of the bidder
who bought on the transaction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"That Bidder"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Name of the
bidder who bought on the transaction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member ID of the
buyer who bought on the transaction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"That Buyer"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member name of
the buyer who bought on the transaction</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">curated_deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Curated deal
ID</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">cureated_deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"My Deal Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Curated deal
name</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">curated_line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Line Item ID of
the curator member object that owns the deal line item associated with
the curated deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">curated_line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"My Curated LI"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Line Item name of
the curator member object that owns the deal line item associated with
the curated deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">curator_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member ID of the
curator account</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">curator_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"My Account"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member name of
the curator account</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"2020-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">The day of the
auction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"desktops &amp; laptops"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Device type on
which the impression was served. Possible values are:
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
headers="curator-segment-performance-report__entry__1">device_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>Device type ID
on which the impression was served. Possible values are:</p>
<ul>
<li><code class="ph codeph">0</code> (other devices)</li>
<li><code class="ph codeph">1</code> (desktops &amp; laptops)</li>
<li><code class="ph codeph">2</code> (mobile phones)</li>
<li><code class="ph codeph">3</code> (tablets)</li>
<li><code class="ph codeph">4</code> (tv)</li>
<li><code class="ph codeph">5</code> (game consoles)</li>
<li><code class="ph codeph">6</code> (media players)</li>
<li><code class="ph codeph">7</code> (set top box)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">device_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"desktops &amp; laptops"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Device type name
on which the impression was served. Possible values are:
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
headers="curator-segment-performance-report__entry__1">geo_country_code</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">The country code
in which the impression took place. For impression requests for which
Xandr received no indication that the ad was
rendered (i.e., non-transacted), country information is not
provided.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">The country name
in which the impression took place. For impression requests for which
Xandr received no indication that the ad was
rendered (i.e., non-transacted), country information is not
provided.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"2020-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>The hour of
the auction</p>


Note: For impressions older than 100
days, the day will be returned rather than the hour.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>Media type
associated with the creative that served on this impression. Possible
values are:</p>
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>Media type ID
associated with the creative that served on this impression. Possible
values are:</p>
<ul>
<li><code class="ph codeph">1</code> (banner)</li>
<li><code class="ph codeph">2</code> (pop)</li>
<li><code class="ph codeph">3</code> (interstitial)</li>
<li><code class="ph codeph">4</code> (video)</li>
<li><code class="ph codeph">5</code> (text)</li>
<li><code class="ph codeph">6</code> (expandable)</li>
<li><code class="ph codeph">8</code> (skin)</li>
<li><code class="ph codeph">9</code> (facebook)</li>
<li><code class="ph codeph">10</code> (image and text)</li>
<li><code class="ph codeph">11</code> (high impact)</li>
<li><code class="ph codeph">12</code> (native)</li>
<li><code class="ph codeph">13</code> (audio)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">media_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Media type name
associated with the creative that served on this impression. Possible
values are:
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"2020-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">The month of the
auction</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">segment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">ID of a segment
that targeted the impression.

Note: Curators running this report will
only see segments that they assign to their deal line item objects. For
example, a curator pulling this report will not see segments tied to a
third-party seller deal that they are buying.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">segment_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"That Segment"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Name of a segment
that targeted the impression.

Note: Curators running this report will
only see segments that they assign to their deal line item objects. For
example, a curator pulling this report will not see segments tied to a
third-party seller deal that they are buying.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">segment_owner_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member ID of the
segment owner that owns the targeted segment(s)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">segment_owner_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"That Segment Owner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member name of
the segment owner that owns the targeted segment(s)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">4567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member ID of the
seller where the curated transaction served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Member name of
the seller where the curated transaction served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">supply_strategy</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"Deals"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5">Distinguishes
between the different supply channels used to source impressions for the
curator.

Note: Only <code
class="ph codeph">"Open Exchange"</code> and <code
class="ph codeph">"Deals"</code> are currently relevant for the curator.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">supply_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>ID of the
supply type of the ad that was rendered. Possible values are:</p>
<ul>
<li><p><code class="ph codeph">0</code> (web)</p></li>
<li><code class="ph codeph">1</code> (mobile_web)</li>
<li><code class="ph codeph">2</code> (mobile_app)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">supply_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>Name of the
supply type of the ad that was rendered. Possible values are:</p>
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__1">targeting_type</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__4"><code
class="ph codeph">"Inclusion"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__5"><p>Whether the
segment contributed to the line item targeting by being included or
excluded. Possible values are:</p>
<ul>
<li><code class="ph codeph">"Inclusion"</code></li>
<li><code class="ph codeph">"Exclusion"</code></li>
</ul></td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="curator-segment-performance-report__entry__161"
class="entry colsep-1 rowsep-1">Column</th>
<th id="curator-segment-performance-report__entry__162"
class="entry colsep-1 rowsep-1">Type</th>
<th id="curator-segment-performance-report__entry__163"
class="entry colsep-1 rowsep-1">Example</th>
<th id="curator-segment-performance-report__entry__164"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_curator_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">31.513709</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The amount of
spend (transacted via impressions targeted by the segment) a curator
sent to exchange sellers net of curator fees and margins, if
applicable</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_curator_media_cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">1.6654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The amount of
spend (transacted via impressions targeted by the segment, expressed as
an eCPM based on transacted impressions) a curator sent to exchange
sellers net of curator fees and margins, if applicable</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_curator_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">48.4185</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The amount of
spend (transacted via impressions targeted by the segment) a buyer sent
to the curator net of buyer fees, if applicable</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_curator_revenue_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">2.5588</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The amount of
spend (transacted via impressions targeted by the segment, expressed as
an eCPM based on targeted impressions) a buyer sent to the curator net
of buyer fees, if applicable</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">18922</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The number of
transacted impressions that the segment targeted</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_view_measured_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">17867</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The number of
transacted impressions that Xandr measured
viewability on that the segment targeted</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__161">targeted_viewable_impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__163"><code
class="ph codeph">14135</code></td>
<td class="entry colsep-1 rowsep-1"
headers="curator-segment-performance-report__entry__164">The number of
viewed impressions that the segment targeted</td>
</tr>
</tbody>
</table>



<div id="curator-segment-performance-report__example"
>

## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type` of
`"curator_segment_performance"`, as well as the `columns` (dimensions
and metrics) and `report_interval` that you want to retrieve. You can
also filter for specific dimensions, define granularity (year, month,
day), and specify the format in which the data should be returned (csv,
excel, or html). For a full explanation of fields that can be included
in the JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat curator_segment_performance

{
    "report": {
        "report_type": "curator_segment_performance",
        "columns": [
            "curated_deal_id",
            "cureated_deal_name",
            "segment_id",
            "segment_name",
            "targeting_type",
            "targeted_impressions",
            "targeted_curator_revenue"
        ],
        "report_interval": "today",
        "format": "csv"
    }
}
```



**`POST` the request to the Reporting Service**



``` pre
$ curl -b cookies -X POST -d @curator_segment_performance 'https://api.appnexus.com/report'

{
    "response": {
        "status": "OK",
        "report_id": "a2c95fcff2d8759e69cec123364f9b32"
    }
}
```



**`GET` the report status from the Report Service**

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
            "json_request": "{\"report\":{\"report_type\":\"curator_segment_performance\",\"columns\":[\"curated_deal_id\",\"cureated_deal_name\",\"segment_id\",\"segment_name\",\"targeting_type\",\"targeted_impressions\",\"targeted_curator_revenue\"],\"report_interval\":\"today\",\"format\":\"csv\",\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"filters\":[{\"curator_member_id\":\"12025\"}],\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1599264000,\"start_date\":1599177600,\"user_id\":\"123456\"}",
            "url": "report-download?id=a2c95fcff2d8759e69cec123364f9b32"
        },
        "execution_status": "ready"
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



Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=a2c95fcff2d8759e69cec123364f9b32' > /tmp/curator_segment_performance.csv
```





Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










