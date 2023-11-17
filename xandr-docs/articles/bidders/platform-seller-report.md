---
Title : Platform Seller Report
Description : <div id="ID-00006673__section_mnw_xg4_nwb" >
## Platform Seller Report
The **Platform Seller Report** can be used to invoice buyers or
reconcile internal transaction records. Using this report, you can view
---


# Platform Seller Report



<div id="ID-00006673__section_mnw_xg4_nwb" >

## Platform Seller Report



The **Platform Seller Report** can be used to invoice buyers or
reconcile internal transaction records. Using this report, you can view
transaction information at the tag level.

For instructions on retrieving this report, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/platform-seller-report.html#PlatformSellerReport-Example"
class="xref" target="_blank">Example</a> below.



## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- `current_hour`
- `last_hour`
- `today`
- `yesterday`
- `last_48_hours`
- `last_7_days`
- `month_to_yesterday`
- `month_to_date`
- `quarter_to_date`
- `last_month`
- `lifetime`
- `mtd`





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006673__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00006673__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00006673__entry__3"
class="entry colsep-1 rowsep-1">Group?</th>
<th id="ID-00006673__entry__4"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-00006673__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5">Month.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5">Day.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
hour of the auction.

Note: For impressions older than 100
days, the day will be returned rather than the hour.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code class="ph codeph">year</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5">Year.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
internal ID of the buying member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the buying member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">buyer_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
internal ID of the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">seller_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">seller_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">tag_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
ID of the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
internal ID of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">publisher_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code class="ph codeph">size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
size of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">geo_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the country followed by the ID (<span
class="ph">Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">geo_country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5">Country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">imp_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
gender of the user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
internal ID of the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">site_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code class="ph codeph">site</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">is_dw</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">If
true, the impression was served by Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
internal ID of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">bidder</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">tag_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code class="ph codeph">tag</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">price_bucket_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
ID of the price bucket. For more information about price buckets, see
the description of the <code class="ph codeph">price_buckets</code>
field on the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
class="xref" target="_blank">Member Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">is_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">If
true, the impression was served successfully.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">cleared_direct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">If
this is set to 1, then the impression was successfully served on direct
inventory. Possible values:
<ul>
<li>0 = not direct inventory</li>
<li>1 = direct inventory</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">seller_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
seller member's selected currency. For a list of supported currencies,
see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">supply_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
type of inventory. Possible values:
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">publisher_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
custom code for the publisher, entered to correspond to the publisher
code within the external system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">site_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
custom code for the site, entered to correspond to the site code within
the external system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__1"><code
class="ph codeph">buyer_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__5">The
display name of the buying member followed by the ID (<span
class="ph">Xandr format).</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006673__entry__191"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00006673__entry__192"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00006673__entry__193"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-00006673__entry__194"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The total number of impressions
(served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The total number of clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">imps_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">imps_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The total number of impressions served
successfully.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">imps_not_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">imps_not_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The total number of impressions where
someone other than Xandr served the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The seller's revenue per
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">buyer_spend</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">buyer_spend</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The amount the buyer pays for the cost
of media.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">creative_overage_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">creative_overage_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The charge for hosted creatives that
exceed the creative size limit specified in the buyer member's
contract.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">auction_service_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">auction_service_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The fee charged on RTB bought
impressions specified in the buyer member's contract. For example, with
a 10% fee, if the buyer spends $1000 on inventory we then charge them a
$100 fee.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">clear_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">clear_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The fee specified in the buyer
member's contract charged on impressions bought from an external or
partner seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">auction_service_deduction</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">auction_service_deduction</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The deduction on RTB bought
impressions specified in the buyer member's contract. For example, with
a 10% deduction, if they budget $1000 for their campaign, we take $100
from that, leaving the buyer with $900 that is used to purchase
inventory from the seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">seller_ecpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__193">(
<code class="ph codeph">seller_revenue</code> / <code
class="ph codeph">imps_delivered</code> ) * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The seller's revenue expressed in
eCPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">seller_revenue_seller_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193"><code
class="ph codeph">seller_revenue</code>, expressed in the seller's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The seller's revenue per impression in
their selected currency. For a list of supported currencies, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">seller_ecpm_seller_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193">(<code
class="ph codeph">seller_revenue</code> / <code
class="ph codeph">imps_delivered</code>) * 1000, expressed in the
seller's currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The seller's revenue expressed in
eCPM, in the seller's selected currency. For a list of supported
currencies, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/supported-currencies.html"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">imps_viewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The number of measured impressions
that were viewable, per the IAB Viewability definition, which states
that an impression is viewable if 50% of the pixels are in-view during 1
consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">view_measured_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The total number of impressions that
were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">view_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The percentage of impressions that
were viewable out of the total number of impressions measured for
viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__191"><code
class="ph codeph">view_measurable_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__192">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__193">view_measurable_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__194">The percentage of impressions measured
for viewability out of the total number of impressions. (View Measured
Imps / Imps)</td>
</tr>
</tbody>
</table>





## Visible to Administrators Only

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006673__entry__263"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00006673__entry__264"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00006673__entry__265"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-00006673__entry__266"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__263"><code
class="ph codeph">forex_allowance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__264">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__265"><code
class="ph codeph">forex_allowance</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006673__entry__266">A
foreign currency buffer allowance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__263"><code
class="ph codeph">discrepancy_allowance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__264">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__265"><code
class="ph codeph">discrepancy_allowance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006673__entry__266">The deduction on RTB sold impressions
specified in the seller member's contract. This is determined based on
past discrepancies between what Xandr and the
supply partner recorded as won impressions.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type "platform_buyer"`, as well
as the `columns` (dimensions and metrics) and `report_interval` that you
want to retrieve. You can also filter specific dimensions, define
granularity (year, month, day), and specify the format in which the data
should be returned (csv, excel, or html). For a full explanation of
fields that can be included in the JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/platform-seller-report.html#"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat report
{
    "report": {
        "report_type": "platform_seller",
        "timezone": "PST",
        "report_interval": "last_7_days",
        "name": "SSP Monthly Buyer Report",
        "columns": [
            "day",
            "seller_member",
            "publisher_id",
            "publisher_name",
            "publisher_code",
            "buyer_member_id",
            "buyer_member_name",
            "imps",
            "imps_delivered",
            "seller_revenue",
            "buyer_spend"
        ]
    }
}
```



Tip: To order by day, insert this
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



Tip: If an error occurs during
download, the response header will include an HTTP error code and
message. Use {{-i}} or {{-v}} in your call to expose the response
header.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report?id=bfe2ba2ea54a51115db942d591a7b5d9' > report.csv
```

Use the id that was given in the response from when you initially posted
the report.





<div id="ID-00006673__section_u1l_tl4_nwb" >

## Schedule a frequently run report

You can schedule reports that you would like to pull regularly. See the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/saved-report-service.html"
class="xref" target="_blank">Saved Report Service</a> for more
information.



<div id="ID-00006673__section_p2l_tl4_nwb" >

## Related Topics

- <a href="report-service.html" class="xref">Report Service</a>
- <a href="completed-creative-audits-report.html" class="xref">Completed
  Creative Audits Report</a>
- <a href="bidder-platform-buyer-report.html" class="xref">Bidder Platform
  Buyer Report</a>
- <a href="bidder-billing-report-api.html" class="xref">Bidder Billing
  Report API</a>
- <a href="seller-platform-billing-report.html" class="xref">Seller
  Platform Billing Report</a>
- <a href="inventory-availability-reporting.html" class="xref">Inventory
  Availability Reporting</a>
- <a href="reporting-timezones.html" class="xref">Reporting Timezones</a>
- <a href="saved-report-service.html" class="xref">Saved Report
  Service</a>






