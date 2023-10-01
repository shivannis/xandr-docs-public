---
Title : Buying Billing Report
Description : Warning: This report should only be
used for data after September 30, 2015.
---


# Buying Billing Report









Warning: This report should only be
used for data after September 30, 2015.



The Buying Billing Report can be used to view billing data across direct
advertiser impressions (bought across direct publishers and real-time
inventory).



For instructions on retrieving a report, please see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.





## Time Frame

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

**Data Retention Period**

Data retention period for this report is 1095 days.





Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buying-billing-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buying-billing-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buying-billing-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="buying-billing-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buying-billing-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The hour of the impression.

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
headers="buying-billing-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The day of the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The month of the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the buyer
member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name of the buyer
member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the seller
member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name of the seller
member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the
advertiser</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Verizon"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name of the
advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The external code associated
with an advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">451</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the insertion
order</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Q1-2014"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name for the insertion
order</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The external code associated
with an insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">932</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the line
item</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"$3 CPM Verizon Remarketing"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name of the line
item</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The external code associated
with a line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">728</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the
campaign</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name of the
campaign</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The external code associated
with a campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Internal ID of the
publisher</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Display name of the
publisher</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The internal id of the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Deal A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The display name of the
deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The transaction currency used
by the buyer to purchase this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">selling_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"EUR"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The transaction currency used
by the seller to sell this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5"><p>The ID for the type of
impression. Possible values (associated types in parentheses):</p>
<ul>
<li><code class="ph codeph">1 ("Blank")</code>: No creative served.</li>
<li><code class="ph codeph">2 ("PSA")</code>: A public service
announcement served because there were no valid bids and no default
creative was available.</li>
<li><code class="ph codeph">3 ("Default Error")</code>: A default
creative served due to a timeout issue.</li>
<li><code class="ph codeph">4 ("Default")</code>: A default creative
served because there were no valid bids.</li>
<li><code class="ph codeph">5 ("Kept")</code>: Your advertiser's
creative served on your publisher's site.</li>
<li><code class="ph codeph">6 ("Resold")</code>: Your publisher's
impression was sold to a third-party buyer.</li>
<li><code class="ph codeph">7 ("RTB")</code>: Your advertiser's creative
served on third-party inventory.</li>
<li><code class="ph codeph">8 ("PSA Error")</code>: A public service
announcement served due to a timeout issue or lack of a default
creative.</li>
<li><code class="ph codeph">9 ("External Impression")</code>: An
impression from an impression tracker.</li>
<li><code class="ph codeph">10 ("External Click")</code>: A click from a
click tracker.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Blank"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The type of impression. For
possible values, see <code class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">cleared_direct</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">0</code>, <code class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">Whether or not the buyer pays
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
headers="buying-billing-report__entry__1">marketplace_clearing_event</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Views - Standard Display"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The name of the underlying
auction event that was transacted (e.g., impression, viewable
impression, completed video). For more information, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/guaranteed-outcomes.html"
class="xref" target="_blank">Guaranteed Outcomes</a> and <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/supported-viewability-standards-for-guaranteed-outcomes.html"
class="xref" target="_blank">Supported Viewability Standards</a> in the
UI documentation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The ID of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_id</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__5">The name of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_name</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buying-billing-report__entry__161"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buying-billing-report__entry__162"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buying-billing-report__entry__163"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buying-billing-report__entry__164"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="buying-billing-report__entry__165"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Total number of
impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Total number of clicks
across all impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Total number of conversions
across all impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Network revenue booked
through direct advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">booked_revenue_dollars_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">booked_revenue_dollars_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Network revenue booked
through direct advertisers, in the transaction currency the buyer used
to buy the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">buyer_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">buyer_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">The total cost of the
inventory purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">buyer_media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">buyer_media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">The total cost of the
inventory purchased, in the transaction currency the buyer used to buy
the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">auction_service_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">auction_service_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165"><p>The total deductions
charged for impressions bought from third parties.</p>
<p>These deductions are included in the buyer's media cost and deducted
when calculating the seller's payment. For more information, see <a
href="https://docs.xandr.com/bundle/finance/page/topics/buyer-auction-service-charge-mechanics.html"
class="xref" target="_blank">Buyer Auction Service Charge Mechanics</a>
in the Finance documentation.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">auction_service_deduction_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">auction_service_deduction_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165"><p>The total deductions
charged for impressions bought from third parties, in the transaction
currency the buyer used to buy the impression.</p>
<p>These deductions are included in the buyer's media cost and deducted
when calculating the seller's payment. For more information, see <a
href="https://docs.xandr.com/bundle/finance/page/topics/buyer-auction-service-charge-mechanics.html"
class="xref" target="_blank">Buyer Auction Service Charge Mechanics</a>
in the Finance documentation.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">net_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">net_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">The total amount to be paid
for media purchases, less the Auction Service Deduction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">net_media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">net_media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">The total amount to be paid
for media purchases, less the Auction Service Deduction, in the
transaction currency the buyer used to buy the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">creative_overage_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">creative_overage_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Total fees charged for
hosted creatives that exceed the creative size limit.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">creative_overage_fees_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">creative_overage_fees_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">Total fees charged for
hosted creatives that exceed the creative size limit, in the transaction
currency the buyer used to buy the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">auction_service_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">auction_service_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165"><p>Total fees charged for
impressions bought from third parties.</p>
<p>These fees are charged in addition to the buyer's media cost. For
more information, see <a
href="https://docs.xandr.com/bundle/finance/page/topics/buyer-auction-service-charge-mechanics.html"
class="xref" target="_blank">Buyer Auction Service Charge Mechanics</a>
in the Finance documentation.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">auction_service_fees_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">auction_service_fees_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165"><p>Total fees charged for
impressions bought from third parties, in the transaction currency the
buyer used to buy the impression.</p>
<p>These fees are charged in addition to the buyer's media cost. For
more information, see <a
href="https://docs.xandr.com/bundle/finance/page/topics/buyer-auction-service-charge-mechanics.html"
class="xref" target="_blank">Buyer Auction Service Charge Mechanics</a>
in the Finance documentation.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">marketplace_clearing_event_units</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">marketplace_clearing_event_units</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">The total number of events
purchased (for the associated Clearing Event). When buying a Clearing
Event other than impression (e.g., viewable impressions), the number of
billed events will be less than the number of impressions. For more
information, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/guaranteed-outcomes.html"
class="xref" target="_blank">Guaranteed Outcomes</a> in the UI
documentation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">exchange_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">4.32</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">exchange_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165">The amount taken out of the
exchange to give to the seller. If you aren't using a line item with a
guaranteed outcomes payment model, this metric's value equals
<strong>Net Media Cost</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">ecpm_conversion_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">3.2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">ecpm_conversion_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165"><p>The amount that <span
class="ph">Xandr takes out of a guaranteed outcomes bid/payment
to cover eCPM conversion and post-auction outcome prediction services.
If you aren't using a line item with a guaranteed outcomes payment
model, this field's value equals <code class="ph codeph">0</code>.</p>
<p>For more information on how this fee is calculated, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/understanding-payment-conversion-rates.html"
class="xref" target="_blank">Understanding Payment Conversion
Rates</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__161">go_market_making_fee</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__162">money</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__163"><code
class="ph codeph">0.48</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__164">go_market_making_fee</td>
<td class="entry colsep-1 rowsep-1"
headers="buying-billing-report__entry__165"><p>The percentage-based fee
that Xandr takes out of a guaranteed outcomes
bid/payment to cover the risk incurred when providing guaranteed
outcomes. This field's value equals <code class="ph codeph">0</code>
when not using a guaranteed outcomes line item. If you aren't using a
line item with a guaranteed outcomes payment model, this field's value
equals <code class="ph codeph">0</code>.</p>
<p>The target for this fee is 10%, but the actual percentage used varies
based on continuously shifting prediction accuracy:</p>
<ul>
<li>GO Market Making Fee Percentage = Fixed Percentage (10%) ±
Prediction Variability (a positive or negative percentage that changes
based on shifting prediction accuracy)</li>
</ul>
<p>For more information on how this fee is calculated, see <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/understanding-payment-conversion-rates.html"
class="xref" target="_blank">Understanding Payment Conversion
Rates</a>.</p></td>
</tr>
</tbody>
</table>





## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type` `"buyer_invoice_report"`,
as well as the columns (dimensions and metrics) and report_interval that
you want to retrieve. You can also filter for specific dimensions,
define granularity (year, month, day), and specify the format in which
the data should be returned (csv, excel, or html). For a full
explanation of fields that can be included in the JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat buyer_invoice_report.json

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
        "report_type": "buyer_invoice_report"
    }
}
```



**`POST` the request to the Reporting Service specifying a member ID by
replacing INSERT_DESIRED_MEMBER_ID**

``` pre
$ curl -b cookies -c cookies -X POST -d @buyer_invoice_report.json 'https://api.appnexus.com/report?member_id=INSERT_DESIRED_MEMBER_ID'

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

**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=39c4855a07e92433947886b5aabd267d'

{
 "response": {
   "status": "OK",
   "report": {
     "name": null,
     "created_on": "2015-11-17 21:27:21",
     "cache_hit": false,
     "fact_cache_hit": false,
     "fact_cache_error": null,
     "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"last_48_hours\",\"columns\":[\"seller_member_name\",\"buyer_member_name\",\"imps\",\"clicks\",\"convs\"],\"report_type\":\"buyer_invoice_report\",\"filters\":[{\"buyer_member_id\":\"668\"},{\"is_delivered\":{\"value\":[\"1\"],\"operator\":\"=\"}},{\"is_valid_buyer\":{\"value\":[\"1\"],\"operator\":\"=\"}},{\"is_valid_buying_imp_type\":{\"value\":[\"1\"],\"operator\":\"=\"}}]}}",
     "header_info": "Report ID:,39c4855a07e92433947886b5aabd267d\r\nRun at:,2015-11-17 21:27:21\r\nStart date:,2015-11-15 21:00:00\r\nEnd date:,2015-11-17 20:00:00\r\nTimezone:,\r\nUser:,Huanqing Liu (171989)\r\n",
     "row_count": "309",
     "report_size": "15583",
     "internal_info": "{\"report_id\":\"39c4855a07e92433947886b5aabd267d\",\"expected_query_cost\":\"1\",\"processor\":\"20.bm-report-processor.prod.nym2\",\"last_processor_run_on\":\"20.bm-report-processor.prod.nym2\",\"cache_miss\":1,\"query\":\" SELECT seller_member_id AS alias_1,CASE WHEN transaction_type = 1 THEN 'Blank' WHEN transaction_type = 3 THEN 'Default Error' WHEN transaction_type = 4 THEN 'Default' WHEN transaction_type = 2 THEN 'PSA' WHEN transaction_type = 8 THEN 'PSA Error' WHEN transaction_type IN (5,6,7,9,10,11) THEN CAST(BUYER_MEMBER_ID AS VARCHAR(7)) ELSE 'Unknown' END AS alias_2,SUM(IMPS) AS alias_3,SUM(CLICKS) AS alias_4,sum(convs) AS alias_5  FROM agg_combined_billing fact  WHERE 1=1  AND ymdh >= '2015-11-15 21:00:00' AND ymdh < '2015-11-17 20:00:00' AND buyer_member_id IN ('668') AND is_delivered IN ('1') AND CASE WHEN has_dw_buy=1 OR is_dw_buyer=0 THEN 1 ELSE 0 END IN ('1') AND CASE WHEN transaction_type in (7, 9, 10, 11) THEN 1 ELSE 0 END IN ('1')  GROUP BY alias_1, alias_2 LIMIT 1000000001\\n-- [member_id] \\n-- [report_id] 39c4855a07e92433947886b5aabd267d\"}",
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
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=39c4855a07e92433947886b5aabd267d' > buyer_invoice_report.csv
```





Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










