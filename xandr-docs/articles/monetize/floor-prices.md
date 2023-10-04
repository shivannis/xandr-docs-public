---
Title : Floor Prices
Description : A floor price is the minimum net bid price that a seller is willing to
accept for a bid in an auction. To win an auction that has a set floor
---


# Floor Prices



A floor price is the minimum net bid price that a seller is willing to
accept for a bid in an auction. To win an auction that has a set floor
price, the buyer's bid must be greater than or equal to the floor price.

Bids that are below a seller's established floor price won't be accepted
for that auction. It's also possible for a win-less auction to occur in
which no buyer has made a bid that meets the net floor price.

<div id="floor-prices__section_e5d36835-8056-4d3c-8d2b-1c770797ed60"
>

## Floor Types

<div id="floor-prices__p_144ca296-2068-4854-a6e1-3db02235c81d"
>

Two types of floors exist:

- **Hard Floor:** The minimum net price that a seller will accept for a
  bid. If the net price for the hard floor isn't met, then no bids are
  accepted and the auction ends without a winner, or a default creative
  is served. A bid will be considered only if it is equal to or greater
  than the hard floor.
  

  Note: When there is only one bid that
  exceeds the hard floor and wins the auction, that bid is reduced to
  the value of the hard floor, assuming there is no soft floor.

  
- **Soft Floor:** The lowest net price that a bid is reduced to by the
  seller. Essentially, a soft floor allows the network to alter the
  mechanics of the standard second-price auction. In a second-price
  auction, the winning bidder pays the value of the second highest bid
  in addition to $0.01. However, when a soft floor is set, the winning
  bidder pays either the soft floor's net price or the second bidder's
  bid depending upon which one is greater. If the winner’s bid is higher
  than the hard floor, but lower than the soft floor, the winner pays
  the price that they've bid. For more information, see <a
  href="https://theviewpoint.com/insights/blog/first-price-vs-second-price-auctions-ultimate-comparison/"
  class="xref"
  target="_blank">https://theviewpoint.com/insights/blog/first-price-vs-second-price-auctions-ultimate-comparison/</a>.
  

  Note: A soft floor can't be lower
  than a hard floor.

  





<div id="floor-prices__section_hpq_xw3_3tb" >

## Hierarchy of Floor Price Settings

The following numbered table shows the order in which floor price
settings are honored. A setting higher in the table will take precedence
over the settings lower in the table.



Note: All set floor prices within
Monetize are net values.



<table id="floor-prices__table_nps_rfj_3tb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="floor-prices__table_nps_rfj_3tb__entry__1"
class="entry">Option</th>
<th id="floor-prices__table_nps_rfj_3tb__entry__2"
class="entry">Description</th>
<th id="floor-prices__table_nps_rfj_3tb__entry__3" class="entry">Where
to Set</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="floor-prices__table_nps_rfj_3tb__entry__1">1.
Deal Ask Price</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__2">When creating a
deal, you can set a net ask (floor) price for buyers to pay you that
follows the current market price (default selection), or you can set a
custom ask price for your deal. For more information on deal ask prices,
see <a href="deal-auction-mechanics.html" class="xref">Deal Auction
Mechanics</a>.</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__3">When creating a deal
(Partners
&gt; Deals)</td>
</tr>
<tr class="even row">
<td class="entry" headers="floor-prices__table_nps_rfj_3tb__entry__1">2.
Native Asset (Floor) Pricing</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__2">You can set net
floor prices for native assets placements (Main Image and Video) that
you create during the native assembly configuration process. For more
information on native assets, see <a
href="create-a-native-assembly.html" class="xref"
title="You can easily modify native assemblies that contain pre-configured native creative asset specifications or create your own from scratch.">Create
a Native Assembly</a>.

Note: If you select the <span
class="ph uicontrol">Market Price radio button for your ask price
selection when creating a deal, floor prices set at the native asset
level will be used if available. If no floor prices have been set for
your native assets, then the floor prices that you set at the yield
management level will be used if available.
</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__3">When creating or
editing a native asset placement (<span
class="ph uicontrol">Publishers &gt; <span
class="ph uicontrol">Native Assembly)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="floor-prices__table_nps_rfj_3tb__entry__1">3.
Yield Management Floor Rules</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__2">Networks can use
yield management tools to set floor prices, which ultimately help
sellers optimize their revenue generation. For more information on yield
management, see <a href="understanding-yield-management.html"
class="xref">Understanding Yield Management</a>.

Note: Yield Management isn't available
by default. If you're interested in gaining access or discussing
potential use cases that may apply to your business, please reach out to
your Xandr representative.
</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__3">The Yield Management
Floor Rules screen (<span
class="ph menucascade">Publishers &gt;
Floor Rules)</td>
</tr>
<tr class="even row">
<td class="entry" headers="floor-prices__table_nps_rfj_3tb__entry__1">4.
Default Creative Reserve (Floor) Prices</td>
<td class="entry" headers="floor-prices__table_nps_rfj_3tb__entry__2">To
prevent serving blanks (no creatives) or <a href="default-psas.html"
class="xref">Default PSAs</a>, you can set up a default creative and
assign it to a placement. Default creatives are served when the highest
eCPM bid on a placement is lower than the net eCPM (floor) price that
you've set for that placement. For information on assigning a default
creative, see <a href="assign-a-default-creative-to-a-placement.html"
class="xref">Assign a Default Creative to a Placement</a>.</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__3">When creating or
editing a placement (<span
class="ph uicontrol">Publishers &gt; <span
class="ph uicontrol">Inventory Manager)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="floor-prices__table_nps_rfj_3tb__entry__1">5.
Placement Reserve (Floor) Prices</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__2">You can set reserve
(floor) prices for individual placements. When you set a reserve price
for a placement, you're ensuring that no creative can serve on that
placement at a net price that is lower than your set reserve price.
Placement reserve prices are calculated according to either your total
network or publisher revenue. For more information about setting a
placement reserve price, see <a href="update-a-placement.html"
class="xref">Update a Placement</a>.</td>
<td class="entry"
headers="floor-prices__table_nps_rfj_3tb__entry__3">When creating or
editing a placement (<span
class="ph uicontrol">Publishers &gt; <span
class="ph uicontrol">Inventory Manager)</td>
</tr>
</tbody>
</table>



<div id="floor-prices__section_ybb_nzb_rtb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
  class="xref" target="_blank">Outgoing Bid Request to Bidders</a>
- <a
  href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
  class="xref" target="_blank">Incoming Bid Request from SSPs</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/seller-best-practices.html"
  class="xref" target="_blank">Seller Best Practices</a>
- <a href="placement-tag-parameters.html" class="xref">Placement Tag
  Parameters</a>
- <a href="target-video-attributes-via-query-string-parameters.html"
  class="xref"
  title="If you use a tag solution for in-stream video, effectively targeting demand requires knowledge and careful implementation of the range of possible tag parameters.">Target
  Video Attributes via Query String Parameters</a>






