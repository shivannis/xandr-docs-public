---
Title : Yield Management Auction Tier Service
Description : The Yield Management Auction Tier Service allows you to modify the
ms.date: 10/28/2023
ms.custom: digital-platform-api
standard auction mechanics such that certain bids will be considered
before others, provided that those bids are associated with certain
members and meet particular pricing requirements. You may also use this
---


# Yield Management Auction Tier Service



The Yield Management Auction Tier Service allows you to modify the
standard auction mechanics such that certain bids will be considered
before others, provided that those bids are associated with certain
members and meet particular pricing requirements. You may also use this
service to exclude certain members from consideration altogether.



<b>Note:</b> Auction tiers must be associated
with an existing <a
href="yield-management-profile-service.md"
class="xref" target="_blank">Yield Management Profile</a>.





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-auction-tier-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="yield-management-auction-tier-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="yield-management-auction-tier-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__2"><a
href="https://api.appnexus.com/ym-auction-tier?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-auction-tier</a>
<p>(auction-tier JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__3">Add an auction
tier.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__2"><a
href="https://api.appnexus.com/ym-auction-tier?id=AUCTION_TIER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-auction-tier?id=AUCTION_TIER_ID</a>
<p>(auction-tier JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__3">Modify an
auction tier.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__2"><a
href="https://api.appnexus.com/ym-auction-tier" class="xref"
target="_blank">https://api.appnexus.com/ym-auction-tier</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__3">View all of
your auction tiers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__2"><a
href="https://api.appnexus.com/ym-auction-tier?id=AUCTION_TIER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-auction-tier?id=AUCTION_TIER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__3">View a
specific auction tier.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__2"><a
href="https://api.appnexus.com/ym-auction-tier?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/ym-auction-tier?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__3">View multiple
auction tiers by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__2"><a
href="https://api.appnexus.com/ym-auction-tier?id=AUCTION_TIER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-auction-tier?id=AUCTION_TIER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__3">Delete an
auction tier.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-auction-tier-service__entry__22"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th id="yield-management-auction-tier-service__entry__23"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th id="yield-management-auction-tier-service__entry__24"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">id</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">The unique
identifier for this auction tier.
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>, in
query string</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">name</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">The name of
this tier.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">code</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">An optional
custom code that you can use to map between this object's identifier in
your system and in ours.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">description</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">An optional
description.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">profile_id</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">An optional
<code class="ph codeph">profile_id</code> is used to determine when to
apply a tier. A profile is a generic set of rules for targeting
inventory, and certain tiers may only apply to certain slices of
inventory. (See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for details.)
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">priority</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">You'll rank
each auction tier from 1 to 10 in ascending priority. Those with higher
priorities are checked first for a match. If two tiers happen to match
the bid in question, and their priorities are equal, the winner is
chosen at random.
<p><strong>Default</strong>: <code class="ph codeph">5</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">ym_profile_id</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">An auction
tier is associated with a <a
href="yield-management-profile-service.md" class="xref">Yield
Management Profile</a>. This is that profile's identifier.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">min_price</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">decimal</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">The minimum
price that must be bid by the members in the <code
class="ph codeph">buyer_members</code> array for inclusion in this tier.
This can be null if the <code class="ph codeph">member_action</code> is
set to "exclude".

<b>Note:</b> Whether a buyer has met the value
of <code class="ph codeph">min_price</code> is checked <em>after</em>
AppNexus' revenue sharing fee has been removed; in other words, <code
class="ph codeph">min_price</code> is checked against their <em>net</em>
bid. For example, if you've set <code class="ph codeph">min_price</code>
to $2.00, and the buyer bids $2.00, their net bid may be reduced to
$1.70. This would mean they do not qualify for the tier. The solution is
for buyers to take into account their revenue sharing agreement with
AppNexus when submitting bids for inclusion in tiers.

<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">member_action</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">enum</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">This setting
determines what action is to be taken against the <code
class="ph codeph">buyer_members</code> array. Permissible values are
<code class="ph codeph">"include"</code> and <code
class="ph codeph">"exclude"</code>.
<p><strong>Default</strong>: <code
class="ph codeph">exclude</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">member_id</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">This is your
member ID.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__22"><p><code
class="ph codeph">buyer_members</code></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__23">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-auction-tier-service__entry__24">This array
includes the buyers you're targeting for inclusion or exclusion in this
Auction Tier. See <a
href="yield-management-auction-tier-service.md#yield-management-auction-tier-service__the_buyer_members_array"
class="xref">The Buyer Members Array</a> below for details.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>



**The Buyer Members Array**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-auction-tier-service__entry__58"
class="entry colsep-1 rowsep-1">Field</th>
<th id="yield-management-auction-tier-service__entry__59"
class="entry colsep-1 rowsep-1">Type</th>
<th id="yield-management-auction-tier-service__entry__60"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-auction-tier-service__entry__58"><p><code
class="ph codeph">id</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-auction-tier-service__entry__59">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-auction-tier-service__entry__60">The ID of the
member you're targeting for inclusion or exclusion.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-auction-tier-service__entry__58"><p><code
class="ph codeph">name</code></p></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-auction-tier-service__entry__59">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-auction-tier-service__entry__60">The name of
the member you're targeting for inclusion or exclusion.</td>
</tr>
</tbody>
</table>





## Examples

**View all of your auction tiers**



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/ym-auction-tier'

{
    "response": {
        "status": "OK",
        "count": 328,
        "start_element": null,
        "num_elements": null,
        "ym-auction-tiers": [
            {
                "id": 1,
                "name": "Buyer 1 Tier",
                "code": null,
                "description": null,
                "profile_id": null,
                "priority": 10,
                "ym_profile_id": 2785,
                "min_price": "3.000000",
                "member_action": "include",
                "member_id": 752,
                "buyer_members": [
                    {
                        "id": 1094,
                        "name": "Buyer 1"
                    }
                ]
            },
            {
                "id": 2,
                "name": "Buyer 2 Tier",
                "code": null,
                "description": null,
                "profile_id": null,
                "priority": 10,
                "ym_profile_id": 2785,
                "min_price": "4.000000",
                "member_action": "include",
                "member_id": 752,
                "buyer_members": [
                    {
                        "id": 232,
                        "name": "Buyer 2"
                    }
                ]
            },
            {
                "id": 3,
                "name": "Buyer 3 Tier",
                "code": null,
                "description": null,
                "profile_id": null,
                "priority": 10,
                "ym_profile_id": 2785,
                "min_price": "2.500000",
                "member_action": "include",
                "member_id": 752,
                "buyer_members": [
                    {
                        "id": 903,
                        "name": "Buyer 3"
                    }
                ]
            },
            ...
        ]
    }
}
```



**Add an auction tier - exclude a member**

We must include our `{{member_id}}` and the `{{ym_profile_id}}` we'd
like to associate this tier with.

``` pre
$ cat add-tier.json
{
    "ym-auction-tier": {
        "member_id": 67890,
        "ym_profile_id": 271828,
        "description": "Bidder 9 from Outer Space has advanced alien bidding technology. They must be stopped!",
        "name": "Exclude Bidder 9 from Outer Space",
        "member_action": "exclude",
        "priority": 10,
        "min_price": null,
        "buyer_members": [
        {
            "id": 12345,
            "name": "Bidder 9 from Outer Space"
        }
        ]
     }
}

$ curl -b cookies -X POST -d @update.json "https://api.appnexus.com/ym-auction-tier"
{
 "response": {
  "id": 1105,
  "ym-auction-tier": {
   "profile_id": null,
   "code": null,
   "id": 5813,
   "description": "Bidder 9 from Outer Space has advanced alien bidding technology. They must be stopped!",
   "name": "Exclude Bidder 9 from Outer Space",
   "member_id": 67890,
   "member_action": "exclude",
   "priority": 10,
   "buyer_members": [{"id":12345,"name":"Bidder 9 from Outer Space"}],
   "ym_profile_id": 271828,
   "min_price": null
  },
  "status": "OK",
  "start_element": null,
  "count": 1,
  "num_elements": null
 }
}
```

**Add an auction tier - include a member**

Notice that this member must meet an extremely high `{{min_price}}` in
order for this tier to apply. Since we haven't specified a
`{{priority}}`, it defaults to 5.

``` pre
$ cat add-tier.json
{
    "ym-auction-tier": {
    "ym_profile_id": 456,
    "name": "A High Bar for Member 12 to clear",
    "member_id":123,
    "member_action": "include",
        "min_price": "314159.00",
        "buyer_members": [
        {
        "id": 12,
        "name": "Member 12"
        }
    ]
    }
}



$ curl -b cookies -X POST -d @add-tier.json "https://api.appnexus.com/ym-auction-tier"
{
 "response": {
  "id": 1110,
  "ym-auction-tier": {
   "profile_id": null,
   "code": null,
   "id": 1110,
   "description": null,
   "name": "A high bar for Member 12 to clear",
   "member_id": 123,
   "member_action": "include",
   "priority": 5,
   "buyer_members": [
    {
     "id": 12,
     "name": "Member 12"
    }
   ],
   "ym_profile_id": 456,
   "min_price": "314159.000000"
  },
  "status": "OK",
  "start_element": null,
  "count": 1,
  "num_elements": null
 }
}
```

**Update an auction tier**

We've modified our financial arrangement with Member 19, and we'd like
them to bid a minimum $1.25 CPM in order to remain in their current
Auction Tier.

``` pre
$ cat update.json
{
    "ym-auction-tier": {
    "id": 001,
    "member_id": 19,
        "min_price": "1.25"
    }
}

$ curl -b cookies -X PUT -d @update.json "https://api.appnexus.com/ym-auction-tier?id=001"
{
 "response": {
  "id": 001,
  "ym-auction-tier": {
   "profile_id": null,
   "code": null,
   "id": 001,
   "description": null,
   "name": "Member 19's Tier",
   "member_id": 19,
   "member_action": "include",
   "priority": 7,
   "buyer_members": [
    {
     "id": 19,
     "name": "Member 19"
    }
   ],
   "ym_profile_id": 002,
   "min_price": "1.25"
  },
  "status": "OK",
  "start_element": null,
  "count": 1,
  "num_elements": null
 }
}
```

**Delete an auction tier**

``` pre
$ curl -b cookies -X DELETE "https://api.appnexus.com/ym-auction-tier?id=003"
{
 "response": {
  
  "status": "OK"
 }
}
```






