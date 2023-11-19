---
Title : Guaranteed Outcomes Bidder Integration Guide
Description : This page outlines the Guaranteed Views feature of
ms.date : 10/28/2023
Xandr's Exchange.
---


# Guaranteed Outcomes Bidder Integration Guide



This page outlines the Guaranteed Views feature of
Xandr's Exchange.

This specification defines the method by which
Xandr enables a Bidder to bid for, and to be
billed for, an outcome (view and/or complete) vs. the typical served
impression.  In addition, since different buyers have different
standards for what constitutes a "viewable impression", the
specification is designed to support a variety of standards, including
different definitions (e.g., IAB vs. GroupM) and different measurement
technology vendors (e.g. DoubleVerify).  In the future, the
specification may also be used to support additional transaction events,
for example, an in demo impression.

For more information
see <a href="guaranteed-outcomes.md" class="xref">Guaranteed Outcomes</a>.



## Implementation

At a high level, our approach to the implementation follows what has
been described in the OpenRTB specification as a "billing notice", from
OpenRTB Specification 2.4, Section 7.2 -

"Winning the auction, however, does not guarantee that the ad will be
successfully delivered to the client or that it will meet viewability
expectations. Furthermore, policies vary among exchanges as to the
criteria for billing. Most consider an ad billable upon some form of
delivery or rendering vs. the auction win alone. This aligns better with
the buyer’s obvious goal of ensuring that the impressions they pay for
are actually displayed.

To abstract the concept, let us refer to “billing notice” as the firing
of some notification URL at the time when the clearing price of the
impression will be booked as spend. This is irrespective of whether the
actual OpenRTB win notice URL is delegated to the client for firing or
some other tracking URL is used."

The billing notification concept has been further developed in the
OpenRTB Specification 2.5.  Highlighting relevant content from section
4.2.3 -

BEST PRACTICE: The essential function of the win notice is to inform a
bidder that they won an auction. It does not necessarily imply ad
delivery, creative viewability, or billability. Exchanges are
highly encouraged to publish to their bidders their event triggers,
billing policies, and any other meaning they attach to the win notice.

BEST PRACTICE: Firing of the billing notice should be server-side and as
“close” as possible to where the exchange books revenue in order to
minimize discrepancies between exchange and bidder.




## Protocol Summary

A summary of the components required to enable bidding for and
purchasing outcomes is as follows:

**Bid Request**

Xandr will indicate in the bid request that it
will accept outcome based bids, which outcomes (views and/or completes),
and the rate that the exchange will use to generate an eCPM value for
ranking.

**Bid Response**

Bidder will indicate that the bid is an outcome based bid, specify which
outcome (payment_type), specify the outcome based bid price (vCPM for
views, CPCV for completes), and provide a billing notify url.

**Win Notify**

Xandr will indicate that the winning bid was for
an outcome, specify which outcome, and quote the winning, outcome-based
price that the Bidder will be charged if the ad achieves the desired
outcome post-serve. Note that at this point the bidder is notified of
winning the auction and that an impression was served—but they aren’t
charged until the outcome is verified.

**Billing Notify**

After the creative is served and Xandr receives
a positive signal that the desired outcome occurred,
Xandr calls the billing notify url to indicate
that the outcome occured and the Bidder is charged the winning
outcome-based price.

**Specification**

**Bid Request**

**Impression AppNexus Object**

Xandr supports the following fields in
the `appnexus` extension object of
the `imp` object:

<table id="ID-0000cfb6__table_cr1_sxr_4wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_cr1_sxr_4wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000cfb6__table_cr1_sxr_4wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000cfb6__table_cr1_sxr_4wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_cr1_sxr_4wb__entry__1"><code
class="ph codeph">allowed_payment_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_cr1_sxr_4wb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_cr1_sxr_4wb__entry__3">Specifies the
allowable payments types for this impression. If this field is not
present, then the only allowed payment type is 'impression'.</td>
</tr>
</tbody>
</table>

**Allowed Payment Type Object**

Xandr supports the following fields in
the `allowed_payment_type` object of the impression `ext` object:

<table id="ID-0000cfb6__table_er1_sxr_4wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_er1_sxr_4wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000cfb6__table_er1_sxr_4wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000cfb6__table_er1_sxr_4wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_er1_sxr_4wb__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_er1_sxr_4wb__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_er1_sxr_4wb__entry__3">Specifies the ID of a
payment type that is acceptable for this impression. Currently supported
payment types -

<table id="ID-0000cfb6__table_amg_jyr_4wb" class="table frame-all"
style="width:100%;">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_amg_jyr_4wb__entry__1"
class="entry colsep-1 rowsep-1"><strong>ID</strong></th>
<th id="ID-0000cfb6__table_amg_jyr_4wb__entry__2"
class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
<th id="ID-0000cfb6__table_amg_jyr_4wb__entry__3"
class="entry colsep-1 rowsep-1"><strong>Bid Type</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__2">Impression</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__3">CPM</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__2">Views - Standard
Display</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__3">vCPM</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__2">Views - Custom
Display - 100pv1s</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__3">vCPM</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__1">8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__2">Views - Standard
Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__3">vCPM</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__1">9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__2">Views - Custom Video
- 100pv50pd</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__3">vCPM</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__2">Complete – Standard
Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_amg_jyr_4wb__entry__3">CPCV</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_er1_sxr_4wb__entry__1"><code
class="ph codeph">conversion_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_er1_sxr_4wb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_er1_sxr_4wb__entry__3">Optional. Specifies
the rate that Xandr will use to convert an
outcome-based bid to an impression-based eCPM price for ranking in the
auction. A Bidder may use this for internal bid ranking and/or
budgeting/pacing.</td>
</tr>
</tbody>
</table>

**Bid Response**

**Bid Object**

<table id="ID-0000cfb6__table_hr1_sxr_4wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_hr1_sxr_4wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000cfb6__table_hr1_sxr_4wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000cfb6__table_hr1_sxr_4wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__1"><code
class="ph codeph">price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__2">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__3">(Required) The bid
price expressed in CPM.
<p>If the <code class="ph codeph">bid_payment_type</code> is omitted or
set to 'Impression', then <code class="ph codeph">price</code> is used
in the auction and to populate the <code
class="ph codeph">${AUCTION_PRICE}</code> macro.</p>
<p>If the <code class="ph codeph">bid_payment_type</code> is something
other than Impression, then <code class="ph codeph">price</code> must
still be set; however, the <code
class="ph codeph">payment_type_price</code> field will be used in the
auction and to populate the <code
class="ph codeph">${AUCTION_PRICE}</code> macro.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__1"><code
class="ph codeph">nurl</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__3">The win notify URL. 
The Xandr server will call this URL when it
receives a client side notification from the device, which indicates
that Xandr won the auction.  This occurs at the
same time that Xandr records the impression and
is when the Bidder should record a served impression as well.


<b>Note:</b>
<p>The win notify does not signify a transaction, just that the
impression served. The billing notify will signal a transaction.</p>


<p>Win notify URLs sent as <code class="ph codeph">https</code> are not
supported and will be treated as <code class="ph codeph">http</code>
requests.</p>
<p>The following macros are supported in the notify URL:</p>
<ul>
<li><code class="ph codeph">${AUCTION_ID}</code> - <span
class="ph">Xandr <code
class="ph codeph">auction_id_64</code></li>
<li><code class="ph codeph">${AUCTION_BID_ID}</code> - ID of the bid
specified in the <code class="ph codeph">bidid</code> field in the bid
response</li>
<li><code class="ph codeph">${AUCTION_IMP_ID}</code> - ID of the
impression, from the <code class="ph codeph">impid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_SEAT_ID}</code> - ID of the
winning seat, from the <code class="ph codeph">seat</code> field in
the <code class="ph codeph">seatbid</code>object</li>
<li><code class="ph codeph">${AUCTION_AD_ID}</code> - ID of the buyer's
creative, from the <code class="ph codeph">adid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_PRICE}</code> - Clearing price of
the impression in the currency specified in the <code
class="ph codeph">cur</code> field in the bid response. If  <code
class="ph codeph">bid_payment_type</code> is present and something other
than Impression, then the <code class="ph codeph">AUCTION_PRICE</code>
will reflect price to be paid only if the billing notify is called.</li>
<li><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of the
clearing price, as specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
<li><code class="ph codeph">${CREATIVE_CODE}</code> - The <code
class="ph codeph">code</code> field set on the creative object via the
API when registering a creative</li>
<li><code class="ph codeph">${AN_PAYMENT_TYPE}</code> - The <code
class="ph codeph">payment_type</code> of bid specified in the <code
class="ph codeph">bid_payment_type</code> field of the bid response</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__1"><code
class="ph codeph">burl</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_hr1_sxr_4wb__entry__3">The billing notify
URL. The Xandr server will call this URL when it
determines that the impression is billable.  This event occurs at the
same time that Xandr records the buyer cost for
the impression. At this point,  the Bidder incurs cost and should record
a transaction.
<p>Billing notify URL is only relevant for bids that have specified a
<code class="ph codeph">bid_payment_type</code> other than
Impression.</p>
<p>Billing notify URLs sent as <code class="ph codeph">https</code> are
not supported and will be treated as <code class="ph codeph">http</code>
requests.</p>
<p>The following macros are supported in the billing notify URL:</p>
<ul>
<li><code class="ph codeph">${AUCTION_ID}</code> - <span
class="ph">Xandr <code
class="ph codeph">auction_id_64</code></li>
<li><code class="ph codeph">${AUCTION_BID_ID}</code> - ID of the bid
specified in the <code class="ph codeph">bidid</code> field in the bid
response</li>
<li><code class="ph codeph">${AUCTION_IMP_ID}</code> - ID of the
impression, from the <code class="ph codeph">impid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_SEAT_ID}</code> - ID of the
winning seat, from the <code class="ph codeph">seat</code> field in
the <code class="ph codeph">seatbid</code>object</li>
<li><code class="ph codeph">${AUCTION_AD_ID}</code> - ID of the buyer's
creative, from the <code class="ph codeph">adid</code> field in
the <code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_PRICE}</code> - Clearing price for
the <code class="ph codeph">payment_type</code> specified in the <code
class="ph codeph">bid_payment_type</code> field of the bid response, in
the currency specified in the  <code class="ph codeph">cur</code>  field
in the bid response.</li>
<li><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of the
clearing price, as specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
<li><code class="ph codeph">${CREATIVE_CODE}</code> - The <code
class="ph codeph">code</code> field set on the creative object via the
API when registering a creative</li>
<li><code class="ph codeph">${AN_PAYMENT_TYPE}</code> - The <code
class="ph codeph">payment_type</code> of bid specified in the <code
class="ph codeph">bid_payment_type</code> field of the bid response</li>
</ul></td>
</tr>
</tbody>
</table>

**Bid Response AppNexus Object**

Xandr supports the following fields in
the `appnexus` extension object of the bid
object:

<table id="ID-0000cfb6__table_nr1_sxr_4wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_nr1_sxr_4wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000cfb6__table_nr1_sxr_4wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000cfb6__table_nr1_sxr_4wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_nr1_sxr_4wb__entry__1"><code
class="ph codeph">bid_payment_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_nr1_sxr_4wb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_nr1_sxr_4wb__entry__3">Required to submit
Guaranteed Outcomes bid.  Specifies the payment type for which the
Bidder is bidding.  If omitted, then Xandr will
consider the bid to be for a standard Impression.</td>
</tr>
</tbody>
</table>

**Bid Payment Type Object**

Xandr supports the following fields in the
`bid_payment_type` object of the bid response `ext` object:

<table id="ID-0000cfb6__table_pr1_sxr_4wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_pr1_sxr_4wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000cfb6__table_pr1_sxr_4wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000cfb6__table_pr1_sxr_4wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_pr1_sxr_4wb__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_pr1_sxr_4wb__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_pr1_sxr_4wb__entry__3">Specifies the payment
type for which the Bidder is bidding and will be billed.  If the payment
type is not 'impression', then a billing notify url must be set on the
bid object. The currently supported values are -

<table id="ID-0000cfb6__table_vyf_sbs_4wb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000cfb6__table_vyf_sbs_4wb__entry__1"
class="entry colsep-1 rowsep-1"><strong>ID</strong></th>
<th id="ID-0000cfb6__table_vyf_sbs_4wb__entry__2"
class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
<th id="ID-0000cfb6__table_vyf_sbs_4wb__entry__3"
class="entry colsep-1 rowsep-1"><strong>Bid Type</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__2">Impression</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__3">CPM</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__2">Views - Standard
Display</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__3">vCPM</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__1">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__2">Views - Custom
Display - 100pv1s</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__3">vCPM</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__1">8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__2">Views - Standard
Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__3">vCPM</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__1">9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__2">Views - Custom Video
- 100pv50pd</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__3">vCPM</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__1">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__2">Complete – Standard
Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_vyf_sbs_4wb__entry__3">CPCV</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_pr1_sxr_4wb__entry__1"><code
class="ph codeph">price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_pr1_sxr_4wb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000cfb6__table_pr1_sxr_4wb__entry__3">Specifies the bid
price for the payment type, expressed on an outcome basis (see Bid Type
above).
<p>For example, if the <code class="ph codeph">payment_type</code> is
set to 2 ('Views - Standard Display'), <code
class="ph codeph">price</code> is interpreted as a vCPM value. It is
also the maximum charge, which is only accrued if the creative is served
and measured viewable, according to the IAB definition and the <span
class="ph">Xandr viewability measurement script. </p>


<b>Note:</b>
<p>Only USD bids are supported for payment types other than
Impression.</p>

</td>
</tr>
</tbody>
</table>






