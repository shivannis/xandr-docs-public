---
Title : Network Creative Frequency and Recency
Description : The **Network Creative Frequency & Recency** report can be used to view
ms.date: 10/28/2023
ms.custom: digital-platform-api
creative data for a specific advertiser based on the frequency and
recency of user views. This report is more granular than the <a
---


# Network Creative Frequency and Recency





The **Network Creative Frequency & Recency** report can be used to view
creative data for a specific advertiser based on the frequency and
recency of user views. This report is more granular than the <a
href="advertiser-creative-frequency-and-recency.md"
class="xref" target="_blank">Advertiser Creative Frequency &amp;
Recency</a> report and is available to network users only.

>



<b>Note:</b> For instructions on retrieving a
report, please see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="network-creative-frequency-and-recency.md#report_api_template__example"
class="xref">example</a> below. This report requires specifying the
advertiser ID as part of the URL, for example:

``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```









## Time Frame

>

The `report_interval` field can be set to one of the following:

- last_hour
- today
- yesterday
- last_48_hours
- last_2_days
- last_7_days
- last_14_days
- month_to_date
- last_30_days
- last_month
- last_100_days
- custom



**Data Retention Period**

Data retention period for this report is 120 days (no data before
February 26, 2017).

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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
hour of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
day of the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
month of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the creative.

<b>Note:</b> For external click or impression
trackers, creative_id will be <code
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Q1 2010 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the creative.

<b>Note:</b> For external click or impression
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Q1 2010 728x90 (554)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"15-30 minutes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
bucket for how recently the creative was displayed. See <a
href="network-creative-frequency-and-recency.md#report_api_template__crb"
class="xref">Creative Recency Buckets</a> below for possible
values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_recency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"4"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the creative recency bucket. See <a
href="network-creative-frequency-and-recency.md#report_api_template__crb"
class="xref">Creative Recency Buckets</a> below for possible
values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_frequency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"11-20"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
bucket for how frequently the creative was displayed. See <a
href="network-creative-frequency-and-recency.md#report_api_template__cfb"
class="xref">Creative Frequency Buckets</a> below for possible
values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_frequency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the creative frequency bucket. See <a
href="network-creative-frequency-and-recency.md#report_api_template__cfb"
class="xref">Creative Frequency Buckets</a> below for possible
values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the buying member. If the impression was not purchased, this field
shows one of the following values: <code class="ph codeph">229</code> =
PSA, <code class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the advertiser. If the value is <code class="ph codeph">0</code>,
either the impression was purchased by an external buyer, or a default
or PSA was shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Verizon Wireless"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Verizon Wireless (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Verizon Wireless Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Insertion Order"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Insertion Order (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Insertion Order Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Default Line Item"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Default Line Item (111)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Default Line Item Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">222</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Default Campaign"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Default Campaign (222)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Default Campaign Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_priority</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
bidding priority for a campaign that targets direct inventory. For more
information, see <a
href="monetize_monetize-standard/bidding-priority.md"
class="xref" target="_blank">Bidding Priority</a> in the UI
documentation.</p>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
size of the placement/creative served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">is_remarketing</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">0, 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">If
<code class="ph codeph">1</code>, the campaign is remarketing. If <code
class="ph codeph">0</code>, the campaign is not remarketing.</td>
</tr>
<tr class="odd row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
optimization phase the node was in when it bid for this impression. Note
that the term "give up" is appended to the bid types below if the
valuation for that impression falls below the venue's "give up price".
For more information, see "<a
href="monetize_monetize-standard/what-is-a-venue.md"
class="xref" target="_blank">What is a Venue</a>" and "<a
href="monetize_monetize-standard/give-up-price.md"
class="xref" target="_blank">Give Up Price</a>" in the UI
documentation.</p>

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
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Banner"</code>, <code class="ph codeph">"Pop"</code>,
<code class="ph codeph">"Interstitial"</code>, <code
class="ph codeph">"Video"</code>, <code class="ph codeph">"Text"</code>,
<code class="ph codeph">"Expandable"</code>, <code
class="ph codeph">"Skin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
general display style of a creative. You can use the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the general display style of a creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">trafficker_for_line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
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
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">user_group_for_campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
test/control user group for the campaign. See the "labels" field in the
<a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a> for more details.</td>
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
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">9</code></td>
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
class="ph codeph">0.000221877080097626</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of conversions to impressions.</td>
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">click_conv_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.000064</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_convs
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>The
rate of conversions to clicks.</p>


<b>Note:</b>
<p>This field is identical to <code
class="ph codeph">click_convs_rate</code>.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.000221877080097626</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">clicks
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of clicks to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">click_thru_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(clicks
/ imps) * 100</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of clicks to impressions as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of post-click conversion to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount of recorded post-click conversion revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.00013</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_view_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of post-view conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">300.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount of recorded post-view conversion revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount spent.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.4271259</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(media_cost
/ imps) * 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per 1,000 impressions.</td>
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
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">media_cost
/ total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per attribution/conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">25.767257</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total revenue booked through direct advertisers (line item).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.7778</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">profit/imps
* 1,000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Profit
(defined as booked revenue minus total cost) per 1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">total_cost
= media_cost + data_costs + partner_fees + commissions + serving_fees +
publisher_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5"><p>The
total amount of costs accrued over the reported period of time. This
generally includes two types of costs, budgeted costs (media cost, data
cost, partner fees, serving fees, commissions) and publisher revenue if
you track publisher payouts on the platform.</p>


<b>Note:</b> We have added logic to prevent
double counting third-party fees during the breaking change period .

</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total cost per 1,000 imps.</td>
</tr>
<tr class="odd row">
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total cost per click.</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total cost per conversion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue
- total_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Booked
revenue minus total cost.</td>
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Profit
per click.</td>
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
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(booked_revenue
- total_cost)/conversions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Profit
per conversion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">profit_margin</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">123.45</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(booked_revenue
- total_cost)/booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">Buyer
profit margin.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_skips</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times a user skipped the video. Use this metric for
reporting when buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">11</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times the video creatives completed 25% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times the video creatives completed 50% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times the video creatives completed 75% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times the video creatives played for the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_served</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of video responses served to the player.An ad response
occurs when the VAST document (XML) is served in response to a
request.An ad response doesn't necessarily indicate a successful
impression. For an impression, the first frame of the video must be
served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_errors</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">25.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
revenue per video completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">22.76</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per video completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(video
completions/total impressions) x 100</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
ratio of video completions to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
percentage of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">video_skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
percentage of times the user opted to skip the video.</td>
</tr>
</tbody>
</table>


<table id="report_api_template__table_y3p_l51_wwb"
class="table frame-all">
<caption><span class="table--title-label">Table 1. <span
class="title"><strong>Creative Frequency
Buckets</strong></caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="report_api_template__table_y3p_l51_wwb__entry__1"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="report_api_template__table_y3p_l51_wwb__entry__2"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">-2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"no-cookie-date"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">-1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"no-cookie"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"0"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">1"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"2-5"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"6-10"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"11-20"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"21-40"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"41-60</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">7</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"61-100"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">8</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"101-150"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">9</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"151-250"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"251-500"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_y3p_l51_wwb__entry__2">"500+"</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">**Creative Frequency Buckets**




<table id="report_api_template__table_vyx_t51_wwb"
class="table frame-all">
<caption><span class="table--title-label">Table 2. <span
class="title"><strong>Creative Recency Buckets</strong></caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="report_api_template__table_vyx_t51_wwb__entry__1"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="report_api_template__table_vyx_t51_wwb__entry__2"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">-2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"no-cookie-date"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">-1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"no-cookie"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"&lt; 1
minute"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"1-5
minutes"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"5-15
minutes"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"15-30
minutes"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"30-60
minutes"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"1-4
hours"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"4-12
hours"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">7</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"12-24
hours"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">8</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"1-2
days"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">9</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"2-7
days"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"8-14
days"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__1">11</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_vyx_t51_wwb__entry__2">"14-30
days"</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 2.
<span class="title">**Creative Recency Buckets**






## Example

**Create JSON formatted report request**

>

``` pre
$ cat network_advertiser_frequency_recency

{
    "report":
    {
        "report_type": "network_advertiser_frequency_recency",
        "columns": [
            "creative_recency_bucket",
            "creative_frequency_bucket",
            "creative_id",
            "imps",
            "clicks",
            "total_convs",
            "booked_revenue",
            "media_cost",
            "profit_ecpm"
        ],
        "report_interval": "last_7_days",
        "emails": ["jsmith@xandr.com"],
        "format": "csv"
    }
}
```



**`POST` the request to the Reporting Service**

>

``` pre
$ curl -b cookies -c cookies -X post -d @network_frequency_recency 'https://api.appnexus.com/report?advertiser_id=384'

{
    "response": {
        "status": "OK",
        "report_id": "0f148df60ff2760d57014f607f46fce4"
    }
}
```



****Use the Report ID to retrieve the report data****

The standard response includes the report data and a Download URL that
you can use to save the data to a file. If you want to get just the
Download URL without the report data, pass `"without_data"` in the query
string.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=0f148df60ff2760d57014f607f46fce4'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2012-02-03 22:00:33",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "did not find any cache table for 2,4,44,30,31,66,32,34,9,17,16,36",
            "json_request": "{\"report\":{\"report_type\":\"network_advertiser_frequency_recency\",
             \"columns\":[\"creative_recency_bucket\",\"creative_frequency_bucket\",\"creative_id\",
             \"imps\",\"clicks\",\"total_convs\",\"booked_revenue\",\"media_cost\",\"profit_ecpm\"],
             \"report_interval\":\"last_7_days\",\"emails\":[\"js@email.com\"],\"filters\":
             [{\"buyer_member_id\":\"541\"},{\"advertiser_id\":\"3610\"}]}}",
            "header_info": "Report type:,network_advertiser_frequency_recency\r\n,\r\nRun at:,
             2012-02-03 22:00:33\r\nStart date:,2012-01-27 00:00:00\r\nEnd date:,2012-02-03 00:00:00
             \r\nTimezone:,\r\nUser:,John Smith (9685)\r\n",
            "data": "creative_recency_bucket,creative_frequency_bucket,creative_id,imps,clicks,
             total_convs,booked_revenue,media_cost,profit_ecpm\r\n7-14 days,6-10,753570,1,0,0,.000000,
             .000000,.000000000000000000000000\r\n15-30 minutes,151-250,753571,3,0,0,.000000,.000000,
             .000000000000000000000000\r\n1-2 days,11-20,1316901,12,0,0,.000000,.004200,-.350000000000
             000000000000\r\n1-2 days,11-20,1316886,6,0,0,.000000,.001900,-.316666666666666666667000\r
             \n7-14 days,21-40,773408,3,0,0,.000000,.000160,-.053333333333333333333000\r\n30-60 minutes,
             500+,700464,35,0,0,.000000,.000000,.000000000000000000000000\r\n30-60 minutes,2-5,1317391,
             ...
            "url": "report-download?id=0f1374f60ff2760d57014f607f46fce4"
        },
        "execution_status": "ready"
    }
}
```



****Use the Download URL to save the report data to a file****

You use the `"url"` field in the response to save the report data to a
file. Simply make another `GET` call and identify the location and file
that you want to save to. Be sure to use the file the extension of the
"format" that you specified in your initial `POST` request.

>

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=0f1374f60ff2760d57014f607f46fce4' > /tmp/network_frequency.csv
```







<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










