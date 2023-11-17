---
Title : Auction Overview
Description : This section takes you through an auction step by step. For a general
---


# Auction Overview



This section takes you through an auction step by step. For a general
overview of Xandr, from
Xandr's tags to post-auction reports, please see
<a href="the-big-picture.html" class="xref">The Big Picture</a>.

<div id="ID-000001b9__section_fxh_z1h_rwb" >

## Step 1. The Impression Bus Receives an Ad Call

On each ad call, the impression bus receives the following information:

- The inventory:
  - size, URL, placement
  - reserve price (optional)
- The user:
  - unique Xandr user ID
  - session recency, frequency, total impression clicks
  - publisher-supplied demographics (age, gender, etc)
  - user data segments previously stored by members and data providers



<div id="ID-000001b9__section_ctp_jhh_rwb" >

## Step 2. The Impression Bus Reaches Out to Data Providers

The impression bus, in real time, reaches out to all integrated to
gather other relevant information about the user and the inventory
source to pass along to the bidders. The data providers are given 10 ms
to respond, at which point data is appended to the bid requests for
those bidders who have contractual rights with the data providers to
view their data.



<div id="ID-000001b9__section_dzp_lhh_rwb" >

## Step 3. The Impression Bus Sends Bid Requests to Bidders

The impression bus sends out a <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">bid request</a> to all bidders, including
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/xandr-s-digital-platform-ui.html"
class="xref" target="_blank">Xandr's Digital
Platform UI</a>. Bidders may opt out of certain impressions based on the
inventory, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/enhanced-bidder-profiles.html"
class="xref" target="_blank">Enhanced Bidder Profiles</a>. Within the
bid request, each bidder is passed all relevant information about the
user and inventory, as well as the publisher's advertiser exclusion
profile. Each bidder is also passed all data within that bidder's
reserved user cookie space.



<div id="ID-000001b9__section_ehl_mhh_rwb" >

## Step 4. Bidders Submit CPM Bids

The bidders use their real-time algorithms to analyze each bid request
and produce CPM bids for each of their members. If a bidder is
facilitating buys for multiple members, it will respond with the highest
bid among all participating members. Along with this bid they submit an
Xandr ID or third-party ID (when using codes)
for a creative that has been previously registered with
Xandr's API and approved by the inventory
source.



Tip: The impression bus will run all
auctions in USD. Bidders and <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/xandr-s-digital-platform-ui.html"
class="xref" target="_blank">Xandr's Digital
Platform UI</a> may submit bids in one of these
<a href="supported-currencies.html" class="xref">currencies</a> and the
impression bus will take the previous day's closing exchange rate to
USD, perform the auction, and then convert the price paid on the auction
back to the currency that was submitted by the bidder or <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/xandr-s-digital-platform-ui.html"
class="xref" target="_blank">Xandr's Digital
Platform UI</a> and send the notify request (or populate the
${PRICE_PAID} macro.





<div id="ID-000001b9__section_rdf_4hh_rwb" >

## Step 5. The Impression Bus Chooses the Highest Eligible Bid

When all participating bidders have returned their <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Bid Response</a> or the 150 ms timeout is
reached, the impression bus chooses the highest bid with an approved
creative. Note that Xandr runs a first price
auction: the highest bidder pays the bid price (with some exceptions
made for inventory that is ultimately decisioned by a third party ad
server). See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/price-reduction-mechanics.html"
class="xref" target="_blank">Price Reduction Mechanics</a>  for details.

The impression bus either:

- passes the ad (the winning creative) back to the user's browser (for
  non-conditional tags).
- passes the bid and the tag or URL (for the winning creative) back to
  the publisher's tag/adserver which will decide in real time whether to
  accept the bid.

<div id="ID-000001b9__note_i2t_3w4_rwb" 

Note:

Xandr does not allow bids greater than $999 CPM.
 Any bids over $999 CPM (or effective CPM for CPA/CPC bids) will be
reduced to $999 CPM.





<div id="ID-000001b9__section_qms_phh_rwb" >

## Step 6. The Impression Bus Notifies Bidders of the Auction Results

The impression bus passes the results of the auction, win or lose, to
each bidder in a <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/notify-request.html"
class="xref" target="_blank">Notify Request</a> for the bidder's
internal reporting and real-time analytics needs. If the auction was
initiated from a Preemptive tag, the winning bidder will be informed
that the auction is pending the publisher's acceptance, and will be
notified again should the publisher choose to serve the supplied ad.



<div id="ID-000001b9__section_ywx_l2r_qwb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/price-reduction-mechanics.html"
  class="xref" target="_blank">Price Reduction Mechanics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidding-use-case-with-fees.html"
  class="xref" target="_blank">Bidding Use Case with Fees</a>






