---
Title : Understanding Payment Conversion Rates
Description : For eligible impressions (see
<a href="guaranteed-outcomes-auction-mechanics.html"
---


# Understanding Payment Conversion Rates



For eligible impressions (see
<a href="guaranteed-outcomes-auction-mechanics.html"
class="xref">Guaranteed Outcomes Auction Mechanics</a>), the Exchange
calculates an outcome-based bid-to-CPM conversion rate before sending
the bid request. The conversion rate is a percentage that represents the
predicted likelihood of an outcome on a given impression once the
market-making fee has been withheld.

The resulting conversion rate is sent as part of the bid request. If any
outcome-based bids are returned, this conversion rate is used to
determine the impression-based CPM price paid to the seller.

Auction Outcome Prediction

The accuracy of the pre-bid outcome prediction plays a crucial role in
the balance of the marketplace; that is, how much is billed to
Guaranteed Outcomes buyers versus how much is paid to sellers. Given
this critical role, it is important to note that pre-bid outcome
predictions are managed as an independent feature of the Exchange and
are publicly available.

Pre-bid outcome predictions are freely available in OpenRTB bid requests
from Xandr's exchange to all bidders and DSPs.
Additionally, these predictions are generally available as an Engineered
Feature of Xandr's exchange. Buyers can use them
as building blocks to develop custom algorithms using custom models
(APB). Outcome predictions are also used for view-rate and
completion-rate threshold targeting and vCPM optimization, both
available as features of the Augmented Line Item.

The outcome predictions are modeled across the entire platform as
accurately as possible. For more information on the prediction, please
see
<a href="engineered-features.html" class="xref">Engineered Features</a>
and our tech blog post.

Market-Making Fee

Xandr provides a service of creating liquidity
between buyers and sellers. In doing so, we incur risk, as well as costs
from external measurement partners. Thus, we charge a Market-Making Fee
for this service. The target Market-Making Fee for Guaranteed Outcomes
is 10%. However, the actual Market-Making Fee may vary slightly due to
Prediction Variability.

Marketing-Making Fee Calculation

Market-Making Fee = Fixed Percentage + Prediction Variability

The Market-Making Fee charged for Guaranteed Outcomes is made up of two
components:

- Fixed Percentage: A fixed 10% is taken during the outcome-based bid to
  impression-based CPM conversion and, implicitly, only charged for when
  impressions have achieved the buyer's desired outcome.
- Prediction Variability: A positive or negative percentage, depending
  on the accuracy of the outcome prediction. Because
  Xandr's exchange acts as a financial buffer
  between buyer and seller, it may have a positive or negative balance
  over time. A negative balance means that Xandr
  has over-predicted the likelihood of an outcome, and a positive
  balance means that Xandr has under-predicted
  its likelihood.

In the scenario where there is perfect prediction and all else is equal,
the exchange will have a net zero balance, making the Fixed Percentage
equal to the Market-Making Fee. There is no promise that the prediction
is perfect, and in fact it's almost impossible. As such the
Market-Making Fee, or final net balance due to
Xandr, is still a function of the Prediction
Variability.

For transparency, Xandr publishes aggregate
results for Prediction Variability externally each month. You can find
these results at
<a href="monthly-prediction-variability-data.html" class="xref">Monthly
Prediction Variability Data</a>.

Related Topics

- <a href="guaranteed-outcomes.html" class="xref">Guaranteed Outcomes</a>
- <a href="guaranteed-outcomes-auction-mechanics.html"
  class="xref">Guaranteed Outcomes Auction Mechanics</a>




