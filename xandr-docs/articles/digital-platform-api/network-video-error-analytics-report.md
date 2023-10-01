---
Title : Network Video Error Analytics Report
Description : The **Network Video Error Report** gives insight into video errors and
their cause.
---


# Network Video Error Analytics Report





The **Network Video Error Report** gives insight into video errors and
their cause.

You can use this report to troubleshoot video settings and eliminate
errors related to buy-side and sell-side video advertising. <a
href="https://wiki.iabtechlab.com/index.php?title=VAST_Error_Code_Troubleshooting_Matrix"
class="xref" target="_blank">VAST 3 error codes</a> provide further
insight into the source of errors.

<div id="report_api_template__p-95c02acf-7d03-4407-afa5-f1411a90ada9"
>



Note: For instructions on retrieving a
report, please see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the <a
href="network-video-error-analytics-report.html#report_api_template__example"
class="xref">example</a> below.









## Time Frame

<div id="report_api_template__p-63547b73-5657-46cd-b080-ffceb7fc10be"
>

The `report_interval` field can be set to one of the following:

- last_available_day
- today
- last_24_hours
- yesterday
- last_48_hours
- last_7_days
- last_7_available_days
- last_14_days
- last_14_available_days
- month_to_date
- last_30_available_days
- month_to_yesterday
- last_30_days
- last_month
- custom



**Data Retention Period**

Data in this report is retained for 420 days.

<div id="report_api_template__p-f7e01292-73bf-4fa6-9847-6ff0d52aa493"
>



Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



<div id="report_api_template__note_iqs_v1x_5wb"


Note: For impressions older than 100
days, the day will be returned rather than the hour.







<div id="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9"
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
hour of the auction.</p>


Note: For impressions older than 100
days, the day will be returned rather than the hour.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
month of the auction.</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Verizon Wireless (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the advertiser.</td>
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
class="ph codeph">"ABC Plc"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of a would-be buyer that submitted a bid on the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">brand_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the brand associated with a creative. For <code
class="ph codeph">imp_type_id</code> = 6, no information is available in
the <code class="ph codeph">brand_id</code> field for this report. See
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/seller-brand-review-report.html"
class="xref" target="_blank">Seller Brand Review Report</a>
instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">brand_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Ace Hardware"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the brand associated with a creative. For <code
class="ph codeph">imp_type_id</code> = 6, no information is available in
the <code class="ph codeph">brand_name</code> field for this report. See
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/seller-brand-review-report.html"
class="xref" target="_blank">Seller Brand Review Report</a>
instead.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">brand</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Ace Hardware (3)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
brand associated with the creative. Xandr keeps a list of advertiser
brands in our systems that can be applied to a creative when it's
uploaded. For impression type <code class="ph codeph">"Resold"</code>,
no information is available in the Brand field for this report.</td>
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
ID of the buying member. If the impression was not purchased, this field
shows one of the following values: <code class="ph codeph">229</code> =
PSA, <code class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default. This dimension also has an
attribute, called <code class="ph codeph">bidder</code>, that identifies
the ID of the bidder for the impression. The attribute's data type is
<code class="ph codeph">int</code>.</td>
</tr>
<tr class="even row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the buying member.</td>
</tr>
<tr class="odd row">
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the buying member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_seat_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Custom Seat"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
Custom Buyer Seat ID (submitted by DSP) which was used to bid on the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_seat_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
id of the buyer seat.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">buyer_seat_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Custom Seat"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
display name for the buyer seat code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">call_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of ad request call.</td>
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
class="ph codeph">123</code></td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Campaign"</code></td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Campaign(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">campaign_group_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID for campaign group type used in split reporting.</td>
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
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
ID of the creative.</p>


Note: For external click or impression
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Creative"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5"><p>The
name of the creative.</p>


Note: For external click or impression
trackers, creative_id will be <code
class="ph codeph">"External Clicks" </code>or <code
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
class="ph codeph">"My Creative(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">creative_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">30</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
length of the video creative, in seconds.</td>
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
class="ph codeph">123</code></td>
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
class="ph codeph">"My Deal"</code></td>
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
class="ph codeph">"My Deal(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Mobile"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of device where the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">001</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
code for the geographic country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"USA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the geographic country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">RTB</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of impression. An integer value which translates as follows:
<ul>
<li><code class="ph codeph">1</code> = Blank</li>
<li><code class="ph codeph">2</code> = PSA</li>
<li><code class="ph codeph">3</code> = Default Error</li>
<li><code class="ph codeph">4</code> = Default</li>
<li><code class="ph codeph">5</code> = Kept</li>
<li><code class="ph codeph">6</code> = Resold</li>
<li><code class="ph codeph">7</code> = RTB</li>
<li><code class="ph codeph">8</code> = PSA Error</li>
<li><code class="ph codeph">9</code> = External Impression</li>
<li><code class="ph codeph">10</code> = External Click</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">7</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the associated impression type. Possible values:
<ul>
<li><code class="ph codeph">0</code> = Video event error</li>
<li><code class="ph codeph">1</code> = Blank: "200 OK" response (blank)
served.</li>
<li><code class="ph codeph">2</code> = PSA: A public service
announcement served because no other creative was eligible.</li>
<li><code class="ph codeph">3</code> = Default Error: A default creative
served due to timeout issue.</li>
<li><code class="ph codeph">4</code> = Default: A default creative
served because no campaigns bid or no other creative was eligible.</li>
<li><code class="ph codeph">5</code> = Kept: One of your managed
advertisers served a creative.</li>
<li><code class="ph codeph">6</code> = Resold: The impression was sold
to a third-party buyer.</li>
<li><code class="ph codeph">7</code> = RTB: Your creative served on
third-party inventory.</li>
<li><code class="ph codeph">8</code> = PSA Error: A public service
announcement served due to timeout issue.</li>
<li><code class="ph codeph">9</code> = External Impression: An
impression from an impression tracker.</li>
<li><code class="ph codeph">10</code> = External Click: A click from a
click tracker.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Insertion Order"</code></td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Insertion Order(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the insertion order.</td>
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
class="ph codeph">"Beverly Heller"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
sales rep for the insertion order. See the "labels" field in the <a
href="https://docs.xandr.com/bundle/yield-analytics-api/page/topics/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">trafficker_for_insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4">"<code
class="ph codeph">Maurice Truman"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
trafficker for the insertion order. See the "labels" field in the <a
href="https://docs.xandr.com/bundle/yield-analytics-api/page/topics/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
details</td>
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
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the line item.</td>
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
class="ph codeph">"My Line Item"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the line item.</td>
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
class="ph codeph">"My Line Item(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">mobile_application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the mobile app on the device where the impression occurred.</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the publisher.</td>
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
class="ph codeph">"My Publisher"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the publisher.</td>
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
class="ph codeph">"My Publisher(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the publisher.</td>
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
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the selling member.</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the selling member.</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the selling member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"That Site(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the site.</td>
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
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the site.

Note: For impressions older than 100
days, the <code class="ph codeph">site_id</code> will be <code
class="ph codeph">0</code>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><a
href="http://bestsiteever.com/" class="xref"
target="_blank">bestsiteever.com</a></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
domain where the impression occurred. For mobile applications, this can
be the URL of the app's location in the app store. There are two
additional values that may appear in place of a domain, specifically:
<code class="ph codeph">"deals.unknown"</code> or <code
class="ph codeph">"managed.unknown"</code>. These mean that we didn't
receive a valid domain as the referrer. For example, the domain may be
blank or otherwise malformed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"That Site"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the site.</td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
size of the placement/creative served.</td>
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
class="ph codeph">"123"</code></td>
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
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Split"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name of the split that purchased the impressions in this data set.
Splits are only applicable to augmented line items. For any reports that
contain campaigns, the <code class="ph codeph">split_name</code> (if
included) will be <code class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">split</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"My Split(123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
name and ID of the split.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">supply_type_filterable</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
<code class="ph codeph">"web"</code>, <code
class="ph codeph">"mobile_app"</code>, and <code
class="ph codeph">"mobile_web"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">tag_id</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the tag.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">placement_code</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"Ivillage Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
custom code for the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">video_context</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
type of the video creative. See <a
href="network-video-error-analytics-report.html#report_api_template__vc"
class="xref">Video Context</a> below for possible values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">video_playback_method</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"1"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
playback method for the creative. See <a
href="network-video-error-analytics-report.html#report_api_template__vpm"
class="xref">Video Playback Method</a> below for possible values</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__1">video_player_size</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__4"><code
class="ph codeph">"2"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-48027a7e-ec97-4a8a-8502-df5bd02036a9__entry__5">The
ID of the video player width. See <a
href="network-video-error-analytics-report.html#report_api_template__ps"
class="xref">Player Size</a> below for possible values.</td>
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
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">errors</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">errors</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of times an error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost_per_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2.056</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">cost/completions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per video completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue_per_video_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">15.869</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">revenue/completions</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
revenue per video completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ad_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">ad_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of video ad responses.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_100_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_100_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 100 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_101_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_101_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 101 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_102_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_102_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 102 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_200_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_200_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 200 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_201_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_201_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 201 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_202_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_202_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 202 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_203_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_203_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 203 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_300_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_300_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 300 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_301_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_301_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 301 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_302_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_302_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 302 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_303_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_303_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 303 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_400_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_400_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 400 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_401_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_401_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 401 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_402_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_402_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 402 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_403_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_403_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 403 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_405_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_405_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 405 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_500_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_500_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 500 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_501_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_501_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 501 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_502_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_502_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 502 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_503_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_503_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 503 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_600_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_600_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 600 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_601_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_601_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 601 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_602_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_602_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 602 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_603_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_603_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 603 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_604_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_604_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 604 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_900_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_900_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 900 errors.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_901_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">vast_901_error_count</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of occurrences of VAST 901 errors.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">vast_error_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(Number
of videos resulted in vast error/Total videos served) x 100</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
percentage of videos served that result in a VAST error</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2.60548314606741</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(revenue
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
revenue per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">imps_default_bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps_default_bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of impressions that defaulted because there were no valid
bids.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">imps_kept</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps_kept</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of impressions your advertiser purchased from your
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">imps_resold</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps_resold</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of impressions your publisher sold to a third party.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">imps_rtb</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">2332</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">imps_rtb</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
number of impressions your advertiser bought from a third party.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total number of clicks across all impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">16.833378</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">cost</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
total amount of media cost for direct publisher and purchased real-time
inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">25.767257</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">booked_revenue
+ reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
sum of booked revenue and resold revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">1.66051685393258</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(cost
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
cost per 1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__3"><code
class="ph codeph">0.0221877080097626 %</code></td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__4">(clicks
/ imps) x 100%</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__section-bdb2f4b8-6d01-46be-a3ff-012fc0151277__entry__5">The
rate of clicks to impressions expressed as a percentage.</td>
</tr>
</tbody>
</table>

<div id="report_api_template__vpm" >

**Video Playback Method**

<table id="report_api_template__table_ydy_1px_5wb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="report_api_template__table_ydy_1px_5wb__entry__1"
class="entry colsep-1 rowsep-1"><strong>Method ID</strong></th>
<th id="report_api_template__table_ydy_1px_5wb__entry__2"
class="entry colsep-1 rowsep-1"><strong>Method</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__2">Unknown</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__2">Auto-play,
sound on</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__2">Auto-play,
sound off</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__2">Click-to-play</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__2">Mouse-over</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ydy_1px_5wb__entry__2">Auto-play,
sound unknown</td>
</tr>
</tbody>
</table>



<div id="report_api_template__vc" >

**Video Context**

<table id="report_api_template__table_ek2_4qx_5wb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="report_api_template__table_ek2_4qx_5wb__entry__1"
class="entry colsep-1 rowsep-1">Method ID</th>
<th id="report_api_template__table_ek2_4qx_5wb__entry__2"
class="entry colsep-1 rowsep-1">Method</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__2">Unknown</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__2">Pre-roll</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__2">Mid-roll</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__2">Post-roll</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__1">4</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_ek2_4qx_5wb__entry__2">Outstream</td>
</tr>
</tbody>
</table>



<div id="report_api_template__ps" >

**Player Size**

<table id="report_api_template__table_zxt_crx_5wb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="report_api_template__table_zxt_crx_5wb__entry__1"
class="entry colsep-1 rowsep-1">ID</th>
<th id="report_api_template__table_zxt_crx_5wb__entry__2"
class="entry colsep-1 rowsep-1">Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_zxt_crx_5wb__entry__1">0</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_zxt_crx_5wb__entry__2">small</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_zxt_crx_5wb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_zxt_crx_5wb__entry__2">medium</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_zxt_crx_5wb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="report_api_template__table_zxt_crx_5wb__entry__2">large</td>
</tr>
</tbody>
</table>





<div id="report_api_template__example" >

## Example

**Create JSON formatted report request**

The JSON file should include the report_type
`video_error_analytics_network`, as well as the columns (dimensions and
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
$ cat video_error_analytics_network

{
    "report":
    {
        "report_type":"video_error_analytics_network",
        "columns":[
            "hour",
            "seller_member_name",
            "buyer_member_name",
            "advertiser_name",
            "publisher_name",
            "vast_error_rate",
            "imps",
            "clicks",
            "ctr",
            "vast_900_error_count"
        ],
        "report_interval":"last_48_hours",
        "format":"csv"
    }
}
```



**`POST` the request to the Reporting Service**

<div id="report_api_template__p-d63f79d5-fa02-4b6c-bc63-036fec1228af"
>

``` pre
$ curl -b cookies -X POST -d @network_analytics 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2010-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"video_error_analytics_network\",\"columns\":[\"hour\",\"seller_member_name\",
            \"buyer_member_name\",\"advertiser_name\",\"publisher_name\",\"imps\",\"clicks\",\"vast_error_rate\",\"ctr\"],
            \"row_per\":[\"hour\",\"seller_member_id\",\"buyer_member_id\",\"advertiser_id\",\"publisher_id\"],
            \"report_interval\":\"last_48_hours\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



<div id="report_api_template__note_z2d_nsx_5wb"


Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.







``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/video_error_analytics_network.csv
```







Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.










