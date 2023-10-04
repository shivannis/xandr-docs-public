---
Title : Price Reduction Mechanics
Description : With the Estimated Clear Price mechanism the winning bidder may pay:
- A price equal to $0.01 more than the second-highest bid (a standard
---


# Price Reduction Mechanics



With the Estimated Clear Price mechanism the winning bidder may pay:

- A price equal to $0.01 more than the second-highest bid (a standard
  second-price auction)
- An Estimated Clear Price (the price at which the ad is likely to win,
  or "clear")
- The actual winning bid

As an example of why this mechanism is necessary, imagine Toyota bids $5
and MasterCard bids $3 for a particular impression. In a Xandr-only
auction the winning bidder, Toyota, would usually pay $0.01 more than
the second-highest bid, which is $3.01. However, in this case the
publisher has chosen to pass on the highest Xandr bid to a second ad
exchange. If the bid of $3 is passed on, it might lose to a $4 bid even
though Toyota was willing to pay $5. If the $5 bid is entered into
another exchange, it might beat a $4 bid.



## ECP Solution

To solve this problem, Xandr created a new type of auction to determine
the amount of the winning bid.

1.  The ad call comes in to Xandr.

2.  <div id="bidder-home__p-feb64b5e-7a7a-48a9-9c6a-cf21f91abe9e"
    >

    Xandr calculates an ECP which is an estimate of a bid that is likely
    to win the ad.
    

    Note: The ECP is determined by
    observing historical bids and their success or failure in the
    publisher's ad server. While a bid below this threshold may be
    submitted, the risk of losing the auction in the publisher's ad
    server will be much greater.

    

    

3.  The ECP is automatically included in the bid request sent to
    bidders. Bidders can still bid whatever they want, above or below
    the ECP.

4.  If the winner's bid is above the ECP, the bid price sent on to the
    next auction is either $0.01 more than the second-highest bid or the
    ECP, **whichever is higher.** Note: Xandr does NOT reduce the bid
    price sent on the next auction if that auction runs its own
    second-price auction.

5.  If the winner's bid is below the ECP, the bid price is the winning
    bid (i.e. no price reduction).





## Example

The ECP is calculated to be $4.

- The two highest bids are $5 and $6: $5 is sent on
- The two highest bids are $3 and $5: $4 is sent on
- The two highest bids are $2 and $3: $3 is sent on

<div id="bidder-home__p-a36f178f-e8ee-45cd-8bed-21ddf2bf43bd" >



Note: Bids within $0.0005 CPM are
considered tied.










