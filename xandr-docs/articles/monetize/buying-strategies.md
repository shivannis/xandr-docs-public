---
Title : Buying Strategies
Description : Buying Strategies are required if your campaign is set to buy
ms.date: 10/28/2023
third-party inventory (inventory not directly managed by you). For
---


# Buying Strategies



Buying Strategies are required if your campaign is set to buy
third-party inventory (inventory not directly managed by you). For
details on buying direct inventory, see
<a href="bidding-priority.md" class="xref">Bidding Priority</a>.

Pay on a Per-Impression (CPM) Basis

You can choose to pay publishers for every impression. This payment type
is accepted by all third-party sellers (platform sellers and external
sellers).

Optimize to a % margin of Booked Revenue

If you choose to use your
<a href="create-a-standard-line-item.md" class="xref">standard line
item's</a> Booked Revenue to bid, your bid will be based on your booked
revenue with whatever % margin off the top that you choose. For example,
if your booked revenue is $1 CPM, and you set a bidding strategy margin
of 25%, your campaign will bid $0.75. If your booked revenue type is a
CPA or CPC goal, it will apply your desired margin and optimize to that
predicted goal.

If you have advertiser goals at the line item level,
Xandr will calculate an optimized eCPM based on
the line item booked revenue (after a margin has been calculated) and a
click through or conversion rate. Then it will check to see if this bid
will meet the advertiser goal. If so, bid. If not, do not bid.

If you choose to optimize to a % margin of your booked revenue, you also
have the option to place a max and min bid.





<b>Important:</b>

Error Message: **cpm_bid_type "margin" is not compatible with
"cost_plus_cpm" or "cost_plus_margin"**

If you see this error message, there are three possible causes:

1.  Your campaign buying strategy is "Optimize to a % margin" and your
    line item booked revenue is Cost Plus.

    Reason: This buying strategy requires the line item booked revenue
    to be a known value.

    Solution: Choose a different buying strategy or a different booked
    revenue type.

2.  Your campaign buying strategy is "Optimize to a % margin" and you
    have not entered any booked revenue on the line item.

    Reason: This buying strategy requires the line item booked revenue
    to be a known value.

    Solution: Enter $0 CPM as the line item booked revenue if you don't
    wish to track revenue.

3.  You have a direct campaign and you have not entered any booked
    revenue on the line item.

    Reason: Our direct decisioning system uses both priority levels as
    well as booked revenue to determine which bid should win. Thus,
    booked revenue must be a known value.

    Solution: Enter $0 CPM as the line item booked revenue if you don't
    wish to track revenue.





Optimize to a predicted CPA or CPC goal

**Microsoft Monetize varies the bid based on YOUR
valuation. This is how you use**
**<a href="optimization-guide.md" class="xref">Optimization Guide</a>.**

You may wish to vary bids based on the likelihood of some conversion
event, either a click or an acquisition, for that particular inventory,
in order to attain a specific cost per click or cost per acquisition. In
this case Microsoft Monetize determines a bid based
on past conversion rates and based on how much you value a conversion,
whether you define it as a click or an acquisition (registration,
purchase, etc.).



<b>Note:</b> When your line item booked
revenue is CPM but you want your campaign to optimize to a CPC or CPA
goal, for best results, use the Performance
Goals section on your line item to set a CPC or CPA performance
goal. Then use **Optimize to a % Margin of Booked Revenue** as your
campaign buying strategy. For more information, see
<a href="understanding-performance-goals.md"
class="xref">Understanding Performance Goals</a> and
<a href="using-performance-goals-with-cpm-booked-revenue.md"
class="xref">Using Performance Goals with CPM Booked Revenue</a>. To
learn about setting up performance goals, see
<a href="add-a-performance-goal-to-a-line-item.md" class="xref">Add a
Performance Goal to a Line Item</a>.



Bid a Media Cost CPM

You can bid a flat CPM. You have the option to use the
<a href="cadence-modifier-and-the-chaos-factor.md"
class="xref">Cadence Modifier and the Chaos Factor</a> to modify your
bid according to frequency and recency.

Target Reach and Delivery

You may wish to pay the going platform rate for the inventory you
desire, which means you know you will win most or some of the inventory,
but you won't be over bidding. The dynamic inventory CPM is based on
historical data for a particular inventory source. You can choose either
the **Estimated Average Price** (EAP) or the **Estimated Clear Price**
(ECP).

- EAP is an estimate of a bid that is likely to win about half of
  impressions, based on observing historical bids.
- ECP is an estimate of a bid that is likely to win the impression from
  a given publisher, based on observing historical bids.

These estimates are based only on Xandr bids in
RTB auctions.

You have the option to set a minimum and maximum bid range as well as
using the <a href="cadence-modifier-and-the-chaos-factor.md"
class="xref">Cadence Modifier and the Chaos Factor</a> to modify your
bid according to frequency and recency. You can also set a min/max bid
here as well.

Click Through Rate

If you would like to bid based on a Click Through Rate, you must set a
Click Through Rate Advertiser's Goal and choose "Optimize to a % margin
of Booked Revenue" as your Buying Strategy. This will allow you to bid
based on a margin, but you will only bid if that bid allows you to reach
your Advertiser's Click Through Rate.

Pay on a Per-Click (CPC) and Per-Conversion (CPA) Basis

You can choose to pay publishers only when users click on your ads or
when users convert. These payment types are accepted only by
participating platform sellers, not by external sellers; using these
payment types exclusively may therefore decrease a campaign's reach.

**Please note:**

- If you set a min CPM for a CPA or CPC Goal campaign, and the
  optimization system determines that your ideal bid is below it, the
  campaign will not bid. For example, if the optimized bid is 20 cents,
  and your min bid is $1, Monetize **will not
  bid** for this campaign.
- If you set a min CPM, your bid will not be price reduced below this
  amount before being passed into any third-party system.



<b>Note:</b> The ability to combine CPM booked
revenue with either the **Pay on a Per-click (CPC) Basis** or the **Pay
on a Per-conversion (CPA) Basis** buying strategy is now deprecated.
Although this combination will remain functional for existing campaigns,
you will no longer be able to use this combination on new campaigns or
duplicate existing campaigns that use it. For best results, use the
Performance Goals section on your line
item to set a CPC or CPA performance goal. Then use **Optimize to a %
Margin of Booked Revenue** as your campaign buying strategy.

For more information, see <a href="understanding-performance-goals.md"
class="xref">Understanding Performance Goals</a> and
<a href="using-performance-goals-with-cpm-booked-revenue.md"
class="xref">Using Performance Goals with CPM Booked Revenue</a>. To
learn about setting up **Performance Goals,** see
<a href="add-a-performance-goal-to-a-line-item.md" class="xref">Add a
Performance Goal to a Line Item</a>.






