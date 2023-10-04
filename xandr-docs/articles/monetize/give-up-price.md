---
Title : Give Up Price
Description : Important: This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
---


# Give Up Price





Important: This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
see
<a href="optimization-guide-ali.html" class="xref">Optimization Guide -
ALI</a>.



Overview

The Give Up Price is a bid price threshold which determines the order in
which bids are considered in an auction.

There are two types of bids (**Optimized Bids** and **Learn Bids**) that
are designated by networks, and two types of auctions (**Revenue
Auctions** and **Learn Auctions**) that are designated by publishers.
Bids are assigned to auctions by system algorithms, which do not take
into account the type of bid. For example, a Learn Bid can be assigned
to an Optimized Auction, and an Optimized Bid can be assigned to a Learn
Auction. This allows Learn Bids and Optimized Bids to compete for the
same impressions.

- **Revenue Auctions** give preference to Optimized bids in which there
  is high confidence in the accuracy of the bid compared to the current
  market (i.e., the bid has been refined so that it is likely to be a
  fair price for the market).
- **Learn Auctions** give preference to Learn bids that are newer and do
  not yet have well-established parameters compared to the current
  market (i.e., the bid may be radically high or low for the market).

A publisher needs to allocate bids to both learn auctions and revenue
auctions in order to maximize their total revenue for the following
reasons:

- Campaigns expire and a network will always want a supply of optimized
  campaigns to produce revenue.
- New offers begin and networks want to find these new potential top
  performers.

Therefore, publishers will always allocate some bids (optimized or learn
bids) to learn auctions and some to revenue auctions. However, this
raises the problem of accepting bids that either make little to no money
for the publisher, or accepting bids that provide no valid data that the
networks can use to optimize future bids. For this reason, optimized
bids in a revenue auction, or learn bids in a learn auction, will not
receive preference if they are below the give up price amount.



Important: The concept of give up price
has no bearing on how the bid is calculated or valued; it only affects
the bid hierarchy.



Bid Types

The following are Optimized bids:

- **Managed Base Bids** - These bids generate a base CPM of revenue for
  the network every time they serve.
- **Optimized Managed Bids** - These bids generate an amount of revenue
  that we can accurately predict per success event.
- **RTB CPM Bids** - These bids pay the seller on a per impression
  basis.
- **RTB Cross Network CPA/CPC Bids** - These bids generate an amount of
  revenue that we can accurately predict per success event.

The following are Learn bids:

- **Managed Learn Bids** - These bids are from newer campaigns that have
  not had enough success events for us to accurately predict their
  revenue generation.
- **RTB CPA/CPC Learn Bids** - These bids are from newer campaigns that
  have not had enough success events for us to accurately predict their
  revenue generation.

Revenue Auction Hierarchy

1.  Optimized and Base bids
2.  Learn bids
3.  All bids

Once bids are submitted to a Revenue Auction, the Optimized and Base
bids are considered first. If all Optimized and Base bids are below the
give up price, the system will then look at Learn bids and choose the
highest one that exceeds the give up price. If all Learn bids are below
the Give Up Price, the system then looks at all bids and chooses the
highest one.

Learn Auction Hierarchy

1.  Learn bids
2.  Optimized and Base bids
3.  All bids

Once bids are submitted to a Learn Auction, the Learn bids are
considered first. If all Learn bids are below the give up price, the
system will then look at Optimized and Base bids and choose the highest
one that exceeds the give up price. If all Optimized and Base bids are
below the give up price, the system then considers all bids and chooses
the highest one.

Give Up Price in Auction Hierarchies

The give up price is the average Revenue Per Thousand (RPM) from Learn
bids. In each auction hierarchy, this amount acts as a threshold; bids
that do not exceed the Give Up Price are moved to the bottom of the
hierarchy (#3 in the Revenue Auction Hierarchy and Learn Auction
Hierarchy above). If there is not enough data on a venue level, give up
price on that venue is set to the seller level give up price. If there
is not enough data on the seller level to calculate a give up price, the
give up price defaults to **$0.001**.

**Example - Learn Auctions:**

There are five bids in each of these Learn Auction examples:

1.  $0.35 - Optimized
2.  $0.15 - Learn
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

**Case 1: Give up = $0.09**

1.  $0.35 - Optimized
2.  **$0.15 - Learn**
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

Learn Bids are considered first. The highest Learn Bid that exceeds the
give up price is Bid 2 ($0.15).

**Case 2: Give up = $0.22**

1.  **$0.35 - Optimized**
2.  $0.15 - Learn
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

Learn Bids are considered first, but all of the Learn Bids are below the
give up price. The system then considers Optimized or Base Bids, and the
highest Optimized or Base bid that exceeds the give up price is Bid 1
($0.35).

**Case 3: Give up = $0.60**

1.  **$0.35 - Optimized**
2.  $0.15 - Learn
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

Learn Bids are considered first, but all of the Learn Bids are below the
give up price. Optimized and Base Bids are considered next, but all
Optimized and Base Bids are below the Give Up Price. The system then
considers all bids, and the highest bid that exceeds the give up price
is Bid 1 ($0.35).

**Example - Revenue Auctions:**

There are five bids in each of these Revenue Auctions:

1.  $0.45 - Learn
2.  $0.35 - Optimized
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

**Case 1: Give up = $0.09**

1.  $0.45 - Learn
2.  **$0.35 - Optimized**
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

Optimized or Base Bids are considered first. The highest Optimized or
Base Bid that exceeds the give up price is Bid 2 ($0.35).

**Case 2: Give up = $0.30**

1.  $0.45 - Learn
2.  **$0.35 - Optimized**
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

Optimized or Base Bids are considered first. The highest Optimized or
Base Bid that is above the give up price is selected; therefore, Bid 2
($0.35) is the winner.

**Case 3: Give up = $0.60**

1.  **$0.45 - Learn**
2.  $0.35 - Optimized
3.  $0.12 - Base
4.  $0.10 - Optimized
5.  $0.08 - Learn

Optimized or Base Bids are considered first. All of the Optimized and
Base Bids are below the give up price. Learn Bids are considered next,
but all Learn Bids are below the give up price. The system then
considers all bids, and the highest bid that exceeds the give up price
is Bid 1 ($0.45).

Related Topics

- <a href="optimization-in-depth.html" class="xref">Optimization
  In-Depth</a>
- <a href="optimization-buying-strategies.html" class="xref">Optimization
  Buying Strategies</a>
- <a href="sell-side-optimization.html" class="xref">Sell-Side
  Optimization</a>
- <a href="optimization-guide.html" class="xref">Optimization Guide</a>
- <a href="optimization-in-depth.html" class="xref">Optimization
  In-Depth</a>
- <a href="optimization-buying-strategies.html" class="xref">Optimization
  Buying Strategies</a>
- <a href="targeted-learn.html" class="xref">Targeted Learn</a>
- <a href="what-is-an-optimization-node.html" class="xref">What is an
  Optimization Node?</a>
- <a href="learn-budget.html" class="xref">Learn Budget</a>
- <a href="what-is-valuation.html" class="xref">What is Valuation?</a>
- <a href="optimization-levers.html" class="xref">Optimization Levers</a>
- <a href="cadence-modifier-and-the-chaos-factor.html"
  class="xref">Cadence Modifier and the Chaos Factor</a>
- <a href="sell-side-optimization.html" class="xref">Sell-Side
  Optimization</a>
- <a href="dynamic-learn-percentage.html" class="xref">Dynamic Learn
  Percentage</a>




