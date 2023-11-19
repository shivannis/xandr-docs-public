---
Title : Bidder Transparent Auction FAQ
Description : Xandr aims to provide full transparency for bidders to help ensure each
ms.date : 10/28/2023
bidder knows the auction type they're participating in. This page
---


# Bidder Transparent Auction FAQ



Xandr aims to provide full transparency for bidders to help ensure each
bidder knows the auction type they're participating in. This page
provides answers to some of the most common questions around transparent
auctions.

>

## What are transparent auctions?

Transparent auctions are a way of letting bidders know what type of
auction they're participating in so they can make more informed
decisions on the amounts they bid.

In the past, auctions were always first price (pay what you bid) or
second price (winning bid is price-reduced to achieve a fairer market
price). In addition, some auctions included soft floors, which use a
floor price to achieve a combination of first and second price in a
single auction. While the type of auction being held could be different
depending on the situation, that information was invisible to bidders.
Bidders had no way of knowing which type of auction they were bidding
into.

With transparent auctions, bidders now receive an auction type (see
below) in the bid request. This auction type tells the bidder which type
of auction is being held.



>

## What auction types will be sent in the bid requests?

There are two auction types: impression (at) and deal (pmp.deal.at).
There are three possible values for auction type:

<table id="bidder-transparent-auction-faq__table_lhv_cll_4wb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__1"
class="entry colsep-1 rowsep-1">Value</th>
<th id="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__1">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__2"><ul>
<li><p>First price auction</p>
<p>- or -</p></li>
<li>Xandr is not confident that the auction is a second price auction.
(Typically this means soft floors are in place, which will produce some
first-price and some second-price auctions.)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__1">2</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__2"><ul>
<li><p>Second price auction</p>
<p>- and -</p></li>
<li>There are no soft floors, non-transparent price reductions, or
custom auction types. There may be static or dynamic (pre-bid) hard
floors.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__1">3</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_lhv_cll_4wb__entry__2"><div
>
<em>Deals (pmp.deal.at) Only</em>
<ul>
<li>Fixed price. The bid floor is the agreed-upon deal price.</li>
</ul>
</td>
</tr>
</tbody>
</table>

Most bid requests will have auction type = 1 (`"at": 1`). For example:

``` pre
{
    "id": "43212345678987",
    "at": 1,
    "imp": [{
        "secure": 0,
        "tagid": "443322",
        "video": {
            "playbackmethod": [
                2
            ],
            "mimes": [
                "video/mp4",
                "application/javascript",
                "video/x-flv",
                "application/x-shockwave-flash"
            ]....
```



>

## Who determines if the auction is first price or second price?

Xandr will determine the auction type (as shown in the table under "<a
href="bidder-transparent-auction-faq.md#BidderTransparentAuctionFAQ-HowdoesXandrdetermineauctiontypes-"
class="xref" target="_blank">How does Xandr determine auction types?</a>")
and send the auction type in the bid request. We do not use auction
types passed to us.

Transparent auction has not changed the actual behavior of the auction;
only the determination as to which auction type is sent in the bid
request is different than is was previously.



>

## Do you pass the auction type (at) flag on all open auction and PMP deals?

Yes. Auction type will always be passed in the bid request.



>

## Will Xandr ultimately decide winning/clearing price? Are there any modifications made?

Xandr will determine the highest bid that will get sent to the
publisher. Buyer fees will be taken into account when sending the final
bid.



>

## How does Xandr determine the auction types?



<table id="bidder-transparent-auction-faq__table_tpp_2ml_4wb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__1"
class="entry colsep-1 rowsep-1">Auction Type</th>
<th id="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2"
class="entry colsep-1 rowsep-1">Xandr Deal Auction Type Config on Deal
ID</th>
<th id="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3"
class="entry colsep-1 rowsep-1">Bid Request Auction Type (<code
class="ph codeph">at</code>)</th>
<th id="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4"
class="entry colsep-1 rowsep-1">Deal Object Auction Type (<code
class="ph codeph">pmp.deal.at</code>)</th>
<th id="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"
class="entry colsep-1 rowsep-1">Result for Buyer</th>
<th id="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6"
class="entry colsep-1 rowsep-1">OptimalBiddingRecommendation</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__1"><div
>
<strong>First-Price Auction:</strong>
<ul>
<li>Winning bid = price paid</li>
<li>No soft floors</li>
<li>Hard floors are allowed, including dynamic</li>
<li>Header bidding auctions are always first price</li>
</ul>
</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2">standard</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"><ul>
<li>Bid ranked based on bid</li>
<li>Pay what you bid</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6">Shade</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__1"><strong>Trusted
Second Price Auction:</strong>
<ul>
<li>Winning bid always price reduced</li>
<li>No soft floors, buyer-friendly</li>
<li>Hard floors are allowed, including dynamic</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2">standard</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3">2</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4">2</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"><ul>
<li>Bid ranked based on bid</li>
<li>Pay second price or Deal Ask Price</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6">Don't
Shade</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2">fixed</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3">2</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4">3</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"><ul>
<li>Bid ranked by Deal Ask Price</li>
<li>Pay Deal Ask Price</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6">Bid
more than Ask</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__1"><strong>Soft
Floor / Legacy Second Price Auction:</strong>
<ul>
<li>Soft floors, seller-friendly</li>
<li>Auction logic sometimes first-prices</li>
<li>Buyers, ECP soft floors, hard floors allowed, including dynamic</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2">standard</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"><ul>
<li>Bid ranked based on bid</li>
<li>Pay first price or second price, Deal Ask Price depending</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6">Shade</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2">fixed</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4">3</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"><ul>
<li>Bid ranked by Deal Ask Price</li>
<li>Pay Deal Ask Price</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6">Bid
more than Ask</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__1"><strong>External
Auction (SSPs):</strong>
<ul>
<li>Xandr doesn't know the rules, we assume soft floors and first
price</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__2">standard</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__3">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__4">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__5"><ul>
<li>Bid ranked based on bid</li>
<li>Pay what you bid</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_tpp_2ml_4wb__entry__6">Shade</td>
</tr>
</tbody>
</table>





>

## What actions do I need to take as a bidder?

- Continue to listen to all auction types in RTB and deals.
- Apply bid shading to first- price auctions as needed.
- Engage with us if you have questions.



>

## Can a seller be both first and second price?

A single seller cannot be both first and second price on a single
impression, but the different publishers associated with a seller can
have first price or second price auctions.



>

## Can a domain be both first and second price?

Yes, across many auctions. (Not on a single impression.) Because of
this, you'll need to listen to the auction type signal in real-time
rather than infer post-auction.



>

## How do I identify the type of inventory?

There are two signals currently available on the OpenRTB <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">bid request</a> that you can use to
identify the type of inventory: `publisher_integration.is_header` and
`source.fd`.

`is_header`:

- `0`: This is not a header bidding integration.
- `1`: Integration into a wrapper.

`fd` :

Entity responsible for the final impression sale decision, where:

- `0`: Exchange (default). Xandr holds the final auction.
- `1`: Upstream source. Bid is passed along to header bidding auction or
  external supply.

The following chart outines how `is_header` and `fd` work together with
the auction type (`at`) to identify the type of inventory:



<table id="bidder-transparent-auction-faq__table_zt2_cfm_4wb"
class="table">
<thead class="thead">
<tr class="header row">
<th id="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__1"
class="entry colsep-1 rowsep-1">Inventory Type</th>
<th id="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__2"
class="entry colsep-1 rowsep-1"><code class="ph codeph">at</code></th>
<th id="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__3"
class="entry colsep-1 rowsep-1"><code
class="ph codeph">is_header</code></th>
<th id="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__4"
class="entry colsep-1 rowsep-1"><code class="ph codeph">fd</code></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__1">Header</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__2">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__3">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__4">1</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__1">Xandr's
exchange with soft floor</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__2">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__3">0</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__4">0</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__1">External</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__2">1</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__3">0</td>
<td class="entry colsep-1 rowsep-1"
headers="bidder-transparent-auction-faq__table_zt2_cfm_4wb__entry__4">1</td>
</tr>
</tbody>
</table>

>

## Why does using a soft floor often result in a first price being sent even though the auction is a second-price auction?

In a second-price auction, if no floors have been set the winning bid is
price-reduced to the second-highest bid (plus $0.01). However, when a
soft floor has been set, the winning bid will be one of the following:

- If the bid is *above* the soft floor: The greater of the
  second-highest bid plus $0.01 or the soft floor.
- If the bid is *below* the soft floor: The winning bid (with no price
  reduction).

In the latter case, the second-price auction appears to function as a
first-price auction: the highest bid wins that auction and is not
price-reduced.



>

## Where do I go if I need help?

Please contact your Xandr representative or
<a href="https://help.xandr.com/" class="xref" target="_blank">Xandr
customer support</a> for assistance.






