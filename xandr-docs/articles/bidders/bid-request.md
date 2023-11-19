---
Title : Bid Request
Description : <b>Note:</b>
ms.date : 10/28/2023
- **Not Supported**: The AppNexus Bidding
Protocol is no longer supported; this documentation is for legacy
purposes only. **We will deprecate this protocol on December 1,
---


# Bid Request





<b>Note:</b>

- **Not Supported**: The AppNexus Bidding
  Protocol is no longer supported; this documentation is for legacy
  purposes only. **We will deprecate this protocol on December 1,
  2018.**

- If you're a new bidder integrating with
  AppNexus, please see the **<a
  href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
  class="xref" target="_blank">OpenRTB 2.4 Bidding Protocol</a>.**



A Bid Request is sent to bidders whenever an ad call reaches the
Impression Bus. It contains all the necessary information for a bidder
to produce a bid price and a creative to serve.

The Bid Request includes information from sellers that specifies which
advertisers and creatives are allowed to win an auction and run on a
page. This information is stored into an ad approval profile, which
bidders can use to make sure that their bids are accepted.



## Throttling Bid Requests

You may not wish to receive all bid requests that pass through the
AppNexus platform. You can either throttle
requests by some percentage, or filter requests by preset criteria such
as geography. 





## Multi-Tag Bid Requests

We sometimes send "multi-tag bid requests" where one Bid Request may
include multiple tag IDs with potentially different sizes, ad quality
standards, reserve prices, etc. For now, these requests should be
handled with individual responses for each tag as if they were
independent requests. However, in the near future, these multi-tag
requests will be the foundation for takeovers, full page buyouts, and
many other premium inventory features.

Each individual tag in a multi-tag request has a unique auction ID.





## Implementation

**Request Headers**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">X-Venue</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__4">This
header is not currently used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">X-DMA</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__4">Code
for the designated market area of the user based on IP address, if it
can be determined.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">X-Exclusive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__4">Indicates whether or not the auction is
exclusive by default. An exclusive auction is one in which only the
placement owner can serve an ad. The exclusive default may be overridden
by the owner during the owner phase of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">X-Debug</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__4">If
set to 1, the ad call included the <em>debug=1</em> flag, and no ad will
be served.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">X-Segment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__4">A
comma-separated list of segments that the user is in. Segments available
include those owned by your members and those owned by 3rd party data
providers (to whom AppNexus has granted your
bidder access).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code class="ph codeph">Host</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__4">IP
address to which the bid request has been sent.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">Connection</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__4">Always set to "keep-alive" to ensure
persistent TCP connections.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__1"><code
class="ph codeph">Content-Length</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__4">Length of the body of the HTTP request
(which includes all fields described below).</td>
</tr>
</tbody>
</table>

**Auction Info**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__37"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__38"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__39"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__40"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37 ID-00004dae__entry__38 ID-00004dae__entry__39 ID-00004dae__entry__40"><strong>General
data</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">member_ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
member-level ad approval profile ID that applies for the
impression.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40">Time the request was sent.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">bidder_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40">Number of milliseconds the bidder has
from the time the request is sent by the Imp Bus to the time the
response is received by the Imp Bus before timeout. This number will
vary according to the supply partner.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">bid_info</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40">Details about the user and the bid
request in general. See <a
href="bid-request.md#ID-00004dae__ID-00005221"
class="xref">Bid_Info</a> below for more information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">An
array of members that are eligible to bid on this call. A member is an
entity that has a financial buying or selling relationship with <span
class="ph">AppNexus and is associated with a bidder. Some bidders
may have multiple members; if you are building a bidder for your own
exclusive use, you will be the only member. The member object has the id
of the member. See <a href="bid-request.md#ID-00004dae__ID-00004f9f"
class="xref">Members</a> below for more information.<br />
&#10;
<b>Note:</b> This is not an array of numbers,
it is an array of objects. The exact syntax is given in the <a
href="bid-request.md#ID-00004dae__example_bid_request"
class="xref">example</a> below.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">tags</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">An
array of the tags that are being auctioned in this call. An auction will
have at least one, but may have several tags. See <a
href="bid-request.md#ID-00004dae__ID-00004fc3" class="xref">Tags</a>
below for more information.</td>
</tr>
<tr class="even row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37 ID-00004dae__entry__38 ID-00004dae__entry__39 ID-00004dae__entry__40"><strong>Owner-specific
data</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">allow_exclusive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">If
the bidding member owns the inventory (i.e. member_id of tag = member ID
of the bidder) then the member can serve into it without allowing other
bidders to participate.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><strong>Debug data</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">debug_requested</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">If
<em>true,</em> the ad call included the <em>debug=1</em> flag, and no ad
will be served. This will only be included in the bid request if the
correct dongle is used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">debug_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40">This field will contain the value of
the "debug_member" parameter, if the parameter is passed in the
querystring and the "dongle" parameter passed in the querystring matches
the member's dongle (set on the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>). Your bidder can use
the debug_member_id to produce debug output that is limited to a
particular member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">test</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">If
<em>true,</em> the ad tag is running as a test and no ad will be served.
If not present, test is false.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><strong>Other data</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">excluded_adservers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
IDs of adservers that are not eligible for the impression, as defined by
the seller's ad quality settings. You can use the <a
href="ad-server-service.md"
class="xref" target="_blank">Ad Server Service</a> to look up ad
servers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">excluded_brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
IDs of brands that are not eligible for the impression, as defined by
the seller's ad quality settings. You can use the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> to look up brands.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">excluded_languages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
IDs of languages that are not eligible for the impression, as defined by
the seller's ad quality settings. You can use the <a
href="language-service.md"
class="xref" target="_blank">Language Service</a> to look up
languages.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">excluded_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
IDs of categories that are not eligible for the impression, as defined
by the seller's ad quality settings. You can use the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a> to look up
categories.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">excluded_creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
IDs of creatives that are not eligible for the impression, as defined by
the seller's ad quality settings. You can use the <a
href="xandr-api/creative-service.md"
class="xref" target="_blank">Creative Service</a> to look up
creatives.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">excluded_technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">array of integers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__40">The
IDs of technical attributes that are not eligible for the impression, as
defined by the seller's ad quality settings. You can use the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a> to look up
technical attributes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__37"><code
class="ph codeph">single_phase</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__38">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__39">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__40">This field is not currently used for
bidders.</td>
</tr>
</tbody>
</table>

**Members**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__119"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__120"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__121"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__122"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__119"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__120">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__121">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__122">The member's id.</td>
</tr>
</tbody>
</table>

**Tags**

Information associated with the ad tag.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__127"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__128"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__129"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__130"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>Auction
data</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">auction_id_64</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The ID of the auction. This is useful
for reconciliation and discrepancies, so we recommend that you add it to
your logs. This is not guaranteed to be unique.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>Inventory
hierarchy data</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The ID of the TinyTag. A a tag is a
subset of inventory within a site. Bidders cannot lookup what tag the ID
corresponds to, but these IDs can be used as anonymous, optimizeable
chunks of inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The ID of the site. Sites are the
second-largest groupings of inventory for members that sell their
inventory through AppNexus. A site is a subset
of inventory for a publisher. Bidders cannot lookup what site the ID
corresponds to, but these IDs can be used as anonymous, optimizeable
chunks of inventory.</td>
</tr>
<tr class="even row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>General
data</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__130">A
size (widthxheight; e.g. 300x160) for this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Allowable creative sizes for this
impression, given in "widthxheight" format.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">position</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">enum("below","above","unknown")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Position of the ad on the page above
or below the fold; taken from the tag, if available.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">tag_format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">enum("iframe", "js", "wp7", "vast",
"json", "xml")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">For "iframe" tags, the impression bus
will return HTML to display the winning creative on the publisher's page
(if necessary, the HTML will contain an IFrame tag.) For "js" tags, the
impression bus will return javascript to be executed on the publisher's
page. (The javascript returned will typically contain document.write
commands to generate the HTML for displaying the creative.) This
distinction is only relevant to bidders in the case where a creative
will not display properly in one or more tag formats.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Valid media types. Use the <a
href="xandr-api/media-type-service.md"
class="xref" target="_blank">Media Type Service</a> for a list of
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Valid media subtype IDs. Use the <a
href="xandr-api/media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> for a list of
IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Valid media subtypes for a creative,
in string format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">inventory_audits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Seller self-classification data about
the content of the site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">venue_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">This field is not currently used for
bidders.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The tag-level ad approval profile ID
that applies for the impression for the particular tag.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">predicted_view_rate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The probability that the impression
will be viewable by the user, based on historical data.</td>
</tr>
<tr class="even row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>Pricing
data</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">reserve_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">When provided, this is the minimum bid
necessary to win the auction. If the bidding member owns the inventory
(allow_exclusive = true), this is ignored.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">estimated_clear_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The ECP is the estimated price needed
to win the inventory. The ECP is larger than 95% of all winning bids for
this tag submitted through AppNexus.

<b>Note:</b> Significant % of winning bids for
any tag may not be submitted through AppNexus

See <a
href="price-reduction-mechanics.md"
class="xref" target="_blank">Price Reduction Mechanics</a> for
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">estimated_average_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The EAP is similar to the ECP, except
that the EAP is larger than 70% of all winning bids for this tag
submitted through AppNexus.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">estimated_price_verified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">This field indicates whether the EAP
and ECP have been verified by data observed by <span
class="ph">AppNexus.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>Owner-specific
data</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">tag_data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">owned only</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__130">If
available, the other information associated with this TinyTag ID. The
TinyTag's owner may add this information to the TinyTag in advance of an
auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">exclusive_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">owned only</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Indicates whether or not the auction
is exclusive by default. An exclusive auction is one in which only the
placement owner can serve an ad. The exclusive default may be overridden
by the owner during the owner phase of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">default_creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">owned only</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">The default creative ID for this
TinyTag.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>Mobile-specific
fields</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">supply_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">Always sent for "mobile_app" (not sent
for "web")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">Distinguishes whether this inventory
is Web, Mobile Browser, or Mobile App. To determine if a web impression
is being viewed on a mobile device, use the operating system in the bid
request.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">creative_formats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">One or more of "text", "image",
"html-url", "js-url", "flash", "js-raw", "html-raw", "html-iframe",
"url-vast", "xml-url", "file-url", unknown"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">List of <span
class="ph">AppNexus creative formats that can be used to bid on
the impression. Other formats may be added to this list as they become
supported.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">creative_actions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">One or more of "click-to-web",
"click-to-call"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">List of allowable click actions of
creatives that can be used to bid on this impression. Today,
click-to-call is not available but will be available soon. Other actions
may be added to this list as they become supported.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">smaller_sizes_allowed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__130">True if creatives of a smaller size
and text creatives may also be used to bid for the impression.</td>
</tr>
<tr class="even row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127 ID-00004dae__entry__128 ID-00004dae__entry__129 ID-00004dae__entry__130"><strong>Deal
data</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__127"><code
class="ph codeph">deals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__128">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__129">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__130">An
array of deals that apply to the impression. See <a
href="bid-request.md#ID-00004dae__ID-000051b0" class="xref">Deals</a>
for more information.</td>
</tr>
</tbody>
</table>

**Deals**

Each object in the `deals` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__242"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__243"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__244"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243"> int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">The ID of the deal that applies to the
impression. You can use the <a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a> to view the
deal's details including deal name, description, start and end date, and
associated inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">The ID of the buyer member for whom
the deal was created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code
class="ph codeph">floor_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">The price the seller has set for the
deal. Use this amount plus any applicable fees as your minimum bid in
order to compete for this inventory. Note that bidding this amount plus
any applicable fees will help ensure that you are eligible for the deal
but will not guarantee that your bid wins.  
<p>This amount will always be in US dollars. Ask prices entered in
another currency will be converted to dollars.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code
class="ph codeph">ad_quality_override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">Specifies how the deal handles
creatives:<br />
&#10;<ul>
<li><code class="ph codeph">1</code>: Creatives use existing ad quality
settings. (Default)</li>
<li><code class="ph codeph">2</code>: Creatives in "pending" audit
status will serve. Once these creatives are audited, the existing ad
quality settings are used.</li>
<li><code class="ph codeph">3</code>: No ad profile restrictions will be
applied to this deal. (Maximum trust)</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243">array of integers.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">Specifies the IDs of the media types
that are allowed on this deal. Use the <a
href="xandr-api/media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view a list of
media types. If there are no unique media types for this deal as
compared to the main bid request object, this field will be an empty
array. This does NOT mean the deal does not allow any media types,
instead it just means that the media types on the main bid object should
be used when bidding on this deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243">array of integers.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">Specifies the IDs of the media
subtypes that are allowed on this deal. Use the <a
href="xandr-api/media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> to view a list of
media subtypes. If there are no unique media subtypes for this deal as
compared to the main bid request object, this field will be an empty
array. This does NOT mean the deal does not allow any media subtypes,
instead it just means that the media subtypes on the main bid object
should be used when bidding on this deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__242"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__243">array of strings.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__244">Allowable creative sizes for this
deal, given in "widthxheight" format. If there are no unique sizes for
this deal as compared to the main bid request object, this field will be
an empty array. This does NOT mean the deal does not allow any sizes,
instead it just means that the sizes on the main bid object should be
used when bidding on this deal.</td>
</tr>
</tbody>
</table>

**Bid_Info**

Information on the user and the overall bid request.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__266"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__267"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__268"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__269"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266 ID-00004dae__entry__267 ID-00004dae__entry__268 ID-00004dae__entry__269"><strong>user</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">user_id_64</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The unique 64-bit ID for the user. It
will be the same for all requests from this user until cookies are
cleared. <b>Note:</b> this value is only populated when the field
<strong>no_cookies</strong> is false.<br />
This field is 0 when AppNexus does not have a
match for this user or the user's browser doesn't accept cookies. It
will be -1 for opt-out users.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">user_agent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The "User-Agent" header from the
browser. (In other words the type of browser.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">operating_system</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the user's operating system.
You can use the <a
href="operating-system-service.md"
class="xref" target="_blank">Operating System Service</a> to map
operating system IDs to names.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">browser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the user's browser. You can
use the <a
href="browser-service.md"
class="xref" target="_blank">Browser Service</a> to map browser IDs to
names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">accepted_languages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The "Accept-Language" header from the
browser (using <a
href="http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes" class="xref"
target="_blank">ISO-639</a> language and <a
href="http://en.wikipedia.org/wiki/ISO_3166-1" class="xref"
target="_blank">ISO-3166</a> country codes).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">language</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the language as parsed from
the accepted_languages string. You can use the <a
href="language-service.md"
class="xref" target="_blank">Language Service</a> to map languages to
names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">no_flash</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">Informs the bidder if we have detected
that the user's browser does not have flash installed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">no_cookies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269"><ul>
<li>If the <strong>no_cookies</strong> field is set to
<strong>false</strong>
<ul>
<li>AppNexus is able to track the user via a
user id that is placed in a cookie in the user's browser .</li>
<li>The user id will be contained in the <code
class="ph codeph">user_id_64</code> field on the bid request.</li>
</ul></li>
<li>If the <strong>no_cookies</strong> field is set to
<strong>true</strong> AND the user_id_64 field is set to <code
class="ph codeph">0</code><br />
&#10;<ul>
<li>AppNexus is not able to track the user since
the user's browser does not accept cookies.</li>
<li>You should not bid for such an auction on behalf of campaigns that
require user data [e.g. frequency capping, recency capping].</li>
</ul></li>
<li>If the <strong>no_cookies</strong> field is set to
<strong>true</strong> AND the user_id_64 field is
<strong>nonzero</strong>
<ul>
<li>AppNexus is able to track the user via
cookies, and the user_id_64 field contains the user id.</li>
<li>However, a problem occurred while looking up user information in the
AppNexus server-side user data store.</li>
<li>As a result, the bid request will not include user data, nor can
AppNexus reliably update user data based on
commands sent in the bid response.</li>
<li>You should not bid for such an auction on behalf of campaigns that
require user data [e.g. frequency capping, recency capping</li>
</ul></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">"male" or "female" - This data may be
supplied by the publisher at auction time.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">This data may be supplied by the
publisher at auction time.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">array of objects.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__269">An
array of the segments the user is in. Segments available include those
owned by your members and those owned by 3rd party data providers (to
whom AppNexus has granted your bidder access).
Described in more detail below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">session_freq</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The number of impressions <span
class="ph">AppNexus has served this user for the duration of the
browsing session. For these purposes, a browsing session is defined as
the lifetime of the user's AppNexus cookie.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">pub_session_freq</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The number of impressions <span
class="ph">AppNexus has served this user, on this publisher, for
the duration of the browsing session. For these purposes, a browsing
session is defined as the lifetime of the user's <span
class="ph">AppNexus cookie.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266 ID-00004dae__entry__267 ID-00004dae__entry__268 ID-00004dae__entry__269"><strong>geographical
data</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">ip_address</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The IP address of the user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The country of the user based on IP
address, if it can be determined.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">region</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The region (state/province) of the
user based on IP address, if it can be determined.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">city</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The city of the user based on IP
address.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">postal_code_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the postal code of the user,
based on IP address.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">dma</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">Code for the designated market area of
the user based on IP address, if it can be determined.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">time_zone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The time zone of the user based on IP
address, if it can be determined.</td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266 ID-00004dae__entry__267 ID-00004dae__entry__268 ID-00004dae__entry__269"><strong>userdata
from server-side cookie store</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">userdata_json</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The userdata attached to the user's
cookie stored by the bidder receiving the request.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">total_clicks</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269"><strong>This field has been
deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><strong>Inventory (page)
information</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">selling_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the member selling the
inventory. See <a
href="platform-member-service.md"
class="xref" target="_blank">Platform Member Service</a> to find the
corresponding member names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The referral URL (contains the ad /
launches the ad request). This is always provided if available, unless
the publisher has chosen to restrict its use. A publisher may also opt
to configure a default referrer url in AppNexus
that will be passed on the bid request in the event that the referrer is
not available or the publisher has chosen to restrict its use. Contact
your AppNexus technical representative for more
information.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The domain of the referral URL.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">inventory_audits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">AppNexus audit
data about the content of the site. Audits on bid_info pertain to all
tags in the auction. This info often comes from a domain-level audit.
Described in more detail below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">within_iframe</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__269">If
the tag sits on the page with no enclosing iframes, this is 'true.' Note
that if AppNexus is unable to determine whether
the tag is wrapped, this will be 'false.'</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the publisher. Publishers
are used as the largest groupings of inventory for members that sell
their inventory through AppNexus. Bidders cannot
lookup what publisher the ID corresponds to, but these IDs can be used
as anonymous, optimizeable chunks of inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">is_secure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__269">If
the page is secure, this is true.

<b>Note:</b> All connections to secure
inventory must be secure. This includes pixels, creatives and<br />
3rd party calls. (i.e. for a creative:  <a
href="https://mysecure.content.com/ad/ABC.123.com/DEF.40;sz=300x250"
class="xref"
target="_blank">https://mysecure.content.com/ad/ABC.123.com/DEF.40;sz=300x250)
\\</a>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">certified_supply</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266 ID-00004dae__entry__267 ID-00004dae__entry__268 ID-00004dae__entry__269"><strong>Mobile-specific
fields</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">app_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">Global App Id for Android and iOS
devices (For example, for Angry Birds app: "app_id":
"com.rovio.angrybirds" for an Android device, "app_id" : "343200656"
or "com.clickgamer.AngryBirds" for an iOS device).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">loc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">Location of the user, provided in
terms of latitude and longitude. Expressed in the format
"snnn.ddd,snnn.ddd", for example +123.456 or -456.123. South and west
are represented as negative. There can be a maximum of 5 decimal places
of precision.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">carrier</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">Identifier for the carrier. A mapping
of IDs to carrier names and countries will be available from the carrier
read-only service. A special carrier "WIFI" will exist for users
connecting via WiFi.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">device_make</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the device make on which the
ad will be shown. You can use this to manufacturer of the device on
which the ad will be shown. For more information see the <a
href="xandr-api/device-make-service.md"
class="xref" target="_blank">Device Make Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">device_model</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the device model on which
the ad will be shown. For more information, see the <a
href="xandr-api/device-model-service.md"
class="xref" target="_blank">Device Model Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">device_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__269">The ID of the type of device on which
the ad will be shown. This is represented by an integer, and can be
looked up using the <a
href="xandr-api/device-model-service.md"
class="xref" target="_blank">Device Model Service</a>. Allowed values,
and their meanings:
<ul>
<li><code class="ph codeph">1</code> = "pc"</li>
<li><code class="ph codeph">2</code> = "phone"</li>
<li><code class="ph codeph">3</code> = "tablet"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__266"><code
class="ph codeph">device_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__267">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__268">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__269">A
JSON object containing information about the device IDs associated with
the impression up for bid. For more information, see <a
href="bid-request.md#ID-00004dae__ID-000054b6" class="xref">Device
IDs</a>.</td>
</tr>
</tbody>
</table>

**Device IDs**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__426"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__427"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__428"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__429"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__426"><code
class="ph codeph">idfa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__427">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__428">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__429">The Apple advertising identifier for
iOS devices running iOS 6+.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__426"><code
class="ph codeph">aaid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__427">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__428">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__429">The Google advertising identifier for
Android devices as retrieved from Google Play services.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__426"><code
class="ph codeph">sha1udid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__427">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__428">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__429">The SHA1 hash of the <code
class="ph codeph">ANDROID_ID</code>. This should only be sent for
Android devices. It should be URL encoded.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__426"><code
class="ph codeph">md5udid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__427">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__428">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__429">The MD5 hash of the <code
class="ph codeph">ANDROID_ID</code>. This should only be sent for
Android devices. It should be URL encoded.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__426"><code
class="ph codeph">sha1mac</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__427">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__428">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__429"><a
href="http://code.google.com/p/odinmobile/" class="xref"
target="_blank">ODIN</a>. This should only be sent for iOS versions 5
and below. This should be URL encoded</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__426"><code
class="ph codeph">openudid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__427">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__428">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__429">The <a
href="https://github.com/ylechelle/OpenUDID" class="xref"
target="_blank">OpenUDID</a> of the device. This should only be sent for
iOS versions 5 and below.</td>
</tr>
</tbody>
</table>

**Segments**

An array of the segments the user is in. Segments available include
those owned by your members and those owned by 3rd party data providers
(to whom AppNexus has granted your bidder
access).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__454"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__455"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__456"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__457"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__454"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__455">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__456">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__457">Segment ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__454"><code
class="ph codeph">member_id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__455">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__456">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__457">ID
of the member associated with this Segment. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__454"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__455">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__456">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__457">See <a
href="xandr-api/third-party-pixel-service.md"
class="xref" target="_blank">Pixel Services</a> for details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__454"><code
class="ph codeph">last_seen_min</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__455">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__456">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__457">The number of minutes since this user
was last tagged with this segment. Given in Posix time (represented in
minutes). Multiply this value by 60 to get the number of seconds since
the epoch when this segment was updated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__454"><code
class="ph codeph">other</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__455">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__456">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__457">The value of the segment, if the
segment contains a value.</td>
</tr>
</tbody>
</table>

**Inventory Audits**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004dae__entry__478"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004dae__entry__479"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004dae__entry__480"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004dae__entry__481"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__478"><code
class="ph codeph">auditor_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__479">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__480">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004dae__entry__481">ID
of the member who provided this audit. If this field is null, the audit
was performed by the  Platform Operations
team.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__478"><code
class="ph codeph">intended_audience</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__479">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__480">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__481">general, children, young_adult, or
mature. Indicates the target maturity level of readers of this
website.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__478"><code
class="ph codeph">inventory_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__479">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__480">array of integers.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__481">IDs of sensitive attributes of the
site that some advertisers may opt not to run on. To get the meaningful
names of specific attributes or for the full list, see <a
href="inventory-attribute-service.md"
class="xref" target="_blank">Inventory Attribute Service</a>. The
presence of an empty array in this field indicates that the site has
been audited and found to have <strong>no</strong> sensitive
attributes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__478"><code
class="ph codeph">content_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__479">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__480">array of integers.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004dae__entry__481">IDs of content categories of the site.
To get the meaningful names of specific content categories or for the
full list, see <a
href="content-category-service.md"
class="xref" target="_blank">Content Category Service</a>.

<b>Note:</b> You may see ids in this list that
are not visible to you in the content-category service.
</td>
</tr>
</tbody>
</table>




## Example

**Single Tag Request**

``` pre
{
    "bid_request": {
        "timestamp": "2015-06-07 14:39:35",
        "bidder_timeout_ms": 100,
        "members": [
            {
                "id": 6
            },
            {
                "id": 12
            }
        ],
        "allow_exclusive": false,
        "debug_requested": false,
        "tags": [
            {
                "id": 13,
                "sizes": [
                    "728x90"
                ],
                "position": "unknown",
                "inventory_source_id": 476,
                "auction_id_64": 8984480746668973000,
                "tag_format": "iframe",
                "reserve_price": 1,
                "ad_profile_id": 382,
                "predicted_view_rate": 0.654321,
                "inventory_audits": [
                    {
                        "auditor_member_id": 3,
                        "inventory_attributes": [
                            1431,
                            1432,
                            1887
                        ],
                        "content_categories": [
                            171
                        ]
                    }
                ]
            }
        ],
        "bid_info": {
            "user_id_64": 2987961585469200400,
            "no_flash": false,
            "no_cookies": false,
            "ip_address": "96.246.152.18",
            "inventory_audits": [
                {
                    "auditor_member_id": null,
                    "intended_audience": "young_adult",
                    "inventory_attributes": [
                        2,
                        3,
                        6,
                        7
                    ],
                    "content_categories": [
                        39
                    ]
                }
            ],
            "user_agent": "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US;rv:1.9.0.3) Gecko/2008092414 Firefox/3.0.3",
            "accepted_languages": "en-US,en;q=0.8",
            "country": "US",
            "region": "NY",
            "city": "New York",
            "postal_code_id": "10014",
            "dma": 501,
            "time_zone": "America/New_York",
            "url": "https://www.foodandwine.com/recipes/",
            "domain": "foodandwine.com",
            "selling_member_id": 3,
            "inventory_source_id": 123,
            "inventory_class": "class_2",
            "within_iframe": false,
            "total_clicks": 0,
            "segments": [
                {
                    "id": 103,
                    "member_id": 6,
                    "code": "PotentialCarBuyer",
                    "last_seen_min": 21108407
                }
            ]
        }
    }
}
```

**Multi Tag Request** 

``` pre
{
    "bid_request": {
        "timestamp": "2015-09-17 20:32:00",
        "bidder_timeout_ms": 200,
        "members": [
            {
                "id": 1513
            }
        ],
        "member_ad_profile_id": 11138,
        "tags": [
            {
                "auction_id_64": 1704399148337927200,
                "size": "120x600",
                "sizes": [
                    "120x600"
                ],
                "smaller_sizes_allowed": false,
                "position": "unknown",
                "tag_format": "js",
                "site_id": 188164,
                "creative_formats_map": "1111111110",
                "creative_formats": [
                    "unknown",
                    "html-url",
                    "js-url",
                    "flash",
                    "image",
                    "js-raw",
                    "html-raw",
                    "html-iframe",
                    "url-vast"
                ],
                "ad_profile_id": 201859,
                "ad_profiles": [
                    201859
                ],
                "visibility_profile_id": 132,
                "venue_id": 12043,
                "predicted_view_rate": 0.675,
                "allowed_media_types": [
                    1
                ],
                "allowed_media_subtypes": [],
                "ecp": 1.43206,
                "eap": 0.5,
                "id": 624139,
                "inventory_audits": [
                    {
                        "auditor_member_id": null,
                        "intended_audience": "general",
                        "inventory_attributes": [],
                        "content_categories": []
                    }
                ]
            },
            {
                "auction_id_64": 3898100382999990000,
                "size": "5x6",
                "sizes": [
                    "5x6"
                ],
                "smaller_sizes_allowed": false,
                "position": "unknown",
                "tag_format": "js",
                "site_id": 188164,
                "creative_formats_map": "1111111110",
                "creative_formats": [
                    "unknown",
                    "html-url",
                    "js-url",
                    "flash",
                    "image",
                    "js-raw",
                    "html-raw",
                    "html-iframe",
                    "url-vast"
                ],
                "ad_profile_id": 201859,
                "ad_profiles": [
                    201859
                ],
                "visibility_profile_id": 132,
                "venue_id": 12043,
                "predicted_view_rate": 0.7131,
                "allowed_media_types": [
                    1
                ],
                "allowed_media_subtypes": [],
                "ecp": 2.07576,
                "eap": 0.5,
                "id": 624139,
                "inventory_audits": [
                    {
                        "auditor_member_id": null,
                        "intended_audience": "general",
                        "inventory_attributes": [
                            14
                        ],
                        "content_categories": []
                    }
                ]
            }
        ],
        "bid_info": {
            "user_id_64": 488125638053592500,
            "no_cookies": false,
            "payment_rule_id": 91411,
            "selling_member_id": 681,
            "no_flash": false,
            "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1",
            "browser": 8,
            "operating_system": 11,
            "language": 1,
            "accepted_languages": "en-US,en;q=0.8",
            "session_freq": 75,
            "pub_session_freq": 15,
            "ip_address": "207.27.32.2",
            "country": "US",
            "region": "NY",
            "city": "New York",
            "dma": 501,
            "time_zone": "America/New_York",
            "inventory_class": "unaudited",
            "within_iframe": false,
            "publisher_id": 89400,
            "url": "https://www.foodandwine.com/recipes/",
            "domain": "www.foodandwine.com",
            "inventory_audits": [
                {
                    "auditor_member_id": null,
                    "inventory_attributes": [],
                    "content_categories": []
                }
            ],
            "userdata_json": "{}",
            "segments": []
        }
    }
    }
```

**Mobile Request (debugging mode)**

``` pre
{
    "bid_request": {
        "timestamp": "2015-08-23 14:27:08",
        "bidder_timeout_ms": 2000,
        "members": [
            {
                "id": 307
            },
            {
                "id": 308
            }
        ],
        "single_phase": true,
        "member_ad_profile_id": 8610,
        "tags": [
            {
                "auction_id_64": 5638094169507807000,
                "size": "728x90",
                "sizes": [
                    "728x90"
                ],
                "smaller_sizes_allowed": true,
                "position": "unknown",
                "tag_format": "wp7",
                "site_id": 173564,
                "supply_type": "mobile_app",
                "creative_formats_map": "0000100001",
                "creative_formats": [
                    "image",
                    "text"
                ],
                "visibility_profile_id": 129,
                "venue_id": 663,
                "predicted_view_rate": 0.6891,
                "inventory_source_id": 926,
                "allowed_media_subtypes": [
                    1
                ],
                "estimated_clear_price": 1.24481,
                "estimated_average_price": 0.167,
                "estimated_price_verified": true,
                "id": 583751
            }
        ],
        "bid_info": {
            "user_id_64": 5725700387444723000,
            "no_cookies": false,
            "payment_rule_id": 84497,
            "selling_member_id": 618,
            "no_flash": true,
            "user_agent": "Mozilla%2f5.0+(compatible%3b+MSIE+9.0%3b+Windows+NT+6.1%3b+Trident%2f5.0)",
            "operating_system": 13,
            "language": 1,
            "accepted_languages": "en-us,en;q=0.5",
            "app_id": "2ac11907-8e3b-4b9b-b803-2ac834fa559a",
            "ip_address": "131.107.0.83",
            "country": "US",
            "postal_code_id": "10016",
            "loc": "38.7875232696533,-77.2614831924438",
            "inventory_class": "class_1",
            "within_iframe": false,
            "publisher_id": 81242,
            "gender": "male",
            "age": 27,
            "userdata_json": "{\"frequency\":[[\"r\",101,1,1,1,1303349386],[\"r\",102,1,1,1,1303349386]],\"last_imp_time\":1303349386,\"version\":4,\"pixel\":[],\"impserved\":45}",
            "segments": []
        }
    }
}
```

**Expandable Request**

``` pre
{
    "bid_request": {
        "timestamp": "2015-04-20 20:00:14",
        "bidder_timeout_ms": 2000,
        "members": [
            {
                "id": 123
            }
        ],
        "test": true,
        "member_ad_profile_id": 11138,
        "tags": [
            {
                "auction_id_64": "7310650419817444682",
                "size": "300x250",
                "sizes": [
                    "300x250"
                ],
                "smaller_sizes_allowed": false,
                "position": "unknown",
                "tag_format": "js",
                "site_id": 188163,
                "creative_formats_map": "1111111111",
                "creative_formats": [
                    "unknown",
                    "html-url",
                    "js-url",
                    "flash",
                    "image",
                    "js-raw",
                    "html-raw",
                    "html-iframe",
                    "url-vast",
                    "text"
                ],
                "ad_profile_id": 201859,
                "predicted_view_rate": 0.675,
                "visibility_profile_id": 132,
                "venue_id": 12043,
                "allowed_media_types": [
                    6
                ],
                "allowed_media_subtypes": [
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    24
                ],
                "estimated_clear_price": 1,
                "estimated_average_price": 0.5
            }
        ],
        "bid_info": {
            "user_id_64": 7994340253645703000,
            "no_cookies": false,
            "payment_rule_id": 91411,
            "selling_member_id": 681,
            "no_flash": false,
            "is_secure": false,
            "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.163 Safari/535.19",
            "browser": 8,
            "operating_system": 11,
            "language": 1,
            "accepted_languages": "en-US,en;q=0.8",
            "session_freq": 1,
            "pub_session_freq": 1,
            "ip_address": "68.67.167.12",
            "country": "US",
            "region": "NY",
            "city": "New York",
            "postal_code_id": "10003",
            "dma": 501,
            "time_zone": "America/New_York",
            "inventory_class": "unaudited",
            "within_iframe": false,
            "url": "https://www.foodandwine.com/recipes/",
            "domain": "foodandwine.com",
            "inventory_audits": [
                {
                    "auditor_member_id": null,
                    "inventory_attributes": []
                }
            ],
            "userdata_json": "{}",
            "segments": []
        }
    }
}
```

**Deal-Related Request**

``` pre
{
    "bid_request": {
        "timestamp": "2015-04-18 17:00:57",
        "bidder_timeout_ms": 2000,
        "members": [
            {
                "id": 1417
            }
        ],
        "test": true,
        "member_ad_profile_id": 555216,
        "excluded_technical_attributes": [
            2033
        ],
        "tags": [
            {
                "auction_id_64": 5555508250840351000,
                "size": "300x250",
                "sizes": [
                    "300x250"
                ],
                "smaller_sizes_allowed": false,
                "position": "unknown",
                "tag_format": "iframe",
                "site_id": 555526,
                "creative_formats_map": "111111111011",
                "creative_formats": [
                    "unknown",
                    "html-url",
                    "js-url",
                    "flash",
                    "image",
                    "js-raw",
                    "html-raw",
                    "html-iframe",
                    "url-vast",
                    "unknown",
                    "unknown"
                ],
                "ad_profile_id": 555180,
                "visibility_profile_id": 5553,
                "venue_id": 407258,
                "predicted_view_rate": 0.675,
                "pop_max_width": 300,
                "pop_max_height": 250,
                "pop_is_prepop": false,
                "allowed_media_types": [
                    1
                ],
                "media_subtypes": [
                    "banner"
                ],
                "estimated_clear_price": 0.913,
                "estimated_average_price": 0.456,
                "id": 5555354,
                "deals": [
                    {
                        "id": 555664,
                        "member_id": 5555,
                        "floor_cpm": 0.5,
                        "ad_quality_override": 2,
                        "allowed_media_types": [
                            1,
                            5
                        ],
                        "allowed_media_subtypes": [
                            10,
                            11,
                            23,
                            50
                        ],
                        "sizes": [
                            "300x250",
                            "300x600"
                        ]
                    }
                ]
            }
        ],
        "bid_info": {
            "user_id_64": 5555037017052493000,
            "no_cookies": false,
            "payment_rule_id": 555018,
            "selling_member_id": 55578,
            "no_flash": false,
            "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36",
            "browser": 8,
            "operating_system": 11,
            "operating_system_extended": 81,
            "operating_system_family": 4,
            "carrier": 1,
            "device_type": 1,
            "language": 1,
            "accepted_languages": "en-US",
            "session_freq": 1,
            "pub_session_freq": 1,
            "ip_address": "555.1.12.54",
            "country": "US",
            "inventory_class": "unaudited",
            "within_iframe": false,
            "device_ids": {
                "sha1udid": "d55555c2314f3789198685914c01425034b5d502",
                "md5udid": "caf55557c5b39fb4ad68dabc9808bda1"
            },
            "publisher_id": 555547,
            "userdata_json": "{}",
            "segments": [
                {
                    "id": 1,
                    "member_id": 0,
                    "code": "cookie_birthday",
                    "provider": "",
                    "last_seen_min": 23274134
                }
            ]
        }
    }
}
```






