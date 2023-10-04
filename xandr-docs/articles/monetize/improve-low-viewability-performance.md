---
Title : Improve Low Viewability Performance
Description : You can always improve viewability rate performance by adjusting your
line item setup, even after setting a viewability threshold.
---


# Improve Low Viewability Performance



You can always improve viewability rate performance by adjusting your
line item setup, even after setting a viewability threshold.



For reference, Xandr considers any viewability
rate higher than 0% to be normal. This is because viewability rates can
vary greatly from one placement and impression to another. Instances of
zero viewability (0%) can occur when:

- a user leaves a page within one second of a creative rendering
- a user rapidly scrolls down their screen, missing a creative near the
  top of the page
- a creative is near the bottom of a page, and few users scroll down
  that far
- a tall banner creative is served, so fewer than 50% of its pixels are
  in view.

Consider the following viewability improvement options when editing your
line item:



<div id="improve-low-viewability-performance__section_spz_4bm_g5b"
>

## Set a predicted viewability threshold for your line item

Setting a predicted viewability threshold when creating or editing a
line item ensures that your line item prioritizes delivery on inventory
with a predicted viewability rate greater than or equal to your set
threshold. Simultaneously, adding a predicted viewability threshold
reduces or otherwise eliminates delivery to inventory with lower
viewability.

Setting a viewability threshold doesn't guarantee a certain viewability
rate performance for your line item, as viewability threshold targeting
is based on historical viewability data for specific domain-placement
combinations. Therefore, predicted viewability rates for domains and
placements can be higher than the actual viewability rate that your
served creatives achieve on that inventory.

<div id="improve-low-viewability-performance__note_x2v_hcm_g5b"


Note: Delivery/spend may be reduced as
inventory is assessed and potentially discarded. However, if you have a
large enough inventory and impression pool to transact on, adding a
predicted viewability threshold shouldn't create underdelivery issues
for you.



For more information on setting a predicted viewability threshold, see
<a
href="set-up-viewability-and-environment-targeting-for-a-line-item.html"
class="xref"
title="To narrow your ad campaign&#39;s reach to the most valuable inventory, you can set up viewability threshold, device type, system, and page property targeting settings from the Viewability &amp; Environment Targeting section for your line item.">Set
Up Viewability and Environment Targeting for a Line Item</a>.





## Manually configure creative weights to prioritize viewability performance

If you select Manually weight
creatives as your Creative
Rotation option, you can assign percentage weights to your line
item's associated creatives. To improve your line item's viewability
rate performance, add more percentage weight to creatives that have
higher historical viewability rates. This prioritizes creatives with
better viewability performance, and deprioritizes creatives with lower
viewability performance.

For more information on creative rotation, see
<a href="creative-rotation-ali.html" class="xref"
title="When multiple creatives of the same size are trafficked to a line item, you can set a creative delivery strategy using the Creative Rotation settings in the Associated Creatives section on the Create New Line Item and Edit Line Item screens.">Creative
Rotation (ALI)</a>.





## Serve smaller creatives

Smaller creatives tend to be in view--having at least 50% of a
creative's pixels rendered on screen--more often than larger creatives.
Thus, smaller creatives usually have higher viewability rates compared
to larger creatives, because the chance of the whole creative being
viewed is higher. You should evaluate the size of your line item's
current associated creatives and consider serving smaller creatives more
frequently.





## Remove creatives with low viewability rates from your line item

If some of your line item's associated creatives have low viewability
performance, it may be best to remove them, so that only
higher-performing creatives are being served. To analyze your creatives'
viewability performance, click
Creative
in the nav bar to open the
Creatives screen, where you can
view the Viewability Rate% for any of
your advertiser's or line item's creatives.





## Use blocklists to stop targeting domains with low viewability rates



You can improve viewability performance by identifying low-performing
viewability domains through the:

- <a href="network-analytics-report.html" class="xref">Network Analytics
  Report</a>/<a href="advertiser-analytics-report.html" class="xref">Advertiser
  Analytics Report</a>
- <a href="network-site-domain-performance-report.html"
  class="xref">Network Site Domain Performance Report</a>/<a href="site-domain-performance.html" class="xref">Advertiser Site
  Domain Performance Report</a>

After identifying any concerning domains, you can add them to a
blocklist for your line item. This method ensures that you only serve on
higher-performing viewability inventory. If you want to block a specific
placement, then you'll need to locate that placements ID and add it into
your programmable split targeting to block that particular placement.



This method can reduce delivery if you add too much inventory to the
blocklist. Therefore, it's best to add the lowest-performing viewability
inventory to the blocklist, while also being conservative in adding
closer-to-average viewability rate inventory. For more information on
using blocklists, see
<a href="inventory-targeting-ali.html" class="xref">Inventory Targeting
(ALI)</a>.





## Use programmable split targeting to block placements with low viewability rates

Viewability rates for a publisher's inventory can vary from placement to
placement. To target higher-performing inventory placements, you can add
programmable splits to your line item and configure them to block
placements. For more information on creating and customizing
programmable splits, see
<a href="configure-a-programmable-split.html" class="xref"
title="You can use programmable splits to refine line item targeting and dynamically adjust bids, budget allocation, and creative allocation across a line item&#39;s targeted inventory. Splits are recommended if you have sophisticated targeting requirements.">Configure
a Programmable Split</a>.





## Move domains with high-performing viewability rates to an allowlist



You can improve viewability performance by identifying high-performing
viewability domains and placements through the:

- <a href="network-analytics-report.html" class="xref">Network Analytics
  Report</a>/<a href="advertiser-analytics-report.html" class="xref">Advertiser
  Analytics Report</a>
- <a href="network-site-domain-performance-report.html"
  class="xref">Network Site Domain Performance Report</a>/<a href="site-domain-performance.html" class="xref">Advertiser Site
  Domain Performance Report</a>

Then, you can add them to an allowlist. This method ensures that you
only deliver on high-performing viewability inventory. However, it can
reduce delivery if you don't add enough inventory to the allowlist. So
it's best to include the largest amount of inventory that you feel
comfortable with. For more information on using allowlists, see
<a href="set-up-line-item-inventory-and-brand-safety.html" class="xref"
title="You can use the Inventory &amp; Brand Safety Targeting section to specify the type of inventory that you want to buy (supply source), target universal or custom content categories, specify whether to advertise on web or app inventory, create and/or apply blocklists or allowlists, define brand safety settings, and set up ads.txt targeting.">Set
Up Line Item Inventory and Brand Safety</a>.







## Increase your line item's bid prices

Increasing your line item's bid prices lets you access higher-performing
viewability inventory.






