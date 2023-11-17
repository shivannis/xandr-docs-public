---
Title : Identify Impression and Spending Rules - FAQ
Description : Most discrepancies exist because different systems use different rules
to count impressions or spend. The following are some things to look for
---


# Identify Impression and Spending Rules - FAQ



Most discrepancies exist because different systems use different rules
to count impressions or spend. The following are some things to look for
as you try to resolve discrepancies related to impression counting and
spend.

<div id="identify-impression-and-spending-rules-faq__IdentifyImpressionandSpendingRulesFAQ-WhenareImpressionsCounted-"
>

## When are Impressions Counted?

To evaluate impressions counting, review when an impression is recorded
in your system and compare that to when impressions are recorded by
Xandr. The following is a list of when impressions might be recorded:

1.  At the time the creative is completely received by the user device.
2.  At the "win notification" or "nurl" call reception time.
3.  At the creative call time.
4.  At the creative display on the publisher page or app time.
5.  At an imp tracking pixel call time contained in the creative code.
6.  At an imp tracking pixel call time integrated as third-party pixel
    of the creative object. If an imp tracking pixel is used, note
    whether it is JS or IMG type.
7.  At the redirection time, from the imp tracking tech to the creative
    call.
8.  At the redirection time, from the imp tracking tech to an imp
    tracking pixel contained in the creative code.
9.  At the redirection time, from the imp tracking tech to an imp
    tracking pixel integrated as a third-party pixel object of the Xandr
    creative object.
10. Another custom time unique to your system.



<div id="identify-impression-and-spending-rules-faq__IdentifyImpressionandSpendingRulesFAQ-HowareImpressionsCounted-"
>

## How are Impressions Counted?

In addition to *when* an impression is counted, you'll want to note
*how* impressions are counted. Here are some possibilities:

1.  Is imp tracking tech using a blocklist based on IP Address
    (blocklisting invalid traffic, robots, spiders)? Is this list IAB
    compliant?
2.  Is imp tracking tech counting the impressions for cookieless users?
3.  What is the user match rate you detect between Xandr and your imp
    tracking tech?
4.  Bid request can come with multiple impressions, are you able to
    handles those multiple impressions in the bid request? Try to
    confirm that you implemented the logic that handles the different
    impressions using different IDs and that you're not mixing
    impression counts.



<div id="identify-impression-and-spending-rules-faq__IdentifyImpressionandSpendingRulesFAQ-WhereareImpressionsCounted-"
>

## Where are Impressions Counted?

After evaluation *when* and *how*, you should look at *where*
impression-counting is happening. Possible locations include:

- A specific creative
- Seller
- Hour
- Geo
- Browser
- Carrier
- Device
- Third-party brand safety
- Creative swapping
- Third-party viewability or third-party tracking vendors used by adding
  pixels into creatives



<div id="identify-impression-and-spending-rules-faq__IdentifyImpressionandSpendingRulesFAQ-SpendRules"
>

## Spend Rules

If you're having spend discrepancies, note how you're getting your
spend:

- Macro ${AUCTION_PRICE} in nurl
- Macro ${PRICE_PAID} in a tracking pixel
- Macro ${PRICE_PAID} in the creative code call
- Macro ${PRICE_PAID} in the redirecting url of the creative url call






