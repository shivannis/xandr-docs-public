---
Title : What is an Optimization Node?
Description : <b>Important:</b> This guide only applies to
ms.date: 10/28/2023
the legacy line item. If you are using the augmented line item (ALI),
---


# What is an Optimization Node?





<b>Important:</b> This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
see
<a href="optimization-guide-ali.md" class="xref">Optimization Guide -
ALI</a>.



Nodes are groupings of impressions from advertisers (or networks
representing advertisers) which are a combination of a campaign, a
specific creative, the venue, and the conversion pixel. Optimization is
performed against a single node.

Each individual node can be in either a **Learn** phase or an
**Optimized** phase. A campaign can use multiple nodes at once;
therefore, part of a campaign could be in the Learn phase while other
part is in the Optimized phase.

Optimization Phases: Learn and Optimized

As auctions run and information about the bids associated to a campaign
is recorded, the data is parsed into one of the two possible
optimization phases - Learn or Optimized - depending on how much data
the node has accumulated.



<b>Important:</b> In both phases, the
valuation equation is altered to account for the limitations in the
amount of data we have. This is discussed in the
<a href="what-is-valuation.md" class="xref">What is Valuation?</a>
section.



Learn Phase

In the beginning stages of a campaign, impressions are recorded as part
of the **Learn** phase. In this phase, the system is trying to determine
the optimized bid valuation and needs to collect data to determine the
value of a click or conversion. As a node starts to accumulate more and
more data, our confidence in the bid valuations increases.

Example:

When bidding on inventory that you are not familiar with, or if you have
a new creative, you must bid in such a way that you learn what amount is
too high (wins all auctions but is not profitable) or too low (wins no
auctions at all). For this reason, bids at the beginning of the learn
phase can vary greatly. Only by seeing what happens when you make bids
can you get an understanding of the market. For example, if you bid $.15
on inventory and win no auctions, you learn that you must bid higher in
order for end users to view your creative. If you bid $5.00 on inventory
and win every auction, you learn that you should lower your bid to save
money on those impressions and therefore become more profitable.

Optimized Phase

The advertiser can establish the number of success events that are
required to advance from the Learn stage to the Optimized stage. If you
set that number appropriately, the statistical sample enables the bidder
to bid an amount which wins the number of auctions you need while
spending an amount of money on each bid to keep you profitable.

For additional information on how learn and optimized work, see the
<a href="learn-budget.md" class="xref">Learn Budget</a> section.

Related Topics

- <a href="optimization-buying-strategies.md" class="xref">Optimization
  Buying Strategies</a>
- <a href="learn-budget.md" class="xref">Learn Budget</a>
- <a href="targeted-learn.md" class="xref">Targeted Learn</a>
- <a href="what-is-valuation.md" class="xref">What is Valuation?</a>
- <a href="optimization-levers.md" class="xref">Optimization Levers</a>
- <a href="cadence-modifier-and-the-chaos-factor.md"
  class="xref">Cadence Modifier and the Chaos Factor</a>
- <a href="sell-side-optimization.md" class="xref">Sell-Side
  Optimization</a>
- <a href="dynamic-learn-percentage.md" class="xref">Dynamic Learn
  Percentage</a>
- <a href="give-up-price.md" class="xref">Give Up Price</a>




