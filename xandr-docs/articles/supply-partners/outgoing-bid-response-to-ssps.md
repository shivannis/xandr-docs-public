---
Title : Outgoing Bid Response to SSPs
Description : lorem ipsum
---


# Outgoing Bid Response to SSPs





Note: This describes the
Xandr integration of the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB 2.4 protocol</a>.



Xandr will send a Bid Response after it receives
a <a
href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
class="xref" target="_blank">Bid Request</a> from an SSP. The Bid
Response will include the bidder's bid (`price`) and chosen creative
(`creative_id`). This creative will be served if the bid is ultimately
accepted by the ad server. Multiple bids within the Bid Response are
supported.



## Implementation

Xandr currently supports the following fields in
the bid response object:

**Bid Response Object**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__1"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__3">The
seller's auction ID. This is the same as the ID of the bid request to
which this is a response.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__1"><code
class="ph codeph">seatbid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__3">Used
for identifying <code class="ph codeph">seatbid</code> objects. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__seat_bid_object"
class="xref">Seat Bid Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__1"><code
class="ph codeph">bidid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__3">A
randomly-generated bid response ID to assist tracking.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__1"><code class="ph codeph">cur</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__3">The
bid currency using ISO-4217 alphabetic codes. If omitted, USD is
assumed.</td>
</tr>
</tbody>
</table>

**Seat Bid Object**

By default, Xandr will return a single `seatbid`
object in the bid response. Xandr can also
return multiple `seatbid` objects (multiple bids). Please contact your
account representative for more details.

Xandr supports the following fields in the
`seatbid` object:



Note:

We will not group bids by their seat ids. For example, if there are
three bids from the same seat, we will send three seatbid objects.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__16"><code class="ph codeph">bid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__18">An
array of bid objects; each bid object relates to an Impression Object in
the <a
href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
class="xref" target="_blank">Bid Request</a>. Note that one Impression
Object can have many bid objects. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__bid_object"
class="xref">Bid Object</a> for more information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__16"><code
class="ph codeph">seat</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__18">Either the <code
class="ph codeph">seat_id</code> passed in the bid request query string
(if one was provided) or the Xandr buyer <code
class="ph codeph">member_id</code>. </td>
</tr>
</tbody>
</table>

**Bid Object**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
unique ID for the bid object; this is chosen by <span
class="ph">Xandr for tracking and debugging purposes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">impid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
ID of the impression object to which this bid applies. Will match the
<code class="ph codeph">id</code> field from the bid request's <code
class="ph codeph">impression</code> object.   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
bid price expressed in CPM.

Note: Although this value is a float,
OpenRTB strongly suggests using integer math for accounting to avoid
rounding errors.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">adid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
Xandr creative ID, viewable via the API using
the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>. This ID references
the actual ad to be served if the bid wins.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">adm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
rendered creative markup to be delivered. Native creatives are returned
in this field as a JSON-encoded string. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__native_object"
class="xref">Native Object</a> below.

Note: SSPs can opt to have markup
delivered to the win notification (nurl) instead by <code
class="ph codeph">specifying</code> "markup_delivery": 1 in the bid
request.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">adomain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">array of strings</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">A
list of URLs associated with the brand of the creative in the bid.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">iurl</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">A
preview URL for the creative in the bid.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">cid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
Xandr buyer's member ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">crid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
Xandr creative ID, viewable via the API using
the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>. This ID references
the actual ad to be served if the bid wins.<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">cat</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">array of strings</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">IAB
content categories of the creative. Refer to section 5.1 of the IAB
specification for a list of content categories.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">attr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">Set
of attributes describing the creative. Refer to section 5.3 of the IAB
specification for a list of attributes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code
class="ph codeph">dealid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
seller's deal ID (Xandr deal code) from the deal
object in the <a
href="https://docs.xandr.com/bundle/supply-partners/page/outgoing-bid-response-to-ssps.html#OutgoingBidResponsetoSSPs-BidRequest"
class="xref" target="_blank">Bid Request</a>, if this bid relates to a
deal.
<p>If the deal does not have a Xandr deal code
then we will omit this field.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">h</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
height of the creative, in pixels.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">w</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__27">The
width of the creative, in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__25"><code class="ph codeph">ext</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__27">Used for identifying <span
class="ph">Xandr-specific extensions to the OpenRTB bid response.
See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__extension_object"
class="xref">Extension Object</a> below.</td>
</tr>
</tbody>
</table>

**Native Object**

Xandr supports the following fields to define a
native object to be included as a JSON-encoded string in the `adm` field
of the `bid` object. Refer to <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__native_creative_bid_response"
class="xref">Example Native Creative Bid Response</a> for an example of
formatting this string.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__73"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__74"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__75"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__73"><code class="ph codeph">ver</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__74">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__75">The
version of the Native Markup in use. This is only returned for Native
version 1.2 and later.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__73"><code
class="ph codeph">assets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__74">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__75">(Required) List of the native ad's
assets. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__asset_object"
class="xref">Asset Object</a> below.<br />
 </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__73"><code
class="ph codeph">link</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__74">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__75">(Required) The default destination link
for the native ad. Each individual asset can have its own link object,
which applies if that asset is clicked. If an individual asset link does
not have a link object, the parent link object is used. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__link_object"
class="xref">Link Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__73"><code
class="ph codeph">imptrackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__74">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__75">Array of impression-tracking URLs
expected to return a 1x1 image or HTTP 204 (No Content) response. This
is typically passed only when using third-party trackers.


Note: This field is only returned for
Native version 1.1.

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__73"><code
class="ph codeph">jstracker</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__74">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__75">Optional JavaScript impression tracker.
This is a valid HTML, Javascript is already wrapped in &lt;script&gt;
tags. It should be executed at impression time where it can be
supported.


Note: This field is only returned for
Native version 1.1.

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__73"><code
class="ph codeph">privacy</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__74">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__75">If
support was indicated in the request, URL of a page informing the user
about the buyer’s targeting activity.</td>
</tr>
</tbody>
</table>

**Asset Object**

Xandr supports the following fields to define
one or more native `asset` objects to be included as a JSON-encoded
string as part of the `native` object in the `adm` field of the `bid`
object. Refer to <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__native_creative_bid_response"
class="xref">Example Native Creative Bid Response</a> for an example of
formatting this string.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__94"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__95"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__96"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__96">(Required) The unique asset ID. Must
match an asset ID in the request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code
class="ph codeph">required</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__96">Set
to <code class="ph codeph">1</code> if bidder requires asset to be
displayed.<br />
 </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code
class="ph codeph">title</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__96">The
title object, for title assets. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__title_object"
class="xref">Title Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code class="ph codeph">img</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__96">The
image object, for image assets. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__image_object"
class="xref">Image Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code
class="ph codeph">video</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__96">The
video object, for video assets. Note that in-stream video ads are not
part of native objects. Native ads may be contain a video as the
creative itself. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__video_object"
class="xref">Video Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code
class="ph codeph">data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__96">The
data object, for data assets, such as ratings, prices, and so on. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__data_object"
class="xref">Data Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__94"><code
class="ph codeph">link</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__95">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__96">The
link object for individual assets, which applies if that asset is
clicked. If there is no link object for an asset, the parent link object
is used. See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__link_object"
class="xref">Link Object</a> below.</td>
</tr>
</tbody>
</table>

**Title Object**

Used to define a title asset in a native object.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__118"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__119"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__120"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__118"><code
class="ph codeph">text</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__119">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__120">(Required) The text for a title
element.</td>
</tr>
</tbody>
</table>

**Image Object**

Used to define a image asset in a native object. Used for all image
elements of the native ad, such as icons, main image, and so on.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__124"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__125"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__126"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__124"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__125">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__126">(Required) The URL of the image
asset.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__124"><code class="ph codeph">w</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__125">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__126">(Recommended) The width of the image,
in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__124"><code class="ph codeph">h</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__125">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__126">(Recommended) The height of the image,
in pixels.</td>
</tr>
</tbody>
</table>

**Data Object**

Used to define a data asset in a native object. Used for all
miscellaneous elements in a native ad, such as ratings, price, review
count, downloads, and so on.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__136"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__137"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__138"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__136"><code
class="ph codeph">label</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__137">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__138">An
optional formatting string name of the data type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__136"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__137">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__138">The formatted string of data to be
displayed (such as <code class="ph codeph">"5 stars"</code> or <code
class="ph codeph">"$10"</code>).</td>
</tr>
</tbody>
</table>

**Video Object**

Used to define a video asset. Contains the value of a conforming VAST
tag.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__145"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__146"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__147"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__145"><code
class="ph codeph">vasttag</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__146">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__147">(Required) The VAST XML for this
asset.</td>
</tr>
</tbody>
</table>

**Link Object**

Used to define the link for a native asset. When clicked, the user is
taken to the location of the link. Can be defined for individual assets
as well as for the parent native object, which is used as the default
for assets when no unique asset link is defined.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__151"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__152"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__153"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__151"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__152">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__153">(Required) The landing URL for the
clickable link.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__151"><code
class="ph codeph">clicktrackers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__152">Array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__153">Array of third-party tracking URLs to
be fired when the link is clicked.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__151"><code
class="ph codeph">fallback</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__152">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002657__entry__153">A
fallback URL to be used if the URL is not supported by the device.</td>
</tr>
</tbody>
</table>

**Event Trackers Response Object**

Xandr supports the following fields in the
`event trackers response` object (Native 1.2 only):

<table id="ID-00002657__table_dyy_gqw_rxb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__table_dyy_gqw_rxb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__table_dyy_gqw_rxb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__table_dyy_gqw_rxb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__1"><code
class="ph codeph">event</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__3">Type of event
available for tracking. Supported values are:

<ul>
<li><code class="ph codeph">1</code>: <code
class="ph codeph">impression</code> - Impression</li>
<li><code class="ph codeph">2</code>: <code
class="ph codeph">viewable-mrc50</code> - Viewable impression using MRC
definition at 50% in view for 1 second</li>
<li><code class="ph codeph">3</code>: <code
class="ph codeph">viewable-mrc100</code> - Viewable impression using MRC
definition at 100% in view for 1 second (ie GroupM standard)</li>
<li><code class="ph codeph">4</code>: <code
class="ph codeph">viewable-video50</code> - Viewable impression for
video using MRC definition at 50% in view for 2 seconds</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__1"><code
class="ph codeph">method</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__3">Type of tracking
requested for the given event.
<p>Supported values are:</p>
<ul>
<li><code class="ph codeph">1</code>: <code class="ph codeph">img</code>
- Img-pixel tracking - URL provided will be inserted as a 1x1 pixel at
the time of the event</li>
<li><code class="ph codeph">2</code>: <code class="ph codeph">js</code>
- Javascript-based tracking - URL provided will be inserted as a js tag
at the time of the event</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__table_dyy_gqw_rxb__entry__3">The URL of the <code
class="ph codeph">img</code> or <code class="ph codeph">js</code>.</td>
</tr>
</tbody>
</table>

**Extension Object**

Xandr supports a single object in the `ext`
object to support Xandr-specific extensions:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__175"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__176"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__177"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__175"><code
class="ph codeph">appnexus</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__176">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__177">Specifies the <span
class="ph">Xandr-specific extensions to the OpenRTB bid response.
See <a
href="outgoing-bid-response-to-ssps.html#ID-00002657__appnexus_object"
class="xref">AppNexus</a> Object below.</td>
</tr>
</tbody>
</table>

**AppNexus Object**

Xandr supports the following fields in the
`appnexus` extension object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002657__entry__181"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002657__entry__182"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002657__entry__183"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__181"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__182">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__183">Specifies the <span
class="ph">Xandr brand ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__181"><code
class="ph codeph">auction_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__182">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__183">Specifies the <span
class="ph">Xandr auction ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__181"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__182">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__183">Specifies the <span
class="ph">Xandr ID that corresponds to the winning bid's bidder
(sometimes referred to as a DSP).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__181"><code
class="ph codeph">ranking_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__182">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__183">Specifies the pCPM bid value for GDLI
bids.

Note: This field is only enabled for
specific clients. Please reach out to your account representative for
this feature.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__181"><code
class="ph codeph">exclusive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__182">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__183">Indicates whether the bid is exclusive
depending on the priority.
<ul>
<li>If 0, then bid is not exclusive</li>
<li>If 1, then bid is exclusive</li>
</ul>

Note: This field is only enabled for
specific clients. Please reach out to your account representative for
this feature.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__181"><code
class="ph codeph">bid_ad_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__182">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002657__entry__183">Specifies the ad type of the winning
bid. Possible values:
<ul>
<li>0: banner</li>
<li>1: video</li>
<li>2: audio</li>
<li>3: native</li>
</ul></td>
</tr>
</tbody>
</table>





## Examples

**Banner Creative Bid Response**

``` pre
 {
    "id": "rELYJA1ynf",
    "seatbid": [{
            "bid": [{
                "id": "1122797001398827907",
                "impid": "rELYJA1ynf",
                "price": 1.443626,
                "adid": "41112643",
                "adm": "<a href=\"https://nym1.ib.adnxs.com/click?rA8o_BZ9z-sDyj8Fxn3PwJAAAAAAAPA_rA8o_BcZ9z-sDy8Fxn3PxK8gLrAPTk9oPSfTXFhkVBk_7xWAAAAAPIYXwAMDQAADA0AAAIAAABDVHMCEM8NAAAAAQBVU0QAVVNEACwB-gA_WQAAiLABAQMAAQAJAKkAhCGkZgAAAAA./cnd=%21NQkicgj8x9UFEMOozRMYkJ43IAQoiobAmgE./referrer=ebay.com/clickenc=https%3A%2F%2Fwww.appnexus.com\" target=\"_blank\"><img width=\"300\" height=\"250\" style=\"border-style: none\" src=\"https://dummyimage.com/300x250/363534/FF8700&text=Banner%20Ad\"/></a><script>!function(){function e(e,t){return\"function\"==typeof __an_obj_extend_thunk?__an_obj_extend_thunk(e,t):e}function t(e,t){\"function\"==typeof __an_err_thunk&&__an_err_thunk(e,t)}function n(e){\"function\"==typeof __an_redirect_thunk?__an_redirect_thunk(e):document.write('<script language=\"javascript\" src=\"'+e+'\"></scr'+'ipt>')};var r=function(e){this.rdParams=e};r.prototype={constructor:r,walkAncestors:function(e){try{if(!window.location.ancestorOrigins)return;for(var t=0,n=window.location.ancestorOrigins.length;n>t;t++)e.call(null,window.location.ancestorOrigins[t],t)}catch(r){\"undefined\"!=typeof console}return[]},walkUpWindows:function(e){var t,n=[];do try{t=t?t.parent:window,e.call(null,t,n)}catch(r){return\"undefined\"!=typeof console,n.push({referrer:null,location:null,isTop:!1}),n}while(t!==window.top);return n},getPubUrlStack:function(e){var n,r=[],o=null,i=null,c=null,d=null,a=null,s=null,u=null;for(n=e.length-1;n>=0;n--){try{c=e[n].location}catch(l){\"undefined\"!=typeof console,t(l,\"AnRDModule::getPubUrlStack:: location\")}if(c)i=encodeURIComponent(c),r.push(i),u||(u=i);else if(0!==n){d=e[n-1];try{a=d.referrer,s=d.ancestor}catch(l){\"undefined\"!=typeof console,t(l,\"AnRDModule::getPubUrlStack:: prevFrame\")}a?(i=encodeURIComponent(a),r.push(i),u||(u=i)):s?(i=encodeURIComponent(s),r.push(i),u||(u=i)):r.push(o)}else r.push(o)}return{stack:r,detectUrl:u}},getLevels:function(){var e=this.walkUpWindows(function(e,n){try{n.push({referrer:e.document.referrer||null,location:e.location.href||null,isTop:e===window.top})}catch(r){n.push({referrer:null,location:null,isTop:e===window.top}),\"undefined\"!=typeof console,t(r,\"AnRDModule::getLevels\")}});return this.walkAncestors(function(t,n){e[n].ancestor=t}),e},getRefererInfo:function(){var e=\"\";try{var n=this.getLevels(),r=n.length-1,o=null!==n[r].location||r>0&&null!==n[r-1].referrer,i=this.getPubUrlStack(n);e=this.rdParams.rdRef+\"=\"+i.detectUrl+\"&\"+this.rdParams.rdTop+\"=\"+o+\"&\"+this.rdParams.rdIfs+\"=\"+r+\"&\"+this.rdParams.rdStk+\"=\"+i.stack+\"&\"+this.rdParams.rdQs}catch(c){e=\"\",\"undefined\"!=typeof console,t(c,\"AnRDModule::getRefererInfo\")}return e}};var o=function(n){var o=\"\";try{n=e(n,0);var i=e(new r(n),1);return i.getRefererInfo()}catch(c){o=\"\",\"undefined\"!=typeof console,t(c,\"AnRDModule::executeRD\")}return o};;var s=\"https://nym1.ib.adnxs.com/rd_log?e=wqT_3QKvBPBCJgIAAAIA1gAFCOT-87UFEJL4gtSLuM-cPRig6f_slK7YyFAgASotCawPKPwXGfc_EawPKPwXGfc_GQAAAAAAAPA_IRESACkRCagw8rH8AjiMGkCMGkgCUMOozRNYkJ43YABov7IBeIjhAoABAYoBA1VTRJIBAQbwUpgBrAKgAfoBqAEBsAEAuAEBwAEDyAEA0AEJ2AEA4AEB8AEAigI6dWYoJ2EnLCA3OTk1MTksIDE0NTUyMjY3MjQpO3VmKCdyJywgNDExMTI2NDMsMh4A8GaSAq0BIU1DdUNtQWo4eDlVRkVNT296Uk1ZQUNDUW5qY3dBRGdBUUFSSWpCcFE4ckg4QWxnQVlQX19fXzhQYUFCd0FYZ0JnQUVCaUFFQmtBRUJtQUVCb0FFQnFBRURzQUVBdVFFQUFBAQPIRHdQOEVCckE4b19CY1o5el9KQWM3QW9yNDNoZkFfMlFIdERiNHdtU3JtUC1BQkFQVUJBATdgSmdDaW9iQW1nR2dBZ0EumgIlIU5Ra2ljZzawABxrSjQzSUFRbwks8HRFLtgCnEPgAtvyJeoCCGViYXkuY29tgAMAiAMBkAMAmAMUoAMBqgMAsAMAuAMAwAOsAsgDANgDpg7gAwDoAwD4AwOABACSBAkvb3BlbnJ0YjKYBACiBA8yMDcuMjM3LjE1MC4yNDaoBACyBAYIABAAGAC4BAA.&s=f3c3b6704b20f2baa8e488269a5810b3cc0ae6f1&referrer=ebay.com\";s+=\"&\"+o({rdRef:\"bdref\",rdTop:\"bdtop\",rdIfs:\"bdifs\",rdStk:\"bstk\",rdQs:\"\"}),n(s)}();</script><script type=\"application/javascript\">;document.write('<div lnttag=\"v;tv=view5-1;d=300x250;s=1770882;samp=1;vc=iab;url=ebay.com;cb=' + encodeURIComponent('https://nym1.ib.adnxs.com/vevent?e=wqT_3QKvBPBCJgIAAAIA1gAFCOT-87UFEJL4gtSLuM-cPRig6f_slK7YyFAgASotCawPKPwXGfc_EawPKPwXGfc_GQAAAAAAAPA_IRESACkRCagw8rH8AjiMGkCMGkgCUMOozRNYkJ43YABov7IBeIjhAoABAYoBA1VTRJIBAQbwUpgBrAKgAfoBqAEBsAEAuAEBwAEDyAEA0AEJ2AEA4AEB8AEAigI6dWYoJ2EnLCA3OTk1MTksIDE0NTUyMjY3MjQpO3VmKCdyJywgNDExMTI2NDMsMh4A8GaSAq0BIU1DdUNtQWo4eDlVRkVNT296Uk1ZQUNDUW5qY3dBRGdBUUFSSWpCcFE4ckg4QWxnQVlQX19fXzhQYUFCd0FYZ0JnQUVCaUFFQmtBRUJtQUVCb0FFQnFBRURzQUVBdVFFQUFBAQPIRHdQOEVCckE4b19CY1o5el9KQWM3QW9yNDNoZkFfMlFIdERiNHdtU3JtUC1BQkFQVUJBATdgSmdDaW9iQW1nR2dBZ0EumgIlIU5Ra2ljZzawABxrSjQzSUFRbwks8HRFLtgCnEPgAtvyJeoCCGViYXkuY29tgAMAiAMBkAMAmAMUoAMBqgMAsAMAuAMAwAOsAsgDANgDpg7gAwDoAwD4AwOABACSBAkvb3BlbnJ0YjKYBACiBA8yMDcuMjM3LjE1MC4yNDaoBACyBAYIABAAGAC4BAA.&s=f3c3b6704b20f2baa8e488269a5810b3cc0ae6f1&referrer=ebay.com') + '\" style=\"display:none\"><\\/div><sc' + 'ript type=\"text/javascript\" async=\"true\" src=\"https://cdn.adnxs.com/v/s/33/trk.js\"><\\/scr' + 'ipt>');</script><img src=\"https://nym1.ib.adnxs.com/openrtb_win?e=wqT_3QKvBPBCJgIAAAIA1gAFCOT-87UFEJL4gtSLuM-cPRig6f_slK7YyFAgASotCawPKPwXGfc_EawPKPwXGfc_GQAAAAAAAPA_IRESACkRCagw8rH8AjiMGkCMGkgCUMOozRNYkJ43YABov7IBeIjhAoABAYoBA1VTRJIBAQbwUpgBrAKgAfoBqAEBsAEAuAEBwAEDyAEA0AEJ2AEA4AEB8AEAigI6dWYoJ2EnLCA3OTk1MTksIDE0NTUyMjY3MjQpO3VmKCdyJywgNDExMTI2NDMsMh4A8GaSAq0BIU1DdUNtQWo4eDlVRkVNT296Uk1ZQUNDUW5qY3dBRGdBUUFSSWpCcFE4ckg4QWxnQVlQX19fXzhQYUFCd0FYZ0JnQUVCaUFFQmtBRUJtQUVCb0FFQnFBRURzQUVBdVFFQUFBAQPIRHdQOEVCckE4b19CY1o5el9KQWM3QW9yNDNoZkFfMlFIdERiNHdtU3JtUC1BQkFQVUJBATdgSmdDaW9iQW1nR2dBZ0EumgIlIU5Ra2ljZzawABxrSjQzSUFRbwks8HRFLtgCnEPgAtvyJeoCCGViYXkuY29tgAMAiAMBkAMAmAMUoAMBqgMAsAMAuAMAwAOsAsgDANgDpg7gAwDoAwD4AwOABACSBAkvb3BlbnJ0YjKYBACiBA8yMDcuMjM3LjE1MC4yNDaoBACyBAYIABAAGAC4BAA.&s=f3c3b6704b20f2baa8e488269a5810b3cc0ae6f1&referrer=ebay.com&pp=${AUCTION_PRICE}\" width=\"1\" height=\"1\" border=\"0\">",
                "iurl": "https://nym1.ib.adnxs.com/cr?id=41112643",
                "cid": "3140",
                "crid": "41116499",
                "h": 250,
                "w": 300,
                "ext": {
                    "appnexus": {
                        "brand_id": 1,
                        "auction_id": 2211625207958125586
                    }
                }
            }],
            "seat": "3344"
        }
    ],
    "bidid": "2134167541719148457",
    "cur": "USD"
}
```

**VAST Creative Bid Response**

``` pre
 {
    "id": "993af0d9-4ecb-4ac7-ac99-6bac442d9774",
    "seatbid": [{
        "bid": [{
            "cid": "362",
            "iurl": "https://nym1-ib.adnxs.com/cr?id=115601913",
            "adomain": [
                "ca.com"
            ],
                        "adm": "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><VAST version=\"3.0\"><Ad id=\"115601913\"><Wrapper>...</Wrapper></Ad></VAST>",
            "adid": "115601913",
            "ext": {
                "appnexus": {
                    "brand_id": 29148,
                    "auction_id": 4072930007301496300,
                    "bidder_id": 2,
                    "bid_ad_type": 1,
                    "prebid_server_bid": false
                }
            },
            "w": 1,
            "h": 1,
            "cat": [
                "IAB19-9",
                "IAB19-11",
                "IAB19-12",
                "IAB10-6",
                "IAB19-29",
                "IAB19-28",
                "IAB19-5",
                "IAB19-17",
                "IAB19-10",
                "IAB19"
            ],
            "crid": "115601913",
            "id": "1255325421669335693",
            "impid": "1",
            "price": 1.743896
        }],
        "seat": "362"
    }],
    "bidid": "3718090108021111485",
    "cur": "USD"
}
```

**Native Creative Bid Response**

``` pre
{
        "bidid": "7056250063591570777",
        "cur": "USD",
        "id": "124476071019177977",
        "seatbid": [{
                "bid": [{
                        "adid": "49717777",
                        "adm": "{\"assets\":[{\"id\": 2,\"img\":{\"url\":\"https://cdn.adnxs.com/p/75/e7/9c/15/75e79c15d07b3548651ac638f7c87444.jpg\",\"w\": 800,\"h\": 800}},{\"id\": 1,\"title\":{\"text\":\"Still in search?\"}},{\"id\": 3,\"data\":{\"value\":\"Native\"}},{\"id\": 4,\"data\":{\"value\":\"Future is now!\"}}],\"link\":{\"url\":\"https://nym1-ib.adnxs.com/click?x8bGxsbGEkDsUbgehesPQOxRuB6F6w9AAAAAAAAAEUAAAAAAAAAUQHigAarFkkkWG3fXpZUyLXO3g0pZAAAAALiXsADtHwAAcgMAAAIAAADuofYClRgUAAAAAABVU0QAVVNEAAEAAQDzZQAAAAABAgUCAQAAALUAyCASkfAAAAA./pp=${AUCTION_PRICE}//cnd=%21XgmbpwjIyZoIEO7D2hcYlbFQIAAoADoJTllNMjoyOTQ5/bn=61950/test=1/referrer=https%3A%2F%2Fwww.example.com%2Fnl-nl%2F/clickenc=https%3A%2F%2Fwww.appnexus.com\"},\"imptrackers\":[\"https://nym1-ib.adnxs.com/openrtb_win?e=wqT_3QLlBfBM5QIAAAMA1gAFAQi3h6rKBRD4wIbQ2tjkpBYYm-7drtrSzJZzIAEqLQnHxsbGxsYSQBHsUbgehesPQBnsUbgehesPQCEAAAAAAAARQCkFCLAAFEAwuK_CBTjtP0DyBkgCUO7D2hdYlbFQYABo88tpeP7jA4ABAYoBA1VTRJIFBvBOmAEBoAEBqAEBsAEAuAECwAEFyAEC0AEJ2AEA4AEB8AEAigI5dWYoJ2EnLCA2MTA3MSwgMTQ5ODA1NTYwNyk7dWYoJ3InLCA0OTcxNzc0MjYeAPCHkgLtASFBQzVQaXdqSXlab0lFTzdEMmhjWUFDQ1ZzVkF3QURnQVFBQkk4Z1pRdUtfQ0JWZ0FZTE1EYUFCd0FIZ0FnQUVBaUFFQWtBRUJtQUVCb0FFQnFBRURzQUVBdVFIenJXcWtBQUFVUU1FQjg2MXFwQUFBRkVESkFRQUFBQUFBQVBBXzJRRQkMKEFEd1AtQUJBUFVCBREoSmdDQUtBQ0FMVUMFEARMMAkI8EZNQUNBTWdDQU9BQ0FPZ0NBUGdDQUlBREFaQURBSmdEQWFnRHlNbWFDTG9EQ1U1WlRUSTZNamswT0EuLpoCLSFYZ21icHdqSS7wAPD6bGJGUUlBQW9BRG9KVGxsTk1qb3lPVFE02AIA4AKO2z7qAh1odHRwOi8vd3d3LmV4YW1wbGUuY29tL25sLW5sL4ADAIgDAZADAJgDFKADAaoDAMADkBzIAwDYAwDgAwDoAwH4AwOABACSBAkvb3BlbnJ0YjKYBACiBAw3MS4yNDAuMTk5LjCoBOT8DbIECggAEAAYACAAMAC4BADABADIBADSBAlOWU0yOjI5NDjaBAIIAOAEAPAE7sPaF4gFAZgFBKAF____________AaoFEjEyNDQ3NjA3MTAxOTE3Nzk3OMAFAMkFAAAAAAAA8D_SCQkJAAAAAAAAAAA.&s=249717074fb86b5ca693d6607d76a0eb3477660e&referrer=https%3A%2F%2Fwww.example.com%2Fnl-nl%2F&pp=${AUCTION_PRICE}&\"]}",
                        "adomain": [
                                "appnexus.com"
                        ],
                        "cat": [
                                "IAB3-1"
                        ],
                        "cid": "882",
                        "crid": "49717777",
                        "ext": {
                                "appnexus": {
                                        "auction_id": 1605976119792738444,
                                        "bidder_id": 2,
                                        "brand_id": 86444
                                }
                        },
                        "id": "1633865541179659394",
                        "impid": "1",
                        "iurl": "https://nym1-ib.adnxs.com/cr?id=49717777",
                        "price": 3.99
                }],
                "seat": "882"
        }]
}
```






