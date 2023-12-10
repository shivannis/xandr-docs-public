---
Title : Key Value Analytics Report
Description : The Key Value Analytics report shows you the information associated with
ms.date: 10/28/2023
ms.custom: digital-platform-api
your network's defined targeting keys and values.
---


# Key Value Analytics Report





The Key Value Analytics report shows you the information associated with
your network's defined targeting keys and values.

Impressions with key/value targeting will serve and be reported only for
those impressions that were logged by a placement tag containing the
**kw\_** prefix on the key name. For example, a placement tag containing
*keyname=value1* will not serve and therefore not be logged, whereas a
placement tag containing *kw_keyname=value1* will serve and be logged.
This applies to GET-based query-string ad calls with the following tag
types: /tt, /ttj, /fpt, /jpt, /pt, /ptv, /ssptv, /mtj, /map, /mob,
/prebid/amp, /vmap, /ssvmap.





<b>Note:</b> **AppNexus Seller Tags**

When using <a
href="seller-tag/seller-tag/seller-tag.md"
class="xref" target="_blank">Seller Tag</a>, omit the **kw\_** prefix.
AST has the keyword object in the body of the (ut/v3) request, so the
prefix is not needed. The same holds true for other POST-based request
body ad calls from Prebid (ut/v3/prebid, openrtb2/prebid, prebid/lfv)
and OpenRTB (openrtb2).





Not all impressions from key/value targets will be included in reports.
To be included, the targets must meet the following criteria:

- Key must be pre-defined. (See the <a
  href="monetize_monetize-standard/pre-defining-targeting-keys-and-values.md"
  class="xref" target="_blank">Pre-Defining Targeting Keys and Values</a>
  page in the UI for more information.)
- Value must be pre-defined OR Value must be targeted by at least one
  line item or campaign.
- Value is not a numeric range (greater than or less than).
- Value does not include a wildcard.





## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- today
- yesterday
- last_24_hours
- last_48_hours
- last_7_days
- last_month
- month_to_date
- quarter_to_date



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.



**Time ranges including dates occurring greater than 45 days ago.**



If you create a Key Value Analytics report with the Range field set to
Custom (where the end date is greater than 45 days from today), your
report (regardless of metrics included) will be added to a special queue
for "resource-intensive" reports. As a result, the report may take
longer than usual to complete. In addition, this resource-intensive
report may, due to the amount of data being requested, fail before being
completed. If your report fails to complete, you will receive a
notification. If your report request fails, you can:

- rerun the report at a later time.
- use a report type other than Key Value Analytics.
- alter the way you structure your reports (if possible) so they do not
  include dates greater than 45 days ago.



If you are frequently requesting Key Value Analytics reports which
include dates longer than 45 day ago, you may need to consider running
these reports via the API, caching the data and using <a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a> or a <a
href="log-level-data/log-level-data-feeds.md"
class="xref" target="_blank">Log Level Data Feeds - Archive</a>. See the
<a
href="invest_invest-standard/dimensions-metrics-filtering-and-grouping.md"
class="xref" target="_blank">Dimensions, Metrics, Filtering, and
Grouping</a> page in the UI for more details on how to alter your
reports to avoid these issues.

**Data Retention Period**

Data in this report is retained for 428 days.



>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="key-value-analytics-report__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="key-value-analytics-report__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="key-value-analytics-report__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="key-value-analytics-report__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="key-value-analytics-report__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The month of
the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The day of
the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The hour of
the auction. <b>Note:</b> For impressions older than 100 days, the day will be
returned rather than the hour.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
buying member. If the impression was not purchased, this field shows one
of the following values: <code class="ph codeph">229</code> = PSA, <code
class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the buying member.


<b>Note:</b> The name might be <code
class="ph codeph">"Default"</code> or <code
class="ph codeph">"Default Error"</code>, which means that there was no
buyer for the impression, and a default creative was served.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"My Network (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
selling member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the selling member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"That Seller (456)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">1212</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
placement.


<b>Note:</b> For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the <code
class="ph codeph">placement_id</code> .

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"lvillage 160x600"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the placement.


<b>Note:</b> For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">"All placement data older than 100 days"</code> as the
<code class="ph codeph">placement_name</code>.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"lvillage 160x600 (1212)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
advertiser. If the value is 0, either the impression was purchased by an
external buyer, or a default or PSA was shown.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"AdvertiserA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"AdvertiserA (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">1122</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Line Item 1"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Line Item 1 (1122)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">222</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Default Campaign"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Default Campaign (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">Int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_id</code> (if included)
will be <code class="ph codeph">null</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the split that purchased the impressions in this data set. Splits are
only applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_name</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"PublisherA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"PublisherA (555)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The code for
the geographic country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Blank"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The type of
impression. For possible values, see <code
class="ph codeph">imp_type_id</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><div
>
The ID for the type of impression. Possible values (associated types in
parentheses):
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
</ul>

<b>Note:</b> RTB auctions are not included in
reports. An impression with <code class="ph codeph">imp_type_id</code> =
<code class="ph codeph">7</code> will not be reported.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">444</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><p>The ID of
the creative.</p>

<b>Note:</b>
<ul>
<li>For impressions older than 100 days, creatives will be aggregated
into one row with <code class="ph codeph">0</code> as the <code
class="ph codeph">creative_id</code>.</li>
<li>For external click or impression trackers, creative_id will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Q1 2017 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><div
>
The name of the creative.
<ul>
<li>For impressions older than 100 days, creatives will be aggregated
into one row with <code
class="ph codeph">"All creative data older than 100 days"</code> as the
<code class="ph codeph">creative_name</code>.</li>
<li>For external click or impression trackers, creative_name will be
<code class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Q1 2017 728x90 (444)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The size of
the placement/creative served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The currency
used by the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
insertion order associated with the campaign that purchased the
impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">campaign_group_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">432</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The campaign
group ID of the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">765</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The ID of the
site.


<b>Note:</b> For impressions older than 100
days, the <code class="ph codeph">site_id</code> will be <code
class="ph codeph">0</code>.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Site 1"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"Site 1 (765)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"EUR"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The currency
used by the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">key_name</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"fruit"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The name of
the targeting key.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">key_value</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"apple"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The value
associated with the targeting key.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">key_name_label</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"fruit eaten by customer"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The label for
the key. The label can be a more descriptive version of the key
name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__1">key_value_label</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__4"><code
class="ph codeph">"green or red apples"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__dimensions__entry__5">The label for
the value. The label can be a more descriptive version of the key
value.</td>
</tr>
</tbody>
</table>




## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="key-value-analytics-report__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="key-value-analytics-report__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="key-value-analytics-report__metrics__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="key-value-analytics-report__metrics__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="key-value-analytics-report__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">234123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total number
of impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">545</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total number
of clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">0.2327836</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">clicks /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The
click-through rate – the ratio of clicks to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total
revenue booked through direct advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total
revenue on resold impressions through direct publishers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">250.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">booked_revenue +
reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total
revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">1.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">revenue / 1000
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The revenue per
1000 impressions, including defaults, PSAs, and errors. For more
information about these impression types, see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">booked_revenue_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">500.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">booked_revenue_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The dollar
amount earned by this network on the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">imps_blacklisted</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">20</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">imps_blacklisted</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The number of
impressions that didn't serve because a site was in a blocklist.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">total_conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">total_conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total number
of post-view and post-click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">conversions_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">0.000221877080097626</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">total_conversions
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The rate of
conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">1.66051685393258</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">(cost / imps) x
1000</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The cost per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total number
of recorded post-view conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">0.00013</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">post_view_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The rate of
post-view conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total number
of recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">post_click_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The rate of
post-click conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__1">imps_master_creative</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__3"><code
class="ph codeph">1276</code></td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__4">imps_master_creative</td>
<td class="entry colsep-1 rowsep-1"
headers="key-value-analytics-report__metrics__entry__5">The total number
of impressions from the master creative in page-level roadblocking.
<b>Note:</b> This metric is in alpha testing and not available to all
customers.</td>
</tr>
</tbody>
</table>




## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"key_value_analytics"`, as well as the columns (dimensions and metrics)
and `report_interval` that you want to retrieve. You can also filter for
specific dimensions, define granularity (`year`, `month`, `day`), and
specify the `"format"` in which the data should be returned (`"csv"`,
`"excel"`, or `"html"`). For a full explanation of fields that can be
included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat key_value_analytics

{"report":
    {
        "report_type":"key_value_analytics",
        "columns":[
            "hour",
            "seller_member_id",
            "key_name",
            "key_name_label",
            "key_value",
            "key_value_label",
            "imps",
            "clicks",
            "revenue",
            "ctr"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -X post -d @key_value_analytics "https://api.appnexus.com/report?advertiser_id=123"

{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'

{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2016-12-11 19:15:48",
         "json_request": "{\"report\":{\"report_type\":\"key_value_analytics\",
             \"columns\":[\"hour\",\"seller_member_id\",
             \"key_name\",\"key_name_label\",\"key_value\",\"key_value_label\",
             \"imps\",\"clicks\",\"revenue\",\"ctr\"],
             \"report_interval\":\"last_48_hours\",\"format\":\"csv\",\"filters\":[{\"advertiser_id\":\"123\"}]}}",
             "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/key_value_analytics.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










