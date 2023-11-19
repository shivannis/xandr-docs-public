---
Title : Incoming Bid Response from Bidders
Description : <b>Warning:</b> This describes the integration
ms.date : 10/28/2023
of the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
---


# Incoming Bid Response from Bidders





<b>Warning:</b> This describes the integration
of the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB 2.4 protocol.</a>



A bidder will send a bid response after it receives a <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Request</a> from the impression bus.
The bid response will include the bidder's bid (`price`) and chosen
creative (`creative_id` or `creative_code`). This creative will be
served if the bid is ultimately accepted by the ad server. Multiple bids
within the bid response are encouraged.



## Implementation

Xandr expects all calls to return HTTP code 200 except for an empty bid
response (no bid), which will return HTTP code 204. We currently support
the following fields in the bid response object.

>

**Bid Response Object**

<table
id="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__3"><strong>Required:</strong>
The ID of the bid request to which this is a response.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__1"><code
class="ph codeph">seatbid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__2">array
of objects</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__3"><strong>Required
if a bid is made:</strong> Used for identifying <code
class="ph codeph">seatbid</code> objects. See <a
href="incoming-bid-response-from-bidders.md#IncomingBidResponsefromBidders-SeatBidObject"
class="xref" target="_blank">Seat Bid Object</a> for more
information.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__1"><code
class="ph codeph">bidid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__3"><div
id="incoming-bid-response-from-bidders__p-6e2552f1-55c4-4055-b402-ddad02dc117c"
>
The bid response ID to assist tracking for bidders. This value is chosen
by the bidder for cross-reference.
<div
id="incoming-bid-response-from-bidders__note-9ba08042-ebd6-48ef-9391-41094c896446"
class="note note_note">
<b>Note:</b> This is used only to populate the
macro <code class="ph codeph">${AUCTION_BID_ID</code>}. We do not store
this information.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__1"><code
class="ph codeph">cur</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-34c20029-5a78-4630-a2ec-9ab7600609c2__entry__3">The
bid currency using ISO-4217 alphabetic codes. If omitted, default is
<code class="ph codeph">USD</code>. Also used for the macro <code
class="ph codeph">${AUCTION_CURRENCY</code>} in the win notify URL and
creative or pixel payload.</td>
</tr>
</tbody>
</table>





**Seat Bid Object**

>

Xandr supports the following fields in the `seatbid` object, each of
which represents a different bidder seat and contains one or more
individual bids.

<table
id="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__1"><code
class="ph codeph">bid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__2">array
of objects</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__3"><div
id="incoming-bid-response-from-bidders__p-d37e3fa5-191e-4f14-b834-c46ba6e5e939"
>
<strong>Required:</strong> An array of bid objects; each bid object
relates to an Impression Object in the <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Request</a>.
<div
id="incoming-bid-response-from-bidders__note-bdb5ba64-36f2-47a1-bac5-82f6f0ddf1c5"
class="note note_note">
<b>Note:</b> If supported by an exchange, one
Impression Object can have many bid objects. See <a
href="incoming-bid-response-from-bidders.md#IncomingBidResponsefromBidders-BidObject"
class="xref" target="_blank">Bid Object</a> for more information.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__1"><code
class="ph codeph">seat</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d56d5da1-5e8d-47b2-8a6b-df499ae6e3ed__entry__3"><div
id="incoming-bid-response-from-bidders__p-b5d8f095-383a-4de5-a4fa-e9d3650142b5"
>
<strong>Required:</strong> The ID of the member whose creative is chosen
by the bidder and corresponds to the Xandr <code
class="ph codeph">member_id</code>. Also used to populate the <code
class="ph codeph">${AUCTION_SEAT_ID</code>} macro in the win notify URL
and creative or pixel payload.
<div
id="incoming-bid-response-from-bidders__note-e9ef3215-9201-426d-89f3-8670d21f3971"
class="note note_note">
<b>Note:</b> For DSPs migrated to Buyer Seat
ID bidding, they can use buyer IDs native to their own systems. These
identifiers will be registered as Seat Codes in Xandr systems.
<p>This feature is currently in Closed Beta. If you are interested in
participating, please reach out to your Xandr representative.</p>

</td>
</tr>
</tbody>
</table>



>

**Bid Object**

<table
id="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3"><strong>Required:</strong>
The ID for the bid object; this is chosen by the bidder for tracking and
debugging purposes. Useful when multiple bids are submitted for a single
impression for a given seat.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">impid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3"><strong>Required:</strong>
The ID of the impression object to which this bid applies. Should match
the <code class="ph codeph">id</code> field from the bid request's <code
class="ph codeph">impression</code> object. Can be used to populate the
<code class="ph codeph">${AUCTION_IMP_ID</code>} macro.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">price</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">float</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3"><p><strong>Required:</strong>
The bid price expressed in CPM. Also used to populate the <code
class="ph codeph">${AUCTION_PRICE</code>} macro.</p>
<div
id="incoming-bid-response-from-bidders__p-9d270169-616f-4b42-a489-446ce68d19b2"
>
If the <code class="ph codeph">bid_payment_type</code> is not set to
"Impression", then price will be the eCPM price for the bid, and the
<code class="ph codeph">payment_type_price</code> will be used to
populate the <code class="ph codeph">${AUCTION_PRICE}</code>
macro.PRICE} macro.
<div
id="incoming-bid-response-from-bidders__note-a6c53f39-a4d2-42ba-9938-d71ce6e5750b"
class="note note_note">
<b>Note:</b> bid_payment_type is not enabled
for all clients. Please reach out to your account representative for
this feature.

<div
id="incoming-bid-response-from-bidders__note-95aeb402-9e06-499f-bf74-288ca6eb0eab"
class="note warning note_warning">
<b>Warning:</b> Although this value is a
float, OpenRTB strongly suggests using integer math for accounting to
avoid rounding errors.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">adid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3">The
Xandr creative ID, viewable via the API using the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>. This ID references
the actual ad to be served if the bid wins. Can be used to populate the
<code class="ph codeph">${AUCTION_AD_ID</code>} macro. If both <code
class="ph codeph">adid</code> and <code class="ph codeph">crid</code>
are passed, <code class="ph codeph">adid</code> takes precedence.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">nurl</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3"><p>The
win notify URL, which is dropped as a pixel into the web browser or SDK.
Our server pings this URL when it receives a client-side notification
from the device, which indicates that we won the auction. Responses will
be sent server side. This occurs at the same time when we record the
impression. The max length is 2000 characters with macros expanded.</p>
<p>The following macros are supported in the notify URL:</p>
<ul>
<li><code class="ph codeph">${AUCTION_ID}</code> - Xandr <code
class="ph codeph">auction_id_64</code></li>
<li><code class="ph codeph">${AUCTION_BID_ID}</code> - ID of the bid
specified in the <code class="ph codeph">bidid</code> field in the bid
response</li>
<li><code class="ph codeph">${AUCTION_IMP_ID}</code> - ID of the
impression, from the <code class="ph codeph">impid</code> field in the
<code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_SEAT_ID}</code> - ID of the
winning seat, from the <code class="ph codeph">seat</code> field in the
<code class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_AD_ID}</code> - ID of the buyer's
creative, from the <code class="ph codeph">adid</code> field in the
<code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_PRICE}</code> - Clearing price of
the impression in the currency specified in the <code
class="ph codeph">cur</code> field in the bid response</li>
<li><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of the
clearing price, as specified in the <code class="ph codeph">cur</code>
field in the bid response</li>
<li><code class="ph codeph">${CREATIVE_CODE}</code> - The <code
class="ph codeph">code</code> field set on the creative object via the
API when registering a creative</li>
<li><p><code class="ph codeph">${AN_PAYMENT_TYPE}</code> - ID of the
payment type of bid specified in the <code
class="ph codeph">bid_payment_type</code> field of the bid
response</p></li>
</ul>
<div
id="incoming-bid-response-from-bidders__p-1a2e19f4-8375-4ba2-a835-f08fcb599a2e"
>
<div
id="incoming-bid-response-from-bidders__note-980c3a2b-4bd3-4b13-8cf0-5415677ce6dd"
class="note note_note">
<b>Note:</b> This macro is not enabled for all
clients. Please reach out to your account representative for this
feature.

<div
id="incoming-bid-response-from-bidders__note-cc46c35d-5171-445e-9fd9-b7037664b683"
class="note note_note">
<b>Note:</b> <em>Only</em> the macros in the
preceding list can be used in the notify URL, no other macros are
supported in the bid response.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">lurl</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3"><div
id="incoming-bid-response-from-bidders__p-ad5d448c-4393-4974-93c5-7b3aee8b4562"
>
<div
id="incoming-bid-response-from-bidders__note-578691c7-2ad1-45f9-8983-a726edc0b8c5"
class="note warning note_warning">
<b>Warning:</b> This feature is currently in
closed beta testing and is not available to all bidder integrations. If
you would like to use this field in the bid response, please reach out
to your account representative or file a support ticket at <a
href="https://help.xandr.com/" class="xref"
target="_blank">help.xandr.com</a>

Loss notice URL called by Xandr when a bid is known to have been lost.
Substitution macros may be included. Responses will be sent server side.

<p>The following macros are supported in the loss notice URL.</p>
<ul>
<li><ul>
<li><code class="ph codeph">${AUCTION_ID}</code> - Xandr <code
class="ph codeph">auction_id_64</code></li>
<li><code class="ph codeph">${AUCTION_BID_ID}</code> - ID of the bid
specified in the <code class="ph codeph">bidid</code> field in the bid
response</li>
<li><code class="ph codeph">${AUCTION_IMP_ID}</code> - ID of the
impression, from the <code class="ph codeph">impid</code> field in the
<code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_SEAT_ID}</code> - ID of the
winning seat, from the <code class="ph codeph">seat</code> field in the
<code class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_AD_ID}</code> - ID of the buyer's
creative, from the <code class="ph codeph">adid</code> field in the
<code class="ph codeph">bid</code> object of the <code
class="ph codeph">seatbid</code> object</li>
<li><code class="ph codeph">${AUCTION_LOSS}</code> - Loss reason
codes.</li>
<li><code class="ph codeph">${AUCTION_CURRENCY}</code> - Currency of the
clearing price, as specified in the <code class="ph codeph">cur</code>
field in the bid response</li>
<li><code class="ph codeph">${CREATIVE_CODE}</code> - The <code
class="ph codeph">code</code> field set on the creative object via the
API when registering a creative.</li>
</ul></li>
</ul>
<p>For the full list of loss reason codes that are supported in the
<code class="ph codeph">${AUCTION_LOSS}</code> macro, see <a
href="loss-reason-codes.md" class="xref">Loss Reason
Codes</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">crid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3">The
creative ID from the bidder's system. Used to reference a Xander
creative based on the creative code as set via the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> . If both <code
class="ph codeph">adid</code> and <code class="ph codeph">crid</code>
are passed, <code class="ph codeph">adid</code> takes precedence.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">cid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3">The
campaign ID from the bidder's system. Used for SSP reporting.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">dealid</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3">The
deal ID from the deal object in the <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Request</a>, if this bid relates to a
deal.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__1"><code
class="ph codeph">ext</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__2">object</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-872a6233-f3ea-48f8-b3c3-2f80dcb3b5ba__entry__3">Used
for identifying platform-specific extensions to the OpenRTB bid
response. See <a
href="incoming-bid-response-from-bidders.md#IncomingBidResponsefromBidders-BidResponseExtensionObject"
class="xref" target="_blank">Bid Response Extension Object</a>.</td>
</tr>
</tbody>
</table>



**Bid Response Extension Object**

>

Xandr supports a single object in the `ext` object to support
platform-specific extensions.

<table
id="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290__entry__1"><code
class="ph codeph">appnexus</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290__entry__2">object</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-874484fc-10aa-4cf6-b42a-c9b2a13ff290__entry__3">Specifies
the platform-specific extensions to the OpenRTB bid response. See <a
href="incoming-bid-response-from-bidders.md#IncomingBidResponsefromBidders-AppNexusObject"
class="xref" target="_blank">AppNexus Object</a>.</td>
</tr>
</tbody>
</table>



**AppNexus Object**

>

Xandr supports the following fields in the `appnexus` extension object.

<table
id="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
class="ph codeph">custom_macros</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">array
of objects</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3">Used
for identifying <code class="ph codeph">custom_macro</code> objects. See
<a
href="incoming-bid-response-from-bidders.md#IncomingBidResponsefromBidders-CustomMacroObject"
class="xref" target="_blank">Custom Macro Object</a>.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
class="ph codeph">min_price</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">float</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3">The
minimum price to which the bid should be reduced in the second price
auction.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
class="ph codeph">spend_protection_pixel_ids</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">array
of integers</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
class="ph codeph">custom_notify_data</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3"><div
id="incoming-bid-response-from-bidders__p-9990a089-30d8-44d5-bdb4-ee9dd68b50d5"
>
<div
id="incoming-bid-response-from-bidders__note-f68e90d0-7659-4e18-b236-70cd47af2d24"
class="note note_note">
<b>Note:</b> This feature is not enabled by
default. You must request to have this field enabled.


<p>Use this field to pass information to the <a
href="notify-request.md"
class="xref" target="_blank">Notify Request</a>. The string is entered
as freeform text and will be automatically URL- and/or cookie-encoded by
ImpBus.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
id="incoming-bid-response-from-bidders__codeblock-b41e9cf6-0a6b-4a09-a181-9a9f31f59c69"
class="ph codeph">click_url</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3">The
click URL to be associated with the creative. This field should contain
a redirect link. For example, <a href="https://mydomain.com/abcd?redir="
class="xref" target="_blank"><code
class="ph codeph">https://mydomain.com/abcd?redir=</code></a></td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
id="incoming-bid-response-from-bidders__codeblock-15b76f5b-3743-4afc-80fd-36c1e4704d43"
class="ph codeph">enable_bid_shading</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">integer</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3"><div
id="incoming-bid-response-from-bidders__note-6f09eb41-3fc7-4432-a9f1-61a3fcfaef29"
class="note note_note">
<b>Note:</b> This field is in the process of
being deprecated. It is set as <strong>false</strong> irrespective of
the value sent in the bid response.
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__1"><code
id="incoming-bid-response-from-bidders__codeblock-e902bad2-290e-4263-8a51-d6d6b72399ff"
class="ph codeph">bid_payment_type</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__2">array
of objects</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-4f3e57e3-fc94-45b6-82b3-b9f95b0d6558__entry__3"><div
id="incoming-bid-response-from-bidders__p-4afa6a4c-af5c-47fe-bb24-2f85e600fda1"
>
<div
id="incoming-bid-response-from-bidders__note-95da5581-9670-4361-b8d7-335e30c161b0"
class="note note_note">
<b>Note:</b> This feature is not enabled by
default. You must request to have this field enabled.

Specifies the payment type for which the Bidder is bidding and will be
billed. If omitted, then we will consider the payment type to be
'impression'.
</td>
</tr>
</tbody>
</table>



**Custom Macro Object**

>

Xandr supports the following fields in the `custom_macro` object of the
`appnexus` extension object.

<table
id="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__3"><div
id="incoming-bid-response-from-bidders__p-71c6d5f9-8e12-43bc-b193-41f35848b950"
>
The name of the macro to be replaced in any of the creative's URLs
(media, pixel, click, and so on). The name must be formatted as <code
class="ph codeph">${MACRO_NAME}</code> within the creative's URL or
content.
<div
id="incoming-bid-response-from-bidders__note-3f0267b3-e25c-4c79-9948-113e10dfe953"
class="note note_note">
<b>Note:</b> The custom macros are replaced
AFTER system macros have been replaced. Refer to the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for more information.

</td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__2">string</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-d6bbd168-8704-43e7-bc19-aa9081386aec__entry__3">The
value used to replace the macro. Do not escape forward slashes. Even if
the value is an integer, it must be placed within quotation marks (for
example, <code class="ph codeph">"42"</code>). The max length of the
value is 550 characters.</td>
</tr>
</tbody>
</table>



**Bid Payment Type Object**

>

Xandr supports the following fields in the `bid_payment_type` object of
the `appnexus` extension object.



<b>Note:</b> This feature is not enabled by
default. You must request to have this field enabled.

<table
id="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__1"><pre
id="incoming-bid-response-from-bidders__codeblock-996581ad-c2f8-45f6-92f7-1c40706d1917"
class="pre codeblock"><code>payment_type</code></pre></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__2">integer</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__3"><p>Specifies
the payment type for which the Bidder is bidding and will be billed. If
the payment type is not 'impression', then a billing notify url must be
set on the bid object. The currently supported values are -</p>
<ul>
<li>1: Impression</li>
<li>2: Views - Standard Display</li>
<li>6: Views - Custom Display - 100pv1s</li>
<li>8: Views - Standard Video</li>
<li>9: Views - Custom Video - 100pv50pd
<div
id="incoming-bid-response-from-bidders__note-5a5ce798-19e2-4771-8771-ae219c2af852"
class="note note_note">
<b>Note:</b> Currently, for "Viewable
Impression" bids, only USD bids are supported.
</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__1"><pre
id="incoming-bid-response-from-bidders__codeblock-0838daba-3ee3-444f-9048-fd3e6f2bf8aa"
class="pre codeblock"><code>price</code></pre></td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__2">double</td>
<td class="entry"
headers="incoming-bid-response-from-bidders__table-995088dd-705b-4ba5-947c-046a7db92fe3__entry__3">Specifies
the bid price for the payment type. For the 'Viewable Impression'
payment type, the bid price will be vCPM.</td>
</tr>
</tbody>
</table>





>

For more information, check the <a
href="guaranteed-outcomes.md"
class="xref" target="_blank">Overview</a> page



<b>Note:</b> Why we don't support the adm
field

Xandr works with members who care deeply about brand and reputation. For
this reason, we are careful to ensure that the advertisements
(creatives) that pass through our system are acceptable to all parties.
For quality assurance, all creatives that serve on third-party inventory
must be pre-registered using the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.

For these reasons, Xandr does not support the `adm` field (which allows
bidders to pass in the actual ad markup). Instead, we construct the ad
markup using the provided `adid` and `nurl` for win notification.





>

## **Example for Bid Response**

``` pre
{
    "id": "4876290993254515176",
    "seatbid": [{
        "bid": [{
                "id": "1",
                "impid": "8278013996604217356",
                "price": 1,
                "adid": "16",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}",
                "ext": {
                    "appnexus": {
                        "custom_macros": [{
                            "name": "dynamic_ad_markup",
                            "value": "dynamic.js"
                        }]
                    }
                }
            }

        ],
        "seat": "2739"
    }],
    "bidid": "1",
    "cur": "USD"
}
```



>

## **Example for Multi-Bid Response**

``` pre
Multi-bid response for one seat value
Option 1
{
    "id": "4876290993254515176",
    "seatbid": [{
        "bid": [{
                "id": "1",
                "impid": "8278013996604217356",
                "price": 1,
                "adid": "16",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            },
            {
                "id": "2",
                "impid": "8278013996604245835",
                "price": 1,
                "adid": "22",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            },
            {
                "id": "3",
                "impid": "2345613996604245835",
                "price": 1,
                "adid": "23",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            }
        ],
        "seat": "2739"
    }],
    "bidid": "1",
    "cur": "USD"
}
Option 2
{
    "id": "4876290993254515176",
    "seatbid": [{
        "bid": [{
                "id": "1",
                "impid": "8278013996604217356",
                "price": 1,
                "adid": "16",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            } 
        ],
        "seat": "2739"
    }],
    "seatbid": [{
        "bid": [ {
                "id": "2",
                "impid": "8278013996604245835",
                "price": 1,
                "adid": "22",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            }
        ],
        "seat": "2739"
    }],
    "seatbid": [{
       "bid": [ {
                "id": "3",
                "impid": "2345613996604245835",
                "price": 1,
                "adid": "23",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            }
        ],
        "seat": "2739"
    }],
    "bidid": "1",
    "cur": "USD"
}
Multi-bid response for multiple seat values
{
    "id": "4876290993254515176",
    "seatbid": [{
        "bid": [{
                "id": "1",
                "impid": "8278013996604217356",
                "price": 1,
                "adid": "16",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            }
 
        ],
        "seat": "2739"
    },
    {
        "bid": [{
                "id": "1",
                "impid": "8278013996604217356",
                "price": 1,
                "adid": "15",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            }
 
        ],
        "seat": "1234"
    },
    {
        "bid": [{
                "id": "1",
                "impid": "8278013996604217356",
                "price": 1,
                "adid": "22",
                "nurl": "https://68.67.148.76:10011/notify?TAFFYOpenRTBAuctionID=${AUCTION_ID}&price=${AUCTION_PRICE}"
            }
 
        ],
        "seat": "9876"
    }],
    "bidid": "1",
    "cur": "USD"
}
```



>

## **Win Notification**

>

For more information, see the definition of the `nurl` field above.



<b>Note:</b> In certain auction types, a lost
or pending notification may be generated prior to the win notification.
Win notifications are always authoritative and override any other
notifications previously received for that auction.





**Loss Notification**

>

If you opt for a loss notification, it will look something like this.
The loss notification information appears at the end of the response.

``` pre
{
    "notify_request": {
        "timestamp": "2016-03-17 06: 52: 40 ",
        "auction_timestamp": "2016 - 03 - 17 06: 52: 40 ",
        "user_id_64 ": 659854875312903738,
        "response_time_ms ": 40,
        "bid_info ": {
            "no_cookies": false,
            "payment_rule_id": 1772411,
            "no_flash": false,
            "browser": 7,
            "operating_system": 2,
            "operating_system_extended": 91,
            "operating_system_family": 5,
            "carrier": 1,
            "device_type": 1,
            "language": 1,
            "session_freq": 1,
            "pub_session_freq": 1,
            "country": "US",
            "within_iframe": false,
            "selling_member_id": 701,
            "publisher_id": 1483811,
            "user_id_64": 659214875312903738,
            "ip_address": "98.21.53.49",
            "user_agent": "Mozilla/5.0 (Windows NT 6.0; WOW64; rv: 44.0) Gecko / 20100101Firefox / 44.0 ",
            "region ": "PA ",
            "city ": "Ephrata",
            "postal_code ": "17522 ",
            "postal_code_id ": 12813,
            "dma ": 566,
            "time_zone ": "America / New_York ",
            "url ": "https: //www.example.com/",
            "domain": "example.com",
            "device_ids": {},
            "inventory_audits": [{
                "auditor_member_id": null,
                "intended_audience": "general",
                "inventory_attributes": [],
                "content_categories": [27, 8476]
            }],
            "userdata_json": "{\"uid\":\"5xb25EqcY3Hd9B\"}",
            "tpuids": [{
                "user_id": "5xc25EqcY3Hc9B"
            }],
            "segments": [{
                "id": 1,
                "member_id": 0,
                "code": "cookie_birthday",
                "provider": "Appnexus",
                "last_seen_min": 23767080
            }, {
                "id": 2087662,
                "member_id": 2636,
                "last_seen_min": 23959609
            }]
        },
        "tags": [{
            "id": 6123680,
            "auction_id_64": 4123382184097823951,
            "full_tag_info": {
                "auction_id_64": 4123382184097823951,
                "size": "300x250",
                "sizes": ["300x250"],
                "smaller_sizes_allowed": false,
                "position": "unknown",
                "tag_format": "iframe",
                "ad_profile_id": 114603,
                "visibility_profile_id": 625,
                "allowed_media_types": [1, 11],
                "media_subtypes": ["banner"],
                "predicted_view_rate": 0.1708,
                "estimated_clear_price": 9.00000,
                "estimated_average_price": 3.1630,
                "id": 6003680,
                "site_id": 1672260,
                "venue_id": 1299844
            },
            "payment_rule_id": 177245,
            "notify_type": "lost"
        }],
        "responses": [{
            "result": "error",
            "error": "Creative inactive, expired or not found by code;Member id: 1999,code: '537748'",
            "error_id ": 307
        }]
    }
}
```








