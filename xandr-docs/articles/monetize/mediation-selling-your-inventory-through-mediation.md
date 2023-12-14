---
Title : Selling Your Inventory Through Mediation
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
Microsoft Monetize Ad Server customers.
---


# Selling Your Inventory Through Mediation







<b>Note:</b> Mediation is available only to
Microsoft Monetize Ad Server customers.



Mediation is a process by which you allocate inventory to buyers that
are not directly integrated with our exchange. This is necessary in
order to get access to certain demand sources (mobile ad networks in
particular). We help you manage your mediation efforts by providing the
following features:

- See the performance of all of the networks you work with in one place
- Built-in support for integrating with popular networks
- Support for custom network integrations

This page explains how mediation works and walks you through the process
of using our system to set up mediation with external ad networks. The
focus is on networks we support, but you can create custom networks to
perform any kind of integration you want.



>

## Getting Started

To start selling your inventory through mediation, you must:

1.  Have the **Mediation** tab enabled for your Xandr
    Monetize Ad Server account. You'll need to contact your
    Xandr representative.
2.  From the list of supported networks in the **Mediation** tab, add
    the networks for which you have accounts. For instructions, see
    <a href="mediation-networks.md" class="xref">Mediation Networks</a>.
3.  Once you've created your networks, switch to the bids page and begin
    creating bids. For instructions, see
    <a href="mediation-bids.md" class="xref">Mediation Bids</a>.
4.  Activate your bids to start selling.





## How Mediation Works

At a high level, here's how mediation works:

1.  You
    <a href="mediation-networks.md" class="xref">Mediation Networks</a>
    to our system that represents a mediated ad network.
2.  You <a href="mediation-bids.md" class="xref">Mediation Bids</a>
    which is used to rank that network in auctions for your inventory.
    The bid should represent the amount you think the network is likely
    to pay for your inventory.
3.  The auction is run, with the bid price you set used to rank the
    mediated bid against other bids coming in from the exchange in
    real-time.
4.  The mediated network either returns an ad or not. If no ad is
    returned or the network does not respond in time, we move on to the
    next highest bid in the auction.

Because the mediated networks are not connected directly to the
exchange, they are not submitting bids in real time. Therefore it's very
important for the bids you create to be kept as accurate and up-to-date
as possible. Otherwise, an inaccurate mediated bid could win auctions
over other, higher bids that would make you more money.

To illustrate this point, the diagram below represents an auction with
three bids. The top bid (marked in green) is a mediated bid for $2.00
from a network called CoolAds. Because the CoolAds bid is higher than
the other bids coming in, it wins the auction. However, CoolAds may not
actually be paying you $2.00, and you won't find out until well after
the auction when you check the daily totals from the CoolAds servers.



<b>Note:</b> For more information about how
mediated bids interact with the other demand types in auctions, see
<a href="mediation-how-auctions-work-for-sellers.md" class="xref">How
Auctions Work for Sellers</a>.





![SSP - A](media/ssp-auction-example-a.png)




  







## Related Topics



- <a href="mediation-how-auctions-work-for-sellers.md" class="xref">How
  Auctions Work for Sellers</a>
- <a href="mediation-integrating-for-mediation.md"
  class="xref">Integrating for Mediation</a>
- <a href="mediation-faqs.md" class="xref">Mediation FAQs</a>








