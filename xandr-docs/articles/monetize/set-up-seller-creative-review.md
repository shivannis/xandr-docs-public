---
Title : Set Up Seller Creative Review
Description : Currently, sellers can review and approve creatives within the Political
category before they serve on seller inventory. In the future, Xandr
---


# Set Up Seller Creative Review



Currently, sellers can review and approve creatives within the Political
category before they serve on seller inventory. In the future, Xandr
will support seller review of additional categories.



Seller Creative Review requires the following initial setup before it
can show you a list of creatives to review:

- Block supported creative categories by default in
  Ad Quality Network/Publisher
  Template. If you aren’t blocking the creative category, you
  don’t need to manually approve creatives.
- Configure deal line item to:
  - Only allow seller-approved creatives.
  - Ignore the Ad Quality block of the
    supported creative categories.

  .



<div id="set-up-seller-creative-review__section-4d7f9153-873a-44c8-ba86-1832c0fff667"
>

## Block Supported Creative Categories

<div id="set-up-seller-creative-review__p-75465603-902e-4d52-91f6-aba2ee038b4e"
>

You’ll need to block any supported creative categories by default, so
creatives in this category won’t run on your inventory unless you review
and explicitly approve them individually in the
Seller Creative Review window.

<div id="set-up-seller-creative-review__note-2796c1ca-bac0-47eb-81c7-d6e96348315e"


Note: Seller Creative Review currently
supports the following political creative categories:

- Politics
- Political: “Hot button” issue for
  commercial use 
- Political: Negative Attack Ads 





<div id="set-up-seller-creative-review__p-88f86e2a-083e-40a6-9238-2fbe0fb6a4f1"
>

To block supported creative categories by default:

1.  Open the Ad QualityNetwork/Publisher
    Template (for Network Template:
    Network
    \>  Ad Quality; for
    Publisher Template:
    Publisher
    Ad Quality) For more information, see
    <a href="working-with-network-ad-quality.html" class="xref">Working with
    Network Ad Quality</a> and
    <a href="working-with-publisher-ad-quality.html" class="xref">Working
    with Ad Quality</a>.
2.  Select the Settings tab.
3.  In the Categories section, search
    for the supported creative categories you want to review.
4.  Under Eligibility for each
    category you want to review, select
    Banned from the drop-down.





<div id="set-up-seller-creative-review__section-ce2534e1-ae0c-495f-93bd-185d8325629f"
>

## Configure Deal Line Item

To be able to review and explicitly approve creatives to run on your
inventory for a deal, you must create a deal line item and configure it
to ignore the Ad Quality block, but
only for seller-approved creatives. The
Seller Creative Review window only
lists creatives that are actively bidding and creating errors against a
deal in your network over the last 7 days. To ensure results are
actionable, creatives that are bidding on open exchange inventory are
not included. Because you initially blocked the supported creative
categories in the Ad Quality
Network/Publisher Template, creatives in these categories won’t
run on your inventory without explicit approval.

<div id="set-up-seller-creative-review__note-63c116eb-811f-4dee-aabf-ccd581ae0e44"


Note: The
Seller Creative Review feature is only
supported for deal line items. Before you can create a deal line item,
you’ll need to create or already have access to an advertiser and
insertion order.



<div id="set-up-seller-creative-review__p-bf796673-e90e-41b1-a5c2-2f2e7d940d04"
>

To create a deal line item configured for the
Seller Creative Reviewfeature:

1.  Create a deal line item that includes the following settings in the
    Deal Creative Criteria section
    (for more information, see
    <a href="create-a-deal-line-item.html" class="xref">Create a Deal Line
    Item</a>):
    1.  Next to Creative Review,
        select the Only allow seller-approved
        creatives checkbox so that only creatives that you
        explicitly approve will run.
    2.  Click Edit under
        Creative Category and select
        the Ad Quality Settings tab.
    3.  Search for the supported creative categories you blocked in the
        Ad Quality Network/Publisher
        Template. For example, to list the three political
        categories, enter “`politic`“ in the search window and click
        Ignore in the
        Ad Quality Settings column for
        each creative category.
2.  Finish configuring the remaining settings in the new deal line item
    and click Save.



The Seller Creative Review window will
now display creatives for this deal that require seller review. The
Seller Creative Review window is
updated daily and includes creatives that generate errors against a deal
in the prior 7 days. For more information, see
<a href="seller-creative-review-list.html" class="xref"
title="The Seller Creative Review window lets sellers review a list of pending, approved, and rejected creatives, configure list columns, search for creatives to review, and open creatives in a side pane for more details.">Seller
Creative Review List</a>.



<div id="set-up-seller-creative-review__section_qbx_5zq_dtb"
>

## Related Topics

- <a href="seller-creative-review.html" class="xref"
  title="Sellers can use Microsoft Monetize Seller Creative Review to review and approve creatives before they serve on seller inventory.">Seller
  Creative Review</a>
- <a href="seller-creative-review-list.html" class="xref"
  title="The Seller Creative Review window lets sellers review a list of pending, approved, and rejected creatives, configure list columns, search for creatives to review, and open creatives in a side pane for more details.">Seller
  Creative Review List</a>
- <a href="approve-and-reject-creatives.html" class="xref"
  title="Sellers can open each creative in a side pane to preview the creative, click through to its destination URL, see important creative details, and accept or reject the creative.">Approve
  and Reject Creatives</a>






