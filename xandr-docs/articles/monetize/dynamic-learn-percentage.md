---
Title : Dynamic Learn Percentage
Description : <b>Tip:</b> This guide only applies to the
ms.date: 10/28/2023
legacy line item. If you are using the augmented line item (ALI), see
---


# Dynamic Learn Percentage







<b>Tip:</b> This guide only applies to the
legacy line item. If you are using the augmented line item (ALI), see
<a href="optimization-guide-ali.md" class="xref">Optimization Guide -
ALI</a>.





Dynamic learn is a sell-side optimization algorithm designed to
accelerate the learning process and improve publisher revenue eCPM by
determining an optimal venue learn percent through adjustments to the
previous learn percent based on performance of learn versus optimized
impressions.

Since dynamic learn is only applied when optimizing to a performance
goal (e.g., CPC, CPA), this content does not apply to campaigns/line
items that do not use optimization.





<b>Tip:</b> The **RPM** (Revenue Per Thousand)
of a node is inverse to volume; low volume means that we will allocate a
greater portion of our impressions to the highest performing nodes to
optimize return.





On the Xandr platform, there are two types of
auctions that occur: **Learn Auctions**, which give preference to bids
from nodes in a learn state, and **Revenue Auctions**, which give
preference to bids from nodes in an optimized state. The percentage of
auctions that will actively search for learn bids is automatically
determined by the system. However, you can determine the maximum learn
percentage at the publisher level. This setting is called **Override
dynamic learn**. For more details, see
<a href="create-a-publisher.md" class="xref">Create a Publisher</a>.

For more information about how this setting affects the learn and
optimized phase, see the
<a href="learn-budget.md" class="xref">Learn Budget</a> section.

As a general rule:

- Publishers want to run Learn Auctions to run newer creatives on their
  inventory, thereby exposing the site to new campaigns that offer
  continuing bids and may offer greater profit. However, the amount of
  money recognized from a learn bid can vary greatly.
- Publishers want to run Revenue Auctions to maximize the profit they
  recognize on their inventory (the money they earn for running the
  impression is fairly certain). However, revenue campaigns have finite
  lifespans, so it is not feasible to run only revenue auctions. Refer
  to <a href="give-up-price.md" class="xref">Give Up Price</a> for a
  detailed description of Learn and Revenue Auctions.

By default, a brand new publisher is set to have up to 80% of its
auctions run as dynamic learn. After that, the dynamic learn algorithm
runs twice a day, adjusting learn allocation up or down by at most 20%
per algorithm execution.





<b>Tip:</b> If a publisher sets the dynamic
learn percentage manually, the algorithm still executes and updates the
learn allocation, but our system ignores the calculated amount. If the
user removes the manual override, the calculated amount is again used.





The system does not remember the starting point for existing publishers
that were previously using a manual learn allocation. Therefore, we
recommend that publishers allow the system algorithm to determine the
dynamic learn rate. (A venue that has diverged from another venue will
retain the percentage rate used by the parent venue.)

Dynamic learn is able to adjust learning rates at a very granular level,
allocating as needed to ensure that allocation and targeting adjustments
are made to follow high-performing auctions.

How Dynamic Learn is Used

The following steps illustrate the mechanics of the dynamic learn
algorithm at a high level:

1.  Each new venue starts at a default max learn percent; either 80% for
    a new publisher, or the most recent max learn percent of the venue
    from which it diverged. Existing publishers/venues will use their
    current max learn percent as a starting value.

2.  Twice daily, when updating max learn percent, we will aggregate the
    data for each venue since the last update, separated into learn and
    optimized impressions. One of the items we aggregate is the **RPM**.

3.  If the **Optimized RPM** is higher than **Learn RPM**, we reduce the
    max learn percent. If **Learn RPM** is higher than **Optimized
    RPM**, we will increase max learn percent. The max learn percent
    cannot increase nor decrease by more than 20% at one time.

    When an optimization node at the top of learn queue becomes
    optimized, optimized RPM will likely go up and learn RPM will likely
    go down. As a result, the dynamic learn algorithm lowers the max
    learn percent, which is appropriate since an additional optimized
    node exists. Additionally, if a new, high-performing campaign starts
    learning on a venue, the campaign jumps to the top of the learn
    queue and learn is likely to increase. As a result, the dynamic
    learn algorithm increases the max learn percent, allowing this new
    campaign to become optimized faster.

Related Topics

- <a href="optimization-buying-strategies.md" class="xref">Optimization
  Buying Strategies</a>
- <a href="what-is-an-optimization-node.md" class="xref">What is an
  Optimization Node?</a>
- <a href="targeted-learn.md" class="xref">Targeted Learn</a>
- <a href="learn-budget.md" class="xref">Learn Budget</a>
- <a href="optimization-levers.md" class="xref">Optimization Levers</a>
- <a href="sell-side-optimization.md" class="xref">Sell-Side
  Optimization</a>




