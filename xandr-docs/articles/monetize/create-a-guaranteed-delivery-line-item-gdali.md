---
Title : Create a Guaranteed Delivery Line Item (GDALI)
Description : This page explains how to create a guaranteed delivery line item to meet
ms.date: 10/28/2023
delivery goals and serve budgets evenly and in full.
---


# Create a Guaranteed Delivery Line Item (GDALI)



This page explains how to create a guaranteed delivery line item to meet
delivery goals and serve budgets evenly and in full.

>

>

You can create a new guaranteed delivery augmented line item (GDALI)
from the Line Items screen (for
more information, see <a href="monitor-line-items.md" class="xref"
title="The Line Items screen displays All, Upcoming, In Progress, and Completed line items and metrics. It also lets you search for line items and related objects, apply filters, modify display columns, and download reports.">Monitor
Line Items</a>):

1.  On the Line Items screen, click
    the +New drop-down and select
    Line Item menu.
2.  On the Create New Line Item
    screen, select Guaranteed Delivery Line
    Item.
3.  In the Advertiser drop-down,
    select an appropriate advertiser.
4.  In the Insertion Order drop-down,
    select an appropriate insertion order if one is not already
    selected.
    

    <b>Note:</b> GDALIs can only be associated
    with **Seamless Insertion Orders**. You can associate only one
    insertion order to a GDALI.

    
5.  Click Next to open the
    Create New Guaranteed Delivery Line
    Item screen.





>

## Basic Settings

You can set the name, state, and ad type of the GDALI from
the Basic Settings section. You can
also optionally assign an external code.

1.  Insertion Orders: You can change
    the associated insertion order to the line item by doing the
    following:
    1.  Click the pencil icon above the existing insertion order that
        displays. A list of corresponding insertion orders (if any)
        displays automatically.
    2.  Search for the appropriate insertion order you want to select.
    3.  Select the corresponding check marks to associate the insertion
        order with the line item.
        

        <b>Note:</b> Only seamless insertion
        orders with impression or flexible budget types and no budget on
        the insertion order level can be associated to a GDALI. When
        creating an insertion order, select
        Seamless in the
        Create Insertion Order
        screen for a faster workflow that's compatible with GDALIs and
        PG line items. We recommend using
        Seamless insertion orders with
        budget type set to Flexible
        for GDALIs so you can associate both impression-based and
        revenue-based line items to the same insertion order. You won't
        be able to select a particular insertion order for GDALIs if its
        billing periods overlap or conflict with the billing periods of
        the insertion order that was previously associated to the line
        item.

        
    4.  Click Save.

2.  Name: Enter the name that you will
    use to search for and report on the line item.
    

    <b>Note:</b> The name of the line item
    must be unique per advertiser.

    

3.  External Code: (Optional)
    Click +External Code and enter a
    code if you want to report on a line item using your own code
    (rather than the internal ID
    that Xandr assigns automatically). External
    codes must follow these guidelines:
    - They can only contain alphanumeric characters, periods,
      underscores or dashes.
    - Codes are not case-sensitive (uppercase and lowercase characters
      are treated the same).
    - No two objects can use the same code per advertiser. For example,
      two line items cannot both use code "ABC."

4.  State: Set the line item state to
    Active or
    Inactive. We recommend that you
    set the state to Inactive until
    everything for the line item has been set up and verified.

5.  Ad Type: Select one or more
    appropriate ad types for the line item.

    The ad type must match the creative types that you will associate
    with the line item and will also be used to improve forecasting
    accuracy.

6.  Delivery Type: Select a line item
    delivery type:
    - Impressions - this delivery type
      has an impression-based goal and typically has priorities that
      range from 11-17.
    - Exclusive - this delivery type
      has a percentage-based (or "share-of-voice") goal and typically
      runs at higher priorities that range from 18-20.

7.  Priority: Set a priority for the
    line item in the Priority
    drop-down. Flexible priorities allow users to manage delivery across
    line items. To optimize yield, it's recommended that you consolidate
    GDALIs within a single priority tier below the reselling priority
    (your reselling priority is indicated to the right of the
    Priority drop-down).
    

    <b>Note:</b> The default priority depends
    on the delivery type:
    - Impressions delivery types have
      a default priority of 14.
    - Exclusive delivery types have a
      default priority of 19.

    

8.  Allow RTB Competition: If you have
    assigned the Impressions delivery
    type to the line item, the Allow RTB
    Competition feature is enabled by default. When enabled with
    a priority below reselling priority, a guaranteed line item will
    compete with Open Market (or RTB) demand to maximize yield while
    ensuring full delivery of the budget (for more information, see
    <a href="open-dynamic-allocation-and-flexible-priorities.md"
    class="xref">Open Dynamic Allocation and Flexible Priorities</a>).
    Although not recommended, disabling Allow
    RTB Competition will restrict competition in the auction to
    only direct line items.
    

    <b>Note:</b> Disabling
    Allow RTB Competition can
    negatively affect your overall yield.
    Allow RTB Competition is not
    available for line items with
    Exclusive delivery type. Line
    items with Exclusive delivery type
    take precedence over Open Market (or RTB) demand.

    

9.  Roadblocking: You can enable
    roadblocking to serve multiple creatives together on the same page.
    In cases where managed publishers are using <a
    href="seller-tag/seller-tag/seller-tag.md"
    class="xref" target="_blank">Seller Tags (AST)</a> to conduct a
    single auction for multiple ad slots on a page, you can serve
    multiple linked creatives by enabling
    Roadblocking for the line item.

    One creative for each size must be eligible to serve on the page.
    All creatives will serve if ad slots are available. If more than one
    creative per size exists, creatives will rotate through a single
    slot.

    Delivery of the Master Creative is
    used for pacing and budgeting. Defining
    Master Creative and
    Companion Creative sizes is used
    for forecasting and reservation purposes. Roadblock delivery is
    based on the creatives associated with the line item. For more
    information, see
    <a href="target-your-inventory-with-roadblocking.md"
    class="xref">Target Your Inventory with Roadblocking</a>.

    To enable Roadblocking:

    1.  Click Enable Roadblocking to
        the on position.
    2.  Select a Master Creative size
        from the drop-down.
    3.  Select a Companion Creative
        size from the drop-down.
    4.  (Optionally) Click + Add
        Companion to include additional
        Companion Creative sizes.

10. Ad Size: When you first create a
    GDALI, it's possible that you won't have creatives available for it
    yet. To enable you to forecast on your line item before you have
    available creatives, you can use the Ad
    Size field to identify the size (or sizes) of the impression
    you intend to deliver on. Forecasts (displayed in the forecasting
    footer at the bottom of the Create
    New Guaranteed Delivery Line Item screen) will take into
    account the Ad Size specified
    here, as well as the sizes of any actual creatives associated with
    the line item. By default, this field displays "Any Size",
    indicating that the line item may forecast and reserve inventory
    based on all ad sizes.

    >

    The Ad Size values you choose are
    added to your targeting profile.
    

    <b>Warning:</b> The values you enter here
    could have an impact on delivery if they do not match the creatives
    associated to the line item. When you select ad sizes under
    Ad Size, you're targeting
    impressions of those sizes. If you then add creatives that don't
    match the Ad Size values you
    entered, you may be preventing your line item from serving. For
    example, if you select 300 x 250
    as the line item’s ad size and then add a "300 x 600" creative to
    the line item, the ad call must contain both
    300 x 250 and
    300 x 600 as available
    Ad Size values on the ad call for
    your line item to be eligible to serve. To be eligible, the ad call
    must satisfy the targeting of the line item which includes both the
    ad size(s) and the creative size(s).

    

    

    If you enable Roadblocking, the
    Ad Size field will no longer be
    displayed and Master Creative and
    Companion Creative sizes selected
    under Roadblocking will be used
    instead of Ad Size values.
    Forecasting on roadblocks will check availability for each of the
    Master Creative and
    Companion Creative sizes and
    return the value of the impression availability for the creative
    size with the lowest availability.

    >

    To add ad size values:
    1.  Click in the Ad Size field,
        scroll or search for sizes, and select appropriate sizes (you
        can select more than one size at a time). You can also add more
        values to the list of Selected
        Sizes by clicking in the Ad
        Size field and selecting additional sizes.)
    2.  (Optional) To add custom ad sizes, click
        + Add Custom Size, enter
        appropriate values for Width
        and Height, and click
        + Add.

    



>

## Budgeting & Scheduling

>

The Budgeting & Scheduling section
defines your financial relationship with an advertiser, including:

- Budget - How much the advertiser has
  allocated for you to spend (in impressions or percentage).
- Revenue Type - The way the
  advertiser has agreed to pay you
  (CPM,
  Viewable CPM, or
  Fixed Fee).
- Pacing - How the budget is allocated
  over the duration of the advertising campaign.



Depending on the configuration of the parent insertion order, different
configuration options will be available to you here. You can view the
settings inherited from insertion order(s) in the panel to the right.
This includes the Budget
Type, Currency, Total
Lifetime
Budget, Pacing, Start
Date, and End Date. If you have
multiple insertion orders associated with a line item, use the arrows to
scroll through them.

To set up line item budgeting and scheduling:

1.  Revenue Type: Select
    a Revenue Type to define how the
    advertiser has agreed to pay you:
    <table
    id="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317"
    class="table frame-all">
    <caption><span class="table--title-label">Table 1. <span
    class="title">Revenue Types</caption>
    <colgroup>
    <col style="width: 50%" />
    <col style="width: 50%" />
    </colgroup>
    <thead class="thead">
    <tr class="header row">
    <th
    id="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__1"
    class="entry colsep-1 rowsep-1">Option</th>
    <th
    id="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__2"
    class="entry colsep-1 rowsep-1">Description</th>
    </tr>
    </thead>
    <tbody class="tbody">
    <tr class="odd row">
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__1"><span
    class="ph uicontrol">CPM</td>
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__2">Select
    this revenue type if the advertiser will pay you a flat amount per
    thousand impressions. Enter the amount that the advertiser will pay you
    per thousand impressions in the Revenue
    Value field.</td>
    </tr>
    <tr class="even row">
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__1"><span
    class="ph uicontrol">Viewable CPM</td>
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__2">Select
    this revenue type if the advertiser will pay you a flat amount per
    thousand viewable impressions. Only measured viewable impressions will
    be counted, according to Xandr viewability
    measurement. Enter the amount that the advertiser will pay you per
    thousand viewable impressions in the Revenue
    Value field.</td>
    </tr>
    <tr class="odd row">
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__1"><span
    class="ph uicontrol">Fixed Fee</td>
    <td class="entry colsep-1 rowsep-1"
    headers="create-a-guaranteed-delivery-line-item-gdali__table-5f0c1cf0-7290-488b-9873-eb0862f4f317__entry__2">Select
    this revenue type if the advertiser will pay you a fixed amount on a
    specified allocation date. That date can be daily (<span
    class="ph uicontrol">Cost per day) or at the end of the flight
    (One time allocation). If you pay
    managed publishers a percentage of your revenue, their share will be
    paid out on the allocation date, after which the line item will no
    longer be editable. Note that the fixed fee will not be booked on the
    allocation date unless the line item has served at least one impression.
    If you select a revenue type of Fixed
    Fee, you will need to select one of the following:
    <ul>
    <li>Cost per day - the advertiser will
    pay a flat fee each day throughout the flight. The specified daily
    revenue value will not be allocated on any day that the line item has
    not served at least one impression. Enter the amount an advertiser will
    pay you each day in Revenue Value per
    Day.</li>
    <li><p>One time allocation - the
    advertiser will pay out the full amount of the fee on the end date of
    the flight. Revenue will be allocated proportional to impression
    delivery throughout the line item’s flight.</p>
    
    <b>Note:</b> The end date must be within one
    month (30 days) of the start date.
    
    <p>Enter an amount an advertiser will pay in <span
    class="ph uicontrol">Revenue Value and select a date in <span
    class="ph uicontrol">Allocation Date. The allocation date must be
    after the end date of the flight.</p></li>
    </ul>
    
    <b>Warning:</b> Guaranteed delivery line items
    with a Fixed Fee revenue type must
    have a start date time of 12:00 AM.
    </td>
    </tr>
    </tbody>
    </table>

    <span class="table--title-label">Table 1.
    <span class="title">Revenue Types

2.  Flight: Set up a flight by
    specifying its start and end dates, budgeting, and pacing. Flights
    are subject to the following constraints:

    - Each line item must have a single flight.
    - Flight dates must fall inside the billing period dates of the
      parent insertion order(s).

    To set a flight, enter a start and end date, and adjust the start
    and end time as required. Both a start and end date are required for
    GDALIs.

    >

    To set flight budgeting, enter a budget in
    the Budget field:
    - For Impression delivery type,
      budgets are based on Impressions
      or Viewable Impressions based on
      the Revenue Type selected.
      

      <b>Warning:</b> GDALIs are designed to
      deliver their budgets evenly across their flight dates. Although
      budgets of any size may be configured on the line item, setting
      daily impression budgets of 1,000 impressions or less may result
      in the line item spending its lifetime budget prior to its
      designated end date.

      
    - For Exclusive delivery type,
      delivery is based on a percentage (%) of targeted impressions.
      Input the integer value from 1-100 in the appropriate field.

    

    Pacing: Set the flight pacing by
    entering a value in the Pacing
    field. Pacing percent determines how your flight budget is delivered
    over the lifetime of your flight as follows:

    - If the pacing is equal to 100%, the budget is split evenly over
      every day in the flight.
    - If the pacing is higher than 100%, the flight spends more per day
      at the beginning of the flight and less at the end.
    - If the pacing is lower than 100%, the flight spends less per day
      at the beginning of the flight and more at the end.

    The Pacing value may be 50-150 and
    defaults to 105% to assist delivery of GDALIs.

    Budget Overview: Once a flight is
    configured, the Budget Overview
    chart provides a visualization of how the pacing percent is expected
    to impact delivery.

    For more information on flight pacing, see
    <a href="guaranteed-delivery-pacing.md" class="xref">Guaranteed
    Delivery Pacing</a>.

3.  Underspend Catch-Up: Select an
    option:
    - Evenly: Unspent daily budget
      will be distributed evenly throughout the remainder of the flight.
    - ASAP (default): Unspent daily
      budget will be spent as quickly as possible based on your line
      item settings to ensure the highest probability of delivering your
      budget in its entirety.

4.  Daypart: Add any necessary
    settings to target users based on the day and time when they see
    impressions. For more information, see
    <a href="daypart-targeting.md" class="xref">Daypart Targeting</a>.



>

## Inventory and Environment Targeting

1.  Device Type: GDALIs target the
    following device types by default:

    - Desktops
    - Tablets
    - Mobile
    - CTV

    You can narrow the device types you are targeting by unchecking any
    device type you do not want to target.

2.  Inventory Type: Select an
    inventory type from the Inventory
    Type drop-down:
    - App & Web - Runs on both
      inventory types (default setting).
    - App Only - Runs in applications
      installed on mobile tablets, phones, and Windows 8 devices.
    - Web Only - Runs on standard
      websites and those optimized for browsers on mobile devices.

3.  Inventory: You can target or
    exclude the following inventory:
    - Universal Categories: These are
      defined by Xandr. When
      Xandr reviews inventory, we apply these
      categories based on the inventory's content. For example, a car
      dealership placement group would be assigned to the "Autos &
      Vehicles" category. Sellers can apply universal categories when
      self-reviewing inventory as well.
      

      <b>Note:</b> When targeting more than
      one universal category, the categories have an OR relationship.
      For example, if you target the "News" and "Finance" categories,
      you will bid on inventory that is in either category. The
      inventory does not need to be in both categories.

      
    - Custom Categories: These are
      defined by sellers. Sellers create these and apply them to slices
      of their inventory to package their inventory for specific buyers
      to target. Manage your member’s custom categories in the
      Network tab (for more
      information, see
      <a href="manage-custom-content-categories.md" class="xref">Manage
      Custom Content Categories</a>).
      

      <b>Note:</b> When targeting more than
      one custom category, the categories have an OR relationship. For
      example, if you target two custom categories, you will bid on
      inventory that is in either category. The inventory does not need
      to be in both categories.

      
    - Direct Inventory: You can narrow
      your targeting to include or exclude specific managed publishers,
      placement groups (sites), or placements. Select
      Browse to search by name or ID
      of an object, or Text to paste a
      list of IDs.

4.  Key/Value: You can configure your
    own keys and their corresponding values to make full use of
    publisher data and help advertisers reach their intended audience.
    Xandr allows you to create custom key/value
    sets that can be used in advertising campaigns to target specific
    types of customers.

    To edit key/value sets, click the pencil icon next to
    Key/Value to open the
    Key/Value Targeting screen.
    For more information, see
    <a href="key-value-targeting.md" class="xref">Key/Value Targeting</a>.

5.  Video: When the
    Ad Type (in the
    Basic Settings section) is
    Video, the
    Video option will be available to
    configure Video Targeting. The
    default setting for Video
    Targeting is Any position; any
    playback method; any player width; any ad pod position. To
    edit Video Targeting settings,
    click the icon next to Video to
    open the Video Targeting
    screen. For more information on configuring
    Video Targeting, see
    <a href="video-targeting.md" class="xref">Video Targeting</a>.

6.  System: You can target users based
    on their operating systems, browsers, language, device model, or
    carrier. To edit system targets, click the pencil icon next to
    System to open the
    System Targeting screen. For
    more information, see
    <a href="system-targeting.md" class="xref">System Targeting</a>.

7.  Page Properties: You can target
    impressions based on the position of the creative tag on the page or
    based on values passed in the query string of the ad call. To edit
    page properties, click the pencil icon next to
    Page Properties to open the
    Page Properties Targeting
    screen. For more information, see
    <a href="page-properties-targeting.md" class="xref"
    title="Through page properties targeting, you can target impressions based on the position of the creative tag on the page or based on values passed in the query string of the ad call.">Page
    Properties Targeting</a>.



>

## Audience Targeting

1.  Geography: (Optional)You can
    target users based on one or more geographic elements such as
    country, region, city, metro code, or postal code. You may
    optionally set up other geographic inclusions or exclusions.

    To set up geography targeting:

    1.  Click in the Geography field
        and select any applicable checkboxes for country-level
        targeting.
    2.  (Optional) Click + Additional Geo
        Restrictions to set up or import additional geographical
        restrictions if necessary (for more information, see
        <a href="additional-geo-restrictions-ali.md" class="xref"
        title="In addition to country, you can also restrict the impressions you target based on other geographic details of the users viewing them.">Additional
        Geo Restrictions</a>).

2.  Audience & Location Segments: You
    can set up a line item to target segments from third-party data
    providers or segments you've created. To set up audience and
    location segments:
    - My Audience Segments: Click the
      arrow to open the My Segments
      tab of the Add
      Segments screen (for more information, see
      <a href="set-up-segment-targeting-on-a-line-item.md" class="xref"
      title="You can set up a line item to target segments that you&#39;ve created, as well as segments from third-party data providers.">Set
      Up Segment Targeting on a Line Item</a>).
    - Third Party Segments: Click the
      arrow to open the Third Party Segments
      tab in the Add Segment
      screen (for more information, see
      <a href="set-up-segment-targeting-on-a-line-item.md" class="xref"
      title="You can set up a line item to target segments that you&#39;ve created, as well as segments from third-party data providers.">Set
      Up Segment Targeting on a Line Item</a>).

3.  Frequency and Recency: To set
    frequency and recency caps, set
    Caps to the on position (for more
    information, see
    <a href="frequency-and-recency-caps.md" class="xref"
    title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
    and Recency Caps</a>):
    - To set Frequency (how many):

      1.  Enter a number for imps per (impressions per interval) and
          select an appropriate interval in the drop-down.
      2.  (Optional) Click + Add another
          cap to add additional frequency caps.

      For more information, see
      <a href="set-a-frequency-cap.md" class="xref"
      title="You can set frequency caps from the Audience &amp; Location Targeting section within the Create New Line Item and Edit Line Item screens.">Set
      a Frequency Cap</a>.

    - To set Recency (how often) (for
      more information, see
      <a href="set-a-recency-cap.md" class="xref"
      title="You can set recency caps from the Audience &amp; Location Targeting section within the Create New Line Item and Edit Line Item screens.">Set
      a Recency Cap</a>):

      1.  Click + Add another cap.
      2.  Enter a whole number after 1 imp
          per and select an appropriate interval in the
          drop-down.

      For more information, see
      <a href="set-a-recency-cap.md" class="xref"
      title="You can set recency caps from the Audience &amp; Location Targeting section within the Create New Line Item and Edit Line Item screens.">Set
      a Recency Cap</a>.

    - Serve only 1 imp per page: Set
      this to the on position if you want to limit the number of
      impressions that an individual advertiser can serve on a page in
      multi-tag auctions.

    - Include users without cookies:
      Set this to the on position if you want to serve impressions to
      unidentified users.
      

      <b>Note:</b> Serving to unidentified
      users ignores frequency and recency caps for those users.

      

4.  Demographics: Publishers may
    optionally pass the age or gender of users in the query string of
    their ad calls. In these cases, you can target users based on this
    information. To set up demographic targeting:
    1.  Click on the pencil icon under
        Demographics to open the
        Demographics Targeting
        screen (the default setting is any
        age; any gender).
    2.  Select appropriate Age and
        Gender settings (for more
        information, see
        <a href="demography-targeting.md" class="xref">Demography
        Targeting</a>).



>

## Creatives

1.  Creative Rotation: You can set the
    rotation strategy for multiple creatives of the same size that will
    be trafficked to the GDALI. Select one of the following options:

    - Auto-optimize creative weight -
      The creative with the highest click-through-rate (CTR) delivers
      the most.
    - Evenly weight creatives
      (default) - Our system will evenly serve creatives of the same
      size.
    - Manually weight creatives -
      Rotation is based on a user-supplied weight.

    For more information, see
    <a href="associate-creatives-with-a-line-item.md" class="xref"
    title="From the Creatives section, you can associate creatives with an augmented line item (ALI), schedule when the creatives will serve, determine how the creatives will rotate through line item inventory, and optionally add creative landing page URLs.">Associate
    Creatives with a Line Item</a>.

2.  Associated Creatives: You can
    associate appropriate creatives to the GDALI. For more information,
    see <a href="associate-creatives-with-a-line-item.md" class="xref"
    title="From the Creatives section, you can associate creatives with an augmented line item (ALI), schedule when the creatives will serve, determine how the creatives will rotate through line item inventory, and optionally add creative landing page URLs.">Associate
    Creatives with a Line Item</a>.

3.  Landing Page URL: Enter a URL for
    a landing page that the user will be redirected to upon clicking
    each creative.



>

## Programmable Splits

You can use programmable splits to manage creative allocation across a
subset of the line item’s targeted inventory. Splits are recommended if
you have sophisticated targeting requirements. For more information, see
<a href="working-with-programmable-splits.md" class="xref">Working
with Programmable Splits</a>.

To set up programmable splits for a line item, see
<a href="configure-a-programmable-split.md" class="xref"
title="You can use programmable splits to refine line item targeting and dynamically adjust bids, budget allocation, and creative allocation across a line item&#39;s targeted inventory. Splits are recommended if you have sophisticated targeting requirements.">Configure
a Programmable Split</a>.



>

## Reporting Labels & Comments

1.  Reporting Labels: You can
    optionally assign custom reporting labels
    (Trafficker,
    Sales Rep, and
    Line Item Type) to a line item so
    that you can create reports tracking metrics across multiple line
    items, as well as add comments to a line item for your reference.
    >

    To add reporting labels, add the appropriate values for
    Trafficker,
    Sales Rep, and
    Line Item Type in the
    Reporting Labels section.
    

    <b>Note:</b> It will take new labels about
    30 minutes to appear in reporting.

    

    
2.  Comments: To add comments, add the
    appropriate text in the Comments
    field.
    

    <b>Note:</b> Comments are for reference
    only and will not affect delivery. Comments will not appear in
    reporting.

    



>

## Forecasting

The forecasting footer displays the Available
Impressions and Total Capacity
for the line item.

Availability and capacity data automatically refreshes when you populate
or edit a field that impacts forecasting. These fields include flight
dates, budget, frequency caps, and targeting configuration. To manually
refresh forecasting data, click
Refresh to the right of the
forecasting footer.

Click Show Details to display
Contending Line Items and a graph of
Availability and Capacity by day
over the line item’s flight.



>

## Save the GDALI

>

To save the GDALI, click one of the following options in the
Save and Reserve drop-down (in the
upper-right of the Create New Guaranteed
Delivery Line Item screen):

- Save and Reserve (default) – Save
  the line item settings and reserve the inventory so the impressions
  cannot be allocated to other line items.
- Save (Not Reserved) - Save the line
  item but do not reserve the inventory. If the line item was previously
  “reserved,” selecting this option will cancel the reservation making
  the previously reserved inventory available to other line items.
- Reserve and Duplicate – When this
  option is chosen, the line item will be saved and reserved, and you
  will be redirected to a new Create New
  Guaranteed Delivery Line Item screen with the previous line
  item's settings pre-populated.
- Reserve and Create New Line Item -
  When this option is chosen, the line item will be saved and reserved,
  and you will be redirected to a new, blank
  Create New Guaranteed Delivery Line
  Item screen under the same advertiser.





>

## Related Topics

- <a href="guaranteed-delivery-gdali.md" class="xref"
  title="Guaranteed delivery line items help you meet delivery goals and serve budgets evenly and in full.">Guaranteed
  Delivery (GDALI)</a>
- <a href="guaranteed-delivery-line-item-faq-gdali.md" class="xref"
  title="Answers to common questions about guaranteed delivery augmented line items (GDALI).">Guaranteed
  Delivery Line Item FAQ (GDALI)</a> (login required)






