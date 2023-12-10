---
Title : Advertiser Frequency Report
Description : The Advertiser Frequency report can be used to view how frequently users
ms.date: 10/28/2023
ms.custom: digital-platform-api
are viewing a specific advertiser's creatives. This report shows data at
---


# Advertiser Frequency Report



The Advertiser Frequency report can be used to view how frequently users
are viewing a specific advertiser's creatives. This report shows data at
the advertiser level and is available to members.

For instructions on retrieving a report, see the <a
href="advertiser-frequency-report.md#ID-00002f49__Example_Advertiser_Frequency_Report"
class="xref">example</a> below.



## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- `last_48_hours`
- `today`
- `yesterday`
- `last_7_days`
- `month_to_date`
- `last_24_hours`
- `last_30_days`






## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002f49__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00002f49__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002f49__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">hour</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2"><p>time</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The hour of the auction.
<p>Example: <code class="ph codeph">"2010-02-01</code> <code
class="ph codeph">06:00:00"</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">day</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2"><p>time</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The day of the auction.
<p>Example: <code class="ph codeph">"2010-02-01"</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The month of the auction.
<p>Example: <code class="ph codeph">"2010-02"</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The ID of the buying member.
If the impression was not purchased, this field shows one of the
following values: <code class="ph codeph">229</code> = PSA, <code
class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.
<p>Example: <code class="ph codeph">123</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">insertion_order_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The ID of the insertion
order.
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The ID of the advertiser. If
the value is 0, either the impression was purchased by an external
buyer, or a default or PSA was shown.
<p>Example: <code class="ph codeph">789</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The ID of the line item.
<p>Example: <code class="ph codeph">111</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">pixel_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The ID of the pixel.
<p>Example: <code class="ph codeph">123</code></p>
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">advertiser_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The name of the advertiser.
<p>Example: <code class="ph codeph">"Verizon Wireless"</code></p>
<p><strong>Group</strong>: No</p>
<p><strong>Filter</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">advertiser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">insertion_order_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The name of the insertion
order.
<p><strong>Group</strong>: No</p>
<p><strong>Filter</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">insertion_order_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The custom code for the
insertion order.
<p><strong>Group</strong>: No</p>
<p><strong>Filter</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">line_item_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The name of the line item.
<p>Example: <code class="ph codeph">"Default Line Item"</code></p>
<p><strong>Group</strong>: No</p>
<p><strong>Filter</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">line_item_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The custom code for the line
item.
<p><strong>Group</strong>: No</p>
<p><strong>Filter</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">insertion_order</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">line_item</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">advertiser_frequency_bucket</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The bucket for how
frequently the advertiser's creatives were displayed. See <a
href="advertiser-frequency-report.md#ID-00002f49__advertiser_frequency_buckets"
class="xref">Advertiser Frequency Buckets</a>.
<p><strong>Group</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__1"><code
class="ph codeph">advertiser_frequency_bucket_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__3">The ID of the advertiser
frequency bucket. See <a
href="advertiser-frequency-report.md#ID-00002f49__advertiser_frequency_buckets"
class="xref">Advertiser Frequency Buckets</a> below for possible values.
<p><strong>Group</strong>: No</p>
<p><strong>Filter</strong>: No</p></td>
</tr>
</tbody>
</table>

**Advertiser Frequency Buckets**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002f49__dimensions__entry__58"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="ID-00002f49__dimensions__entry__59"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">-2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"no-cookie-data"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">-1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"no-cookie"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"0"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">1 - 21</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59">Bucket name is the number
of times the advertiser's creatives have been viewed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">21</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"21-25"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">22</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"26-30"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"31-35"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">24</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"36-40"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"41-45"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">26</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"46-50"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">27</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"51-60"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">28</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"61-70"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">29</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"71-80"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">30</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"81-90"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">31</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"91-100"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">32</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"101-200"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">33</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"201-300"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">34</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"301-400"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">35</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"401-500"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__58"><code
class="ph codeph">36</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__dimensions__entry__59"><code
class="ph codeph">"501+"</code></td>
</tr>
</tbody>
</table>




## Metrics

<table id="ID-00002f49__table_pkd_n1b_rwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002f49__table_pkd_n1b_rwb__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="ID-00002f49__table_pkd_n1b_rwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002f49__table_pkd_n1b_rwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00002f49__table_pkd_n1b_rwb__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="ID-00002f49__table_pkd_n1b_rwb__entry__5"
class="entry colsep-1 rowsep-1">Formula</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total number of
impressions (served and resold).</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">2437</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">imps</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total number of
clicks across all impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">clicks</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">booked_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total revenue
booked through direct advertisers (line item).</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">25.6788</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">booked_revenue</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The cost per 1000
impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">1.6605</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5">(<code
class="ph codeph">cost</code> / <code class="ph codeph">imps</code>) x
1000</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">total_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total number of
post-view and post-click conversions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">9</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">post_click_convs</code> + <code
class="ph codeph">post_view_convs</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">convs_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The rate of
conversions to impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.0002218770</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">total_convs</code> / <code
class="ph codeph">imps</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">ctr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The rate of clicks to
impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.0002218777</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">clicks</code> / <code
class="ph codeph">imps</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">post_view_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total number of
recorded post-view converstions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">post_view_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">post_click_convs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total number of
recorded post-click conversions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">post_click_convs</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">post_click_convs_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The rate of
post-click conversion to impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.0002</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">post_click_convs / imps</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">media_cost</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total amount
spent.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">100.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">media_cost</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">profit_ecpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The profit as a
percentage of the revenue.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.778</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">((booked_revenue - media_cost) / imps)</code> *
100</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">revenue_ecpc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total revenue per
click.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.8256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">booked_revenue</code> / <code
class="ph codeph">clicks</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">revenue_ecpa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The total revenue per
conversion.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">booked_revenue</code> / <code
class="ph codeph">total_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">cost_ecpc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The cost per
click.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">media_cost</code> / <code
class="ph codeph">clicks</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">cost_ecpa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The cost per
attribution/conversion.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">0.1834</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5"><code
class="ph codeph">media_cost</code> / <code
class="ph codeph">total_convs</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__1"><code
class="ph codeph">convs_per_mm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__3">The number of
conversions per million impressions.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__4"><code
class="ph codeph">221.87708</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002f49__table_pkd_n1b_rwb__entry__5">(<code
class="ph codeph">total_convs</code> / <code
class="ph codeph">imps</code>) x 1,000,000</td>
</tr>
</tbody>
</table>



>

## Example




**Step 1. Create the JSON report request**



  
The JSON file should include the following:

- `"report_type"` you want to run.
- `"columns"` (dimensions and metrics) you want to retrieve.
- `"report_interval"` you want to retrieve.



You can also include `filters` for dimensions, define granularity
(`year`, `month`, `day`), and specify the  `format` in which the data
should be returned ( `"csv"` ,  `"excel"` , or  `"html"` ).


<b>Note:</b> To filter a dimension by more
than one value, use an array. For example:

**Correct:**

`"filters": [{"bid_type": ["learn","optimized"]}, {"geo_country":"US"}]`

**Incorrect:**

`"filters": [{"bid_type":"learn"}, {"bid_type":"optimized"}, {"geo_country":"US"}]`



See <a href="advertiser-frequency-report.md#ID-00002f49__dimensions"
class="xref">Dimensions</a> and
<a href="advertiser-frequency-report.md#ID-00002f49__metrics"
class="xref">Metrics</a> above for more details about the columns that
can be included in the request.

The example below demonstrates how to retrieve the Advertiser Frequency
Report. In this example, the report will display data for the `hour`,
`campaign`, `imps`, `clicks`, `total_convs`, `ctr`, and `convs_rate`
columns. This report will pull data from the last 48 hours and will
format it as a CSV file.

``` pre
$ cat report_request
{
        "report":{
                "report_type":"advertiser_frequency",
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

**Step 2. `POST`  the request to the Report Service**

  
`POST` the JSON request to get back a `report_ID`.

``` pre
$ curl -b cookies -X post -d @report_request "http://api.appnexus.com/report"
 
{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```

Alternatively, you can get a `report_id` via a `POST` request using a
`saved_report_id`.

``` pre
$ curl -b cookies -X POST 'http://api.appnexus.com/report?saved_report_id=30'
```

**Step 3. `GET`  the report status from the Report Service**

Make a `GET` call with the `report_id` to retrieve the status of the
report. Continue making this `GET` call until
the `execution_status` is `"ready"`. Then, use
the `report-download` service to save the report data to a file, as
described in the next step.

``` pre
$ curl -b cookies 'http://api.appnexus.com/report?id=09b6979a6a4c3805bdac8921378d3622'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:15:48",
         "json_request":"{\"report\":{\"report_type\":\"network_advertiser_frequency\",\"columns\":
          [\"hour\",\"line_item_id\",\"imps\",\"clicks\",\"total_convs\",
          \"ctr\",\"convs_rate\"],\"row_per\":[\"hour\",\"campaign_id\"],
          \"report_interval\":\"last_48_hours\",\"filters\":[{\"advertiser_id\":\"690\"}]}}",
         "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**Step 4. `GET` the report data from the Report Download Service**

  
To download the report data to a file, make another `GET` call with the
report ID, but this time to the `report-download` service. You can find
the service and report ID in the `"url"` field of the response to your
previous `GET` call. When setting the file to which you want to save the
report, use the file extension of the `"format"` (e.g., .csv) that you
specified in your initial `POST`.


<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `\-i` or `\-v` in your call to expose the response header.



``` pre
$ curl -b cookies 'http://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' -o /tmp/network_advertiser_frequency.csv
```






