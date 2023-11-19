---
Title : Seller Platform Billing Report
## Seller Platform Billing Report
Suppliers gather transaction information using the Seller Platform
Billing Report to invoice buyers or reconcile their internal transaction
records.
ms.date : 10/28/2023
---


# Seller Platform Billing Report




## Seller Platform Billing Report

Suppliers gather transaction information using the Seller Platform
Billing Report to invoice buyers or reconcile their internal transaction
records.

For instructions on retrieving a report, see the Example below.





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
<th id="ID-00006bea__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00006bea__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00006bea__entry__3"
class="entry colsep-1 rowsep-1">Group?</th>
<th id="ID-00006bea__entry__4"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-00006bea__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5">Month.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5">Day.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
hour of the auction.

<b>Note:</b> For impressions older than 100
days, the day will be returned rather than the hour.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code class="ph codeph">year</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5">Year.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
internal ID of the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
internal ID of the seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">seller_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
display name of the seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">seller_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
internal ID of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">publisher_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
display name of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">geo_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
display name of the country followed by the ID (<span
class="ph">Xandr format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">geo_country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5">Country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">imp_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
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
headers="ID-00006bea__entry__1"><code
class="ph codeph">site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
internal ID of the site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">site_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
display name of the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code class="ph codeph">site</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">is_dw</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">If
true, the impression was served by Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
internal ID of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
display name of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">bidder</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">is_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">If
true, the impression was served successfully.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">cleared_direct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">If
this is set to 1, then the impression was successfully served on direct
inventory. Possible values:
<ul>
<li>0 = not direct inventory</li>
<li>1 = direct inventory</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">seller_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
seller member's selected currency. For a list of supported currencies,
see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">buyer_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
buyer member's selected currency. For a list of supported currencies,
see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">publisher_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
custom code for the publisher, entered to correspond to the publisher
code within the external system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">site_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
custom code for the site, entered to correspond to the site code within
the external system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00006bea__entry__5">The
display name of the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__1"><code
class="ph codeph">buyer_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__5"><strong>Deprecated.</strong></td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006bea__entry__151"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00006bea__entry__152"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00006bea__entry__153"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-00006bea__entry__154"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The total number of impressions
(served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">imps_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">imps_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The total number of impressions served
successfully.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">imps_not_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">imps_not_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The total number of impressions where
someone other than Xandr served the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The total number of impressions where
Xandr collects cost of media and pays out seller
payment for transactions between this buyer-seller pair.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">imps_direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">imps_direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The total number of impressions where
Xandr does NOT collect cost of media or pay out
seller payment for transactions between this buyer-seller pair.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue per
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code> for <code
class="ph codeph">imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue for impressions
where Xandr pays out the seller payment.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue_direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code> for <code
class="ph codeph">imps_direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue for impressions
where the seller payment is transacted directly between this
buyer-seller pair, not through AppNexus.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_ecpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code> x 1000 / <code
class="ph codeph">imps_delivered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue expressed in
eCPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue_seller_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code>, expressed in the seller's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue per impression in
their selected currency. For a list of supported currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared_seller_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code> for <code
class="ph codeph">imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code>, expressed in the seller's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue for impressions
where Xandr pays out the seller payment, per
impression, in their selected currency. For a list of supported
currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue_direct_cleared_seller_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code> for <code
class="ph codeph">imps_direct_cleared</code>, expressed in the seller's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue for impressions
where the seller payment is transacted directly between this
buyer-seller pair and not through Xandr, per
impression, in their selected currency. For a list of supported
currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_revenue_direct_cleared_buyer_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153"><code
class="ph codeph">seller_revenue</code> for <code
class="ph codeph">imps_direct_cleared</code>, expressed in the buyer's
currency.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue for impressions
where the seller payment is transacted directly between this
buyer-seller pair and not through Xandr, per
impression, in the buyer's selected currency. For a list of supported
currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__151"><code
class="ph codeph">seller_ecpm_seller_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__152">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__153">(<code
class="ph codeph">seller_revenue</code> / <code
class="ph codeph">imps_delivered</code>) * 1000, expressed in the
seller's currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00006bea__entry__154">The seller's revenue expressed in
eCPM, in the seller's selected currency. For a list of supported
currencies, see <a
href="supported-currencies.md"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type`
`"seller_invoice_report"`, as well as the `columns` (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filters for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="seller-platform-billing-report.md#"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat report {
            "report": { "report_type": "seller_invoice_report", "timezone": "PST",
            "report_interval": "last_7_days", "name": "SSP Monthly Buyer Report", "columns": [
            "day", "seller_member", "publisher_id", "publisher_name", "publisher_code",
            "buyer_member_id", "buyer_member_name", "imps", "imps_delivered", "seller_revenue" ] }
            }
```




<b>Note:</b> To order by day, insert this
object into your JSON file after the "columns" array:
`"orders": ["day"]`





**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies
            -X POST -d @report 'https://api.appnexus.com/report' {
            "response": { "status": "OK", "report_id": "bfe2ba2ea54a51115db942d591a7b5d9" }
            }
```

**GET the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the {{execution_status}}
is "ready". Then use the \*report-download\* service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c
            cookies 'https://api.appnexus.com/report?id=bfe2ba2ea54a51115db942d591a7b5d9' { "response":{ "status":"OK",
            "report":{ "name":null, "created_on":"2010-05-25 19:19:53", "url":
            "report-download?id=bfe2ba2ea54a51115db942d591a7b5d9" }, "execution_status":"ready" }
            }
```

**GET the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the \*report-download\* service. You can
find the service and Report ID in the {{url}} field of the previous
`GET` response. When identifying the file that you want to save to, be
sure to use the file extension of the "format" that you specified in
your initial `POST`.



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use {{-i}} or {{-v}} in your call to expose the response
header.

``` pre
$ curl -b cookies -c cookies
                  'https://api.appnexus.com/report-download?id=bfe2ba2ea54a51115db942d591a7b5d9' >
               report.csv
```




<b>Note:</b> Use the id that was given in the
response from when you initially posted the report.










## Schedule a frequently run report

You can schedule reports that you would like to pull regularly. See the
<a
href="saved-report-service.md"
class="xref" target="_blank">Saved Report Service</a> for more
information.




## Related Topics




- <a href="report-service.md" class="xref">Report Service</a>
- <a href="completed-creative-audits-report.md" class="xref">Completed
  Creative Audits Report</a>
- <a href="bidder-platform-buyer-report.md" class="xref">Bidder Platform
  Buyer Report</a>
- <a href="bidder-billing-report-api.md" class="xref">Bidder Billing
  Report API</a>
- <a href="platform-seller-report.md" class="xref">Platform Seller
  Report</a>
- <a href="inventory-availability-reporting.md" class="xref">Inventory
  Availability Reporting</a>
- <a href="reporting-timezones.md" class="xref">Reporting Timezones</a>
- <a href="saved-report-service.md" class="xref">Saved Report
  Service</a>






