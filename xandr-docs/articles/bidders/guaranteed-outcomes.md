---
Title : Guaranteed Outcomes
Description : With Guaranteed Outcomes, buyers can achieve maximum reach while paying
for media in a way that makes sense for their business, and sellers
benefit from increased demand in the auction without having to manage
the risk of impressions that don’t achieve the buyer’s desired outcome.
---


# Guaranteed Outcomes  



With Guaranteed Outcomes, buyers can achieve maximum reach while paying
for media in a way that makes sense for their business, and sellers
benefit from increased demand in the auction without having to manage
the risk of impressions that don’t achieve the buyer’s desired outcome.
Guaranteed Outcomes (formerly Guaranteed Views) is a feature of
Xandr's Exchange, designed to reduce friction in
the programmatic marketplace by enabling buyers to purchase 100% of
their media with the assurance that it will be viewed completely.

Guaranteed Outcomes includes the following features:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000ce26__entry__1"
class="entry colsep-1 rowsep-1">Feature</th>
<th id="ID-0000ce26__entry__2" class="entry colsep-1 rowsep-1">Media
Type</th>
<th id="ID-0000ce26__entry__3" class="entry colsep-1 rowsep-1">Bid
on</th>
<th id="ID-0000ce26__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__1">Guaranteed Views</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__2">Banner, Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__3">vCPM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000ce26__entry__4">The
buyer pays media cost only on ads that were viewed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__1">Guaranteed Completes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__2">Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__3">CPCV</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000ce26__entry__4">The
buyer pays media cost only on ads that achieve 100% runtime.</td>
</tr>
</tbody>
</table>

For more information about how Xandr measures
viewability, see the Introduction to Viewability page in
 (customer login required). 



## How it Works

Buyers that choose to buy with Guaranteed Views enter a vCPM bid as
opposed to a CPM bid. Their bid will be converted and enter the seller’s
auction as a CPM bid, with all normal auction mechanics applied.

Should the bid win the auction, the seller will be paid the CPM price. 
The buyer’s creative will be served with a viewability measurement
script, and the buyer will only be charged the vCPM price if the
impression is measured viewable.  By default, the IAB definition of a
viewable ad (50% of pixels in-view for 1 continuous second) and the
Xandr measurement script are used; however, we
support additional viewability definitions and measurement technology
vendors as well.

Buying and selling guaranteed outcomes has the following limitations:

- Guaranteed Outcomes is only available when buying Open Exchange and
  Deal inventory.
- Outcome-based bids are not accepted when clearing directly with a
  third-party seller, or when buying managed inventory.\*

\* You can, however, guarantee ad delivery for managed inventory using
managed vCPM.

The following overview describes the logic of Guaranteed Outcomes:

- Guaranteed Outcomes are possible because the Exchange automatically
  translates outcome-based bids (vCPM & CPCV) from the buyer into
  impression-based CPM revenue for the seller. This translation
  facilitates the transaction by bridging the currency gap between buyer
  and seller.
- Buyers who choose to buy with Guaranteed Outcomes enter an
  outcome-based bid (e.g. vCPM for Views and CPCV for Completes) as
  opposed to an impression-based CPM bid. Their bid will be converted
  and enter the seller’s auction as an impression-based CPM bid, with
  normal auction mechanics applied.
- If the bid wins the auction, the seller is paid the impression-based
  CPM price.  The buyer’s creative is served, and the buyer is only
  charged if the desired outcome is measured on the impression. 
- By default, Xandr uses the IAB definition of a
  viewable ad (50% of pixels in-view for 1 continuous second) and the
  Xandr measurement script to determine a view.
  However, we support additional viewability definitions and measurement
  technology vendors as well. See Introduction to Viewability for more
  information about choosing these alternate measurements.
- For Guaranteed Completes, we always define a complete as a served
  video ad that reaches 100% of its duration.





## Auction Mechanics

This topic describes how an auction works when a buyer submits an
outcome-based bid using Guaranteed Outcomes. Buyers submit vCPM bids to
buy Guaranteed Views, and CPCV bids to buy Guaranteed Completes.

**Ad Call**

When an ad call is received, the Exchange first predicts the likelihood
that the impression will yield the desired outcome. If a prediction
cannot be determined, the impression is ineligible for outcome-based
bids. There may be other reasons outcome-based bids aren't supported. 
For example, monitoring may indicate that the prediction for the given
placement is inaccurate, which may lead the placement to be marked
ineligible. In addition, outcome-based bids are not accepted when
clearing directly with the seller. For more information on pre-bid
outcome predictions, see
<a href="guaranteed-outcomes.html#ID-0000ce26__31" class="xref">Outcome
Prediction</a>

If an outcome prediction is available, and all other eligibility checks
pass, then the Exchange will calculate an outcome-based bid-to-CPM
conversion rate. This rate is calculated by multiplying the outcome
prediction by a market-making fee.  For more information on the
conversion rate, see the sections
on <a href="guaranteed-outcomes.html#ID-0000ce26__32"
class="xref">Understanding Payment Conversion Rates</a> and the
<a href="guaranteed-outcomes.html#ID-0000ce26__34"
class="xref">Market-Making Fee</a>.

**Bid Request**

On each bid request, the Exchange indicates if it will accept
outcome-based bids (vCPM and/or CPCV). If outcome-based bids are
acceptable, the Exchange also provides the bidder with outcomes that the
Exchange will accept along with the applicable conversion rate for
each. 

**Bid Response**

On the bid response, if the bidder has chosen to submit an outcome-based
bid, the bid includes the outcome and the bid price.  The bid price is
then treated as an outcome-based price.

It is possible for the outcome-based bid to be rejected.  In addition to
standard rejection reasons (such as failing seller ad quality rules),
monitoring may indicate that the prediction for the given creative is
inaccurate, resulting in the creative being marked ineligible, or the
buyer may have a direct clearing relationship with the seller, which is
not supported.

If the bid passes these checks, then, for the purposes of running the
auction, the Exchange converts the outcome-based bid to CPM using the
provided conversion rate.

**Auction**

After all bids are received, and any outcome-based bids are converted to
CPM, the auction is executed according to standard RTB mechanics,
including, where applicable, second-price logic, private marketplaces,
publisher floors, etc.

If a CPM bid representing a buyer's Guaranteed Outcomes bid is the
winner in the auction, the winning price will be adjusted post-auction
in accordance with our auction mechanics (for example, in a second price
auction, it would be price-reduced to the second highest bid + $.01),
and the seller will receive this amount as revenue (minus standard
auction fees).

The price-reduced CPM bid is then converted back to an outcome-based
price using the conversion rate.  The buyer will be notified that it won
the auction at the price-reduced outcome-based price, but the buyer
**will not** be charged at this point.

**Post-Auction**

The buyer's creative is served to the page.  If the Exchange determines
that the creative achieved the buyer’s desired outcome, an event is sent
to the Exchange indicating that the buyer should be billed for the
impression at the price-reduced outcome-based price.  The Exchange will
log the transaction and send notification to the buyer.

If the Exchange determines that the ad did not achieve the buyer’s
desired outcome, or if it is unable to make the measurement, then the
buyer is not billed for the impression.



<div id="ID-0000ce26__32" >

## Understanding Payment Conversion Rates

For eligible impressions (see
<a href="guaranteed-outcomes.html#ID-0000ce26__ID-0000ced6"
class="xref">Guaranteed Outcomes Results Over Time (Examples)</a>, the
Exchange calculates an outcome-based bid-to-CPM conversion rate before
sending the bid request. To generate the conversion rate, the Exchange
uses the predicted outcome rate of the given impression and a
marketing-making fee. The two rates are multiplied to generate the
impression’s conversion rate.

The resulting conversion rate is sent as part of the bid request. If any
outcome-based bids are returned, this conversion rate is used to
determine the impression-based CPM price paid to the seller.

**Outcome Prediction**

The accuracy of the pre-bid outcome prediction plays a crucial role in
the balance of the marketplace--that is, how much is billed to
Guaranteed Outcomes buyers versus how much is paid to sellers.  Given
this critical role, it is important to note that pre-bid outcome
predictions are managed as an independent feature of the Exchange and
are publicly available.

Pre-bid outcome predictions are freely available in <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">OpenRTB bid requests</a> from the Exchange
to all bidders and DSPs. Additionally, these predictions are generally
available as an Engineered Feature of the Exchange. Buyers can use them
as building blocks to develop custom algorithms using <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
class="xref" target="_blank">Custom Models (formerly Programmable
Bidder)</a>. Outcome predictions are also used for view-rate and
completion-rate threshold targeting and vCPM optimization. 

The outcome predictions are modeled across the entire platform as
accurately as possible. For more information on the prediction,
see our <a
href="https://medium.com/xandr-tech/ad-viewability-and-feature-selection-for-big-data-256acf523f2a"
class="xref" target="_blank">tech blog post</a>.

**Market-Making Fee**

Xandr provides a service of creating liquidity
between buyers and sellers. In doing so, incurs risk, as well as costs
from external measurement partners.  Thus,
Xandr charges a Market-Making Fee for this
service. The target Market-Making Fee for Guaranteed Outcomes is 10%.
However the actual Market-Making Fee may vary slightly due to Prediction
Variability.

**Market-Making Fee = Fixed Percentage + Prediction Variability**

The Market-Making Fee charged for Guaranteed Outcomes is made up of two
components:

**Fixed Percentage:** A fixed 10% is taken during the outcome-based bid
to impression-based CPM conversion and, implicitly, only charged for
when impressions have achieved the buyer’s desired outcome.

**Prediction Variability:** A positive or negative percentage, depending
on the accuracy of the outcome prediction. Because the Exchange acts as
a financial buffer between buyer and seller, it may have a positive or
negative balance over time. A negative balance means that
Xandr has over-predicted the likelihood of an
outcome, and a positive balance means that
Xandr has under-predicted its likelihood.

In the scenario where there is perfect prediction and all else is equal,
the Exchange will have a net zero balance, making the Fixed Percentage
equal to the Market-Making Fee.  There is no promise that the prediction
is perfect, and in fact it’s almost impossible. As such the
Market-Making Fee, or final net balance due to
Xandr, is still a function of the Prediction
Variability.

For transparency, Xandr publishes aggregate
results for Prediction Variability externally each month. You can find
these results
at <a href="monthly-prediction-variability-data.html" class="xref">Monthly
Prediction Variability Data</a>.



<div id="ID-0000ce26__ID-0000ced6" >

## Guaranteed Outcomes Results Over Time (Examples)

The auction mechanics for Guaranteed Outcomes create a short-term
disconnect between how the buyer is charged and how the seller is
paid. On average and over time, this disconnect is averaged out. In
other words, for any single impression, it is likely that the seller is
paid either significantly more or less than the buyer has been
charged. Over many impressions, however, the difference between what is
charged and what is paid should converge.

The key factorl in this convergence is the accuracy of the predicted
outcome rate; that is, the difference between the actual outcome rate
and the predicted outcome rate.  To illustrate the impact of prediction
accuracy on the amount billed versus the amount paid, three different
scenarios are described below – perfect prediction, under prediction,
and over prediction. We’ve used Guaranteed Views for these examples, but
the same holds true for Guaranteed Completes.

In the examples below –

- A buyer using Guaranteed Views bids $10 vCPM on supply with a 50%
  predicted viewability rate.
- The Exchange converts the vCPM bid to a $5 eCPM bid.
- The second-highest bid in the auction is a $4 CPM bid.
- It is a second price auction, so seller is paid $4.01 CPM.
- The buyer is charged $8.02 vCPM (that is, only if the impression is
  measured viewable).

**Perfect Prediction**

If the Exchange perfectly predicts the viewability rate for a given
piece of inventory, then the aggregate amount charged to the vCPM buyer
should match the aggregate amount paid the seller.

**Over-Prediction**

If the Exchange over-predicts the viewability of the inventory, then the
aggregate amount charged to the vCPM buyer is less than the aggregate
amount paid to the seller.  In this example, the Exchange predicted a
50% viewability rate, but the inventory had only a 25% viewability
rate.  The Exchange is left with a negative balance. 

**Under-Prediction**

If the Exchange under-predicts the viewability of the inventory, then
the aggregate amount charged to the vCPM buyer is greater than the
aggregate amount paid to the seller.  In this example, the Exchange
predicted a 50% viewability rate, but the inventory had a 75%
viewability rate.  The Exchange is left with a positive balance.





## Supported Viewability Standards for Guaranteed Outcomes

The definition for what constitutes a viewable impression varies from
buyer to buyer.  A chosen standard generally comprises three components:
the media type, the viewability definition, and the measurement
technology vendor.  Guaranteed Outcomes has been built to support any
standard made up of those three components, with each standard
represented as a generic clearing event.  The following clearing events
are supported today for Guaranteed Views.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000ce26__entry__13"
class="entry colsep-1 rowsep-1"><strong>Clearing Event
Name</strong></th>
<th id="ID-0000ce26__entry__14"
class="entry colsep-1 rowsep-1"><strong>ID</strong></th>
<th id="ID-0000ce26__entry__15"
class="entry colsep-1 rowsep-1"><strong>Viewability
Definition</strong></th>
<th id="ID-0000ce26__entry__16"
class="entry colsep-1 rowsep-1"><strong>Media Type</strong></th>
<th id="ID-0000ce26__entry__17"
class="entry colsep-1 rowsep-1"><strong>Measurement Technology
Vendor</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__13">Views - Standard Display</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__14">2</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000ce26__entry__15">IAB
(50% of pixels in-view for 1 continuous second)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__16">Display/Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__17">Xandr</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__13">Views - Custom Display - 100pv1s</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__14">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__15">100% of pixels in-view for 1 continuous
second</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__16">Display/Banner</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__17">Xandr</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__13">Views - Standard Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__14">8</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000ce26__entry__15">IAB
(50% of pixels in-view for 2 continuous seconds)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__16">Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__17">Xandr</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__13">Views - Custom Video - 100pv50pd</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__14">9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__15">100% of pixel in-view for 50% of the
duration of the video with audio on</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__16">Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__17">Xandr</td>
</tr>
</tbody>
</table>





##  Supported Completion Standards

Guaranteed Completes defines a complete as a video ad which has reached
100% of its duration. Unlike views, a video complete is a universal
tracking event IAB VAST Standard.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000ce26__entry__38"
class="entry colsep-1 rowsep-1"><strong>Clearing Event
Name</strong></th>
<th id="ID-0000ce26__entry__39"
class="entry colsep-1 rowsep-1"><strong>ID</strong></th>
<th id="ID-0000ce26__entry__40"
class="entry colsep-1 rowsep-1"><strong>Completion
Definition</strong></th>
<th id="ID-0000ce26__entry__41"
class="entry colsep-1 rowsep-1"><strong>Media Type</strong></th>
<th id="ID-0000ce26__entry__42"
class="entry colsep-1 rowsep-1"><strong>Measurement Technology
Vendor</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__38">Completes – Standard Complete</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__39">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__40">100% of ad duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__41">Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000ce26__entry__42">Xandr</td>
</tr>
</tbody>
</table>





## Related Links

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/guaranteed-outcomes-bidder-integration-guide.html"
  class="xref" target="_blank">Guaranteed Outcomes Bidder Integration
  Guide</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/monthly-prediction-variability-data.html"
  class="xref" target="_blank">Monthly Prediction Variability Data</a>






