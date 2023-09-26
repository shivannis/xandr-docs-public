---
Title : Deal Sync with DV360 - FAQ
Description : Frequently Asked Questions About Deal Synchronization with DV360
Note: This feature is in **Closed
Beta**. It is only available to select clients. Please consult your
---


# Deal Sync with DV360 - FAQ



Frequently Asked Questions About Deal Synchronization with DV360







Note: This feature is in **Closed
Beta**. It is only available to select clients. Please consult your
Account Manager if you'd like to be added to the beta test.







<div id="deal-sync-with-dv360-faq__section-3785c636-d931-481e-b6b1-8ecaac9eed99"
>

## How do I know a deal successfully uploaded to DV360 systems?

You can confirm this with the DV360 buyer by asking if they can see the
deal in the negotiations page of the DV360 UI.



<div id="deal-sync-with-dv360-faq__section-cedce7bc-75ac-4933-83c0-9f55905d1d18"
>

## How do I know if a buyer accepted the deal in the DV360 UI?

Ask the DV360 buyer to confirm they have accepted the deal in the DV360
UI. We are working to display the DV360 buyer acceptance status in the
UI and plan to release the feature in future iterations of this product.



<div id="deal-sync-with-dv360-faq__section-32e0084e-9eea-4fbc-8c9e-1c5920c981cb"
>

## What deal information is uploaded to DV360 systems via API?



<div id="deal-sync-with-dv360-faq__section-b7a9ec9a-77b4-472d-a3bb-9d28cf2480b0"
>

The following details are shared with DV360 APIs:

<div id="deal-sync-with-dv360-faq__p-10a40807-890f-428f-99db-5ac1f55abea0"
>

<table
id="deal-sync-with-dv360-faq__table-9b14eff8-ccb2-44eb-acb5-ca67ba81feac"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
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
<li>Allowed Media Types (PG Deals ONLY)</li>
<li>Allowed Creative Sizes (PG Deals ONLY)</li>
</ul></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">





<div id="deal-sync-with-dv360-faq__section-5b7139a0-c018-42bc-808e-4b50cfbb7265"
>

## What will happen to existing DV360 deals that were created before enablement of deal sync?

In the Alpha phase of testing, changes to existing deals created prior
to enablement of DV360 deal sync will not automatically be uploaded to
DV360 APIs. You will need to work with the buyer to manually update the
deal objects in the DV360 UI, per the existing workflow.



<div id="deal-sync-with-dv360-faq__section-63bb2ac8-3f69-45f5-80e9-68da5f9ed669"
>

## Will updates to existing DV360 deals that were created before deal sync was enabled automatically update?



<div id="deal-sync-with-dv360-faq__section-e8ec5f48-191f-4bcf-ac94-3d48d77d38d4"
>

No, deals created prior to the enablement of DV360 deal sync on your
account will not automatically update. You will need to work with the
DV360 buyer to manually update the deal in the DV360 UI.



<div id="deal-sync-with-dv360-faq__section-f727b224-d491-452e-9162-5e8ec805476b"
>

## If I created a deal with DV360 post enablement of Deal sync and then updated the deal details, will they automatically update in DV360 systems?

Yes, deals created post DV360 deal sync enablement will have automatic
deal updates. Changes you make to updatable fields (ex. start date, end
date, price) will be automatically uploaded to DV360 systems. Once the
changes are uploaded, this will trigger a change to the buyer status to
"pending". You will need to ask the DV360 buyer to re-accept the deal in
the DV360 UI.



<div id="deal-sync-with-dv360-faq__section-383847e5-ea6c-4289-827b-5dac8a089320"
>

## What are things I cannot change with DV360 deals once they are created?



<div id="deal-sync-with-dv360-faq__section-d3236dc8-2288-4add-9a70-2f168cd48a78"
>

<div id="deal-sync-with-dv360-faq__p-d02e766a-3e2d-4c9e-a342-7f78bc1eca03"
>

The following fields cannot be changed in DV360 systems after a deal is
uploaded:

- Deal ID
- Deal Type
- Auction Type
- Currency
- Allowed media type





<div id="deal-sync-with-dv360-faq__section-bf7badce-bdec-4f50-801f-ad43392ff2de"
>

## Can I change a buyer for a deal once it has been uploaded to DV360 systems?

Publisher cannot remove buyers from a deal once it has been uploaded to
DV360 systems. However, if your account is enabled for Multi-Buyer
Deals, you can add buyer seat IDs to an existing deal.



<div id="deal-sync-with-dv360-faq__section-7a55b306-5986-44c3-acc8-b78f55fd6235"
>

## Can I create a deal for multiple media types?



<div id="deal-sync-with-dv360-faq__section-8692ef15-398d-4190-b893-dc1d1921ce71"
>

While multi format deals are supported in Xandr
Monetize UI, DV360 does encourage publishers to declare only one
media type in a deal. This will allow buyers to get more granular
details about how to target a deal.

Programmatic Guaranteed deals cannot be multi-media type. One media type
must be declared in all PG deals with DV360.



<div id="deal-sync-with-dv360-faq__section-63b3c4b7-5baa-41c5-9208-4f9ee06d8288"
>

## If a DV360 buyer manually creates a deal first in DV360 UI using the deal ID, and then the deal with the same deal ID gets uploaded to DV360 via the deal sync process, how will DV360 systems handle it?



<div id="deal-sync-with-dv360-faq__section-b9b595ed-f305-4b29-b4cd-45592e8894ee"
>

There are a few ways DV360 systems will react:

1.  If the deal details of the deal created via API match the manually
    created deal, then the deal created via API is automatically matched
    with the manually created deal and will be accepted.
2.  If the deal details of the deal created via API does not match the
    manually created deal, the buyer will be asked to re-accept the
    deal. Prior to re-acceptance, the deal created manually will
    continue to deliver based on old terms. Accepting the new deal will
    override the manually created deal.
3.  If the deal type of the deal created via API upload differs from the
    manually created deal, the API call will fail. For example, if the
    manually created deal is a non-reserved deal, the API call will fail
    if you create a reserved deal via API.

Once a deal is uploaded to DV360 systems via the deal sync process,
buyers will not be able to use that same deal ID to manually create a
deal in the DV360 UI.



<div id="deal-sync-with-dv360-faq__section-49d8992b-2f13-4e01-ad5c-dd2cd8d5c460"
>

## When I create a PG deal, do the Ask Price and Impression Budget numbers have to be accurate?



<div id="deal-sync-with-dv360-faq__section-7f385ef1-a8c4-4f85-b99a-1b3998e5eebe"
>

Yes, the "Ask Price" and "Impression Target" must be the same as the
contracted numbers agreed with the buyer. These two numbers will be
pushed into DV360 systems and buyers won't be able to update them. Any
changes to these two values will trigger re-acceptance of the deal. The
buyer will continue to bid based on previously accepted deal parameters
until the buyer re-accepts the deal.



<div id="deal-sync-with-dv360-faq__section-68c26338-0f02-43c1-8743-1a819c984971"
>

## What should publishers tell buyers about how to accept a synced deal in the DV360 UI?



<div id="deal-sync-with-dv360-faq__section-65c54558-8074-4754-a299-7aca27bb9d87"
>

Publishers can share the
<a href="dv360-buyer-deal-acceptance-wf.html" class="xref">DV360 Buyer
UI Deal Acceptance Workflows</a> document with their buyers, which
explains in more detail how to accept a deal in the DV360 UI as well as
how to target creatives and line items to an accepted deal.



<div id="deal-sync-with-dv360-faq__section-da846f6e-b2f8-4947-a0f3-1527f06f29b5"
>

## What are some ways for DV360 buyers to find the deal in the DV360 UI so they can accept it?

Buyers can find the deal through a few identifying factors in the
Negotiations screen of the DV360 UI:

- Filter for deals "pending action" to find deals that require the
  buyer's acceptance.
- Search for deals using the seller name, which will be the publisher's
  Xandr Member name.
- Search for deals using the deal name, which will be the name submitted
  in Xandr systems.



<div id="deal-sync-with-dv360-faq__section-5486755b-709f-4cfa-86f5-843dcac756d1"
>

## Can a publisher pick and chose which DV360 buyers to automatically sync deals with?



<div id="deal-sync-with-dv360-faq__section-fa565f49-b538-40b4-8607-7ba7e16ce4d4"
>

That is not a feature that will be supported. Deal sync with DV360 is
designed to automate deal sync for ALL DV360 buyers as the design of the
final state of this product is to enable all sellers in the
Xandr marketplace.



<div id="deal-sync-with-dv360-faq__section-ea6602f5-1f09-43c9-9c0e-df9d275fe4bd"
>

## I created a deal with DV360 member 1212, why did it not sync with DV360 systems?

Deals created with DV360 Xandr members will not
be supported in deal sync with DV360 as DV360 APIs require the DV360
partner ID declared in the deal. Xandr is unable
to determine which partner IDs to associate with a member ID deal.



<div id="deal-sync-with-dv360-faq__section-ab8dbc95-c913-41dd-be1e-0e7cd90be675"
>

## My buyer is seeing that creative format and creative requirements are undeclared but required in the UI, should they be concerned?



<div id="deal-sync-with-dv360-faq__section-97dfe55e-d41d-469d-b09d-843b9668857f"
>

Creative format and requirements are not required fields for non-PG
deals so we currently do not upload these details for non-PG deals. The
warning is benign and does not mean that the buyer cannot set up line
items on these deals. It just means that they can use any type of
creative to target those deals. Other buyers have seen this warning
before and have successfully set up line items and creatives to bid on
these deals.



<div id="deal-sync-with-dv360-faq__section-f94dbd77-57da-4615-8531-5a92f662663e"
>

## My buyer sees that a deal is displaying Pacing as "ASAP", is there any way to change that?



<div id="deal-sync-with-dv360-faq__section-1b198ec0-5981-44be-a3c8-11ccf653e94f"
>

The buyer should not be concerned that Pacing is set to ASAP. Pacing is
controlled on the sell side, and this field is purely for transparency
purposes. Therefore pacing will largely determined based on the
publisher's settings in Xandr systems rather
than the line items set up in DV360.



<div id="deal-sync-with-dv360-faq__section-f1f622f4-cf77-4af7-96e4-bb8d3d39fa6f"
>

## I am setting up a PG Deal using size-less placements, do I still need to declare sizes in the deal?



<div id="deal-sync-with-dv360-faq__section-eee151d5-c706-49e0-8ece-de839ee336b4"
>

Yes, publishers should still include all potential sizes that could be
passed in bid requests for that specific PG deal. DV360 does not support
the concept of "any size" for image creatives. DV360 uses size
restrictions specified during deal negotiation to enforce the buyer to
select at least one creative that satisfies each required creative
dimension, thereby guaranteeing that we'll have at least one eligible
creative to serve the requested ad size. If the allowed sizes for a PG
deal changes, the publisher can go in and update the allowed creative
sizes in the PG deal and Xandr will
automatically upload those updates to DV360 systems.






