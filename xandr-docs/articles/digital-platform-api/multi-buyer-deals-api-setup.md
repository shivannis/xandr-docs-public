---
Title : Multi-Buyer Deals API Setup
Description : <b>Note:</b> The content of this page is
ms.date: 10/28/2023
ms.custom: digital-platform-api
intended to supplement the
<a href="deal-service.md"
---


# Multi-Buyer Deals API Setup





<b>Note:</b> The content of this page is
intended to supplement the
<a href="deal-service.md"
class="xref" target="_blank">Deal Service</a> and <a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a> documentation.



  
Multi-buyer deals use a combination of three new objects:

- `buyer_seats` - Array of seat name/IDs of buyers who can target this
  deal (see <a href="multi-buyer-deals-api-setup.md#ID-00003e80__21"
  class="xref">Buyer Seats</a> below)
- `buyer_bidders` - Array of bidder name/IDs of buyers who can target
  this deal (see
  <a href="multi-buyer-deals-api-setup.md#ID-00003e80__22"
  class="xref">Buyer Bidders</a> below)
- `buyer_members` - Array of Xandr member
  name/IDs of buyers who can target this deal (see
  <a href="multi-buyer-deals-api-setup.md#ID-00003e80__23"
  class="xref">Buyer Members</a> below)

Multi-buyer deals must be implemented using deal line items (Deals v2).
The `buyer_bidders` object is only supported using Deals v2 (even if
only one buyer is used). If the `buyer_seats` object is used for
multiple buyers (whether in `buyer_seats` or across other buyer
objects), it must be implemented with Deals v2.



<b>Note:</b> Deals v1 can support one buyer
seat in the `buyer_seats` object. Additional buyer seats must be
implemented using Deals v2 (for more information, see <a
href="monetize_monetize-standard/create-a-deal-line-item.md"
class="xref" target="_blank">Create a Deal Line Item</a>).





##  JSON FIELDS



<b>Note:</b> For multi-buyer deals, you are
required to include at least one of the following JSON fields in a
`POST`: `buyer`, `buyer_bidders`, `buyer_members`, or `buyer_seats`. For
single-buyer deals, you must include either `buyer` or `buyer_seats` in
a `POST`.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003e80__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003e80__entry__2" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00003e80__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__1"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__2">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__3">The
buying bidder and member who can target this deal. For single-buyer
deals, a deal will only ever use the <code
class="ph codeph">buyer</code> field or the <code
class="ph codeph">buyer_seats</code> field, not both. The <code
class="ph codeph">buyer</code> field is not used in multi-buyer deals.
For more details, see <a
href="multi-buyer-deals-api-setup.md#ID-00003e80__25"
class="xref">Buyer</a> below. <strong>Required On:</strong><code
class="ph codeph">POST</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__1"><code
class="ph codeph">buyer</code> <code
class="ph codeph">_bidders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__2">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__3">The
buying bidder who can target this deal. For more details, see <a
href="multi-buyer-deals-api-setup.md#ID-00003e80__22"
class="xref">Buyer Bidders</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__1"><code
class="ph codeph">buyer</code> <code
class="ph codeph">_members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__2">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__3">The
Xandr member ID of the buyer who can target this
deal. For more details, see <a
href="multi-buyer-deals-api-setup.md#ID-00003e80__23"
class="xref">Buyer Members</a> below</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__1"><code
class="ph codeph">buyer _seats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__2">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__3">The
seat ID (the unique advertiser ID from their DSP) of the buyer who can
target this deal. A deal will only ever use the <code
class="ph codeph">buyer</code> field or the <code
class="ph codeph">buyer_seats</code> field, not both. For more details,
see <a href="multi-buyer-deals-api-setup.md#ID-00003e80__21"
class="xref">Buyer Seats</a> below.</td>
</tr>
</tbody>
</table>

**Buyer**



<b>Note:</b> The `buyer` object is not used in
multi-buyer deals.



The buyer object can be set on a POST, but cannot be updated with a PUT.
If you want to change the buyer, you need to create a new deal.

The `buyer` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003e80__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003e80__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003e80__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__16"><code class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__18">The
member ID of the buyer. <strong>Required On:</strong> POST</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__16"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__18">Read-only. The bidder ID of the member.
For buyers, this will always be 2.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__18">Read-only. The member name of the
buyer.</td>
</tr>
</tbody>
</table>

Here's an example of the `buyer` object:

``` pre
"buyer": {
                "bidder_id": 2,
                "bidder_name": "",
                "id": 9155,
                "name": "Hearts & Science (AT&T)"
            },
"buyer_seats": null
```

**Buyer Bidders**



<b>Note:</b> The `buyer_bidders` object is
used in multi-buyer deals.



The `buyer_bidders` object can be set on a POST, and can be updated with
a PUT. When a seller is enabled for multi-buyer deals.
the `buyer_bidders` object can be set in combination
with `buyer_seats` and `buyer_members`.

The `buyer_bidders` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003e80__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003e80__entry__29"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003e80__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__28"><pre class="pre codeblock"><code>bidder_name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__30">Read-only. The name of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__28"><pre class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__30">The
bidder ID of the buyer. The  bidder ID is 2.
<strong>Required On:</strong> POST </td>
</tr>
</tbody>
</table>

Here's an example of the `buyer_bidders` object:

``` pre
"buyer_bidders": [{
        "bidder_id": 1,
        "bidder_name": "Example Bidder"
}],
```

**Buyer Members**



<b>Note:</b> The `buyer_members` object is
used in multi-buyer deals.



The `buyer_members` object can be set on a POST, and can be updated with
a PUT. When a seller is enabled for multi-buyer deals,
the `buyer_members` object can be set in combination
with `buyer_seats` and `buyer_bidders`.

The `buyer_members` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003e80__entry__37"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003e80__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003e80__entry__39"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
<tr class="odd row">
<th id="ID-00003e80__entry__40" class="entry colsep-1 rowsep-1"><code
class="ph codeph">bidder_id</code></th>
<th id="ID-00003e80__entry__41" class="entry colsep-1 rowsep-1">int</th>
<th id="ID-00003e80__entry__42"
class="entry colsep-1 rowsep-1">Read-only. The bidder ID of the member.
For Invest buyers, this will always be 2.</th>
</tr>
<tr class="header row">
<th id="ID-00003e80__entry__43" class="entry colsep-1 rowsep-1"><code
class="ph codeph">bidder_name</code></th>
<th id="ID-00003e80__entry__44"
class="entry colsep-1 rowsep-1">string</th>
<th id="ID-00003e80__entry__45"
class="entry colsep-1 rowsep-1">Read-only. The name of the bidder.</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__37 ID-00003e80__entry__40 ID-00003e80__entry__43"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__38 ID-00003e80__entry__41 ID-00003e80__entry__44">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__39 ID-00003e80__entry__42 ID-00003e80__entry__45">The
member ID of the buyer. <strong>Required On:</strong> POST</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__37 ID-00003e80__entry__40 ID-00003e80__entry__43"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__38 ID-00003e80__entry__41 ID-00003e80__entry__44">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__39 ID-00003e80__entry__42 ID-00003e80__entry__45">Read-only. The
member name of the buyer.</td>
</tr>
</tbody>
</table>

Here's an example of the `buyer_members` object:

``` pre
"buyer_members": [{
        "bidder_id": 1,
        "bidder_name": "Example Bidder",
        "id": "456",
        "name": "Example Buyer Member"
}],
```

**Buyer Seats**



<b>Note:</b> The `buyer_seats` object is used
in multi-buyer deals.



Deals with seats can be set up using the `buyer_seats` object via the
API. 

When a new deal is set up via  with
, the API will be populated with
the `buyer_seats` object. When setting up a new deal via the API with
, use the `buyer_seats` object. Please use the
Invest buyer's member ID in the `code` field as well
as `bidder_id` 2. New deals with external DSP's can also be set up with
buyer seat IDs. You can check which external DSPs are using buyer seat
IDs <a
href="https://monetize.xandr.com/docs/external-dsps-using-buyer-seat-ids"
class="xref" target="_blank">here</a> (login required).

Some things to note:

- For sellers not enabled for multi-buyer deals, a deal can be set up
  with either `buyer` or `buyer_seats`, where `buyer` is a member,
  and `buyer_seats` is a seat.
- When a seller has buyer seat deals enabled, all deals with
   will be set up using buyer_seats (when the
  deal is set up using , deals with
  the `buyer` field can still be set up using API).
- When the deal is with a single buyer, it can be set up with
  either `buyer` or `buyer_seats`, where `buyer` is a member,
  and `buyer_seats` is a seat.
- `Code` is the seat code, in other words, the "seat ID" that the buyer
  will typically give. Since seat codes are only unique to a given
  bidder ID, you can expect to see some of the same seat codes across
  various DSPs. Because seat codes are only unique to a
  given `bidder_id`, providing a `code` and `bidder_id` are mandatory
  when creating a new deal.

The `buyer_seats` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003e80__entry__52"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003e80__entry__53"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003e80__entry__54"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__52"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__53">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__54">The
bidder ID of the member <strong>Required On</strong>: <code
class="ph codeph">POST</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__52"><code
class="ph codeph">bidder_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__53">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__54">The
name of the bidder</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__52"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__53">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__54">The
identifier for the  buyer seat <strong>Required
On</strong>: <code class="ph codeph">POST</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__52"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003e80__entry__53">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003e80__entry__54">The
name of buyer seat</td>
</tr>
</tbody>
</table>

Here's an example of the `buyer_seats` object:

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

**Add a multi-buyer deal**

``` pre
$ cat new_multibuyer_deal.json
   
{
    "deal": {
        "name": "Xandr Test Deal",
        "active": false,
        "start_date": "2020-12-01 00:00:00",
        "end_date": "2020-12-31 23:59:59",
        "buyer_seats": [{
            "code": 958,
            "bidder_id":2
        }],
        "buyer_members": [{
            "id": 1088
        }],
        "buyer_bidders": [{
            "id": 129
        }],
        "version":2
    }
}
 
$ curl -b cookies -c cookies -X POST -d @new_multibuyer_deal.json 'https://api.appnexus.com/deal'
 
{
    "response": {
        "status": "OK",
        "id": 234,
        "start_element": 0,
        "num_elements": 100,
        "deal": {
            "active": false,
            "ask_price": 0,
            "auction_type": {
                "id": 2,
                "name": "Standard Price"
            },
            "buyer": null,
            "buyer_bidders": [
                {
                    "bidder_name": "Platform Services Test Bidder",
                    "bidder_supports_hashed_user_ids": true,
                    "guaranteed_deals_support": "Enabled",
                    "id": 129
                }
            ],
            "buyer_members": [
                {
                    "bidder_id": 82,
                    "bidder_name": "The Trade Desk",
                    "bidder_supports_hashed_user_ids": true,
                    "guaranteed_deals_support": "Enabled",
                    "id": 1088,
                    "name": "The Trade Desk, Inc."
                }
            ],
            "buyer_seats": [
                {
                    "bidder_id": 2,
                    "bidder_name": "",
                    "bidder_supports_hashed_user_ids": false,
                    "code": "958",
                    "guaranteed_deals_support": "Enabled",
                    "name": "AppNexus Services Network"
                }
            ],
            "code": null,
            "currency": "USD",
            "description": null,
            "end_date": "2020-12-31 23:59:59",
            "floor_price": 0,
            "id": 123,
            "name": "Xandr Test Deal",
            "package_id": null,
            "payment_type": "default",
            "priority": 5,
            "profile_id": null,
            "seller": {
                "bidder_id": 2,
                "id": 2378,
                "name": "Member 2378"
            },
            "start_date": "2020-12-01 00:00:00",
            "type": {
                "id": 1,
                "name": "Open Auction"
            },
            "use_deal_floor": true,
            "version": 2
        }
    }
}
```






