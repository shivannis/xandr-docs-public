---
Title : Deal Service
Description : The Deal Service lets buyers, sellers, and external bidders set up and
ms.date: 10/28/2023
ms.custom: digital-platform-api
manage negotiated deals. Deals may provide buyers:
---


# Deal Service



The Deal Service lets buyers, sellers, and external bidders set up and
manage negotiated deals. Deals may provide buyers:

- Preferential pricing on inventory
- Access to exclusive inventory
- Reduced competition on inventory
- Other opportunities

Each deal is valid for a single buyer.



<b>Note:</b>

- The inventory included in a deal may be encompassed by other deals as
  well.
- Buyers can use the <a
  href="deal-buyer-access-service.md"
  class="xref" target="_blank">Deal Buyer Access Service</a> to view the
  deals available to them. To target deals, buyers **Seller Restricted
  Targeting**can use the `deal_targets` field in the <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000012eb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000012eb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__3">View
all deals you have with buyers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal?id=DEAL_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal?id=DEAL_ID</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__3">View
a specific deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal?id=1%2c2%2c3" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__3">View
multiple deals by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__3">Add
a new deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal?id=DEAL_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal?id=DEAL_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__3">Modify an existing deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__2"><a
href="https://api.appnexus.com/deal?id=DEAL_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal?id=DEAL_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__3">Delete a deal.

<b>Warning:</b> If you delete a deal, all
campaigns targeting the deal will stop serving. Deletions are permanent
and cannot be reverted. Although deleted deals continue to be available
in reporting, you will no longer have visibility into their specific
settings.
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__26" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000012eb__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>If true, the deal is active.</p>
<p><strong>Default</strong>: true</p>

<b>Note:</b>
<ul>
<li>The deal will be available to the buyer only when this field is
true, <code class="ph codeph">start_date</code> is in the past (or
null), and <code class="ph codeph">end_date</code> is in the future (or
null).</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">adserver_lists</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Each object identifies an ad server
list that will be applied to the deal. To learn more, see <a
href="deal-service.md#ID-000012eb__deal-service-ad-server-lists"
class="xref">Ad Server Lists</a> below.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">allow_creative_add_on_click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>If true, allow any creative to serve
that adds users to a segment on click.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">allow_creative_add_on_view</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>If true, allow any creative to serve
that adds users to a segment on view.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
media subtypes allowed for the deal. To learn more, see <a
href="deal-service.md#ID-000012eb__deal-service-allowed-media-sub-types"
class="xref">Allowed Media Subtypes</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
media types allowed for the deal. To learn more, see <a
href="deal-service.md#ID-000012eb__deal-service-allowed-media-types"
class="xref">Allowed Media Types</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">ask_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The <code
class="ph codeph">floor_price</code> plus the seller revenue share
specified in your contract. This is the price shown to the buyer. It is
the minimum they must bid in order to compete for the inventory.</p>

<b>Note:</b> This field is required for
Programmatic Guaranteed deals and is the agreed upon price between the
seller and the buyer.

<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">POST</code></p>
<p><strong>Default</strong>: auto-generated number</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">auction_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The auction type for the deal. A
deal can have the following auction types: first price, second price,
and fixed price. For more information, see <a
href="deal-service.md#ID-000012eb__deal-service-auction-type"
class="xref">Auction Type</a> below.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">audit_status_option</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies how the deal handles
creatives.</p>
<ul>
<li><code class="ph codeph">none</code>: Creatives use existing ad
quality settings.</li>
<li><code class="ph codeph">provisional</code>: Creatives in "pending"
audit status will serve. Once these creatives are audited, the existing
ad quality settings are used.</li>
<li><code class="ph codeph">max_trust</code>: No ad profile restrictions
will be applied to this deal.</li>
</ul>
<p>Creatives specifically listed in the <a
href="deal-service.md#ID-000012eb__deal-service-creatives"
class="xref">Creatives</a> object will override these settings.</p>
<p><strong>Default</strong>: none</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The brands of creatives that are
eligible for the deal. For more details, see <a
href="deal-service.md#ID-000012eb__deal-service-brands"
class="xref">Brands</a> below.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">brand_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies whether the deal is
restricted only to the brands listed in the <a
href="deal-service.md#ID-000012eb__deal-service-brands"
class="xref">Brands</a> object.</p>
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed brands.</li>
<li><code class="ph codeph">false</code>: Other brands are also allowed
to serve.</li>
</ul>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The buying bidder and member who can
target this deal. A deal will only ever use the <code
class="ph codeph">buyer</code> field or the <code
class="ph codeph">buyer_seats</code> field, not both. For more details,
see <a href="deal-service.md#ID-000012eb__deal-service-buyer"
class="xref">Buyer</a> below.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">buyer_seats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
buying bidder and seat who can target this deal. A deal will only ever
use the <code class="ph codeph">buyer</code> field or the <code
class="ph codeph">buyer_seats</code> field, not both. For more details,
see <a href="deal-service.md#ID-000012eb__deal-service-buyer-seats"
class="xref">Buyer Seats</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">buyer_bidders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The buying bidder who can target
this deal. For more details, see <a
href="deal-service.md#ID-000012eb__deal-service-buyer-bidders"
class="xref">Buyer Bidders</a> below.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">buyer_members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The Xandr
member ID of the buyer who can target this deal. For more details, see
<a href="deal-service.md#ID-000012eb__deal-service-buyer-members"
class="xref">Buyer Members</a> below.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
categories that describe the creatives that are eligible for the deal.
For more details, see <a
href="deal-service.md#ID-000012eb__deal-service-categories"
class="xref">Categories</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">category_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies whether the deal is
restricted only to the categories listed in the <a
href="deal-service.md#ID-000012eb__deal-service-categories"
class="xref">Categories</a> object.</p>
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed categories.</li>
<li><code class="ph codeph">false</code>: Other categories are also
allowed to serve.</li>
</ul>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string (100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The custom code for the deal.</p>

<b>Note:</b> This field is mandatory and
represents your internal deal ID, passed in the bid request through the
<a
href="supply-partners/incoming-bid-request-from-ssps.md"
class="xref" target="_blank">PMP's object deal ID field</a>.

<p><strong>Required On</strong>: POST</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">created_by</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27">Specifies whether this deal was created
by the <code class="ph codeph">seller</code> or the <code
class="ph codeph">buyer</code> (using the <a
href="deal-from-package-service.md"
class="xref" target="_blank">Deal From Package Service</a>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">A
list of creatives that are specifically approved or banned for the deal.
This list overrides any other ad quality setting. For more details, see
<a href="deal-service.md#ID-000012eb__deal-service-creatives"
class="xref">Creatives</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The currency for the <code
class="ph codeph">floor_price</code>. For a full list of available
currencies, use the read-only <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>. </p>
<p><strong>Default</strong>: "USD"</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">data_protected</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>If true, settings for <code
class="ph codeph">allow_creative_add_on_view</code>, <code
class="ph codeph">allow_creative_add_on_click</code>, and <code
class="ph codeph">visibility_profile_id</code> are used for this deal.
If false, network and publisher settings are used.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string (65535)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The description of the deal. You can
use this field to provide the buyer additional insight or details about
the deal.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The day and time when the deal stops
being available to the buyer, in local time. If this is set, the format
must be "YYYY-MM-DD HH:MM:SS".</p>
<p><strong>Default</strong>: null (immediately)</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">floor_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The minimum CPM value that the buyer
must bid to be eligible for the deal.</p>

<b>Note:</b>
<ul>
<li>If <code class="ph codeph">use_deal_floor</code> is false, this
field must be set to 0. In this case, note that although 0 is shown as
the floor price, no deal floor is actually applied; if you have any
other floors (in placements or yield management profiles), they will be
applied, or if you do not have any other floors, the standard
second-price auction mechanics will apply.</li>
<li>As of 2017, only ask_price is used. API POST and PUT calls
referencing floor_price and use_deal_floor will work as follows:
<ul>
<li>If the API call includes ask_price only, this is the value that will
be used.</li>
<li>If the API call includes only a floor_price value, this value will
be converted into the ask_price value.</li>
</ul></li>
</ul>

<p><strong>Default</strong>: 0, if <code
class="ph codeph">use_deal_floor</code> is <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The ID of the deal.</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">DELETE</code></p>
<p><strong>Default</strong>: auto-incremented number</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">languages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
language associated with creatives that are eligible for the deal. For
more details, see <a
href="deal-service.md#ID-000012eb__deal-service-languages"
class="xref">Languages</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">language_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies whether the deal is
restricted only to the languages listed in the <a
href="deal-service.md#ID-000012eb__deal-service-languages"
class="xref">Languages</a> object.</p>
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed languages.</li>
<li><code class="ph codeph">false</code>: Other languages are also
allowed to serve.</li>
</ul>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><strong>Read Only.</strong> The date
and time when the deal was last modified, in local time.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">media_preference</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27">Specifies how this deal handles media
types/subtypes. There are two options:
<ul>
<li><code class="ph codeph">standard</code> = use whatever media types
are already on the auction (based on the placement settings)</li>
<li><code class="ph codeph">append</code> = include the media types on
the auction + any private media types set on the placement</li>
</ul>
<p>If a deal is created from a package, this setting is copied from the
package to the deal.<br />
</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string (255)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The name of the deal.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">package_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The package ID for the package from
which the deal was created, if applicable. See <a
href="deal-from-package-service.md"
class="xref" target="_blank">Deal From Package Service</a>.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">payment_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies the payment type for the
deal:</p>
<ul>
<li><code class="ph codeph">default</code>: This deal uses the default
payment type for the buyer of this deal. Includes CPM and may also
include CPA, CPC, or both.</li>
<li><code class="ph codeph">cpvm</code>: This deal uses the Viewable CPM
payment type. Only viewable impressions result in payment from the
buyer.</li>
</ul>
<p><strong>Default</strong>: default</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">priority</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The bidding priority for deals
when <code class="ph codeph">id</code> in the <code
class="ph codeph">type</code> object = 2/Private Auction.</p>
<p>Possible values: 1 - 20, where 20 is the highest priority.</p>
<p><strong>Default</strong>: 5</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The ID of the profile associated to
the deal. You can use a profile to specify publishers, placements,
content categories, geographical areas, segments, segment groups, or
sizes that need to be involved in the auction in order for the deal to
be available to the buyer. For more details, see <code
class="ph codeph">publisher_targets</code>, <code
class="ph codeph">placement_targets</code>, <code
class="ph codeph">content_category_targets</code>, <code
class="ph codeph">country_targets</code>, <code
class="ph codeph">region_targets</code>, <code
class="ph codeph">city_targets</code>, <code
class="ph codeph">dma_targets</code>, <code
class="ph codeph">segment_targets</code>, <code
class="ph codeph">segment_group_targets,</code> <code
class="ph codeph">site_targets</code>, and <code
class="ph codeph">size_targets</code> in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>.</p>

<b>Warning:</b> Any other targeting settings
in the associated profile will not be respected.

<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">seller</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><strong>Read Only.</strong> The selling
member who is offering the deal. For more details, see <a
href="deal-service.md#ID-000012eb__deal-service-seller"
class="xref">Seller</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">size_preference</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27">Specifies how this deal handles private
sizes. Private sizes are placement sizes (set in the <code
class="ph codeph">private_sizes</code> array in the <a
href="placement-service.md"
class="xref" target="_blank">Placement Service</a>) that can be allowed
to serve for a deal. There are two options:
<ul>
<li><code class="ph codeph">standard</code>: Private sizes are not
available for this deal.</li>
<li><code class="ph codeph">append</code>: Private sizes can be used in
addition to the specified placement size.</li>
</ul>
<p>If a deal is created from a package, this setting is copied from the
package to the deal.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>The day and time when the deal
starts being available to the buyer, in local time. If this is set, the
format must be "YYYY-MM-DD HH:MM:SS".</p>
<p><strong>Default</strong>: null (immediately)</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
technical attributes of creatives that are eligible for the deal. For
more details, see <a
href="deal-service.md#ID-000012eb__deal-service-technical-attributes"
class="xref">Technical Attributes</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">technical_attribute_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies whether the deal is
restricted only to the technical attributes listed in the <a
href="deal-service.md#ID-000012eb__deal-service-technical-attributes"
class="xref">Technical Attributes</a> object.</p>
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed technical attributes.</li>
<li><code class="ph codeph">false</code>: Other technical attributes are
also allowed to serve.</li>
</ul>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
type of deal. For sellers, a deal can be an open auction or a private
auction. For more details, see <a
href="deal-service.md#ID-000012eb__deal-service-type"
class="xref">Type</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>If true, the <code
class="ph codeph">floor_price</code> is applied for the deal.</p>

<b>Note:</b>
<ul>
<li>When <code class="ph codeph">use_deal_floor</code> is true, the
deal's floor price overrides any other floors you may have, i.e., in
placements or yield management profiles.</li>
<li>As of 2017, only ask_price is used. API POST and PUT calls
referencing floor_price and use_deal_floor will work as follows:
<ul>
<li>If the API call includes ask_price only, this is the value that will
be used.</li>
<li>If the API call includes only a floor_price value, this value will
be converted into the ask_price value.</li>
</ul></li>
</ul>

<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">version</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27"><p>Specifies the version of the deal
object. Possible values are:</p>
<ul>
<li>1 = External supply partner deals and legacy Monetize setups</li>
<li>2 = Monetize seller deals</li>
</ul>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code></p>
<p><strong>Default</strong>: 1</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">The
unique ID of the visibility profile that will be applied to a deal. This
ID can be retrieved from the <a
href="visibility-profile-service.md"
class="xref" target="_blank">Visibility Profile Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">line_item_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">array of int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__27">A
list consists of line items' IDs present in a deal. This array is filled
when deal version is 2, otherwise this is a null array. This is a
<strong>read-only</strong> field returned in a <code
class="ph codeph">GET</code> request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__25"><code
class="ph codeph">seller_targeting_restriction</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__26">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__27">Indicates whether the deal restricts
which attributes an Invest buyer can target whilst also targeting this
deal. See <a
href="deal-service.md#ID-000012eb__seller_restricted_targeting"
class="xref">Seller Restricted Targeting</a> below.</td>
</tr>
</tbody>
</table>

**Seller**

The `seller` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__166"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__167"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__168"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__166"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__168"><ul>
<li><strong>Read Only.</strong></li>
<li>Seller's member ID</li>
</ul>
<p>The member ID of the seller.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__166"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__167">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__168"><ul>
<li><strong>Read Only.</strong></li>
<li>Seller's member name</li>
</ul>
<p>The member name of the seller.</p></td>
</tr>
</tbody>
</table>

**Buyer**

The buyer object can be set on a `POST`, but cannot be updated with a
`PUT`. If you want to change the buyer, you need to create a new deal.

The `buyer` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__175"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__176"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__177"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__175"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__176">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__177"><p>The member ID of the buyer.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__175"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__176">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__177"><strong>Read Only.</strong> The bidder
ID of the member. For buyers, this will always be 2.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__175"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__177"><strong>Read Only.</strong> The member
name of the buyer.</td>
</tr>
</tbody>
</table>

**Example of the `buyer` object**

``` pre
"buyer": {
                "bidder_id": 2,
                "bidder_name": "Microsoft Invest",
                "id": 9155,
                "name": "Hearts & Science (AT&T)"
            },
"buyer_seats": null
```

**Buyer Bidders**

The `buyer_bidders` object can be set on a `POST`, and can be updated
with a `PUT`. When a seller is enabled for multi-buyer deals.
the `buyer_bidders` object can be set in combination
with `buyer_seats` and `buyer_members`.

The `buyer_bidders` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__187"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__188"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__189"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__187"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__188">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__189"><strong>Read Only.</strong> The name
of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__187"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__188">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__189"><p>The bidder ID of the buyer. The
 bidder ID is 2.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>

**Example of the `buyer_bidders` object**

``` pre
"buyer_bidders": [{
    "bidder_id": 1,
    "bidder_name": "Example Bidder"
}],
```

**Buyer Members**

The `buyer_members` object can be set on a `POST`, and can be updated
with a `PUT`. When a seller is enabled for multi-buyer deals,
the `buyer_members` object can be set in combination
with `buyer_seats` and `buyer_bidders`.

The `buyer_members` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__196"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__197"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__198"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__196"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__197">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__198"><strong>Read Only.</strong> The bidder
ID of the member. For Invest buyers, this will always be 2.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__196"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__197">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__198"><strong>Read Only.</strong> The name
of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__196"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__197">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__198"><p>The member ID of the buyer.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__196"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__197">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__198"><strong>Read Only.</strong> The member
name of the buyer.</td>
</tr>
</tbody>
</table>

**Example of the `buyer_members` object**

``` pre
"buyer_members": [{
    "bidder_id": 1,
    "bidder_name": "Example Bidder",
    "id": "456",
    "name": "Example Buyer Member"
}],
```

**Buyer Seats**

Deals with seats can be set up using the `buyer_seats` object via the
API. 

When a new deal is set up via  with
, the API will be populated with the
`buyer_seats` object. You can use the Invest buyer's member ID in the
`code` field as well as `bidder_id`. New deals with external DSPs can
also be set up with buyer seat IDs. You can check which external DSPs
are using buyer seat IDs <a
href="monetize_monetize-standard/external-dsps-using-buyer-seat-ids.md"
class="xref" target="_blank">here</a>.


<b>Note:</b>

- A deal can be set up with either `buyer` or `buyer_seats`, where
  `buyer` is a member, and `buyer_seats` is a seat.
- When a seller has buyer seat deals enabled, all deals with
   will be set up using buyer_seats (when the
  deal is set up using , deals with the `buyer`
  field can still be set up using API).
- `Code` is the seat code, in other words, the "seat ID" that the buyer
  will typically give. It's unique to a given `bidder_id`, so when
  creating a new deal, `code` and `bidder_id` are mandatory.



The `buyer_seats` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__211"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__212"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__213"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__211"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__212">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__213"><p>The bidder ID of the member.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__211"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__212">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__213">The name of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__211"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__212">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__213"><p>The identifier for the buyer
seat.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__211"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__212">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__213">The name of buyer.</td>
</tr>
</tbody>
</table>

**Example of the `buyer_seats` object**

``` pre
"buyer": null,
"buyer_seats": [
                {
                    "bidder_id": 2,
                    "bidder_name": "",
                    "code": "9155",
                    "name": "Hearts & Science (AT&T)"
                }
            ],
```

**Type**

The `type` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__226"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__227" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000012eb__entry__228"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__226"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__227">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__228"><p>The ID representing the type of
deal. Possible values:</p>
<ul>
<li><p>1 = Open Auction<br />
</p>
<p>In an "Open Auction", buyers targeting the deals and buyers targeting
the inventory via other means compete for the impression. If a buyer
targeting a deal submits the highest bid and the bid clears the deal's
floor, that buyer wins the auction, paying either the second-highest bid
or the deal floor price, whichever is higher. If one of the non-deal
buyers submits the highest bid, that buyer wins the auction, paying
either the second-highest bid or ECP, whichever is higher. </p></li>
<li><p>2 = Private Auction<br />
</p>
<p>In a "Private Auction", buyers targeting the private deals compete
for the impression first. Then, if none of the deal buyers win, the
auction is opened to buyers targeting the inventory via other means. If
a buyer targeting a deal submits a bid higher than the deal's floor and
higher than any other private auction bids, that buyer wins the auction,
paying either the second-highest bid from the private auction or the
deal floor price, whichever is higher. If no private auction deals clear
their floors, the highest bid in the open auction wins, paying either
the second-highest bid from the open auction or ECP, whichever is
higher.</p></li>
<li><p>4 = Programmatic Guaranteed<br />
</p>
<p>In "Programmatic Guaranteed," buyers target Programmatic Guaranteed
(PG) deals. PG deals bring the targeting, messaging, and reporting
benefits of programmatic advertising to guaranteed media buys. They
offer an automated solution for getting guaranteed access to media from
publishers and provide an efficient approach that eliminates many of the
additional steps required when buying via an insertion order.</p></li>
<li><p>5 = Curated Auction<br />
</p>
<p>In a "Curated Auction", buyers target supply across any seller
members that the Curator Member has packaged together. Buyers targeting
a curated deal are subject to the auction dynamics set by the underlying
seller in the curated deal, which can be either an Open or Private
auction type, depending on how the Curator has configured their
deal.</p></li>
</ul>
<p><strong>Default</strong>: 1</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__226"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__227">string (255)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__228"><p><strong>Read Only.</strong> The
name of the type of deal. Possible values: "Open Auction", "Private
Auction", "Curated", or "Programmatic Guaranteed".</p>
<p><strong>Default</strong>: "Open Auction"</p></td>
</tr>
</tbody>
</table>

**Auction Type**

The `auction_type` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__235"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__236" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000012eb__entry__237"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__235"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__236">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__237"><p>The ID of the auction type:</p>
<ul>
<li>1 = First price</li>
<li>2 = Standard price (default)</li>
<li>3 = Fixed price</li>
</ul>
<p><strong>Default</strong>: 2</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__235"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__236">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__237"><strong>Read Only.</strong> The name
of the auction type. Possible values: "first_price", "standard_price" or
"fixed_price".
<p><strong>Default</strong>: "standard_price"</p></td>
</tr>
</tbody>
</table>

**Brands**

Each `brands` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__244"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__245"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__246"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__244"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__245">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__246">The ID of the brand that is eligible
for the deal. You can use the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> to retrieve brand
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__244"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__245">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__246">The name of the brand that is eligible
for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__244"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__245">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__246"><p>Set to <code
class="ph codeph">true</code> to allow a brand to serve for a deal even
if the ad quality profile would have blocked it.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
</tbody>
</table>

**Allowed Media Types**

You can use this array to limit the media type, the general display
style of creatives, that can serve on placements that are part of this
deal.

Each `allowed_media_types` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__256"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__257"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__258"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__256"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__258"><p>The ID of the media type.</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__256"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__257">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__258">When the <code
class="ph codeph">allowed_media_type</code> object was last
updated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__256"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__257">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__258">The group ID for the media type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__256"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__257">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__258">The name of the allowed media type,
for example <code class="ph codeph">"Banner"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__256"><code
class="ph codeph">uses_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__257">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__258">Whether the media type has size
specifications. Possible values:
<ul>
<li><code class="ph codeph">always</code></li>
<li><code class="ph codeph">sometimes</code></li>
<li><code class="ph codeph">never</code></li>
</ul></td>
</tr>
</tbody>
</table>

**Allowed Media Subtypes**

You can use this array to limit the media subtype, the specific display
style of creatives, that can serve on placements that are part of this
deal.

Each `allowed_media_subtypes` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__274"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__275"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__276"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276">The ID of the <code
class="ph codeph">allowed_media_subtype</code>. <code
class="ph codeph">PUT</code> and <code class="ph codeph">POST</code> on
JSON file</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276">When the <code
class="ph codeph">allowed_media_subtype</code> array was last
modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">mediatype_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276">The ID of the <code
class="ph codeph">media_type</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276">The ID of the group for the media
type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">media_type_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276">The name of the <code
class="ph codeph">media_type</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276">The name of the <code
class="ph codeph">allowed_media_subtype</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">native_assets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__276">An
array describing constraints on elements of native ads for this media
subtype. Elements of a native ad can include the title, body content,
and more. The format's constraints could be whether body content is
required or recommended, or how long the text may be. For more
information, see <a href="deal-service.md#ID-000012eb__native-assets"
class="xref">Native Assets</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__274"><code
class="ph codeph">permitted_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__275">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__276"><p>The permitted sizes for creatives
of the media subtype. See <a
href="deal-service.md#ID-000012eb__deal-service-permitted-sizes"
class="xref">Permitted Sizes</a> below for more details.</p>

<b>Note:</b> Not all media subtypes have
permitted size requirements.

<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>

**Permitted Sizes**

Each `permitted_sizes` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__301"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__302"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__303"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">aspect_ratio_tolerance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">validate_image_size</code> and <code
class="ph codeph">scaling_permitted</code> are both <code
class="ph codeph">true</code> , the image can deviate from the aspect
ratio of <code class="ph codeph">platform_width</code> and <code
class="ph codeph">platform_height</code> by this amount. For example,
the aspect ratio for a platform_width and platform_height of 254x133 is
1.19:1. If the <code class="ph codeph">aspect_ratio_tolerance</code> is
0.03, an aspect ratio between 1.16:1 and 1.22:1 would be
acceptable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">max_image_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the maximum acceptable image height, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">max_image_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the maximum acceptable image width, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">min_image_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the minimum acceptable image height, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">min_image_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code>, the minimum acceptable image width, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">platform_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">The actual rendering width, in pixels,
for creatives of this media subtype. This is also the width that appears
in reporting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">platform_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">The actual rendering height, in
pixels, for creatives of this media subtype. This is also the height
that appears in reporting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">scaling_permitted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">true</code>, the image for creatives of this media
subtype must have the same aspect ratio as <code
class="ph codeph">platform_width</code> / <code
class="ph codeph">platform_height</code>.
<p>If <code class="ph codeph">false</code>, the image for creatives of
this media subtype must have a width and height exactly matching <code
class="ph codeph">platform_width</code> and <code
class="ph codeph">platform_height</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__301"><code
class="ph codeph">validate_image_size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__302">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__303">If <code
class="ph codeph">true</code>, the image for creatives of this media
subtype will be validated against the requirements defined by the
following fields in this object:<code
class="ph codeph">scaling_permitted</code>, <code
class="ph codeph">aspect_ratio_tolerance</code>, <code
class="ph codeph">min_image_width</code>, <code
class="ph codeph">max_image_width</code>, <code
class="ph codeph">min_image_height</code>, and <code
class="ph codeph">max_image_height</code>.</td>
</tr>
</tbody>
</table>

**External Metadata**

The `external_metadata` object is applicable for Programmatic Guaranteed
deals.

Each `external_metadata` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__331"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__332"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__333"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__331"><code
class="ph codeph">impressions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__332">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__333"><p>The impression budget amount for
external Programmatic Guaranteed deals. The numerical value for this
field must be greater than 0.</p>

<b>Note:</b> This field is required for
Programmatic Guaranteed deals.

<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>

**Native Assets**

Each `native_assets` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__337"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__338"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__339"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__337"><code
class="ph codeph">max_text_length</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__338"> int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__339">The maximum length for the text</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__337"><code
class="ph codeph">min_text_length</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__338"> int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__339">The minimum length for the text</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__337"><code
class="ph codeph">native_asset_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__338">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__339">The title of the ad</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__337"><code
class="ph codeph">requirement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__338">enum </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__339">Whether this asset is required by this
particular media subtype. This field can contain several levels of
"requiredness":
<ul>
<li><code class="ph codeph">"required"</code></li>
<li><code class="ph codeph">"recommended"</code></li>
<li><code class="ph codeph">"optional"</code></li>
</ul></td>
</tr>
</tbody>
</table>

**Categories**

Each `categories` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__352"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__353"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__354"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__352"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__353">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__354">The ID of the categories that is
eligible for the deal. You can use the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a> to retrieve category
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__352"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__353">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__354">The name of the category that is
eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__352"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__353">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__354"><p>Set to <code
class="ph codeph">true</code> to allow a category to serve for a deal
even if the ad quality profile would have blocked it.</p>
<strong>Default</strong>: false</td>
</tr>
</tbody>
</table>

**Languages**

Each `languages` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__364"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__365"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__366"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__364"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__365">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__366">The ID of the language that is
eligible for the deal. You can use the <a
href="language-service.md"
class="xref" target="_blank">Language Service</a> to retrieve language
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__364"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__365">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__366">The name of the language that is
eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__364"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__365">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__366"><p>Set to <code
class="ph codeph">true</code> to allow a language to serve for a deal
even if the ad quality profile would have blocked it.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
</tbody>
</table>

**Technical Attributes**

Each `technical_attribute` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__376"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__377"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__378"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__376"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__377">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__378">The ID of the technical attribute that
is eligible for the deal. You can use the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a> to retrieve
technical attribute IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__376"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__377">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__378">The name of the technical attribute
that is eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__376"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__377">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__378"><p>Set to <code
class="ph codeph">true</code> to allow a technical attribute to serve
for a deal even if the ad quality profile would have blocked it.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
</tbody>
</table>

**Creatives**

The `creatives` array is limited to 100 creatives. Each `creatives`
object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__388"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__389"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__390"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__388"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__389">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__390">The ID of the creative that is
approved or banned for the deal. You can use the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> to retrieve creative
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__388"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__389">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__390">Specifies how this creative will be
handled for this deal.<br />
 &#10;<ul>
<li><code class="ph codeph">approved</code>: This creative can always
serve in this deal, regardless of any other ad quality settings or
overrides.</li>
<li><code class="ph codeph">banned</code>: This creative can never serve
in this deal, regardless of any other ad quality settings or
overrides.</li>
</ul></td>
</tr>
</tbody>
</table>

**Ad Server Lists**

Each `adserver_lists` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__entry__397"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__entry__398"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000012eb__entry__399"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__397"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__398">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__399"><p>The ID of the ad server list that
will be applied to this deal.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__397"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__398">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__399">The name of the ad server list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__397"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__entry__398">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000012eb__entry__399">If
true, apply this ad server list to the deal.</td>
</tr>
</tbody>
</table>



**Seller Restricted Targeting**

A deal can specify which attributes an Invest buyer is allowed to target
whilst also targeting this deal. The options are:

- no restrictions - Invest buyers can target all attributes on their
  line item whilst targeting this deal.
- some restrictions - Invest buyers can target certain attributes on
  their line item.
- all restrictions - Invest buyers can target no other attributes whilst
  targeting this deal.

Your member may be configured to use one of these settings by default
when new deals are created.



<table id="ID-000012eb__table_dv4_qgr_xxb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__table_dv4_qgr_xxb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__table_dv4_qgr_xxb__entry__2"
class="entry colsep-1 rowsep-1">Type (Length)</th>
<th id="ID-000012eb__table_dv4_qgr_xxb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_dv4_qgr_xxb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_dv4_qgr_xxb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_dv4_qgr_xxb__entry__3"><p>Possible values
are:</p>
<ul>
<li><code class="ph codeph">1</code> (no restrictions)</li>
<li><code class="ph codeph">2</code> (some restrictions)</li>
<li><code class="ph codeph">3</code> (all restrictions)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_dv4_qgr_xxb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_dv4_qgr_xxb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_dv4_qgr_xxb__entry__3"><strong>Read
Only</strong>. The name of the configured targeting restrictions (see
<code class="ph codeph">id</code>).</td>
</tr>
</tbody>
</table>



If a deal is configured for some restrictions, the visibility profile
associated with the deal (see the `visibility_profile_id` field in the
<a href="deal-service.md#ID-000012eb__json_fields" class="xref">JSON
Fields</a> section) determines the selection of attributes a buyer can
target. The following visibility profile fields may be used to restrict
a buyer's allowed targeting:



<table id="ID-000012eb__table_ec4_nhr_xxb" class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000012eb__table_ec4_nhr_xxb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000012eb__table_ec4_nhr_xxb__entry__2"
class="entry colsep-1 rowsep-1">Targeting restrictions for Invest
buyers</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_city_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">City</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_datetime_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Daypart</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_device_type_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Device Type</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_dma_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">DMA</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_postal_code_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Postal code, postal
code lists, political districts</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_segment_groups_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Segments</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_state_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Region</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_content_duration_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Content
Duration (e.g. long-form, short-form)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_content_genres_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Content
Genres</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_content_networks_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Content
Network</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_content_ratings_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Content
Ratings</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_context_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Context (e.g.
pre-roll, mid-roll, etc.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_delivery_types_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Delivery Type
(e.g. live, VOD)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__1"><code
class="ph codeph">expose_video_program_types_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012eb__table_ec4_nhr_xxb__entry__2">Video Program
Types</td>
</tr>
</tbody>
</table>





<b>Note:</b>

- Any targeting restrictions defined with the fields above will be
  applied to all buyers on the deal regardless of any buyer member-level
  or bidder-level overrides configured on the visibility profile.
- Also, sellers cannot simultaneously enable Data Protection (see the
  `data_protected` field in the
  <a href="deal-service.md#ID-000012eb__json_fields" class="xref">JSON
  Fields</a> section) and
  <a href="deal-service.md#ID-000012eb__seller_restricted_targeting"
  class="xref">Seller Restricted Targeting</a> features on the same
  deal.





## Examples

**Add a private auction deal with a floor of $2.50**

``` pre
$ cat new_deal
 
{
    "deal": {
        "name": "Private deal for buyer 1234 with floor of $2.50",
        "active": false,
        "start_date": "2016-12-01 00:00:00",
        "end_date": "2016-12-31 23:59:59",
        "floor_price": 2.5,
        "currency": "USD",
        "use_deal_floor": true,
        "buyer": {
                "id": 1234
        },
        "type": {
                "id": 2
        },
        "brands": [
                {
                        "id": 1
                }
            ]
    }
}
 
$ curl -b cookies -c cookies -X POST -d @new_deal.json 'https://api.appnexus.com/deal'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 63,
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "id": 63,
            "code": null,
            "name": "Private deal for buyer 1234 with floor of $2.50",
            "description": null,
            "active": false,
            "seller_member_id": 2345,
            "start_date": "2013-12-01 00:00:00",
            "end_date": "2013-12-31 23:59:59",
            "profile_id": null,
            "package_id": null,
            "floor_price": 2.5,
            "currency": "USD",
            "use_deal_floor": true,
            "last_modified": "2013-12-04 20:39:57",
            "seller": {
                "id": 1066,
                "name": "Seller 123"
            },
            "buyer": {
                "id": 1234,
                "bidder_id": 6,
                "name": "Buyer 456"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "brands": [
                {
                    "id": 1,
                                        "name": "Example Brand"
                }
            ],
            "ask_price": 0,
            "size_preference": null
        }
    }
}
```

**Add a private auction deal with no floor**

``` pre
$ cat new_deal_nofloor
 
{
    "deal": {
        "name": "Private deal for buyer 1234 with no floor",
        "active": false,
        "start_date": "2016-12-01 00:00:00",
        "end_date": "2016-12-31 23:59:59",
        "floor_price": 0,
        "use_deal_floor": false,
        "buyer": {
                "id": 1234
        },
        "type": {
                "id": 2
        },
        "brands": [
                {
                        "id": 1
                }
            ]
    }
}
 
$ curl -b cookies -c cookies -X POST -d @new_deal_nofloor.json 'https://api.appnexus.com/deal'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 64,
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "id": 64,
            "code": null,
            "name": "Private deal for buyer 1234 with no floor",
            "description": null,
            "active": false,
            "start_date": "2013-12-01 00:00:00",
            "end_date": "2013-12-31 23:59:59",
            "profile_id": null,
            "package_id": null,
            "floor_price": 0,
            "currency": "USD",
            "use_deal_floor": false,
            "last_modified": "2013-12-04 20:43:44",
            "seller": {
                "id": 2345,
                "name": "Seller 123"
            },
            "buyer": {
                "id": 1234,
                "bidder_id": 6,
                "name": "Buyer 456"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "brands": [
                {
                    "id": 1,
                    "name": "Example Brand"
                }
            ],
            "ask_price": 0,
            "size_preference": null
        }
    }
}
```

**Modify a deal**

In this example, we add another eligible brand to the deal and we extend
the end date.

``` pre
$ cat deal_update
 
{
    "deal": {
        "end_date": "2017-01-31 23:59:59",
        "brands": [
                {
                        "id": 1
                },
            {
                "id": 5
            }
            ]
    }
}
 
$ curl -b cookies -c cookies -X PUT -d @deal_update.json 'https://api.appnexus.com/deal?id=64'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "64",
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "id": 64,
            "code": null,
            "name": "Private deal for buyer 1234 with no floor",
            "description": null,
            "active": false,
            "start_date": "2016-12-01 00:00:00",
            "end_date": "2016-01-31 23:59:59",
            "profile_id": null,
            "package_id": null,
            "floor_price": 0,
            "currency": "USD",
            "use_deal_floor": false,
            "last_modified": "2016-12-04 20:51:35",
            "seller": {
                "id": 2345,
                "name": "Seller 123"
            },
            "buyer": {
                "id": 1234,
                "bidder_id": 6,
                "name": "Buyer 456"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "brands": [
                {
                    "id": 1,
                    "name": "Example Brand"
                },
                {
                    "id": 5,
                    "name": "Another Brand"
                }
            ],
            "ask_price": 0,
            "size_preference": null
        }
    }
}
```

**Modify a deal to add overrides and ban certain creatives**

In this example, we update a deal to allow user- and auto-initiated
audio creatives to always serve regardless of ad quality settings. We
also specifically ban two creative IDs.

``` pre
$ cat deal_override
 
{
    "deal": {
        "id": 201,
        "technical_attributes": [
            {
                "id": 7,
                "name": "Audio: user-initiated",
                "override": true
            },
            {
                "id": 8,
                "name": "Audio: auto-initiated",
                "override": true
            }
        ],
        "creatives": [
            {
                "id": 987654,
                "status": "banned"
            },
            {
                "id": 123456,
                "status": "banned"
            }
        ]
    }
}
 
$ curl -b cookies -c cookies -X PUT -d @deal_override.json 'https://api.appnexus.com/deal?id=64'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "64",
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "id": 201,
            "code": null,
            "name": "Private deal for buyer 1085 with no floor",
            "description": null,
            "active": false,
            "start_date": "2016-12-01 00:00:00",
            "end_date": "2017-01-31 23:59:59",
            "profile_id": null,
            "package_id": null,
            "floor_price": 0,
            "currency": "USD",
            "use_deal_floor": false,
            "last_modified": "2016-12-04 20:51:35",
            "seller": {
                "id": 2345,
                "name": "Seller 123"
            },
            "buyer": {
                "id": 1234,
                "bidder_id": 6,
                "name": "Buyer 456"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "technical_attributes": [
                {
                    "id": 7,
                    "name": "Audio: user-initiated",
                    "override": true
                },
                {
                    "id": 8,
                    "name": "Audio: auto-initiated",
                    "override": true
                }
            ],
            "creatives": [
                {
                    "id": 987654,
                    "status": "banned"
                },
                {
                    "id": 123456,
                    "status": "banned"
                }
            ],
            "ask_price": 0,
            "size_preference": null
        }
    }
}
```

**View all deals you have with buyers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal'
{
    "response": {
        "status": "OK",
        "count": 7,
        "start_element": 0,
        "num_elements": 100,
        "deals": [
            {
                "id": 63,
                "code": null,
                "name": "Private deal for buyer 1234 with floor of $2.50",
                "description": null,
                "active": false,
                "seller_member_id": 2345,
                "start_date": "2016-12-01 00:00:00",
                "end_date": "2016-12-31 23:59:59",
                "profile_id": null,
                "package_id": null,
                "floor_price": 2.5,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2016-12-04 20:39:57",
                "seller": {
                    "id": 2345,
                    "name": "Seller 123"
                },
                "buyer": {
                    "id": 1234,
                    "bidder_id": 6,
                    "name": "Buyer 456"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": [
                    {
                        "id": 1,
                        "name": "Example Brand"
                    }
                ],
                "ask_price": 3,
                "size_preference": null
            },
            {
                "id": 64,
                "code": null,
                "name": "Private deal for buyer 1234 with no floor",
                "description": null,
                "active": false,
                "start_date": "2016-12-01 00:00:00",
                "end_date": "2016-12-31 23:59:59",
                "profile_id": null,
                "package_id": null,
                "floor_price": 1.2,
                "currency": "USD",
                "use_deal_floor": false,
                "last_modified": "2016-12-04 20:43:44",
                "seller": {
                    "id": 2345,
                    "name": "Seller 123"
                },
                "buyer": {
                    "id": 1234,
                    "bidder_id": 2,
                    "name": "Buyer ABC"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": [
                    {
                        "id": 1,
                        "name": "Example Brand"
                    }
                ],
                "ask_price": 0,
                "size_preference": null
            }
        ]
    }
}
```

**View a specific deal**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal?id=64'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "id": 64,
            "code": null,
            "name": "Private deal for buyer 1234 with no floor",
            "description": null,
            "active": false,
            "start_date": "2016-12-01 00:00:00",
            "end_date": "2017-01-31 23:59:59",
            "profile_id": null,
            "package_id": null,
            "floor_price": 1,
            "currency": "USD",
            "use_deal_floor": false,
            "last_modified": "2016-12-04 20:51:35",
            "seller": {
                "id": 2345,
                "name": "Seller 123"
            },
            "buyer": {
                "id": 1234,
                "bidder_id": 2,
                "name": "Buyer ABC"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "brands": [
                {
                    "id": 1,
                    "name": "Example Brand"
                },
                {
                    "id": 5,
                    "name": "Another Brand"
                }
            ],
            "ask_price": 1.25,
            "size_preference": null
        }
    }
}
```

**Delete a deal**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/deal?id=61'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null
    }
}
```






