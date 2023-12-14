---
Title : Create a Programmatic Guaranteed Deal that Uses Third-Party Ad Server Pacing, Tag Integration
Description : To create a PG deal that uses pacing in your ad server of record, you
ms.date: 10/28/2023
need to select a buyer, ad type, CPM, impression budget, flight dates,
and a placement specifically created for the PG deal.
---


# Create a Programmatic Guaranteed Deal that Uses Third-Party Ad Server Pacing, Tag Integration



To create a PG deal that uses pacing in your ad server of record, you
need to select a buyer, ad type, CPM, impression budget, flight dates,
and a placement specifically created for the PG deal.

>

Before you begin creating a line item, make sure you've completed the
following tasks:

- <a href="create-an-advertiser.md" class="xref">Create an
  Advertiser</a>

- <a href="create-an-insertion-order.md" class="xref">Create an
  Insertion Order</a>
  

  <b>Note:</b> To create a PG deal, you need
  to create a **seamless insertion order** with no end date, no budget,
  and an Impression or
  Flexible budget type.

  

- <a href="create-a-placement-for-third-party-ad-server-pacing.md"
  class="xref"
  title="When creating a programmatic guaranteed (PG) deal that uses third-party ad server pacing, you must first create a placement that is third-party pacing compliant.">Create
  a Placement for Third-Party Ad Server Pacing</a>

  It's required that you create a placement for your PG deal prior to
  deal creation. For more information about setting up a placement for
  third-party ad server pacing, see
  <a href="create-a-placement-for-third-party-ad-server-pacing.md"
  class="xref"
  title="When creating a programmatic guaranteed (PG) deal that uses third-party ad server pacing, you must first create a placement that is third-party pacing compliant.">Create
  a Placement for Third-Party Ad Server Pacing</a>.

  

  <b>Note:</b> The placement that you choose
  for your PG deal must be unique and targeted only by the PG deal that
  you're creating. Using a placement that is already being targeted in
  another PG deal causes delivery issues.

  

To set up the PG deal:



>

1.  Navigate to the PG deal pre-selection
    screen.
    

    For more information on navigating to this pre-selection screen, see
    <a
    href="navigate-to-the-create-a-new-deal-line-item-screen-monetize.md"
    class="xref"
    title="To create a new programmatic guaranteed (PG) deal, start by pre-selecting a pacing option for your guaranteed deal, then proceed from the Create New Programmatic Guaranteed Deal screen.">Navigate
    to the Create New Programmatic Guaranteed Deal Screen</a>.

    
2.  Select Pacing in Ad
    Server of Record as your pacing option.
3.  Click
    Next.
4.  Enter a name for your PG deal.
    

    

    <b>Note:</b> This name will also be
    assigned to the PG deal line item.

    

    
5.  Select a buyer.
6.  **Optional:** Enter a deal code.
7.  **Optional:** Enter a deal description.
8.  Select the ad type to be used for your deal,
    and complete any additional steps for your selected ad type:
    

    

    <b>Note:</b> You can currently only use
    banner creatives in your PG deal without
    Xandr representative assistance. If you'd
    like to use other creative types, please contact your
    Xandr account representative.

    

    

    <table
    id="create-a-programmatic-guaranteed-selling-line-item-ssp__choicetable_z3l_45l_gtb"
    class="simpletable choicetable choicetableborder" data-border="1"
    data-frame="hsides" data-rules="rows" data-cellpadding="4"
    data-cellspacing="0" data-summary="">
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead class="thead">
    <tr class="header sthead chhead">
    <th class="stentry choptionhd" scope="col"
    style="text-align: left; vertical-align: bottom;">Selection</th>
    <th class="stentry chdeschd" scope="col"
    style="text-align: left; vertical-align: bottom;">Step</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Banner</th>
    <td class="stentry chdesc" style="vertical-align: top">Select one or
    more banner sizes for your PG deal to accept.
    <div
    id="create-a-programmatic-guaranteed-selling-line-item-ssp__note_rxk_cvl_gtb"
    class="note note_note">
    <b>Note:</b> Click <span
    class="ph uicontrol">Add Custom Size to create and select custom
    banner sizes.
    </td>
    </tr>
    <tr class="even strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Video</th>
    <td class="stentry chdesc" style="vertical-align: top">Continue to
    <strong>step 6.</strong>
    <div
    id="create-a-programmatic-guaranteed-selling-line-item-ssp__note_m3k_2nw_ytb"
    class="note note_note">
    <b>Note:</b> The default size selected for
    video creatives is 1x1.
    </td>
    </tr>
    <tr class="odd strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Native</th>
    <td class="stentry chdesc" style="vertical-align: top">Select one or
    more native sizes for your PG deal to accept. The default size selected
    for native creatives is 1x1, but you change this through the UI.
    <div
    id="create-a-programmatic-guaranteed-selling-line-item-ssp__note_qcf_hvl_gtb"
    class="note note_note">
    <b>Note:</b> Click <span
    class="ph uicontrol">Add Custom Size to create and select custom
    native sizes.
    </td>
    </tr>
    <tr class="even strow chrow">
    <th class="stentry choption" style="vertical-align: top"
    scope="row">Audio</th>
    <td class="stentry chdesc" style="vertical-align: top">Continue to
    <strong>step 6.</strong>
    <div
    id="create-a-programmatic-guaranteed-selling-line-item-ssp__note_rtm_3nw_ytb"
    class="note note_note">
    <b>Note:</b> The default size selected for
    audio creatives is 1x1.
    </td>
    </tr>
    </tbody>
    </table>
9.  Enter a fixed CPM price to be used for your
    deal.
    

    The currency you chose for your advertiser will be used for your CPM
    price.

    
10. Set an impression budget for your deal.
11. Select flight (start and end) dates for the
    deal.
    

    

    <b>Note:</b> We recommend that you only
    select start dates when you're confident that they won't change.
    Flight start dates can't be changed during an in-progress flight.
    End dates, however, can always be changed.

    

    
12. Select a unique placement to include in the
    deal.
13. **Optional:** Add reporting labels and comments
    to your deal.
    

    With reporting labels, you can associate a person or other metadata
    with your PG deals. You can then run reports that sort by the labels
    you've set for your deal.
    

    <b>Note:</b> Comments are only for
    personal reference and won't affect deal performance. Deal buyers
    aren't able to see them.

    

    
14. Click Save,
    located in the top-right corner, to finish.



>

You've just created your PG deal, and both a deal line item ID and deal
ID have been created. You must now locate and share the deal ID to your
buyer. Alternatively, if you have **deal sync** enabled, then ID sharing
will be automatically handled with your buyer.

Before setting your deal line item to be active, you should ensure that
your deal line item is live (flight date range has begun) and your
designated buyer has begun targeting the deal. Otherwise, your deal's
placement tag will fire and receive no bid, but GAM will record an
impression as having occurred.

class="note warning note_warning">

<b>Warning:</b> Ensure that you're
specifically sharing the **deal ID** to the buyer.








