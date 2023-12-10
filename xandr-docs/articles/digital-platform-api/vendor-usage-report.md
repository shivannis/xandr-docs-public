---
Title : Vendor Usage Report
Description : This network report provides the details on your usage of data or
ms.date: 10/28/2023
ms.custom: digital-platform-api
platform powered by third-party vendors (e.g., user segment providers),
---


# Vendor Usage Report





This network report provides the details on your usage of data or
platform powered by third-party vendors (e.g., user segment providers),
the costs of that data or feature usage, and the line items/campaigns
where vendor costs were applicable.





## Time Frame



The `report_interval` field in the JSON request must be set to one of
the following:

- today

- yesterday

- last_7_days

- last_30_days

- month_to_date

- quarter_to_date

- last_month

- lifetime



The `time_granularity` of the data is `hourly`. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="vendor-usage-report.md#vendor-usage-report__vendor_usage_report_example"
class="xref">Example</a> below.





<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.









**Data Retention Period**

Data retention period for this report is 60 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="vendor-usage-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="vendor-usage-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="vendor-usage-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="vendor-usage-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="vendor-usage-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The month at which the auction
associated with the impression occurred</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The day at which the auction
associated with the impression occurred</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"2010-02-01 05:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The hour at which the auction
associated with the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">643</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the member that used
the data provided by the third-party vendor (e.g., user segment
providers) .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The code of the geographical
country associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the geographical
country associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">geo_country_code</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"CA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">A two-character string denoting
the country associated with the impression. For a complete listing of
allowed values, see <a href="https://en.wikipedia.org/wiki/ISO_3166-1"
class="xref" target="_blank">ISO 3166-1 country codes</a> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">31</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the campaign
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Prospect Campaign"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the campaign
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Prospect Campaign (31)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name and ID of the campaign
associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">campaign_group_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">154</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the campaign group
type which purchased this impression. Used in split reporting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_id</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_name</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">split</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Mobile Split A (342)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name and ID of the
split.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Fall Apparel"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the line item
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">targeted_segment_ids</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"935035, 935146"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The comma-separated list of IDs
for each of the segments used when targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The advertiser's preferred
currency. This preference can be set using the <a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">1243</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the insertion order
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"IO001"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the insertion order
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"IOABC-1243"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The user-defined code associated
with the insertion-order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"IO001 (1243)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name and ID of the insertion
order associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">9843</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The advertiser ID associated
with the impression. If the value is <code class="ph codeph">0</code>,
either the impression was purchased by an external buyer, or a default
or PSA was shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"ADVUS"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the advertiser
associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"ADVUS (9843)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name and ID of the
advertiser associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">9865</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the line item
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"LI001"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The user-defined code associated
with the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Fall Apparel (9865)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name and ID of the line item
associated with the impression that used third-party data
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">vendor_id</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The ID of the third party vendor
(e.g., user segment providers) whose data usage and cost comes in this
report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">vendor_name</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"AXM"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name of the third party
vendor.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">vendor</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"AXM (76)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The name and ID of the third
party vendor.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">vendor_type</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Segment Marketplace"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The type of the vendor depending
on the third party data it provides. Allowed values are Segment
Marketplace, Cross Device Graph, Measurement, Offline Attribution, or
Unknown Vendor Type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">cost_type</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"Segment Data Costs"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The type of cost incurred
towards the data usage provided by the third party vendors. Allowed
values are Segment Data Costs, Feature Costs, or Unknown Vendor
Type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">The transaction currency that
the buyer used to purchase this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__1">cpm_usd</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__4"><code
class="ph codeph">7.8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__5">Cost per mille, or thousand
(mille = thousand in Latin) expressed in USD. A pricing model in which
advertisers pay for every 1000 impressions of their advertisement
served.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="vendor-usage-report__entry__176"
class="entry colsep-1 rowsep-1">Column</th>
<th id="vendor-usage-report__entry__177"
class="entry colsep-1 rowsep-1">Type</th>
<th id="vendor-usage-report__entry__178"
class="entry colsep-1 rowsep-1">Filter</th>
<th id="vendor-usage-report__entry__179"
class="entry colsep-1 rowsep-1">Example</th>
<th id="vendor-usage-report__entry__180"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="vendor-usage-report__entry__181"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__176">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__177">int</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__178">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__179"><code
class="ph codeph">34534</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__180"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__181">The total number of
impressions that used third-party data to serve the ad.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__176">third_party_costs</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__177">money</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__178">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__179"><code
class="ph codeph">5.20</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__180"><code
class="ph codeph">third_party_costs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__181">Total monetary value of data
segment costs, feature costs or others.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__176">sales_tax</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__177">money</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__178">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__179"><code
class="ph codeph">.43</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__180"><code
class="ph codeph">sales_tax</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__181">The amount of sales tax
collected in USD. This field is only populated when the Buyer's billing
address is located in one of the following U.S. states: NY, TX or NJ.
Xandr is required (by the relevant local state
regulator) to collect this tax.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__176">vendor_costs</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__177">money</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__178">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__179"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__180"><code
class="ph codeph">vendor_costs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__181">The total costs, including but
not limited to segment data costs, and feature costs.
<p><strong>Feature Costs</strong>: Costs incurred when using a platform
feature such as Nielsen Digital Ad Ratings (DAR), Nielsen Catalina
Solutions (NCS) and Cross Device​.</p>
<p><strong>Segment Data Costs</strong>: All costs related to using
segments in the data marketplace. Applicable when specific segments are
applied in line items and associated pricing is displayed in the
platform.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__176">vendor_costs_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__177">money</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__178">no</td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__179"><code
class="ph codeph">1.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__180"><code
class="ph codeph">vendor_costs_buying_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="vendor-usage-report__entry__181">The vendor costs expressed in
the transaction currency used by the buyer.</td>
</tr>
</tbody>
</table>





## Example

**Create JSON formatted report request**

The JSON file should include the `report_type` of
`"buyer_vendor_usage_analytics"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (month, day, hour),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat buyer_vendor_usage_analytics  
{
    "report": {
        "report_type": "buyer_vendor_usage_analytics",
        "format": "csv",
        "report_interval": "last_7_days",
        "columns": [
            "imps",
            "line_item_id",
            "vendor_costs",
            "sales_tax",
            "vendor_type",
            "vendor"
        ],
        "orders": [
            "line_item_id",
            "vendor_costs",
            "vendor_type"
        ]
    }
}
```



**`POST` the request to the Report Service**

`POST` the JSON request to get back a report ID.



``` pre
$ curl -b cookies -c cookies -X post -d @buyer_vendor_usage_analytics "https://api.appnexus.com/report"
{
    "response": {
        "report_id": "d89151942729f768dcac4586288ff7eb",
        "status": "OK",
        "dbg_info": {
            "user::read_limit": 100,
            "user::write_limit": 60,
            "read_limit": 100,
            "write_limit": 60,
            "user::read_limit_seconds": 60,
            "user::write_limit_seconds": 60,
            "read_limit_seconds": 60,
            "write_limit_seconds": 60,
            "instance": "50.bm-report-processor.prod.nym2",
            "version": "1.73.238",
            "time": 712.83793449402,
            "start_microtime": 1686106227,
            "warnings": [],
            "api_cache_hit": "0",
            "output_term": null,
            "edge_forwarded_dbg_info": {
                "user::read_limit": 100,
                "user::write_limit": 60,
                "read_limit": 100,
                "write_limit": 60,
                "user::read_limit_seconds": 60,
                "user::write_limit_seconds": 60,
                "read_limit_seconds": 60,
                "write_limit_seconds": 60,
                "instance": "37.report-processor.prod.nym2",
                "version": "1.73.238",
                "time": 708.98699760437,
                "start_microtime": 1686106227,
                "warnings": [],
                "api_cache_hit": "0",
                "output_term": "report_id"
            },
            "edge_forwarded": true,
            "edge_forwarded_by": "50.bm-report-processor.prod.nym2",
            "edge_forwarded_to": "http://report-processor-edge.adnxs.net/report"
        }
    }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`ready`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=d89151942729f768dcac4586288ff7eb'
{
    "response": {
        "status": "OK",
        "report": {
            "id": "d89151942729f768dcac4586288ff7eb",
            "name": "",
            "created_on": "2023-06-07 02:50:27",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "",
            "json_request": "{\"report\":{\"report_type\":\"buyer_vendor_usage_analytics\",\"format\":\"csv\",\"report_interval\":\"last_7_days\",\"columns\":[\"imps\",\"line_item_id\",\"vendor_costs\",\"sales_tax\",\"vendor_type\",\"vendor\"],\"orders\":[{\"order_by\":\"line_item_id\",\"direction\":\"ASC\"},{\"order_by\":\"vendor_costs\",\"direction\":\"ASC\"},{\"order_by\":\"vendor_type\",\"direction\":\"ASC\"}],\"grouping\":{\"additional_grouping_sets\":[],\"unselected_implicit_groupings\":[],\"additional_groups_on_bottom\":true},\"timezone\":\"UTC\",\"filters\":[{\"buyer_member_id\":\"958\"}],\"reporting_decimal_type\":\"decimal\",\"use_cache\":true},\"extraction_version\":\"refactored\",\"end_date\":1686096000,\"start_date\":1685491200,\"user_id\":\"4814\"}",
            "header_info": "Report type: buyer_vendor_usage_analyticss\nReport ID: d89151942729f768dcac4586288ff7eb\nRun at: 2023-06-07 04:08:58 UTC\nRequested Start date: 2023-05-31 00:00:00 UTC\nRequested End date: 2023-06-07 00:00:00 UTC\nTimezone: UTC\n",
            "user_id": "4814",
            "member_id": "958",
            "bidder_id": "2",
            "entity_id": "958",
            "row_count": 0,
            "report_size": 61,
            "url": "report-download?id=d89151942729f768dcac4586288ff7eb"
        },
        "execution_status": "ready",
        "_was_this_status_cached_": 0,
        "dbg_info": {
            "user::read_limit": 100,
            "user::write_limit": 60,
            "read_limit": 100,
            "write_limit": 60,
            "user::read_limit_seconds": 60,
            "user::write_limit_seconds": 60,
            "read_limit_seconds": 60,
            "write_limit_seconds": 60,
            "instance": "50.bm-report-processor.prod.nym2",
            "version": "1.73.238",
            "time": 454.48088645935,
            "start_microtime": 1686110938,
            "warnings": [],
            "api_cache_hit": "0",
            "output_term": null,
            "edge_forwarded_dbg_info": {
                "user::read_limit": 100,
                "user::write_limit": 60,
                "read_limit": 100,
                "write_limit": 60,
                "user::read_limit_seconds": 60,
                "user::write_limit_seconds": 60,
                "read_limit_seconds": 60,
                "write_limit_seconds": 60,
                "instance": "37.report-processor.prod.nym2",
                "version": "1.73.238",
                "time": 448.82392883301,
                "start_microtime": 1686110938,
                "warnings": [],
                "api_cache_hit": "0",
                "output_term": "report"
            },
            "edge_forwarded": true,
            "edge_forwarded_by": "50.bm-report-processor.prod.nym2",
            "edge_forwarded_to": "http://report-processor-edge.adnxs.net/report"
        }
    }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save, be sure to use the file extension of the file `"format"` that you
specified in your initial `POST` call, for example, CSV.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=d89151942729f768dcac4586288ff7eb' > /tmp/buyer_vendor_usage_analytics.csv
```



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `\-i` or `\-v` in your call to expose the response header





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








