---
Title : Deal Buyer Access Service
Description : This read-only service lets buyers view information about the negotiated
deals they have with Xandr's UI sellers and
external supply partners. A deal may provide a buyer preferential
---


# Deal Buyer Access Service



This read-only service lets buyers view information about the negotiated
deals they have with Xandr's UI sellers and
external supply partners. A deal may provide a buyer preferential
pricing, access to exclusive inventory, reduced competition on
inventory, or other opportunities. Each deal is valid for a single
buyer, but note that inventory included in a deal may be encompassed by
deals with other buyers as well.



Note:

Buyers can use the `deal_targets` field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> to target deals.
Sellers can use the
<a href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> to set up and manage
deals.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000b84__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000b84__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__2"><a
href="https://api.appnexus.com/deal-buyer-access" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal-buyer-access</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__3">View
all deals you have with sellers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__2"><a
href="https://api.appnexus.com/deal-buyer-access?seller_member_id=SELLER_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/deal-buyer-access?seller_member_id=SELLER_MEMBER_ID</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__3">View
all deals you have with a specific seller</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__2"><a
href="https://api.appnexus.com/deal-buyer-access?id=DEAL_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/deal-buyer-access?id=DEAL_ID</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__3">View
a specific deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__2"><a
href="https://api.appnexus.com/deal-buyer-access?id=1%2c2%2c3"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/deal-buyer-access?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__3">View
multiple deals by ID using a comma-separated list</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__2">https://api.<span
class="ph">appnexus.com/deal-buyer-access?search="Deal ID, name,
or code" </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__3">Search for a deal by name, ID, or
code</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__2"><a
href="https://api.appnexus.com/deal-buyer-access/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal-buyer-access/meta</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__23" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000b84__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">If
true, the deal is active. Note that the deal will be available to the
buyer only when this field is true, <code
class="ph codeph">start_date</code> is in the past (or null), and <code
class="ph codeph">end_date</code> is in the future (or null).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">ask_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">The  price associated with the deal.
This is the minimum amount the seller will accept for this
inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">audit_status_option</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies how the deal handles
creatives.
<ul>
<li><code class="ph codeph">none</code>: Creatives use existing ad
quality settings.</li>
<li><code class="ph codeph">provisional</code>: Creatives in "pending"
audit status will serve. Once these creatives are audited, the existing
ad quality settings are used.</li>
<li><code class="ph codeph">max_trust</code>: Any creative is allowed to
serve for this deal.</li>
</ul>
<p>Creatives specifically listed in the <a
href="deal-buyer-access-service.html#ID-00000b84__cre"
class="xref">Creatives</a> object will override these settings.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
brands of creatives that are eligible for the deal. For more details,
see <a href="deal-buyer-access-service.html#ID-00000b84__brand"
class="xref">Brands</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">brand_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies whether the deal is
restricted only to the brands listed in the <a
href="deal-buyer-access-service.html#ID-00000b84__brand"
class="xref">Brands</a> object.
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed brands.</li>
<li><code class="ph codeph">false</code>: Other brands are also allowed
to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
buying member who can target this deal. For more details, see <a
href="deal-buyer-access-service.html#ID-00000b84__buy"
class="xref">Buyer</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
categories that describe the creatives that are eligible for the deal.
For more details, see <a
href="deal-buyer-access-service.html#ID-00000b84__category"
class="xref">Categories</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">category_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies whether the deal is
restricted only to the categories listed in the <a
href="deal-buyer-access-service.html#ID-00000b84__category"
class="xref">Categories</a> object.
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed categories.</li>
<li><code class="ph codeph">false</code>: Other categories are also
allowed to serve.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
custom code for the deal. For deals with external supply partners, this
is generally the string that you will use to identify the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">A
list of creatives that are specifically approved or banned for the deal.
This list overrides any other ad quality setting. For more details, see
<a href="deal-buyer-access-service.html#ID-00000b84__cre"
class="xref">Creatives</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
currency for the <code class="ph codeph">floor_price</code>. For a full
list of available currencies, use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">string (65535)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
description of the deal. For deals with external supply partners, the
description may provide additional insight or details about the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
day and time when the deal stops being available to the buyer. Null
corresponds to "indefinitely".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">floor_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24"><strong>Deprecated. Refer to
the</strong> <code class="ph codeph">ask_price</code> <strong>field
instead</strong>. The minimum CPM value that the buyer must bid to be
eligible for the deal.

Note:
<p>If <code class="ph codeph">use_deal_floor</code> is false, <code
class="ph codeph">floor_price</code> will be 0. In this case, note that
although 0 is shown as the floor price, no deal floor is applied; if the
seller has any other floors (in placements or yield management
profiles), they will be applied, or if the seller does not have any
other floors, the standard second-price auction mechanics will
apply.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
ID of the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">languages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
language associated with creatives that are eligible for the deal. For
more details, see <a
href="deal-buyer-access-service.html#ID-00000b84__lang"
class="xref">Languages</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">language_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies whether the deal is
restricted only to the languages listed in the <a
href="deal-buyer-access-service.html#ID-00000b84__lang"
class="xref">Languages</a> object.
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed languages.</li>
<li><code class="ph codeph">false</code>: Other languages are also
allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
date and time when the deal was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
name of the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">payment_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies the payment type for the
deal:
<ul>
<li><code class="ph codeph">default</code>: This deal uses the default
payment type for the buyer of this deal. Includes CPM and may also
include CPA, CPC, or both.</li>
<li><code class="ph codeph">cpvm</code>: This deal uses the Viewable CPM
payment type. Only viewable impressions result in payment from the
buyer.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">seller</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
selling member who is offering the deal. For more details, see <a
href="deal-buyer-access-service.html#ID-00000b84__sell"
class="xref">Seller</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
sizes of creatives that are eligible for the deal. For more details, see
<a href="deal-buyer-access-service.html#ID-00000b84__size"
class="xref">Size Targets</a> below.

Note:
<p>If this array is not present in the response, there are no creative
size requirements for the deal.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">size_preference</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies how this deal handles private
sizes. Private sizes are placement sizes that a seller can allow to
serve for a deal. There are two options:
<ul>
<li><code class="ph codeph">standard</code>: Private sizes are not
available for this deal.</li>
<li><code class="ph codeph">append</code>: Private sizes can be used in
addition to the specified placement size.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
day and time when the deal starts being available to the buyer. Null
corresponds to "immediately".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">suggested_min_bid_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
minimum amount that will likely clear the ask price. This is the sum of
the <code class="ph codeph">ask_price</code> and the auction service
charge specified in your Xandr contract. For
deals with external suppliers, this amount will include additional
margin to account for discrepancies.
<p>Bidding the <code class="ph codeph">suggested_min_bid_price</code>
helps ensure that you are eligible for the deal but there is no
guarantee that your bid will win.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
technical attributes of creatives that are eligible for the deal. For
more details, see <a
href="deal-buyer-access-service.html#ID-00000b84__ta"
class="xref">Technical Attributes</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">technical_attribute_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__24">Specifies whether the deal is
restricted only to the technical attributes listed in the <a
href="deal-buyer-access-service.html#ID-00000b84__ta"
class="xref">Technical Attributes</a> object.
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed technical attributes.</li>
<li><code class="ph codeph">false</code>: Other technical attributes are
also allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">The
type of deal. For  sellers, a deal can be an
open auction or a private auction. For external supply partners, a deal
can also be first-look access. For more details, see <a
href="deal-buyer-access-service.html#ID-00000b84__type"
class="xref">Type</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__22"><code
class="ph codeph">use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__23">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__24">If
true, the <code class="ph codeph">floor_price</code> is applied for the
deal.

Note:
<p>When <code class="ph codeph">use_deal_floor</code> is true, the
deal's floor price overrides any other floors the seller may have, i.e.,
in placements or yield management profiles.</p>
</td>
</tr>
</tbody>
</table>

**Seller**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__112"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__113"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__114"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__112"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__113">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__114"><strong>Read-only</strong>. The member
ID of the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__112"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__113">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__114"><strong>Read-only</strong>. The member
name of the seller.</td>
</tr>
</tbody>
</table>

**Buyer**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__121"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__122"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__123"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__121"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__122">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__123">The member ID of the buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__121"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__122">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__123">The bidder ID of the member. For <span
class="ph">Xandr's UI buyers, this will always be 2.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__121"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__122">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__123">The member name of the buyer.</td>
</tr>
</tbody>
</table>

**Type**

The `Type` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__133"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__134" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000b84__entry__135"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__133"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__134">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__135">The ID representing the type of deal.
Possible values:
<ul>
<li><code class="ph codeph">1</code> = Open Auction<br />
In an "Open Auction", <strong>buyers targeting the deals and buyers
targeting the inventory via other means compete for the
impression</strong>. If a buyer targeting a deal submits the highest bid
and the bid clears the deal's floor, that buyer wins the auction, paying
either the second-highest bid or the deal floor price, whichever is
higher. If one of the non-deal buyers submits the highest bid, that
buyer wins the auction, paying either the second-highest bid or ECP,
whichever is higher. </li>
<li><code class="ph codeph">2</code> = Private Auction<br />
In a "Private Auction", <strong>buyers targeting the private deals
compete for the impression first</strong>. Then, if none of the deal
buyers win, the auction is opened to buyers targeting the inventory via
other means. If a buyer targeting a deal submits a bid higher than the
deal's floor and higher than any other private auction bids, that buyer
wins the auction, paying either the second-highest bid from the private
auction or the deal floor price, whichever is higher. If no private
auction deals clear their floors, the highest bid in the open auction
wins, paying either the second-highest bid from the open auction or ECP,
whichever is higher.</li>
<li>3 = First Look<br />
Deals considered "First Look" are offered only by external supply
partners and have extremely varied auction logic depending on both the
supply partner and the seller. You must contact the supply partner for
details about how the deal works. Xandr as a
buying platform can make no guarantee that first look deals actually
give you the first look at an impression. </li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__133"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__134">string (255)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__135">The name of the type of deal. Possible
values: "Open Auction", "Private Auction", or "First Look".</td>
</tr>
</tbody>
</table>

**Brands**

Each `brands` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__142"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__143"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__144"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__142"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__143">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__144">The ID of the brand that is eligible
for the deal. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-service.html"
class="xref" target="_blank">Brand Service</a> to retrieve brand
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__142"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__143">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__144">The name of the brand that is eligible
for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__142"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__143">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__144">If
set to <code class="ph codeph">true</code>, a brand can serve for a deal
even if the ad quality profile would have blocked it.</td>
</tr>
</tbody>
</table>

**Categories**

Each categories object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__154"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__155"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__156"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__154"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__155">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__156">The ID of the categories that is
eligible for the deal. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/category-service.html"
class="xref" target="_blank">Category Service</a> to retrieve category
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__154"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__155">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__156">The name of the category that is
eligible for the deal.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__154"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__155">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__156"> If set to <code
class="ph codeph">true</code>, a category can serve for a deal even if
the ad quality profile would have blocked it.</td>
</tr>
</tbody>
</table>

**Languages**

Each `languages` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__166"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__167"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__168"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__166"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__168">The ID of the language that is
eligible for the deal. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/language-service.html"
class="xref" target="_blank">Language Service</a> to retrieve language
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__166"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__167">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__168">The name of the language that is
eligible for the deal.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__166"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__167">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__168"> If set to <code
class="ph codeph">true</code>, a language can serve for a deal even if
the ad quality profile would have blocked it.</td>
</tr>
</tbody>
</table>

**Technical Attributes**

Each `technical_attribute` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__178"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__179"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__180"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__178"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__179">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__180">The ID of the technical attribute that
is eligible for the deal. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/technical-attribute-service.html"
class="xref" target="_blank">Technical Attribute Service</a> to retrieve
technical attribute IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__178"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__179">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__180">The name of the technical attribute
that is eligible for the deal.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__178"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__179">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000b84__entry__180">If
set to <code class="ph codeph">true</code>, a technical attribute can
serve for a deal even if the ad quality profile would have blocked
it.</td>
</tr>
</tbody>
</table>

**Creatives**

The `creatives` array is limited to 100 creatives. Each `creatives`
object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__190"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__191"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__192"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__190"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__191">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__192">The ID of the creative that is
approved or banned for the deal. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> to retrieve creative
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__190"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__191">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__192">Specifies how this creative will be
handled for this deal.<br />
 &#10;<ul>
<li><code class="ph codeph">approved</code>: This creative can always
serve in this deal, regardless of any other ad quality settings or
overrides.</li>
<li><code class="ph codeph">banned</code>: This creative can never serve
in this deal, regardless of any other ad quality settings or
overrides.<br />
</li>
</ul></td>
</tr>
</tbody>
</table>

**Sizes**

Each object in the `size_targets` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b84__entry__199"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000b84__entry__200"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000b84__entry__201"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__199"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__200">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__201">The width of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__199"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__200">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000b84__entry__201">The height of the creative.</td>
</tr>
</tbody>
</table>





## Examples

**View all deals you have with sellers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-access'
{ 
    "response": {
        "status": "OK",
        "count": 6,
        "start_element": 0,
        "num_elements": 100,
        "deals": [
            {
                "id": 62,
                "code": null,
                "name": "Private deal for buyer 1085 with floor of 2.5",
                "description": null,
                "active": false,
                "start_date": "2013-12-01 00:00:00",
                "end_date": "2013-12-31 23:59:59",
                "floor_price": 2.5,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2013-12-04 20:15:38",
                "seller": {
                    "id": 100004,
                    "name": "Seller 123"
                },
                "buyer": {
                    "id": 100005,
                    "bidder_id": 2,
                    "name": "Buyer 123"
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
                                "ask_price": 2.75,
                                "suggested_min_bid_price": 3,
                "sizes": [
                    {
                        "width": "300",
                        "height": "250"
                    }
                ]
            },
            {
                "id": 63,
                "code": null,
                "name": "Private deal for buyer 1085 with floor of $2.50",
                "description": null,
                "active": false,
                "start_date": "2013-12-01 00:00:00",
                "end_date": "2013-12-31 23:59:59",
                "floor_price": 2.5,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2013-12-04 20:39:57",
                "seller": {
                    "id": 100006,
                    "name": "Seller 456"
                },
                "buyer": {
                    "id": 100007,
                    "bidder_id": 2,
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
                ]
            },
            ...
        ]
    }
}
```

**View all deals you have with a specific seller**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-access?seller_member_id=100006'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "deals": [
            {
                "id": 63,
                "code": null,
                "name": "Private deal for buyer 1085 with floor of $2.50",
                "description": null,
                "active": false,
                "start_date": "2013-12-01 00:00:00",
                "end_date": "2013-12-31 23:59:59",
                "floor_price": 2.5,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2013-12-04 20:39:57",
                "seller": {
                    "id": 100006,
                    "name": "Seller 456"
                },
                "buyer": {
                    "id": 100007,
                    "bidder_id": 2,
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
                                "ask_price": 2.75,
                                "suggested_min_bid_price": 3,
                "sizes": [
                    {
                        "width": "300",
                        "height": "250"
                    }
                ]  
            }
        ]
    }
}
```

**View a specific deal**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-access?id=63'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "deal": 
        "deals": {
            "id": 63,
            "code": null,
            "name": "Private deal for buyer 1085 with floor of $2.50",
            "description": null,
            "active": false,
            "start_date": "2013-12-01 00:00:00",
            "end_date": "2013-12-31 23:59:59",
            "floor_price": 2.5,
            "currency": "USD",
            "use_deal_floor": true,
            "last_modified": "2013-12-04 20:39:57",
            "seller": {
                "id": 100006,
                "name": "Seller 456"
            },
            "buyer": {
                "id": 100007,
                "bidder_id": 2,
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
                        "ask_price": 2.75,
                        "suggested_min_bid_price": 3,
            "sizes": [
                {
                    "width": "300",
                    "height": "250"
                }
            ]
        }
    }
}
```

**View all deals that have not expired**

In this example, assuming today is December 4, 2018, we want to find all
deals that have not expired. To do this, we pass the
`min_end_date=2018-12-04` filter in the query string. Note, however,
that deals with no end date will not show up in the response.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-access?min_end_date=2018-12-04'
{
    "response": {
        "status": "OK",
        "count": 4,
        "start_element": 0,
        "num_elements": 100,
        "deals": [
            {
                "id": 60,
                "code": null,
                "name": null,
                "description": null,
                "active": true,
                "start_date": "2018-12-01 00:00:00",
                "end_date": "2018-12-31 23:59:00",
                "floor_price": 3.2,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2018-12-04 18:47:39",
                "seller": {
                    "id": 100006,
                    "name": "Seller 456"
                },
                "buyer": {
                    "id": 100007,
                    "bidder_id": 2,
                    "name": "Buyer 456"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": null,
                                "ask_price": 3.5,
                                "suggested_min_bid_price": 3.75,
            },
            {
                "id": 62,
                "code": null,
                "name": "Private deal for buyer 1085 with floor of 2.5",
                "description": null,
                "active": false,
                "seller_member_id": 1066,
                "start_date": "2018-12-01 00:00:00",
                "end_date": "2018-12-31 23:59:59",
                "profile_id": null,
                "floor_price": 2.5,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2018-12-04 20:15:38",
                "seller": {
                    "id": 100006,
                    "name": "Seller 456"
                },
                "buyer": {
                    "id": 100007,
                    "bidder_id": 2,
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
                ]
            },
            ...
        ]
    }
}
```






