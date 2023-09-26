---
Title : Optimization Buying Strategies
Description : Important: This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
---


# Optimization Buying Strategies





Important: This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
see
<a href="optimization-guide-ali.html" class="xref">Optimization Guide -
ALI</a>.



There are two primary types of optimization buying strategies:
**Managed** and **RTB**. Not all buying strategies use optimization to
determine a bid amount. You may also set a **Performance Goal** bidding
limit on your line item that works with any buying strategy in Managed
and RTB. It is therefore critical that you understand which buying
strategy the network is using.

Refer to
<a href="buying-strategies.html" class="xref">Buying Strategies</a> for
additional information.

Managed

**Managed** buying refers to a situation where a network is buying
inventory from a publisher with which they have a financial
relationship. This is also known as **Buying Direct Inventory**. Managed
bids are always based on the line item booked revenue. Only one Managed
bidding strategy utilizes optimization:

- **CPC or CPA booked revenue** We use the **CPC** or
  CPA value specified on the line item
  as the performance goal in our algorithm to determine what an
  impression is worth in terms of a CPM value.

RTB

**RTB** buying refers to a situation where a network is buying inventory
from publishers with whom they do not have a direct financial
relationship. This is most commonly done on a pay per impression basis
(called CPM payout). This is also known as **Buying Third-Party
Inventory**. RTB bids are always based on the cost of serving
impressions.

The following buying strategies work for buying third party inventory
that utilize optimization:

- **Optimize to a predicted CPC or CPA goal** This strategy applies the
  specified goal (**CPC/CPA**) to the optimization algorithm to
  calculate a **CPM** bid. The optimization algorithm determines a bid
  based on the assumed value of a click or conversion and based on past
  click-through rates or conversion rates.
  

  Note: When your line item booked
  revenue is CPM but you want your campaign to optimize to a CPC or CPA
  goal, for best results, use the Performance
  Goals section on your line item to set a CPC or CPA performance
  goal. Then use Optimize to a % Margin of
  Booked Revenue as your campaign buying strategy.
  For more information, see
  <a href="understanding-performance-goals.html"
  class="xref">Understanding Performance Goals</a> and
  <a href="using-performance-goals-with-cpm-booked-revenue.html"
  class="xref">Using Performance Goals with CPM Booked Revenue</a>.

  To learn about setting up **Performance Goals,** see
  <a href="add-a-performance-goal-to-a-line-item.html" class="xref">Add a
  Performance Goal to a Line Item</a>.

  
- **Optimize to a % margin of booked revenue**: There are two types of
  booked revenue:
  - **CPM booked revenue** This strategy does not use optimization.

  - **CPA/CPC booked revenue** With this method, the system applies the
    desired margin, then applies optimization to achieve that predicted
    goal. **Example:** If you select a 60% margin of booked revenue and
    the line item booked revenue is $10 CPA, the system optimizes to
    achieve a $4 CPA goal.

    This strategy requires the line item booked revenue to be a known
    value. It is not possible to optimize to a % margin of booked
    revenue if it is set as Cost Plus, or if booked revenue is not being
    tracked.
- **Pay on a Per-click (CPC) basis or Pay on a Per-conversion (CPA)
  basis** When choosing a Cross Net CPC/CPA bidding strategy, the user
  must specify what they are willing to pay per conversion (CPA) and/or
  per click (CPC). The optimization algorithm then uses this value to
  calculate a **CPM** bid. This payment type is only accepted by
  Xandr sellers who choose to enable this
  payment method, so selecting this buying strategy exclusively limits
  the inventory available for a campaign.
  

  Note: The ability to combine CPM
  booked revenue with either the **Pay on a Per-click (CPC) Basis** or
  the **Pay on a Per-conversion (CPA) Basis** buying strategy is being
  deprecated soon. Although this combination will remain functional for
  existing campaigns, you will no longer be able to use this combination
  on new campaigns or duplicate existing campaigns that use it. For best
  results, use the Performance Goals
  section on your line item
  (Create New
  Line Item  \>  Basic Settings
   \>  Performance Goals
  or Edit Line
  Item  \>  Basic Settings  \>
   Performance Goals) to set a
  CPC or CPA performance goal. Then use **Optimize to a % Margin of
  Booked Revenue** as your campaign buying strategy.
  For more information, see
  <a href="using-performance-goals-with-cpm-booked-revenue.html"
  class="xref">Using Performance Goals with CPM Booked Revenue</a>

  To learn about setting up **Performance Goals,** see Step 6 of
  <a href="create-a-standard-line-item.html" class="xref">Create a
  Standard Line Item</a>.

  

For all RTB pay-per-impression optimization buying strategies, you have
the option of specifying a **min CPM** and a **max CPM**.

- If you set a **min CPM** for a campaign using optimization and the
  algorithm determines your bid is below this amount, the campaign will
  not bid on that impression.
- If you set a **max CPM** for a campaign using optimization and the
  algorithm determines your bid is above this amount, the campaign will
  bid on the impression at the max CPM price (not at the price
  calculated by the algorithm).

The <a href="cadence-modifier-and-the-chaos-factor.html"
class="xref">Cadence Modifier and the Chaos Factor</a> is automatically
enabled for buying strategies that do use optimization, as cadence is an
important feature of the optimization algorithm.

Performance Goals

When creating a Line Item, you can track how well the campaigns that
belong to that line item are doing against the performance goals give to
you by your advertiser. If you elect to set a bidding limit with your
**Performance Goal**, all campaigns buying underneath that line item
will go through a bid decisioning logic. The bid decisioning applies to
all buying strategies, regardless if they are an optimization buying
strategy or not. For more information, see Step 6 of
<a href="create-a-standard-line-item.html" class="xref">Create a
Standard Line Item</a>.

Related Topic

- <a href="sell-side-optimization.html" class="xref">Sell-Side
  Optimization</a>




