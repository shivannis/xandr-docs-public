---
Title : Advertiser Creative Frequency and Recency
Description : The Advertiser Creative Frequency & Recency report can be used to view
creative data for a specific advertiser based on the frequency and
recency of user views. This report is available to advertiser and
---


# Advertiser Creative Frequency and Recency





The Advertiser Creative Frequency & Recency report can be used to view
creative data for a specific advertiser based on the frequency and
recency of user views. This report is available to advertiser and
network users.

For instructions on retrieving a report, please see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or see the <a
href="advertiser-creative-frequency-and-recency.html#advertiser-creative-frequency-and-recency__example"
class="xref">example</a> below. For an advertiser user, the advertiser
ID is detected based on the user's authentication. For a network user,
however, this report requires specifying the advertiser ID as part of
the URL, for example:

``` pre
https://api.appnexus.com/report?advertiser_id=ADVERTISER_ID
```



Note: Lookback window

Frequency and recency data is available for 120 days (no data before
February 26, 2017).







## Time Frame

The `report_interval` field in the JSON request can be set to one of the
following:

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

Data retention period for this report is 120 days.



Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.







## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-creative-frequency-and-recency__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="advertiser-creative-frequency-and-recency__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-creative-frequency-and-recency__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="advertiser-creative-frequency-and-recency__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="advertiser-creative-frequency-and-recency__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The hour
of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The day of
the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The month
of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the creative.

Note: For external click or impression
trackers, <code class="ph codeph">creative_id</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Q1 2010 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The name
of the creative.

Note: For external click or impression
trackers, <code class="ph codeph">creative_name</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Q1 2010 728x90 (554)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative_recency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"15-30 minutes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The bucket
for how recently the creative was displayed. See <a
href="advertiser-creative-frequency-and-recency.html#advertiser-creative-frequency-and-recency__cre-rec-buc"
class="xref">Creative Recency Buckets</a> below for possible
values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative_recency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"4"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the creative recency bucket. See <a
href="advertiser-creative-frequency-and-recency.html#advertiser-creative-frequency-and-recency__cre-rec-buc"
class="xref">Creative Recency Buckets</a> below for possible
values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative_frequency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"11-20"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The bucket
for how frequently the creative was displayed. See <a
href="advertiser-creative-frequency-and-recency.html#advertiser-creative-frequency-and-recency__cre-fre-buc"
class="xref">Creative Frequency Buckets</a> below for possible
values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">creative_frequency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the creative frequency bucket. See <a
href="advertiser-creative-frequency-and-recency.html#advertiser-creative-frequency-and-recency__cre-fre-buc"
class="xref">Creative Frequency Buckets</a> below for possible
values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the buying member. If the impression was not purchased, this field shows
one of the following values: <code class="ph codeph">229</code> = PSA,
<code class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the advertiser. If the value is <code class="ph codeph">0</code>, either
the impression was purchased by an external buyer, or a default or PSA
was shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Verizon Wireless"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The name
of the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Verizon Wireless (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Virizon Wireless Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The custom
code for the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Insertion Order"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The name
of the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Insertion Order (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Insertion Order Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The custom
code for the insertion order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Default Line Item"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The name
of the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Default Line Item (111)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Default Line Item Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The custom
code for the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">222</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Default Campaign"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The name
of the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Default Campaign (222)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">campaign_code</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Default Campaign Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The custom
code for the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">campaign_priority</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><p>The
bidding priority for a campaign that targets direct inventory.</p>
<p>Possible values: <code class="ph codeph">1</code> - <code
class="ph codeph">10</code>, where <code class="ph codeph">10</code> is
the highest priority.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the split that purchased the impressions in this data set. Splits are
only applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_id</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The name
of the split that purchased the impressions in this data set. Splits are
only applicable to augmented line items. For any reports that contain
campaigns, the <code class="ph codeph">split_name</code> (if included)
will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The size
of the placement/creative served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">is_remarketing</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">0</code>, <code class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">Whether or
not the campaign is remarketing</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">bid_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Manual"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5"><div
>
The optimization phase the node was in when it bid for this impression.

Note: The term "give up" is appended to
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
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Banner"</code>, <code class="ph codeph">"Pop"</code>,
<code class="ph codeph">"Interstitial"</code>, <code
class="ph codeph">"Video"</code>, <code class="ph codeph">"Text"</code>,
<code class="ph codeph">"Expandable"</code>, <code
class="ph codeph">"Skin"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The
general display style of a creative. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The ID of
the general display style of a creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__1">user_group_for_campaign</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__5">The
test/control user group for the campaign. See the "labels" field in the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a> for more details.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-creative-frequency-and-recency__entry__186"
class="entry colsep-1 rowsep-1">Column</th>
<th id="advertiser-creative-frequency-and-recency__entry__187"
class="entry colsep-1 rowsep-1">Type</th>
<th id="advertiser-creative-frequency-and-recency__entry__188"
class="entry colsep-1 rowsep-1">Example</th>
<th id="advertiser-creative-frequency-and-recency__entry__189"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="advertiser-creative-frequency-and-recency__entry__190"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total number of impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total number of clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">9</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_click_convs
+ post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total number of post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">0.000221877080097626</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">total_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">0.1651376</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">total_convs
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of conversions to clicks.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">click_conv_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">0.000064</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">total_convs
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of conversions to clicks.

Note: This field is identical to <code
class="ph codeph">click_convs_rate</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">0.000221877080097626</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">clicks /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of clicks to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">click_thru_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">(clicks
/ imps) x 100</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of clicks to impressions as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total number of recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_click_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of post-click conversion to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total amount of recorded post-click conversion revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">int</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total number of recorded post-view conversions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">post_view_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">double</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">0.00013</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_view_convs
/ imps</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The rate
of post-view conversions to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">300.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total amount of recorded post-view conversion revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__186">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__187">money</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__188"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__189">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__190">The
total amount spent</td>
</tr>
</tbody>
</table>

**Creative Frequency Buckets**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-creative-frequency-and-recency__entry__266"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="advertiser-creative-frequency-and-recency__entry__267"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">-2</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"no-cookie-data"
(cookie lookup failed)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">-1</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"no-cookie"
(user does not have cookies enabled)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">0</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"0"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">1</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"1"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">2</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"2-5"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">3</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"6-10"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">4</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"11-20"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">5</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"21-40"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">6</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"41-60</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">7</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"61-100"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">8</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"101-150"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">9</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"151-250"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">10</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"251-500"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__266">11</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__267">"500+"</td>
</tr>
</tbody>
</table>

**Creative Recency Buckets**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="advertiser-creative-frequency-and-recency__entry__296"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="advertiser-creative-frequency-and-recency__entry__297"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">-2</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"no-cookie-data"
(cookie lookup failed)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">-1</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"no-cookie"
(user does not have cookies enabled)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">0</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"&lt; 1
minute"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">1</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"1-5
minutes"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">2</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"5-15
minutes"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">3</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"15-30
minutes"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">4</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"30-60
minutes"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">5</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"1-4
hours"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">6</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"4-12
hours"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">7</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"12-24
hours"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">8</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"1-2
days"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">9</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"2-7
days"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">10</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"8-14
days"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__296">11</td>
<td class="entry colsep-1 rowsep-1"
headers="advertiser-creative-frequency-and-recency__entry__297">"14-30
days"</td>
</tr>
</tbody>
</table>



<div id="advertiser-creative-frequency-and-recency__example"
>

## Example

**Create the JSON-formatted report request**

``` pre
$ cat network_advertiser_frequency_recency {
    "report":
    {
        "report_type": "network_advertiser_frequency_recency",
        "columns": [
            "creative_recency_bucket",
            "creative_frequency_bucket",
            "creative_id",
            "imps",
            "clicks",
            "total_convs"
        ],
        "report_interval": "last_7_days",
        "emails": ["js@email.com"],
        "format": "csv"
    }
}
```

**POST the request to the Reporting Service**

``` pre
$ curl -b cookies -c cookies -X POST -d @network_advertiser_frequency_recency "https://api.appnexus.com/report?advertiser_id=384"

{
    "response": {
        "status": "OK",
        "report_id": "c458f71c084a2a3b51dcd749132bcf87",
        "dbg_info": {
            ...
        }
    }
}
```

**Use the Report ID to retrieve the report data**

The standard response includes the report data and a Download URL that
you can us to save the data to a file. If you want to get just the
Download URL without the report data, pass `"without_data"` in the query
string.

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/report?id=c458f71c084a2a3b51dcd749132bcf87"

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2012-02-03 21:43:27",
            "cache_hit": true,
            "fact_cache_hit": false,
            "fact_cache_error": null,
            "json_request": "{\"report\":{\"report_type\":\"network_advertiser_frequency_recency\",
             \"columns\":[\"creative_recency_bucket\",\"creative_frequency_bucket\",\"creative_id\",
             \"imps\",\"clicks\",\"total_convs\"],\"report_interval\":\"last_7_days\",\"emails\":
             [\"js@email.com\"],\"filters\":[{\"buyer_member_id\":\"541\"},{\"advertiser_id\":
             \"3610\"}]}}",
            "header_info": null,
            "data": "creative_recency_bucket,creative_frequency_bucket,creative_id,imps,clicks,
             total_convs\r\nno-cookie,no-cookie,700454,47,0,0\r\n2-7 days,2-5,773422,31,0,
             0\r\n5-15 minutes,6-10,1298720,1,0,0\r\n14-30 days,151-250,700464,8,0,0\r\n7-14 days,
             21-40,711929,5,0,0\r\n1-4 hours,6-10,1317518,826,2,0\r\n1-4 hours,1,1317473,996,14,
             0\r\n12-24 hours,11-20,1317436,139,0,0\r\n15-30 minutes,6-10,773408,12,0,0\r\nno-cookie,
             no-cookie,1318994,3,0,0\r\n1-5 minutes,101-150,711932,898,0,0\r\n2-7 days,2-5,773408,45,
             0,0\r\n1-5 minutes,2-5,610381,7990,23,0\r\n12-24 hours,1,1316895,4790,30,0\r\n1-4 hours,
             ...
             "url": "report-download?id=c447d71c084a2a3b51dcd749132bcf87"
        },
        "execution_status": "ready",
        "dbg_info": {
            ...
        }
    }
}
```

**Use the Download URL to save the report data to a file**

You use the `"url"` field in the response to save the report data to a
file. Simply make another `GET` call and identify the location and file
that you want to save to. Be sure to use the file the extension of the
`"format"` that you specified in your initial `POST` request.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=c447d71c084a2a3b51dcd749132bcf87' > /tmp/network_advertiser_frequency_recency.csv
```





Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










