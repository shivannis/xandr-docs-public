---
Title : Network Billing
ms.date: 10/28/2023
ms.custom: digital-platform-api
>
class="note warning note_warning">
<b>Warning:</b> This report has been
deprecated. As a result, it should only be used for billing activity
---


# Network Billing



>



class="note warning note_warning">

<b>Warning:</b> This report has been
deprecated. As a result, it should only be used for billing activity
**prior** to October 1, 2015. For reports after October 1, 2015, consult
the <a
href="buying-billing-report.md"
class="xref" target="_blank">Buying Billing Report</a> and the <a
href="selling-billing-report.md"
class="xref" target="_blank">Selling Billing Report</a>.



The **Network Billing Analytics** report can be used to view billing
data across:

- Direct advertiser impressions (bought across direct publishers and
  real-time inventory)
- Direct publishers (sold across direct advertisers and other platform
  buyers)

For instructions on retrieving a report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.











<b>Note:</b> For impressions older than 100
days, the Network Billing Report now returns default values in some
columns:

- Creatives are aggregated into one row with 0 as the `creative_id` and
  a generic `creative_name`.
- Placements are aggregated into one row with -1 as the `placement_id`
  and a generic `placement_name`.
- `hour` - Hourly data is aggregated into one row with 'YYYY-MM-DD
  00:00:00' as the hour ('YYYY-MM-DD' is the UTC day in which the
  activity happened). This will make it look as though all activity
  happened at midnight. All daily data older than 100 days will be
  returned in the UTC time zone.









## Time Frame

>

The `report_interval` field can be set to one of the following:

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

Data retention period for this report is 30 days.

>



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">entity_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">--</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the buyer member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the buyer member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Network (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Real Time"</code>,<code
class="ph codeph"> "Direct"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of buyer</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
currency of the buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the seller member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"That Seller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the seller member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"That Seller (456)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Real Time"</code>,<code
class="ph codeph"> "Direct"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of seller</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">451</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the insertion order</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Q1-2014"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name for the insertion order</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">728</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the campaign</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the campaign</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Test (728)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the creative.

<b>Note:</b> For impressions older than 100
days, creatives are aggregated into one row with 0 as the <code
class="ph codeph">creative_id</code>. For external click or impression
trackers, <code class="ph codeph">creative_id</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Q1 2010 - 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the creative.

<b>Note:</b> For impressions older than 100
days, creatives are aggregated into one row with a generic <code
class="ph codeph">creative_name</code>. For external click or impression
trackers, creative_name will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Q1 2010 - 728x90 (554)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the placement.

<b>Note:</b> For impressions older than 100
days, placements are aggregated into one row with -1 as the <code
class="ph codeph">placement_id</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Photos 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the placement.

<b>Note:</b> For impressions older than 100
days, placements are aggregated into one row with a generic <code
class="ph codeph">placement_name</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Photos 728x90 (567)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID for the type of impression. Possible values (associated types in
parentheses):
<ul>
<li><code class="ph codeph">1</code> ("Blank"): No creative served.</li>
<li><code class="ph codeph">2</code> ("PSA"): A public service
announcement served because there were no valid bids and no default
creative was available.</li>
<li><code class="ph codeph">3</code> ("Default Error"): A default
creative served due to a timeout issue.</li>
<li><code class="ph codeph">4</code> ("Default"): A default creative
served because there were no valid bids.</li>
<li><code class="ph codeph">5</code> ("Kept"): Your advertiser's
creative served on your publisher's site.</li>
<li><code class="ph codeph">6</code> ("Resold"): Your publisher's
impression was sold to a third-party buyer.</li>
<li><code class="ph codeph">7</code> ("RTB"): Your advertiser's creative
served on third-party inventory.</li>
<li><code class="ph codeph">8</code> ("PSA Error"): A public service
announcement served due to a timeout issue or lack of a default
creative.</li>
<li><code class="ph codeph">9</code> ("External Impression"): An
impression from an impression tracker.</li>
<li><code class="ph codeph">10</code> ("External Click"): A click from a
click tracker.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Blank"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of impression. For possible values, see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">revenue_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"CPA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
basis on which the member gets paid.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">revenue_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the revenue type. Possible values: <code
class="ph codeph">-1</code> = No Payment, <code
class="ph codeph">0</code> = Flat CPM, <code class="ph codeph">1</code>
= Cost Plus CPM, <code class="ph codeph">2</code> = Cost Plus Margin,
<code class="ph codeph">3</code> = CPC, <code class="ph codeph">4</code>
= CPA, <code class="ph codeph">5</code> = Revshare, or <code
class="ph codeph">6</code> = Flat Fee, <code class="ph codeph">7</code>
= Variable CPM, <code class="ph codeph">8</code> = Estimated CPM.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">payment_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"com"</code>,<code
class="ph codeph"> "revshare"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of payment to a broker.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">cleared_direct</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">0</code>, <code class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Whether
or not the buyer pays the seller directly for the cost of media. If 0,
Xandr collects the cost of media from the buyer and pays the seller. If
1, the buyer pays the seller directly for the cost of media.
class="note tip note_tip">
<b>Tip:</b> Buyers can match the cost of media
on their invoice by filtering out "cleared direct" transactions.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
hour of the impression.

<b>Note:</b> For impressions older than 100
days, hourly data is aggregated into one row with 'YYYY-MM-DD 00:00:00'
as the hour ('YYYY-MM-DD' is the UTC day in which the activity
happened). This will make it look as though all activity happened at
midnight. All daily data older than 100 days is returned in the UTC time
zone.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
day of the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
month of the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Verizon"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the advertiser</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Verizon (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
currency of the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">932</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the line item</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"$3 CPM Verizon Remarketing"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the line item</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"$3 CPM Verizon Remarketing (932)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Internal
ID of the publisher</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Microsoft"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Display
name of the publisher</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Microsoft (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">Yes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
currency of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">salesperson_for_advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Ray Parcino"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
salesperson for the advertiser. See the "labels" field in the <a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a> for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">salesperson_for_publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Brian Young"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
salesperson for the publisher. See the "labels" field in the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a> for more
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">account_manager_for_advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Rachel Dina"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
account manager for the advertiser. See the "labels" field in the <a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a> for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">account_manager_for_publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Ami Fisher"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
account manager for the publisher. See the "labels" field in the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a> for more
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">trafficker_for_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Maurice Truman"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
trafficker for the line item. See the "labels" field in the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a> for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">salesrep_for_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Beverly Heller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
sales rep for the line item. See the "labels" field in the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a> for more
details.</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th
id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">234123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Total
number of impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">545</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Total
number of clicks across all impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">205</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Total
number of conversions across all impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">304.36</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total cost of the inventory purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">media_cost_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">201.34</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total cost of the inventory purchased, in the currency of the
publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">media_cost_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">201.34</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>The
total cost of the inventory purchased, in the currency of the
advertiser.</p>


<b>Note:</b>
<p>If you are not tracking revenue through Xandr, this will be <code
class="ph codeph">0</code>.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">net_media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">211.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost
- auction_service_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total cost of inventory purchased, less the buyer's auction service
charge deductions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">net_media_cost_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">211.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost_adv_curr
- auction_service_deduction_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>The
total cost of inventory purchased, less the buyer's auction service
charge deductions, in the currency of the advertiser.</p>


<b>Note:</b>
<p>If you are not tracking revenue through Xandr, this will be <code
class="ph codeph">0</code> .</p>

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.30</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(spend
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Amount
of money spent per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ecpm_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.30</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(spend
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Amount
of money spent per 1000 impressions, in the currency of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.002327</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">clicks
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of clicks to impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.000856</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of conversions to impressions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">network_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1201.13</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">network_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
revenue booked through direct advertisers and resold to real-time
buyers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1201.13</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
revenue booked through direct advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">970.24</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
revenue booked through direct advertisers, in the currency of the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">network_profit</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">801.08</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">network_revenue
- media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
profit booked through direct advertisers and resold to real-time
buyers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">network_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">5.13</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(network_revenue
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
revenue per Mille (1000 imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">network_ppm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">3.42</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(network_profit
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
profit per Mille (1000 imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">network_roi</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2.94</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(network_revenue
/ media_cost) - 1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Network
return on investment. Returned as a percentage, e.g., 0.94 = 94%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">advertiser_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">advertiser_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
revenue recorded for the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">advertiser_profit</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">advertiser_revenue
- media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Advertiser
profit</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">advertiser_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(advertiser_revenue
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Advertiser
revenue per Mille (1000 imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">advertiser_ppm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(advertiser_profit
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Advertiser
profit per Mille (1000 imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">advertiser_roi</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(advertiser_revenue
/ media_cost) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Advertiser
return on investment</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">spend</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">304.36</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">creative_overage_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">creative_overage_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Total
fees charged for hosted creatives that exceed the creative size
limit.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">creative_overage_fees_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">creative_overage_fees_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>Total
fees charged for hosted creatives that exceed the creative size limit,
in the currency of the advertiser.</p>


<b>Note:</b> If you are not tracking revenue
through Xandr, this will be <code class="ph codeph">0</code> .

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">auction_service_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">auction_service_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Total
fees charged for impressions bought from third parties. These fees are
charged in addition to the buyer's media cost. For more information, see
"<a
href="finance/buyer-auction-service-charge-mechanics.md"
class="xref" target="_blank">Buyer Auction Service Charge Mechanics</a>"
in the Finance documentation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">auction_service_fees_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">auction_service_fees_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>Total
fees charged for impressions bought from third parties, in the currency
of the advertiser. These fees are charged in addition to the buyer's
media cost. For more information, see "<a
href="finance/buyer-auction-service-charge-mechanics.md"
class="xref" target="_blank">Buyer Auction Service Charge Mechanics</a>"
in the Finance documentation.</p>


<b>Note:</b> If you are not tracking revenue
through Xandr, this will be <code class="ph codeph">0</code> .

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">auction_service_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">auction_service_deduction</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total deductions charged for impressions bought from third parties .
These deductions are included in the buyer's media cost and deducted
when calculating the seller's payment.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">auction_service_deduction_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">auction_service_deduction_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>The
total deductions charged for impressions bought from third parties, in
the currency of the advertiser. These deductions are included in the
buyer's media cost and deducted when calculating the seller's
payment.</p>


<b>Note:</b> If you are not tracking revenue
through Xandr, this will be <code class="ph codeph">0</code> .

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">304.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
revenue generated through sales to external (RTB) buyers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">reseller_revenue_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">304.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">reseller_revenue_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
revenue generated through sales to external (RTB) buyers, in the
currency of the publisher.</td>
</tr>
</tbody>
</table>




## Example

**Create JSON formatted report request**

The JSON file should include the report_type `"network_analytics"`, as
well as the columns (dimensions and metrics) and `report_interval` that
you want to retrieve. You can also filter for specific dimensions,
define granularity (year, month, day), and specify the format in which
the data should be returned (csv, excel, or html). For a full
explanation of fields that can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

>

``` pre
$ cat network-billing-request.json

{
    "report": {
        "format": "csv",
        "report_interval": "last_48_hours",
        "columns": [
            "seller_member_id",
            "buyer_member_id",
            "imps",
            "clicks",
            "convs_rate"
        ],
        "report_type": "network_billing"
    }
}
```



**`POST` the request to the Reporting Service**

>

``` pre
$ curl -b cookies -c cookies -X POST -d @network-billing-request.json 'https://api.appnexus.com/report'

{
    "response": {
        "status": "OK",
        "report_id": "a2add615a52f0ca4ed13f64ce9d94a5c",
        "existing": false
    }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the
reporting data to a file (described in the next step).

>

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'

{
    "response": {
        "status": "OK",
        "report": {
            "name": "",
            "created_on": "2014-04-07 15:51:19",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"last_48_hours\",\"columns\":[\"seller_member_id\",\"buyer_member_id\",\"imps\",\"clicks\",\"convs_rate\"],\"report_type\":\"network_billing\",\"filters\":[{\"entity_member_id\":\"1309\"}]}}",
            "url": "https://hb.nym1.sand-08.adnxs.net/report-download?id=a2add615a52f0ca4ed13f64ce9d94a5c"
        },
        "execution_status": "ready"
    }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download` service. You can find
the service and report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



class="note tip note_tip">

<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.





>

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=a2add615a52f0ca4ed13f64ce9d94a5c > /tmp/network-billing-report.csv
```







<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










