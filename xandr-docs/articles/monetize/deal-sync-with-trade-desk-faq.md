---
Title : Deal Sync with Trade Desk - FAQ
Description : Frequently Asked Questions About Deal Synchronization with Trade Desk
Note: This feature is in **Beta**. It
---


# Deal Sync with Trade Desk - FAQ



Frequently Asked Questions About Deal Synchronization with Trade Desk







Note: This feature is in **Beta**. It
is only available to select clients. Please consult your Account Manager
if you'd like to be added to the beta test.







<div id="deal-sync-with-trade-desk-faq__section-ff78a9ef-4073-4e99-914f-a322a8b908b8"
>

## How do I know a deal successfully uploaded to Trade Desk systems?

You can confirm this with the Trade Desk buyer by asking if they can see
the deal in the negotiations page of the Trade Desk UI.



<div id="deal-sync-with-trade-desk-faq__section-97c6a257-7e71-419c-b111-9935a0f643c6"
>

## How do I know if a buyer accepted the deal in the Trade Desk UI?

Ask the Trade Desk buyer to confirm they have accepted the deal in the
Trade Desk UI. We are working to display the Trade Desk buyer acceptance
status in the UI and plan to release the feature in future iterations of
this product.



<div id="deal-sync-with-trade-desk-faq__section-8196d1fc-de7b-40f3-8b4d-e2981f6ed008"
>

## What deal information is uploaded to Trade Desk systems via API?

The following details are shared with the Trade Desk APIs:

<table
id="deal-sync-with-trade-desk-faq__table-9b14eff8-ccb2-44eb-acb5-ca67ba81feac"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><ul>
<li>Deal Name</li>
<li>Buyer Seat ID</li>
<li>Seller Name</li>
<li>Deal ID</li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1"><ul>
<li>Deal Type</li>
<li>Deal Auction Type</li>
<li>Start Date</li>
<li>End Date</li>
</ul></td>
<td class="entry align-left colsep-1 rowsep-1"><ul>
<li>Currency</li>
<li>Floor Price/Ask Price</li>
<li>Allowed Media Types</li>
<li>Allowed Creative Sizes</li>
</ul></td>
</tr>
</tbody>
</table>



<div id="deal-sync-with-trade-desk-faq__section-daf51525-546b-4f3c-b5e2-9761a3bab08d"
>

## What will happen to existing Trade Desk deals that were created before enablement of deal sync?

Changes to existing deals created prior to enablement of Trade Desk deal
sync will not automatically be uploaded to Trade Desk APIs. You will
need to work with the buyer to manually update the deal objects in the
Trade Desk UI, per the existing workflow. We have no plans to support
the sync of deals created prior to a seller's enablement of deal sync
with Trade Desk.



<div id="deal-sync-with-trade-desk-faq__section-62cf0a7b-4d31-48d6-9b80-0232093cb9bc"
>

## Will updates to existing Trade Desk deals that were created before deal sync was enabled automatically update?

No, deals created prior to the enablement of Trade Desk deal sync on
your account will not automatically update. You will need to work with
the Trade Desk buyer to manually update the deal in the Trade Desk UI.



<div id="deal-sync-with-trade-desk-faq__section-2c824928-fb57-409b-b2ce-76b78e610222"
>

## If I created a deal with Trade Desk post enablement of Deal sync and then updated the deal details, will they automatically update in Trade Desk systems?

Yes, deals created post Trade Desk deal sync enablement will have
automatic deal updates. Changes you make to updatable fields (for
example, start date, end date, price) will be automatically uploaded to
Trade Desk systems. Once the changes are uploaded, this will trigger a
change to the buyer status to "pending". You will need to ask the Trade
Desk buyer to re-accept the deal in the Trade Desk UI.



<div id="deal-sync-with-trade-desk-faq__section-e58b8b37-69b0-4a7e-8412-ece0e9965295"
>

## What are things I cannot change with Trade Desk deals once they are created?

The following fields cannot be changed in Trade Desk systems after a
deal is uploaded:

- Buyers (cannot be removed, can add additional buyers)

- Deal Type

- Seller Member ID

- Seller Member Name



<div id="deal-sync-with-trade-desk-faq__section-a18540d4-f14d-4d87-8fd2-25f0b823a117"
>

## Can I change a buyer for a deal once it has been uploaded to Trade Desk systems?

Publishers cannot remove the primary buyer from a deal once it has been
uploaded to Trade Desk systems. You can check which buyer is designated
the primary buyer by pulling the buyer-deal-sync object in the API or
Database. If your account is enabled for multi-buyer deals, you can add
additional buyer seat ids to an existing deal.



<div id="deal-sync-with-trade-desk-faq__section-e63392c7-acb8-4014-93de-7a086e6bd300"
>

## Can I create a deal for multiple media types?

While multi format deals are supported in Xandr
Monetize UI, Trade Desk does require that each deal have a
declared media type. If your deal allows for multiple media types,
Xandr will only upload one of the media types as
the allowed creative format for the deal.

The order of priority will be:

1.  banner
2.  video
3.  native
4.  audio

Programmatic Guaranteed deals cannot be multi-media type. One media type
must be declared in all PG deals with Trade Desk.



<div id="deal-sync-with-trade-desk-faq__section-b29b74ab-c049-4b01-af5c-2b96499190b3"
>

## If a Trade Desk buyer manually creates a deal first in Trade Desk UI using the deal ID, and then the deal with the same deal ID gets uploaded to Trade Desk via the deal sync process, how will Trade Desk systems handle it?

If a Trade Desk buyer manually creates the deal in the Trade Desk UI
before a deal is uploaded via their proposal API, this will cause
issues. Once a deal has been created in the manual workflow, it will not
be able to sync properly via the deal sync process. As such, it is
important to ensure that buyers do not create this deal manually and
should wait for the deal to upload via the API integration.



<div id="deal-sync-with-trade-desk-faq__section-03734935-ccb7-409a-9e27-93fa93d233c1"
>

## When I create a PG deal, do the Ask Price and Impression Budget numbers have to be accurate?

Yes, the "Spend" and "Impression Target" must be the same as the
contracted numbers agreed with the buyer. These two numbers will be
pushed into Trade Desk systems and buyers won't be able to update them.
Any changes to these two values will trigger re-acceptance of the deal.



<div id="deal-sync-with-trade-desk-faq__section-671fb979-2d33-4c19-b4d6-e6656956b784"
>

## What should publishers tell buyers about how to accept a synced deal in the Trade Desk UI?

Publishers should guide the buyers through the following steps:

1.  Select Inventory from the
    Libraries drop-down in the
    header, and then select the
    Proposals tab.
2.  Once on that page they can sort by
    Pending Approval if they need to
    filter to only those proposals (It should automatically sort based
    on importance so that shouldn’t be necessary).
3.  In that screen, the buyer should be able to see the deal and accept
    it.



<div id="deal-sync-with-trade-desk-faq__section-6935e77b-4003-4742-a825-6529ba2bbe90"
>

## What are some ways for Trade Desk buyers to find the deal in the Trade Desk UI so they can accept it?

Trade Desk buyers may follow below steps to find and accept the deal:

<div id="deal-sync-with-trade-desk-faq__p-a206a68e-3dcf-4c35-8c3d-f5abf18fbfef"
>

1.  Select Inventory from the
    Libraries drop-down in the
    header, and then select the
    Proposals tab.
2.  Once on that page, you can sort by
    Pending Approval if you need to
    filter to only those proposals (It should automatically sort based
    on importance so that shouldn’t be necessary).





<div id="deal-sync-with-trade-desk-faq__section-3de5e186-1457-40c6-be15-6f23dee73a37"
>

## Can a publisher pick and chose which Trade Desk buyers to automatically sync deals with?

That is not a feature that will be supported. Deal sync with Trade Desk
is designed to automate deal sync for ALL Trade Desk buyers as the
design of the final state of this product is to enable all sellers in
the Xandr marketplace.



<div id="deal-sync-with-trade-desk-faq__section-1a53eafd-df9d-4458-9961-ea3bf26f33bb"
>

## I created a deal with Trade Desk member 1088, why did it not sync with Trade Desk systems?

Deals created with Trade Desk Xandr members will
not be supported in deal sync with Trade Desk as Trade Desk APIs require
the Trade Desk partner ID declared in the deal.
Xandr is unable to determine which partner IDs
to associate with a member ID deal.






