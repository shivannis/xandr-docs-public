---
Title : Segment Modifier FAQ
Description : Watch this space for answers to frequently asked questions about Segment
Modifier.
---


# Segment Modifier FAQ



Watch this space for answers to frequently asked questions about Segment
Modifier.



## What is the segment modifier feature?

Segment modifier is a feature available to seats where campaigns can be
associated with segments in such a fashion that permits users to
override or modify the bid valuation provided by Xandr's internal
optimization engine with values associated with the "modifying"
segments.





## Is there a segment modifier "app"?

There is not a segment modifier "app" or API service. Segment modifier
is a feature available to members that permits them to combine segments
with values associated with them to the "campaign_modifiers" array of
campaigns so that the campaigns may bid according to an external bidding
strategy that is partially or not at all dependent on the
optimization-generated bid valuations.





## Does the platform generate segment modifier values that I can use in segment modifier?

The segment modifier feature was created for clients that wish to
implement their own valuation models on Xandr's platform. As such we do
not generate values to be fed into the feature; the
optimization-produced valuations would be what we would suggest as the
bids for an auction.





## How many segment modifiers can I associate to a campaign in the "campaign_modifiers" array of campaigns?

To be properly functional, the campaign_modifiers array of campaign
objects must have a maximum of three elements: one of each modifier type
(segment_modifier_id, segment_price_id and segment_weight_id). It is
important to note that the "value" of segment modifier types
"segment_modifier_id" and "segment_price_id" correspond to the Xandr ID
of segments used to, respectively, dynamically modify or override bid
valuations based on associated values with the segments. The "value" of
segment modifier type "segment_weight_id" will simply be the weight by
which the campaigns valuation will be modified each time it bids (it is
unrelated to a segment).





## Related Topics



- <a
  href="https://docs.xandr.com/bundle/data-providers/page/segment-modifier.html"
  class="xref" target="_blank">Segment Modifier</a>
- <a
  href="https://docs.xandr.com/bundle/data-providers/page/segment-modifier-data-provider-integration.html"
  class="xref" target="_blank">Segment Modifier Data Provider
  Integration</a>








