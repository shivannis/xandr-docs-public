---
Title : Insertion Order Frequency Report
Description : The Insertion Order Frequency report can be used to view how frequently
ms.date: 10/28/2023
ms.custom: digital-platform-api
users are viewing a specific insertion order's creatives. This report
---


# Insertion Order Frequency Report





The Insertion Order Frequency report can be used to view how frequently
users are viewing a specific insertion order's creatives. This report
shows data at the insertion order level and is available to members. For
instructions on retrieving a report, see the <a
href="insertion-order-frequency-report.md#insertion-order-frequency-report__example"
class="xref">example</a> below.



>

## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- last_48_hours
- today
- yesterday
- last_7_days
- month_to_date
- last_24_hours
- last_30_days



**Data Retention Period**



Data retention period for this report is 45 days.



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
<th id="insertion-order-frequency-report__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="insertion-order-frequency-report__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="insertion-order-frequency-report__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="insertion-order-frequency-report__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Group?</th>
<th id="insertion-order-frequency-report__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Filter?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
hour of the auction.</p>
<p>Example: <code class="ph codeph">"2010-02-01</code> <code
class="ph codeph">06:00:00"</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
day of the auction.</p>
<p>Example: <code class="ph codeph">"2010-02-01</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
month of the auction.</p>
<p>Example: <code class="ph codeph">"2010-02"</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
ID of the buying member. If the impression was not purchased, this field
shows one of the following values: <code class="ph codeph">229</code> =
PSA, <code class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.</p>
<p>Example: <code class="ph codeph">123</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3">The ID
of the insertion order.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
ID of the advertiser. If the value is 0, either the impression was
purchased by an external buyer, or a default or PSA was shown.</p>
<p>Example: <code class="ph codeph">789</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
ID of the line item.</p>
<p>Example: <code class="ph codeph">111</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
ID of the pixel.</p>
<p>Example: <code class="ph codeph">123</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
name of the advertiser.</p>
<p>Example: <code class="ph codeph">"Verizon Wireless"</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">No</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3">The
name of the insertion order.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">No</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3">The
custom code for the insertion order.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">No</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><p>The
name of the line item.</p>
<p>Example: <code class="ph codeph">"Default Line Item"</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">No</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3">The
custom code for the line item.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">No</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">insertion_order_frequency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3">The
bucket for how frequently the insertion order's creatives were
displayed. See <a
href="insertion-order-frequency-report.md#insertion-order-frequency-report__Insertion_Order_Frequency_Buckets"
class="xref">Insertion Order Frequency Buckets</a>.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">Yes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__1">insertion_order_frequency_bucket_id</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__3">The ID
of the insertion order frequency bucket. See <a
href="insertion-order-frequency-report.md#insertion-order-frequency-report__Insertion_Order_Frequency_Buckets"
class="xref">Insertion Order Frequency Buckets</a> below for possible
values.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__5">No</td>
</tr>
</tbody>
</table>

**Insertion Order Frequency Buckets**

<table class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="insertion-order-frequency-report__dimensions__entry__96"
class="entry colsep-1 rowsep-1"><strong>Bucket ID</strong></th>
<th id="insertion-order-frequency-report__dimensions__entry__97"
class="entry colsep-1 rowsep-1"><strong>Bucket Name</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">-2</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"no-cookie-date"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">-1</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"no-cookie"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">0</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"0"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">1-21</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">Bucket
name is the number of times the insertion order's creatives have been
viewed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">21</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"21-25"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">22</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"26-30"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">23</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"31-35"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">24</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"36-40"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">25</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"41-45"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">26</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"46-50"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">27</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"51-60"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">28</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"61-70"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">29</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"71-80"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">30</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"81-90"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">31</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"91-100"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">32</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"101-200"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">33</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"201-300"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">34</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"301-400"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">35</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"401-500"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__96">36</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__dimensions__entry__97">"501+"</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="insertion-order-frequency-report__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="insertion-order-frequency-report__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="insertion-order-frequency-report__metrics__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="insertion-order-frequency-report__metrics__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="insertion-order-frequency-report__metrics__entry__5"
class="entry colsep-1 rowsep-1">Formula</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
number of impressions (served and resold).</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">2437</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">imps</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
number of clicks across all impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">clicks</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
revenue booked through direct advertisers (line item).</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">25.6788</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">booked_revenue</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The cost
per 1000 impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">1.6605</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">(cost /
imps) x 1000</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
number of post-view and post-click conversions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">9</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">post_click_convs
+ post_view_convs</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The rate
of conversions to impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.0002218770</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">total_convs
/ imps</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The rate
of clicks to impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.0002218777</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">clicks /
imps</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
number of recorded post-view converstions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">post_view_convs</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
number of recorded post-click conversions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">post_click_convs</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">post_click_convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The rate
of post-click conversion to impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">post_click_convs
/ imps</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
amount spent.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">media_cost</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
amount of profit.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">190.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">profit</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">profit_ecpm</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The profit
as a percentage of the revenue.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.778</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">((booked_revenue
- media_cost) / imps) * 100</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">revenue_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
revenue per click.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.8256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">booked_revenue
/ clicks</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">revenue_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The total
revenue per conversion.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">booked_revenue
/ total_convs</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">cost_ecpc</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The cost
per click.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">media_cost
/ clicks</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">cost_ecpa</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The cost
per attribution/conversion.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">media_cost
/ total_convs</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__1">convs_per_mm</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__3">The number
of conversions per million impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__4"><code
class="ph codeph">221.87708</code></td>
<td class="entry colsep-1 rowsep-1"
headers="insertion-order-frequency-report__metrics__entry__5">(total_convs
/ imps) x 1,000,000</td>
</tr>
</tbody>
</table>



>

## Example

**Create the JSON report request**

``` pre
$ cat insertion_order_frequency
  {
    "report":{
        "report_type":"insertion_order_frequency",
        "columns":[
            "hour",
            "line_item_id",
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

**`POST` the request to the Report Service**

`POST` the JSON request to get back a `report_ID`.

``` pre
$ curl -b cookies -X post -d @insertion_order_frequency "https://api.appnexus.com/report"
 
{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```

Alternatively, you can get a `report_id` via a `POST` request using a
`saved_report_id`.

``` pre
$ curl -b cookies -X POST 'https://api.appnexus.com/report?saved_report_id=30'
```

**`GET` the report status from the Report Service**

Make a `GET` call with the `report_id` to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then, use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'

{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:15:48",
         "json_request":"{\"report\":{\"report_type\":\"insertion_order_frequency\",\"columns\":
          [\"hour\",\"line_item_id\",\"imps\",\"clicks\",\"total_convs\",
          \"ctr\",\"convs_rate\"],\"row_per\":[\"hour\",\"campaign_id\"],
          \"report_interval\":\"last_48_hours\",\"filters\":[{\"advertiser_id\":\"690\"}]}}",
         "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `"url"` field of the response to
your previous `GET` call. When setting the file to which you want to
save the report, use the file extension of the `"format"` (e.g., .csv)
that you specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `\-i` or `\-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'http://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' -o /tmp/insertion_order_frequency.csv
```





<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










