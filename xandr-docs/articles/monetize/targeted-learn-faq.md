---
Title : Targeted Learn FAQ
Description : Note: This guide only applies to the
legacy line item. If you are using the augmented line item (ALI), see
---


# Targeted Learn FAQ







Note: This guide only applies to the
legacy line item. If you are using the augmented line item (ALI), see
<a href="optimization-guide-ali.html" class="xref">Optimization Guide -
ALI</a>.







## What phases of optimization does the Targeted Learn algorithm affect?

The Targeted Learn algorithm only affects the learn phase.





## What buying strategies is the Targeted Learn algorithm used for?

Our Targeted Learn algorithm has been used for calculating learn bids in
the learn phase for Managed, Cross Network CPA/CPC, and RTB campaigns
using optimization.





## Where can I find out more information about Targeted Learn?

For an overview of our Targeted Learn algorithm, see
<a href="targeted-learn.html" class="xref">Targeted Learn</a>. For
details about the new Learn Override optimization lever that goes with
Targeted Learn, see
<a href="optimization-levers.html" class="xref">Optimization Levers</a>.



<div id="targeted-learn-faq__section-1f303761-e2d2-4d7f-beb6-f3afc523085b"
>

## What do you calculate a learn bid for?

We calculate a learn bid for a campaign-creative-venue-pixel
combination. We try to estimate for a certain campaign-creative how
frequently a pixel will fire on a specific slice of inventory (venue).



<div id="targeted-learn-faq__section-89c1f91c-79a7-45c9-b786-056ad53ad059"
>

## What happens if my advertiser does not have any data?

When an advertiser has no historical data, Targeted Learn bids the
average bid on a venue so the advertiser can collect data. Once the
advertiser has five events in total, our algorithm will start leveraging
the advertiser's historical data to calculate a learn bid.



<div id="targeted-learn-faq__section-f643e310-16bd-48d8-b664-505a43a2027a"
>

## What happens if my campaign has multiple pixels?

Just like when your campaign is optimized, we calculate a valuation for
each campaign, creative, venue, and pixel separately and then add those
valuations for your bid. Likewise, during learn, we calculate a learn
bid for each campaign, creative, venue, and pixel, and then add them to
determine your total learn bid.



<div id="targeted-learn-faq__section-7ba1045d-20e7-4e04-8ae2-1475e649471a"
>

## If my campaigns under an advertiser vary in performance, will this affect my learn bids?

If your campaigns share the same events (pixels and clicks) and perform
very differently, this could affect your initial learn bid. This
differing in performance might make the learn bids at the Advertiser
level of the Bayes Funnel a less representative average, since there is
a distribution on performance. Once the learn bids are at a more
granular level of the Bayes Funnel, this difference in performance among
campaigns should not affect the other campaigns' learn bids. If this
becomes an issue, you may consider splitting out the campaigns that are
performing differently to make your calculated learn bids more accurate.



<div id="targeted-learn-faq__section-952390b8-82f4-4480-a845-1b09f7c0feb7"
>

## What should I do if my campaign is underdelivering?

There are several reasons that a campaign might underdeliver, one of
them being bidding low in learn. First, make sure that your campaign
settings such as Inventory targeting, Segment targeting, Frequency
capping, flight dates, budget, etc. are set to give your campaign access
to enough inventory so that it stands a reasonable chance of winning
auctions and delivering. If you believe low learn bids are causing your
campaign to win fewer impressions than desired, you can increase your
learn bids using the
<a href="optimization-levers.html" class="xref">Optimization Levers</a>
feature in the UI.



<div id="targeted-learn-faq__section-2cf68700-b184-4369-bc7e-7e07ff58730b"
>

## How can I estimate my calculated learn bids?

When your campaign is learning, you can look at the average eCPM in
learn for that campaign to estimate your learn bids. If you are just
starting a campaign, you can estimate your initial learn bids by looking
at the advertiser's historical RPM for those pixels. If you change the
values on these pixels, you will have to modify the advertiser's
historical RPM by the same amount for an accurate estimate. Note that if
an advertiser has a lot of historical data on a venue, an initial learn
bid will start off at the advertiser-venue level, which might differ
from the calculated learn bid at the advertiser level.



<div id="targeted-learn-faq__section-015f80d3-0353-4137-9219-6ffc1c21f540"
>

## What historical data do you leverage?

The level of the Bayes Funnel dictates the historical data that targeted
learn algorithm leverages. In the data it leverages, our algorithm uses
the historical success rate (conversion rate or click through rate) to
help calculate the learn bid.



<div id="targeted-learn-faq__section-649b6139-1393-4507-9347-cc855197dbd3"
>

## Are all my campaign's bids on the same level of the Bayes Funnel?

We calculate a learn bid for each campaign-creative-venue-pixel
combination. Each of these combinations can be on a different level of
the Bayes Funnel.






