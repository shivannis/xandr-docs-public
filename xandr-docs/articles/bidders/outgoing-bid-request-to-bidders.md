---
Title : Outgoing Bid Request to Bidders
<b>Note:</b> This describes the integration of
the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
ms.date : 10/28/2023
---


# Outgoing Bid Request to Bidders







<b>Note:</b> This describes the integration of
the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB 2.4 protocol</a>.



This bid request is sent to bidders whenever an ad call reaches the
impression bus. It contains all the necessary information for a bidder
to produce a bid price and a creative to serve.





The bid request includes information from sellers that specifies which
advertisers and creatives are allowed to win an auction and run on a
page. 



<b>Note:</b> You may not wish to receive all
bid requests that pass through our platform. You can either throttle
requests by some percentage, or filter requests by preset criteria such
as geography.





**Implementation**

**Bid Request Headers**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__1" class="entry">Field</th>
<th id="ID-0000000c__entry__2" class="entry">Type</th>
<th id="ID-0000000c__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__1"><code
class="ph codeph">Content-Length</code></td>
<td class="entry" headers="ID-0000000c__entry__2">int</td>
<td class="entry" headers="ID-0000000c__entry__3">Length of the body of
the HTTP request (which includes all fields described below).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__1"><code
class="ph codeph">Host</code></td>
<td class="entry" headers="ID-0000000c__entry__2">string</td>
<td class="entry" headers="ID-0000000c__entry__3">IP address to which
the bid request has been sent.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__1"><code
class="ph codeph">Connection</code></td>
<td class="entry" headers="ID-0000000c__entry__2">string</td>
<td class="entry" headers="ID-0000000c__entry__3">Always set to
"keep-alive" to ensure persistent TCP connections.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__1"><code
class="ph codeph">Content-Type</code></td>
<td class="entry" headers="ID-0000000c__entry__2">string</td>
<td class="entry" headers="ID-0000000c__entry__3">The type of content
passed in the request. Always set to "application/json".</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__1"><code
class="ph codeph">x-openrtb-version</code></td>
<td class="entry" headers="ID-0000000c__entry__2">string</td>
<td class="entry" headers="ID-0000000c__entry__3">The openrtb version
supported in the bid request. Currently set to 2.4.</td>
</tr>
</tbody>
</table>

  
**Bid Request Object**

Xandr supports the following fields in the
top-level bid request object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__19" class="entry">Field</th>
<th id="ID-0000000c__entry__20" class="entry">Type</th>
<th id="ID-0000000c__entry__21" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__20">string</td>
<td class="entry" headers="ID-0000000c__entry__21">(Required) The unique
identifier of the bid request.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">imp</code></td>
<td class="entry" headers="ID-0000000c__entry__20">array of objects</td>
<td class="entry" headers="ID-0000000c__entry__21">(Required) The
impressions offered in this bid request. See <a
href="#ID-0000000c__ID-000002dd" class="xref">Impression Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">site</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies information
about the website or subset of inventory (placement group) for the
impressions. Applicable for website impressions. See <a
href="#ID-0000000c__ID-00000a60" class="xref">Site Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">app</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies information
about the app for the impressions. Applicable for app impressions. See
<a href="#ID-0000000c__ID-00000ae8" class="xref">App Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">device</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies information
about the user's device to which these impressions will be delivered.
See <a href="#ID-0000000c__ID-00000ce0" class="xref">Device Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">user</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies information
about the person to whom the impressions will be delivered. See <a
href="#ID-0000000c__ID-00000ee6" class="xref">User Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">test</code></td>
<td class="entry" headers="ID-0000000c__entry__20">integer</td>
<td class="entry" headers="ID-0000000c__entry__21">Indicates that this
auction is in test mode and is not billable. If not present, default is
used.
<ul>
<li><code class="ph codeph">0</code>: live mode; billable (default)</li>
<li><code class="ph codeph">1</code>: test mode; not billable</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">at</code></td>
<td class="entry" headers="ID-0000000c__entry__20">integer</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies the auction
type. If not present, default is used.
<ul>
<li><code class="ph codeph">1</code>: first price</li>
<li><code class="ph codeph">2</code>: second price plus one cent
(default)<br />
</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">wseat</code></td>
<td class="entry" headers="ID-0000000c__entry__20">array of strings</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies an array
representing a allowlist of buyer seats allowed to bid on this
impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">tmax</code></td>
<td class="entry" headers="ID-0000000c__entry__20">integer</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies the maximum
time (in milliseconds) to submit a bid before timing out.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">cur</code></td>
<td class="entry" headers="ID-0000000c__entry__20">array of strings</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies an array of
allowed currencies for bids on this bid request using ISO-4217
alphabetic codes. Defaults to <code class="ph codeph">USD</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">bcat</code></td>
<td class="entry" headers="ID-0000000c__entry__20">array of strings</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies a list of
blocked content categories. Will include IAB categories (listed in
section 5.1 of the specification). Bcat is not a required field and will
only be sent if there are blocked categories associated with the bid
request. If no blocked categories are associated, then we will not send
this field.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">badv</code></td>
<td class="entry" headers="ID-0000000c__entry__20">array of strings</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies a list of
blocked top-level advertiser domains that correspond to brand URLs in
our system. For example, <code
class="ph codeph">["company1.com","company2.com"]</code>. For more
information, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>. A max of 64 values will
be sent.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">regs</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Specifies information
about an industry, legal, or governmental regulation in force for this
request. See <a href="#ID-0000000c__ID-00001031" class="xref">Regs
Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">source</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Provides data about
the inventory source and which entity makes the final decision. See <a
href="#ID-0000000c__ID-0000116c" class="xref">Source Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__19"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__20">object</td>
<td class="entry" headers="ID-0000000c__entry__21">Used for identifying
platform-specific extensions to the OpenRTB bid request. See <a
href="#ID-0000000c__ID-000001df" class="xref">Bid Request Extension
Object</a> below.</td>
</tr>
</tbody>
</table>

**Bid Request Extension Object**

We support the follow objects in the `ext` object to support
platform-specific extensions as well as supplychain signals:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__70" class="entry">Field</th>
<th id="ID-0000000c__entry__71" class="entry">Type</th>
<th id="ID-0000000c__entry__72" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__70"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-0000000c__entry__71">object</td>
<td class="entry" headers="ID-0000000c__entry__72">Specifies the
platform-specific extensions to the OpenRTB bid request.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__70"><code
class="ph codeph">schain</code></td>
<td class="entry" headers="ID-0000000c__entry__71">object</td>
<td class="entry" headers="ID-0000000c__entry__72">Specifies the
SupplyChain fields included in the OpenRTB bid request for supply path
transparency. See <a href="#ID-0000000c__ID-0000020a"
class="xref">Schain Object</a> below.</td>
</tr>
</tbody>
</table>

**Schain Object**

We support the following fields in the `schain` (Supply Chain) object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__79" class="entry">Field</th>
<th id="ID-0000000c__entry__80" class="entry">Type</th>
<th id="ID-0000000c__entry__81" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__79"><code
class="ph codeph">ver</code></td>
<td class="entry" headers="ID-0000000c__entry__80">string</td>
<td class="entry" headers="ID-0000000c__entry__81">Version of the supply
chain specification in use, in the format of “major.minor”. Currently
using version 1.0 of the spec.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__79"><code
class="ph codeph">complete</code></td>
<td class="entry" headers="ID-0000000c__entry__80">enum</td>
<td class="entry" headers="ID-0000000c__entry__81">Flag indicating
whether the chain contains all nodes involved in the transaction leading
back to the owner of the site, app or other medium of the inventory,
where 0 = no, 1 = yes.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__79"><code
class="ph codeph">nodes</code></td>
<td class="entry" headers="ID-0000000c__entry__80">object</td>
<td class="entry" headers="ID-0000000c__entry__81">Array of
SupplyChainNode objects in the order of the chain. In a complete supply
chain, the first node represents the initial advertising system and
seller ID involved in the transaction, i.e. the owner of the site, app,
or other medium. In an incomplete supply chain, it represents the first
known node. The last node represents the entity sending this bid
request, which will be the Xandr node.
<p>We support the following fields in the nodes object:</p>
<ul>
<li><strong>asi</strong> (string): The canonical domain name of the SSP,
Exchange, Header Wrapper, etc system that bidders connect to. This
should be the same value as used to identify sellers in an ads.txt file
if one exists. For the Xandr node that domain
will be appnexus.com</li>
<li><strong>sid</strong> (string): The identifier associated with the
seller or reseller account within the advertising system.</li>
<li><strong>rid</strong> (string): The OpenRTB RequestId of the request
as issued by the seller.</li>
<li><strong>hp</strong> (integer): Indicates whether this node will be
involved in the flow of payment for the inventory. For version 1.0 of
SupplyChain, this property should always be 1</li>
</ul></td>
</tr>
</tbody>
</table>

**Bid Request Object**

We support the following fields in the
`appnexus` extension object for the bid request
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__91" class="entry">Field</th>
<th id="ID-0000000c__entry__92" class="entry">Type</th>
<th id="ID-0000000c__entry__93" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__91"><code
class="ph codeph">seller_member_id</code></td>
<td class="entry" headers="ID-0000000c__entry__92">integer</td>
<td class="entry" headers="ID-0000000c__entry__93">Specifies the ID of
the member selling the inventory. See <a
href="platform-member-service.md"
class="xref" target="_blank">Platform Member Service</a> to find the
corresponding member names.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__91"><code
class="ph codeph">spend_protection</code></td>
<td class="entry" headers="ID-0000000c__entry__92">Boolean</td>
<td class="entry" headers="ID-0000000c__entry__93">Deprecated (October
2018).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__91"><code
class="ph codeph">publisher_integration</code></td>
<td class="entry" headers="ID-0000000c__entry__92">object</td>
<td class="entry" headers="ID-0000000c__entry__93">Provides details
about the publisher integration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__91"><code
class="ph codeph">ext_inv_code</code></td>
<td class="entry" headers="ID-0000000c__entry__92">integer</td>
<td class="entry" headers="ID-0000000c__entry__93">A predefined value
passed on the query string that can be used in reporting. The value must
be entered into the system before it is logged. For more information,
see <a
href="xandr-api/external-inventory-code-service.md"
class="xref" target="_blank">External Inventory Code Service</a>.
<p>Example: <code class="ph codeph">ext_inv_code=10039</code></p></td>
</tr>
</tbody>
</table>

**Publisher Integration Object**

We support the following fields in the publisher_integration object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__106" class="entry">Field</th>
<th id="ID-0000000c__entry__107" class="entry">Type</th>
<th id="ID-0000000c__entry__108" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__106"><code
class="ph codeph">is_header</code></td>
<td class="entry" headers="ID-0000000c__entry__107">boolean</td>
<td class="entry" headers="ID-0000000c__entry__108"><ul>
<li><code class="ph codeph">0</code>: This is not a header bidding
integration.</li>
<li><code class="ph codeph">1</code>: Integration into a wrapper.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__106"><code
class="ph codeph">bid_shading_high</code></td>
<td class="entry" headers="ID-0000000c__entry__107">double</td>
<td class="entry" headers="ID-0000000c__entry__108">Deprecated (October
2018).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__106"><code
class="ph codeph">bid_shading_medium</code></td>
<td class="entry" headers="ID-0000000c__entry__107">double</td>
<td class="entry" headers="ID-0000000c__entry__108">Deprecated (October
2018).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__106"><code
class="ph codeph">bid_shading_low</code></td>
<td class="entry" headers="ID-0000000c__entry__107">double</td>
<td class="entry" headers="ID-0000000c__entry__108">Deprecated (October
2018).</td>
</tr>
</tbody>
</table>

**Impression Object**

We support the following fields in the `imp` object, which describe the
impression being auctioned. A single bid request may contain an array
with multiple `imp` objects.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__121" class="entry">Field</th>
<th id="ID-0000000c__entry__122" class="entry">Type</th>
<th id="ID-0000000c__entry__123" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__122">string</td>
<td class="entry" headers="ID-0000000c__entry__123">(Required) Specifies
a unique identifier for this impression within the context of the bid
request. Set to the value of <code
class="ph codeph">auction_id_64</code>. </td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">banner</code></td>
<td class="entry" headers="ID-0000000c__entry__122">object</td>
<td class="entry" headers="ID-0000000c__entry__123">Required if this
impression is offered as a banner ad. See <a
href="#ID-0000000c__ID-0000038d" class="xref">Banner Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">video</code></td>
<td class="entry" headers="ID-0000000c__entry__122">object</td>
<td class="entry" headers="ID-0000000c__entry__123">Required if this
impression is offered as a video ad. See <a
href="#ID-0000000c__ID-0000043c" class="xref">Video Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">audio</code></td>
<td class="entry" headers="ID-0000000c__entry__122">object</td>
<td class="entry" headers="ID-0000000c__entry__123">Required if this
impression is offered as an audio ad. See <a
href="#ID-0000000c__ID-00000595" class="xref">Audio Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">native</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__122">object</td>
<td class="entry" headers="ID-0000000c__entry__123">Required if this
impression is offered as a native ad. See <a
href="#ID-0000000c__ID-0000062b" class="xref">Native Object</a>
below</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">instl</code></td>
<td class="entry" headers="ID-0000000c__entry__122">integer</td>
<td class="entry" headers="ID-0000000c__entry__123">Indicates whether
the impression is interstitial or full screen. We only support "0" at
this time.
<ul>
<li><code class="ph codeph">0</code>: the impression is not interstitial
or full screen</li>
<li>1: the impression is interstitial or full screen</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">tagid</code></td>
<td class="entry" headers="ID-0000000c__entry__122">string</td>
<td class="entry" headers="ID-0000000c__entry__123">Specifies an
identifier for the specific ad placement or ad tag that was used to
initiate the auction. This is our platform's placement ID. Omitted if
seller visibility settings prohibit sharing.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">bidfloor</code></td>
<td class="entry" headers="ID-0000000c__entry__122">float</td>
<td class="entry" headers="ID-0000000c__entry__123">Minimum bid for this
impression expressed in CPM.
<p>Xandr sends the publisher's gross open market
floor price in the <code class="ph codeph">bidfloor</code> field in
outgoing bid requests to DSPs downstream. (This includes relevant <span
class="ph">Xandr seller and buyer fees). This is applicable when
the <code class="ph codeph">bidfloor</code> is set on the publisher's
incoming ad request and/or when a publisher's placement reserve price is
set.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">bidfloorcur</code></td>
<td class="entry" headers="ID-0000000c__entry__122">string</td>
<td class="entry" headers="ID-0000000c__entry__123">Currency specified
using ISO-4217 alpha codes. This may be different from bid currency
returned by bidder if this is allowed by the exchange.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">secure</code></td>
<td class="entry" headers="ID-0000000c__entry__122">integer</td>
<td class="entry" headers="ID-0000000c__entry__123">Indicates whether
the impression requires secure HTTPS URL creative assets and markup. If
omitted, the secure state is unknown but non-secure HTTP support can be
assumed.
<ul>
<li><code class="ph codeph">0</code>: the impression is not secure</li>
<li><code class="ph codeph">1</code> the impression is secure</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">pmp</code></td>
<td class="entry" headers="ID-0000000c__entry__122">object</td>
<td class="entry" headers="ID-0000000c__entry__123">Specifies
information about a private marketplace deal that is in effect for this
impression. See <a href="#ID-0000000c__ID-00000857" class="xref">Private
Marketplace Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__121"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__122">object</td>
<td class="entry" headers="ID-0000000c__entry__123">Used for identifying
platform-specific extensions to OpenRTB for the impression object. See
<a href="#ID-0000000c__ID-0000098d" class="xref">Impression Extension
Object</a> below.</td>
</tr>
</tbody>
</table>

**Banner Object**

For banner impressions, we support the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__160" class="entry">Field</th>
<th id="ID-0000000c__entry__161" class="entry">Type</th>
<th id="ID-0000000c__entry__162" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">w</code></td>
<td class="entry" headers="ID-0000000c__entry__161">integer</td>
<td class="entry" headers="ID-0000000c__entry__162">(Recommended)
Specifies the exact width of the banner in pixels.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">h</code></td>
<td class="entry" headers="ID-0000000c__entry__161">integer</td>
<td class="entry" headers="ID-0000000c__entry__162">(Recommended)
Specifies the exact height of the banner in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__161">string</td>
<td class="entry" headers="ID-0000000c__entry__162">Specifies a unique
identifier for the banner object. Useful for tracking multiple banner
objects (such as with a companion banner array). Typically, the first
banner in the array is <code class="ph codeph">1</code> and subsequent
objects increment from there. Currently hardcoded to <code
class="ph codeph">1</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">btype</code></td>
<td class="entry" headers="ID-0000000c__entry__161">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__162">Specifies the banner
creative types to block. Refer to section 5.2 of the IAB specification
for a list of types.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">battr</code></td>
<td class="entry" headers="ID-0000000c__entry__161">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__162">Specifies the banner
creative attributes to block. Refer to section 5.3 of the IAB
specification for a list of attributes.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">pos</code></td>
<td class="entry" headers="ID-0000000c__entry__161">integer</td>
<td class="entry" headers="ID-0000000c__entry__162">Specifies the
position of the banner on the screen.
<ul>
<li><code class="ph codeph">0</code>: Unknown (default)</li>
<li><code class="ph codeph">1</code>: Above the fold</li>
<li><code class="ph codeph">3</code>: Below the fold</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">api</code></td>
<td class="entry" headers="ID-0000000c__entry__161">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__162">Specifies the
supported API frameworks for this impression. If an API is not
explicitly listed, it is assumed not to be supported. Refer to section
5.6 of the IAB specification for a list of API frameworks.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">format</code></td>
<td class="entry" headers="ID-0000000c__entry__161">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__162">The <code
class="ph codeph">format</code> objects that represent the banner sizes
permitted. See <a href="#ID-0000000c__ID-0000040f" class="xref">Format
Object</a> below. Note that the banner sizes called out in the format
object are not representative of allowed sizes via deals.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__160"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__161">object</td>
<td class="entry" headers="ID-0000000c__entry__162">Not supported.</td>
</tr>
</tbody>
</table>

**Format Object**

We support the following field in the `format` object of the `banner`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__190" class="entry">Field</th>
<th id="ID-0000000c__entry__191" class="entry">Type</th>
<th id="ID-0000000c__entry__192" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__190"><code
class="ph codeph">w</code></td>
<td class="entry" headers="ID-0000000c__entry__191">integer</td>
<td class="entry" headers="ID-0000000c__entry__192"> Specifies the width
of the creative, in pixels.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__190"><code
class="ph codeph">h</code></td>
<td class="entry" headers="ID-0000000c__entry__191">integer</td>
<td class="entry" headers="ID-0000000c__entry__192"> Specifies the
height of the creative, in pixels.</td>
</tr>
</tbody>
</table>

**Video Object**

For video impressions, We support the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__199" class="entry">Field</th>
<th id="ID-0000000c__entry__200" class="entry">Type</th>
<th id="ID-0000000c__entry__201" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">mimes</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__200">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__201">(Required) Specifies
the video content MIME types supported; for example, <code
class="ph codeph">video/x-ms-wmv</code> and <code
class="ph codeph">video/x-flv.</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">minduration</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">(Recommended)
Specifies the minimum video ad duration, in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">maxduration</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">(Recommended)
Specifies the maximum video ad duration, in seconds.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">w</code></td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">(Recommended)
Specifies the width of the video player, in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">h</code></td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">(Recommended)
Specifies the height of the video player, in pixels.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">startdelay</code></td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">(Recommended)
Specifies the start delay of the video ad:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">battr</code></td>
<td class="entry" headers="ID-0000000c__entry__200">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__201">Specifies the video
creative attributes to block. Refer to section 5.3 of the IAB
specification for a list of attributes.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">minbitrate</code></td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">The minimum bit
rate, in kilobytes per second.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">maxbitrate</code></td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">The maximum bit
rate, in kilobytes per second.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">playbackmethod</code></td>
<td class="entry" headers="ID-0000000c__entry__200">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__201">Specifies the
allowed playback methods. If not specified, all are assumed to be
allowed. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: Autoplay, sound on</li>
<li><code class="ph codeph">2</code>: Autoplay, sound off</li>
<li><code class="ph codeph">3</code>: Click to play</li>
<li><code class="ph codeph">4</code>: Mouse over to play</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">api</code></td>
<td class="entry" headers="ID-0000000c__entry__200">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__201">Specifies the
supported API frameworks for this impression. If an API is not
explicitly listed, it is assumed not to be supported. Currently
supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
<li>6: MRAID-3</li>
<li>7: OMID-1</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">protocols</code></td>
<td class="entry" headers="ID-0000000c__entry__200">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__201">Array of supported
video protocols. Currently supported values are:
<ul>
<li>1: VAST 1.0</li>
<li>2: VAST 2.0</li>
<li>3: VAST 3.0</li>
<li>4: VAST 1.0 Wrapper</li>
<li>5: VAST 2.0 Wrapper</li>
<li>6: VAST 3.0 Wrapper</li>
<li>7: VAST 4.0</li>
<li>8: DAAST 1.0</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">placement</code></td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">Placement type for
the impression. Possible options:
<ul>
<li>1: In-Stream</li>
<li>2: In-banner</li>
<li>3: In-article</li>
<li>4: In-feed</li>
<li>5: Interstitial/Slider/Floating</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__199">linearity</td>
<td class="entry" headers="ID-0000000c__entry__200">integer</td>
<td class="entry" headers="ID-0000000c__entry__201">Indicates if the
impression must be linear, nonlinear, etc. If none specified, assume all
are allowed.
<ul>
<li>1: Linear / In-Stream</li>
<li>2: Non-Linear / Overlay</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__199"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__200">object</td>
<td class="entry" headers="ID-0000000c__entry__201">Used for identifying
platform-specific extensions to OpenRTB for the video object. See <a
href="#ID-0000000c__ID-00000542" class="xref">Video Extension Object</a>
below.</td>
</tr>
</tbody>
</table>

**Video Extension Object**

We support a single object in the `ext` object to support
Xandr-specific extensions to the `video` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__247" class="entry">Field</th>
<th id="ID-0000000c__entry__248" class="entry">Type</th>
<th id="ID-0000000c__entry__249" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__247"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-0000000c__entry__248">object</td>
<td class="entry" headers="ID-0000000c__entry__249">Specifies the
platform-specific extensions to the video object.</td>
</tr>
</tbody>
</table>

Video AppNexus Object

We support the following fields in the
`appnexus` extension object of the `video`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__253" class="entry">Field</th>
<th id="ID-0000000c__entry__254" class="entry">Type</th>
<th id="ID-0000000c__entry__255" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__253"><code
class="ph codeph">context</code></td>
<td class="entry" headers="ID-0000000c__entry__254">integer</td>
<td class="entry" headers="ID-0000000c__entry__255">   Specifies the
video context:
<ul>
<li><code class="ph codeph">0</code>: Unknown</li>
<li><code class="ph codeph">1</code>: Pre-roll</li>
<li><code class="ph codeph">2</code>:  Mid-roll</li>
<li><code class="ph codeph">3</code>:  Post-roll</li>
<li><code class="ph codeph">4</code>: Outstream</li>
<li>5: BannerStream</li>
</ul></td>
</tr>
</tbody>
</table>

**Audio Object**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__259" class="entry">Field</th>
<th id="ID-0000000c__entry__260" class="entry">Type</th>
<th id="ID-0000000c__entry__261" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">mimes</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__260">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__261">(Required) Specifies
the audio content MIME types supported; for example, <code
class="ph codeph">audio/vnd.wav</code>, <code
class="ph codeph">audio/mpeg</code>, <code
class="ph codeph">audio/mp4</code>, <code
class="ph codeph">audio/ogg</code>, or <code
class="ph codeph">audio/mp2</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">minduration</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__260">integer</td>
<td class="entry" headers="ID-0000000c__entry__261">(Recommended)
Specifies the minimum audio ad duration, in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">maxduration</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__260">integer</td>
<td class="entry" headers="ID-0000000c__entry__261">(Recommended)
Specifies the maximum audio ad duration, in seconds.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">startdelay</code></td>
<td class="entry" headers="ID-0000000c__entry__260">integer</td>
<td class="entry" headers="ID-0000000c__entry__261">(Recommended)
Specifies the start delay of the audio ad:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before audio start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll (delay
unknown)</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">battr</code></td>
<td class="entry" headers="ID-0000000c__entry__260">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__261">Specifies the audio
creative attributes to block. We support:
<ul>
<li><code class="ph codeph">11</code>: Surveys</li>
<li><code class="ph codeph">16</code>: Ad Provides Skip Button</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">minbitrate</code></td>
<td class="entry" headers="ID-0000000c__entry__260">integer</td>
<td class="entry" headers="ID-0000000c__entry__261">The minimum bit
rate, in kilobytes per second.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">maxbitrate</code></td>
<td class="entry" headers="ID-0000000c__entry__260">integer</td>
<td class="entry" headers="ID-0000000c__entry__261">The maximum bit
rate, in kilobytes per second.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__259"><code
class="ph codeph">api</code></td>
<td class="entry" headers="ID-0000000c__entry__260">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__261">Specifies the
supported API frameworks for this impression. If an API is not
explicitly listed, it is assumed not to be supported. Currently
supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
<li>6: MRAID-3</li>
<li>7: OMID-1</li>
</ul></td>
</tr>
</tbody>
</table>

**Native Object**

For native impressions, we support the following field, which contains
the creative markup:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__286" class="entry"> Field</th>
<th id="ID-0000000c__entry__287" class="entry">Type</th>
<th id="ID-0000000c__entry__288" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__286"><code
class="ph codeph">request</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__287">string</td>
<td class="entry" headers="ID-0000000c__entry__288">The rendered
creative markup to be delivered; native creatives can be returned in
this field as a JSON-encoded string. The first value in the string must
be <code class="ph codeph">native</code>. See <a
href="outgoing-bid-request-to-bidders.md#OutgoingBidRequesttoBidders-RequestObject"
class="xref" target="_blank">Request Object</a> below and <a
href="outgoing-bid-request-to-bidders.md#OutgoingBidRequesttoBidders-ExampleBidRequests"
class="xref" target="_blank">Example Bid Requests</a> for examples of
native bid requests.</td>
</tr>
</tbody>
</table>

**Request Object**

For native impressions, the `request` object contains the creative
object in the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__292" class="entry">Field</th>
<th id="ID-0000000c__entry__293" class="entry">Type</th>
<th id="ID-0000000c__entry__294" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__292"><code
class="ph codeph">ver</code></td>
<td class="entry" headers="ID-0000000c__entry__293">string</td>
<td class="entry" headers="ID-0000000c__entry__294">(Recommended)
Specifies the version of the native ad specification currently in use.
Currently versions <strong>1.1</strong> and <strong>1.2</strong> are
supported.<br />
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__292"><code
class="ph codeph">plcmtcnt</code></td>
<td class="entry" headers="ID-0000000c__entry__293">integer</td>
<td class="entry" headers="ID-0000000c__entry__294">Specifies the number
of identical placements available on the bid request. Usually <code
class="ph codeph">1</code>, but can be a different integer if the bid
request is for a feed with multiple placements within it.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__292"><code
class="ph codeph">plcmttype</code></td>
<td class="entry" headers="ID-0000000c__entry__293">integer</td>
<td class="entry" headers="ID-0000000c__entry__294">The
design/format/layout of the ad unit being offered. <span
class="ph">Xandr will send either value:
<ul>
<li>1: In the feed of content</li>
<li>4: Recommendation widget</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__292"><code
class="ph codeph">privacy</code></td>
<td class="entry" headers="ID-0000000c__entry__293">boolean</td>
<td class="entry" headers="ID-0000000c__entry__294">Flag to indicate if
the seller supports a buyer-specific privacy notice.
<ul>
<li>0 or absent: The native ad doesn't support custom privacy links</li>
<li>1: The native ad supports buyer-specific privacy notice</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__292"><code
class="ph codeph">assets</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__293">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__294">Specifies a list of
assets that are expected to be returned on the bid response. See <a
href="#ID-0000000c__ID-000006a3" class="xref">Assets Object</a>
below.</td>
</tr>
</tbody>
</table>

**Assets Object**

We support the following fields in the `assets` object in the `native`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__310" class="entry">Field</th>
<th id="ID-0000000c__entry__311" class="entry">Type</th>
<th id="ID-0000000c__entry__312" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__310"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__311">integer</td>
<td class="entry" headers="ID-0000000c__entry__312">Specifies a unique
identifier for the asset in this bid request. Typically, the first asset
in the array is <code class="ph codeph">1</code> and subsequent assets
increment from there.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__310"><code
class="ph codeph">required</code></td>
<td class="entry" headers="ID-0000000c__entry__311">integer</td>
<td class="entry" headers="ID-0000000c__entry__312">Specifies if the
asset is required:
<ul>
<li><code class="ph codeph">0</code>: Asset is optional</li>
<li><code class="ph codeph">1</code>: Asset is required</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__310"><code
class="ph codeph">title</code></td>
<td class="entry" headers="ID-0000000c__entry__311">object</td>
<td class="entry" headers="ID-0000000c__entry__312">Specifies
information about the title of the asset. See <a
href="#ID-0000000c__ID-00000703" class="xref">Title Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__310"><code
class="ph codeph">img</code></td>
<td class="entry" headers="ID-0000000c__entry__311">object</td>
<td class="entry" headers="ID-0000000c__entry__312">Specifies
information about the image for the asset. See <a
href="#ID-0000000c__ID-00000723" class="xref">Image Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__310"><code
class="ph codeph">data</code></td>
<td class="entry" headers="ID-0000000c__entry__311">object</td>
<td class="entry" headers="ID-0000000c__entry__312">Specifies
information about data for the asset. See <a
href="#ID-0000000c__ID-00000783" class="xref">Assets Data Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__310"><code
class="ph codeph">video</code></td>
<td class="entry" headers="ID-0000000c__entry__311">object</td>
<td class="entry" headers="ID-0000000c__entry__312">Specifies
information about the video fro the asset. See Video Object below.</td>
</tr>
</tbody>
</table>

**Title Object**

We support the following fields in the `title` object in the `assets`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__331" class="entry">Field</th>
<th id="ID-0000000c__entry__332" class="entry">Type</th>
<th id="ID-0000000c__entry__333" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__331"><code
class="ph codeph">len</code></td>
<td class="entry" headers="ID-0000000c__entry__332">integer</td>
<td class="entry" headers="ID-0000000c__entry__333">Maximum length of
the text in the title.</td>
</tr>
</tbody>
</table>

**Image Object**

We support the following fields in the `img` object of the `assets`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__337" class="entry">Field</th>
<th id="ID-0000000c__entry__338" class="entry">Type</th>
<th id="ID-0000000c__entry__339" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__337"><code
class="ph codeph">type</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__338">integer</td>
<td class="entry" headers="ID-0000000c__entry__339">Specifies the type
ID of the image element requested by the publisher. Supported values
are:
<ul>
<li><code class="ph codeph">1</code>: Icon image for use on smaller
screen sizes (<code class="ph codeph">icon_img_url</code>)</li>
<li><code class="ph codeph">3</code>: Large image preview fo the ad for
use on larger screen sizes (<code
class="ph codeph">main_media</code>)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__337"><code
class="ph codeph">w</code></td>
<td class="entry" headers="ID-0000000c__entry__338">integer</td>
<td class="entry" headers="ID-0000000c__entry__339">Specifies the exact
width of the image, in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__337"><code
class="ph codeph">wmin</code></td>
<td class="entry" headers="ID-0000000c__entry__338">integer</td>
<td class="entry" headers="ID-0000000c__entry__339">Specifies the
minimum requested width of the image, in pixels. If included, this value
should be used for any rescaling of images by the client. If w or wmin
are both included, use <code class="ph codeph">w</code> as the exact
width.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__337"><code
class="ph codeph">h</code></td>
<td class="entry" headers="ID-0000000c__entry__338">integer</td>
<td class="entry" headers="ID-0000000c__entry__339">Specifies the height
of the image, in pixels.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__337"><code
class="ph codeph">hmin</code></td>
<td class="entry" headers="ID-0000000c__entry__338">integer</td>
<td class="entry" headers="ID-0000000c__entry__339">Specifies the
minimum requested height of the image, in pixels. If included, this
value should be used for any rescaling of images by the client. If both
h and hmin are included, use h as the exact height.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__337"><code
class="ph codeph">mimes</code></td>
<td class="entry" headers="ID-0000000c__entry__338">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__339">Specifies the image
content MIME types supported. Should be empty, as all image types are
supported.</td>
</tr>
</tbody>
</table>

**Assets Data Object**

We support the following fields in the `data` object of the `assets`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__358" class="entry">Field</th>
<th id="ID-0000000c__entry__359" class="entry">Type</th>
<th id="ID-0000000c__entry__360" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__358"><code
class="ph codeph">type</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__359">integer</td>
<td class="entry" headers="ID-0000000c__entry__360">Specifies the type
ID of the element supported by the publisher. The publisher can display
this information in an appropriate format. Supported values are:
<ul>
<li><code class="ph codeph">1</code>: <code
class="ph codeph">sponsored</code> - "Sponsored By" message, where the
the response contains the brand name of the sponsor</li>
<li><code class="ph codeph">2</code>: <code
class="ph codeph">desc</code> - Descriptive text associated with the
product or service being advertised</li>
<li><code class="ph codeph">3</code>: <code
class="ph codeph">rating</code> - Rating of the product being offered to
the user. For example, an app's rating in an app store from 0–5.</li>
<li><code class="ph codeph">12</code>: <code
class="ph codeph">ctatext</code> - Descriptive text for a "call to
action" button for the destination URL</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__358"><code
class="ph codeph">len</code></td>
<td class="entry" headers="ID-0000000c__entry__359">integer</td>
<td class="entry" headers="ID-0000000c__entry__360">Maximum length of
the text in the element's response.</td>
</tr>
</tbody>
</table>

**Event Trackers Request Object**

We support the following fields in the `event trackers request`
object (Native 1.2 only):

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__367" class="entry">Field</th>
<th id="ID-0000000c__entry__368" class="entry">Type</th>
<th id="ID-0000000c__entry__369" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__367"><code
class="ph codeph">event</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__368">integer</td>
<td class="entry" headers="ID-0000000c__entry__369">Type of event
available for tracking. Supported values are:
<ul>
<li><code class="ph codeph">1</code>: <code
class="ph codeph">impression</code> - Impression</li>
<li><code class="ph codeph">2</code>: <code
class="ph codeph">viewable-mrc50</code> - Viewable impression using MRC
definition at 50% in view for 1 second</li>
<li><code class="ph codeph">3</code>: <code
class="ph codeph">viewable-mrc100</code> - Viewable impression using MRC
definition at 100% in view for 1 second (ie GroupM standard)</li>
<li><code class="ph codeph">4</code>: <code
class="ph codeph">viewable-video50</code> - Viewable impression for
video using MRC definition at 50% in view for 2 seconds</li>
<li>555: <code
class="ph codeph">custom value to signify OMID</code> </li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__367"><code
class="ph codeph">methods</code></td>
<td class="entry" headers="ID-0000000c__entry__368">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__369">Array of the types
of tracking available for the given event. 
<p>Supported values are:</p>
<ul>
<li><code class="ph codeph">1</code>: <code
class="ph codeph">img</code> - Img-pixel tracking - URL provided will be
inserted as a 1x1 pixel at the time of the event</li>
<li><code class="ph codeph">2</code>: <code
class="ph codeph">js</code> - Javascript-based tracking - URL provided
will be inserted as a js tag at the time of the event</li>
</ul></td>
</tr>
</tbody>
</table>

Video Object

We support the following fields in the `video` object of
the `assets` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__376" class="entry">Field</th>
<th id="ID-0000000c__entry__377" class="entry">Type</th>
<th id="ID-0000000c__entry__378" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__376"><code
class="ph codeph">mimes</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__377">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__378">Content MIME types
supported. If mimes are not specified in the bid request from supply
side, then we will default to “video/mp4” for regular video and
“video/x-flv” for mobile.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__376"><code
class="ph codeph">minduration</code></td>
<td class="entry" headers="ID-0000000c__entry__377">integer</td>
<td class="entry" headers="ID-0000000c__entry__378">Minimum video ad
duration in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__376"><code
class="ph codeph">maxduration</code></td>
<td class="entry" headers="ID-0000000c__entry__377">integer</td>
<td class="entry" headers="ID-0000000c__entry__378">Maximum video ad
duration in seconds.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__376"><code
class="ph codeph">protocols</code></td>
<td class="entry" headers="ID-0000000c__entry__377">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__378">An array of video
protocols the publisher can accept in the bid response.
<p>Currently supported values are:</p>
<ul>
<li>1: VAST 1.0</li>
<li>2: VAST 2.0</li>
<li>3: VAST 3.0</li>
<li>4: VAST 1.0 Wrapper</li>
<li>5: VAST 2.0 Wrapper</li>
<li>6: VAST 3.0 Wrapper</li>
<li>7: VAST 4.0</li>
<li>8: DAAST 1.0</li>
</ul></td>
</tr>
</tbody>
</table>

**Private Marketplace Object**

We support the following fields in the `pmp` object of the `imp` object
to support private marketplaces (deals) between buyers and sellers that
may apply to this impression:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__391" class="entry">Field</th>
<th id="ID-0000000c__entry__392" class="entry">Type</th>
<th id="ID-0000000c__entry__393" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__391"><code
class="ph codeph">private_auction</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__392">integer</td>
<td class="entry" headers="ID-0000000c__entry__393">Indicates the
auction eligibility for seats named in the <code
class="ph codeph">deals</code> object.
<ul>
<li><code class="ph codeph">0</code>: All bids are accepted</li>
<li><code class="ph codeph">1</code>: Only bids for specified deals are
accepted</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__391"><code
class="ph codeph">deals</code></td>
<td class="entry" headers="ID-0000000c__entry__392">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__393">Specifies
information about the deals for this bid. See <a
href="#ID-0000000c__ID-0000088a" class="xref">Deal Object</a>
below.</td>
</tr>
</tbody>
</table>

**Deal Object**

We support the following fields in the `deal` object of the `pmp`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__400" class="entry">Field</th>
<th id="ID-0000000c__entry__401" class="entry">Type</th>
<th id="ID-0000000c__entry__402" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__400"><code
class="ph codeph">id</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__401">string</td>
<td class="entry" headers="ID-0000000c__entry__402">(Required) Specifies
a unique identifier for the deal.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__400"><code
class="ph codeph">bidfloor</code></td>
<td class="entry" headers="ID-0000000c__entry__401">float</td>
<td class="entry" headers="ID-0000000c__entry__402">Specifies the
minimum bid price for the deal, in CPM using the default currency (<code
class="ph codeph">USD</code>). If omitted, default is <code
class="ph codeph">0.00</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__400"><code
class="ph codeph">at</code></td>
<td class="entry" headers="ID-0000000c__entry__401">integer</td>
<td class="entry" headers="ID-0000000c__entry__402">Optional override of
the overall auction type of the bid request. If omitted, default is 2.
<ul>
<li><code class="ph codeph">1</code>: First price</li>
<li><code class="ph codeph">2</code>: Second price plus one cent
(default)</li>
<li><code class="ph codeph">3</code>: Bid floor is the agreed upon deal
price (fixed price)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__400"><code
class="ph codeph">wseat</code></td>
<td class="entry" headers="ID-0000000c__entry__401">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__402">Specifies a list of
buyer seat IDs that are allowed to bid on this deal. If no seat is
specified, all buyers are eligible.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__400"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__401">object</td>
<td class="entry" headers="ID-0000000c__entry__402">Used for identifying
platform-specific extensions to OpenRTB for the deal object. See <a
href="#ID-0000000c__ID-000008e3" class="xref">Deal Extension Object</a>
below.</td>
</tr>
</tbody>
</table>

**Deal Extension Object**

We support a single object in the `ext` object to support
platform-specific extensions to the `deal` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__418" class="entry">Field</th>
<th id="ID-0000000c__entry__419" class="entry">Type</th>
<th id="ID-0000000c__entry__420" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__418"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-0000000c__entry__419">object</td>
<td class="entry" headers="ID-0000000c__entry__420">Specifies the
platform-specific extensions to the deal object.</td>
</tr>
</tbody>
</table>

**Deal AppNexus Object**

We support the following fields in the
`appnexus` extension object of the `deal`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__424" class="entry">Field</th>
<th id="ID-0000000c__entry__425" class="entry">Type</th>
<th id="ID-0000000c__entry__426" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__424"><code
class="ph codeph">ad_quality_override</code></td>
<td class="entry" headers="ID-0000000c__entry__425">integer</td>
<td class="entry" headers="ID-0000000c__entry__426">Specifies how the
deal handles creatives:<br />
&#10;<ul>
<li><code class="ph codeph">1</code>: Creatives use existing ad quality
settings. (default)</li>
<li><code class="ph codeph">2</code>: Creatives in "pending" audit
status will serve. Once these creatives are audited, the existing ad
quality settings are used.</li>
<li><code class="ph codeph">3</code>: No ad profile restrictions will be
applied to this deal. (Maximum trust)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__424"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry" headers="ID-0000000c__entry__425">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__426">Specifies the IDs of
the media types that are allowed on this deal. (See <a
href="expandables-and-rich-media.md"
class="xref" target="_blank">Expandables and Rich Media</a> for a list
of media types.) If there are no unique media types for this deal as
compared to the main bid request object, this field will be an empty
array. This does NOT mean the deal does not allow any media types,
instead it just means that the media types on the main bid object
(anything not specifically listed in the “battr” object) can be used
when bidding on this deal. If this array is populated, it will contain a
complete list of media types allowed on this deal.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__424"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry" headers="ID-0000000c__entry__425">array of
integers</td>
<td class="entry" headers="ID-0000000c__entry__426">Specifies the IDs of
the media subtypes that are allowed on this deal. (See <a
href="expandables-and-rich-media.md"
class="xref" target="_blank">Expandables and Rich Media</a> for a list
of media subtypes.) If there are no unique media subtypes for this deal
as compared to the main bid request object, this field will be an empty
array. This does NOT mean the deal does not allow any media subtypes,
instead it just means that the media subtypes on the main bid object
(anything not specifically listed in the “battr” object) can be used
when bidding on this deal. If this array is populated, it will contain a
complete list of submedia types allowed on this deal.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__424"><code
class="ph codeph">sizes</code></td>
<td class="entry" headers="ID-0000000c__entry__425">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__426">Specifies the
allowed creative sizes for this deal. If this array is populated, it
will contain a complete list of sizes allowed on this deal. Sizes
allowed on the deal do not have to be a subset of what is allowed in the
main bid request object. If the array is empty, that means that there
are are no unique sizes for this deal, and the allowed sizes from the
main bid object should be used instead. See <a
href="#ID-0000000c__ID-00000962" class="xref">Sizes Object</a>
below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__424"><code
class="ph codeph">sc</code></td>
<td class="entry" headers="ID-0000000c__entry__425">integer</td>
<td class="entry" headers="ID-0000000c__entry__426">Specifies whether
the wseat field of the deal object is passing a buyer seat ID. This
Field is only present for deals set up with a DSP's buyer seat ID and
will pass a value of "1".</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__424"><code
class="ph codeph">gtd</code></td>
<td class="entry" headers="ID-0000000c__entry__425">integer</td>
<td class="entry" headers="ID-0000000c__entry__426">Specifies whether
the deal is Programmatic Guaranteed. This Field is only present for
deals set up as Programmatic Guaranteed and will pass a value of
"1".</td>
</tr>
</tbody>
</table>

**Sizes Object**

We support the following fields in the `sizes` object of the deal `ext`
object.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__445" class="entry">Field</th>
<th id="ID-0000000c__entry__446" class="entry">Type</th>
<th id="ID-0000000c__entry__447" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__445"><code
class="ph codeph">w</code></td>
<td class="entry" headers="ID-0000000c__entry__446">integer</td>
<td class="entry" headers="ID-0000000c__entry__447">Specifies the width
of the creative allowed for this deal, in pixels.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__445"><code
class="ph codeph">h</code></td>
<td class="entry" headers="ID-0000000c__entry__446">integer</td>
<td class="entry" headers="ID-0000000c__entry__447">Specifies the height
of the creative allowed for this deal, in pixels.</td>
</tr>
</tbody>
</table>

**Impression Extension Object**

We support a single object in the `ext` object to support
platform-specific extensions to the `imp` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__454" class="entry">Field</th>
<th id="ID-0000000c__entry__455" class="entry">Type</th>
<th id="ID-0000000c__entry__456" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__454"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-0000000c__entry__455">object</td>
<td class="entry" headers="ID-0000000c__entry__456">Specifies the
platform-specific extensions to the impression object.</td>
</tr>
</tbody>
</table>

**Impression AppNexus Object**

We support the following fields in the
`appnexus` extension object of the `imp` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__460" class="entry">Field</th>
<th id="ID-0000000c__entry__461" class="entry">Type</th>
<th id="ID-0000000c__entry__462" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">estimated_clear_price</code></td>
<td class="entry" headers="ID-0000000c__entry__461">double</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
estimated clear price needed to win the impression.
<p>Price is assumed to be in the publisher's currency. If not, you must
specify the currency units.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">predicted_view_rate</code></td>
<td class="entry" headers="ID-0000000c__entry__461">double</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
probability that the impression will be viewable by the user as a
percent of measured display impressions, based on historical data.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">predicted_view_rate_over_total</code></td>
<td class="entry" headers="ID-0000000c__entry__461">double</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
probability that the impression will be viewable by the user over all
display impressions, based on historical data.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">predicted_video_view_rate_over_total</code></td>
<td class="entry" headers="ID-0000000c__entry__461">double</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
probability that the impression will be viewable by the user over all
video impressions, based on historical data.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">predicted_video_view_rate</code></td>
<td class="entry" headers="ID-0000000c__entry__461">double</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
probability that the impression will be viewable by the user as a
percent of measured video impressions, based on historical data.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">member_ad_profile_id</code></td>
<td class="entry" headers="ID-0000000c__entry__461">integer</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
seller's ad profile ID.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">allowed_payment_types</code></td>
<td class="entry" headers="ID-0000000c__entry__461">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
allowable payments types for this impression. If this field is not
present, then the only allowed payment type is 'impression'.

<b>Note:</b> <strong>This object is not
enabled for all clients. Please reach out to your account representative
for this feature.</strong>
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">traffic_source_code</code></td>
<td class="entry" headers="ID-0000000c__entry__461">string</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
external source of the third party traffic for this impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">predicted_video_completion_rate</code></td>
<td class="entry" headers="ID-0000000c__entry__461">double</td>
<td class="entry" headers="ID-0000000c__entry__462">Specifies the
probability that the video impression will be viewed completely by a
user, based on historical data.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__460"><code
class="ph codeph">gpid</code></td>
<td class="entry" headers="ID-0000000c__entry__461">string</td>
<td class="entry" headers="ID-0000000c__entry__462">Global
placement-level identifier provided by the publisher to indicate a
specific ad placement on page</td>
</tr>
</tbody>
</table>

**Allowed Payment Types Object**

We support the following fields in the allowed_payment_types object:



<b>Note:</b> **This object is not enabled for
all clients. Please reach out to your account representative for this
feature. **



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__493" class="entry">Field</th>
<th id="ID-0000000c__entry__494" class="entry">Type</th>
<th id="ID-0000000c__entry__495" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__493"><code
class="ph codeph">payment_type</code></td>
<td class="entry" headers="ID-0000000c__entry__494">integer</td>
<td class="entry" headers="ID-0000000c__entry__495">Specifies the
payment type allowed for this impression. Currently supported values:
<ul>
<li>1: Impression</li>
<li>2: Views - Standard Display</li>
<li>6: Views - Custom Display - 100pv1s</li>
<li>8: Views - Standard Video</li>
<li>9: Views - Custom Video - 100pv50pd</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__493"><code
class="ph codeph">conversion_rate</code></td>
<td class="entry" headers="ID-0000000c__entry__494">double</td>
<td class="entry" headers="ID-0000000c__entry__495">Specifies the the
rate that Xandr will use to convert a
non-impression bid to an eCPM price for bid ranking in the auction. A
Bidder may use this for internal bid ranking, budgeting/pacing, or
potentially for others.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__493"><code
class="ph codeph">imp_count_method</code></td>
<td class="entry" headers="ID-0000000c__entry__494">int</td>
<td class="entry" headers="ID-0000000c__entry__495">Specifies how the
impression is counted. Currently supported values:
<ul>
<li>0: Not applicable</li>
<li>1: Unknown</li>
<li>2: Count on render</li>
<li>3: Count on decision/serve</li>
</ul></td>
</tr>
</tbody>
</table>

For more information check the <a
href="guaranteed-outcomes.md"
class="xref" target="_blank">Overview</a> page.

**Site Object**

Sites (also known as placement groups) are a subset of inventory for a
publisher. We support the following fields in the `site` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__505" class="entry">Field</th>
<th id="ID-0000000c__entry__506" class="entry">Type</th>
<th id="ID-0000000c__entry__507" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__506">string</td>
<td class="entry" headers="ID-0000000c__entry__507">Recommended.
Specifies the Xandr site ID. Omitted if seller
visibility prohibits sharing. Bidders cannot lookup what site the ID
corresponds to, but these IDs can be used as anonymous, optimizable
chunks of inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">domain</code></td>
<td class="entry" headers="ID-0000000c__entry__506">string</td>
<td class="entry" headers="ID-0000000c__entry__507">Specifies the domain
of the site (for example, <code
class="ph codeph">publishersite.com</code>). Omitted if seller
visibility prohibits sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">cat</code></td>
<td class="entry" headers="ID-0000000c__entry__506">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__507">Specifies a list of
content categories. Will include IAB categories (listed in section 5.1
of the specification). Omitted if seller visibility settings prohibit
sharing.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">page</code></td>
<td class="entry" headers="ID-0000000c__entry__506">string</td>
<td class="entry" headers="ID-0000000c__entry__507">Specifies the full
URL of the page where the impression will be shown (for example, <code
class="ph codeph">page.publishersite.com/path/to/page</code>). Omitted
if seller visibility settings prohibit sharing. Will contain the domain
instead of the full URL if only domain is exposed in the visibility
profile.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">publisher</code></td>
<td class="entry" headers="ID-0000000c__entry__506">object</td>
<td class="entry" headers="ID-0000000c__entry__507">Specifies
information about the publisher. Omitted if seller visibility settings
prohibit sharing. See <a href="#ID-0000000c__ID-00000b5e"
class="xref">Publisher Object</a> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">content</code></td>
<td class="entry" headers="ID-0000000c__entry__506">object</td>
<td class="entry" headers="ID-0000000c__entry__507">Details about the
Content within the site. See <a href="#ID-0000000c__ID-00000b7d"
class="xref">Content Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__505"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__506">object</td>
<td class="entry" headers="ID-0000000c__entry__507">Used for holding app
extension fields. See Outgoing Bid Reqeust to Bidders# Site Ext Object
below </td>
</tr>
</tbody>
</table>

**Site Extension Object**

We support the following fields in the ext object of the site object. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__529"
class="entry"><strong>Field</strong></th>
<th id="ID-0000000c__entry__530"
class="entry"><strong>Type</strong></th>
<th id="ID-0000000c__entry__531"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__529"><code
class="ph codeph">inventorypartnerdomain</code></td>
<td class="entry" headers="ID-0000000c__entry__530">string</td>
<td class="entry" headers="ID-0000000c__entry__531">The value passed in
this field instructs the app-ads.txt enforcer to check the app’s
app-ads.txt file for the directive inventorypartnerdomain=[value of this
field]</td>
</tr>
</tbody>
</table>

**App Object**

We support the following fields in the `app` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__535" class="entry">Field</th>
<th id="ID-0000000c__entry__536" class="entry">Type</th>
<th id="ID-0000000c__entry__537" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__536">string</td>
<td class="entry" headers="ID-0000000c__entry__537">Specifies the <span
class="ph">Xandr app ID. Omitted if seller visibility prohibits
sharing. Bidders cannot lookup what site the ID corresponds to, but
these IDs can be used as anonymous, optimizable chunks of
inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">bundle</code></td>
<td class="entry" headers="ID-0000000c__entry__536">string</td>
<td class="entry" headers="ID-0000000c__entry__537">Specifies the
application bundle or package name (e.g., <code
class="ph codeph">com.foo.mygame</code>). This is intended to be a
unique ID across multiple exchanges. For iOS, this will be the iTunes
app id (numerical id). Omitted if seller visibility prohibits
sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">cat</code></td>
<td class="entry" headers="ID-0000000c__entry__536">array of
strings</td>
<td class="entry" headers="ID-0000000c__entry__537">Specifies a list of
content categories. Will include IAB categories (listed in section 5.1
of the specification). Omitted if seller visibility settings prohibit
sharing.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">publisher</code></td>
<td class="entry" headers="ID-0000000c__entry__536">object</td>
<td class="entry" headers="ID-0000000c__entry__537">Specifies
information about the publisher. Omitted if seller visibility settings
prohibit sharing. See <a href="#ID-0000000c__ID-00000b5e"
class="xref">Publisher Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">name</code></td>
<td class="entry" headers="ID-0000000c__entry__536">string</td>
<td class="entry" headers="ID-0000000c__entry__537">The full name of the
app (i.e. Angry Birds). (This value may be aliased at the publisher's
request.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">content</code></td>
<td class="entry" headers="ID-0000000c__entry__536">object</td>
<td class="entry" headers="ID-0000000c__entry__537">Details about the
Content within the site. See <a href="#ID-0000000c__ID-00000b7d"
class="xref">Content Object</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">storeurl</code></td>
<td class="entry" headers="ID-0000000c__entry__536">string</td>
<td class="entry" headers="ID-0000000c__entry__537">App store URL for an
installed app</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__535"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__536">object</td>
<td class="entry" headers="ID-0000000c__entry__537">Used for holding app
extension fields. See Outgoing Bid Reqeust to Bidders#App Ext Object
below </td>
</tr>
</tbody>
</table>

**Publisher Object**

We support the following field in the `publisher` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__562" class="entry">Field</th>
<th id="ID-0000000c__entry__563" class="entry">Type</th>
<th id="ID-0000000c__entry__564" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__562"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__563">string</td>
<td class="entry" headers="ID-0000000c__entry__564">Specifies the <span
class="ph">Xandr publisher ID. Omitted if seller visibility
settings prohibit sharing.</td>
</tr>
</tbody>
</table>

**Content Object**

Xandr supports the following fields in the
Content object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__568" class="entry">Field</th>
<th id="ID-0000000c__entry__569" class="entry">Type</th>
<th id="ID-0000000c__entry__570" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">genre</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Genre that best
describes the content (e.g., rock, pop, etc).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">ID uniquely
identifying the content.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">language</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Content language
using ISO-639-1-alpha-2.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__569">object</td>
<td class="entry" headers="ID-0000000c__entry__570">Placeholder for
exchange-specific extensions to OpenRTB.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">episode</code></td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">Episode number.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">title</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Content title.
<p>Video Examples: "Search Committee" (television), "A New Hope"
(movie), or "Endgame" (made for web).</p>
<p>Non-Video Example: "Why an Antarctic Glacier is Melting So Quickly"
(Time magazine article).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">series</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Video Examples: "The
Office" (television), "Star Wars" (movie), or "Arby 'N' The Chief" (made
for web).
<p>Non-Video Example: "Ecocentric" (Time Magazine blog).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">season</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Content season
(e.g., "Season 3").</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">artist</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Artist credited with
the content.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">album</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Album to which the
content belongs; typically for audio.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">isrc</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">International
Standard Recording Code conforming to ISO-3901.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">producer</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">object</td>
<td class="entry" headers="ID-0000000c__entry__570">Details about the
content <code class="ph codeph">Producer.</code> Refer to section 3.2.12
in the IAB specification.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">url</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">URL of the content,
for buy-side contextualization or review.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">cat </code></td>
<td class="entry" headers="ID-0000000c__entry__569">string array</td>
<td class="entry" headers="ID-0000000c__entry__570">Array of IAB content
categories that describe the content producer. Refer to list 5.1 in the
IAB specification.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">prodq</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">Production quality.
Refer to List 5.11 in the IAB specification.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">videoquality</code></td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry"
headers="ID-0000000c__entry__570"><strong>Deprecated</strong> in favor
of prodq. Video quality. Refer to List 5.11 in the IAB
specification.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">context</code></td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">Type of content
(game, video, text, etc.). Refer to List 5.16  in the IAB
specification.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">contentrating</code></td>
<td class="entry" headers="ID-0000000c__entry__569">string</td>
<td class="entry" headers="ID-0000000c__entry__570">Content rating
(e.g., MPAA).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">userrating </code></td>
<td class="entry" headers="ID-0000000c__entry__569">string </td>
<td class="entry" headers="ID-0000000c__entry__570">User rating of the
content (e.g., number of stars, likes, etc.).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">qagmediarating</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">Media rating per IQG
guidelines. Refer to List 5.17 in the IAB specification.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">keywords</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">string </td>
<td class="entry" headers="ID-0000000c__entry__570">Comma separated list
of keywords describing the content.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">livestream</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">0 = not live, 1 =
content is live (e.g., stream, live blog).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">sourcerelationship</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">0 = indirect, 1 =
direct.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">len</code></td>
<td class="entry" headers="ID-0000000c__entry__569">integer</td>
<td class="entry" headers="ID-0000000c__entry__570">Length of content in
seconds; appropriate for video or audio.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__568"><code
class="ph codeph">data</code> </td>
<td class="entry" headers="ID-0000000c__entry__569">object array </td>
<td class="entry" headers="ID-0000000c__entry__570">Additional content
data. Each Data object represents a different data source. Refer to
Section 3.2.16 in the IAB specification.</td>
</tr>
</tbody>
</table>

**Content Extension Object**

Xandr supports the following field in the ext
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__646" class="entry">Field</th>
<th id="ID-0000000c__entry__647" class="entry">Type</th>
<th id="ID-0000000c__entry__648" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__646"><code
class="ph codeph">network</code></td>
<td class="entry" headers="ID-0000000c__entry__647">string</td>
<td class="entry" headers="ID-0000000c__entry__648">The top-level parent
company or, where relevant, a sub-brand which owns multiple TV-like
channels, d2c content brands, or digital properties on which the content
is being viewed</td>
</tr>
</tbody>
</table>

**App Extension Object**

We support the following fields in the ext object of the app object. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__652"
class="entry"><strong>Field</strong></th>
<th id="ID-0000000c__entry__653"
class="entry"><strong>Type</strong></th>
<th id="ID-0000000c__entry__654"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__652"><code
class="ph codeph">inventorypartnerdomain</code></td>
<td class="entry" headers="ID-0000000c__entry__653">string</td>
<td class="entry" headers="ID-0000000c__entry__654">The value passed in
this field instructs the app-ads.txt enforcer to check the app’s
app-ads.txt file for the directive inventorypartnerdomain=[value of this
field]</td>
</tr>
</tbody>
</table>

**Device Object**

We support the following fields in the `device` object. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__658" class="entry">Field</th>
<th id="ID-0000000c__entry__659" class="entry">Type</th>
<th id="ID-0000000c__entry__660" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">ua</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">(Recommended)
Specifies the user agent string from the browser. User agent often
identifies such information as the application, operating system, and
software vendor acting on behalf of the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">geo</code></td>
<td class="entry" headers="ID-0000000c__entry__659">object</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the
location of the device, as derived from the device's location services
(such as cell tower triangulation or GPS) or IP address. Also includes
the timezone and a code for the designated market area. Note that geo
overrides IP. See <a href="#ID-0000000c__ID-00000df5" class="xref">Geo
Object</a> for details.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">dnt</code></td>
<td class="entry" headers="ID-0000000c__entry__659">integer</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the Do Not
Track setting:
<ul>
<li><code class="ph codeph">0</code>: Do Not Track is set to false in
browser (tracking is allowed)</li>
<li><code class="ph codeph">1</code>: Do Not Track is set to true in
browser (user has opted out of tracking)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">ip</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the IPv4
address closest to the device. Omitted if seller visibility settings
prohibit sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">ipv6</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">IP address closest
to device as IPv6</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">devicetype</code></td>
<td class="entry" headers="ID-0000000c__entry__659">integer</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the type
of device, using IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">make</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the make
of the device. </td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">model</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the model
of the device. </td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">os</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies operating
system of the device. If passed, this overrides the operating system in
the ua field. The following are the possible values in the os field:
<ul>
<li>"Unknown"</li>
<li>"Android"</li>
<li>"Apple iOS"</li>
<li>"Apple Mac"</li>
<li>"Microsoft Windows"</li>
<li>"Blackberry OS"</li>
<li>"Microsoft Mobile"</li>
<li>"Linux"</li>
<li>"Symbian OS"</li>
<li>"Chrome OS"</li>
<li>"PlayStation 4 OS"</li>
<li>"Firefox OS"</li>
<li>"Roku OS"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">language</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the
browser language; use <a
href="http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes" class="xref"
target="_blank">ISO 639-1</a> or <a
href="http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" class="xref"
target="_blank">ISO 3166 alpha-2</a> codes.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">lmt</code></td>
<td class="entry" headers="ID-0000000c__entry__659">integer</td>
<td class="entry" headers="ID-0000000c__entry__660">"Limit Ad Tracking"
signal commercially endorsed (e.g., iOS, Android), where 0=tracking is
unrestricted, 1=tracking must be limited per commercial guidelines.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">carrier</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies carrier
for the device. </td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">connectiontype</code></td>
<td class="entry" headers="ID-0000000c__entry__659">integer</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the
detected data connection type for the device using IAB values. We
support the following values today:
<ul>
<li><code class="ph codeph">0</code>: Unknown</li>
<li><code class="ph codeph">3</code>: Cellular Network – Unknown
Generation</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">ifa</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies the ID
sanctioned for advertiser use in the clear. Set to iOS <code
class="ph codeph">idfa</code>, Android <code
class="ph codeph">aaid</code>, or Windows <code
class="ph codeph">adid</code> if available. Is also set for CTV
impressions, using device-provided, publisher-provided, or other device
ID types as applicable. See <strong>ext.ifa_type</strong> for more
information. Omitted if seller visibility settings prohibit
sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">dpidsha1</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies
the SHA1-encrypted, platform-specific (e.g., <code
class="ph codeph">ANDROID_ID</code> or <code
class="ph codeph">UDID</code> for iOS) unique identifier for the mobile
device. Omitted if seller visibility settings prohibit sharing.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">dpidmd5</code></td>
<td class="entry" headers="ID-0000000c__entry__659">string</td>
<td class="entry" headers="ID-0000000c__entry__660">Specifies
the MD5-encrypted, platform-specific (e.g., <code
class="ph codeph">ANDROID_ID</code> or <code
class="ph codeph">UDID</code> for iOS) unique identifier for the mobile
device.Omitted if seller visibility settings prohibit sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__658"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__659">object</td>
<td class="entry" headers="ID-0000000c__entry__660">Used for identifying
platform-specific extensions to OpenRTB for the geo object. See <a
href="#ID-0000000c__ID-00000e72" class="xref">Geo Extension Object</a>
below.</td>
</tr>
</tbody>
</table>

**Geo Object**

We support the following fields in the `geo` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__712" class="entry">Field</th>
<th id="ID-0000000c__entry__713" class="entry">Type</th>
<th id="ID-0000000c__entry__714" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">lat</code></td>
<td class="entry" headers="ID-0000000c__entry__713">float</td>
<td class="entry" headers="ID-0000000c__entry__714">Specifies the
latitude of the device, as derived from the device's location services.
This can range from <code class="ph codeph">-90</code> to <code
class="ph codeph">90</code>. South is negative.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">lon</code></td>
<td class="entry" headers="ID-0000000c__entry__713">float</td>
<td class="entry" headers="ID-0000000c__entry__714">Specifies
the longitude of the device, as derived from the device's location
services. This can range from <code class="ph codeph">-180</code> to
180. West is negative.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">country</code></td>
<td class="entry" headers="ID-0000000c__entry__713">string</td>
<td class="entry" headers="ID-0000000c__entry__714">Specifies the
country name, according to <a
href="http://en.wikipedia.org/wiki/ISO_3166-1_alpha-3" class="xref"
target="_blank">ISO-3166-1 Alpha-3</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">region</code></td>
<td class="entry" headers="ID-0000000c__entry__713">string</td>
<td class="entry" headers="ID-0000000c__entry__714">Region code using <a
href="https://en.wikipedia.org/wiki/ISO_3166-2" class="xref"
target="_blank">ISO-3166-2</a>; 2-letter state code if USA.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">city</code></td>
<td class="entry" headers="ID-0000000c__entry__713">string</td>
<td class="entry" headers="ID-0000000c__entry__714">Specifies the city
name. Omitted if seller visibility settings prohibit sharing.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">zip</code></td>
<td class="entry" headers="ID-0000000c__entry__713">string</td>
<td class="entry" headers="ID-0000000c__entry__714">Specifies the ZIP or
postal code where the device is located. Omitted if seller visibility
settings prohibit sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">metro</code></td>
<td class="entry" headers="ID-0000000c__entry__713">string</td>
<td class="entry" headers="ID-0000000c__entry__714">Contains a code for
the user's designated market area based on their IP address (if the IP
address can be determined).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">utcoffset</code></td>
<td class="entry" headers="ID-0000000c__entry__713">int</td>
<td class="entry" headers="ID-0000000c__entry__714">Indicates the local
time as an offset from UTC.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__712"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__713">object</td>
<td class="entry" headers="ID-0000000c__entry__714">Used for identifying
platform-specific extensions to OpenRTB for the geo object. See <a
href="#ID-0000000c__ID-00000e72" class="xref">Geo Extension Object</a>
below.</td>
</tr>
</tbody>
</table>

**Geo Extension Object**

We support a single object in the `ext` object to support
platform-specific extensions to the `geo` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__742" class="entry">Field</th>
<th id="ID-0000000c__entry__743" class="entry">Type</th>
<th id="ID-0000000c__entry__744" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__742"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-0000000c__entry__743">object</td>
<td class="entry" headers="ID-0000000c__entry__744">Specifies the
platform-specific extensions to the geo object. See <a
href="#ID-0000000c__ID-00000e93" class="xref">Geo <span
class="ph">AppNexus Object</a> below for a list of the extensions
for this object.</td>
</tr>
</tbody>
</table>

**Geo AppNexus Object**

We support the following field in
the `appnexus` extension object of
the `geo` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__748" class="entry">Field</th>
<th id="ID-0000000c__entry__749" class="entry">Type</th>
<th id="ID-0000000c__entry__750" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__748"><code
class="ph codeph">timezone</code></td>
<td class="entry" headers="ID-0000000c__entry__749">string</td>
<td class="entry" headers="ID-0000000c__entry__750">Contains the
timezone of the user based on IP address (if the IP address can be
determined).</td>
</tr>
</tbody>
</table>

**Device Extension Object**

We support a single object in the `ext` object to support
platform-specific extensions to the `device` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__754" class="entry">Field</th>
<th id="ID-0000000c__entry__755" class="entry">Type</th>
<th id="ID-0000000c__entry__756" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__754"><code
class="ph codeph">ifa_type</code></td>
<td class="entry" headers="ID-0000000c__entry__755">string</td>
<td class="entry" headers="ID-0000000c__entry__756">Specifies the source
of the IFA, whether that is device-generated (and therefore used across
apps) or whether it is a publisher provided IFA, or a temporary/session
IFA. Used primarily for CTV impressions.
<p>The types of IFA are Device, Publisher (including apps), SSP
and Session. The following are recommended values for the ifa_type
parameter:</p>
<ul>
<li>"dpid" - the generic “device provided id”, but based on historical
usage, common device type specific values can be used</li>
<li>"rida" - Roku id</li>
<li>"aaid" - Android id</li>
<li>"idfa" - Apple id</li>
<li>"afai" - Amazon Fire id</li>
<li>"tifa" - Tizen Identifier for Advertising (Samsung Ad ID)</li>
<li>"vida" - Vizio Advertising ID</li>
<li>"lgudid" - LG Unique Device ID</li>
<li>"msai" - Microsoft id</li>
<li>"ppid" - publisher provided id</li>
<li>"sspid" - SSP provided id</li>
<li>"sessionid" - session id / synthetic id (described below)</li>
</ul></td>
</tr>
</tbody>
</table>

**User Object**

We support the following fields in the `user` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__760" class="entry">Field</th>
<th id="ID-0000000c__entry__761" class="entry">Type</th>
<th id="ID-0000000c__entry__762" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__760"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-0000000c__entry__761">string</td>
<td class="entry" headers="ID-0000000c__entry__762">(Either <code
class="ph codeph">id</code> or <code class="ph codeph">buyeruid</code>
is recommended) Specifies the Xandr unique ID
for this user. Omitted if seller visibility settings prohibit sharing.
The unique 64-bit ID for the user. It will be the same for all requests
from this user until cookies are cleared. This field is 0 when <span
class="ph">Xandr does not have a match for this user or the
user's browser doesn't accept cookies. It will be -1 for opt-out
users.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__760"><code
class="ph codeph">buyeruid</code></td>
<td class="entry" headers="ID-0000000c__entry__761">string</td>
<td class="entry" headers="ID-0000000c__entry__762">(Either <code
class="ph codeph">id</code> or <code class="ph codeph">buyeruid</code>
is recommended) The buyer's unique ID for this user, if known. Omitted
if seller visibility settings prohibit sharing.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__760"><code
class="ph codeph">yob</code></td>
<td class="entry" headers="ID-0000000c__entry__761">integer</td>
<td class="entry" headers="ID-0000000c__entry__762">Specifies the year
of birth as a 4-digit integer. Omitted if unknown, or if seller
visibility settings prohibit sharing.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__760"><code
class="ph codeph">gender</code></td>
<td class="entry" headers="ID-0000000c__entry__761">string</td>
<td class="entry" headers="ID-0000000c__entry__762">Specifies the
gender. Set to <code class="ph codeph">null</code> if unknown. Omitted
if unknown, or seller visibility settings prohibit sharing.
<ul>
<li><code class="ph codeph">M</code>: male</li>
<li><code class="ph codeph">F</code>: female</li>
<li><code class="ph codeph">O</code>: other</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__760"><code
class="ph codeph">data</code></td>
<td class="entry" headers="ID-0000000c__entry__761">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__762">Specifies
information about data for the user. See <a
href="#ID-0000000c__ID-00000f4d" class="xref">User Data Object</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__760"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__761">object</td>
<td class="entry" headers="ID-0000000c__entry__762">Used for identifying
platform-specific extensions to OpenRTB for the user object.</td>
</tr>
</tbody>
</table>

**User Data Object**

We support the following fields in the `data` object of the `user`
object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__781" class="entry">Field</th>
<th id="ID-0000000c__entry__782" class="entry">Type</th>
<th id="ID-0000000c__entry__783" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__781"><code
class="ph codeph">id</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__782">string</td>
<td class="entry" headers="ID-0000000c__entry__783">Specifies the ID of
the data provider.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__781"><code
class="ph codeph">segment</code></td>
<td class="entry" headers="ID-0000000c__entry__782">array of
objects</td>
<td class="entry" headers="ID-0000000c__entry__783">Deprecated (April
2019).</td>
</tr>
</tbody>
</table>

**User Extension Object**

We support the following fields in the `ext` object to support
platform-specific extensions to the `user` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__790" class="entry">Field</th>
<th id="ID-0000000c__entry__791" class="entry">Type</th>
<th id="ID-0000000c__entry__792" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__790"><span
class="ph"><code class="ph codeph">appnexus</code></td>
<td class="entry" headers="ID-0000000c__entry__791">object</td>
<td class="entry" headers="ID-0000000c__entry__792">Specifies the
platform-specific extensions to the user object. See below for a list of
the extensions for this object.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__790"><code
class="ph codeph">consent</code></td>
<td class="entry" headers="ID-0000000c__entry__791">string</td>
<td class="entry" headers="ID-0000000c__entry__792">Optional. Contains
the data structure developed by the General Data Protection Regulation
(GDPR) Consent Working Group under the auspices of <a
href="https://www.iabeurope.eu/" class="xref" target="_blank">IAB
Europe</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__790"><code
class="ph codeph">eids</code></td>
<td class="entry" headers="ID-0000000c__entry__791">object</td>
<td class="entry" headers="ID-0000000c__entry__792">Specifies the
information relating to the extended user identifiers. This can be
either third party identity solutions (Criteo, TDID, RampID, etc.) or
Publisher-provided identifiers (PPIDs).</td>
</tr>
</tbody>
</table>



**Object**



<b>Note:</b> eids is not available if privacy
signals indicate personal information cannot be processed.





We support the following fields in the `eids` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__802" class="entry">Field</th>
<th id="ID-0000000c__entry__803" class="entry">Type</th>
<th id="ID-0000000c__entry__804" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__802"><code
class="ph codeph">source</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__803">string</td>
<td class="entry" headers="ID-0000000c__entry__804">Specifies the domain
of the organization that is the generator of the third party ID</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__802">uids</td>
<td class="entry" headers="ID-0000000c__entry__803">Object</td>
<td class="entry" headers="ID-0000000c__entry__804">Specifies the
identity information specific to the third party identity solution or
publisher. Relevant fields include:
<dl>
<dt>id</dt>
<dd>
string
</dd>
<dd>
User id provided by third party identity solution or publisher.
</dd>
<dt>ext</dt>
<dd>
Object
</dd>
<dd>
Specifies specific additional information provided by third party
identity solution or publisher.
</dd>
<dd>
Ext Fields include:
</dd>
</dl>
<ul>
<li><dl>
<dt></dt>
<dd>
rtiPartner = third party identity solution name, used by TDID.
</dd>
</dl></li>
</ul></td>
</tr>
</tbody>
</table>

  
**Segment Object**



<b>Warning:</b> **This object is deprecated
(2019).**



We support the following fields in the `segment` object of the user
`data` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__811" class="entry">Field</th>
<th id="ID-0000000c__entry__812" class="entry">Type</th>
<th id="ID-0000000c__entry__813" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__811"><code
class="ph codeph">id</code><br />
</td>
<td class="entry" headers="ID-0000000c__entry__812">string</td>
<td class="entry" headers="ID-0000000c__entry__813">Specifies the <span
class="ph">Xandr segment ID.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__811"><code
class="ph codeph">value</code></td>
<td class="entry" headers="ID-0000000c__entry__812">string</td>
<td class="entry" headers="ID-0000000c__entry__813">Specifies the value
of the data segment.</td>
</tr>
</tbody>
</table>

**Regs Object**

We support the following fields in the `regs` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__820" class="entry">Field</th>
<th id="ID-0000000c__entry__821" class="entry">Type</th>
<th id="ID-0000000c__entry__822" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__820"><code
class="ph codeph">coppa</code></td>
<td class="entry" headers="ID-0000000c__entry__821">integer</td>
<td class="entry" headers="ID-0000000c__entry__822">Indicates if this
request is subject to the United States Children's Online Privacy
Protection Act (COPPA).
<ul>
<li><code class="ph codeph">0</code>: Not subject to COPPA. Treat as a
normal auction.</li>
<li><code class="ph codeph">1</code>: Subject to COPPA. Limit what is
allowed for targeting and logging as required.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__820"><code
class="ph codeph">ext</code></td>
<td class="entry" headers="ID-0000000c__entry__821">object</td>
<td class="entry" headers="ID-0000000c__entry__822">Used for identifying
platform-specific extensions to OpenRTB for the reg object.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__820">gpp</td>
<td class="entry" headers="ID-0000000c__entry__821"></td>
<td class="entry" headers="ID-0000000c__entry__822">Indicates the
actual IAB GPP consent string. It implies which vendors are permitted to
process personal data and under which conditions.
<p>Example:</p>
<p>{ "Regs": { "ext": { "gpp": "DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN",
"gpp_sid": [2,6]} } }</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__820">gpp_sid</td>
<td class="entry" headers="ID-0000000c__entry__821"></td>
<td class="entry" headers="ID-0000000c__entry__822">Optional: indicates
which regulations or GPP logics are to be applied, or whether a user is
located in a country (EEA country) with a framework that is part of the
GPP.
<p>Example:</p>
<p>{ "Regs": { "ext": { "gpp": "DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN",
"gpp_sid": [2,6]} } }</p></td>
</tr>
</tbody>
</table>

**Regs Extension Object**

We support the following field in the `regs.ext` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__835" class="entry">Field</th>
<th id="ID-0000000c__entry__836" class="entry">Type</th>
<th id="ID-0000000c__entry__837" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__835"><code
class="ph codeph">gdpr</code></td>
<td class="entry" headers="ID-0000000c__entry__836">integer</td>
<td class="entry" headers="ID-0000000c__entry__837">Optional. Signals
whether or not the request is subject to General Data Protection
Regulation (GDPR) regulations. Possible values:
<ul>
<li><strong>0</strong>: No, the request is not subject to GDPR
regulations.</li>
<li><p><strong>1</strong>: Yes, the request is subject to GDPR
regulations.</p>
<p>No value indicates Unknown.</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__835"><code
class="ph codeph">us_privacy</code></td>
<td class="entry" headers="ID-0000000c__entry__836">string</td>
<td class="entry" headers="ID-0000000c__entry__837">The U.S. Privacy
String currently supports CCPA compliance by passing the follow
information in the string: 
<dl>
<dt>Specification Version</dt>
<dd>
Number (1 char in string)
</dd>
<dd>
The version of this string specification used to encode the string
</dd>
<dt>Explicit Notice/ Opportunity to Opt Out</dt>
<dd>
ENUM (N = No, Y = Yes, - = Not Applicable)
</dd>
<dd>
Has explicit notice been provided as required by 1798.115(d) of the CCPA
and the opportunity to opt out of the sale of their data pursuant to
1798.120 and 1798.135 of the CCPA
</dd>
<dt>Opt-Out Sale</dt>
<dd>
ENUM (N = No, Y = Yes, - = Not Applicable)
</dd>
<dd>
Has user opted-out of the sale of his or personal information pursuant
to 1798.120 and 1798.135
</dd>
<dt>LSPA</dt>
<dd>
ENUM (N = No, Y = Yes, - = Not Applicable)
</dd>
<dd>
Publisher is a signatory to the IAB Limites those terms are defined in
the Agreement.  d Service Provider Agreement (LSPA) and the publisher
declares that the transaction is covered as a “Covered Opt Out
Transaction” or a “Non Opt Out Transaction” as those terms are defined
in the Agreement.  s those terms are defined in the Agreement.  
</dd>
</dl></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__835">gpp</td>
<td class="entry" headers="ID-0000000c__entry__836"></td>
<td class="entry" headers="ID-0000000c__entry__837">Indicates the
actual IAB GPP consent string. It implies which vendors are permitted to
process personal data and under which conditions.
<p>Example:</p>
<p>{ "Regs": { "ext": { "gpp": "DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN",
"gpp_sid": [2,6]} } }</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__835">gpp_sid</td>
<td class="entry" headers="ID-0000000c__entry__836"></td>
<td class="entry" headers="ID-0000000c__entry__837">Optional: indicates
which regulations or GPP logics are to be applied, or whether a user is
located in a country (EEA country) with a framework that is part of the
GPP.
<p>Example:</p>
<p>{ "Regs": { "ext": { "gpp": "DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN",
"gpp_sid": [2,6]} } }</p></td>
</tr>
</tbody>
</table>

**Source Object**

We support the following fields in the `source` object:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000000c__entry__850" class="entry">Field</th>
<th id="ID-0000000c__entry__851" class="entry">Type</th>
<th id="ID-0000000c__entry__852" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000000c__entry__850"><code
class="ph codeph">fd</code></td>
<td class="entry" headers="ID-0000000c__entry__851">integer</td>
<td class="entry" headers="ID-0000000c__entry__852">Entity responsible
for the final impression sale decision, where:
<ul>
<li><code class="ph codeph">0</code>: exchange (default)</li>
<li><code class="ph codeph">1</code>: upstream source</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000000c__entry__850"><code
class="ph codeph">tid</code></td>
<td class="entry" headers="ID-0000000c__entry__851">string</td>
<td class="entry" headers="ID-0000000c__entry__852">Transaction ID that
must be common across all participants in this bid request. Value will
be passed in from the seller. If seller does not provide a transaction
ID, we will create one and share it.</td>
</tr>
</tbody>
</table>

>

## Example Bid Requests




**Banner Bid Request**

``` pre
{
    "id": "8765482113786061111",
    "imp": [{
        "id": "7654319310942953333",
        "banner": {
            "w": 320,
            "h": 50,
            "id": "1",
            "battr": [1, 2, 15],
            "pos": 0,
            "format": [{
                "w": 320,
                "h": 50
            }]
        },
        "instl": 0,
        "tagid": "12347654",
        "secure": 1,
        "ext": {
            "appnexus": {
                "estimated_clear_price": 0.57,
                "predicted_view_rate": 0.073255,
                "member_ad_profile_id": 1111055,
                "predicted_video_completion_rate": 0.592172,
                "predicted_view_rate_over_total": 0.067229,
                "allowed_payment_types": [{
                    "payment_type": 1,
                    "imp_count_method": 2
                }]
            }
        }
    }],
    "site": {
        "id": "3232399",
        "domain": "example.com",
        "cat": ["IAB12-2", "IAB12", "IAB11-5"],
        "page": "https://example.com/somepage.md",
        "publisher": {
            "id": "1111999"
        }
    },
    "device": {
        "ua": "Mozilla/5.0 (Linux; Android 6.0.1; HUAWEI Build/MMB28B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.137 Mobile Safari/537.36",
        "geo": {
            "lat": 36.6203,
            "lon": -4.4998,
            "country": "ESP",
            "region": "MA",
            "metro": "1",
            "city": "UnaCuidad",
            "zip": "11111",
            "utcoffset": 60,
            "ext": {
                "appnexus": {
                    "timezone": "Africa/Ceuta"
                }
            }
        },
        "dnt": 0,
        "ip": "11.222.111.0",
        "devicetype": 4,
        "make": "Unknown",
        "model": "Generic Android Mobile",
        "os": "Android",
        "language": "es",
        "connectiontype": 0
    },
    "user": {
        "id": "7939999668795769876",
        "buyeruid": "CABBBBrbuQ9AA5DMJJJJlOL9ZOo",
        "gender": "O",
        "data": [{
            "id": "0",
            "segment": [{
                "id": "1",
                "value": "0"
            }]
        }, {
            "id": "1234",
            "segment": [{
                "id": "4444555",
                "value": "0"
            }]
        }],
        "ext": {
            "appnexus": {
                "userdata_json": "{\"uid\":\"CABBBBrbuQ9AA5DMJJJJlOL9ZOo\"}"
            }
        }
    },
    "test": 0,
    "at": 1,
    "tmax": 150,
    "wseat": ["1234",..., "9988"],
    "cur": ["USD"],
    "bcat": ["IAB23-7", "IAB23-5", "IAB23-10", "IAB23-9", "IAB23-1", "IAB7-44", "IAB9-9", "IAB8-18", "IAB8-5"],
    "badv": ["url1.com", "url2.com"],
    "ext": {
        "appnexus": {
            "seller_member_id": 123,
            "publisher_integration": {
                "is_header": 0
            }
        },
        "schain": {
            "complete": 1,
            "nodes": [{
                "asi": "appnexus.com",
                "sid": "123",
                "rid": "2dd111ff-7777-4abc-8558-86a123ab46d6",
                "hp": 1
            }],
            "ver": "1.0"
        }
    },
    "source": {
        "fd": 1,
        "tid": "2dd111ff-7777-4abc-8558-86a123ab46d6"
    }
}
```





**Native 1.1 Bid Request**

``` pre
{
    "id": "123456789",
    "imp": [{
        "id": "987654321",
        "native": {
            "request": "{\"ver\":\"1.1\",\"plcmttype\": 4,\"plcmtcnt\": 1,\"assets\":[{\"id\": 1,\"required\": 1,\"title\":{\"len\": 140}},{\"id\": 4,\"required\": 1,\"img\":{\"type\": 3,\"wmin\": 600,\"hmin\": 315}},{\"id\": 2,\"required\": 0,\"img\":{\"type\": 1,\"wmin\": 320,\"hmin\": 180}},{\"id\": 6,\"required\": 1,\"data\":{\"type\": 2,\"len\": 205}},{\"id\": 5,\"required\": 1,\"data\":{\"type\": 1,\"len\": 140}}]}}",
            "ver": "1.1"
        },
        "instl": 0,
        "secure": 0,
        "ext": {
            "appnexus": {
                "estimated_clear_price": 11.644000,
                "member_ad_profile_id": 667317,
                "predicted_view_rate_over_total": 0.000000
            }
        }
    }],
    "app": {
        "id": "1234",
        "bundle": "com.news.example"
    },
    "device": {
        "ua": "iPad; OS like Mac OS X; iOS 9.2; STR 2.2.4",
        "geo": {
            "country": "USA",
            "city": "Wilmington",
            "zip": "01887"
        },
        "dnt": 0,
        "ip": "198.51.100.2",
        "devicetype": 1,
        "make": "Apple",
        "model": "iPad",
        "os": "Apple iOS",
        "connectiontype": 0
    },
    "user": {
        "id": "2233445566",
        "data": [{
            "id": "0",
            "segment": [{
                "id": "1",
                "value": "0"
            }]
        }],
        "ext": {
            "appnexus": {
                "userdata_json": "{}"
            }
        }
    },
    "test": 0,
    "at": 2,
    "tmax": 2000,
    "wseat": [
        "1234"
    ],
    "cur": [
        "USD"
    ],
    "ext": {
        "appnexus": {
            "seller_member_id": 1234
        },
        "schain": {
            "complete": 1,
            "nodes": [{
                "asi": "appnexus.com",
                "sid": "1234",
                "rid": "25e2b11c-004f-4903-a912-5aef7732096b",
                "hp": 1
            }],
            "ver": "1.0"
        }
    }
}
```





**MultiMedia Bid Request**  **(To ensure your bidder is configured to
receive these requests, please open a support case).**

``` pre
{
    "id": "914181541748747384",
    "imp": [{
        "id": "837746433617288491",
        "banner": {
            "w": 320,
            "h": 250,
            "id": "1",
            "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
            "pos": 0,
            "api": [3, 5],
            "format": [{
                "w": 320,
                "h": 250
            }, {
                "w": 1,
                "h": 1
            }, {
                "w": 1,
                "h": 1
            }]
        },
        "native": {
            "request": "{\"ver\":\"1.2\",\"plcmtcnt\":1,\"assets\":[{\"id\":7,\"required\":0,\"img\":{\"type\":3}},{\"id\":8,\"required\":0,\"img\":{\"type\":1}},{\"id\":1,\"required\":0,\"title\":{\"len\":100}},{\"id\":2,\"required\":0,\"data\":{\"type\":2,\"len\":300}},{\"id\":3,\"required\":0,\"data\":{\"type\":12,\"len\":20}},{\"id\":4,\"required\":0,\"data\":{\"type\":1}},{\"id\":5,\"required\":0,\"data\":{\"type\":3}}],\"plcmttype\":4,\"eventtrackers\":[{\"event\":1,\"methods\":[1]}]}",
            "ver": "1.2"
        },
        "instl": 0,
        "tagid": "12345678",
        "secure": 1,
        "pmp": {
            "private_auction": 0,
            "deals": [{
                "id": "345667",
                "bidfloor": 4,
                "bidfloorcur": "USD",
                "at": 2,
                "wseat": ["1234"],
                "ext": {
                    "appnexus": {
                        "sizes": [{
                            "w": 1,
                            "h": 1
                        }, {
                            "w": 320,
                            "h": 250
                        }]
                    }
                }
            }, {
                "id": "345678",
                "bidfloor": 3,
                "bidfloorcur": "USD",
                "at": 2,
                "wseat": ["1234"],
                "ext": {
                    "appnexus": {
                        "sizes": [{
                            "w": 1,
                            "h": 1
                        }, {
                            "w": 320,
                            "h": 250
                        }]
                    }
                }
            }]
        },
        "ext": {
            "appnexus": {
                "estimated_clear_price": 10.72,
                "predicted_view_rate": 0.784599,
                "member_ad_profile_id": 23456,
                "predicted_video_completion_rate": 0,
                "predicted_view_rate_over_total": 0.764223,
                "allowed_payment_types": [{
                    "payment_type": 1,
                    "imp_count_method": 2
                }]
            }
        }
    }],
    "app": {
        "id": "3840770",
        "name": "FunAPP",
        "bundle": "no.funapp.android",
        "publisher": {
            "id": "123567"
        }
    },
    "device": {
        "ua": "Mozilla/5.0 (Linux; Android 9; SM-G965F Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/74.0.3729.157 Mobile Safari/537.36",
        "geo": {
            "country": "NOR",
            "region": "02",
            "metro": "2435",
            "city": "Hakadal",
            "zip": "1487",
            "utcoffset": 120,
            "ext": {
                "appnexus": {
                    "timezone": "Europe/Oslo"
                }
            }
        },
        "lmt": 0,
        "ip": "123.23.100.5",
        "devicetype": 4,
        "make": "Samsung",
        "model": "SM-G965F",
        "os": "Android",
        "connectiontype": 0,
        "ifa": "0b3979c6-9c84-4359-a5e6-ee6565048fde",
        "ext": {
            "ifa_type": "aaid"
        }
    },
    "user": {
        "id": "4038657820804547795",
        "buyeruid": "S5670DGCSRG"
    },
    "at": 2,
    "tmax": 100,
    "wseat": ["3456"],
    "cur": ["USD"],
    "bcat": ["IAB9-9", "IAB8-5", "IAB8-18"],
    "badv": ["some_advertiser_domain.com"],
    "regs": {
        "coppa": 0
    },
    "source": {
        "fd": 0,
        "tid": "5676d767-e8b8-43b1-b7bf-fd6056b65018"
    },
    "ext": {
        "appnexus": {
            "seller_member_id": 1234,
            "publisher_integration": {
                "is_header": 0
            }
        },
        "schain": {
                "complete": 1,
                "nodes": [{
                    "asi": "appnexus.com",
                    "sid": "1234",
                    "rid": "5676d767-e8b8-43b1-b7bf-fd6056b65018",
                    "hp": 1
                }],
                "ver": "1.0"
            }
    }
}
```





**MultiTag Bid Request**

``` pre
{
    "id": "5698201228871522665",
    "imp": [{
            "id": "13529449707735835",
            "banner": {
                "w": 300,
                "h": 250,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 300,
                    "h": 250
                }]
            },
            "instl": 0,
            "tagid": "123456",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 0.5,
                    "member_ad_profile_id": 1234,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        },
        {
            "id": "2460698130037038280",
            "banner": {
                "w": 580,
                "h": 400,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 580,
                    "h": 400
                }, {
                    "w": 580,
                    "h": 500
                }]
            },
            "instl": 0,
            "tagid": "123457",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 12.4,
                    "member_ad_profile_id": 1235,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        }, {
            "id": "5610871170052394076",
            "banner": {
                "w": 580,
                "h": 400,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 580,
                    "h": 400
                }, {
                    "w": 580,
                    "h": 500
                }]
            },
            "instl": 0,
            "tagid": "123478",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 11.14,
                    "member_ad_profile_id": 8765,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        }, {
            "id": "9057531734780521319",
            "banner": {
                "w": 580,
                "h": 400,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 580,
                    "h": 400
                }, {
                    "w": 580,
                    "h": 500
                }]
            },
            "instl": 0,
            "tagid": "677",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 11.31,
                    "member_ad_profile_id": 65987,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        }, {
            "id": "7953238633763561522",
            "banner": {
                "w": 160,
                "h": 600,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 160,
                    "h": 600
                }]
            },
            "instl": 0,
            "tagid": "987345",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 18.91,
                    "member_ad_profile_id": 12345,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        }, {
            "id": "6528429208551730965",
            "banner": {
                "w": 980,
                "h": 300,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 980,
                    "h": 300
                }, {
                    "w": 580,
                    "h": 400
                }, {
                    "w": 580,
                    "h": 500
                }]
            },
            "instl": 0,
            "tagid": "34546",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 8.58,
                    "member_ad_profile_id": 3456,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        }, {
            "id": "8731177004555232453",
            "banner": {
                "w": 160,
                "h": 600,
                "id": "1",
                "battr": [1, 2, 3, 4, 5, 9, 10, 12, 14],
                "pos": 0,
                "format": [{
                    "w": 160,
                    "h": 600
                }, {
                    "w": 180,
                    "h": 500
                }, {
                    "w": 180,
                    "h": 700
                }]
            },
            "instl": 0,
            "tagid": "345637",
            "secure": 1,
            "ext": {
                "appnexus": {
                    "estimated_clear_price": 8.78,
                    "member_ad_profile_id": 34567,
                    "allowed_payment_types": [{
                        "payment_type": 1,
                        "imp_count_method": 2
                    }]
                }
            }
        }
    ],
    "site": {
        "id": "346789",
        "domain": "xandr.com",
        "cat": ["IAB12", "IAB12-2", "IAB11-5"],
        "page": "xandr.com",
        "publisher": {
            "id": "876543"
        }
    },
    "device": {
        "ua": "Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-G950U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/10.1 Chrome/71.0.3578.99 Mobile Safari/537.36",
        "geo": {
            "country": "USA",
            "region": "FL",
            "metro": "539",
            "city": "Tampa",
            "zip": "33617",
            "utcoffset": -240,
            "ext": {
                "appnexus": {
                    "timezone": "America/Indiana/Vevay"
                }
            }
        },
        "dnt": 0,
        "ip": "173.168.163.240",
        "devicetype": 2,
        "make": "Samsung",
        "model": "SM-G950U",
        "os": "Android",
        "language": "en",
        "connectiontype": 0,
        "ext": {}
    },
    "user": {
        "id": "6535227187230073444",
        "buyeruid": "a_dsp_user_id",
        "at": 1,
        "tmax": 100,
        "wseat": ["1417"],
        "cur": ["USD"],
        "regs": {
            "coppa": 0
        },
        "source": {
            "fd": 0,
            "tid": "0edd5bae-91e7-4723-9f6b-21e942b623ce"
        },
        "ext": {
            "appnexus": {
                "seller_member_id": 958,
                "publisher_integration": {
                    "is_header": 0
                }
            },
            "schain": {
                "complete": 1,
                "nodes": [{
                    "asi": "appnexus.com",
                    "sid": "958",
                    "rid": "0edd5eab-91e7-4723-9f6b-21e912b623ce",
                    "hp": 1
                }],
                "ver": "1.0"
            }
        }
    }
}
```






