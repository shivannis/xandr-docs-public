---
Title : Network Advertiser Analytics
Description : The **Network Advertiser Analytics** report is used to view performance
data for a specific advertiser that is more detailed than the data
provided in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-analytics.html"
---


# Network Advertiser Analytics





The **Network Advertiser Analytics** report is used to view performance
data for a specific advertiser that is more detailed than the data
provided in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-analytics.html"
class="xref" target="_blank">Network Analytics</a> report. This report
is available to network users only. Advertiser users can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-analytics.html"
class="xref" target="_blank">Advertiser Analytics</a> report.

<div id="report_api_template__note_ykf_pbq_5wb"


Note:

<div id="report_api_template__p-95c02acf-7d03-4407-afa5-f1411a90ada9"
>

For usage instructions, see below. Note that this report requires that
an advertiser ID be specified as part of the URL, for example:

``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```









## Time Frame

<div id="report_api_template__p-63547b73-5657-46cd-b080-ffceb7fc10be"
>

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



<div id="report_api_template__p-f7e01292-73bf-4fa6-9847-6ff0d52aa493"
>



Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.





**Data Retention Period**



Most data in this report is maintained permanently (exceptions noted
below). After:

- 100 days, you are no longer able to report on hourly data. (However,
  daily, monthly and cumulative intervals are still available.)
- 14 months, you are no longer able to report on individual:
  - Creatives
  - Placements
  - Brands



In some cases Analytics reports can show delivery that does not match
statistics shown elsewhere in Invest or Monetizes for a given advertiser
or publisher. This is due to the way that Analytics reporting data older
than 100 days and 14 months are aggregated. The data from Billing
reports are kept in non-aggregated form indefinitely.



<div id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9"
>

## Dimensions

<div id="report_api_template__p-f0ee8213-f58e-4120-91e8-695370ab2823"
>

<div id="report_api_template__note_o1x_hwn_wwb"


Note: Some dimensions have attributes.
Dimension attributes are a more granular element of data about the
parent dimension. If a dimension has attributes, the name of its
attributes will appear below it using the following syntax:
`dimension_name.attribute_name`.





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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
hour of the auction.

Note: For impressions older than 100
days, the day will be returned rather than the hour.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2010-02-01</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Day
of the month.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2010-02</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Month
of the year.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Advertiser Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the advertiser.</td>
</tr>
<tr class="odd row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
internal ID of the buying member in the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">436537</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the bidder or DSP (demand side platform) that the buyer used to
purchase this impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Bidder's name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the bidder or DSP (demand side platform) that the buyer used to
purchase this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
internal ID of the selling member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"AdMeld"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
display name of the selling member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_member</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"AdMeld (567)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
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
class="ph codeph">344</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
internal ID of the advertiser whose campaign and creative served in the
impression.</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Number
to identify the campaign.</td>
</tr>
<tr class="odd row">
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
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Test (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Campaign Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the campaign</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_priority</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
bidding priority for a campaign that targets direct inventory.</p>
<p>Possible values: <code class="ph codeph">1</code> - <code
class="ph codeph">10</code>, where <code class="ph codeph">10</code> is
the highest priority.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the split that purchased the impressions in this data set. Splits
are only applicable to augmented line items. For any reports that
contain campaigns, the <code class="ph codeph">split_id</code> (if
included) will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the split that purchased the impressions in this data set.
Splits are only applicable to augmented line items. For any reports that
contain campaigns, the <code class="ph codeph">split_name</code> (if
included) will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The ID of the creative.

Note:
<ul>
<li>For impressions older than 14 months, creatives will be aggregated
into one row with 0 as the creative_id.</li>
<li>For external click or impression trackers, creative_id will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Q1 2010 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The name of the creative.

Note:
<ul>
<li>For impressions older than 14 months, creatives will be aggregated
into one row with <code
class="ph codeph">"All creative data older than 100 days</code>" as the
creative_name.</li>
<li>For external click or impression trackers, creative_name will be
<code class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"12655"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
code for the creative.</p>


Note:
<ul>
<li>For impressions older than 100 days, creatives will be aggregated
into one row with <code
class="ph codeph">"All creative data older than 100 days"</code> as the
creative_name.</li>
<li>For external click or impression trackers, creative_code will be
<code class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.</li>
</ul>

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
class="ph codeph">"Q1 2010 728x90 (554)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">194</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The ID of the site.

Note: For impressions older than 14
months, the <code class="ph codeph">site_id</code> will be <code
class="ph codeph">0</code>.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Site Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Site Name (593)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The ID of the placement.

Note: For impressions older than 14
months, placements will be aggregated into one row with -1 as the <code
class="ph codeph">placement_id</code>.

</td>
</tr>
<tr class="odd row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The name of the placement.

Note: For impressions older than 14
months, placements will be aggregated into one row with <code
class="ph codeph">"All placement data older than 14 months"</code> as
the <code class="ph codeph">placement_name</code>.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Photos 728x90 (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">placement_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Placement Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the deal. For more information about negotiated deals between
buyers and sellers, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">deal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"External seller deal code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the deal. For deals with external supply partners, this
is generally the string that you use to identify the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Size
of the creative/placement</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Geographic
country code</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Unites States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Name
of the country</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_recency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"11-20"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated.</strong>
If you request this dimension, only a default value will be returned.
Please use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-creative-frequency-and-recency.html"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a> report to view creative recency data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_recency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"4"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated.</strong>
If you request this dimension, only a default value will be returned.
Please use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-creative-frequency-and-recency.html"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a> report to view creative recency data.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_frequency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"15-30 minutes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated.</strong>
If you request this dimension, only a default value will be returned.
Please use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-creative-frequency-and-recency.html"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a> report to view creative frequency data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_frequency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated.</strong>
If you request this dimension, only a default value will be returned.
Please use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-creative-frequency-and-recency.html"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a> report to view creative frequency data.</td>
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
class="ph codeph">654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
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
class="ph codeph">"Insertion Order Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the insertion order</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Insertion Order Name (654)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Insertion Order Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the insertion order</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Legacy IO"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of insertion order associated with the impression (e.g. Legacy,
Seamless).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.state</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"active"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
state of the insertion order associated wih the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
start date of the non-seamless insertion order associated with the
impression. For seamless orders, see <code
class="ph codeph">billing_period.start_date</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
end date of the non-seamless insertion order associated with the
impression. For seamless orders, see <code
class="ph codeph">billing_period.end_date</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.booked_impressions_budget_daily</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily impression budget for the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.booked_impressions_budget_lifetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">20000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime impression budget for the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.booked_revenue_budget_daily</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">200.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily budget in revenue for the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.booked_revenue_budget_lifetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">10000.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime budget in revenue for the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order.billing_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"E4567"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
billing code associated with the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">type_for_insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Retargeting IO"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
custom reporting field describing the type of insertion order. See the
labels field in the <a
href="https://docs.xandr.com/bundle/yield-analytics-api/page/topics/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information. You may only select one reporting label per report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">salesrep_for_insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Patricia Martin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
custom reporting field containing the sales representative for the
insertion order. See the labels field in the <a
href="https://docs.xandr.com/bundle/yield-analytics-api/page/topics/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information. You may only select one reporting label per report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">trafficker_for_insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"George Martin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
custom reporting field containing the trafficker for the insertion
order. See the labels field in the <a
href="https://docs.xandr.com/bundle/yield-analytics-api/page/topics/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information. You may only select one reporting label per report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2015-05-25 19:19:53"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
earliest date of the insertion order's billing period.</p>

Note:
<p><strong>Alpha-Beta Notice:</strong>This field or feature is part of
functionality currently in either Alpha or Beta phase. It is therefore
subject to change.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2015-05-30 19:19:53"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
last date of the insertion order's billing period.</p>


Note: <strong>Alpha-Beta
Notice:</strong>This field or feature is part of functionality currently
in either Alpha or Beta phase. It is therefore subject to change.

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.booked_imps_budget_daily</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">3500</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily impression budget of the insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.booked_imps_budget_lifetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">30000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime impression budget of the insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.booked_revenue_budget_daily_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">250.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily revenue budget of the insertion order's billing period.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.booked_revenue_budget_lifetime_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2500.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime revenue budget of the insertion order's billing period.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">billing_period.external_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"houseware245"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the billing period (budget_interval).</td>
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
class="ph codeph">"CPM"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
How the buyer is paying for the impression. Possible values:
<ul>
<li><code class="ph codeph">"No payment"</code></li>
<li><code class="ph codeph">"CPM"</code></li>
<li><code class="ph codeph">"CPC"</code></li>
<li><code class="ph codeph">"CPA"</code></li>
<li><code class="ph codeph">"Owner CPM"</code></li>
<li><code class="ph codeph">"Owner revshare"</code></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The type of supply in the impression. Possible values:
<ul>
<li><code class="ph codeph">"web"</code>: A site viewed on a desktop
browser.</li>
<li><code class="ph codeph">"mobile_web"</code>: A site viewed on a
mobile browser.</li>
<li><code class="ph codeph">"mobile_app"</code>: An app running on a
mobile device.</li>
</ul>
</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Number
to identify the line item</td>
</tr>
<tr class="odd row">
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
<tr class="even row">
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
.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Line Item Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the line item</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"standard"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
line item type (e.g., standard, augmented)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.status</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"active"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
state of the line item (e.g., active, inactive)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2017-02-06 00:00:00 EST5EDT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
start date of the non-augmented line item. For augmented line Items
(ALIs), see <code class="ph codeph">flight.start_date</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2017-02-09 23:00:00 EST5EDT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
end date of the non-augmented line item. For augmented line Items
(ALIs), see <code class="ph codeph">flight.end_date</code> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.booked_impressions_budget_daily</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily impression budget for the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.
booked_impressions_budget_lifetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">20000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime impression budget for the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.booked_revenue_budget_daily_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">1200.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily budget in revenue for the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.booked_revenue_budget_lifetime_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">23000.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime budget in revenue for the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item.comments</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"extension of Feb spend"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Any
comments related to this line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">type_for_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Branding IO"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
custom reporting field describing the type of line item. See the <code
class="ph codeph">labels</code> field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a> for more information.
You may only select one reporting label per report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">salesrep_for_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Patricia Martin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
custom reporting field containing the sales representative for the line
item. See the <code class="ph codeph">labels</code> field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a> for more information.
You may only select one reporting label per report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">trafficker_for_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"George Martin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
custom reporting field containing the trafficker for the line item. See
the <code class="ph codeph">labels</code> field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a> for more information.
You may only select one reporting label per report.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">1942</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the conversion pixel.

Note: This dimension will return a
maximum of 10 conversion pixels. Also, you can filter by No more than 10
conversion pixels.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123475</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
line item flight ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight.start_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2017-02-06 00:00:00 EST5EDT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
start date of the line item's flight.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight.end_date</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2017-02-09 23:00:00 EST5EDT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
end date of the line item's flight.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight.booked_impressions_budget_daily</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">20000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily impression budget for the line item's flight.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight.booked_impressions_budget_lifetime</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">200000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime impression budget for the line item's flight.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight.booked_revenue_budget_daily_advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">200.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
daily budget in revenue for the line item's flight.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">flight.booked_revenue_budget_lifetime_advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">20000.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
lifetime budget in revenue for the line item's flight.</td>
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
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">Number
to identify the publisher</td>
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
class="ph codeph">"Test"</code></td>
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
class="ph codeph">"Test (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">publisher_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Publisher Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the publisher</td>
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
type of impression. Integer value which translates as follows: <code
class="ph codeph">1</code> = Blank, <code class="ph codeph">2</code> =
PSA, <code class="ph codeph">3</code> = Default Error, <code
class="ph codeph">4</code> = Default, <code class="ph codeph">5</code> =
Kept, <code class="ph codeph">6</code> = Resold, <code
class="ph codeph">7</code> = RTB, <code class="ph codeph">8</code> = PSA
Error, <code class="ph codeph">9</code> = External Impression, or <code
class="ph codeph">10</code> = External Click.</td>
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
class="ph codeph">"Kept"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of impression. See <code class="ph codeph">imp_type_id</code> above
for the correspondence between descriptions and numeric values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">bid_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Manual"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><div
>
The optimization phase the node was in when it bid for this impression.
Note that the term "give up" is appended to the bid types below if the
valuation for that impression falls below the venue's "give up price".
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
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">seller_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Real Time"</code>, <code
class="ph codeph">"Direct"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of media sold by the seller</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Banner"</code>, <code class="ph codeph">"Pop"</code>,
<code class="ph codeph">"Interstitial"</code>, <code
class="ph codeph">"Video"</code>, <code class="ph codeph">"Text"</code>,
<code class="ph codeph">"Expandable"</code>, <code
class="ph codeph">"Skin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
general display style of the creative. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Read-only.</strong>
The ID of the media type to which the subtype belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">venue_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">1805</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the cluster of domain, site, tag, and user country that the Xandr
optimization system uses to determine bid valuations.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">venue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Venue Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the cluster of domain, site, tag, and user country that the
Xandr optimization system uses to determine bid valuations.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">predict_type_rev</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
optimization phase of the campaign. Possible values:</p>
<ul>
<li><code class="ph codeph">-2</code> = No predict phase</li>
<li><code class="ph codeph">-1</code> = Base predict phase</li>
<li><code class="ph codeph">0</code> = Learn giveup</li>
<li><code class="ph codeph">1</code> = Learn</li>
<li><code class="ph codeph">2</code> = Throttled</li>
<li><code class="ph codeph">3</code> = Optimized</li>
<li><code class="ph codeph">4</code> = Biased</li>
<li><code class="ph codeph">5</code> = Optimized 1</li>
<li><code class="ph codeph">8</code> = Optimized giveup</li>
<li><code class="ph codeph">9</code> = Base bid below giveup</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Local"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of advertiser. See the "labels" field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a> for more
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">user_group_for_campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
test/control user group for the campaign. See the "labels" field in the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a> for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Performance"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
field describing the line item, provided by the user. See the the
"labels" field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a> for more
information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Client A Insertion Order"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">A
field describing the insertion order, provided by the user. See the
"labels" field in the <a
href="https://docs.xandr.com/bundle/yield-analytics-api/page/topics/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">adjustment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">890</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the adjustment used to make changes to the media cost and/or
impressions, clicks, and conversions you see in reporting for a
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">revenue_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
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
</tbody>
</table>



<div id="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277"
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of impressions served.</td>
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
the total number of clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">75</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of recorded post-view conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount of recorded post-view conversion revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">300.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount of recorded post-click conversion revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">450.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">300.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue in the advertiser's currency</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">90</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_convs
+ post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.0003844</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.000320</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_view_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of post-view conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.000064</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of post-click conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.2327836</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">clicks
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of clicks to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.084102</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue
- total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Booked
revenue minus total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.1651376</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_convs
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of conversions to clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">Yes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
advertiser's preferred currency. This preference can be set using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.9221</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpm_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">revenue_ecpm_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue per 1000 impressions in the advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.4271259</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost
/ imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.4949</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">profit
/ imps * 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
profit per 1000 impressions."Profit" is defined as booked revenue minus
total cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.8256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue per click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpc_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">revenue_ecpc_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue per click in the advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue
/ total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpa_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">3.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">revenue_ecpa_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue per conversion in the advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.1111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost
/ total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per acquisition/conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.7778</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">profit/booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Buyer
profit margin. "Profit" is defined as booked revenue minus total
cost.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount spent.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">120.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost_buying_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount spent expressed in buying currency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">convs_per_mm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">384.4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(total_convs/imps)
* 1,000,000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of conversions per million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">click_thru_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2.756%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(clicks
/ imps) * 100</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of clicks to impressions, expressed as a percentage. In other
words, the percentage of impressions that resulted in clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">commissions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">Commissions
for standard line items, $0 for ALIs.</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Fees
that come out of the booked revenue. Commissions for standard line
items, $0 for ALIs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">serving_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.025143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">Serving
fees for standard line items, $0 for ALIs.</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Fees
that are added to the media cost. Serving fees for standard line items,
$0 for ALIs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">250.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue_dollars
- commissions - media_cost_dollars - serving fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Profit minus commissions and serving fees.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_revenue_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">450.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue_dollars
- commissions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Total revenue after commissions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_revenue_including_fees_adv_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">370.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue_adv_curr
- commissions_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Total revenue after commissions, in the
advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpa_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
(post_click_convs + post_view_convs) &gt; 0, then
(booked_revenue_dollars - commissions) / (post_click_convs +
post_view_convs)</p>
<p>If (post_click_convs + post_view_convs) = 0, then
(booked_revenue_dollars - commissions) / 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Revenue per conversion after commissions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpa_including_fees_adv_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">3.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
(post_view_convs + post_click_convs) &gt; 0, then
(booked_revenue_adv_cur - commissions_adv_revenue) / (post_view_convs +
post_click_convs)</p>
<p>If (post_view_convs + post_click_convs) = 0, then
(booked_revenue_adv_cur - commissions_adv_revenue) / 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Revenue per conversion after commissions, in the
advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpc_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.7256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
clicks &gt; 0, then (booked_revenue_dollars - commissions / clicks</p>
<p>If clicks = 0, then (booked_revenue_dollars - commissions /
1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Revenue per click after commissions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpc_including_fees_adv_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.7256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
clicks &gt; 0, then (booked_revenue_adv_curr - commissions_adv_curr) /
clicks</p>
<p>If clicks = 0, then (booked_revenue_adv_curr - commissions_adv_curr)
/ 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Revenue per click after commissions, in the
advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpm_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.3131</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
imps &gt; 0, then (booked_revenue_dollars - commissions) / (imps) *
1000</p>
<p>If imps = 0, then (booked_revenue_dollars - commissions) /
1000</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Revenue per thousand impressions after
commissions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_ecpm_including_fees_adv_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.3456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
imps &gt; 0, then (booked_revenue_dollars_adv_curr -
commissions_adv_curr) / (imps) * 1000</p>
<p>If imps = 0, then (booked_revenue_dollars_adv_curr -
commissions_adv_curr) / 1000</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Revenue per thousand impressions after
commissions, in the advertiser's currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpa_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.1111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
(post_click_convs + post_view_convs) &gt; 0, then (media_cost_dollars +
serving_fees) / (post_click_convs + post_view_convs)</p>
<p>If (post_click_convs + post_view_convs) = 0, then (media_cost_dollars
+ serving_fees) / 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Cost per conversion including serving fees.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpc_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.7925</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
clicks &gt; 0, then (media_cost_dollars + serving fees) / clicks</p>
<p>If clicks = 0, then (media_cost_dollars + serving fees) / 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Cost per click including serving fees.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpm_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.4271259</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
imps &gt; 0, then (media_cost_dollars + serving_fees) / imps</p>
<p>If imps = 0, then (media_cost_dollars + serving_fees) / 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Gross serving fees per thousand
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_net_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">200.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue_dollars
- commissions - media_cost_dollars - serving fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Net profit after commissions and serving
fees.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_ecpm_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.4141</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
imps &gt; 0, then (booked_revenue_dollars - commissions -
media_cost_dollars - serving_fees) / imps * 1000</p>
<p>If imps = 0, then (booked_revenue_dollars - commissions -
media_cost_dollars - serving_fees) / 1000</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Profit per thousand impressions after
commissions and serving fees.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_margin_including_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.7778</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>If
(booked_revenue_dollars - commissions) &gt; 0, then
(booked_revenue_dollars - commissions - media_cost_dollars -
serving_fees) / (booked_revenue_dollars - commissions)</p>
<p>If (booked_revenue_dollars - commissions) = 0, then
(booked_revenue_dollars - commissions - media_cost_dollars -
serving_fees) / 1</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>To
be deprecated.</strong> Profit margin after commissions and serving
fees.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_convs_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Post
view conversions for the pixel. For more information on how we attribute
post-view (and other) conversions, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/conversion-attribution.html"
class="xref" target="_blank">Conversion Attribution (Monetize)</a> or <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/conversion-attribution.html"
class="xref" target="_blank">Conversion Attribution (Invest).</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_clicks_convs_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">15</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Post
click conversions for the pixel. For more information on how we
attribute post-view (and other) conversions, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/conversion-attribution.html"
class="xref" target="_blank">Conversion Attribution (Monetize)</a> or <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/conversion-attribution.html"
class="xref" target="_blank">Conversion Attribution (Invest).</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_revenue_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">118.50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Total
revenue for the pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_revenue_including_fees_pixel</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">94.80</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">To
be deprecated. Total revenue for the pixel after commissions</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">30,450</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of measured impressions that were viewable per the IAB
Viewability definition.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10,120</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">58%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
percentage of impressions that were viewable out of the total number of
impressions measured for viewability. (Viewed Imps / View Measured
Imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">45%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
percentage of impressions measured for viewability out of the total
number of impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpvm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(media_cost
/ imps_viewed) * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per 1000 viewable impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">avg_bid_reduction</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">18%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
average bid reduction you gained on the line item or campaign. This
value represents the difference (as a percentage) between your bid and
the actual media cost you paid for the impression you won (e.g., due to
bid reduction). This value is only valid for RTB bidding (i.e., not
Managed). Currently, this value is not accurately calculated for line
items for which the <code
class="ph codeph">payment_auction_event_type</code> field has been set
to <code class="ph codeph">2</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">partner_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>Forthcoming.</strong>
The total amount of third-party costs, budgeted using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/partner-fee-service.html"
class="xref" target="_blank">Partner Fee Service</a>, that have accrued
on an augmented line item over the reported period of time.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"><p>total_cost
= media_cost + data_costs + partner_fees + commissions + serving_fees +
publisher_revenue</p></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p><strong>Forthcoming</strong>.
The total amount of costs accrued over the reported period of time. This
generally includes two types of costs, budgeted costs (media cost, data
cost, partner fees, serving fees, commissions) and publisher revenue if
you track publisher payouts on the platform.</p>


Note: We have added logic to prevent
double counting third-party fees during the breaking change period (July
17-After the breaking change period ).

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(total_cost/imps)
* 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>Forthcoming</strong>.
The total cost per 1,000 imps.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_cost/clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>Forthcoming</strong>.
The total cost per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_cost/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>Forthcoming</strong>.
The total cost per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(booked_revenue
- total_cost)/clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>Forthcoming</strong>.
Profit per click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(
booked_revenue - total_cost)/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><strong>Forthcoming</strong>.
Profit per conversion.</td>
</tr>
</tbody>
</table>



<div id="report_api_template__section-d0351add-f3bd-4c3d-86c4-9ced35e58985"
>

## Example

**Create JSON report request**

The JSON file should include the report_type of
`"network_advertiser_analytics"`, as well as the columns (dimensions and
metrics) and report_interval that you want to retrieve. You can also
filter for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

<div id="report_api_template__p-9a012f8c-2ae0-4fcb-80ef-f431acfeb9de"
>

``` pre
$ cat network_advertiser_analytics

{"report":
    {
        "report_type":"network_advertiser_analytics",
        "columns":[
            "hour",
            "seller_member_id",
            "campaign_id",
            "imps",
            "clicks",
            "total_convs",
            "ctr",
            "convs_rate"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```



**`POST` the request to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>**

You `POST` the JSON request and get back a report ID.

<div id="report_api_template__p-d63f79d5-fa02-4b6c-bc63-036fec1228af"
>

``` pre
$ curl -b cookies -X post -d @network_advertiser_analytics "https://api.appnexus.com/report?advertiser_id=690"

{
  "response":{
   "status":"OK",
   "report_id":"09b6979a6a4c3805bdac8921378d3622"
  }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this call until the `execution_status` is
`"ready"`. Then use the `report-download` service to save the reporting
data to a file (described in the next step).

<div id="report_api_template__p-c6389ddb-d794-458a-9202-f2be551ef2bf"
>

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'

{
  "response":{
   "status":"OK",
   "report":{
     "name":null,
     "created_on":"2010-05-25 19:15:48",
     "json_request":"{\"report\":{\"report_type\":\"network_advertiser_analytics\",\"columns\":
     [\"hour\",\"seller_member_id\",\"campaign_id\",\"imps\",\"clicks\",\"total_convs\",
     \"ctr\",\"convs_rate\"],\"row_per\":[\"hour\",\"seller_member_id\",\"campaign_id\"],
     \"report_interval\":\"last_48_hours\",\"filters\":[{\"advertiser_id\":\"690\"}]}}",
     "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
   },
   "execution_status":"ready"
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

<div id="report_api_template__p-4b3be0a7-23f7-44a1-a51a-a81e408d5a56"
>

<div id="report_api_template__note_jzb_sf4_wwb"


Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/network_advertiser_analytics.csv
```











Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.









## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
  class="xref" target="_blank">Report Service</a>






