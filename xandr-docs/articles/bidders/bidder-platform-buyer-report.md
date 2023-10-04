---
Title : Bidder Platform Buyer Report
Description : The Bidder Platform Buyer Report provides granular transaction
information to buyers (down to the tag level). For instructions on
---


# Bidder Platform Buyer Report



The Bidder Platform Buyer Report provides granular transaction
information to buyers (down to the tag level). For instructions on
retrieving this report, see the
<a href="bidder-platform-buyer-report.html#ID-000060b8__ex"
class="xref">Example</a> below.



Tip: Need more than 90 days of data?

The `bidder_platform_buyer` and `platform_seller` types pull from tables
that store the last 90 days worth of data. For data beyond the past 90
days, please use the `buyer_platform_billing` and
`seller_platform_billing` report types.





## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- `current_hour`
- `last_hour`
- `last_48_hours`
- `today`
- `yesterday`
- `last_7_days`
- `month_to_date`
- `quarter_to_date`
- `last_month`
- `lifetime`
- `mtd`
- `month_to_yesterday`





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000060b8__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-000060b8__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000060b8__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-000060b8__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
month of the year in which the event being counted occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
day of the year in which the event being counted occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
hour in which the event being counted occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code class="ph codeph">year</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
year in which the event being counted occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
internal ID of the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
internal ID of the seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">seller_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name of the seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">seller_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">tag_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
ID of the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
internal ID of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">publisher_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code class="ph codeph">size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
size of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">geo_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name of the country followed by the ID (<span
class="ph">Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">geo_country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
country where the event being counted (e.g., click) occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">content_category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
ID of the content category that the inventory where the impression
occurred was associated with. For more information about content
categories, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">content_category_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
name of the content category that the inventory where the impression
occurred was associated with. For more information about content
categories, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">content_category</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">imp_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
type of impression served. Possible values:
<ul>
<li>1 = blank</li>
<li>2 = PSA</li>
<li>3 = default error</li>
<li>4 = default</li>
<li>5 = kept</li>
<li>6 = resold</li>
<li>7 = RTB</li>
<li>8 = PSA resulting from a default error</li>
<li>9 = external impression</li>
<li>10 = external click</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
ID of the creative that served on the impression where the "event"
you're counting occurred. For more information about creatives, see the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">creative_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
name of the creative that served on the impression where the "event"
you're counting occurred. For more information about creatives, see the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">creative</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
ID of the bidder that purchased the impression where the "event" you're
reporting on occurred. For more information about bidders, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
name of the bidder that purchased the impression where the "event"
you're reporting on occurred. For more information about bidders, see
the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">bidder</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
internal ID of the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">site_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name of the site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code class="ph codeph">site</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">tag_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name of the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code class="ph codeph">tag</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">buyer_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
buyer member's selected currency. For a list of supported currencies,
see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">supply_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
type of inventory. Possible values:
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">publisher_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
custom code for the publisher, entered to correspond to the publisher
code within the external system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">site_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
custom code for the site, entered to correspond to the site code within
the external system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name of the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">buyer_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__4"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">buyer_seat_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
Custom Buyer Seat ID (submitted by DSP) that was used to bid on the
impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__1"><code
class="ph codeph">buyer_seat_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__4">The
display name for the buyer seat code</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000060b8__entry__157"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-000060b8__entry__158"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000060b8__entry__159"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-000060b8__entry__160"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">imps_bought</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">imps_bought</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The total number of impressions
purchased successfully.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">buyer_spend</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">buyer_spend</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The amount the buyer pays for the cost
of media.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The total number of clicks.

Note: Clicks are not logged for
external demand partners.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">click_rate_sold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159">(<code class="ph codeph">clicks</code>
/ <code class="ph codeph">imps_bought</code> </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The "click-through rate", or CTR.

Note: Clicks are not logged for
external demand partners.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">buyer_ecpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">money</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000060b8__entry__159">(
<code class="ph codeph">buyer_spend</code> / <code
class="ph codeph">imps_bought</code> ) * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The buyer's cost per impression
expressed in <a
href="https://docs.xandr.com/bundle/industry-reference/page/online-advertising-and-ad-tech-glossary.html"
class="xref" target="_blank">eCPM</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">buyer_spend_buyer_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">buyer_spend</code>, expressed in the buyer's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The buyer's total spend in their
selected currency. For a list of supported currencies, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">buyer_ecpm_buyer_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">buyer_ecpm</code>, expressed in the buyer's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The buyer's cost per impression in
their selected currency. For a list of supported currencies, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">imps_viewed</code><br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">imps_viewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The number of measured impressions
that were viewable, per the IAB Viewability definition, which states
that an impression is viewable if 50% of the pixels are in-view during 1
consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">view_measured_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">view_measured_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The total number of impressions that
were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">view_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">view_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The percentage of impressions that
were viewable out of the total number of impressions measured for
viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__157"><code
class="ph codeph">view_measurable_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__158">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__159"><code
class="ph codeph">view_measurable_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000060b8__entry__160">The percentage of impressions measured
for viewability out of the total number of impressions. (View Measured
Imps / Imps)</td>
</tr>
</tbody>
</table>



<div id="ID-000060b8__ex" >

## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type "bidder_platform_buyer"`,
as well as the `columns` (dimensions and metrics) and `report_interval`
that you want to retrieve. You can also filter specific dimensions,
define granularity (year, month, day), and specify the format in which
the data should be returned (csv, excel, or html). For a full
explanation of fields that can be included in the JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/report-service.html"
class="xref" target="_blank">Report Service</a>. 

``` pre
$ cat report
{
    "report": {
        "report_type": "bidder_platform_buyer",
        "timezone": "PST",
        "report_interval": "last_7_days",
        "name": "Example Buyer Report",
        "columns": [
            "day",
            "publisher_id",
            "publisher_name",
            "publisher_code",
            "buyer_member_id",
            "buyer_member_name",
            "buyer_ecpm",
            "buyer_spend"
        ]
    }
}
```



Note: To order by day, insert this
object into your JSON file after the "columns" array:

``` pre
"orders": ["day"]
```



**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @report 'https://api.adnxs.com/report'
{
  "response": {
    "status": "OK",
    "report_id": "bfe2ba2ea54a51115db942d591a7b5d9",
  }
}
```

**GET the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the {{execution_status}}
is {{"ready"}}. Then use the \*report-download\* service to save the
report data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report?id=bfe2ba2ea54a51115db942d591a7b5d9'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "url": "report-download?id=bfe2ba2ea54a51115db942d591a7b5d9"
      },
      "execution_status":"ready"
   }
}
```

**GET the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the \*report-download\* service. You can
find the service and Report ID in the {{url}} field of the previous
`GET` response. When identifying the file that you want to save to, be
sure to use the file extension of the {{"format"}} that you specified in
your initial `POST`.



Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use {{-i}} or {{-v}} in your call to expose the response
header.



``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report-download?id=bfe2ba2ea54a51115db942d591a7b5d9' > report.csv
```

<div id="ID-000060b8__note_kb5_2zv_mwb" 

Note: Use the id that was given in the
response from when you initially posted the report.







## Schedule a frequently run report

You can schedule reports that you would like to pull regularly. See the
Saved Report Service for more information.





## Related Topics

- <a href="report-service.html" class="xref">Report Service</a>

- <a href="completed-creative-audits-report.html" class="xref">Completed
  Creative Audits Report</a>

- <a href="bidder-platform-buyer-report.html#ID-000060b8"
  class="xref">Bidder Platform Buyer Report</a>

- <a href="bidder-billing-report-api.html" class="xref">Bidder Billing
  Report API</a>

- <a href="platform-seller-report.html" class="xref">Platform Seller
  Report</a>

- <a href="seller-platform-billing-report.html" class="xref">Seller
  Platform Billing Report</a>

- <a href="inventory-availability-reporting.html" class="xref">Inventory
  Availability Reporting</a>

- <a href="reporting-timezones.html" class="xref">Reporting Timezones</a>

- <a href="saved-report-service.html" class="xref">Saved Report
  Service</a>






