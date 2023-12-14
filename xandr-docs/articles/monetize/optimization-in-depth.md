---
Title : Optimization In-Depth
Description : <b>Important:</b> This guide only applies to
ms.date: 10/28/2023
the legacy line item. If you are using the augmented line item (ALI),
---


# Optimization In-Depth





<b>Important:</b> This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
see
<a href="optimization-guide-ali.md" class="xref">Optimization Guide -
ALI</a>.



This section explains and demonstrates the detailed concepts and
components involved in optimization, such as venues and nodes, and shows
you how to influence the optimization engine.

- **<a href="optimization-buying-strategies.md" class="xref">Optimization
  Buying Strategies</a>** - There are two primary types of buying:
  Managed and RTB. Managed buying, also known as Direct buying, refers
  to a situation where a network is buying inventory from a publisher
  with which they have a financial relationship. RTB buying, also known
  as Third-Party buying, refers to a situation where a network is buying
  inventory from publishers with whom they do not have a direct
  financial relationship.
- **<a href="what-is-a-venue.md" class="xref">What is a Venue?</a>** -
  In order to maximize the accuracy of our predictions, all of the
  inventory on the Xandr platform is entered
  into groupings of like inventory buckets called venues.
- **<a href="targeted-learn.md" class="xref">Targeted Learn</a>** -
  The Xandr optimization engine uses a
  campaign's past performance data (conversion rate and click-through
  rate) to determine the appropriate bid for every impression relative
  to the campaign's cost-per-acquisition (CPA) or cost-per-click (CPC)
  goal. When you add a new campaign to Xandr
  Monetize, however, performance data is not yet available. In
  this case, the Xandr optimization engine must
  first "learn" what to bid for the campaign.
- **<a href="what-is-an-optimization-node.md" class="xref">What is an
  Optimization Node?</a>** - Nodes are groupings of impressions from
  advertisers (or networks representing advertisers) which are a
  combination of a campaign, a specific creative, the venue, and the
  conversion pixel. Optimization is performed against a single node.
- **<a href="learn-budget.md" class="xref">Learn Budget</a>** - The
  learn budget is applied to nodes in order to determine accurate bids
  for inventory. You can determine how much of your overall budget will
  be used as learn.
- **<a href="what-is-valuation.md" class="xref">What is Valuation?</a>** -
  Valuation is the process by which our system determines a bid amount.
  In order to obtain one success event (i.e., a success event is an
  impression which leads to the user taking the action intended by the
  advertiser, such as a purchase), it is necessary to display a certain
  number of impressions to users. In order to earn a profit, the
  advertiser must pay less for the impressions displayed to obtain the
  success event than the money earned by the success event.
- **<a href="optimization-levers.md" class="xref">Optimization Levers</a>** -
  Certain users have the ability to use Optimization Levers to influence
  how optimization works for a campaign, for example, how much you bid
  during the Learn phase, how many success events (clicks or
  conversions) it takes to move from the Learn phase to the Optimized
  phase, as well as whether you want to optimize to the campaign bidding
  strategy before optimizing to the line item booked revenue.
- **<a href="cadence-modifier-and-the-chaos-factor.md"
  class="xref">Cadence Modifier and the Chaos Factor</a>** - The Cadence
  Modifier adjusts the amount of a bid based on the frequency (the
  number of times the user has seen the creative) and recency (the
  amount of time that has passed since the user last saw the creative)
  of the user. Frequency and recency are two of many factors which
  influence the conversion likelihood.
- **<a href="sell-side-optimization.md" class="xref">Sell-Side
  Optimization</a>** - The online advertising marketplace is in many
  ways defined by its high levels of uncertainty. As a seller's revenue
  is often linked to an ad's success on the seller's inventory (measured
  through clicks or conversions), optimization gives sellers several
  controls that can leveraged to minimize risk and maximize return.
- **<a href="dynamic-learn-percentage.md" class="xref">Dynamic Learn
  Percentage</a>** - Dynamic learn is a sell-side optimization algorithm
  designed to accelerate the learning process and improve publisher
  revenue eCPM by determining an optimal venue learn percent through
  adjustments to the previous learn percent based on performance of
  learn versus optimized impressions.
- **<a href="give-up-price.md" class="xref">Give Up Price</a>** - The
  Give Up Price is a bid price threshold which determines the order in
  which bids are considered in an auction.

Related Topics

- <a href="optimization-guide.md" class="xref">Optimization Guide</a>
- <a href="understanding-optimization.md" class="xref">Understanding
  Optimization</a>
- <a href="prerequisite-knowledge.md" class="xref">Prerequisite
  Knowledge</a>




