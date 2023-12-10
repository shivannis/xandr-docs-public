---
Title : Advertiser Analytics
Description : The Advertiser Analytics report can be used to view performance,
ms.date: 10/28/2023
ms.custom: digital-platform-api
revenue, and profit data across a specific advertiser's creatives and
campaigns. This report is available to network and advertiser users.
---


# Advertiser Analytics





The Advertiser Analytics report can be used to view performance,
revenue, and profit data across a specific advertiser's creatives and
campaigns. This report is available to network and advertiser users.

For instructions on retrieving a report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the
<a href="advertiser-analytics.md#advertiser-analytics__example"
class="xref">example</a> below. This report requires specifying the
advertiser ID as part of the URL, for example:

``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```





## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

- current_hour
- last_hour
- today
- yesterday
- last_48_hours
- last_2_days
- last_7_days
- last_30_days
- month_to_date
- month_to_yesterday
- quarter_to_date
- last_month
- lifetime

**Data Retention Period**

Most data in this report is maintained permanently (exceptions noted
below). After:

- 100 days, you are no longer able to report on hourly data. However,
  daily, monthly and cumulative intervals are still available.
- 14 months, you are no longer able to report on individual:
  - Creatives
  - Placements
  - Brands

In some cases Analytics reports can show delivery that does not match
statistics shown elsewhere in Invest or Monetize for a given advertiser
or publisher. This is due to the way that Analytics reporting data older
than 100 days and 14 months are aggregated. The data from Billing
reports are kept in non-aggregated form indefinitely. For more
information, see <a
href="invest_invest-standard/dates-and-times-in-reporting.md"
class="xref" target="_blank">Dates and Times in Reporting</a> in the UI
documentation.



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-analytics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="advertiser-analytics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-analytics__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="advertiser-analytics__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="advertiser-analytics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"2010-02-01 06:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The hour of the auction.

<b>Note:</b> For impressions older than 100
days, the day will be returned rather than the hour.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The day of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The month of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">adjustment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">890</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the adjustment used to make changes to the media cost and/or
impressions, clicks, and conversions you see in reporting for a
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Advertiser Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The type of money used by the
advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number for each advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">210</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number for the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">765</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the selling member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"AdMeld"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the selling
member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"AdMeld (765)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">728</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Test (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Campaign Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the
campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">campaign_priority</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The bid priority of a campaign
that is targeting direct inventory. The scale is from 1-10, with 1 being
lowest and 10 being highest.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The ID of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_id</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_name</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><p>The unique identification
number of the creative.</p>

<b>Note:</b>
<ul>
<li>For impressions older than 14 months, creatives will be aggregated
into one row with <code class="ph codeph">0</code> as the <code
class="ph codeph">creative_id.</code></li>
<li>For external click or impression trackers, <code
class="ph codeph">creative_id</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Q1 2010 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">
The display name of the creative.

<b>Note:</b>
<ul>
<li>For impressions older than 14 months, creatives will be aggregated
into one row with <code
class="ph codeph">"All creative data older than 14 months"</code> as the
<code class="ph codeph">creative_name</code>.</li>
<li>For external click or impression trackers, <code
class="ph codeph">creative_name</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Q1 2010 - 728x90 (554)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">546</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the placement.

<b>Note:</b>
<p>For impressions older than 14 months, placements will be aggregated
into one row with -1 as the <code
class="ph codeph">placement_id</code>.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"300x250 Business"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the placement.

<b>Note:</b> For impressions older than 14
months, placements will be aggregated into one row with <code
class="ph codeph">"All placement data older than 100 days"</code> as the
<code class="ph codeph">placement_name</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"FP 728x90 (567)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The ID of the deal. For more
information about deals you have negotiated with sellers, see <a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">deal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"External seller deal code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the deal.
For deals with external supply partners, this is generally the string
that you use to identify the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">placement_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"FP 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the
placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The size of the
placement/creative served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The code for the geographic
country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the geographic
country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative_recency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"15-30 minutes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated.</strong> If
you request this dimension, only a default value will be returned.
Please use the <a
href="advertiser-creative-frequency-and-recency.md"
class="xref" target="_blank">Advertiser Creative Frequency &amp;
Recency</a> report to view creative recency data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative_recency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated.</strong> If
you request this dimension, only a default value will be returned.
Please use the <a
href="advertiser-creative-frequency-and-recency.md"
class="xref" target="_blank">Advertiser Creative Frequency &amp;
Recency</a> report to view creative recency data.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative_frequency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"11-20"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated.</strong> If
you request this dimension, only a default value will be returned.
Please use the <a
href="advertiser-creative-frequency-and-recency.md"
class="xref" target="_blank">Advertiser Creative Frequency &amp;
Recency</a> report to view creative frequency data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">creative_frequency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated.</strong> If
you request this dimension, only a default value will be returned.
Please use the <a
href="advertiser-creative-frequency-and-recency.md"
class="xref" target="_blank">Advertiser Creative Frequency &amp;
Recency</a> report to view creative frequency data.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">gender</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"m"</code>, <code class="ph codeph">"f"</code>, <code
class="ph codeph">"u"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">
The gender of the user.

<b>Note:</b>
<ul>
<li>For impressions older than 100 days, the gender will be <code
class="ph codeph">"u"</code>.</li>
<li>The value of the gender is defined by the publisher in the bid
request. Xandr does not have control over it
apart from processing the value.</li>
</ul>

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The ID for the type of
impression. Possible values (associated types in parentheses):
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
headers="advertiser-analytics__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Kept"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The type of impression. For
possible values, see <code class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">bid_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Manual"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">
The optimization phase the node was in when it bid for this impression.

<b>Note:</b> The term "give up" is appended to
the bid types below if the valuation for that impression falls below the
venue's "give up price".

Allowed values:

<ul>
<li><code class="ph codeph">"Manual"</code>: Applies when you are
bidding with a CPM goal, whether it's Base, EAP, or ECP.</li>
<li><code class="ph codeph">"Learn"</code>: Applies when you are bidding
with optimization (CPA, CPC, or margin) and we do not yet have enough
data to bid optimized.</li>
<li><code class="ph codeph">"Optimized"</code>: Applies when you are
bidding with optimization (CPA, CPC, or margin) and we have enough data
to bid optimized.</li>
<li><code class="ph codeph">"Unknown"</code>: The node was in an unknown
optimization phase.</li>
<li><code class="ph codeph">"Optimized give up"</code></li>
<li><code class="ph codeph">"Learn give up"</code></li>
<li><code class="ph codeph">"Manual give up"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">648359</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"InsertionOrderABC"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the insertion
order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"InsertionOrderABC648359"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Insertion Order Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the
insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">947764</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"LineItemDEF"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"LineItemDEF947764"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Line Item Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the line
item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The type of inventory. Possible
values: <code class="ph codeph">"web"</code>, <code
class="ph codeph">"mobile_web"</code>, or <code
class="ph codeph">"mobile_app"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">1942</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the conversion pixel.

<b>Note:</b> This dimension will return a
maximum of 10 conversion pixels. Also, you can filter by no more than 10
conversion pixels.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">374967</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Publisher XYZ"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Publisher XYZ 347967"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><strong>Deprecated</strong> (as
of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">publisher_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Publisher Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">seller_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Real Time", "Direct"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The seller type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The type of inventory. Possible
values: <code class="ph codeph">"web"</code>, <code
class="ph codeph">"mobile_web"</code>, or <code
class="ph codeph">"mobile_app"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Banner"</code>, <code class="ph codeph">"Pop"</code>,
<code class="ph codeph">"Interstitial"</code>, <code
class="ph codeph">"Video"</code>, <code class="ph codeph">"Text"</code>,
<code class="ph codeph">"Expandable"</code>, <code
class="ph codeph">"Skin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The general display style of
the creative. You can use the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The unique identification
number of the media type to which the subtype belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">user_group_for_campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The test/control user group for
the campaign. See the "labels" field in the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">venue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">321512</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The name of the cluster of
domain, site, tag, and user country that Xandr'
optimization system uses to determine bid valuations. A campaign cannot
target a venue explicitly.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">billing_period_start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"2015-05-25 19:19:53"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><p>The earliest date of the
insertion order's billing period.</p>

<b>Note:</b> <strong>Alpha-Beta
Notice</strong>
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">billing_period_end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"2015-05-30 19:19:53"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5"><p>The last date of the
insertion order's billing period.</p>

<b>Note:</b> <strong>Alpha-Beta
Notice</strong>
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__1">billing_period_external_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__4"><code
class="ph codeph">"houseware245"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__5">The custom code for the billing
period (budget_interval).</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-analytics__entry__321"
class="entry colsep-1 rowsep-1">Column</th>
<th id="advertiser-analytics__entry__322"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-analytics__entry__323"
class="entry colsep-1 rowsep-1">Example</th>
<th id="advertiser-analytics__entry__324"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="advertiser-analytics__entry__325"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">234123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of
impressions served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">attributed_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_revenue +
post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The amount of revenue from
all recorded post views and post clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">attributed_pc_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">121.68</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The amount of revenue from
all recorded post views.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">attributed_pv_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">14</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The amount of revenue from
all recorded post clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">545</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of clicks
across all impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.057</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">total_convs / clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of conversions to
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">click_conv_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.000064</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">total_convs / clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of conversions to
clicks.

<b>Note:</b> This field is identical to <code
class="ph codeph">click_convs_rate</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">click_thru_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.000%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">clicks / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The percentage of users
viewing a creative that clicked on it.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">cpa</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">booked_revenue_dollars /
(post_view_convs + post_click_convs)</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per
acquisition.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">cpc</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">booked_revenue_dollars /
clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.18</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(booked_revenue_dollars /
imps) * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per 1,000
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">75</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of recorded
post view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total amount of recorded
post view revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of recorded
post click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">300.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total amount of recorded
post click revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">total_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">450.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_revenue +
post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total amount of post view
and post click revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">90</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_convs +
post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of post view
and post click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">conv_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.018654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(post_click_convs +
post_view_convs) / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of post click and
post view conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.0003844</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">total_convs / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of conversions to
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">convs_per_mm</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">221.877080097625</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(total_convs / imps) x
1,000,000</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The number of conversions per
million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ecpa_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.13</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">booked_revenue_adv_curr /
(post_view_convs + post_click_convs)</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per acquisition in
the advertiser currency type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ecpc_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.16</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">booked_revenue_adv_curr /
clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per click in the
advertiser currency type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ecpm_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.014</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">booked_revenue_adv_curr /
imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per 1,000
impressions in the advertiser currency type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.000320</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_convs / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of post view
conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.000064</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_convs / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of post click
conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_click_conversion_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">52</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_convs for that
pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The number of post click
conversions for a specific pixel. For more information on how we
attribute post-view (and other) conversions, see <a
href="monetize_monetize-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Monetize)</a> or <a
href="invest_invest-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Invest).</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_click_revenue_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">184.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_revenue for that
pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The amount of revenue earned
for a specific pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_view_conversion_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">174</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_convs for that
pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The number of post view
conversions for a specific pixel. For more information on how we
attribute post-view (and other) conversions, see <a
href="monetize_monetize-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Monetize)</a> or <a
href="invest_invest-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Invest).</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">post_view_revenue_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">303.54</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_view_revenue for that
pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The amount of revenue earned
for a specific pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ppm</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.944966292134831</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(profit / imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The profit per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">2.60548314606741</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(revenue / imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The revenue per 1000
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">spend_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">357.18</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total amount spent by the
advertiser in the advertiser's preferred currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">total_revenue_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">41.253</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">post_click_revenue +
post_view_revenue for that pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total revenue earned for
a specific pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">0.002327</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">clicks / imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The rate of clicks to
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">spend</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">304.36</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">spend</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total marketer spend
across both direct and real time media buys.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">2.15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">media cost</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total amount spent to
purchase all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.30</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(spend / imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The effective advertiser
spend per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">spend / clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The effective advertiser
spend per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.20</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">spend / total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The effective advertiser
spend per conversion/acquisition.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">30,450</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that an impression is viewable if 50% of the pixels are
in-view during 1 consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10,120</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">58%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The percentage of impressions
that were viewable out of the total number of impressions measured for
viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">45%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The percentage of impressions
measured for viewability out of the total number of impressions. (View
Measured Imps / Imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">avg_bid_reduction</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">18%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">avg_bid_reduction</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The average bid reduction you
gained on the line item or campaign. This value represents the
difference (as a percentage) between your bid and the actual media cost
you paid for the impression you won (e.g., due to bid reduction). This
value is only valid for RTB bidding (i.e., not Managed). Currently, this
value is not accurately calculated for line items for which the <code
class="ph codeph">payment_auction_event_type</code> field has been set
to <code class="ph codeph">2</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times a
user skipped the video. Use this metric for reporting when buying
skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times the
first segment of the video creative was downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times the
video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times the
video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times the
video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times the
video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_served</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_served</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of video
responses served to the player.An ad response occurs when the VAST
document (XML) is served in response to a request.An ad response doesn't
necessarily indicate a successful impression. For an impression, the
first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The total number of times a
video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">25.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The revenue per video
completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">22.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">(video completions/total
impressions) x 100</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The ratio of video
completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The percentage of times the
first segment of the video creative was downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__321">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__322">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__323"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__324">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-analytics__entry__325">The percentage of times the
user opted to skip the video.</td>
</tr>
</tbody>
</table>




## Examples

**Create the JSON-formatted report request**

``` pre
$ cat advertiser_analytics 
 
{ 
    "report": { 
        "report_type":"advertiser_analytics", 
        "columns": [ 
            "hour", 
            "seller_member_id", 
            "campaign_id", 
            "gender", 
            "imps", 
            "clicks", 
            "total_convs", 
            "ctr", 
            "convs_rate"
        ], 
        "report_interval": "last_48_hours", 
        "format":"csv" 
    } 
}
```

**`POST` the request to the Reporting Service**x

You `POST` the JSON request and get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @advertiser_analytics "https://api.appnexus.com/report?advertiser_id=690" 
 
{
    "response": {
        "status": "OK",
        "report_id": "2790c6627d058cd467f4267add49bedc",
        "existing": true,
        "dbg_info": {
            ...
        }
    }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this call until the `execution_status` is
`"ready"`. Then use the `report-download` service to save the reporting
data to a file (described in the next step).

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/report?id=dc0314bda06597582518c5fc3e1c47ef" 
 
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-04-17 01:26:00",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "did not find any cache table for 1,3,6,44,30,31,32,34,15",
            "json_request": "{\"report\":{\"report_type\":\"advertiser_analytics\",\"columns\":[\"hour\",\"seller_member_id\",\"campaign_id\",\"gender\",\"imps\",\"clicks\",\"total_convs\",\"ctr\",\"convs_rate\"],\"report_interval\":\"last_48_hours\",\"format\":\"csv\",\"filters\":[{\"buyer_member_id\":\"948\"},{\"advertiser_id\":\"78216\"},{\"imp_type_id\":{\"operator\":\"!=\",\"value\":6}}]}}",
            "header_info": "Report ID:,2790c6627d058be467f4267add49bedc\r\nRun at:,2014-04-17 01:26:00\r\nStart date:,2014-04-15 01:00:00\r\nEnd date:,\r\nTimezone:,\r\nUser:,Jesse Seldess (9685)\r\n",
            "row_count": "0",
            "report_size": "75",
            "user_id": "9685",
            "entity_id": "0",
            "started_on": "2014-04-17 01:26:03",
            "finished_on": "2014-04-17 01:28:02",
            "query_time": "118",
            "url": "report-download?id=2790c6627d058be467f4267add49bedc"
        },
        "execution_status": "ready",
        "dbg_info": {
            ...
        }
    }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download` service. You can find
the service and report ID in the url field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/advertiser_analytics.csv 
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










