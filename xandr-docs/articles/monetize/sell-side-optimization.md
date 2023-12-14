---
Title : Sell-Side Optimization
Description : <b>Important:</b> This guide only applies to
ms.date: 10/28/2023
the legacy line item. If you are using the augmented line item (ALI),
---


# Sell-Side Optimization





<b>Important:</b> This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
see
<a href="optimization-guide-ali.md" class="xref">Optimization Guide -
ALI</a>.



The online advertising marketplace is in many ways defined by its high
levels of uncertainty. As a seller's revenue is often linked to an ad's
success on the seller's inventory (measured through clicks or
conversions), optimization gives sellers several controls that can
leveraged to minimize risk and maximize return.

Publishers consider buyer auction bids to be either **Uncertain
Revenue** or Certain Revenue.

- **Uncertain Revenue**

  When a campaign begins serving impressions on inventory in the RTB
  marketplace, it is unclear how much revenue nearly all non-managed CPC
  or CPA bids will generate; while the buyer (network) has agreed to pay
  a fixed rate for each success event on their ad, the optimization
  engine doesn't know how frequently success events will occur. This is
  uncertain revenue and cannot be accurately quantified until a
  significant number of success events have occurred to give a
  statistically valid sample (by determining the net revenue from each).

- **Certain Revenue**

  While evaluating the value of uncertain bids, sellers can also choose
  to hold auctions that maximize bids from sources designated as certain
  revenue. Optimized bids can be any CPM base-bids, optimized CPC bids,
  or optimized CPA bids. These bids are treated as certain revenue
  because, through repeated success events occurring during the learn
  phase of the optimization process, it is possible to estimate an
  accurate value from those impressions.

Optimization uses an algorithm to intelligently allocate a percentage of
total auctions to each of these two categories. The process, called
<a href="dynamic-learn-percentage.md" class="xref">Dynamic Learn
Percentage</a>, considers success rates before maximizing revenue from
an expanded group of certain revenue sources.

Sellers can also establish a
<a href="give-up-price.md" class="xref">Give Up Price</a>. The give up
price is a bid price threshold which determines how bid prices are
ranked in **Learn Auctions** and **Revenue Auctions**. If all bids
offered in the auction type are below the user specified give up price,
the auction is opened up to all bids.

Related Topics

- <a href="optimization-buying-strategies.md" class="xref">Optimization
  Buying Strategies</a>
- <a href="targeted-learn.md" class="xref">Targeted Learn</a>
- <a href="what-is-an-optimization-node.md" class="xref">What is an
  Optimization Node?</a>
- <a href="learn-budget.md" class="xref">Learn Budget</a>
- <a href="what-is-valuation.md" class="xref">What is Valuation?</a>
- <a href="optimization-levers.md" class="xref">Optimization Levers</a>
- <a href="cadence-modifier-and-the-chaos-factor.md"
  class="xref">Cadence Modifier and the Chaos Factor</a>
- <a href="dynamic-learn-percentage.md" class="xref">Dynamic Learn
  Percentage</a>
- <a href="give-up-price.md" class="xref">Give Up Price</a>




