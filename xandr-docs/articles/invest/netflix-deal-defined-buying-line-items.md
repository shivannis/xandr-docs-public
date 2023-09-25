---
Title : Netflix Deal Defined Buying Line Items
Description : 
class="note note note_note">
<b>Note:</b> This feature is currently in
Alpha. It is still under development and is subject to change without
---


# Netflix Deal Defined Buying Line Items



<b>Note:</b> This feature is currently in
Alpha. It is still under development and is subject to change without
notice. To enable this feature, contact your Xandr Account
Representative.

## Overview

Due to the premium nature of Netflix inventory, Netflix PMP deals are
considered "Seller Defined Deals," meaning the seller defines the
targeting parameters the buyer is allowed to configure. The Deal Defined
Line Item workflow in the Invest DSP only displays the settings the
buyer is able to control, eliminating the potential for conflict between
a buyer and seller, and thus maximizing win rates.


## Before You Begin

Before you create a **Deal Defined** line item, you must perform the
following tasks:

- <a
  href="create-an-advertiser.md"
  class="xref" target="_blank">Create an Advertiser</a>
- <a
  href="create-an-insertion-order.md"
  class="xref" target="_blank">Create an Insertion Order</a>

The insertion order you created must have at least one billing period
with dates in the future.

You must also have access to one or more PMP deals to target. Sellers
must first create these deals for buyers to access them for targeting.
If you have questions about how to gain access to a PMP deal, contact
your account manager.




## Access Netflix PMP Deals

To access a Netflix PMP deal, do the following:

1.  Click Your Deals in the
    Inventory menu
2.  In the Your Deals screen, ensure
    that the Deal Type is set to
    PMP.
3.  Choose the appropriate deal from the
    Your Deals screen.
4.  Select the corresponding
    Advertiser and
    Insertion Order associated
    with that particular PMP Deal.
5.  Click Go To Line Item Create to
    launch the page to create the Deal
    Defined Line Item.



<div id="netflix-deal-defined-buying-line-items__section_o5l_ryn_fyb"
>

## Start a New Deal Defined Line Item

To create a new Deal Defined line item, do the following:

1.  Click Create New in the
    Line Item menu

2.  

    On the Create New Line Item
    screen, select
    Augmented
    Line Item \> Deal
    Defined under Line Item
    Type
    

    <b>Important:</b> You must have an
    Advertiser and
    Insertion Order associated
    with the Line item in the Advertiser and Insertion Order sections.
    If necessary, select an Advertiser and Insertion Order.

    

    

3.  Click Next to open the
    Create a Deal Defined Line
    Item screen.



## Buying Netflix via PMP on Invest DSP

The primary difference between a **Deal Defined Line Item** and a
standard **Augmented Line Item** is the deal relationship. Only one deal
is allowed on a Deal Defined line item, and the settings of that deal
will determine which targeting settings are displayed for you to
configure. Because there is only one deal targeted, the buyer must
ensure to take the suggested minimum bid of the deal (ask price + BASC)
into account when formulating their bidding strategy. When using maximum
revenue bids, the max will need to be higher than this suggestion in
order to successfully win.



**Overview of Deal Defined Line Item setup:**

<table id="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb"
class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1"
class="entry colsep-1 rowsep-1">Feature</th>
<th
id="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2"
class="entry colsep-1 rowsep-1">Deal Defined Setup Overview</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Audience
&amp; Location Targeting</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">Geotargeting
is required. Each Netflix PMP deal is set to target a single country,
and you must ensure that the Deal Defined Line Item country target
matches the deal. More granular geo targeting may be available depending
on deal settings.
<div id="netflix-deal-defined-buying-line-items__note_fyr_gm4_fyb"
class="note note_note">
<b>Note:</b> Frequency, Recency &amp;
Cookieless targeting are hardcoded based on seller requirements.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Basic
Settings</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2"><p>Set
the LI name, state and deal. After selecting a deal, you'll see details
of the deal:</p>
<ul>
<li><strong>Seller</strong> - ID of the seller of the deal</li>
<li><strong>Start</strong> <strong>Date</strong> - date the deal becomes
active</li>
<li><strong>End Date</strong> - date after which the deal is no longer
active</li>
<li>
<strong>Suggested Minimum Bid</strong> - Calculated as the seller's ask
price plus your buyer fees, the suggested minimum bid can be used to
inform your bidding strategy.
<div id="netflix-deal-defined-buying-line-items__note_u22_hm4_fyb"
class="note note_note">
<b>Note:</b> This suggestion should be used as
a starting point, and you may need to increase your bid depending on
your revenue type, goals, and deal competition.

</li>
<li><strong>Price</strong> – The minimum amount the seller will accept
for the deal</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Budgeting
&amp; Scheduling</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">This
section is identical to that of a standard ALI, except that Daypart
Targeting may not be available based on deal settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Creatives</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">This
section allows you to associate creatives to the line item and specify
creative rotation &amp; scheduling. For more information on Netflix
specific creative requirements, see <a
href="creative-ctv-guidelines-and-specifications.md"
class="xref" target="_blank">Creative CTV Guidelines and
Specifications</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Fees</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">In
this section, you can optionally apply a partner fee to track third
party costs</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Inventory
&amp; Brand Safety</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">This
section is unavailable for <strong>Deal Defined Line Items</strong>. The
deal targeting is defined in the basic settings section</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Measurement</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">In
this section, 3rd party verification via IAS and DoubleVerify are
currently supported for Netflix PMP deals and can be enabled here</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Optimization</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">In
this section, you can enable/disable optimization, set a performance
goal and goal priority, and associated conversion pixels.

<b>Note:</b> Given that Netflix inventory
consists entirely of video content, it is essential to ensure that your
goals are tailored to video buys.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Programmable
Splits</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">Splits
and custom models are unavailable for <strong>Deal Defined Line
Items</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Reporting
Labels &amp; Comments</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">In
this section, you can optionally assign custom reporting labels to a
line item. This enables you to create reports tracking metrics across
multiple line items, as well as add comments to a line item for your
reference.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__1">Viewability
&amp; Environment Targeting</td>
<td class="entry colsep-1 rowsep-1"
headers="netflix-deal-defined-buying-line-items__table_c35_wl4_fyb__entry__2">Device
type, video player position and video content targeting may be available
depending on the settings of the deal.</td>
</tr>
</tbody>
</table>




## Creative Rotation and Associated Creatives

**Creative Requirements for Netflix PMP Deals**



To serve on Netflix inventory, CTV creatives must meet strict guidelines
and technical specifications that have been set by Netflix to ensure an
optimal user experience. We recommend that Invest DSP buyers consider
dedicated creatives when buying Netflix, and consider the context that
the advertisement is in and how it will appear on Netflix content. For
more information on CTV creatives specification, see <a
href="creative-ctv-guidelines-and-specifications.md"
class="xref" target="_blank">Creative CTV Guidelines and
Specifications</a>.



<b>Important:</b> The Line item must be
associated to a Netflix PMP deal for **Creative Requirements for the
Selected Deal** to display. You must have at least one associated
creative for each media type and ad size listed for the deal.





**Creative Rotation**

Select the Creative Rotation Strategy:

- **Auto-optimize creative weight**: The creative with the highest
  click-through-rate (CTR) delivers the most

- **Evenly weight creatives**: The even rotation is handled
  automatically by our system

- **Manually weight creatives**: The rotation is based on a user-
  supplied weight

**Associated Creatives**

1.  Search for the creative name or the ID, to open the
    Associated Creatives dialog.
2.  Select the creatives you want to associate to your PG line item from
    the Available Creatives list
    by clicking on the check next to the name. Selected creatives will
    appear in the Selected
    Creatives list. Ensure that you have at least one associated
    creative for each media type and ad size listed in
    Creative Requirements for the PG
    Deal. For more information on how to add creatives, see
    <a href="add-a-creative.md" class="xref"
    title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
    a Creative</a> and
    <a href="creative-ctv-guidelines-and-specifications.md" class="xref"
    title="To serve on Xandr publisher&#39;s CTV inventory, your creatives must meet the guidelines and specification requirements, as well as Xandr creative standards and any other guidelines that may apply. While uploading your creatives, you can see whether your creatives meet the specified CTV requirements or not under the View CTV Eligibility section . If not, you can click More Details, to see which requirements need to be adjusted in order to serve on Xandr’s premium publisher’s CTV inventory. The CTV specification validations and approval indicators will be present throughout the Line item and Creative workflows in various tooltips and issues columns, as well.">Creative
    CTV Guidelines and Specifications</a>
3.  When you finish making your selections, click
    Save.



## Related Topics

- <a
  href="programmatic-guaranteed-buying-line-items.md"
  class="xref" target="_blank">Programmatic Guaranteed Buying Line
  Items</a>
- <a
  href="create-an-insertion-order.md"
  class="xref" target="_blank">Create an Insertion Order</a>
- <a
  href="add-a-creative.md"
  class="xref" target="_blank">Add a Creative</a>
- <a
  href="creative-ctv-guidelines-and-specifications.md"
  class="xref" target="_blank">Creative CTV Guidelines and
  Specifications</a>






