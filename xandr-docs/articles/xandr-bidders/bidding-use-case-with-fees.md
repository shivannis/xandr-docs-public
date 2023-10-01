---
Title : Bidding Use Case with Fees
Description : <div id="ID-0000022a__note_bmb_c34_rwb"
Note:
Xandr fees and auction mechanics were designed
so that our members can bid what they think an impression is worth and
still get the best deal. When a member wins an impression, they will
---


# Bidding Use Case with Fees





<div id="ID-0000022a__note_bmb_c34_rwb" 

Note:

Xandr fees and auction mechanics were designed
so that our members can bid what they think an impression is worth and
still get the best deal. When a member wins an impression, they will
either pay the bid price or less, including any auction fees.





To understand the fees associated with Xandr's
platform, see this example of a basic auction scenario. For this
example, all steps are rounded to two digits after the decimal. In an
actual auction, six digits after the decimal are used.

In this example there are two fees:  

1.  A Xandr fee of 5% of the final price paid
    for an impression  

2.  A fee charged by the bidder who transacts media on behalf of an
    advertiser

**Stage 1: Impression Bus is Contacted**

1\. Internet user Mark Smith visits doctorwhofans.com.

2\. A TinyTag on the this page tells Mark's browser to ping
Xandr's impression bus.

**Stage 2: Owner Phase**

3\. The impression bus sees in its database that doctorwhofans.com is
owned by Member 12, and that Member 12 is associated with Bidder 14.

<div id="ID-0000022a__note_lwh_p34_rwb" 

Note:

**Why would a seller work with a bidder?**  
Buyers, sellers, networks, and other entities can overlap each other;
perhaps in this case the owner is also a buyer. Or perhaps the owner
chose to work with a bidder to enhance the features of
Xandr's platform. For example, when a seller is
associated with a bidder, they get pinged first before a general Bid
Request goes out to all bidders. Sellers can then set a reserve price
dynamically, when they have more data about the user.



4\. The impression bus makes a Bid Request to Bidder 14 only. Bidder 14
receives third-party data within the Bid Request, and according to
preset logic decides to set the reserve price to $2 via the Bid
Response.

**Stage 3: Bidding Phase**

5\. The impression bus has calculated the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/price-reduction-mechanics.html"
class="xref" target="_blank">Estimated Clear Price</a> as $3 based on
historical data.

6\. The Bid Request now goes out to all listening bidders with the
revised reserve price and the Estimated Clear Price.

7\. Member 1 (via Bidder 7) calculates a $6 bid. Bidder 7 charges a 10%
Bidder Fee, so Bidder 7 submits $5.40 to the impression bus.

<div id="ID-0000022a__note_rx1_y34_rwb" 

Note:

**Bidder Fees**  
Bidder fees are negotiated between bidders and members - they do not go
through Xandr.



8\. Member 2 (via Bidder 12) calculates a $5 bid. Bidder 12 charges a 5%
Bidder Fee, so Bidder 12 submits $4.75 to the impression bus.

**Stage 4: Auction Winner and Price are Determined**

9\. Because Xandr charges a 5% fee for all buys
at the end of the auction, the "seller revenue" price must be calculated
at this stage for comparison to the reserve price. The impression bus
subtracts 5% from all bids to create "net bids". Net bids are $5.13 and
$4.51.

<div id="ID-0000022a__note_phy_z34_rwb" 

Note:

**Net Bids**  
The net bid is a calculation of seller revenue, or how much money the
seller would actually receive if this bid wins. This is so that bids can
be properly compared to the seller's reserve price and to each other. To
calculate the net bid, all Xandr fees are
subtracted out.



10\. The auction winner is determined by ranking the net bids. Bidder
7's $5.13 net bid is the best bid and Bidder 7 wins on behalf of
Member 1. The price Member 1 pays is then reduced to $4.52: $0.01 more
than the second price of $4.51 (note: the price-reduction process is
different if the winning bid is passed on to a second auction - for more
details, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/price-reduction-mechanics.html"
class="xref" target="_blank">Price Reduction Mechanics</a>).

11\. At this point all Xandr-related fees (5% of
the winning bid price) are added. The price-reduced bid of $4.52 becomes
a "buyer_buys" price of $4.76. The seller will receive "seller_revenue"
of $4.52. Xandr receives the difference of $.24.

<div id="ID-0000022a__note_k4d_fqg_rwb" 

Note:

- In this simple scenario, both the first and second net bids were
  higher than the reserve and Estimated Clear Prices; thus the reserve
  prices and ECPs are irrelevant.
- Note also that the only Xandr fee in this
  example is the 5% fee. If a Member is using
  <a href="xandr-s-digital-platform-ui.html" class="xref"><span
  class="ph">Xandr's Digital Platform UI</a>, that fee will be
  included in step 9 above.



<div id="ID-0000022a__note_msz_mj4_rwb" 

Note: **Benefits of Price Reduction**  
Because of the price reduction auction model, the winning bidder pays
less than their initial bid but more than the reduced bid. Bidders are
also encouraged to bid what they actually think the impression is worth
rather than try to bid incrementally higher than a competitor.



**List of Bids, Prices, and Fees for this Example**

<div class="example">

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">Reserve Price</td>
<td class="entry colsep-1 rowsep-1">2</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">Estimated Clear Price</td>
<td class="entry colsep-1 rowsep-1">3</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">Initial Member Bids</td>
<td class="entry colsep-1 rowsep-1">6, 5</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">Bid Response Bids</td>
<td class="entry colsep-1 rowsep-1">5.40, 4.75</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">Net Bids</td>
<td class="entry colsep-1 rowsep-1">5.13, 4.51</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">Winning Bid</td>
<td class="entry colsep-1 rowsep-1">5.13</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">Price Reduced Bid (same as Seller
Revenue)</td>
<td class="entry colsep-1 rowsep-1">4.52</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">Xandr
Fee</td>
<td class="entry colsep-1 rowsep-1">0.24</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">Buyer Pays</td>
<td class="entry colsep-1 rowsep-1">4.76</td>
</tr>
</tbody>
</table>






