---
Title : Deal Buyer Access Service
Description : This read-only service lets bidders view information about the
ms.date : 10/28/2023
negotiated deals they have with sellers on
Xandr's platform. A deal may provide a buyer
---


# Deal Buyer Access Service



This read-only service lets bidders view information about the
negotiated deals they have with sellers on
Xandr's platform. A deal may provide a buyer
preferential pricing, access to exclusive inventory, reduced competition
on inventory, or other opportunities. Each deal is valid for a single
buyer, but note that inventory included in a deal may be encompassed by
deals with other buyers as well.



## REST API



<b>Tip:</b> When logged in with a member user,
the following calls will return only deals available to that member.
When logged in with a bidder user, the following calls will return deals
available to all members or buyer seats under that bidder.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00004d89__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00004d89__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__2"><a
href="https://api.adnxs.com/deal-buyer-access" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/deal-buyer-access</a>  </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__3">View
all deals you have with sellers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__2"><a
href="https://api.adnxs.com/deal-buyer-access?seller_member_id=SELLER_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/deal-buyer-access?seller_member_id=SELLER_MEMBER_ID</a>
  </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__3">View
all deals you have with a specific seller.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__2"><a
href="https://api.adnxs.com/deal-buyer-access?id=DEAL_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/deal-buyer-access?id=DEAL_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__3">View
a specific deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__2"><a
href="https://api.adnxs.com/deal-buyer-access?id=1%2c2%2c3" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/deal-buyer-access?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__3">View
multiple deals by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__2">https://api.<span
class="ph">adnxs.com/deal-buyer-access?search="Deal_ID,
DEAL_NAME,  or CODE"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__3">Search for a deal by name, ID, or
code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__2"><a
href="https://api.adnxs.com/deal-buyer-access/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/deal-buyer-access/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__23" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00004d89__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">If
true, the deal is active. Note that the deal will be available only when
this field is true, <code class="ph codeph">start_date</code> is in the
past (or null), and <code class="ph codeph">end_date</code> is in the
future (or null).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">ask_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__24">The  price associated with the deal.
This is the minimum amount the seller will accept for this
inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
brands of creatives that are eligible for the deal. For more details,
see <a href="deal-buyer-access-service.md#ID-00004d89__brand"
class="xref">Brands</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
buying bidder and member who can target this deal. For more details, see
<a href="deal-buyer-access-service.md#ID-00004d89__buyer"
class="xref">Buyer</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">buyer_bidders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
buying bidder who can target this deal. For more details, see <a
href="deal-buyer-access-service.md#ID-00004d89__bb" class="xref">Buyer
Bidders</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">buyer_members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
buying bidder and members who can target this deal. For more details,
see <a href="deal-buyer-access-service.md#ID-00004d89__bm"
class="xref">Buyer Members</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">buyer_seats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
buying bidder and seats who can target this deal. For more details, see
<a href="deal-buyer-access-service.md#ID-00004d89__bs"
class="xref">Buyer Seats</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">string (100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
custom code for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
currency for the <code class="ph codeph">floor_price</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">string (65535)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
description of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">end_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
day and time when the deal stops being available to the buyer. Null
corresponds to "indefinitely".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">floor_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__24"><strong>Deprecated</strong>.
<strong>Please refer to</strong> <code
class="ph codeph">ask_price</code> <strong>instead</strong>. The minimum
CPM value that the bidder must bid to be eligible for the deal.

<b>Note:</b> If <code
class="ph codeph">use_deal_floor</code> is false, <code
class="ph codeph">floor_price</code> will be 0. In this case, note that
although 0 is shown as the floor price, no deal floor is applied; if the
seller has any other floors (in placements or yield management
profiles), they will be applied, or if the seller does not have any
other floors, the standard second-price auction mechanics will apply.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
ID of the deal. This is the field you will receive on the bid request.
Note that if you set up a deal with an external seller and funnel it
through Xandr, we will turn their code into this
ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
date and time when the deal was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
name of the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">seller</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
selling member who is offering the deal. For more details, see <a
href="deal-buyer-access-service.md#ID-00004d89__seller"
class="xref">Seller</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
sizes of creatives that are eligible for the deal. For more details, see
<a href="deal-buyer-access-service.md#ID-00004d89__size"
class="xref">Sizes</a> below.

<b>Note:</b> If this array is not present in
the response, there are no creative size requirements for the deal.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">start_date</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
day and time when the deal starts being available to the buyer. Null
corresponds to "immediately".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">suggested_min_bid_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
same amount as the <code class="ph codeph">ask_price</code>.

<b>Note:</b> Your minimum bid should be higher
than the <code class="ph codeph">ask_price</code> to account for the
auction service charges specified in your Xandr
contract. For deals with external suppliers, your bid should also
include additional margin to account for discrepancies. Bidding the more
than the <code class="ph codeph">ask_price</code> helps ensure that you
are eligible for the deal but there is no guarantee that your bid will
win.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">The
type of deal. A deal can be an open auction or a private auction. For
more details, see <a
href="deal-buyer-access-service.md#ID-00004d89__ty"
class="xref">Type</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__22"><code
class="ph codeph">use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__24">If
true, the <code class="ph codeph">floor_price</code> is applied for the
deal.

<b>Note:</b> When <code
class="ph codeph">use_deal_floor</code> is true, the deal's floor price
overrides any other floors the seller may have, i.e., in placements or
yield management profiles.
</td>
</tr>
</tbody>
</table>

**Seller**

The `seller` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__88"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__89"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__90"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__88"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__89">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__90">The
member ID of the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__88"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__89">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__90">The
member name of the seller.</td>
</tr>
</tbody>
</table>

**Buyer** 

The buying bidder and member who can target this deal. For a seller who
uses single-buyer deals, a deal will only ever use the buyer field or
the buyer_seats field, not both. The buyer field supports a single
member, not an array.   
  

The buyer field is not used by sellers who are enabled for multi-buyer
deals. Since multi-buyer deals is still in beta for sellers, you can
expect some sellers to continue using the buyer field for single-buyer
deals for the time being.  
  

The buyer field cannot be updated by the seller. Once a deal is created
with a buyer field, it will not change.   
  

The `buyer` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__97"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__98"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__99"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__97"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__98">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__99">The
bidder ID of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__97"><code class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__98">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__99">The
member ID of the buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__97"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__98">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004d89__entry__99">The
member name of the buyer.</td>
</tr>
</tbody>
</table>

**Buyer Members**

The buying bidder and members who can target this deal. For a seller who
uses multi-buyer deals, the buyer_members object can be set in
combination with buyer_seats and buyer_bidders. They cannot be set in
combination with buyer.   

The buyer_members field is used by sellers who are enabled for
multi-buyer deals. It functions like the buyer field except for two main
differences: buyer_members supports an array of objects and can be
edited after creation. Multi-buyer deals is still a beta feature so not
all sellers will have access to set up deals using buyer_members.   

A DSP should read this field if they:

- Can accept deals where multiple buyers are eligible: in this case,
  they should read this field as an array of objects with potentially
  multiple objects.
- Cannot accept deals where multiple buyers are eligible: read this
  field as an array of objects with one object. If a DSP cannot accept
  multiple buyers, they should read this field in the exact same way
  they read buyer. Even a DSP that has transitioned to seats might see
  old deals with a legacy member populated here.

The `buyer` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__109"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__110"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__111"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__109"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__110">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__111">The bidder ID of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__109"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__110">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__111">The name of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__109"><code
class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__110">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__111">The member ID of the buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__109"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__110">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__111">The member name of the buyer.</td>
</tr>
</tbody>
</table>

**Buyer Seats **

The buying bidder and seats who can target this deal. For a seller who
uses multi-buyer deals, the buyer_seats object can be set in combination
with buyer_members and buyer_bidders. For a seller who uses single-buyer
deals, the buyer_seats object can be set up on its own. The buyer_seats
object cannot be set in combination with buyer.   
  

All sellers, both ones setting up single buyer and multi-buyer deals,
have the ability to set up deals using buyer_seats.  
  

A DSP should read this field if they:

- Are transitioned to using <a
  href="seat-service.md"
  class="xref" target="_blank">buyer seats</a>
- Can accept deals where multiple buyers are eligible: in this case,
  they should read this field as an array of objects with potentially
  multiple objects.
- Cannot accept deals where multiple buyers are eligible: read this
  field as an array of objects with one object.

The `buyer_seats` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__124"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__125"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__126"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__124"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__125">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__126">The bidder ID of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__124"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__125">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__126">The name of the bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__124"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__125">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__126">The identifier for the buyer seat</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__124"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__125">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__126">Name of buyer</td>
</tr>
</tbody>
</table>

**Buyer Bidders** 

The buying bidders who can target this deal. For a seller who uses
multi-buyer deals, the buyer_bidders object can be set in combination
with buyer_seats and buyer_members. They cannot be set in combination
with buyer.   
  

The buyer_bidders field is used by sellers who are enabled for
multi-buyer deals. When this seat is used on a deal, all buyers within
the DSP are eligible. This field corresponds to a deal being sent with a
blank pmp.deals.wseat on the OpenRTB bid request. Multi-buyer deals is
still a beta feature so not all sellers will have access to set up deals
using buyer_bidders.   
  

A DSP should read this field if:

- Can accept a deal with a blank pmp.deals.wseat on the OpenRTB bid
  request.

The `buyer_bidders` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__139"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__140"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__141"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__139"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__140">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__141">Read-only. The name of the
bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__139"><code
class="ph codeph">bid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__140">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__141">The bidder ID of the member.</td>
</tr>
</tbody>
</table>

**Type**

The `type` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__148"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__149"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__150"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__148"><code
class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__149">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__150">The ID representing the type of deal.
Possible values:
<ul>
<li>1 = Open Auction<br />
In an "Open Auction", <strong>buyers targeting the deals and buyers
targeting the inventory via other means compete for the
impression</strong>. If a buyer targeting a deal submits the highest bid
and the bid clears the deal's floor, that buyer wins the auction, paying
either the second-highest bid or the deal floor price, whichever is
higher. If one of the non-deal buyers submits the highest bid, that
buyer wins the auction, paying either the second-highest bid or ECP,
whichever is higher. </li>
<li>2 = Private Auction<br />
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
</ul>
<p>For examples showing how these different types of auctions work, see
<a
href="deal-auction-mechanics.md"
class="xref" target="_blank">Deal Auction Mechanics</a>. </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__148"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__149">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__150">The name of the type of deal. Possible
values: "Open Auction", "Private Auction", or "First Look".</td>
</tr>
</tbody>
</table>

**Brands**

Each `brands` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__157"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__158"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__159"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__157"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__158">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__159">The ID of the brand that is eligible
for the deal. You can use the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> to retrieve brand
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__157"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__158">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__159">The name of the brand that is eligible
for the deal. You can use the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> to retrieve brand
names.</td>
</tr>
</tbody>
</table>

**Sizes**

Each object in the `sizes` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004d89__entry__166"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004d89__entry__167"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004d89__entry__168"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__166"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__167">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__168">The width of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__166"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__167">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004d89__entry__168">The height of the creative.</td>
</tr>
</tbody>
</table>





## Examples

**View all deals you have with sellers**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/deal-buyer-access'
{ 
    "response": {
        "status": "OK",
        "count": 6,
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
                    "id": 1004,
                    "name": "Seller 1004"
                },
                "buyer": {
                    "id": 1005,
                    "bidder_id": 2,
                    "name": "Buyer 1005"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": [
                    {
                        "id": 1
                    }
                ],
                                "ask_price": 2.75,
                                "suggested_min_bid_price": 2.75,
                "sizes": [
                    {
                        "width": "300",
                        "height": "250"
                    }
                ],
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
                    "id": 1006,
                    "name": "Seller 1006"
                },
                "buyer": {
                    "id": 1007,
                    "bidder_id": 2,
                    "name": "Buyer 1007"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": [
                    {
                        "id": 1
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
$ curl -b cookies -c cookies 'https://api.adnxs.com/deal-buyer-access?seller_member_id=100006'
{
    "response": {
        "status": "OK",
        "count": 1,
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
                    "id": 1007,
                    "bidder_id": 2,
                    "name": "Buyer 1007"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": [
                    {
                        "id": 1
                    }
                ],
                                "ask_price": 2.75,
                                "suggested_min_bid_price": 2.75,
            }
        ]
    }
}
```

**View a specific deal**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/deal-buyer-access?id=63'
{
    "response": {
        "status": "OK",
        "count": 1,
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
                "id": 1007,
                "bidder_id": 2,
                "name": "Buyer 1007"
            },
            "type": {
                "id": 2,
                "name": "Private Auction"
            },
            "brands": [
                {
                    "id": 1
                }
            ],
                        "ask_price": 2.75,
                        "suggested_min_bid_price": 2.75
        }
    }
}
```

**View a specific deal (w/ Seat Code)**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/deal-buyer-access?id=689280'
{
        "response": {
                "count": 1,
                "dbg": {
                        "output_term": "deal",
                        "version": "1.18.1370",
                        "warnings": []
                },
                "deal": {
                        "active": false,
                        "adserver_lists": null,
                        "adserver_restrict": false,
                        "allow_creative_add_on_click": true,
                        "allow_creative_add_on_view": false,
                        "allowed_media_subtypes": null,
                        "allowed_media_types": null,
                        "ask_price": 1,
                        "auction_type": {
                                "id": 2,
                                "name": "Standard Price"
                        },
                        "audit_status_option": "none",
                        "bidder_guaranteed_deals_support_id": null,
                        "brand_restrict": false,
                        "brands": null,
                        "buyer": null,
                        "buyer_exposure": {
                                "id": 1,
                                "name": "Single buyer"
                        },
                        "buyer_seats": [{
                                "bidder_id": 100,
                                "bidder_name": "Buyer 100",
                                "bidder_supports_hashed_user_ids": true,
                                "code": "A123D",
                                "guaranteed_deals_support": "Disabled",
                                "name": "buyer seat id deal test"
                        }],
                        "categories": null,
                        "category_restrict": false,
                        "code": null,
                        "created_by": "seller",
                        "creatives": null,
                        "currency": "USD",
                        "data_protected": false,
                        "description": "Test Deal with seller 958",
                        "end_date": "2019-12-31 23:59:59",
                        "external_metadata": null,
                        "id": 689280,
                        "language_restrict": false,
                        "languages": null,
                        "last_modified": "2019-11-13 17:33:40",
                        "media_preference": "standard",
                        "name": "buyer seat test",
                        "package_id": null,
                        "payment_type": "default",
                        "priority": 10,
                        "seller": {
                                "bidder_id": 2,
                                "id": 958,
                                "name": "Member 958"
                        },
                        "size_preference": "standard",
                        "sizes": null,
                        "start_date": "2019-11-11 00:00:00",
                        "suggested_min_bid_price": 1,
                        "technical_attribute_restrict": false,
                        "technical_attributes": null,
                        "type": {
                                "id": 2,
                                "name": "Private Auction"
                        },
                        "use_deal_floor": true,
                        "version": 1,
                        "visibility_profile_id": null
                }
        }
}
```

**View all deals that have not expired**

In this example, assuming today is December 4, 2013, we want to find all
deals that have not expired. To do this, we pass the
`min_end_date="2013-12-04 00:00:00"` filter in the query string. Note,
however, that deals with no end date will not show up in the response.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/deal-buyer-access?min_end_date="2013-12-04 00:00:00"'
{
    "response": {
        "status": "OK",
        "count": 4,
        "deals": [
            {
                "id": 60,
                "code": null,
                "name": null,
                "description": null,
                "active": true,
                "start_date": "2013-12-01 00:00:00",
                "end_date": "2013-12-31 23:59:00",
                "floor_price": 3.2,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2013-12-04 18:47:39",
                "seller": {
                    "id": 100006,
                    "name": "Seller 456"
                },
                "buyer": {
                    "id": 1007,
                    "bidder_id": 2,
                    "name": "Buyer 1007"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": null,
                                "ask_price": 3.5,
                                "suggested_min_bid": 3.5
            },
            {
                "id": 62,
                "code": null,
                "name": "Private deal for buyer 1085 with floor of 2.5",
                "description": null,
                "active": false,
                "seller_member_id": 1066,
                "start_date": "2013-12-01 00:00:00",
                "end_date": "2013-12-31 23:59:59",
                "profile_id": null,
                "floor_price": 2.5,
                "currency": "USD",
                "use_deal_floor": true,
                "last_modified": "2013-12-04 20:15:38",
                "seller": {
                    "id": 1006,
                    "name": "Seller 1006"
                },
                "buyer": {
                    "id": 1007,
                    "bidder_id": 2,
                    "name": "Buyer 1007"
                },
                "type": {
                    "id": 2,
                    "name": "Private Auction"
                },
                "brands": [
                    {
                        "id": 1
                    }
                ],
                                "ask_price": 3.5,
                                "suggested_min_bid_price": 3.5,
            },
            ...
        ]
    }
}
```






