---
Title : Seller Slot Analytics Report
Description : <div id="seller-slot-analytics-report__note-5d7ec35f-0939-4066-9c8a-2aadb03d8b83"
Note: This functionality currently is
in **Alpha**. It is still under development and may be subject to change
---


# Seller Slot Analytics Report



<div id="seller-slot-analytics-report__note-5d7ec35f-0939-4066-9c8a-2aadb03d8b83"


Note: This functionality currently is
in **Alpha**. It is still under development and may be subject to change
without notice. Contact your Xandr Account Representative to get
enabled.



The **Seller Slot Analytics report** shows metrics for impressions
(slots) within groups of ads (pods) delivered sequentially in between
segments of non-commercial video programming.

You can use this report to gain insight in answering the following
questions:

- On average how many seconds per impression are being served for
  mid-roll slot positions 1,2 and 3
- How does the CPM of the first slot within a pre-roll compare to the
  first slot within a mid-roll
- How many seconds has a brand served in pre-rolls compared to mid-rolls
- Which slot positions is a line item delivering in?
- What is the percentage of slots by position being consumed by my house
  line item
- Which cities did a line item deliver to
- How does the completion rate by video context and slot position
  compare

<div id="seller-slot-analytics-report__section-84a95ff7-0b44-452f-8cad-d71d629716de"
>

## Timeframe

<div id="seller-slot-analytics-report__p-62c02615-6339-4545-958c-bc45a41c6428"
>

The `report_interva`l field in the JSON request can be set to one of the
following:

- custom
- today
- yesterday
- last_7_days (not including today)
- month_to_date
- last_month
- quarter_to_date



<div id="seller-slot-analytics-report__p-0f36a278-de51-47b3-917e-1eacecbb94a5"
>

To run a report for a custom time frame, set the `start_date` and
`end_date` fields in your report request. For more details about these
fields, see
<a href="https://wiki.xandr.com/display/api/Report+Service" class="xref"
target="_blank">Report Service</a>.

<div id="seller-slot-analytics-report__note-d2ac63ae-c533-4ffd-9263-37d2a40ed627"


Note: Data in this report is retained
for 420 days.







<div id="seller-slot-analytics-report__section-7cba10b0-0892-442a-be29-cebfa129e147"
>

## Dimesions

<table
id="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th
id="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">application_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"platform.app"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">A
targetable Apple App Store ID, Google Play package name, or Windows
application ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the advertiser. If the value is 0, either the impression was
purchased by an external buyer, or a default or PSA was shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Advertiser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the advertiser whose creative was served.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Advertiser (789)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the advertiser followed by the ID (AppNexus format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">ad_slot_position</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Outro Bumper"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
chronological order of an ad within its ad pod (placement set).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">advertiser_default_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">Member's default currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
default currency to be used for the advertiser. This will be a
three-letter code that you can retrieve from the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>. See "Currency
Support" in the UI documentation for details about the concept (customer
login required).</p>
<p>As a best practice, align currency to the billing currency in order
to achieve the best possible local currency experience.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">advertiser_default_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
exchange rate on day of event. Rate is updated daily at 4 PM GMT.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">buyer_seat</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Buyer Seat (DSP Name)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
display name for the buyer seat code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">browser</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">webOS Browser (33)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the browser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">billing_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Sourced
<strong>once daily</strong> from <a href="https://www.oanda.com/"
class="xref" target="_blank">Oanda</a> at approximately <strong>3:00
a.m. UTC</strong>. All Xandr applications (bidder, budgeting, billing,
etc.) use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">API Currency Service</a> (also available to
clients) to access the latest rates.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">bidder_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">bidder_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Bidder and formatting</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the member who can buy the deal. A deal will either be set up with
a buyer member ID or a buyer seat code. This is your Xandr member
ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">buyer_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"My Network"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Display
name of the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">buyer_member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"My Network (123)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the buying member followed by the ID (AppNexus format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">brand_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"The Best Wedding Music"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Brand
name associated with the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">billing_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
transaction currency that the buyer used to purchase this impression.
This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">billing_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Sourced
<strong>once daily</strong> from <a href="https://www.oanda.com/"
class="xref" target="_blank">Oanda</a> at approximately <strong>3:00
a.m. UTC</strong>. All Xandr applications (bidder, budgeting, billing,
etc.) use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">API Currency Service</a> (also available to
clients) to access the latest rates.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">browser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the browser in which the impression was served. To retrieve a
complete list of browser IDs and names, use the Browser Service.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">brand</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the brand associated with a creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">buyer_seat_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the buyer seat.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">buyer_seat_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Buyer Seat (DSP Name)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
display name for the buyer seat code</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My DSP</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name and ID of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_size</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">1x1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
width x height of the creative</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">country</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"France"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
country of the user's location.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Games"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the content category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_category</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Games (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the content category followed by the ID (AppNexus format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Q1 2010 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the creative that served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Creative (123)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
creative name and id</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"10"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
length of the ad in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">call_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">ttj, ut, mob, ptv, openrtb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
type of handler that was used to send the impression to Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">city_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Abenberg"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the city.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_network_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
network delivering the video content.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_language_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
language in which the content is being streamed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_genre_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">771</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the main genre of the program on which the ad will be played. For
example, Game-Show, History, Music.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_program_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">987</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of higher level categorization of the program on which the ad will be
played. For example, Movie, Series, Special, Show, Event, Clip.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_rating_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">322</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of type of rating of the content. For example, All, Children (7+) ,
Teens (13+), Young Adults (14+), Adults (18+).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_delivery_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">889</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID for the type of streaming content delivery. For example, Live, Video
On Demand (VOD).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_width</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
width of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_height</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
height of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">content_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Users
can optionally specify a primary <a
href="https://docs.xandr.com/bundle/xandr-api/page/content-category-service.html"
class="xref" target="_blank">content category</a> for a placement. This
category can be used for targeting and will appear in reports. Content
categories can be set either at the Site level or the Placement level,
but not both.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">city</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
read-only City Service allows you to see information about the cities
registered in the Xandr system, including the region, designated market
area, and country to which each city belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p><em>Owner
Phase:</em> The ID of the creative to use as the new default creative
for the impression.</p>
<p><em>Non-owner phase:</em> The ID of the creative that is submitted as
part of the member's bid for the impression.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">creative_size</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
creative sizes included in the package. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/package-buyer-access-service.html#PackageBuyerAccessService-Sizes"
class="xref" target="_blank">Sizes</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the deal. For more information about negotiated deals between
buyers and sellers, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
day on which the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"set top box"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
type of device on which the impression was served. Possible values
are:</p>
<ul>
<li>0 = Other Devices</li>
<li>1 = Desktops and Laptops</li>
<li>2 = Mobile Phones</li>
<li>3 = Tablets</li>
<li>4 = TV</li>
<li>5 = Game Console</li>
<li>6 = Media Players</li>
<li>7 = Set Top Box</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">external_deal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"This is a deal code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
deal code for a deal, if included in the request. To retrieve deal
codes, use the <a href="https://docs.xandr.com/csh?context=59539475"
class="xref" target="_blank">Deal Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">geo_region</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">L6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
region or state code code (Federal Information Processing Standard) of
the user's location. For example CA for California and L6 for
Shropshire.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
code of the geographical country associated with the impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the geographical country associated with the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
hour of the auction.</p>
<p>For impressions older than 100 days, the day will be returned rather
than the hour.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">inventory_url_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">99999</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the URL of the domain or app on which the request originated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Insertion Order (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the Insertion Order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">impression_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">Resold (6)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID for the type of impression. Possible values (associated types in
parentheses):
<ul>
<li>1 ("Blank"): No creative served.</li>
<li>2 ("PSA"): A public service announcement served because there were
no valid bids and no default creative was available.</li>
<li>3 ("Default Error"): A default creative served due to a timeout
issue.</li>
<li>4 ("Default"): A default creative served because there were no valid
bids.</li>
<li>5 ("Kept"): Your advertiser's creative served on your publisher's
site.</li>
<li>6 ("Resold"): Your publisher's impression was sold to a third-party
buyer.</li>
<li>7 ("RTB"): Your advertiser's creative served on third-party
inventory.</li>
<li>8 ("PSA Error"): A public service announcement served due to a
timeout issue or lack of a default creative.</li>
<li>9 ("External Impression"): An impression from an impression
tracker.</li>
<li>10 ("External Click"): A click from a click tracker.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">inventory_url</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
URL of the inventory or application package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the Insertion Order</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Insertion Order Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">insertion_order</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Insertion Order Name (654)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Blank"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
type of impression. For possible values, see <code
class="ph codeph">imp_type_id</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">inventory_url_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
URL of the inventory or application package.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">inventory_url</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">URL
of the app or domain once it has been validated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"LineItemDEF"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the line item that served the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">line_item</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Default Line Item (111)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the line item followed by the ID (AppNexus format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">language</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">German (6)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
language of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">language_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the language. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a> to retrieve language
IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
month in which the impression occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">member_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
currency associated with the curator member's seat.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">member_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">max_vast_version</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Filter
only. Sets the maximum publisher player VAST version for inventory to be
included in the report.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">max_number_ads</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
maximum number of ads that are allowed to be played on the placement. If
maximum_number_ads is &gt; 1, then the placement can be an ad pod (a
linear grouping of more than one ad designed to fill a single
placement).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">max_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
maximum duration of a video ad that is allowed to be played on the
placement.</p>
<p>If maximum_number_ads is &gt; 1, then the max duration applies to the
entire length of an ad pod (a linear grouping of more than one ad
designed to fill a single placement).</p>
<p>This field must be set in order to enable ad pods.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">operating_system</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name and ID of an operating system under an operating system family on
which devices run. For example, Android 8.1, Oreo 9.0 Popsickle under
Android Operating System Family, iOS 8.1, 9.0 under Apple iOS family,
etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">operating_system_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the operating system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">operating_system_family_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
name of the operating system family associated with the device the
impression was served on.</p>
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">operating_system_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">24</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
ID of the operating system of the device.</p>
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">operating_system_family_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
ID of the operating system family associated with the device the
impression was served on.</p>
<ul>
<li>Use <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family service</a> to
obtain a list of operating system families.</li>
<li>Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended service</a> to
look up which operating system versions are within a given operating
system family.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">operating_system_family</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">Android, Apple Mac, Apple iOS, Microsoft Windows</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name and ID of the supported operating system family on which the
devices run.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">player_size</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">1920x1080</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
size of the video player.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">placement_group</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">My Placement Group</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
placement group name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">placement_set_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the placement set.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"EUR"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
default currency of the publisher in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
ID of the placement.</p>
<p>For RTB impressions older than 30 days, and for non-RTB impressions
older than 100 days, placements will be aggregated into one row with -1
as the <code class="ph codeph">placement_id</code>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Photos 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>Display
name of the placement.</p>
<p>For impressions older than 100 days, placements are aggregated into
one row with a generic <code
class="ph codeph">placement_name</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Ivillage 160x600 (456)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the placement followed by the ID (AppNexus format).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">374967</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the publisher that owns the inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Publisher XYZ"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the publisher that owns the inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Facebook (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the publisher followed by the ID (AppNexus format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">playback_method</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"auto-play, sound on"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
playback method for the creative, e.g, 'auto-start, sound on'.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">publisher_exchange_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
exchange rate (publisher currency: USD) on the day of the
transaction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">player_width</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
default width of the player. This field is mandatory.If the width is
zero, the autoInitialSize option will not automatically set the width of
the player on the page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">player_height</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">Parameter
recommended to ensure video bidders receive height on bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">placement_set_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
placements that are associated with the placement set.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">slot_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">Standard Slot, 1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
ID of the type of position (ad or bumper) within an ad pod.</p>
<p>0 - normal slot, 1 - intro bumper, 2 - outro bumper</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">slot_position</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
position of the ad in the sequence of the pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">support_vpaid</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">Boolean</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Site Name"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the site on which the placement is used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Site Name (194)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
name of the site followed by the ID (AppNexus format).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
ID of the site. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">567</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
internal ID of the selling member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5"><p>The
type of supply. Possible values:</p>
<ul>
<li><code class="ph codeph">0</code> = WEB</li>
<li><code class="ph codeph">1</code> = MOBILE_WEB</li>
<li><code class="ph codeph">2</code> = MOBILE_APP</li>
<li><code class="ph codeph">5</code> = TOOLBAR</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_context</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">Pre-Roll, "3"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
type of the video creative. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-video-analytics.html#NetworkAdvertiserVideoAnalytics-VideoContext"
class="xref" target="_blank">Video Context</a> below for possible
values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_rating</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"teens"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
publisher-identified audience group for which the content is rated, for
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_delivery_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"vod"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
type of streaming content delivery: Video on Demand (VOD) or Live.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_program_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"vod"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
format of the video program, for example, Movie, Series, Special, Show,
Event, or Clip.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_delivery_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"vod"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
type of streaming content delivery. For example, Video On Demand (VOD)
and Live.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_genre</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"action"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
main genre of the program in which the ad will be played. For example,
Action, Adventure, Biography, Business, Comedy, etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_program_type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"series"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
higher level categorization of the video program's format on which the
ad will be played. For example, Movie, Series, Special, Show, Event,
Clip, etc.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_network</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"AMC"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
network delivering the video content. For example, 9 Story, CBC, Disney,
AMC, Fox, etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_language</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">"Spanish"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
language of the video program in which ad will be played. For example,
Spanish.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__1">video_content_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__4"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-91a55cc3-8a86-4662-83b2-84e740e8d1b9__entry__5">The
length of the video content in seconds.</td>
</tr>
</tbody>
</table>



<div id="seller-slot-analytics-report__section-c26d806f-2b66-4329-be75-cfffb02a5cee"
>

## Metrics

<table
id="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5"
class="table frame-all">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th
id="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th
id="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th
id="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">ad_requests</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of ad requests sent to Xandr. (Filtered Requests + Imps
(kept) + Imps (resold) + Defaults + Video Player Errors + Video Default
Errors + Bid Sent No Responses + Default No Responses + PSAs or
Blanks).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">ad_responses</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of ad responses counted within Xandr. (Imps (kept) + Imps
(resold) + Video Player Errors + Bid Sent No Responses).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">booked_revenue_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">16.3519</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">booked_revenue_dollars</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total revenue booked through direct advertisers (line item).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">click_through_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">Click-Through Rate = The Number of Clicks to Date ÷ The Number of Impressions Delivered to Date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
rate or frequency at which users click on a digital creative and arrive
at its landing page.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">576</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of clicks across all impressions. For Invest DSP, clicks
from all media types are supported. For external DSPs, only clicks from
Native and Video media types are supported.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">30.5</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">total_revenue / imps * 1000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total revenue (booked revenue +reseller revenue) divided by the number
of imps multiplied by 1000.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.85</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">video_completions / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
ratio of video ad completions to impressions, expressed as a
percentage.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">completions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">12</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times the video creatives played for the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">1</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of clicks across all impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">error_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.01</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">errors / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
rate of errors per impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">errors</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">2</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times a video error occurred.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">first_quartile_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">9101</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">first_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of times the video player reported a 25% complete event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">first_quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">9101</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">first_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of times the video player reported a 25% complete event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">impression_seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">6976</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">creative_duration * imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of seconds served on impressions. If you are using a house
line item to report unsold opportunities then you may wish to filter or
add impression type as a dimension to separate sold and unsold
impression seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">2340</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of impressions. For video ads, the video player would
normally count an impression when the first frame of the video is
loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">reseller_revenue_dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">23.9442</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">reseller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total revenue on resold impressions through direct publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">revenue_per_complete</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">5.43</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">(booked_revenue + reseller_revenue) / completions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
revenue divided by the number of completions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">revenue_per_minute_sold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">3.55</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">sum(reseller_revenue_dollars + booked_revenue_dollars) * 60 / sum(creative_duration * imps)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
revenue the ad delivered per minute.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">revenue_per_second_sold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.23</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">total_revenue / impression_seconds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total revenue per second sold.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">revenue_per_click</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.20</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">total_revenue / clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
revenue generated per click event recorded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">responses_seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">63424</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">creative_duration * responses</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total seconds of demand Xandr received for the auctions it holds for
demand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">revenue_per_minute_sold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">3.55</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">sum(reseller_revenue_dollars + booked_revenue_dollars) * 60 / sum(creative_duration * imps)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
revenue the ad delivered per minute.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">seconds_per_imp</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">15.78</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">sum(creative_duration * imps) / sum(imps)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total creative duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">seconds_per_impression</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">15.78</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">sum (creative_duration * imps) / sum (imps) </code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total creative duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">9236</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">second_quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">8912</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">second_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of times the video player reported a 50% complete event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">start_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.98</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">starts / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
percentage of times the first segment of the video creative was
downloaded and started.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">skip_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.01</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">skips / impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of skips divided by the number of impressions recorded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">second_quartile_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.90</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">second_quartiles / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of second quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">started_video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.98</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">video_completions / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of video starts that resulted in a completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">skips</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">10</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">skips</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times a user skipped the video. Use this metric for
reporting when buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">slot_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">second_quartile_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">8912</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">second_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of times the video player reported a 50% complete event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">total_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">25.78435</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">booked_revenue + reseller_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total resold and booked revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">third_quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">8646</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">third_quartiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of times the video player reported a 75% complete event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">third_quartile_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">0.87</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">third_quartiles / video_starts</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
number of third quartiles fired by the video player divided by the
number of start events.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">the_total_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">450.00</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"><code
class="ph codeph">booked_revenue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">25_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">10</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times the video creatives completed 25% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">50_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">10</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times the video creatives completed 50% of the entire
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">75_pcts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3">10</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
total number of times the video creatives completed 75% of the entire
duration.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">Average
View Time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"><code
class="ph codeph">28</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4">sum
(creative_duration * ((0.125 × starts) + (0.25 × first_quartiles) +
(0.25 × second_quartiles) + (0.25 × third_quartiles) + (0.125 ×
completions)) / sum (starts))</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">An
estimate for the average duration in seconds (rounded to 0 decimal
places) of the creative that was viewed. This is calculated by
approximating the duration watched as the mid-point between the video
events (for example, a start event would estimate that 12.5% of the
creative is viewed).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__1">Average
View Time Percent</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__2">percentage</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__3"><code
class="ph codeph">89%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__4">sum
(((0.125 × starts) + (0.25 × first_quartiles) + (0.25 ×
second_quartiles) + (0.25 × third_quartiles) + (0.125 ×
completions))∕starts)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics-report__table-3ec6a77a-bc51-438a-8bf9-b63e771c80f5__entry__5">The
average view time expressed as a percentage of the total possible view
time.</td>
</tr>
</tbody>
</table>



<div id="seller-slot-analytics-report__section-5e7c53bb-5944-4aa2-8e6b-ff3172ea8ba8"
>

## Example

The JSON file should include the report_type of
"seller_slot_video_report_network", as well as the columns (dimensions
and metrics) and report_interval that you want to retrieve. You can also
filter for specific dimensions, define granularity (month, day), and
specify the format in which the data should be returned (csv, excel, or
html). For a full explanation of fields that can be included in the JSON
file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.

**Create the JSON report request**

``` pre
$ cat seller_slot_video_report_network
 
{"report":
    {
        "report_type":"seller_slot_video_report_network",
        "columns":[
            "Buyer_Member",
            "video_content_network",
            "Video_Context",
            "placement_name",
            "Billing_Currency",
            "ad_responses",
            "click_through_rate",
            "responses_seconds",
            "seconds_per_imp",
            "started_video_completion_rate",
            "revenue_per_complete",     
        ],
        "report_interval":"last_7_days",
        "format":"csv"
    }
}
```

<div id="seller-slot-analytics-report__p-a46c0499-aadc-4bd4-868e-64d38ad556ad"
>

**`POST` the JSON request to get back a report ID.**

``` pre
$ curl -b cookies -X post -d @seller_slot_video_report_network "https://api.appnexus.com/report?seller_member_id=123"
 
{
   "response":{
      "status":"OK",
      "report_id":"09b6979a6a4c3805bdac8921378d3622"
   }
}
```



**Retrieve the status of the report**

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
         "created_on":"2023-02-03 20:09",
         "json_request": "{\"report\":{\"report_type\":\"seller_slot_video_report_network\",
             \"columns\":[\"day\",\"seller_member_id\",
             \"call_type\",\"url\",\"ad_requests_gdpr_country\",\"ad_requests_gdpr_applied_valid_consent_string\",\"ad_requests_gdpr_applied_blank_consent_string\",
             \"ad_requests_gdpr_applied_valid_consent_string_tcf_version_2\",\"pct_ad_requests_gdpr_country_gdpr_applied\",
             \"pct_ad_requests_gdpr_applied_valid_consent_string\",\"pct_ad_requests_gdpr_applied_blank_consent_string\",
             \"pct_ad_requests_gdpr_applied_valid_consent_string_tcf_version_2\"],
             \"report_interval\":\"last_7_days\",\"format\":\"csv\",\"filters\":[{\"seller_member_id\":\"123\"}]}}",
             "url":"report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```

**Download the report**



To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.

``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/seller_slot_video_report_network.csv
```



<div id="seller-slot-analytics-report__note-a2672600-9a73-4fa8-a5ce-9cdad938f352"


Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



<div id="seller-slot-analytics-report__note-bd8d06ce-76e6-47be-b03e-f15e09ed8da8"


Note: There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








