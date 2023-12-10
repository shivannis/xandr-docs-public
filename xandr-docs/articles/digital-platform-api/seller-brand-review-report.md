---
Title : Seller Brand Review Report
Description : This report provides a view of brand performance across all of your
ms.date: 10/28/2023
ms.custom: digital-platform-api
inventory. You can:
---


# Seller Brand Review Report





This report provides a view of brand performance across all of your
inventory. You can:



- review what creative has served on your inventory and how it
  performed.

- review creative performance by audit status.

- review client brand category performance across all of your inventory.



The `time_granularity` of the data is `daily`. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="seller-brand-review-report.md#seller-brand-review-report__seller-brand-review-report-example"
class="xref">Example</a> below.



>

## Time Frame

>

The `report_interval` field in the JSON request must be set to one of
the following:

- yesterday
- last_7_days
- last_30_days
- month_to_date
- last_month



>

class="note tip note_tip">

<b>Tip:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.







>

**Data Retention Period**

Data retention period for this report is 428 days.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-brand-review-report__entry__1"
class="entry align-left colsep-1 rowsep-1">Column</th>
<th id="seller-brand-review-report__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="seller-brand-review-report__entry__3"
class="entry align-left colsep-1 rowsep-1">Filter?</th>
<th id="seller-brand-review-report__entry__4"
class="entry align-left colsep-1 rowsep-1">Example</th>
<th id="seller-brand-review-report__entry__5"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">month</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">time</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The month of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">day</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">time</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The day of the
auction.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">643</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the member that
won the auction.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">buyer_seat_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"My Custom Seat"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The display name for the
buyer seat code.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">buyer_seat_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">123</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the buyer
seat.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">buyer_seat_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Custom Seat"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The Custom Buyer Seat ID
(submitted by DSP) which was used to bid on the impression.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">bidder</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">bidder_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"</code><code
class="ph codeph">Xandr</code><code
class="ph codeph"> Invest"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the
bidder.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">bidder_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The bidder ID of the
member.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">curator_member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">10652</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the curator
member.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">placement_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">546</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the
placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">placement_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"300x250 Business"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the
placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">placement</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"300x250 Business (546)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">6787</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">geo_country</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The code of the
geographical country.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">geo_country_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the
geographical country.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">imp_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Kept"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">imp_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><p>The ID for the type of
impression. Possible values (associated types in parentheses):</p>
<ul>
<li><p><code class="ph codeph">1 ("Blank")</code>: No creative
served.</p></li>
<li><p><code class="ph codeph">2 ("PSA")</code>: A public service
announcement served because there were no valid bids and no default
creative was available.</p></li>
<li><p><code class="ph codeph">3 ("Default Error")</code>: A default
creative served due to a timeout issue.</p></li>
<li><p><code class="ph codeph">4 ("Default"):</code> A default creative
served because there were no valid bids.</p></li>
<li><p><code class="ph codeph">5 ("Kept")</code>: Your advertiser's
creative served on your publisher's site.</p></li>
<li><p><code class="ph codeph">6 ("Resold")</code>: Your publisher's
impression was sold to a third-party buyer.</p></li>
<li><p><code class="ph codeph">7 ("RTB")</code>: Your advertiser's
creative served on third-party inventory.</p></li>
<li><p><code class="ph codeph">8 ("PSA Error")</code>: A public service
announcement served due to a timeout issue or lack of a default
creative.</p></li>
<li><p><code class="ph codeph">9 ("External Impression")</code>: An
impression from an impression tracker.</p></li>
<li><p><code class="ph codeph">10 ("External Click")</code>: A click
from a click tracker.</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">654</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the
creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">site_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the site. For
more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">site_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"My Site"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the site. For
more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">brand_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the brand
associated with a creative served on the publisher's inventory.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">brand_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Ace Hardware"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the brand
associated with a creative served on the publisher's inventory.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">brand</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Ace Hardware (3)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"cpm"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The type of payment to
the broker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">revenue_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"cpm"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The way the advertiser
has agreed to pay you.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">revenue_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">4</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the revenue
type. Possible values:
<ul>
<li><p><code class="ph codeph">-1</code> = No Payment</p></li>
<li><p><code class="ph codeph">0</code> = Flat CPM</p></li>
<li><p><code class="ph codeph">1</code> = Cost Plus CPM,</p></li>
<li><p><code class="ph codeph">2</code> = Cost Plus Margin</p></li>
<li><p><code class="ph codeph">3</code> = CPC</p></li>
<li><p><code class="ph codeph">4</code> = CPA</p></li>
<li><p><code class="ph codeph">5</code> = Revshare</p></li>
<li><p><code class="ph codeph">6</code> = Flat Fee</p></li>
<li><p><code class="ph codeph">7</code> = Variable CPM</p></li>
<li><p><code class="ph codeph">8</code> = Estimated CPM</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">250</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The width of the
creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">300</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The height of the
creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">site</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"My Site (555)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">publisher_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"My Publisher Code"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The custom code for the
publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">site_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Site Name Code"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The custom code for the
site.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">placement_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Photos Code"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The custom code for the
placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">buyer_member_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Network"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the buying
member.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">buyer_member</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Network (567)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">media_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Banner", "Pop", "Interstitial", "Video", "Text"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The general display style
of a creative served on the publisher's inventory. You can use the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">mediatype_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">444</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the media type
associated with the creative that was served. For more information, see
the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">publisher_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"LOL - US"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the publisher
on whose site the impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"LOL - US (44389)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">deal_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the deal. For
more information about deals you have negotiated with buyers, see <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">deal_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the
deal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">deal_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID representing the
type of deal. Possible values:
<ul>
<li><p><code class="ph codeph">1</code> = Open Auction</p></li>
<li><p><code class="ph codeph">2</code> = Private Auction</p></li>
<li><p><code class="ph codeph">4</code> = Programmatic
Guaranteed</p></li>
<li><p><code class="ph codeph">5</code> = Curated Auction</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">deal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">deal_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Custom code"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The custom code for the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">brand_offer_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">1256</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the brand offer
category associated with the impression. See <code
class="ph codeph">category_id</code> in the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> page.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">brand_offer_category_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Luxury Cars"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The name of the brand
offer category associated with the impression. See <code
class="ph codeph">category_id</code> in the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> page.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">creative_audit_status_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The ID of the audit
status of the creative associated with the impression:
<ul>
<li><p><code class="ph codeph">0</code> = unaudited</p></li>
<li><p><code class="ph codeph">1</code> = seller audited only</p></li>
<li><p><code class="ph codeph">2</code> = <span
class="ph">appnexus audited</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">creative_audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"Unaudited"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The audit status of the
creative associated with the impression:
<ul>
<li><p><code class="ph codeph">"Unaudited"</code></p></li>
<li><p><code class="ph codeph">"Self Audit Only"</code></p></li>
<li><p><code class="ph codeph">"</code><code
class="ph codeph">AppNexus</code><code
class="ph codeph"> Audited"</code></p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__1"><code
class="ph codeph">size</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__5">The width and height of
the creative associated with the impression.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="seller-brand-review-report__entry__251"
class="entry align-left colsep-1 rowsep-1">Column</th>
<th id="seller-brand-review-report__entry__252"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="seller-brand-review-report__entry__253"
class="entry align-left colsep-1 rowsep-1">Example</th>
<th id="seller-brand-review-report__entry__254"
class="entry align-left colsep-1 rowsep-1">Formula</th>
<th id="seller-brand-review-report__entry__255"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">imps</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">34534</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total number of
impressions (including defaults).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">clicks</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">345</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">clicks</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total number of
clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">cost</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">16.833378</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">cost</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total amount of
media cost for direct publisher and purchased real-time inventory.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">revenue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">25.767257</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">booked_revenue + reseller_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The sum of booked
revenue and reseller revenue.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">booked_revenue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">25.767257</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">booked_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total revenue
booked through direct advertisers (line item).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">reseller_revenue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">0</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">reseller_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total revenue on
resold impressions through direct publishers.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">profit</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">970.40</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">booked_revenue - total_cost</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Booked revenue minus
total cost.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">cpm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">1.66051685393258</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(cost / imps) x 1000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The cost per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">total_convs</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">total_convs</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">convs_rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">0.000221877080097626</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">total_convs / imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The rate of conversions
to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">ctr</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">0.002327</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">clicks / imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The rate of clicks to
impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">rpm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">2.60548314606741</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(revenue / imps) x 1000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The revenue per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">ppm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">0.944966292134831</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(profit / imps) x 1000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255"><strong>To be
deprecated.</strong> The profit per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">convs_per_mm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">221.877080097625</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(total_convs / imps) x 1,000,000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The number of
conversions per million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">imps_viewed</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">30,450</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">imps_viewed</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that an impression is viewable if 50% of the pixels are
in-view during 1 consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">view_measured_imps</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">10,120</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">view_measured_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">view_rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">58%</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">view_rate</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">view_measurement_rate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">45%</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">view_measurement_rate</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">total_cost</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">total_cost = media_cost + data_costs + partner_fees + commissions + serving_fees + publisher_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255"><p>The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</p>

<b>Note:</b> We have added logic to prevent
double counting third-party fees during the breaking change period.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">total_cost_ecpm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(total_cost/imps) * 1,000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">total_cost_ecpc</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">total_cost/clicks</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">total_cost_ecpa</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">total_cost/conversions</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">network_profit</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(booked_revenue + reseller_revenue) - total_cost</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">The sum of booked
revenue and reseller revenue minus total cost.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">network_profit_ecpm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(network_profit/imps) * 1,000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Network profit per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">network_profit_ecpc</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">network_profit/clicks</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Network profit per
click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">network_profit_ecpa</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">network_profit/conversions</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Network profit per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">network_profit_margin</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">network_profit/(booked_revenue + reseller_revenue)</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Network profit
margin.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">profit_ecpm</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">((booked_revenue - total_cost)/imps) * 1,000</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Profit per 1,000
imps.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">profit_ecpc</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(booked_revenue - total_cost)/clicks</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Profit per click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">profit_ecpa</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(booked_revenue - total_cost)/conversions</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Profit per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__251">profit_margin</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__252">money</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__253"><code
class="ph codeph">123.45</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__254"><code
class="ph codeph">(booked_revenue - total_cost)/booked_revenue</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="seller-brand-review-report__entry__255">Buyer profit
margin.</td>
</tr>
</tbody>
</table>





## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"seller_brand_review"`, as well as the columns (dimensions and metrics)
and `report_interval` that you want to retrieve. You can also filter for
specific dimensions, define granularity (year, month, day), and specify
the format in which the data should be returned (csv, excel, or html).
For a full explanation of fields that can be included in the JSON file,
see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat seller_brand_review
{"report":
    {
        "format": "csv",
        "report_interval": "yesterday",
        "row_per": ["geo_country"],
        "columns": ["placement_id","imp_type_id","creative_id","brand_id","geo_country"],
        "report_type": "seller_brand_review"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @seller_brand_review "https://api.appnexus.com/report"
{
   "response":{
      "status":"OK",
      "report_id":"c445bca183a3d338dc1c5b85a3d484f5"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=c445bca183a3d338dc1c5b85a3d484f5'
{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-11-19 22:33:31",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"geo_country\"],\"columns\":[\"placement_id\",\"imp_type_id\",\"creative_id\",\"brand_id\",\"geo_country\"],\"report_type\":\"seller_brand_review\",\"filters\":[{\"seller_member_id\":\"958\"}]}}",
            "url": "report-download?id=c445bca183a3d338dc1c5b85a3d484f5"
        },
        "execution_status": "ready"
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



<b>Tip:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=c445bca183a3d338dc1c5b85a3d484f5' > /tmp/seller_brand_review.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








