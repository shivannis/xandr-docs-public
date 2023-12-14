---
Title : Create a Placement for Third-Party Ad Server Pacing
Description : When creating a programmatic guaranteed (PG) deal that uses third-party
ms.date: 10/28/2023
ad server pacing, you must first create a placement that is third-party
pacing compliant.
---


# Create a Placement for Third-Party Ad Server Pacing



When creating a programmatic guaranteed (PG) deal that uses third-party
ad server pacing, you must first create a placement that is third-party
pacing compliant.



PG deals that use a third-party ad server for pacing require a single,
exclusive placement to be made only for that deal. The placement must
also be the only placement contained within a single placement group. To
create the placement:



>

1.  Click
    Publishers
    \> Placement Manager.
    
2.  Select a publisher.
3.  Click
    Create
    New \> Placement
    Group.
4.  Enter a name for the placement group.
5.  **Optional:** Enter the top level domain name
    for the placement group.
6.  Select the Standard
    Website supply type option.
7.  Select Do not
    participate to ensure that your placement group and placement
    don't participate in real-time bidding.
8.  Select the Allow
    deal demand for this placement group checkbox.
    

    Making this selection and creating a unique placement for your PG
    deal ensures that your PG campaign is the only demand eligible for
    the placement.

    
9.  Click Save & Add New
    Placement.
    

    The Create New Placement
    dialog displays.

    

<div class="li stepsection">

You've just created the placement group needed for your PG deal
placement. Now, you can create the placement that you'll use for your
third-party pacing PG deal.



10. Enter a name for the placement.
11. Set a state for your placement:
    - Active
    - Inactive - the recommended state
      for the placement before your PG deal begins. However, you must
      eventually change the placement's state to
      Active once the PG deal begins.
12. Select a media (creative) type for the
    placement.
    

    

    <b>Note:</b> You can currently only use
    banner creatives in your PG deal without a
    Xandr representative's assistance. If you'd
    like to use other creative types, please contact your
    Xandr account representative.

    

    
13. Select a size for the media type.
    

    If you choose a banner media type for your placement, you must
    select Sizeless. You can later add
    banner sizes to the generated placement tag using macros.

    
14. Click
    Save.
    

    You've just finished creating your placement. Now, you must retrieve
    its placement tag.

    
15. Click Export
    Tag within the placement's
    Placement Details pane.
    

    For more information on exporting placement tags, see
    <a href="export-placement-tags.md" class="xref">Export Placement
    Tags</a>.

    



class="section section result">

The placement tag is now available to you for trafficking in your
third-party ad server. You can now begin creating a PG deal that uses
third-party ad server pacing. For more information, see
<a href="create-a-programmatic-guaranteed-selling-line-item-ssp.md"
class="xref"
title="To create a PG deal that uses pacing in your ad server of record, you need to select a buyer, ad type, CPM, impression budget, flight dates, and a placement specifically created for the PG deal.">Create
a Programmatic Guaranteed Deal that Uses Third-Party Ad Server Pacing,
Tag Integration</a>.



>

Related Topic

- <a href="programmatic-guaranteed-selling-line-items.md" class="xref"
  title="Programmatic guaranteed (PG) selling line items provide a workflow for you to for create and sell PG deals to buyers who use Microsoft Invest and other partner DSPs.">Selling
  Programmatic Guaranteed Deals</a>






