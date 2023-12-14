---
Title : Mediation Bids
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
Microsoft Monetize Ad Server customers.
---


# Mediation Bids







<b>Note:</b> Mediation is available only to
Microsoft Monetize Ad Server customers.



Every network must have one or more bids associated with it. A bid
represents the amount you think a mediated network will pay for your
inventory. Use this screen to create one or more bids. When you create a
bid, you will specify details such as the bid's price and targeting
settings.

For more information about how mediation works, see
<a href="mediation-selling-your-inventory-through-mediation.md"
class="xref">Selling Your Inventory Through Mediation</a>.





## Step 1: Go To The Create Bid Page

Select
Mediation
\> Bids from the top-level
navigation menu. The Bids Overview
screen appears.




## Step 2: Set Bid Targeting



1.  Click the Create Bid button to
    start creating bids. This takes you to the
    Create New Bid screen.
2.  The settings you define in the
    Targeting section will apply
    to **all** of the bids you create in this batch.
3.  In the Bids section, you can
    set bid targeting and click Add Another
    Bid to create multiple bids using the same targeting. This
    feature is designed to help you create many bids efficiently.



<b>Tip:</b> **Bid Targeting Patterns and
Practices**



Common bid targeting patterns and practices include:

- Target 1 bid per placement for an easy to manage workflow.
- Alternatively, have a bid target an entire website or mobile app.
- A good rule of thumb is that the broader your bid's supply targeting,
  the more likely you should be to use system targeting. For example, if
  you target RON (run of network), you may want to target only Android
  devices.
- More advanced users may want to target different bids by geographic
  area. For example, one bid may be set up to target UK inventory, while
  another targets US inventory.





**Set Inventory Targeting**





Click the Edit button next to
Targeting to set the targeting for
this bid. Select the tabs for the types of inventory you want to target:

- **Direct Inventory**
  - The Publishers lists shows all
    of your managed publishers. You can either include or exclude
    publishers or drill into a publisher to view its placement groups.
  - The Placement Groups lists
    shows all of the sites under your managed publishers. You can either
    include or exclude sites or drill into a site to view its
    placements. Note that when you exclude a publisher, its sites are
    not available for further inclusion or exclusion.
  - The Placements list shows all
    placements under your managed publishers and sites. You can either
    include or exclude placements.
    

    <b>Note:</b> When you exclude a publisher
    or site, its placements are not available for further inclusion or
    exclusion.

    
  - Text Mode lets you target
    managed objects by ID. To do so, switch into
    text mode, select the type of ID,
    enter the IDs separated by commas, space, or lines, and then select
    Include or
    Exclude.

- **Universal Categories**
  - The Categories lists shows all
    top-level universal categories defined by Xandr. You can either
    include or exclude top-level categories or drill into a category to
    view its child categories.
  - The Sub-Categories list shows
    all child universal categories in the context of their parent
    categories. You can either include or exclude sub-categories.
    

    <b>Note:</b> When you exclude a top-level
    category, its sub-categories are not available for further inclusion
    or exclusion.
    When targeting more than one universal category, the categories have
    an OR relationship. For example, if you target "Custom Category 1"
    and "Custom Category 2", you will bid on inventory that is in
    *either* category. The inventory does not need to be in both
    categories.

    

- **Custom Categories**

- **Domain Lists**

- **Specific Domains**
  - Target up to 25 specific domains as follows:
    1.  Enter the domains in a comma-, space-, or line-separated list.
    2.  Click Add Domains.
    3.  Choose whether to Includeor
        Exclude the domains.
        

        <b>Note:</b> It is not possible to
        include some domains and exclude others; all targeted domains
        must be either included or excluded.

        

- **App List**
    

    <b>Note:</b> It is not possible to include
    some app lists and exclude others; all targeted app lists must be
    either included or excluded.

    

- **Specific Apps**

  - Target up to 25 specific apps as follows:
    1.  Enter the app IDs in a comma-, space-, or line-separated list.
    2.  Click Add Apps.
    3.  Choose whether to Include or
        Exclude the app IDs.
        

        <b>Note:</b> It is not possible to
        include some app IDs and exclude others; all targeted app IDs
        must be either included or excluded.

        

  To view a summary of the targeting you have applied to the bids, click
  the Summary tab. To continue
  editing, return to any of the other tabs, or click
  Add to close the
  Inventory targeting dialog and
  save all inventory targeting.

**Set Geography Targeting**



Click the Edit button next to
Geography to set in which geographic
areas this bid's creatives will serve. You can include or exclude areas
with increasing precision as you drill down from country to region to
city.

**Set System Targeting**

Click the Edit button next to
System to set on which and
operating systems this bid will serve. You can include or exclude a bid
from serving on these systems. OS
Families include all versions of an operating system. You can
also target specific versions in the
OSes tab.




## Step 3: Define Per-Bid Settings

In the Bids section, you can
create one or more bids. Every bid has a few settings that are unique to
that bid's network, such as Ad ID or
similar. These network-specific fields must be filled in with the
information required by that network. If you want to create more bids,
click Add Anosther Bid.

The following information is required for every bid:

- Select a Network: Choose an eligible
  network from the dropdown. Depending on the type of network, several
  new fields may appear to provide the unique information about the
  creatives you are providing for that network.
  

  <b>Note:</b> For some networks, the
  Generate Passback button allows you
  to generate a web passback that can be pasted into the ad network to
  allow impressions to be passed to the next system in line for bidding.
  The format of the passback depends on the type of network: it may be
  raw JavaScript, a URL, HTML, or a script that writes JavaScript. See
  <a href="mediation-integrating-for-mediation.md"
  class="xref">Integrating for Mediation</a> for more information.

  
- Bid Name: You can name the bid
  whatever you want (we recommend something descriptive).
- Bid CPM: This is the price you
  estimate that this network will pay for your inventory.
- Auto CPM Update: For bids from
  networks with Report Sync enabled, turn this feature
  ON to have the bid price updated
  daily based on statistics such as third-party eCPM and fill rate. The
  bid price is updated daily at approximately 12 noon UTC.
  

  <b>Note:</b> Because it uses real-time data
  from the third-party networks, Auto CPM Update is only available for
  ad networks with Enable Report Sync selected.

  
- Media Type: The media type for the
  creative: Banner, Interstitial, or Native In-feed. If the network
  supports both banners and interstitials, you can select an
  Interstitial creative instead of a Banner (the default).
- Ad Size: If your Media Type is set
  to banner, you must select the ad size from a dropdown.
- Support SSL: When you are entering
  your ad tags, checking this box will reveal a secure ad tag field. You
  must then add the correct html ad tag for each field.


<b>Note:</b> This setting applies only to
display and mobile web creatives.



**Custom Mobile Network Bids**

If you create a bid for a custom mobile network, you have to enter some
information that will link up your bid with a third-party network's
mobile SDK for mediation.



- Support SSL: Check this box to allow
  the mediated bid to serve ads to the device over HTTPS.

- Device Class Name: This changes
  depending on whether the SDK is for an Android or iOS device. In
  either case, you will enter a class name taken from the code for the
  SDK. For example, it might be something like `MediatedBannerAdView`.
  This field is optional from our perspective, but it may be required
  for your integration with this network to function.

- Network Parameter: This field
  contains arbitrary data. It is optional from our perspective, but it
  may be required for your integration with this network to function.

- Network ID: This is a unique ID that
  represents the place in an app where an ad can be shown. We call it a
  "placement", but many networks use other terminology. This field is
  required.






## Step 4: Define Settings that apply to all Bids

The following settings will apply to all of the bids you create in the
current session.



**Basic Settings**

- Bid State: Choose whether the bid is
  Active (can participate in auctions)
  or Inactive (cannot participate in
  auctions).

- Bid Optimization: Set this to
  ON to allow our optimization
  algorithms to adjust the bid amount for you based on often and how
  recently a user has seen an impression. As a user sees an impression
  with increasing frequency and recency, the CPM values generated by
  that user tend to drop. Our optimization algorithm takes note of the
  frequency and recency and adjusts the bid price in order to keep
  consistent with the new value. This is set to
  ON by default.

- Estimated Revenue Tracking: Set this
  to ON to allow the system to track
  the estimated revenue recorded against this bid. The estimated revenue
  value is the bid price divided by the number of impressions served as
  counted by your ad server. Note that if you choose to set this to
  OFF, the
  Revenue option in the
  Daily Budget Cap section becomes
  unavailable. This is set to ON by
  default.

- Waterfall Label: If you are using
  waterfall labels, a way of tracking bids that target the same
  inventory/audience combination, type the label for this bid. You can
  filter bids by waterfall label in the Bids Overview.



**Advanced Settings**



The settings under the Advanced
Settings tab will be applied to each of the bids you create in
this session.

- Frequency: You can determine the
  limits for how often a bid will serve to each user. You can also cap
  how many impressions a bid can serve over its lifetime.

- Flight Dates: You can limit the
  lifetime of a bid. For example, you may want to create bids that only
  run during particular holidays.

- Daily Budget Cap: You can limit the
  bid to a certain number of filled impressions or a certain amount of
  spend per day. Note that unfilled impressions (passbacks) do not count
  towards the budget cap.

- Segment: Click
  Edit next to
  Segment to limit the bid to target
  users by the audience segments they occupy.

- Daypart: Click
  Edit next to
  Daypart to limit the bid based on
  the day and time when users see the impressions.

- Response timeout: You can accept the
  default timeout from the mediated network, or set a different timeout.
  Some considerations:

  

  - If the default timeout is too low, you could lose revenue from bids
    earlier in the waterfall.
  - If the default is too high, page load times may suffer, or you may
    be limiting the number of sequential bids that can participate
    within a single mediation waterfall.

  





>

## Step 5: Save your settings

Click the Save button to make sure
your new bids are saved in the system.




## Related Topics



- <a href="mediation-how-auctions-work-for-sellers.md" class="xref">How
  Auctions Work for Sellers</a>
- <a href="mediation-networks.md" class="xref">Mediation Networks</a>








