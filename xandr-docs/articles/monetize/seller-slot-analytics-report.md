---
Title : Seller Slot Analytics
Description : <div id="seller-slot-analytics__note_f5l_jzn_kwb"
Note: This functionality currently is
in **Alpha**. It is still under development and might change without
---


# Seller Slot Analytics



<div id="seller-slot-analytics__note_f5l_jzn_kwb"


Note: This functionality currently is
in **Alpha**. It is still under development and might change without
notice. Contact your Xandr Account Representative to get enabled.



<div id="seller-slot-analytics__section_jqc_cms_jwb"
>

## Seller Slot Analytics



The Seller Slot Analytics report shows metrics for impressions (slots)
within groups of ads (pods) delivered sequentially in between segments
of non-commercial video programming. You can use this report to gain
insight in answering the following questions:

- On average how many seconds per impression are being served for
  mid-roll slot positions 1, 2 and 3?
- How does the CPM of the first slot within a pre-roll compare to the
  first slot within a mid-roll?
- How many seconds has a brand served in pre-rolls compared to
  mid-rolls?
- Which slot positions is a line item delivering in?
- What is the percentage of slots by position being consumed by my house
  line item?
- Which cities did a line item deliver to?
- How does the completion rate by video context and slot position
  compare?





<div id="seller-slot-analytics__section_kqc_cms_jwb"
>

## Time Frame



The report_interval field in the JSON request can be set to one of the
following:

- `custom`
- `today`
- `yesterday`
- `last 7 days(not including today)`
- `month to date`
- `last month`
- `quarter to date`



To run a report for a custom time frame, set the `Start Date` and
`End Date`fields in your report request. For more details about these
fields, see
<a href="https://wiki.xandr.com/display/api/Report+Service" class="xref"
target="_blank">Report Service</a>

**Data Retention**

This report's data is retained for 420 days. For more information about
how quickly reporting data is processed, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/availability-of-reporting-data.html"
class="xref" target="_blank">Availability of Reporting Data.</a>



<div id="seller-slot-analytics__section_mqc_cms_jwb"
>

## Dimensions

<table id="seller-slot-analytics__table_cyx_wfl_jwb"
class="table frame-all">
<colgroup>
<col style="width: 21%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 36%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="seller-slot-analytics__table_cyx_wfl_jwb__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-slot-analytics__table_cyx_wfl_jwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-slot-analytics__table_cyx_wfl_jwb__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-slot-analytics__table_cyx_wfl_jwb__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Application
ID</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"platform.app"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">A
targetable Apple App Store ID, Google Play package name, or Windows
application ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"Verizon Wireless (789)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The name of
the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Buyer
Seat</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Buyer Seat (DSP Name)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The display
name for the buyer seat code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Buyer
Member</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The ID of
the buying member. If the impression was not purchased, this field shows
one of the following values: 229 = PSA, 0 = Blank, or 319 =
Default.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Insertion
Order</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"Insertion Order (321)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The name of
the Insertion Order.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Line
Item</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"Default Line Item (111)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">Line Item
Name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Deal</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Deal</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The deal
name for deals set up in Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">External
Deal Code</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">A857249</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The deal
code from the external SSP for imps sold via prebid server.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Creative</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Creative</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
creative name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
publisher name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Placement
Group</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Placement Group</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
placement group name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Placement</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Placement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
placement name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Placement
Set ID</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">1234</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The ID of
the placement set.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Call
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">ttj, ut, mob, ptv, openrtb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The type of
handler that was used to send the impression to Xandr (e.g., ttj, ut,
mob, ptv, openrtb).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Application</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
application name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Publisher
Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"EUR"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The default
currency of the publisher in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Brand</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My Brand Name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The brand
name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Impression
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">Resold (6)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The ID for
the type of impression. Possible values (associated types in
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
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Device
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"set top box"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5"><p>The type
of device on which the impression was served. Possible values are:</p>
<ul>
<li>"desktops &amp; laptops"</li>
<li>"tablets"</li>
<li>"mobile phones"</li>
<li>"tv"</li>
<li>"game consoles"</li>
<li>"set top box"</li>
<li>"media players"</li>
<li>"other devices"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Supply
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">mobile_web</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
seller-classified channel to denominate supply in terms of web,
mobile-optimized web, and mobile app impressions. Possible values are
'web', 'mobile_app', and 'mobile_web'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Context</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">Pre-Roll</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The type of
the video creative. For more possible values, see<a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-video-analytics.html#NetworkAdvertiserVideoAnalytics-VideoContext"
class="xref" target="_blank">Video Context</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Operating
System Family</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"Android"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The name of
the operating system family.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Operating
System</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"Android 2.3.5 Gingerbread"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The name of
the operating system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Browser</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">webOS Browser (33)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The name of
the browser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Slot
Position</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
position of the ad in the sequence of the pod.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Advertiser
Default Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">EUR</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The default
currency of the advertiser in this impression. This dimension is
available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Bidder</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">My DSP</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The name of
the bidder. This is normally the external DSP or Prebid Server.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Billing
Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">USD</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
transaction currency that the buyer used to purchase this impression.
This dimension is available only when Currency 2.0 is disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Billing
Exchange Rate (removed from report)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">City</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">Vienna</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The city in
which the user is located.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Creative
Size</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">Int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">1x1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The height
of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Country</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">"France"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The country
of the user's location, both name and code, in the format "France". The
string "250" can appear in cases where we don't know the country or if
the country doesn't map correctly to a location in our database.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Geo
Region</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">L6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The region
or state code code (Federal Information Processing Standard) of the
user's location. For example CA for California and L6 for
Shropshire.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Inventory
URL</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The URL of
the inventory or application package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Language</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">German (6)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
language of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Max
Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">Max
duration of the pod the slot served in.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Max Number
Ads</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The maximum
number of ads for the pod the slot served in.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Max VAST
Version</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The max
VAST version supported for the slot.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Member
Currency</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
currency of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Playback
Method</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">auto_play_sound_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
playback method for the creative, e.g, 'auto-start, sound on'.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Player
Size</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">1920x1080</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The size of
the video player.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Slot
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"><code
class="ph codeph">Standard Slot</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The type of
position (ad or bumper) within an ad pod.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Support
VPAID</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Content Durations</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The length
of the video content in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Content Genre</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The main
genre of the program on which the ad will be played. For example,
Cooking, Horror, News, or Football.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Content Language</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Content Rating</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The
publisher-identified audience group for which the content is rated. For
example, All, Children (7+) , Teens (13+), Young Adults (14+), or Adults
(18+).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Content Delivery Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The type of
streaming content delivery: Video on Demand (VOD) or Live.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__1">Video
Content Program Type</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__2">no</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__4"></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_cyx_wfl_jwb__entry__5">The format
of the video program, for example, Movie, Series, Special, Show, Event,
or Clip.</td>
</tr>
</tbody>
</table>



<div id="seller-slot-analytics__section_nqc_cms_jwb"
>

## Metrics

<table id="seller-slot-analytics__table_khm_h3l_jwb"
class="table frame-all">
<colgroup>
<col style="width: 24%" />
<col style="width: 15%" />
<col style="width: 19%" />
<col style="width: 19%" />
<col style="width: 19%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="seller-slot-analytics__table_khm_h3l_jwb__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="seller-slot-analytics__table_khm_h3l_jwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="seller-slot-analytics__table_khm_h3l_jwb__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="seller-slot-analytics__table_khm_h3l_jwb__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="seller-slot-analytics__table_khm_h3l_jwb__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
number of impressions. For video ads, the video player would normally
count an impression when the first frame of the video is loaded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">CPM</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">30.5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">total_revenue
/ imps * 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
revenue (booked revenue +reseller revenue) divided by the number of imps
multiplied by 1000.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">576</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
number of clicks across all impressions. For Invest DSP, clicks from all
media types are supported. For external DSPs, only clicks from Native
and Video media types are supported.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Click
Through Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">1.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">clicks /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The rate of
clicks to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Booked
Revenue Dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">16.3519</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
revenue booked through direct advertisers (line item).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Revenue Per
Complete</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">5.43</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">(booked_revenue
+ reseller_revenue) / completions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The revenue
divided by the number of completions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Revenue Per
Minute Sold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">3.55</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">sum(reseller_revenue_dollars
+ booked_revenue_dollars) * 60 / sum(creative_duration * imps)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The revenue
the ad delivered per minute.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Total
Revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">25.78435</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">booked_revenue
+ reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
resold and booked revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Revenue Per
click</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">1.56</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">total_revenue
/ clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">Total
revenue per click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Impression
Seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">6976</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">creative_duration
* imps</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
number of seconds served on impressions. If you are using a house line
item to report unsold opportunities then you may wish to filter or add
impression type as a dimension to separate sold and unsold impression
seconds.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Seconds Per
Impression</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">15.78</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">sum(creative_duration
* imps) / sum(imps)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
creative duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Reseller
Revenue Dollars</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">23.9442</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
revenue on resold impressions through direct publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Revenue Per
Second Sold</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">total_revenue
/ impression_seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The total
revenue per second sold.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">9236</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of times the video player reported a start event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Skips</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">85</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">skips</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of times the video player reported a skip event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">First
Quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">9101</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">first_quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of times the video player reported a 25% complete event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Second
Quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">8912</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">second_quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of times the video player reported a 50% complete event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Third
Quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">8646</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">third_quartiles</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of times the video player reported a 75% complete event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Completions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">8458</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">completions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of times the video player reported a completion event.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Start
Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.98</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">starts /
impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of starts divided by the number of impressions recorded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Skip
Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.01</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">skips /
impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of skips divided by the number of impressions recorded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">First
Quartile Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.94</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">first_quartiles
/ video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of first quartiles fired by the video player divided by the number of
start events.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Second
Quartile Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.90</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">second_quartiles
/ video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of second quartiles fired by the video player divided by the number of
start events.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Third
Quartile Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.87</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">third_quartiles
/ video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of third quartiles fired by the video player divided by the number of
start events.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Completion
Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.85</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">video_completions
/ impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of impressions that resulted in a completion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Started
Video Completion Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.98</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">video_completions
/ video_starts</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The number
of video starts that resulted in a completion.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Error
Rate</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">0.01</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">errors /
impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The rate of
errors per impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Average
View Time</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">28</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">sum
(creative_duration * ((0.125 × starts) + (0.25 × first_quartiles) +
(0.25 × second_quartiles) + (0.25 × third_quartiles) + (0.125 ×
completions)) / sum (starts))</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">An estimate
for the average duration in seconds (rounded to 0 decimal places) of the
creative that was viewed. This is calculated by approximating the
duration watched as the mid-point between the video events (for example,
a start event would estimate that 12.5% of the creative is viewed).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__1">Average
View Time Percent</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__2">percentage</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__3"><code
class="ph codeph">89%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__4">sum
(((0.125 × starts) + (0.25 × first_quartiles) + (0.25 ×
second_quartiles) + (0.25 × third_quartiles) + (0.125 ×
completions))∕starts)</td>
<td class="entry colsep-1 rowsep-1"
headers="seller-slot-analytics__table_khm_h3l_jwb__entry__5">The average
view time expressed as a percentage of the total possible view
time.</td>
</tr>
</tbody>
</table>





## To Run Your Report

Follow these steps to run your report.

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Analytics
2.  Select the relevant report from the list. The
    Report screen shows the available
    filters, dimensions, and delivery options for the report. The
    selections you make here will determine what report data is
    delivered to you, and how.
    

    Important: For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.html"
    class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

    
3.  Select the relevant filters to limit the data displayed to just the
    information you want. For example, rather than running a report that
    shows impressions for all inventory sources, you may want to list
    results for just a select few. When you select a filter (by clicking
    Edit), a selection panel appears.
    Select items in the **Available** list (left), then click
    Add to include them in the
    **Chosen** list (right).
4.  Group by Dimension. Grouping allows you to display rows of data in
    the order you prefer.
    

    Warning: The more dimensions you
    group by, the larger the data set that is returned. Larger data sets
    can take substantially longer to process. Be sure to group using
    only the dimensions you need.

    
5.  Choose a delivery option. Once you've selected your filters and
    grouped by your chosen dimensions, you need to choose a delivery
    method. Available delivery methods include:
    - **Run now, show results in screen**: For smaller amounts of data,
      you may want to view the report as soon as possible in your
      browser. You can download the report in XLSX, CSV, Excel/TSV and
      JSON format. However, there is a limit of 100,000 rows per report
      when downloading as XLSX and Excel file.
    - **Run in background, notify me when results are ready to view**: A
      popup notification will let you know when the report is ready to
      view or download.
      

      Tip: The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="seller-slot-analytics__d10e107">**Export, send results
      via email**: Run the report in the background and email the
      results to one or more email addresses.
    - **Save as report template**: Save your selected report settings so
      that you can run this report again in the future. You can name
      this template using the text entry field under
      Name this report (its checkbox
      is auto-selected when you choose this option). A saved report can
      be rerun from the Your Reports
      screen.
    - **Add to scheduled reports**: Run this report automatically at
      specified times and have it sent to one or more email addresses.
    - **Name this report**: Give this report with its current settings a
      name for future reference.
6.  <span id="seller-slot-analytics__d10e136">Click
    Run report to send your report
    request.






