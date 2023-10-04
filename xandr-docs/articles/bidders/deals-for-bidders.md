---
Title : Deals for Bidders
Description : Xandr offers the ability to bid on deals with
our platform sellers. This page walks you through the bidding process.
---


# Deals for Bidders





Xandr offers the ability to bid on deals with
our platform sellers. This page walks you through the bidding process.

<div id="ID-00001b62__note-634ec8af-b252-4c1b-9416-14983a685cd7"
class="note tip note_tip">

Tip: A deal auction can
be open or private, depending on how the seller defined the deal. For
information about how these different types of auctions work, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-auction-mechanics.html"
class="xref" target="_blank">Deal Auction Mechanics</a>.



<div id="ID-00001b62__note-a3cbf06f-e502-4a25-91c4-a788fddb058f"


Note: The member cannot be changed
after a deal has been created.







## Buying Deal Inventory

**Step 1. Configure your system to handle deals**

Ensure that your system is configured to read deal IDs in the bid
request and format a proper deal-specific bid response. For more
information, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deals-for-bidders.html#DealsforBidders-ExampleRequest-ResponseChain"
class="xref" target="_blank">Example Request/Response Chain</a>. Please
also make sure to review <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-auction-mechanics.html"
class="xref" target="_blank">Deal Auction Mechanics</a> to understand
how Xandr conducts auction in different
situations.

**Step 2. Reach out to your Xandr
representative**

Once you've configured your system to handle deal ID requests and
responses appropriately, reach out to your Xandr
representative to enable you for deals on Xandr.
Enabling you for deals may involve:

- Validating how you decision and respond to deal requests
- Making you visible to sellers in our system 

**Step 3. Tell your buyers to start negotiating deals**

Your buyers will negotiate deals with sellers directly.
Xandr is not involved in the process. Here's the
process that your buyers should follow:

1.  Buyer negotiates a deal with a seller off-line.
2.  Buyer gives their Xandr member ID to the
    seller. If they don't know their member ID, you should help them
    identify it.
3.  Seller sets up a deal with the buyer within the UI
4.  Seller gives the deal ID to the buyer.
5.  Buyer enters the deal ID into your bidder system for targeting.  

**Step 4. Validate your buyers' deals**



Once a buyer has set up a deal with a Xandr
seller, you must ensure that your bidder profiles are not blocking any
of the parameters that apply to the deal inventory. For example, if a
profile is filtering out the seller, creative size, or other parameter
that applies to the deal inventory, you will not receive those bid
requests. For details about updating or creating bidder profiles, see
the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/legacy-bidder-profile-service.html"
class="xref" target="_blank">Legacy Bidder Profile Service</a>.

<div id="ID-00001b62__note-6a8bb5a1-928f-4f50-a073-1dc18a8eb861"


Note: We recommend using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a> to validate
that the deal exists in Xandr's system. This will help you avoid
targeting a deal that is inactive or not what you expected.

<div id="ID-00001b62__p-58c0361d-cd91-4602-b578-b24dab11dd45" >

Expand for an example

``` pre
$ curl -b cookies -c cookies  'https://api.adnxs.com/deal-buyer-access?id=63'
{
     "response" : {
         "status" :  "OK" ,
         "count" : 1,
         "deal" : 
         "deals" : {
             "id" : 63,
             "code" :  null ,
             "name" :  "Private deal for buyer 1085 with floor of $2.50" ,
             "description" :  null ,
             "active" :  false ,
             "start_date" :  "2013-12-01 00:00:00" ,
             "end_date" :  "2013-12-31 23:59:59" ,
             "floor_price" : 2.5,
             "currency" :  "USD" ,
             "use_deal_floor" :  true ,
             "last_modified" :  "2013-12-04 20:39:57" ,
             "seller" : {
                 "id" : 100006,
                 "name" :  "Seller 456"
             },
             "buyer" : {
                 "id" : 100007,
                 "bidder_id" : 2,
                 "name" :  "Buyer 456"
             },
             "type" : {
                 "id" : 2,
                 "name" :  "Private Auction"
             },
             "brands" : [
                 {
                     "id" : 1
                 }
 
             ],
             "ask_price" : 2.75,
             "suggested_min_bid_price" : 3
         }
     }
```









<div id="ID-00001b62__ID-00001c5b" >

## Example Request/Response Chain

<div id="ID-00001b62__note-8d1479ba-4acf-4f1b-bf0c-fa648fef4193"


Note: This example is for the
Xandr integration of the
AppNexus Bidding Protocol.





**Bid Request**

``` pre
{
    "bid_request": {
        "timestamp": "2014-04-18 17:00:57",
        "bidder_timeout_ms": 2000,
        "members": [
            {
                "id": 1417
            },
            {
                "id": 1625
            }
        ],
        "test": true,
        "member_ad_profile_id": 555216,
        "excluded_attributes": [
            2033
        ],
        "tags": [
            {
                "auction_id_64": 5555508250840350700,
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
                    "vast-url",
                    "unknown",
                    "unknown"
                ],
                "ad_profile_id": 555180,
                "visibility_profile_id": 5553,
                "venue_id": 407258,
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
                        "member_id": 1625,
                        "floor_cpm": 0.5,
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
                    "provider": "Xandr",
                    "last_seen_min": 23274134
                }
            ]
        }
    }
}
```





**Bid Response**

``` pre
{
   "bid_response":{
      "responses":[
         {
            "member_id":1625,
            "price":0.75,
            "creative_id":11,
            "auction_id_64": 5555508250840350700,
            "deal_id": 555664
         }
      ]
   }
}
```



**Notify Request Error Codes**

Deal-specific error codes, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-error-codes.html"
class="xref" target="_blank">Bid Error Codes</a> for more info.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001b62__ID-00001c5b__entry__1" class="entry">Error</th>
<th id="ID-00001b62__ID-00001c5b__entry__2" class="entry">ID</th>
<th id="ID-00001b62__ID-00001c5b__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001b62__ID-00001c5b__entry__1">NEC_DEAL_NOT_AVAILABLE</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__2">308</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__3">The deal
you specified in your response is not currently active.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001b62__ID-00001c5b__entry__1">NEC_DEAL_NO_MEMBER</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__2">309</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__3">The deal
you specified in your response is not available to your member.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001b62__ID-00001c5b__entry__1">NEC_DEAL_BELOW_FLOOR</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__2">310</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__3">Your bid
was not considered in the auction because it is below the deal's ask
price.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001b62__ID-00001c5b__entry__1">NEC_DEAL_BRAND_BANNED</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__2">311</td>
<td class="entry" headers="ID-00001b62__ID-00001c5b__entry__3">The brand
associated with your creative is not a valid brand for this deal.</td>
</tr>
</tbody>
</table>





## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-auction-mechanics.html"
  class="xref" target="_blank">Deal Auction Mechanics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-buyer-access-service.html"
  class="xref" target="_blank">Deal Buyer Access Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/legacy-bidder-profile-service.html"
  class="xref" target="_blank">Legacy Bidder Profile Service</a>








