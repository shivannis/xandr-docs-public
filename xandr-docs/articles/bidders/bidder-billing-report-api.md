---
Title : Bidder Billing Report API
Description : Buyers can gather transaction information using the Bidder Billing
ms.date : 10/28/2023
Report to invoice their advertisers.
---


# Bidder Billing Report API



Buyers can gather transaction information using the Bidder Billing
Report to invoice their advertisers.

For instructions on retrieving a report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



## Time Frame

The `report_interval` field in the JSON request can be set to one of the
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
- `month_to_yesterday`
- `custom`  





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005d1b__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00005d1b__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005d1b__entry__3"
class="entry colsep-1 rowsep-1">Group?</th>
<th id="ID-00005d1b__entry__4"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="ID-00005d1b__entry__5"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00005d1b__entry__6"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"2010-02-01 06:00:00"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
hour of the impression.

<b>Note:</b> For impressions older than 100
days, hourly data is aggregated into one row with 'YYYY-MM-DD 00:00:00'
as the hour ('YYYY-MM-DD' is the UTC day in which the activity
happened). This will make it look as though all activity happened at
midnight. All daily data older than 100 days is returned in the UTC time
zone.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"2010-02-01"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
day of the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"2010-02"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
month of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">123</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__6">Internal ID of the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__5">"My
Buyer"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__6">Display name of the buyer member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">456</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__6">Internal ID of the seller member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">seller_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"That Seller"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__6">Display name of the seller member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">321</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__6">Internal ID of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">geo_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"US"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
code for the geographic country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">geo_country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"United States"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
name of the geographic country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">deal_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2"> int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">123 </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
internal ID of the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">deal_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"Deal A"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
display name of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__5">0,
1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__6">Whether or not the buyer pays the seller
directly for the cost of media. If 0, Xandr
collects the cost of media from the buyer and pays the seller. If 1, the
buyer pays the seller directly for the cost of media.

<b>Tip:</b> Buyers can match the cost of media
on their invoice by filtering out "cleared direct" transactions.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"USD"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
transaction currency used by the buyer to purchase this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">selling_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"EUR"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
transaction currency used by the seller to sell this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">imp_type_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">7</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
ID for the type of impression. Possible values (associated types in
parentheses):
<ul>
<li>7 ("RTB"): Your buyers's creative served on third-party
inventory.</li>
<li>9 ("External Impression"): An impression from an impression
tracker.</li>
<li>10 ("External Click"): A click from a click tracker.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">buyer_seat_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"1234"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
Custom Buyer Seat ID (submitted by DSP) that was used to bid on the
impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__1"><code
class="ph codeph">buyer_seat_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__5">"test seat"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005d1b__entry__6">The
display name for the buyer seat code</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005d1b__entry__115"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00005d1b__entry__116"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005d1b__entry__117"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00005d1b__entry__118"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="ID-00005d1b__entry__119"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">100</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">imps_delivered</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The total number of impressions served
successfully.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">imps_direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">100</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">imps_direct_cleared</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The total number of impressions where
Xandr does NOT collect buyer media cost or pay
out seller payment for transactions between this buyer-seller pair.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">100</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">imps_<span
class="ph">appnexus_cleared</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The total number of impressions where
Xandr collects buyer media cost and pays out
seller payments for transactions between this buyer-seller pair.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_media_cost</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The total cost of the inventory
purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_media_cost_direct_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost on
imps_direct_cleared</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The buyer's spend for impressions
where the seller payment is transacted directly between this
buyer-seller pair, not through Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_media_cost_direct_cleared_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost_direct_cleared_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The buyer's spend for impressions
where the seller payment is transacted directly between this
buyer-seller pair, not through Xandr, in the
transaction currency the buyer used to buy the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_media_cost_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_cleared</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost on imps_<span
class="ph">appnexus_cleared</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The buyer's spend for impressions
where Xandr pays out the seller payment.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_media_cost_direct_cleared_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost_direct_cleared_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The buyer's spend for impressions
where Xandr pays out the seller payment, in the
transaction currency the buyer used to buy the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_media_cost_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The total cost of the inventory
purchased, in the transaction currency the buyer used to buy the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">creative_overage_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">creative_overage_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">Total fees charged for hosted
creatives that exceed the creative size limit.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">creative_overage_fees_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">creative_overage_fees_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">Total fees charged for hosted
creatives that exceed the creative size limit, in the transaction
currency the buyer used to buy the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">auction_service_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">auction_service_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The fee charged on RTB bought
impressions specified in the buyer member's contract. For example, with
a 10% fee, if the buyer spends $1,000 on inventory, <span
class="ph">Xandr charges them a $100 fee. They will receive an
invoice for $1,000 of Media Cost and $100 for Buyer Auction Service
Charge (BASC) for a total of $1,100.
<p>There are two types:</p>
<ul>
<li>For rows that are direct_cleared, your direct clear fee would be
recorded in this field.</li>
<li>If you have your Buyer Auction Service Charge (BASC) set as a fee
rather than a deduction, a value will be recorded here as well. You can
differentiate by grouping by the direct_cleared dimension when you pull
the report.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">auction_service_fees_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">auction_service_fees_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The fee charged on RTB bought
impressions specified in the buyer member's contract, in the transaction
currency the buyer used to buy the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">auction_service_deduction</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">auction_service_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The deduction on RTB bought
impressions specified in the buyer member's contract. For example, with
a 10% deduction, if they budget $1,000 for their campaign, <span
class="ph">Xandr takes $100 from that, leaving the buyer with
$900 that is used to purchase inventory from the seller. Creative
Auction Service Change (CASC) will also be represented here. For the
example above, the buyer will receive an invoice for $1,000 of Media
Cost, which is inclusive of the deduction Xandr
charges.

<b>Warning:</b> This field matches
auction_service_fees if your contract has a Buyer Auction Service Charge
(BASC) rate of greater than 0%.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">auction_service_deduction_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">auction_service_deduction_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The deduction on RTB bought
impressions specified in the buyer member's contract, in the transaction
currency the buyer used to buy the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_ecpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_media_cost / imps_delivered *
1000</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The buyer's cost per impression,
expressed in eCPM.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__115"><code
class="ph codeph">buyer_ecpm_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__116">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__117">123.45</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__118">buyer_ecpm, expressed in the buyer's
currency</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005d1b__entry__119">The buyer's cost per impression in
their selected currency. For a list of supported currencies, see <a
href="https://wiki.appnexus.com/display/adnexusdocumentation/Supported%2bCurrencies"
class="xref" target="_blank">Supported Currencies</a>.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the {{report_type}}
"bidder_pricing_report", as well as the {{columns}} (dimensions and
metrics) and {{report_interval}} that you want to retrieve. You can also
filters for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat buyer_invoice_report_request.json
{
    "report": {
        "format": "csv",
        "report_interval": "last_48_hours",
        "columns": [
            "seller_member_name",
            "buyer_member_name",
            "imps"
        ],
        "report_type": "bidder_pricing_report"
    }
}
```

**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @bidder_pricing_report_request.json 'https://api.adnxs.com/report'
{
 "response": {
   "status": "OK",
   "report_id": "39c4855a07e92433947886b5aabd267d", <=== COPY THIS report_id as you will need it to check the status of your report and to download your report
   "existing": false,
   "dbg_info": {
     ...
     }
   }
 }
}
```

**GET the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the {{execution_status}}
is "ready". Then use the \*report-download\* service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report?id=39c4855a07e92433947886b5aabd267d'
{
 "response": {
   "status": "OK",
   "report": {
     "name": null,
     "created_on": "2015-11-17 21:27:21",
     "cache_hit": false,
     "fact_cache_hit": false,
     "fact_cache_error": null,
     "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"last_48_hours\",\"columns\":[\"seller_member_name\",\"buyer_member_name\",\"imps\",\"report_type\":\"bidder_pricing_report\"}}",
     "header_info": "Report ID:,39c4855a07e92433947886b5aabd267d\r\nRun at:,2015-11-17 21:27:21\r\nStart date:,2015-11-15 21:00:00\r\nEnd date:,2015-11-17 20:00:00\r\nTimezone:,\r\nUser:,Huanqing Liu (171989)\r\n",
     "row_count": "309",
     "report_size": "15583",
     "internal_info": "{...}",
     "user_id": "171989",
     "entity_id": "0",
     "started_on": "2015-11-17 21:27:22",
     "finished_on": "2015-11-17 21:27:24",
     "query_time": "0",
     "url": "report-download?id=39c4855a07e92433947886b5aabd267d"
   },
   "execution_status": "ready",
   "_was_this_status_cached_": 0,
   "dbg_info": {
     ...
     }
   }
 }
}
```

**GET the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the \*report-download\* service. You can
find the service and Report ID in the {{url}} field of the previous
`GET` response. When identifying the file that you want to save to, be
sure to use the file extension of the "format" that you specified in
your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use \\i or \\v in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/report-download?id=39c4855a07e92433947886b5aabd267d' > bidder_pricing_report.csv
```





## Related Topics

- <a href="report-service.md" class="xref">Report Service</a>

- <a
  href="completed-creatives-audits-report.md"
  class="xref" target="_blank">Completed Creative Audits Report</a>

- <a href="bidder-platform-buyer-report.md" class="xref">Bidder Platform
  Buyer Report</a>

- <a href="platform-seller-report.md" class="xref">Platform Seller
  Report</a>

- <a href="seller-platform-billing-report.md" class="xref">Seller
  Platform Billing Report</a>

- <a href="inventory-availability-reporting.md" class="xref">Inventory
  Availability Reporting</a>

- <a href="reporting-timezones.md" class="xref">Reporting Timezones</a>

- <a href="saved-report-service.md" class="xref">Saved Report
  Service</a>






