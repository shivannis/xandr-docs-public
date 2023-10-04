---
Title : Shorten the Targeted Learn Phase Using Bid Type Reports
Description : Important: This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
---


# Shorten the Targeted Learn Phase Using Bid Type Reports







Important: This guide only applies to
the legacy line item. If you are using the augmented line item (ALI),
see
<a href="optimization-guide-ali.html" class="xref">Optimization Guide -
ALI</a>.



Whether you optimize to a percentage margin or a predicted performance
goal (e.g., CPC or CPA), a new campaign will need to buy inventory and
use the Xandr optimization engine to learn which
groupings of inventory will deliver the desired performance.

During this learning phase, a percentage of your budget will be spent in
venues that will not necessarily deliver the results expected (so that
our optimization can learn what performs best). If you are under a tight
budget or timeline, there are a few things you could do to help speed up
the <a href="learn-budget.html" class="xref">Learn Budget</a> process
and reduce budget spending in areas that are not performing. This page
outlines one of these manual optimization tips: using Bid Type reports
for inventory exclusion.

Step 1: Create a Bid Type Report

To perform manual optimization use the Bid Type report. This report can
be run at either the Network or the Advertiser levels. To create the Bid
Type Report:

1.  Go to **Reporting** and select Analytics
    Report from the Type
    pull-down.
2.  Filter by the **campaign** you are interested in analyzing.
3.  Use the following **dimensions**: **Seller**, **Publisher**,
    **Placement**, and **Bid Type**.

Step 2: Analyze by Bid Types

The report will show you exactly which placements within a publisher are
still in the learn phase by displaying **learn** in the
Bid Type column.



Important: Visit the Bid Type
Definitions in the
<a href="advertiser-reporting.html" class="xref">Advertiser
Reporting</a> page to learn more about bid types in
Xandr.



By analyzing the performance of placements in learn phase, you can begin
to derive three main criteria:

- **Placements to exclude**: placements where performance has been poor
  and cost higher than average
- **Placements to watch**: placements where the data points are still
  inconclusive and you therefore need to observe for a little longer
- **Placements to keep**: placements where performance is pointing in
  the right direction and will potentially move into optimized soon



Note: The criteria suggested above is
not exhaustive. Depending on the complexity of this analysis, you might
derive additional ways of classifying your data and refining the
selection of inventory to exclude.



The end goal of this step is to create a list of placements to remove
from your campaign targeting. The broader objectives are:

- To focus spend on the most promising placements still in learn.
- To stop campaign spend on placements where the current trajectory
  indicates the desired performance is unlikely to ever be attained.

In some instances, you may want to aggregate reporting at the Publisher
or even Seller level to assess performance in a more general way. This
aggregation would allow you to be more aggressive with your exclusions
(e.g., instead of using individual placements, you could exclude an
entire publisher).

Step 3: Exclude Inventory by Publisher or Placement ID

Now that you have that list of placements (or perhaps even publishers)
you would like to exclude, select Campaign
Manager. In your campaign under
Targeting
 \>  Inventory, click
Edit. Select
3rd Party Inventory, switch to
**text** mode, and choose to target **placement**. Enter the IDs of the
placements you wish to exclude. To exclude entire publishers instead of
just placements, select publishers
from the menu.

Click the Exclude button and click
Add to confirm the action. **Save**
your changes in the **Campaign Manager**.






