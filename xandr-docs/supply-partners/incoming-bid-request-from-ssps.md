# Incoming Bid Request from SSPs

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This describes
<span class="ph">Xandr</span>'s integration with the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB 2.4 protocol</a>.

This Bid Request is sent by SSPs and contains information on which
advertisers and creatives are allowed to win an auction.
<span class="ph">Xandr</span> will produce a <a
href="https://docs.xandr.com/bundle/supply-partners/page/outgoing-bid-response-to-ssps.html"
class="xref" target="_blank">Bid Response</a> that contains a bid price
and a creative to serve.

</div>

<div class="section">

## Implementation

**Endpoints**

You will receive one or more endpoints that you can use to `POST` bid
requests. Please contact your <span class="ph">Xandr</span>
representative to receive your endpoints.

Endpoints will generally look like the following:

``` pre
https://seller-region.adnxs.com/openrtb2?member_id=YOUR_MEMBER_ID
```

- `member_id` is required; this is your member ID on the
  <span class="ph">Xandr</span> platform. This ID will be provided by
  <span class="ph">Xandr</span> during integration.
- You will receive one endpoint for each region in which you operate.
  Possible regions include: `us-east`, `us-west`, `emea`, and `apac`.

Any other query string value will be ignored.

**Bid Request Object**

<div id="ID-000017a1__note_kmm_vjg_nwb" class="note">

<span class="notetitle">Note:</span> The `tmax` field is not supported.
Please speak with your Integrations Consultant to configure auction
timeout limits. **Multi-format impressions** are not supported. The
format's precedence if we receive multi-format impression is as
following:

- video
- audio
- banner
- native

</div>

<span class="ph">Xandr</span> supports the following fields in the
top-level bid request object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e163" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e166" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e169" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e166 ">string</td>
<td class="entry cellborder"
headers="d15931e169 ">(Required) Used to pass back the seller's auction
ID in the bid response.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">imp</code></td>
<td class="entry cellborder"
headers="d15931e166 ">array of objects</td>
<td class="entry cellborder"
headers="d15931e169 ">(Required) The impressions offered in this bid
request. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__impression_object"
class="xref">Impression Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">site</code></td>
<td class="entry cellborder"
headers="d15931e166 ">object</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies information about the website or subset
of inventory (placement group) for the impressions. Applicable for
website impressions. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__site_object"
class="xref">Site Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">app</code></td>
<td class="entry cellborder"
headers="d15931e166 ">object</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies information about the app for the
impressions. Applicable for app impressions. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__app_object"
class="xref">App Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">device</code></td>
<td class="entry cellborder"
headers="d15931e166 ">object</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies information about the user's device to
which these impressions will be delivered. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__device_object"
class="xref">Device Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">user</code></td>
<td class="entry cellborder"
headers="d15931e166 ">object</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies information about the person to whom the
impressions will be delivered. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__user_object"
class="xref">User Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">test</code></td>
<td class="entry cellborder"
headers="d15931e166 ">integer</td>
<td class="entry cellborder"
headers="d15931e169 ">Indicates that this auction is in test mode and is
not billable. If not present, default is used.
<ul>
<li><code class="ph codeph">0</code>: live mode; billable (default)</li>
<li><code class="ph codeph">1</code>: test mode; not billable</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">wseat</code></td>
<td class="entry cellborder"
headers="d15931e166 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies an array representing a allowlist of
buyer seats allowed to bid on this impression. If omitted, there are no
seat restrictions for this impression.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">cur</code></td>
<td class="entry cellborder"
headers="d15931e166 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies an array of allowed currencies for bids
on this impression. USD is assumed by default.
<div class="note">
<span class="notetitle">Note:</span> By default, this field is NOT
supported. Please speak with your Integrations Consultant if you would
like to be enabled for bids non-USD currencies.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">bcat</code></td>
<td class="entry cellborder"
headers="d15931e166 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies a list of blocked content categories.
Can include both IAB categories (listed in section 5.1 of the
specification) and <span class="ph">Xandr</span> category ID values.
<span class="ph">Xandr</span> categories are in this format <code
class="ph codeph">APN-</code><em><code class="ph codeph">ID</code></em>
where ID is the <span class="ph">Xandr</span> category ID; for example,
<code class="ph codeph">APN-13</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">badv</code></td>
<td class="entry cellborder"
headers="d15931e166 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies a list of blocked top-level advertiser
domains that correspond to brand URLs in the <span
class="ph">Xandr</span> system. For example, <code
class="ph codeph">["</code><a href="https://company1.com" class="xref"
target="_blank"><code class="ph codeph">company1.com</code></a><code
class="ph codeph">","</code><a href="http://company2.com" class="xref"
target="_blank"><code class="ph codeph">company2.com</code></a><code
class="ph codeph">"]</code>. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/brand-service.html"
class="xref" target="_blank">Brand Service</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">regs</code></td>
<td class="entry cellborder"
headers="d15931e166 ">object</td>
<td class="entry cellborder"
headers="d15931e169 ">Specifies information about an industry, legal, or
governmental regulation in force for this request. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__regs_object"
class="xref">Regs Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e163 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e166 ">object</td>
<td class="entry cellborder"
headers="d15931e169 ">Used for identifying <span
class="ph">Xandr</span>-specific extensions to the OpenRTB bid request.
See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__bid_request_extension_object"
class="xref">Bid Request Extension Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**Bid Request Extension Object**

<span class="ph">Xandr</span> supports the follow objects in the `ext`
object to support <span class="ph">Xandr</span>-specific extensions as
well as supply-chain signals:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e460" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e463" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e466" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e460 "><span class="ph"><code
class="ph codeph">appnexus</code></span></td>
<td class="entry cellborder"
headers="d15931e463 ">object</td>
<td class="entry cellborder"
headers="d15931e466 ">Specifies the <span
class="ph">Xandr</span>-specific extensions to the OpenRTB bid
request.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e460 "><code class="ph codeph">schain</code></td>
<td class="entry cellborder"
headers="d15931e463 ">object</td>
<td class="entry cellborder"
headers="d15931e466 ">Specifies the SupplyChain fields included in the
OpenRTB bid request for supply path transparency. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__schain_object"
class="xref">Schain Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**<span class="ph">Xandr</span> Object**

<span class="ph">Xandr</span> supports the following fields in the
<span class="ph">`appnexus`</span> extension object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e539" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e542" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e545" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e539 "><code class="ph codeph">anid</code></td>
<td class="entry cellborder"
headers="d15931e542 ">integer</td>
<td class="entry cellborder"
headers="d15931e545 ">Specifies the <span class="ph">Xandr</span> User
ID. If a value is set here, it overrides the <code
class="ph codeph">buyeruid</code> in the <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__user_object"
class="xref">User Object</a>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e539 "><code
class="ph codeph">markup_delivery</code></td>
<td class="entry cellborder"
headers="d15931e542 ">enum</td>
<td class="entry cellborder"
headers="d15931e545 ">Specifies how ad markup will be received. This
applies only to banner, video, and audio objects.
<ul>
<li><code class="ph codeph">0: ADM</code>: markup will be delivered in
the <code class="ph codeph">adm</code> field of the bid response
(default)</li>
<li><code class="ph codeph">1: nurl</code>: markup will be delivered in
the winning bid notification</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

**Schain Object**

<span class="ph">Xandr</span> supports the following fields in
the `schain` (Supply Chain) object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e633" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e636" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e639" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e633 "><code class="ph codeph">ver</code></td>
<td class="entry cellborder"
headers="d15931e636 ">string</td>
<td class="entry cellborder"
headers="d15931e639 ">Version of the supply chain specification in use,
in the format of “major.minor”. Currently using version 1.0 of the
spec.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e633 "><code class="ph codeph">complete</code></td>
<td class="entry cellborder"
headers="d15931e636 ">enum</td>
<td class="entry cellborder"
headers="d15931e639 ">Flag indicating whether the chain contains all
nodes involved in the transaction leading back to the owner of the site,
app or other medium of the inventory, where 0 = no, 1 = yes.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e633 "><code class="ph codeph">nodes</code></td>
<td class="entry cellborder"
headers="d15931e636 ">object</td>
<td class="entry cellborder"
headers="d15931e639 ">Array of SupplyChainNode objects in the order of
the chain. In a complete supply chain, the first node represents the
initial advertising system and seller ID involved in the transaction,
i.e. the owner of the site, app, or other medium. In an incomplete
supply chain, it represents the first known node. The last node
represents the entity sending this bid request, which will be the <span
class="ph">Xandr</span> node.
<p> <span class="ph">Xandr</span> supports the following fields in
the nodes object (NOTE: In order for a node to be considered complete,
the following fields must be included in the node object):</p>
<ul>
<li><strong>asi</strong> (mandatory string): The canonical domain name
of the SSP, Exchange, Header Wrapper, etc system that bidders connect
to. This should be the same value as used to identify sellers in an
ads.txt file if one exists.</li>
<li><strong>sid</strong> (mandatory string): The identifier associated
with the seller or reseller account within the advertising system.</li>
<li><strong>rid</strong> (optional string): The OpenRTB RequestId of the
request as issued by the seller.</li>
<li><strong>hp</strong> (mandatory integer): Indicates whether this node
will be involved in the flow of payment for the inventory. For version
1.0 of SupplyChain, this property should always be 1</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

**Impression Object**

<span class="ph">Xandr</span> supports the following fields in the `imp`
object, which describe the impression being auctioned. A single bid
request may contain an array with multiple `imp` objects.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e747" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e750" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e753" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e750 ">string</td>
<td class="entry cellborder"
headers="d15931e753 ">(Required) Specifies a unique identifier for this
impression within the context of the bid request.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">banner</code></td>
<td class="entry cellborder"
headers="d15931e750 ">object</td>
<td class="entry cellborder"
headers="d15931e753 ">Required if this impression is offered as a banner
ad. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__banner_object"
class="xref">Banner Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">video</code></td>
<td class="entry cellborder"
headers="d15931e750 ">object</td>
<td class="entry cellborder"
headers="d15931e753 ">Required if this impression is offered as a video
ad. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__video_object"
class="xref">Video Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">audio</code></td>
<td class="entry cellborder"
headers="d15931e750 ">object</td>
<td class="entry cellborder"
headers="d15931e753 ">Required if this impression is offered as an audio
ad. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__audio_object"
class="xref">Audio Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">native </code></td>
<td class="entry cellborder"
headers="d15931e750 ">object</td>
<td class="entry cellborder"
headers="d15931e753 ">Required if this impression is offered as a native
ad. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__native_object"
class="xref">Native Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e747 "><code
class="ph codeph">displaymanagerver</code></td>
<td class="entry cellborder"
headers="d15931e750 ">string</td>
<td class="entry cellborder"
headers="d15931e753 ">Specifies the version of ad mediation partner, SDK
technology, or player responsible for rendering the ad (typically video
or mobile).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">instl</code></td>
<td class="entry cellborder"
headers="d15931e750 ">integer</td>
<td class="entry cellborder"
headers="d15931e753 ">Indicates whether the impression is interstitial
or full screen.
<ul>
<li><code class="ph codeph">0</code>: the impression is not interstitial
or full screen (default)</li>
<li><code class="ph codeph">1</code> the impression is interstitial or
full screen</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">tagid</code></td>
<td class="entry cellborder"
headers="d15931e750 ">string</td>
<td class="entry cellborder"
headers="d15931e753 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. <strong>If
set, this is the <span class="ph">Xandr</span> placement code</strong>.
Omitted when sending to buyers if seller visibility settings prohibit
sharing.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">secure</code></td>
<td class="entry cellborder"
headers="d15931e750 ">integer</td>
<td class="entry cellborder"
headers="d15931e753 ">Indicates whether the impression requires secure
HTTPS URL creative assets and markup. If omitted, the secure state is
unknown but non-secure HTTP support can be assumed.
<ul>
<li><code class="ph codeph">0</code>: the impression is not secure</li>
<li><code class="ph codeph">1</code> the impression is secure</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">bidfloor</code></td>
<td class="entry cellborder"
headers="d15931e750 ">float</td>
<td class="entry cellborder"
headers="d15931e753 ">Minimum bid for this impression expressed in CPM.
<div class="note">
<span class="notetitle">Note:</span> The <code
class="ph codeph">bidfloor</code> field should be the publisher's net
CPM floor price on incoming ad requests. This floor price must be
greater than the existing hard floor, set on the platform, in order to
override it for the given auction.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">bidfloorcur</code></td>
<td class="entry cellborder"
headers="d15931e750 ">string</td>
<td class="entry cellborder"
headers="d15931e753 ">Specifies the currency for this bid using ISO-4217
alphabetic codes. Defaults to <code class="ph codeph">USD</code> if not
specified.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">pmp</code></td>
<td class="entry cellborder"
headers="d15931e750 ">object</td>
<td class="entry cellborder"
headers="d15931e753 ">Specifies information about a private marketplace
deal that is in effect for this impression. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__private_marketplace_object"
class="xref">Private Marketplace Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e747 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e750 ">object</td>
<td class="entry cellborder"
headers="d15931e753 ">Used for identifying <span
class="ph">Xandr</span>-specific extensions to the impression object.
See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__impression_extension_object"
class="xref">Impression Extension Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**Impression Extension Object**

<span class="ph">Xandr</span> supports a single object in the
`impression` object's `ext` object to support
<span class="ph">Xandr</span>-specific extensions:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1032" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e1035" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e1038" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1032 "><span class="ph"><code
class="ph codeph">appnexus</code></span></td>
<td class="entry cellborder"
headers="d15931e1035 ">object</td>
<td class="entry cellborder"
headers="d15931e1038 ">Specifies the <span
class="ph">Xandr</span>-specific extensions to the impression
object.</td>
</tr>
</tbody>
</table>

</div>

**<span class="ph">Xandr</span> Object**

<span class="ph">Xandr</span> supports the following field in the
<span class="ph">`appnexus`</span> extension object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1091" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d15931e1094" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d15931e1097" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d15931e1091 "><code
class="ph codeph">predicted_view_rate</code></td>
<td class="entry -nocellborder"
headers="d15931e1094 ">double</td>
<td class="entry cellborder"
headers="d15931e1097 ">Specifies the probability that the impression
will be viewable by the user, based on historical data.</td>
</tr>
</tbody>
</table>

</div>

** Banner Object**

For banner impressions, <span class="ph">Xandr</span> supports the
following fields:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1145" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e1148" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e1151" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">w</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">integer</td>
<td class="entry cellborder"
headers="d15931e1151 ">(Recommended) Specifies the exact width of the
banner in pixels. Must be set if the placement object in <span
class="ph">Xandr</span> does not have a width set.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">h</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">integer</td>
<td class="entry cellborder"
headers="d15931e1151 ">(Recommended) Specifies the exact height of the
banner in pixels. Must be set if the placement object in <span
class="ph">Xandr</span> does not have a height set.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">btype</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1151 ">Specifies the banner creative types to block.
Refer to section 5.2 of the IAB specification for a list of types.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">battr</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1151 ">Specifies the banner creative attributes to
block. Refer to section 5.3 of the IAB specification for a list of
attributes.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">pos</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">integer</td>
<td class="entry cellborder"
headers="d15931e1151 ">Specifies the position of the banner on the
screen. Currently supported values are:
<ul>
<li><code class="ph codeph">0</code>: Unknown (default)</li>
<li><code class="ph codeph">1</code>: Above the fold</li>
<li><code class="ph codeph">3</code>: Below the fold</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">api</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1151 ">Specifies the supported API frameworks for this
impression. Parsed, but not used. If an API is not explicitly listed,
vpaid support is deduced from mime types sent:  VPAID 1 and 2 would be
allowed for javascript and flash mimes. Refer to section 5.6 of the IAB
specification for a list of API frameworks.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1145 "><code class="ph codeph">format</code></td>
<td class="entry cellborder"
headers="d15931e1148 ">object array</td>
<td class="entry cellborder"
headers="d15931e1151 ">Array of format objects representing the banner
sizes permitted. If none are specified, then use of the h and w
attributes is highly recommended.</td>
</tr>
</tbody>
</table>

</div>

**Format Object**

<div class="note">

<span class="notetitle">Note:</span> The `banner.w` and `banner.h`
fields are still required when using the `format` object, which should
be used to specify additional sizes.

</div>

<span class="ph">Xandr</span> supports the following field in
the `format` object of the `banner` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1317" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e1320" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e1323" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1317 "><code class="ph codeph">w</code></td>
<td class="entry cellborder"
headers="d15931e1320 ">integer</td>
<td class="entry cellborder"
headers="d15931e1323 ">Specifies the width of the creative, in
pixels.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1317 "><code class="ph codeph">h</code></td>
<td class="entry cellborder"
headers="d15931e1320 ">integer</td>
<td class="entry cellborder"
headers="d15931e1323 ">Specifies the height of the creative, in
pixels.</td>
</tr>
</tbody>
</table>

</div>

**Video Object**

For video impressions, <span class="ph">Xandr</span> supports the
following fields:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1384" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e1387" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e1390" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">mimes </code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e1390 ">(Required) Specifies the video content MIME types
supported; for example, <code class="ph codeph">video/x-ms-wmv</code>
and <code class="ph codeph">video/x-flv</code>. If not specified, any
MIME type is allowed.
<div class="note">
<span class="notetitle">Note:</span> <code
class="ph codeph">application/x-shockwave-flash</code>and <code
class="ph codeph">application/javascript</code> are VPAID formats. You
should select these MIME types only if your placement supports VPAID.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">minduration </code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">(Recommended) Specifies the minimum video ad
duration, in seconds.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">maxduration </code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">(Recommended) Specifies the maximum video ad
duration, in seconds.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">w</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">(Recommended) Specifies the width of the video
player, in pixels.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">h</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">(Recommended) Specifies the height of the video
player, in pixels.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">startdelay</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">(Recommended) Specifies the start delay of the
video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">battr</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the video creative attributes to block.
Refer to section 5.3 of the IAB specification for a list of
attributes.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">minbitrate</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the minimum bit rate, in kilobytes per
second. If specified, only return creatives having at least one media
file within the appropriate bit range.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">maxbitrate</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the maximum bit rate, in kilobytes per
second. If specified, only return creatives having at least one media
file within the appropriate bit range.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code
class="ph codeph">playbackmethod</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the allowed playback methods. If not
specified, all are assumed to be allowed. Currently supported values
are:
<ul>
<li><code class="ph codeph">1</code>: Autoplay, sound on</li>
<li><code class="ph codeph">2</code>: Autoplay, sound off</li>
<li><code class="ph codeph">3</code>: Click to play</li>
<li><code class="ph codeph">4</code>: Mouse over to play</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">pos</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">integer</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the position of the video on the
screen. Currently supported values are:
<ul>
<li><code class="ph codeph">0</code>: Unknown (default)</li>
<li><code class="ph codeph">1</code>: Above the fold</li>
<li><code class="ph codeph">3</code>: Below the fold</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">companionad</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of objects</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies an array of banner objects if companion
ads are available. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__banner_object"
class="xref">Banner Object</a> above.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">api</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the supported API frameworks for this
impression. If an API is not explicitly listed, it is assumed not to be
supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
<li><code class="ph codeph">6</code>: MRAID-3</li>
<li><code class="ph codeph">7</code>: OMID-1</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">companiontype</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1390 ">Specifies the VAST companion ad types.
Recommended if one or more <code class="ph codeph">companionad</code>
objects are included. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: Static resource</li>
<li><code class="ph codeph">2</code>: HTML resource</li>
<li><code class="ph codeph">3</code>: iframe resource</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">protocols</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1390 ">Array of supported video protocols of the
creative types that are eligible. Following are the currently supported
values:
<ul>
<li><code class="ph codeph">1</code>: VAST 1.0</li>
<li><code class="ph codeph">2</code>: VAST 2.0</li>
<li><code class="ph codeph">3</code>: VAST 3.0</li>
<li><code class="ph codeph">4</code>: VAST 1.0 Wrapper</li>
<li><code class="ph codeph">5</code>: VAST 2.0 Wrapper</li>
<li><code class="ph codeph">6</code>: VAST 3.0 Wrapper</li>
<li><code class="ph codeph">7</code>: VAST 4.0</li>
<li><code class="ph codeph">8</code>: DAAST 1.0  </li>
</ul>
<div class="note warning">
<span class="warningtitle">Warning:</span> As <span
class="ph">Xandr</span> does not verify DAAST compliance in creatives,
requests that exclusively support DAAST values in <code
class="ph codeph">protocols</code> will not result in any bids.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1384 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e1387 ">object</td>
<td class="entry cellborder"
headers="d15931e1390 ">Used for identifying <span
class="ph">Xandr</span>-specific extensions to the video object. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__video_extension_object"
class="xref">Video Extension Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**Video Extension Object**

<span class="ph">Xandr</span> supports a single object in the `video`
object's `ext` object to support <span class="ph">Xandr</span>-specific
extensions:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1837" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e1840" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e1843" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1837 "><span class="ph"><code
class="ph codeph">appnexus</code></span></td>
<td class="entry cellborder"
headers="d15931e1840 ">object</td>
<td class="entry cellborder"
headers="d15931e1843 ">Specifies the <span
class="ph">Xandr</span>-specific extensions to the video object.</td>
</tr>
</tbody>
</table>

</div>

**<span class="ph">Xandr</span> Object**

<span class="ph">Xandr</span> supports the following field in the
<span class="ph">`appnexus`</span> extension object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1900" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d15931e1903" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d15931e1906" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d15931e1900 "><code class="ph codeph">context</code></td>
<td class="entry -nocellborder"
headers="d15931e1903 ">integer</td>
<td class="entry cellborder"
headers="d15931e1906 ">Specifies the video context:
<ul>
<li><code class="ph codeph">0</code>: Unknown</li>
<li><code class="ph codeph">1</code>: Pre-roll</li>
<li><code class="ph codeph">2</code>: Mid-roll</li>
<li><code class="ph codeph">3</code>: Post-roll</li>
<li><code class="ph codeph">4</code>: Outstream</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

**Audio Object**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e1974" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e1977" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e1980" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">mimes </code></td>
<td class="entry cellborder"
headers="d15931e1977 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e1980 ">(Required) Specifies the audio content MIME types
supported; for example, <code class="ph codeph">audio/vnd.wav</code>,
<code class="ph codeph">audio/mpeg</code>, <code
class="ph codeph">audio/mp4</code>, <code
class="ph codeph">audio/ogg</code>, or <code
class="ph codeph">audio/mp2</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">minduration</code> </td>
<td class="entry cellborder"
headers="d15931e1977 ">integer</td>
<td class="entry cellborder"
headers="d15931e1980 ">(Recommended) Specifies the minimum audio ad
duration, in seconds.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">maxduration</code> </td>
<td class="entry cellborder"
headers="d15931e1977 ">integer</td>
<td class="entry cellborder"
headers="d15931e1980 ">(Recommended) Specifies the maximum audio ad
duration, in seconds.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">startdelay</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">integer</td>
<td class="entry cellborder"
headers="d15931e1980 ">(Recommended) Specifies the start delay of the
audio ad:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before audio start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll (delay
unknown)</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">battr</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1980 ">Specifies the audio creative attributes to block.
<span class="ph">Xandr</span> supports:
<ul>
<li><code class="ph codeph">11</code>: Surveys</li>
<li><code class="ph codeph">16</code>: Ad Provides Skip Button</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">minbitrate</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">integer</td>
<td class="entry cellborder"
headers="d15931e1980 ">The minimum bit rate, in kilobytes per
second.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">maxbitrate</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">integer</td>
<td class="entry cellborder"
headers="d15931e1980 ">The maximum bit rate, in kilobytes per
second.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">companionad</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">array of objects</td>
<td class="entry cellborder"
headers="d15931e1980 ">Specifies an array of banner objects if companion
ads are available. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__banner_object"
class="xref">Banner Object</a> above.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">api</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1980 ">Specifies the supported API frameworks for this
impression. If an API is not explicitly listed, it is assumed not to be
supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">companiontype</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1980 ">Specifies the DAAST companion ad types.
Recommended if one or more <code class="ph codeph">companion ad</code>
banner objects are included. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: Static resource</li>
<li><code class="ph codeph">2</code>: HTML resource</li>
<li><code class="ph codeph">3</code>: iframe resource</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e1974 "><code class="ph codeph">protocols</code></td>
<td class="entry cellborder"
headers="d15931e1977 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e1980 ">Array of supported audio protocols. Currently
supported values are:
<ul>
<li><code class="ph codeph">1</code>: VAST 1.0</li>
<li><code class="ph codeph">2</code>: VAST 2.0</li>
<li><code class="ph codeph">3</code>: VAST 3.0</li>
<li><code class="ph codeph">4</code>: VAST 1.0 Wrapper</li>
<li><code class="ph codeph">5</code>: VAST 2.0 Wrapper</li>
<li><code class="ph codeph">6</code>: VAST 3.0 Wrapper</li>
<li><code class="ph codeph">7</code>: VAST 4.0</li>
<li><code class="ph codeph">8</code>: DAAST 1.0</li>
</ul>
<div class="note warning">
<span class="warningtitle">Warning:</span> As <span
class="ph">Xandr</span> does not verify DAAST compliance in creatives,
requests that exclusively support DAAST values in <code
class="ph codeph">protocols</code> will not result in any bids.
</div></td>
</tr>
</tbody>
</table>

</div>

**Native Object**

For native impressions, <span class="ph">Xandr</span> supports the
following field:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e2316" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e2319" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e2322" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2316 "><code class="ph codeph">request</code></td>
<td class="entry cellborder"
headers="d15931e2319 ">string</td>
<td class="entry cellborder"
headers="d15931e2322 ">The rendered creative markup to be delivered;
native creatives can be returned in this field as a JSON-encoded string.
<p>Native 1.0 Example:</p>
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;native\&quot;:{\&quot;ver\&quot;:\&quot;1.0\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
<p>Native 1.1 Example:</p>
<div class="note">
<span class="notetitle">Note:</span> the main difference of the two
versions is the removal of "native" in the request object.
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;ver\&quot;:\&quot;1.1\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
</div>
<p>Native 1.2 Example:</p>
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;ver\&quot;:\&quot;1.2\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2316 "><code class="ph codeph">ver</code></td>
<td class="entry cellborder"
headers="d15931e2319 ">string</td>
<td class="entry cellborder"
headers="d15931e2322 ">Version of the Native Markup version in use.
<p><span class="ph">Xandr</span> currently supports the following native
versions:</p>
<ul>
<li>1.0</li>
<li>1.1</li>
<li>1.2</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> Required if using 1.1 or 1.2. If no
version is submitted, then we will default to 1.0.
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="note">

<span class="notetitle">Note:</span> For more information on different
OpenRTB Native Ad specifications, go to

- <a
  href="supply-partners/attachments/OpenRTB-Native-Ads-Specification-1_0-Final.pdf"
  class="xref" target="_blank">Specifications for v1.0</a>
- <a
  href="supply-partners/attachments/OpenRTB-Native-Ads-Specification-1-1_2016.pdf"
  class="xref" target="_blank">Specifications for v1.1</a>
- <a
  href="supply-partners/attachments/OpenRTB-Native-Ads-Specification-Final-1.2.pdf"
  class="xref" target="_blank">Specifications for v1.2</a>

Follow the above specifications and pass the necessary **required**
fields in the mentioned objects such as asset ID (`id`) in
the <a href="incoming-bid-request-from-ssps.html#ID-000017a1__asset_object"
class="xref">Asset Object</a> described below.

</div>

**Request Object**

<span class="ph">Xandr</span> supports the following fields in
the `request` object in the `native` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e2450" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e2453" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e2456" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2450 "><code class="ph codeph">ver</code></td>
<td class="entry cellborder"
headers="d15931e2453 ">string</td>
<td class="entry cellborder"
headers="d15931e2456 ">Version of the Native Markup version in use.
<p><span class="ph">Xandr</span> currently supports the following native
version:</p>
<ul>
<li>1.0</li>
<li>1.1</li>
<li>1.2</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> If no version is submitted, then we
will default to 1.0.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2450 "><code class="ph codeph">plcmttype</code></td>
<td class="entry cellborder"
headers="d15931e2453 ">integer</td>
<td class="entry cellborder"
headers="d15931e2456 ">The design/format/layout of the ad unit being
offered. <span class="ph">Xandr</span> supports the following:
<ul>
<li><code class="ph codeph">0</code>: none</li>
<li><code class="ph codeph">1</code>: In the feed of content</li>
<li><code class="ph codeph">4</code>: Recommendation widget</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> This field is only for Native
version 1.1 and 1.2.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2450 "><code class="ph codeph">privacy</code></td>
<td class="entry cellborder"
headers="d15931e2453 ">boolean</td>
<td class="entry cellborder"
headers="d15931e2456 ">Flag to indicate if the seller supports a
buyer-specific privacy notice.
<ul>
<li><code class="ph codeph">0 or absent</code>: The native ad doesn't
support custom privacy links.</li>
<li><code class="ph codeph">1</code>: The native ad supports
buyer-specific privacy notice.</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> If privacy is <code
class="ph codeph">0 or absent</code>, then <span class="ph">Xandr</span>
will not return a privacy link regardless of whether the buyer sent it.
If privacy is <code class="ph codeph">1</code>, then <span
class="ph">Xandr</span> will only send the privacy link if the buyer
provides it.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2450 "><code class="ph codeph">assets</code></td>
<td class="entry cellborder"
headers="d15931e2453 ">array of objects</td>
<td class="entry cellborder"
headers="d15931e2456 ">An array of Asset Objects.</td>
</tr>
</tbody>
</table>

</div>

** Asset Object**

<span class="ph">Xandr</span> supports the following fields to define
one or more `asset` objects in the `native` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e2613" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e2616" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e2619" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2613 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e2616 ">integer</td>
<td class="entry cellborder"
headers="d15931e2619 ">Specifies a unique identifier for the asset in
this bid request.Â Typically, the first asset in the array is <code
class="ph codeph">1</code> and subsequent assets increment from
there.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2613 "><code class="ph codeph">required</code></td>
<td class="entry cellborder"
headers="d15931e2616 ">integer</td>
<td class="entry cellborder"
headers="d15931e2619 ">Specifies if the asset is required:
<ul>
<li><code class="ph codeph">0</code>: Asset is optional</li>
<li><code class="ph codeph">1</code>: Asset is required</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2613 "><code class="ph codeph">title</code></td>
<td class="entry cellborder"
headers="d15931e2616 ">object</td>
<td class="entry cellborder"
headers="d15931e2619 ">Specifies information about the title of the
asset. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__title_object"
class="xref">Title Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2613 "><code class="ph codeph">img</code></td>
<td class="entry cellborder"
headers="d15931e2616 ">object</td>
<td class="entry cellborder"
headers="d15931e2619 ">Specifies information about the image for the
asset. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__image_object"
class="xref">Image Object</a> below.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2613 "><code class="ph codeph">data</code></td>
<td class="entry cellborder"
headers="d15931e2616 ">object</td>
<td class="entry cellborder"
headers="d15931e2619 ">Specifies information about data for the asset.
See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__assets_object"
class="xref">Assets Data Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2613 "><code class="ph codeph">video</code></td>
<td class="entry cellborder"
headers="d15931e2616 ">object</td>
<td class="entry cellborder"
headers="d15931e2619 ">Specifies information about the video asset. See
<a href="incoming-bid-request-from-ssps.html#ID-000017a1__video_object"
class="xref">Video Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**Title Object**

<span class="ph">Xandr</span> supports the following fields in the
`title` object in the `assets` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e2768" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e2771" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e2774" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2768 "><code class="ph codeph">len</code></td>
<td class="entry cellborder"
headers="d15931e2771 ">integer</td>
<td class="entry cellborder"
headers="d15931e2774 ">Maximum length of the text in the title.</td>
</tr>
</tbody>
</table>

</div>

**Image Object**

<span class="ph">Xandr</span> supports the following fields in the `img`
object of the `assets` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e2827" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e2830" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e2833" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2827 "><code class="ph codeph">type</code> </td>
<td class="entry cellborder"
headers="d15931e2830 ">integer</td>
<td class="entry cellborder"
headers="d15931e2833 ">Specifies the type ID of the image element
requested by the publisher. Supported values are:
<ul>
<li><code class="ph codeph">1</code>: Icon image for use on smaller
screen sizes (<code class="ph codeph">icon_img_url</code>)</li>
<li><code class="ph codeph">3</code>: Large image preview of the ad for
use on larger screen sizes (<code
class="ph codeph">main_media</code>)</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2827 "><code class="ph codeph">w</code></td>
<td class="entry cellborder"
headers="d15931e2830 ">integer</td>
<td class="entry cellborder"
headers="d15931e2833 ">Specifies the exact width of the image, in
pixels. Either <code class="ph codeph">w</code> or <code
class="ph codeph">wmin</code> must be included.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2827 "><code class="ph codeph">wmin</code></td>
<td class="entry cellborder"
headers="d15931e2830 ">integer</td>
<td class="entry cellborder"
headers="d15931e2833 ">Specifies the minimum requested width of the
image, in pixels. If included, this value should be used for any
rescaling of images by the client. Either <code
class="ph codeph">w</code> or <code class="ph codeph">wmin</code> must
be included. If both are included, we will first try to find a creative
that matches the exact width. If no creative matches the exact width, we
will then use the minimum width.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2827 "><code class="ph codeph">h</code></td>
<td class="entry cellborder"
headers="d15931e2830 ">integer</td>
<td class="entry cellborder"
headers="d15931e2833 ">Specifies the height of the image, in pixels.
Either <code class="ph codeph">h</code> or <code
class="ph codeph">hmin</code> must be included.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2827 "><code class="ph codeph">hmin</code></td>
<td class="entry cellborder"
headers="d15931e2830 ">integer</td>
<td class="entry cellborder"
headers="d15931e2833 ">Specifies the minimum requested height of the
image, in pixels. If included, this value should be used for any
rescaling of images by the client. Either <code
class="ph codeph">h</code> or <code class="ph codeph">hmin</code> must
be included. If both are included, we will first try to find a creative
that matches the exact height. If no creative matches the exact height,
we will then use the minimum height.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2827 "><code class="ph codeph">mimes</code></td>
<td class="entry cellborder"
headers="d15931e2830 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e2833 ">Specifies the image content MIME types supported.
Should be empty, as all image types are supported.</td>
</tr>
</tbody>
</table>

</div>

**Assets Data Object**

<span class="ph">Xandr</span> supports the following fields in the
`data` object of the `assets` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e2994" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e2997" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3000" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e2994 "><code class="ph codeph">type</code> </td>
<td class="entry cellborder"
headers="d15931e2997 ">integer</td>
<td class="entry cellborder"
headers="d15931e3000 ">Specifies the type ID of the element supported by
the publisher. The publisher can display this information in an
appropriate format. Supported values are:
<ul>
<li><code class="ph codeph">1: sponsored</code> - "Sponsored By"
message, where the the response contains the brand name of the
sponsor</li>
<li><code class="ph codeph">2: desc</code> - Descriptive text associated
with the product or service being advertised</li>
<li><code class="ph codeph">3: rating</code> - Rating of the product
being offered to the user. For example, an app's rating in an app store
from 0 to 5.</li>
<li><code class="ph codeph">12: ctatext</code> - Descriptive text for a
"call to action" button for the destination URL</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e2994 "><code class="ph codeph">len</code></td>
<td class="entry cellborder"
headers="d15931e2997 ">integer</td>
<td class="entry cellborder"
headers="d15931e3000 ">Maximum length of the text in the element's
response.</td>
</tr>
</tbody>
</table>

</div>

**Video Object**

<span class="ph">Xandr</span> supports the following fields in
the `video` object of the `assets` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3089" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3092" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3095" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3089 "><code class="ph codeph">mimes</code> </td>
<td class="entry cellborder"
headers="d15931e3092 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e3095 ">Content MIME types supported. If mimes are not
specified in the bid request, then we will default to “video/mp4” for
regular video and “video/x-flv” for mobile.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3089 "><code class="ph codeph">minduration</code></td>
<td class="entry cellborder"
headers="d15931e3092 ">integer</td>
<td class="entry cellborder"
headers="d15931e3095 ">Minimum video ad duration in seconds.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3089 "><code class="ph codeph">maxduration</code></td>
<td class="entry cellborder"
headers="d15931e3092 ">integer</td>
<td class="entry cellborder"
headers="d15931e3095 ">Maximum video ad duration in seconds.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3089 "><code class="ph codeph">protocols</code></td>
<td class="entry cellborder"
headers="d15931e3092 ">array of integers</td>
<td class="entry cellborder"
headers="d15931e3095 ">An array of video protocols the publisher can
accept in the bid response.
<p>Currently supported values are:</p>
<ul>
<li><code class="ph codeph">1</code>: VAST 1.0</li>
<li><code class="ph codeph">2</code>: VAST 2.0</li>
<li><code class="ph codeph">3</code>: VAST 3.0</li>
<li><code class="ph codeph">4</code>: VAST 1.0 Wrapper</li>
<li><code class="ph codeph">5</code>: VAST 2.0 Wrapper</li>
<li><code class="ph codeph">6</code>: VAST 3.0 Wrapper</li>
<li><code class="ph codeph">7</code>: VAST 4.0</li>
<li><code class="ph codeph">8</code>: DAAST 1.0</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

**Private Marketplace Object**

<span class="ph">Xandr</span> supports the following fields in the `pmp`
object of the `imp` object to support private marketplaces (deals)
between buyers and sellers that may apply to this impression:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3232" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3235" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3238" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3232 "><code
class="ph codeph">private_auction</code></td>
<td class="entry cellborder"
headers="d15931e3235 ">integer</td>
<td class="entry cellborder"
headers="d15931e3238 ">Indicates the auction eligibility for seats named
in the <code class="ph codeph">deals</code> object.
<ul>
<li><code class="ph codeph">0</code>: All bids are accepted</li>
<li><code class="ph codeph">1</code>: Only bids for specified deals are
accepted</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3232 "><code class="ph codeph">deals</code></td>
<td class="entry cellborder"
headers="d15931e3235 ">array of objects</td>
<td class="entry cellborder"
headers="d15931e3238 ">Specifies information about the deals for this
bid. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__deal_object"
class="xref">Deal Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**Deal Object**

<span class="ph">Xandr</span> supports the following fields in the
`deal` object of the `pmp` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3323" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3326" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3329" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3323 "><code class="ph codeph">id </code></td>
<td class="entry cellborder"
headers="d15931e3326 ">string</td>
<td class="entry cellborder"
headers="d15931e3329 ">(Required) Specifies a unique identifier for the
deal.
<div class="note">
<span class="notetitle">Note:</span> The <code
class="ph codeph">id</code> must match the <code
class="ph codeph">deal.code</code> you registered using the Deal
Service. See <a
href="https://docs.xandr.com/bundle/supply-partners/page/selling-deals-on-xandr.html"
class="xref" target="_blank">Selling Deals</a> for more details. The
inclusion of a deal ID on the bid request implies that the buyer
permitted to buy that deal is permitted to bid in the auction, even if
that buyer is not included the <code
class="ph codeph">bidrequest.wseat</code> field.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3323 "><code class="ph codeph">bidfloor</code></td>
<td class="entry cellborder"
headers="d15931e3326 ">float</td>
<td class="entry cellborder"
headers="d15931e3329 ">Specifies the minimum bid price for the deal, in
CPM using the default currency (<code class="ph codeph">USD</code>).
This field is only respected if the <a
href="https://docs.xandr.com/bundle/supply-partners/page/selling-deals-on-xandr.html"
class="xref" target="_blank">Deal object</a> has configured with a <code
class="ph codeph">floor_price</code> and <code
class="ph codeph">use_deal_floor</code> is true. If so, this overrides
<code class="ph codeph">imp.bidfloor</code> for deal bids.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3323 "><code class="ph codeph">bidfloorcur</code></td>
<td class="entry cellborder"
headers="d15931e3326 ">string</td>
<td class="entry cellborder"
headers="d15931e3329 ">Specifies the currency for this bid using
ISO-4217 alphabetic codes. Defaults to <code
class="ph codeph">USD</code> if not specified.</td>
</tr>
</tbody>
</table>

</div>

**Site Object**

<div class="note">

<span class="notetitle">Note:</span> The `bid` object must not include
both a `site` object and an `app` object. Only one is allowed, not both.

</div>

<span class="ph">Xandr</span> supports the following fields in the
`site` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3451" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3454" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3457" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">string</td>
<td class="entry cellborder"
headers="d15931e3457 ">(Recommended) The seller's site ID. If set, this
should equal the <span class="ph">Xandr</span> placement code.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">domain</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">string</td>
<td class="entry cellborder"
headers="d15931e3457 ">Specifies the domain of the site (for example, <a
href="https://publishersite.com" class="xref" target="_blank"><code
class="ph codeph">publishersite.com</code></a> ) where the impression
will be shown. Set as the referrer domain on the impression if
available, or extracted from the <code class="ph codeph">page</code>
field.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">cat</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e3457 ">Specifies a list of IAB content categories
(listed in section 5.1 of the specification) and <span
class="ph">Xandr</span> category ID values. <span
class="ph">Xandr</span> categories are in this format <code
class="ph codeph">APN-ID</code> where ID is the <span
class="ph">Xandr</span> category ID; for example, <code
class="ph codeph">APN-13</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">page</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">string</td>
<td class="entry cellborder"
headers="d15931e3457 ">Specifies the full URL of the page where the
impression will be shown (for example, <a
href="https://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a> ). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">publisher</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">object</td>
<td class="entry cellborder"
headers="d15931e3457 ">Specifies information about the publisher. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__publisher_object"
class="xref">Publisher Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">keywords</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">string</td>
<td class="entry cellborder"
headers="d15931e3457 ">Comma separated list of keywords about the site.
Keywords are global to the request and apply to all imp objects.
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;keywords&quot;:&quot;car_make=ford,my_other_value&quot;</code></pre>
<p>In this example, we look for</p>
<ul>
<li>a querystring mapping segment for car_make and set the value to ford
(based on the segment's settings).</li>
<li>a querystring key/value segment for car_make=ford.</li>
<li>a querystring mapping segment with my_other_value as the key and set
no value.</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> The keywords feature is not
available by default. Please contact your <span class="ph">Xandr</span>
representative to enable this feature.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3451 "><code class="ph codeph">content</code></td>
<td class="entry cellborder"
headers="d15931e3454 ">object</td>
<td class="entry cellborder"
headers="d15931e3457 ">Details about the Content within the site. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__content_object"
class="xref">Content Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**App Object**

<div class="note">

<span class="notetitle">Note:</span> Only one of `site` and `app`
objects are allowed in an `imp` object.

</div>

<span class="ph">Xandr</span> supports the following fields in the `app`
object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3661" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3664" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3667" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">string</td>
<td class="entry cellborder"
headers="d15931e3667 ">Specifies the seller's app ID, used to look up an
<span class="ph">Xandr</span> tinytag ID by tinytag code.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">bundle</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">string</td>
<td class="entry cellborder"
headers="d15931e3667 ">Specifies the application bundle or package name
(e.g., <code class="ph codeph">com.foo.mygame</code>). This is intended
to be a unique ID across multiple exchanges.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">domain</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">string</td>
<td class="entry cellborder"
headers="d15931e3667 ">Specifies the domain of the app (for example,
<code class="ph codeph">mygame.publishersite.com</code>) where the
impression will be shown. Set as the referrer domain on the impression
if available.  </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">cat</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">array of strings</td>
<td class="entry cellborder"
headers="d15931e3667 ">Specifies a list of IAB content categories
(listed in section 5.1 of the specification) and <span
class="ph">Xandr</span> category ID values. <span
class="ph">Xandr</span> categories are in this format <code
class="ph codeph">APN-ID</code> where ID is the <span
class="ph">Xandr</span> category ID; for example, <code
class="ph codeph">APN-13</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">publisher</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">object</td>
<td class="entry cellborder"
headers="d15931e3667 ">Specifies information about the publisher. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__publisher_object"
class="xref">Publisher Object</a> below.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">name</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">string</td>
<td class="entry cellborder"
headers="d15931e3667 ">The full name of the app (i.e. Angry Birds).
(This value may be aliased at the publisher's request.)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">keywords</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">string</td>
<td class="entry cellborder"
headers="d15931e3667 ">Comma separated list of keywords about the app.
Keywords are global to the request and apply to all imp objects.
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;keywords&quot;:&quot;car_make=ford,my_other_value&quot;</code></pre>
<p>In this example, we look for</p>
<ul>
<li>a querystring mapping segment for car_make and set the value to ford
(based on the segment's settings).</li>
<li>a querystring key/value segment for car_make=ford.</li>
<li>a querystring mapping segment with my_other_value as the key and set
no value.</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> The keywords feature is not
available by default. Please contact your <span class="ph">Xandr</span>
representative to enable this feature.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3661 "><code class="ph codeph">content</code></td>
<td class="entry cellborder"
headers="d15931e3664 ">object</td>
<td class="entry cellborder"
headers="d15931e3667 ">Details about the Content within the site. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__content_object"
class="xref">Content Object</a> below.</td>
</tr>
</tbody>
</table>

</div>

**Publisher Object**

<span class="ph">Xandr</span> supports the following field in the
`publisher` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3863" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3866" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3869" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3863 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e3866 ">string</td>
<td class="entry cellborder"
headers="d15931e3869 ">Specifies the seller's publisher ID. If set, this
should equal the <span class="ph">Xandr</span> publisher code. Used to
set a default placement ID in the auction if <code
class="ph codeph">tagid</code>, <code class="ph codeph">site.id</code>,
or <code class="ph codeph">app.id</code> are not provided.</td>
</tr>
</tbody>
</table>

</div>

**Content Object**

<span class="ph">Xandr</span> supports the following fields in the
Content object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e3927" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e3930" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e3933" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">genre</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Genre that best describes the content (e.g.,
rock, pop, etc).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">ID uniquely identifying the content.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">language</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Content language using ISO-639-1-alpha-2.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">object</td>
<td class="entry cellborder"
headers="d15931e3933 ">Placeholder for exchange-specific extensions to
OpenRTB.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">episode</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">Episode number.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">title</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Content title.
<p>Video Examples: "Search Committee" (television), "A New Hope"
(movie), or "Endgame" (made for web).</p>
<p>Non-Video Example: "Why an Antarctic Glacier is Melting So Quickly"
(Time magazine article).</p></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">series</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Video Examples: "The Office" (television), "Star
Wars" (movie), or "Arby 'N' The Chief" (made for web).
<p>Non-Video Example: "Ecocentric" (Time Magazine blog).</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">season</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Content season (e.g., "Season 3").</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">artist</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Artist credited with the content.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">album</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Album to which the content belongs; typically for
audio.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">isrc</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">International Standard Recording Code conforming
to ISO-3901.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">producer</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">object</td>
<td class="entry cellborder"
headers="d15931e3933 ">Details about the content <code
class="ph codeph">Producer.</code> Refer to section 3.2.12 in the IAB
specification.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">url</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">URL of the content, for buy-side
contextualization or review.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">cat</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">string array</td>
<td class="entry cellborder"
headers="d15931e3933 ">Array of IAB content categories that describe the
content producer. Refer to list 5.1 in the IAB specification.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">prodq</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">Production quality. Refer to List 5.11 in the IAB
specification.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">videoquality</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">integer; DEPRECATED</td>
<td class="entry cellborder"
headers="d15931e3933 ">Deprecated in favor of prodq. Video quality.
Refer to List 5.11 in the IAB specification.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">context</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">Type of content (game, video, text, etc.). Refer
to List 5.16  in the IAB specification.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 ">contentrating</td>
<td class="entry cellborder"
headers="d15931e3930 ">string</td>
<td class="entry cellborder"
headers="d15931e3933 ">Content rating (e.g., MPAA).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">userrating</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">string </td>
<td class="entry cellborder"
headers="d15931e3933 ">User rating of the content (e.g., number of
stars, likes, etc.).</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code
class="ph codeph">qagmediarating</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">Media rating per IQG guidelines. Refer to List
5.17 in the IAB specification.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">keywords</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">string </td>
<td class="entry cellborder"
headers="d15931e3933 ">Comma separated list of keywords describing the
content.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">livestream</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">0 = not live, 1 = content is live (e.g., stream,
live blog).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code
class="ph codeph">sourcerelationship</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">0 = indirect, 1 = direct.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">len</code></td>
<td class="entry cellborder"
headers="d15931e3930 ">integer</td>
<td class="entry cellborder"
headers="d15931e3933 ">Length of content in seconds; appropriate for
video or audio.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e3927 "><code class="ph codeph">data</code> </td>
<td class="entry cellborder"
headers="d15931e3930 ">object array </td>
<td class="entry cellborder"
headers="d15931e3933 ">Additional content data. Each Data object
represents a different data source. Refer to Section 3.2.16 in the IAB
specification.</td>
</tr>
</tbody>
</table>

</div>

**Content Extension Object**

<span class="ph">Xandr</span> supports the following fields in the ext
object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e4314" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e4317" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e4320" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4314 "><code class="ph codeph">network</code></td>
<td class="entry cellborder"
headers="d15931e4317 ">String</td>
<td class="entry cellborder"
headers="d15931e4320 ">The top-level parent company or, where relevant,
a sub-brand which owns multiple TV-like channels, d2c content brands, or
digital properties on which the content is being viewed</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4314 "><code class="ph codeph">channel</code></td>
<td class="entry cellborder"
headers="d15931e4317 ">String</td>
<td class="entry cellborder"
headers="d15931e4320 ">Name of channel the content is airing on</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4314 "><span class="ph">appnexus</span></td>
<td class="entry cellborder"
headers="d15931e4317 ">object</td>
<td class="entry cellborder"
headers="d15931e4320 ">Specifies the <span
class="ph">Xandr</span>-specific extensions to the OpenRTB bid
request.</td>
</tr>
</tbody>
</table>

</div>

<span class="ph">Xandr</span> supports the following fields in the
<span class="ph">appnexus</span> extension object of the content object

<div class="tablenoborder">

<table id="ID-000017a1__table_bc4_crg_nwb" class="table"
data-cellpadding="4" data-cellspacing="0" data-summary=""
data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e4394" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e4397" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e4400" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4394 "><code class="ph codeph">airtime</code></td>
<td class="entry cellborder"
headers="d15931e4397 ">String</td>
<td class="entry cellborder"
headers="d15931e4400 ">Original airtime, for time-shifted content</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4394 "><code class="ph codeph">program_type</code></td>
<td class="entry cellborder"
headers="d15931e4397 ">String</td>
<td class="entry cellborder"
headers="d15931e4400 ">Type of program (eg movie, event, episode,
etc)</td>
</tr>
</tbody>
</table>

</div>

**Device Object**

<span class="ph">Xandr</span> supports the following fields in the
`device` object. Note that the device IDs in this object should override
any device IDs in the <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__bid_request_extension_object"
class="xref">Bid Request Extension Object</a>.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e4467" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e4470" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e4473" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">ua</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">(Recommended) Specifies the user agent string
from the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">geo</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">object</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the location of the device, as derived
from the device's location services (such as cell tower triangulation or
GPS) or IP address. See <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__geo_object"
class="xref">Geo Object</a> for details.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">dnt</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">integer</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the Do Not Track setting:
<ul>
<li><code class="ph codeph">0</code>: Do Not Track is set to false in
browser (tracking is allowed)</li>
<li><code class="ph codeph">1</code>: Do Not Track is set to true in
browser (user has opted out of tracking)</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">ip</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">ipv6</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the IPv6 address closest to the device.
Used only for geolocation for buyer targeting.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">devicetype</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">integer</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the type of device, using IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code class="ph codeph">ua</code>
field</p></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">make</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the make of the device. Only used if
not supported via the <code class="ph codeph">ua</code> field.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">model</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the model of the device. Only used if
not supported via the <code class="ph codeph">ua</code> field.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">os</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">This is the code field that you obtain from
operating system code.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">carrier</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies carrier for the device. Only used if
not supported via the <code class="ph codeph">ua</code> field.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">language</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the browser language; use <a
href="https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes"
class="xref" target="_blank">ISO 639-1</a> or <a
href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" class="xref"
target="_blank">ISO 3166 alpha-2</a> codes.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">ifa_type</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Identify the source of the IFA, whether that is
device-generated (and therefore used across apps) or whether it is a
publisher-provided IFA, or a temporary/session IFA. (e.g., dpid, ppid,
sspid, sessionid, idfa, aaid, rida, afai, tifa, vida, lgudid).</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">ifa</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">The "identifier for advertising" is an unhashed
device ID sanctioned for advertiser use. This will be the <a
href="https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/SubmittingTheApp.html#//apple_ref/doc/uid/TP40011225-CH33-SW8"
class="xref" target="_blank">IDFA</a> on iOS or <a
href="https://developer.android.com/google/play-services/id.html"
class="xref" target="_blank">AAID</a> on Android.
<p>Example: <code
class="ph codeph">"ifa": "AA000DFE74168477C70D291f574D344790E0BB12"</code>.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">didsha1</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the SHA1-encrypted unique identifier
for the mobile device.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 ">didmd5</td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the MD5-encrypted unique identifier for
the mobile device.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">dpidsha1</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the SHA1-encrypted, platform-specific
(e.g., <code class="ph codeph">ANDROID_ID</code> or <code
class="ph codeph">UDID</code> for iOS) unique identifier for the mobile
device.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">dpidmd5</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">string</td>
<td class="entry cellborder"
headers="d15931e4473 ">Specifies the MD5-encrypted, platform-specific
(e.g., <code class="ph codeph">ANDROID_ID</code> or <code
class="ph codeph">UDID</code> for iOS) unique identifier for the mobile
device.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4467 "><code class="ph codeph">lmt</code></td>
<td class="entry cellborder"
headers="d15931e4470 ">integer</td>
<td class="entry cellborder"
headers="d15931e4473 ">"Limit Ad Tracking" signal commercially endorsed
(e.g., iOS, Android), where 0=tracking is unrestricted, 1=tracking must
be limited per commercial guidelines.</td>
</tr>
</tbody>
</table>

</div>

**User Object**

<span class="ph">Xandr</span> supports the following fields in the
`user` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e4849" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e4852" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e4855" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">id</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">string</td>
<td class="entry cellborder"
headers="d15931e4855 ">The seller's unique ID for this user. </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">buyeruid</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">string</td>
<td class="entry cellborder"
headers="d15931e4855 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">yob</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">integer</td>
<td class="entry cellborder"
headers="d15931e4855 ">Specifies the year of birth as a 4-digit integer.
Omitted when sent to buyers if unknown or value set to <code
class="ph codeph">0</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">gender</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">string</td>
<td class="entry cellborder"
headers="d15931e4855 ">Specifies the gender. Set to <code
class="ph codeph">null</code> if unknown. Omitted when sent to buyers if
unknown.
<ul>
<li><code class="ph codeph">M</code>: male</li>
<li><code class="ph codeph">F</code>: female</li>
<li><code class="ph codeph">O</code>: other</li>
</ul></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">customdata</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">string</td>
<td class="entry cellborder"
headers="d15931e4855 ">A properly encoded string that can contain an
<span class="ph">Xandr</span> user ID. Will be ignored if <code
class="ph codeph">buyeruid</code> is set.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">keywords</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">string</td>
<td class="entry cellborder"
headers="d15931e4855 ">Comma separated list of keywords about the user.
Keywords are global to the request and apply to all imp objects.
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;keywords&quot;:&quot;car_make=ford,my_other_value&quot;</code></pre>
<p>In this example, we look for</p>
<ul>
<li>a querystring mapping segment for car_make and set the value to ford
(based on the segment's settings).</li>
<li>a querystring key/value segment for car_make=ford.</li>
<li>a querystring mapping segment with my_other_value as the key and set
no value.</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> The keywords feature is not
available by default. Please contact your <span class="ph">Xandr</span>
representative to enable this feature.
</div></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">geo</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">object</td>
<td class="entry cellborder"
headers="d15931e4855 ">Location of the user’s home base defined by a Geo
object. This is not necessarily their current location.
<div id="ID-000017a1__note_ift_gcl_nwb" class="note">
<span class="notetitle">Note:</span> By default, this field is not
supported. Please contact support or your account representative for
more information.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">object</td>
<td class="entry cellborder"
headers="d15931e4855 ">Used for identifying <span
class="ph">Xandr</span>-specific extensions to OpenRTB for the <code
class="ph codeph">user</code> object.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e4849 "><code class="ph codeph">eid</code></td>
<td class="entry cellborder"
headers="d15931e4852 ">object</td>
<td class="entry cellborder"
headers="d15931e4855 ">This object can contain one or more UIDs from a
single source or a technology provider. Extended Identifiers support in
OpenRTB allows buyers to use audience data in real time bidding. For
more information, see <a
href="incoming-bid-request-from-ssps.html#ID-000017a1__ID-0000248c"
class="xref">eid Object</a></td>
</tr>
</tbody>
</table>

</div>

**eid Object**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e5069" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e5072" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e5075" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5069 "><code class="ph codeph">source</code></td>
<td class="entry cellborder"
headers="d15931e5072 ">string</td>
<td class="entry cellborder"
headers="d15931e5075 ">Source of technology provider responsible for the
set of included IDs. </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5069 "><code class="ph codeph">uids</code></td>
<td class="entry cellborder"
headers="d15931e5072 ">object array;</td>
<td class="entry cellborder"
headers="d15931e5075 ">Array of extended ID UID objects from the given
source.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5069 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e5072 ">object</td>
<td class="entry cellborder"
headers="d15931e5075 ">Placeholder for vendor specific extensions to
this object.</td>
</tr>
</tbody>
</table>

</div>

**Geo Object**

<span class="ph">Xandr</span> supports the following fields in
the `geo` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e5151" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e5154" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e5157" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5151 "><code class="ph codeph">lat</code></td>
<td class="entry cellborder"
headers="d15931e5154 ">float</td>
<td class="entry cellborder"
headers="d15931e5157 ">Specifies the latitude of the device, as derived
from the device's location services (such as cell tower triangulation or
GPS) or IP address. This can range from <code
class="ph codeph">-90</code> to <code class="ph codeph">90</code>. South
is negative.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5151 "><code class="ph codeph">lon</code></td>
<td class="entry cellborder"
headers="d15931e5154 ">float</td>
<td class="entry cellborder"
headers="d15931e5157 ">Specifies the longitude of the device, as derived
from the device's location services (such as cell tower triangulation or
GPS) or IP address. This can range from <code
class="ph codeph">-180</code> to 180. West is negative.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5151 "><code class="ph codeph">country</code></td>
<td class="entry cellborder"
headers="d15931e5154 ">string</td>
<td class="entry cellborder"
headers="d15931e5157 ">Country code using ISO-3166-1-alpha-3.
<div class="note">
<span class="notetitle">Note:</span> By default, this field is not
supported. Your account can be enabled to add support for this field, in
which case country + zip will be used to determine location information.
Please contact support or your account representative for more
information.
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5151 "><code class="ph codeph">zip</code></td>
<td class="entry cellborder"
headers="d15931e5154 ">string</td>
<td class="entry cellborder"
headers="d15931e5157 ">Zip or postal code.
<div class="note">
<span class="notetitle">Note:</span> By default, this field is not
supported. Your account can be enabled to add support for this field, in
which case country + zip will be used to determine location information.
Please contact support or your account representative for more
information.
</div></td>
</tr>
</tbody>
</table>

</div>

**User Extension Object**

<span class="ph">Xandr</span> supports the following field in the
`user.ext` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e5258" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e5261" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e5264" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5258 "><code class="ph codeph">consent</code></td>
<td class="entry cellborder"
headers="d15931e5261 ">string</td>
<td class="entry cellborder"
headers="d15931e5264 ">Optional. Contains the data structure developed
by the General Data Protection Regulation (GDPR) Consent Working Group
under the auspices of <a href="https://www.iabeurope.eu/" class="xref"
target="_blank">IAB Europe</a>.
<div class="note">
<span class="notetitle">Note:</span> Field is not enforced until May 25,
2018.
</div></td>
</tr>
</tbody>
</table>

</div>

** Regs Object**

<span class="ph">Xandr</span> supports the following fields in the
regs object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e5317" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e5320" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e5323" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5317 "><code class="ph codeph">coppa</code></td>
<td class="entry cellborder"
headers="d15931e5320 ">integer</td>
<td class="entry cellborder"
headers="d15931e5323 ">Indicates if this request is subject to the
United States Children's Online Privacy Protection Act (COPPA).
<ul>
<li><code class="ph codeph">0</code>: Not subject to COPPA. Treat as a
normal auction.</li>
<li><code class="ph codeph">1</code>: Subject to COPPA. Limit what is
allowed for targeting and logging as required.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5317 "><code class="ph codeph">ext</code></td>
<td class="entry cellborder"
headers="d15931e5320 ">object</td>
<td class="entry cellborder"
headers="d15931e5323 ">Used for identifying <span
class="ph">Xandr</span>-specific extensions to OpenRTB for the reg
object.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5317 "><code class="ph codeph">gpp</code></td>
<td class="entry cellborder"
headers="d15931e5320 "> </td>
<td class="entry cellborder"
headers="d15931e5323 ">Indicates the actual IAB GPP consent string. It
implies which vendors are permitted to process personal data and under
which conditions.
<p>Example:</p>
<div class="p">
<pre id="ID-000017a1__codeblock_ggg_2dh_nwb"
class="pre codeblock"><code>{ &quot;Regs&quot;: { &quot;ext&quot;: { &quot;gpp&quot;: &quot;DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN&quot;, &quot;gpp_sid&quot;: [5]} } }</code></pre>
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5317 "><code class="ph codeph">gpp_sid</code></td>
<td class="entry cellborder"
headers="d15931e5320 "> </td>
<td class="entry cellborder"
headers="d15931e5323 ">Optional: indicates which regulations or GPP
logics are to be applied, or whether a user is located in a country (EEA
country) with a framework that is part of the GPP.
<p>Example:</p>
<div class="p">
<pre id="ID-000017a1__codeblock_a3s_2dh_nwb"
class="pre codeblock"><code>{ &quot;Regs&quot;: { &quot;ext&quot;: { &quot;gpp&quot;: &quot;DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN&quot;, &quot;gpp_sid&quot;: [5]} } }</code></pre>
</div></td>
</tr>
</tbody>
</table>

</div>

**Regs Extension Object**

<span class="ph">Xandr</span> supports the following field in
the `regs.ext` object:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15931e5438" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d15931e5441" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d15931e5444" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5438 "><code class="ph codeph">gdpr</code></td>
<td class="entry cellborder"
headers="d15931e5441 ">integer</td>
<td class="entry cellborder"
headers="d15931e5444 ">Optional. Indicates whether the request is
subject to General Data Protection Regulation (GDPR) regulations.
Possible values:
<ul>
<li><code class="ph codeph">0</code>: No, the request is not subject to
GDPR regulations.</li>
<li><code class="ph codeph">1:</code> Yes, the request is subject to
GDPR regulations.</li>
</ul>
<p>No value indicates Unknown.</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5438 "><code class="ph codeph">us_privacy</code></td>
<td class="entry cellborder"
headers="d15931e5441 ">string</td>
<td class="entry cellborder"
headers="d15931e5444 ">Optional. Indicates whether the request complies
with the California Consumer Privacy Act (CCPA) regulations. This field
complies with the <a
href="https://github.com/InteractiveAdvertisingBureau" class="xref"
target="_blank">IAB US Privacy specification</a>. Refer to the IAB's
string specifications for possible values; for example:
<pre class="pre codeblock"><code>{
&quot;Regs&quot;: {
   &quot;ext&quot;: 
      {
      &quot;us_privacy&quot;: &quot;1YNN&quot;
      }
  }
}</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15931e5438 "><code class="ph codeph">gpp</code></td>
<td class="entry cellborder"
headers="d15931e5441 "> </td>
<td class="entry cellborder"
headers="d15931e5444 ">Indicates the actual IAB GPP consent string. It
implies which vendors are permitted to process personal data and under
which conditions.
<p>Example:</p>
<div class="p">
<pre id="ID-000017a1__codeblock_kwp_3dh_nwb"
class="pre codeblock"><code>{ &quot;Regs&quot;: { &quot;ext&quot;: { &quot;gpp&quot;: &quot;DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN&quot;, &quot;gpp_sid&quot;: [5]} } }</code></pre>
</div></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15931e5438 "><code class="ph codeph">gpp_sid</code></td>
<td class="entry cellborder"
headers="d15931e5441 "> </td>
<td class="entry cellborder"
headers="d15931e5444 ">Optional: indicates which regulations or GPP
logics are to be applied, or whether a user is located in a country (EEA
country) with a framework that is part of the GPP.
<p>Example:</p>
<div class="p">
<pre id="ID-000017a1__codeblock_vdy_3dh_nwb"
class="pre codeblock"><code>{ &quot;Regs&quot;: { &quot;ext&quot;: { &quot;gpp&quot;: &quot;DBACNYA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA~1YNN&quot;, &quot;gpp_sid&quot;: [5]} } }</code></pre>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example Bid Requests

**Banner Bid Request**

``` pre
{
    "id": "3456789098765432",
    "imp": [{
        "banner": {
            "h": 200,
            "w": 750
        },
        "bidfloor": 0.0779016539,
        "bidfloorcur": "USD",
        "id": "a5974205-4a2d-43e1-b346-693b0dad1372",
        "pmp": {
            "deals": [{
                "bidfloor": 1.03868878,
                "bidfloorcur": "USD",
                "id": "123456789"
            }],
            "private_auction": 1
        }
    }, {
        "banner": {
            "h": 300,
            "w": 750
        },
        "bidfloor": 0.0779016539,
        "bidfloorcur": "USD",
        "id": "5a123e7a-e72e-4503-912e-03fdad931da4",
        "pmp": {
            "deals": [{
                "bidfloor": 1.03868878,
                "bidfloorcur": "USD",
                "id": "654321234"
                ]
            }],
            "private_auction": 1
        }
    }, {
        "banner": {
            "h": 60,
            "w": 468
        },
        "bidfloor": 0.0779016539,
        "bidfloorcur": "USD",
        "id": "912308dd-6643-4bfd-8ff6-4b14f8799dad",
        "pmp": {
            "deals": [{
                "bidfloor": 1.03868878,
                "bidfloorcur": "USD",
                "id": "432123456"
            }],
            "private_auction": 1
        }
    }, {
        "banner": {
            "h": 250,
            "w": 970
        },
        "bidfloor": 0.0779016539,
        "bidfloorcur": "USD",
        "id": "1123c57b-464e-4b6d-87ce-89f501dadfb9",
        "pmp": {
            "deals": [{
                "bidfloor": 1.03868878,
                "bidfloorcur": "USD",
                "id": "543234567"
            }],
            "private_auction": 1
        }
    }],
    "site": {
        "domain": "https://example.com",
        "id": "456789",
        "name": "example.com",
        "page": "https://example.com/example",
        "publisher": {
            "id": "123",
            "name": "mypublisher"
        }
    },
    "user": {
        "id": "6543212345654"
    },
    "bcat": [
        "IAB24",
        "IAB26"
    ],
    "cur": [
        "USD"
    ],
    "device": {
        "devicetype": 2,
        "ext": {
            "is_app": 0
        },
        "ip": "198.51.100.1",
        "language": "pl",
        "ua": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0"
    }
}
```

**Video Bid Request**

``` pre
{
    "id": "951_1470171234556050-40",
    "imp": [{
        "bidfloor": 13.768,
        "bidfloorcur": "USD",
        "displaymanager": "DisplayManager",
        "displaymanagerver": "1.0",
        "id": "1",
        "pmp": {
            "deals": [{
                "bidfloor": 4.3506,
                "bidfloorcur": "USD",
                "id": "STI-VER-00004"
            }],
            "private_auction": 0
        },
        "secure": 0,
        "video": {
            "api": [
                1,
                2
            ],
            "ext": {
                "sticky_viewability_score": 10
            },
            "h": 250,
            "maxduration": 3600,
            "mimes": [
                "video/mp4",
                "video/x-flv",
                "application/x-shockwave-flash",
                "application/javascript"
            ],
            "minduration": 0,
            "playbackmethod": [
                1
            ],
            "protocol": 2,
            "protocols": [
                2,
                5
            ],
            "startdelay": 0,
            "w": 300
        }
    }],
    "badv": [
        "example.com",
        "example2.com"
    ],
    "cur": [
        "EUR",
        "JPY",
        "USD",
        "AUD",
        "GBP"
    ],
    "device": {
        "devicetype": 2,
        "ip": "198.51.100.10",
        "ipv6": "::ffff:198.51.100.10",
        "language": "en",
        "os": "windows",
        "ua": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36"
    },
    "site": {
        "cat": [
            "IAB1"
        ],
        "domain": "example.com",
        "id": "456789",
        "page": "https://www.example.com/example-page",
        "publisher": {
            "id": "123"
        }
    },
    "user": {
        "buyeruid": "87654332122234",
        "id": "5123dab34d2fe47f225b2fd8dad97ec"
    }
}
```

**Native 1.1 Bid Request**

``` pre
{
    "id": "333a8888abcd47e98cb69de19999egad",
    "imp": [{
        "id": "1",
        "native": {
            "request": "{\"ver\":\"1.1\",\"context\":1,\"contextsubtype\":10,\"plcmttype\":11,\"plcmtcnt\":1,\"assets\":[{\"id\":1,\"required\":1,\"video\":{\"minduration\":10,\"maxduration\":60,\"protocols\": [2],\"mimes\":[\"video/mp4\"]}},{\"id\":2,\"required\":0,\"title\":{\"len\":140}},{\"id\":3,\"required\":1,\"img\":{\"w\":428,\"h\":240,\"type\":3}}]}",
            "ver": "1.1"
        },
        "tagid": "PC1111IAG0.0000011ABC"
    }],
    "app": {
        "domain": "dashboard.example.com",
        "bundle": "bundle1.example.dashboard"
    },
    "device": {
        "ua": "XBoxSAS/1",
        "ip": "126.149.60.85",
        "language": "us"
    },
    "user": {
        "id": "1234567899B74ABCDEFB783E2BE0987653DF70D0"
    },
    "ext": {
        "appnexus": {
            "ext_inv_code": "100"
        }
    }
}
```

**Mobile Bid Request**

``` pre
{
    "id": "05FD4E3A-BFCB-4E5E-8D63-14DB77250C32",
    "imp": [
        {
            "id": "1",
            "tagid": "987654",
            "banner": {
                "w": 300,
                "h": 250,
                "pos": 3,
                "topframe": 1,
                "battr": [
                    12,
                    44
                ]
            }
        }
    ],
    "app": {
        "id": "2490165635",
        "name": "GO Keyboard - Emoji, Wallpaper",
        "bundle": "com.jb.gokeyboard",
        "domain": "https://play.google.com",
        "cat": [
            "IAB3"
        ],
        "publisher": {
            "id": "123456"
        }
    },
    "device": {
        "ip": "27.55.84.146",
        "lmt": 0,
        "ua": "Mozilla/5.0 (Linux; Android 4.4.2; Z520 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36",
        "carrier": "Truemove",
        "language": "th",
        "make": "Acer",
        "model": "Z520",
        "os": "Android",
        "osv": "4.4",
        "js": 1,
        "devicetype": 1,
        "ifa": "528b4158-67d6-475d-b29f-6d62c8adbbce"
    },
    "user": {
        "id": "389FB549-4D41-456D-AA3C-5AF980683652"
    },
    "bcat": [
        "IAB7-45",
        "IAB7-31",
        "IAB26",
        "IAB7-30",
        "IAB25",
        "IAB23",
        "IAB7-39"
    ]
}
```

**Outstream Bid Request**

``` pre
{
    "site": {
        "domain": "https://example.com",
        "page": "https://www.example.com/movies",
        "id": "ChTqkJcUbhNNTW4RPYdWYALE",
        "publisher": {
            "id": "654321"
        },
        "content": {
            "language": "en"
        },
        "cat": [
            "IAB1",
            "IAB24"
        ]
    },
    "id": "6fb5623c-f88e-462f-b679-a902db6deff4",
    "imp": [
        {
            "native": {
                "plcmtcnt": 1,
                "request": "{\"native\":{\"plcmtcnt\":1,\"assets\":[{\"id\":4,\"required\":0,\"img\":{\"hmin\":315,\"wmin\":600,\"type\":3}},{\"id\":3,\"required\":0,\"img\":{\"hmin\":48,\"wmin\":48,\"type\":2}},{\"id\":11,\"required\":0,\"data\":{\"len\":2000,\"type\":501}},{\"id\":12,\"required\":0,\"data\":{\"len\":2000,\"type\":502}},{\"id\":1,\"required\":1,\"title\":{\"len\":90}},{\"id\":2,\"required\":1,\"img\":{\"hmin\":0,\"wmin\":0,\"type\":1}},{\"id\":5,\"required\":1,\"data\":{\"len\":140,\"type\":1}},{\"id\":6,\"required\":1,\"data\":{\"len\":200,\"type\":2}}],\"adunit\":2,\"ver\":\"1.0\",\"layout\":3}}",
                "adunit": 2,
                "ver": "1.0",
                "layout": 3
            },
            "id": "1",
            "bidfloor": 1.01,
            "video": {
                "protocols": [
                    2,
                    3,
                    7
                ],
                "playbackmethod": [
                    2
                ],
                "minduration": 3,
                "ext": {
                    "appnexus": {
                        "context": 4
                    }
                },
                "maxduration": 300,
                "h": 250,
                "w": 300,
                "mimes": [
                    "video/mp4"
                ]
            },
            "secure": 0
        }
    ],
    "user": {
        "buyeruid": "2905333698551584116"
    },
    "device": {
        "connectiontype": 0,
        "devicetype": 4,
        "ip": "101.177.51.245",
        "model": "SM-G920I",
        "ua": "Mozilla/5.0 (Linux; Android 6.0.1; SM-G920I Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/116.0.0.17.69;]",
        "os": "Android",
        "osv": "4",
        "language": "en",
        "make": "Samsung",
        "js": 1,
        "dnt": 0
    }
}
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="openrtb-specs.html" class="link">OpenRTB Specs</a>

</div>

</div>

</div>
