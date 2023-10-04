---
Title : Selling Billing Report
Description : Warning: This report should only be
used for data after September 30, 2015.
---


# Selling Billing Report









Warning: This report should only be
used for data after September 30, 2015.





The Selling Billing Report can be used to view billing data across
direct publishers (sold across direct advertisers and other platform
buyers).

For instructions on retrieving a report, consult the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



<div id="selling-billing-report__section-ca60b47c-882c-426f-b0d4-2100bd496a75"
>

## Time Frame

<div id="selling-billing-report__p-c733c8f8-e1e8-4f4a-a768-e9ca90b7f5c4"
>

The `report_interval` field in the JSON request can be set to one of the
following:

- last_hour

- today

- yesterday

- last_48_hours

- last_7_days

- last_30_days

- month_to_date

- quarter_to_date

- last_month

- lifetime

- custom



<div id="selling-billing-report__p-39eec435-025c-4655-805e-179549adf7ee"
>

<div id="selling-billing-report__note-dad7328b-5408-4c9d-a1b2-5b4c1f9fddb2"
class="note tip note_tip">

Tip: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.







<div id="selling-billing-report__section-16155330-b7e6-41f8-97d8-7b356ffcb9c9"
>

**Data Retention Period**

Data retention period for this report is 1095 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="selling-billing-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="selling-billing-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="selling-billing-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="selling-billing-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="selling-billing-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The hour of the impression.

Note: For impressions older than 100
days, hourly data is aggregated into one row with 'YYYY-MM-DD 00:00:00'
as the hour ('YYYY-MM-DD' is the UTC day in which the activity
happened). This will make it look as though all activity happened at
midnight. All daily data older than 100 days is returned in the UTC time
zone.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The day of the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The month of the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Internal ID of the buyer
member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Display name of the buyer
member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Internal ID of the seller
member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Display name of the seller
member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Internal ID of the
advertiser</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"Verizon"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Display name of the
advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Internal ID of the
publisher</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Display name of the
publisher</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">publisher_code</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">External ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">selling_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">Yes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The transaction currency used
by the seller to sell this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The transaction currency used
by the buyer to purchase this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Internal ID of the deal</td>
</tr>
<tr class="even row">
<td id="selling-billing-report__selling-billing-report-imp-type-id"
class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">
The ID for the type of impression. Possible values (associated IDs in
parentheses):
<ul>
<li>"Blank" (1): No creative served.</li>
<li>"PSA" (2): A public service announcement served because there were
no valid bids and no default creative was available.</li>
<li>"Default Error" (3): A default creative served due to a timeout
issue.</li>
<li>"Default" (4): A default creative served because there were no valid
bids.</li>
<li>"Kept" (5): Your advertiser's creative served on your publisher's
site.</li>
<li>"RTB" (7): Your publisher's impression was sold to a third-party
buyer.</li>
<li>"PSA Error" (8): A public service announcement served due to a
timeout issue or lack of a default creative.</li>
<li>"External Impression" (9): An impression from an impression
tracker.</li>
<li>"External Click" (10): A click from a click tracker.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">selling_imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"Resold"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The type of impression. For
possible values, see <a
href="selling-billing-report.html#selling-billing-report__selling-billing-report-imp-type-id"
class="xref"><code class="ph codeph">imp_type_id</code></a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">cleared_direct</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">0, 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Whether or not the buyer pays
the seller directly for the cost of media. If <code
class="ph codeph">0</code>, Xandr collects the
cost of media from the buyer and pays the seller. If <code
class="ph codeph">1</code>, the buyer pays the seller directly for the
cost of media.

Tip: Buyers can match the cost of media
on their invoice by filtering out "cleared direct" transactions.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">pricing_media_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">0, 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">ID of the video-specific
media type classification (for billing only). If you don't have
video-specific pricing, this field is irrelevant. Possible values are
<code class="ph codeph">0</code>, <code class="ph codeph">1</code>,
<code class="ph codeph">2</code>, <code class="ph codeph">3</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">pricing_media_type_name</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"Non Video"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Name of the video-specific
media type classification (for billing only). If you don't have
video-specific pricing, this field is irrelevant. Possible values are
<code class="ph codeph">"--"</code>, <code
class="ph codeph">"Non-Video"</code>, <code
class="ph codeph">"Video (Hosted)"</code>, <code
class="ph codeph">"Video (Non-Hosted)"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">deal_type</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"Open Auction"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">The deal type for a
particular deal. Deal type options are <code
class="ph codeph">Open Auction</code>, Private Auction, Curated, First
Look, or Programmatic Guaranteed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">auction_charges_available</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"Yes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Identifies billable activity
where the seller deductions can be disclosed. If the value is <code
class="ph codeph">“yes”</code>, the SASC Deductions column will be
populated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">is_claims_activity</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"No"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Identifies billable activity
that won’t be paid because a successful Invalid Traffic claim was
processed against it.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">is_cross_seat_activity</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">"No"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">Only relevant if you have
more than one member/seat on the Xandr platform.
If you do, this field allows you to know whether the activity was
associated with transactions between members you manage and therefore
simplify the reconciling of their invoices.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">buyer_cleared</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">
Whether or not the buyer pays the seller or curator directly for the
cost of media. Acceptable values are:
<ul>
<li>0: Xandr acts as the clearing house,
collecting the cost of media from the buyer and paying the seller.</li>
<li>1: Xandr does not clear cash; the buyer pays
the seller directly for the cost of media.</li>
<li>-1: Dummy value for unbilled activity.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__1">curator_cleared</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__5">
Whether or not the seller receives the reseller revenue from <span
class="ph">Xandr or the curator. Acceptable values are:
<ul>
<li>0: The seller receives the reseller revenue from <span
class="ph">Xandr.</li>
<li>1: The seller receives the reseller revenue from the curator.</li>
<li>-1: Dummy value for unbilled activity.</li>
</ul>
</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="selling-billing-report__entry__136"
class="entry colsep-1 rowsep-1">Column</th>
<th id="selling-billing-report__entry__137"
class="entry colsep-1 rowsep-1">Type</th>
<th id="selling-billing-report__entry__138"
class="entry colsep-1 rowsep-1">Example</th>
<th id="selling-billing-report__entry__139"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="selling-billing-report__entry__140"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">seller_billable_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">Total number of billable
impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">imps_filtered</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">2365</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">imps_filtered</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">The total number of
impressions which have been filtered out by <span
class="ph">Xandr's inventory quality review (e.g., impressions
from a blocked buyer).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">Total number of clicks
across all impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">convs</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">total_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">Total number of conversions
across all impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">The revenue generated
through sales to external (RTB) buyers, in USD.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">reseller_revenue_selling_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">reseller_revenue_selling_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">The revenue generated
through sales to external (RTB) buyers, in the transaction currency the
seller used to sell the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">seller_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">seller_media_cost</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">The amount owed to the
publisher, in USD.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">seller_media_cost_selling_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">seller_media_cost_selling_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">The amount owed to the
publisher, in the transaction currency the seller used to sell the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">gross_seller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">gross_seller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">Seller revenue before SASC
Deductions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">SASC_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">122</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">SASC_deduction</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">Seller Auction Service
Charge, also known as Seller Revenue Share in some contracts, SASC is
the charge for selling inventory to third-party buyers. It is quoted as
a percentage of the buyer's media cost, and deducted prior to the
calculation of seller revenue. Deducted from the bid at the time of
auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">SASC_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">SASC_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">Charged as a cost-plus
model where the fees aren’t deducted from the bid and are billed to the
client.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">bad_debt_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">124</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">bad_debt_fees</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">An agreed amount we charge
to guarantee payment to the seller regardless of whether or not we get
paid by the buyer. Charged as a cost-plus model where the fees aren’t
deducted from the bid and are billed to the client.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__136">bad_debt_deductions</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__137">money</td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__138"><code
class="ph codeph">155</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__139"><code
class="ph codeph">bad_debt_deductions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="selling-billing-report__entry__140">An agreed amount we charge
to guarantee payment to the seller regardless of whether or not we get
paid by the buyer. Deducted from the bid at the time of auction.</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"seller_pricing_report"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat seller_pricing_report.json

{
    "report": {
        "format": "csv",
        "report_interval": "last_48_hours",
        "columns": [
            "seller_member_name",
            "buyer_member_name",
            "imps",
            "clicks",
            "convs"
        ],
        "report_type": "seller_pricing_report"
    }
}
```



**POST the request to the Reporting Service specifying a member ID by
replacing INSERT_DESIRED_MEMBER_ID**



``` pre
$ curl -b cookies -c cookies -X POST -d @seller_pricing_report_request.json 'https://api.appnexus.com/report?member_id=INSERT_DESIRED_MEMBER_ID'

{
  "response": {
    "status": "OK",
    "report_id": "9282cde2a86670d9861b77b8fc0954ad", <=== COPY THIS report_id as you will need it to check the status of your report and to download your report
    "existing": false,
    "cached": true
    }
  }
}
```



**GET the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=9282cde2a86670d9861b77b8fc0954ad'

{
  "response": {
    "status": "OK",
    "report": {
      "name": null,
      "created_on": "2015-11-17 22:15:52",
      "cache_hit": true,
      "fact_cache_hit": true,
      "fact_cache_error": null,
      "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"last_48_hours\",\"columns\":[\"seller_member_name\",\"buyer_member_name\",\"imps\",\"clicks\",\"convs\"],\"report_type\":\"seller_pricing_report\",\"filters\":[{\"seller_member_id\":\"2414\"},{\"is_delivered\":{\"value\":[\"1\"],\"operator\":\"=\"}},{\"is_valid_seller\":{\"value\":[\"1\"],\"operator\":\"=\"}}]}}",
      "header_info": "Report ID:,6adf8e4e075f93f7dfba164fe8cddab3\r\nRun at:,2015-11-17 22:15:30\r\nStart date:,2015-11-15 22:00:00\r\nEnd date:,2015-11-17 20:00:00\r\nTimezone:,\r\nUser:,Huanqing Liu (171989)\r\n",
      "row_count": "0",
      "report_size": "56",
      "internal_info": "{\"report_id\":\"9282cde2a86670d9861b77b8fc0954ad\",\"cache_hit_using\":\"6adf8e4e075f93f7dfba164fe8cddab3\",\"cache_cause\":1,\"controller_cache_hit\":true}",
      "user_id": "171989",
      "entity_id": "0",
      "started_on": "1970-01-01 00:00:01",
      "finished_on": "2015-11-17 22:15:52",
      "query_time": null,
      "url": "report-download?id=9282cde2a86670d9861b77b8fc0954ad"
    },
    "execution_status": "ready"
    }
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
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=9282cde2a86670d9861b77b8fc0954ad' > seller_pricing_report.csv
```






