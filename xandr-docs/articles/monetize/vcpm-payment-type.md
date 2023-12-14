---
Title : vCPM Payment Type
Description : Viewable CPM (vCPM) is a payment type that allows buyers to pay only for
ms.date: 10/28/2023
impressions that are measured "viewable" (read our
<a href="introduction-to-viewability.md" class="xref">Introduction to
---


# vCPM Payment Type



Viewable CPM (vCPM) is a payment type that allows buyers to pay only for
impressions that are measured "viewable" (read our
<a href="introduction-to-viewability.md" class="xref">Introduction to
Viewability</a> for more information on viewability measurement). vCPM
is similar to CPC and CPA payment types in that the impression does not
incur a cost until a post-auction event occurs. For vCPM, the
post-auction event is a signal that the impression was viewable. Once
that event is received, the buyer will pay the full value of the vCPM
bid.



## Buying Inventory on a vCPM Basis

To use the vCPM payment type, select Viewable
CPM as your revenue type and enter your bid price.

The **vCPM** payment type supports the ability to use a custom
definition for viewable impressions. We currently support two
definitions, the IAB standard and the Group M standard. The IAB standard
definition is used by default. If you would like to use a custom
definition, contact your Xandr Account Manager.





## vCPM Payment Bid Calculations

Buyers submit bids at a vCPM rate, just as they would with CPC or CPA.
In order for that bid to participate in an RTB auction, the bid must be
converted into an eCPM to compete with other CPM bids.
Xandr calculates the eCPM by multiplying the
vCPM bid amount by the estimated view rate for that impression.



<b>Note:</b> vCPM calculations are only used
to manage auction mechanics for the seller. It does not impact the
buyer's final media cost or the fact that they pay only for viewable
impressions.



Example

1.  vCPM bid won the auction because its eCPM was higher than the CPM
    bid. Additionally, the impression was viewed, therefore the
    advertiser pays the publisher the full $10 vCPM bid amount.
2.  vCPM bid won the auction because the eCPM was still higher than the
    CPM bid of $4.00. However, there was no payout because the
    impression was not viewed.
3.  The CPM bid won the bid. The 20% estimated view rate translates to
    an eCPM for Bid 1 that is lower than the CPM bid.





## Reporting on Payment Types

**Payment Type** is an available **Filter** and **Dimension** in
analytics reporting.

To generate a report for all vCPM buying activity, click
Edit on the **Payment Type** filter
and select the vCPM option.

Alternatively, to generate a report broken down by Payment Type, select
the **Payment Type** checkbox in the
**Dimension** column.



<b>Note:</b> The vCPM Payment Type is only
available when reporting on buying activity. For selling activity, use
the **Revenue Type** option.







## Auction Mechanics

To effectively maximize yield for sellers, the system runs a unified
auction, where Viewable CPM (vCPM) bids participate alongside
traditional CPM bids. Viewable CPM bids are converted to an eCPM value
by multiplying the vCPM bid amount by the predicted viewability rate for
that impression, enabling competition with other CPM demand. The unified
auction means that vCPM bids result in increased bid density, increasing
yield and limiting the risk of selling to some buyers on a 100% viewable
basis.

If a Viewable Deal bid wins the auction, then the buyer's creative is
served, along with the viewability measurement script. If the creative
is then measured as viewable, the buyer will be charged, and the seller
will be paid the full vCPM bid amount (there is no bid reduction for the
vCPM bid).

The table below shows a few example scenarios for how vCPM bids are
included in the auction and how they are paid out:

![VCPM Auction](media/vcpm-auction-example.png)


In the examples above:

- Impression 1 - The **vCPM** bid won the auction because its eCPM was
  higher than the CPM bid. Additionally, the impression was viewable,
  therefore the buyer paid the seller the full $10 vCPM bid amount.
- Impression 2 - The **vCPM** bid won the auction because the eCPM was
  higher than the CPM bid of $1.00. However, there was **no** payout
  because the impression was not viewable.
- Impression 3 - The **CPM** bid won the auction. The 25% predicted
  viewability rate translates to an eCPM that is lower than the CPM bid.





## Reporting on vCPM Impressions Sold

**Revenue Type** is an available Filter and Dimension in analytics
reporting.

To generate a report for all vCPM selling activity, click
Edit on the **Revenue Type** filter
and select vCPM.

Alternatively, to generate a report broken down by Revenue Type, select
the Revenue Type checkbox in the
**Dimension** column.



<b>Note:</b> vCPM Revenue Type is **only**
available when reporting on selling activity. For buying activity
reporting, the Payment Type option
must be used.








