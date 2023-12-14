---
Title : Create a Campaign
Description : This page describes how to create a campaign to run on web inventory and
ms.date: 10/28/2023
on mobile apps. For instructions on creating a campaign to run on deals,
---


# Create a Campaign



This page describes how to create a campaign to run on web inventory and
on mobile apps. For instructions on creating a campaign to run on deals,
see <a href="create-a-deal-campaign.md" class="xref">Create a Deal
Campaign</a>.

Creating campaign involves defining:

- **Media Budget** - How much you are willing to spend on buying
  inventory (in dollars or impressions).
- **Buying Strategies** - Whether you want to run the campaign on your
  own managed publishers (direct), on inventory from other networks and
  external supply sources (third-party), or on both. For third-party
  buys, you define exactly how you want to pay publishers and value
  bids.
- **Targeting** - What specific inventory you want to run on, and how
  precisely you want to target users (via frequency, segments,
  geography, OS, etc.).



<b>Important:</b>

**Automatic archiving of objects:** Campaigns that have not served or
been edited in more than 180 days and that are not scheduled to serve in
the future are automatically archived. If a campaign is in the
"archived" state, it cannot spend or be edited. However, it can still be
copied, deleted or used in reports (or exported for use in an external
reporting tool). In addition, once an object is archived, any child
objects it may own (e.g.,
Insertion
Order \> Line Item \>
Campaign) will also be archived
and no additional child objects may be created beneath the archived
parent object. For details, see
<a href="automatic-archiving-of-buy-side-objects.md"
class="xref">Automatic Archiving of Buy-Side Objects</a>﻿.



Before You Begin

- **Prerequisite** - You have already created the line item under which
  you want to create your campaign. The line item defines your financial
  agreement with an advertiser, whereas the campaign specifies how to
  spend the money to make good on your agreement. See
  <a href="create-a-standard-line-item.md" class="xref">Create a
  Standard Line Item</a> for more details.
- **Recommendations** - If you plan to target user segments and/or
  domain lists, make sure the relevant segments and domain lists have
  been created before you start campaign setup. See
  <a href="create-a-segment-pixel.md" class="xref">Create a Segment
  Pixel</a> and
  <a href="working-with-targeting-lists.md" class="xref">Working with
  Targeting Lists</a> for more details.

Retargeting versus audience buying campaigns

Audience Buying

Audience buying is a basic kind of campaign setup used by many buyers to
target a specific segment of users. Audience buying campaigns are
**motivated by reaching a group of unique user IDs**, designed to follow
them around within the course of a browsing session. The assumption is
that this group of unique user IDs will have a higher likelihood of
engaging or clicking an ad, and drive more traffic to your advertiser's
offer or website. This is a very commonly employed strategy for direct
response campaigns. The segments used for this type of campaign are
usually acquired in one of two ways:

- Buying data segments from third-party data providers
- Collecting your own data that is synced with
  Xandr user IDs

The procedures outlined on this page do not describe the different
methods for collecting data and assume that the buyer already has access
to the data when the campaign is being setup. Audience buying campaigns
feature a very simple setup and should have few restrictions on delivery
outside of the segment target.



<b>Important:</b> One of the main reasons that
Audience Buying campaigns fail to deliver is because the targeted
segments contain too small a pool of users. Therefore, if this occurs,
check segment loads. For third-party segments, traffickers will need to
reach out to the third-party as Xandr does not
have access to this segment load information. Also, if your daily budget
is less than $100, pacing may be affecting campaign delivery.



Retargeting

Retargeting campaigns are designed to drive users back to a website or
product page. For example, if a user has visited the page for a shoe
product, segmenting and retargeting this user on the exchange can help
drive the user back to the product page to complete a purchase. Buyers
employ this strategy to concentrate their buying on users they have
deemed valuable. Retargeting is also a valuable strategy if you have a
relationship with a premium publisher that sees high quality traffic. By
segmenting the users that visit your publisher's web property, you have
a valuable audience that you can retarget on third-party inventory. The
general process can be broken into two distinct steps: 1. Collect users
that visit a webpage (most likely will be that of a managed publisher)
into a segment. 2. Target that segment in an audience-buying campaign.

The usual case involves placing a segment pixel on a publisher's page to
collect users into that segment (e.g., using a piggyback pixel).
Sometimes, advertisers will have access to visitors to a page and will
push those audiences into the Xandr seat.
Retargeting involves working with publishers to collect users in a
segment and then targeting that segment in a campaign. Just like
audience buying, retargeting campaigns should have few restrictions on
delivery outside of the segment target.



<b>Important:</b>

If you are having delivery issues, first verify that the targeted
segment contains users by viewing segment loads or reaching out to the
third-party data provider. If your daily budget is less than $100,
pacing may be affecting campaign delivery.



Setup Procedure

The Advertisers screen should load by
default when you log in to Monetize. If you are
somewhere else in Monetize, click the
Advertisers tab from the top
navigation menu.

Step 1. Select the advertiser

Click the name of the advertiser under which you want to create a new
campaign. This takes you to the Advertiser
Details screen.

Step 2. Start a new campaign

On the Advertiser Details screen,
click Create New
 \>  Campaign. The
Create New
 \>  Campaign option can
also be accessed from the insertion order, line item, and campaign
screens under the advertiser. This opens the initial
Create New Campaign screen.

Step 3. Select the parent line item

In the Select a Line Item section,
select the line item under which you want to create your campaign and
then click Continue. If you are
creating your campaign directly from a line item or there is only one
line item associated with the advertiser, the line item is selected by
default.



<b>Note:</b> You can use the search field to
find a particular line item by name or ID. Also, all active and inactive
line items are listed by default, but you can use the filter to the
right of the search field to show just active or inactive line items.



Step 4. Select the campaign type

In the Campaign Type section, select
Buy direct/third-party inventory. This
will reveal the full workflow for setting up a campaign. You can expand
or collapse each section of the screen as you like. To expand or
collapse all sections at once, click the **Expand All** or
Collapse All link in the upper right.



<b>Warning:</b> Changing the campaign type
will reset your workflow and available targeting options.



Step 5. Enter basic details and flight dates

In the Basic Setup section, enter the
basic details and flight dates for the campaign.

- **Name** - Enter the name for the campaign. You will later be able to
  search for and report on the campaign using this name.
- **External Code** - If you want to report on the campaign using an
  external code (rather than the internal ID that
  Xandr assigns automatically), enter the code
  here.
- **State** - The state is set to "Inactive" by default to prevent the
  campaign from spending before all necessary settings and creatives are
  complete. You can set the state to "Active" at any time.
- **Flight Dates** - Set the start for the campaign and set an end date
  or select Run Indefinitely. Note
  that the time format (12-hour or 24-hour) and time zone are inherited
  from the advertiser. Enter or select the start and end dates and times
  for the campaign.



<b>Important:</b> If flight dates are set for
the parent line item, those dates take precedence; regardless of the
dates set for the campaign, the campaign will not start before the line
item start date and will not continue buying impressions after the line
item end date.





<b>Tip:</b> To further limit serving to
specific days and hours of the week, you can use
<a href="daypart-targeting.md" class="xref">Daypart Targeting</a>.



Step 6. Set the campaign budget

By default, your campaign media Budget is unlimited. If you prefer, you
can define exactly how much you are willing to spend on buying inventory
for the campaign. The budget can be in impressions or in media cost
(dollars). Note that media cost is in USD rather than the advertiser's
currency because USD is the currency in which
Xandr transacts.



<b>Important:</b> You can set budgets at the
insertion order and line item levels as well. Budgets at these levels
take precedence over a child campaign's budget; if they run out, the
campaign will stop buying impressions, whether or not it has reached its
own budget. For more details about budgeting and best practices, see
<a href="budgeting-and-pacing.md" class="xref">Budgeting and
Pacing</a>.



- **Lifetime** - This is the budget that you are willing to spend over
  the entire lifetime of the campaign. There are two options:
- **Custom** - Select this option to enter a specific amount of
  impressions or dollars.
- **Unlimited** - Select this option to leave your lifetime budget
  undefined.
  

  <b>Note:</b> If **Lifetime** budget is set
  to **Unlimited** and the line item and insertion order lifetime
  budgets are also set to **Unlimited**, severe overspend can occur.

  
- **Daily** - This is the budget that you are willing to spend on any
  single day. There are three options:  
  - **Custom** - Select this option to enter a specific amount of
    impressions or dollars. When you enter a custom daily budget, you
    must select one of the following options:
  - **Pace evenly throughout the day** - Select this option, otherwise
    known as "daily pacing", if you want to prevent your daily budget
    from being spent all at once by distributing your spend evenly by
    hour throughout the day. Note that if you use Daypart Targeting to
    restrict the hours during which the campaign can serve, daily pacing
    will adjust to distribute your spend evenly across only the targeted
    hours. For more details, see
    <a href="daypart-targeting.md" class="xref">Daypart Targeting</a>
    or <a href="daily-pacing.md" class="xref">Daily Pacing</a>.
  - **Spend as fast as possible** - Select this option if you do not
    want to pace your daily budget at all. Note that this option could
    lead to your entire daily budget being spent in a very short amount
    of time.
- **Pace Lifetime Budget** - Select this option to spread your lifetime
  budget evenly across your flight dates. As each day passes, the system
  spreads the remaining impression or media cost budget across the
  remaining days of the flight.
  - The system is not able to pace its spending if it does not have a
    budget amount, and the system must know the number of days in the
    campaign in order to apply the remaining budget amount equally for
    the remainder of the flight. Therefore, this option requires that
    you enter a **custom lifetime budget** and **select an end date**.
    For more details, examples, and best practices, see
    <a href="lifetime-pacing.md" class="xref"
    title="Lifetime pacing intelligently distributes a budget over the lifespan of a line item&#39;s flight.">Lifetime
    Pacing</a>.
- **Unlimited** - Select this option to leave your daily budget
  undefined.



<b>Note:</b> If you have enabled the unlimited
budget warning feature, you will not be able to set the budget for your
campaign to unlimited if the line item and (if applicable) insertion
order budgets are also set to unlimited. This feature prevents mistaken
overspend that can result when budgets are set to unlimited at all
levels. When the feature is enabled, to set your campaign budget to
unlimited, you must first limit the budget for either the insertion
order or line item associated with the campaign.

To enable this feature, speak to your Xandr
representative.



Step 7. Define the buying strategies

In the Buying Strategies section,
choose whether you want to buy direct inventory, third-party inventory,
or both. Direct inventory includes only inventory managed by your
network, whereas third-party inventory includes all inventory not
managed by your network that has been enabled for reselling (including
external supply partners such as Microsoft Advertising Exchange and
Google Ad Manager).

- <a href="create-a-campaign.md#ID-0000263e__p_ibm_qq5_1kb"
  class="xref">Buy Direct Inventory</a>
- <a href="create-a-campaign.md#ID-0000263e__p_ujd_rq5_1kb"
  class="xref">Buy Third-Party Inventory</a>

Buy Direct Inventory

To run the campaign on your own managed publishers or direct buys, check
the **Buy Direct Inventory** box. Then weight the campaign against other
direct campaigns and, if applicable, enable roadblocking.

- **Campaign Priority** - Since you have already paid for direct
  inventory, there is no need to input a buying strategy, but you can
  select a priority to weight the campaign against other direct
  campaigns within your account. The campaign with the highest priority
  will always win, even if a lower priority campaign bids more. For more
  information about managing priority, see
  <a href="bidding-priority.md" class="xref">Bidding Priority</a>.
  

  <b>Tip:</b> By default, campaign priority
  is 5. If you leave this default for all of your direct campaigns, no
  campaign will be given precedence over any other. As soon as you
  change the priority in one of your direct campaigns, however, ALL of
  your eligible campaigns are potentially impacted.

  
- **Enable Roadblocking** - In cases where your managed publishers are
  using Xandr's Seller Tag (AST) to conduct a
  single auction for multiple ad slots on a page, you can serve multiple
  linked creatives in response, also known as roadblocking. If a
  roadblock campaign is eligible, the campaign priority is
  effectively 11. There are three possible types of roadblocks:
  - **Normal Roadblock** - The number of creatives is greater than or
    equal to the number of ad slots.
  - **Partial Roadblock** - One creative for each size must be eligible
    to serve on the page. All creatives will serve if ad slots are
    available. If more than one creative per size exists, creative will
    rotate through a single slot.
  - **Exact Match** - The number of creatives is exactly equal to the
    number of ad slots.



<b>Important:</b> Roadblocking

Roadblocking is only available for campaigns buying exclusively direct
inventory and which are not associated with a parent line item that has
its booked revenue set to "CPC" or "CPA". Also, the partial and exact
roadblocking options are available only to some clients. For more
details, please see
<a href="target-your-inventory-with-roadblocking.md"
class="xref">Target Your Inventory with Roadblocking</a>.





<b>Note:</b> If roadblocking has been set at
the line item level, it's not available on the campaign.



Buy Third-Party Inventory

To run the campaign on inventory from other members of the
Xandr platform and from external partners and
exchanges, check the **Buy Third-Party Inventory** box. Then decide how
you want to pay for third-party inventory (per impression, per click,
and/or per conversion) and define exactly how you want to calculate your
bids. Note that the revenue type of the parent line item determines
which buying strategy options are available and, of those available,
which are recommended. For a detailed explanation of your options, see
<a href="buying-strategies.md" class="xref">Buying Strategies</a>.



<b>Warning:</b> Mobile Conversion Tracking

- Post-view conversions cannot currently be tracked across Safari mobile
  browsers or in apps. If you use the "Optimize to a predicted CPA goal"
  strategy, please do so only for post-click scenarios. For more
  information about why this is so, see
  <a href="technical-limitations-of-mobile-buying.md"
  class="xref">Technical Limitations of Mobile Buying</a>.
- Post-click conversion tracking works in mobile browsers just like it
  does in web browsers. In mobile apps, however, post-click conversions
  can be tracked only when the user performs the action (the conversion)
  from an app's built-in web view. After clicking an ad in an app, if
  the user converts in a separate mobile browser (after having closed
  the app), the correlation to the click in the app cannot be tracked.





<b>Note:</b>

- When your line item booked revenue is CPM but you want your campaign
  to optimize to a CPC or CPA goal, for best results, set a Performance
  Goal on your line item and use **Optimize to a % Margin of Booked
  Revenue** as your campaign buying strategy.
- For more information, please see
  <a href="using-performance-goals-with-cpm-booked-revenue.md"
  class="xref">Using Performance Goals with CPM Booked Revenue</a>.
- To learn about setting up Performance Goals on the line item, see Step
  6 of <a href="create-a-standard-line-item.md" class="xref">Create a
  Standard Line Item</a>.



- **Pay on a Per-impression (CPM) basis** - Select this option to pay
  publishers for every impression. This payment type is accepted by all
  sellers (Xandr sellers and external sellers)

- - **Optimize to a % margin of booked revenue** - Use this strategy to
    bid a % margin of the revenue that the advertiser pays you. For
    example, if your booked revenue is $1 CPM, and you set a bidding
    strategy margin of 25%, your campaign will bid $0.75. If your booked
    revenue type is a CPA or CPC goal, it will apply your desired margin
    and optimize to that predicted goal.
    - **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and
      lowest CPM dollar amount that you are willing to spend on an
      impression.
    - **Enable Cadence Modifier** - Under
      OTHER OPTIONS, check this box to
      vary your bid based on how often and recently users have seen your
      creatives. This feature is based on the idea that an ad is more
      effective (and therefore worth more) when a user hasn't seen it
      before or hasn't seen it many times or seen it recently. For more
      details, see <a href="cadence-modifier-and-the-chaos-factor.md"
      class="xref">Cadence Modifier and the Chaos Factor</a>.
  - **Optimize to a predicted CPA goal** - Use this strategy to vary
    bids based on the likelihood of an attributed conversion for each
    piece of inventory. This strategy uses the
    Xandr optimization engine.
    - **Bid $\_ post-click/post-view CPA** - Select the conversion pixel
      to which you want to optimize and enter the dollar amount per
      conversion that you want the optimization engine to aim for.
    - **Learn Budget** - The learn budget is the portion of your
      campaign budget that you want to commit to optimizing your
      campaign, which helps you quickly find slices of third-party
      inventory that provide a positive ROI. The first phase of this
      process is called Learn. You can set a lifetime learn budget of up
      to 100% of the campaign budget as well as a daily cap for
      learning. For more information about optimization and learning,
      see <a href="targeted-learn.md" class="xref">Targeted Learn</a>.
    - **Bid at most $\_ CPM in Learn Phase** - When your campaign starts
      to spend on new inventory, the optimization engine submits "learn"
      bids. If necessary, enter max CPM dollar amount for these bids.
      

      <b>Note:</b>
      When you set both a cap for learn bids and a max CPM for non-learn
      bids (next option), the lower of the two will be used for learn.

      
    - **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and
      lowest CPM dollar amount that you are willing to spend on an
      impression.
    - **Enable Cadence Modifier** - This option appears under
      OTHER OPTIONS and cannot be
      deselected. When optimizing to a predicted CPA goal, your bids
      will always vary based on how often and recently users have seen
      your creatives. This feature is based on the idea that an ad is
      more effective (and therefore worth more) when a user hasn't seen
      it before or hasn't seen it many times or seen it recently. For
      more details, see
      <a href="cadence-modifier-and-the-chaos-factor.md"
      class="xref">Cadence Modifier and the Chaos Factor</a>.
  - **Optimize to a predicted CPC goal** - Use this strategy to vary
    bids based on the likelihood of a click for each piece of inventory.
    This strategy uses the Xandr optimization
    engine.
    - **Optimize to $\_ per click** - Enter the dollar amount per click
      that you want the optimization engine to aim for when calculating
      bids.
    - **Learn Budget** - The learn budget is the portion of your
      campaign budget that you want to commit to optimizing your
      campaign, which helps you quickly find slices of third-party
      inventory that provide a positive ROI. The first phase of this
      process is called Learn. You can set a lifetime learn budget of up
      to 100% of the campaign budget as well as a daily cap for
      learning. For more information about optimization and learning,
      see <a href="targeted-learn.md" class="xref">Targeted Learn</a>.
    - **Bid at most $\_ CPM in Learn Phase** - When your campaign starts
      to spend on new inventory, the optimization engine submits "learn"
      bids. It is recommended to enter a max CPM dollar about for these
      bids. In doing so, you will avoid learning on inventory that is
      too expensive while not limiting yourself from optimized inventory
      sources that are worth higher prices. For more details and
      suggestion for using this feature, see Max Learn CPM.
      

      <b>Note:</b>
      When you set both a cap for learn bids and a max CPM for non-learn
      bids (next option), the lower of the two will be used for learn.

      
    - **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and
      lowest CPM dollar amount that you are willing to spend on an
      impression.
    - **Enable Cadence Modifier** - This option appears under
      OTHER OPTIONS and cannot be
      deselected. When optimizing to a predicted CPA goal, your bids
      will always vary based on how often and recently users have seen
      your creatives. This feature is based on the idea that an ad is
      more effective (and therefore worth more) when a user hasn't seen
      it before or hasn't seen it many times or seen it recently. For
      more details, see
      <a href="cadence-modifier-and-the-chaos-factor.md"
      class="xref">Cadence Modifier and the Chaos Factor</a>.
  - **Bid a base $\_ CPM** - Use this strategy to bid a fixed dollar
    amount.
    - **Base CPM $\_\_** - Enter the fixed dollar amount to bid per
      thousand impressions.
    - **Enable Cadence Modifier** - This option appears under
      OTHER OPTIONS and cannot be
      deselected. When optimizing to a predicted CPA goal, your bids
      will always vary based on how often and recently users have seen
      your creatives. This feature is based on the idea that an ad is
      more effective (and therefore worth more) when a user hasn't seen
      it before or hasn't seen it many times or seen it recently. For
      more details, see
      <a href="cadence-modifier-and-the-chaos-factor.md"
      class="xref">Cadence Modifier and the Chaos Factor</a>.
    - **Bid CPM: max $\_ CPM min $\_ CPM** - This option is available
      under OTHER OPTIONS only once
      you enable Cadence Modifier. Enter the highest and lowest CPM
      dollar amount that you are willing to spend on an impression.
  - **Target reach and delivery** - Use this strategy to bid the going
    platform rate for each piece of inventory.
    - **Auto-bid to win most platform impressions (ECP)** - Select this
      option to bid an estimate of the price that is likely to win most
      impressions from Xandr platform sellers
      based on historical bids and their success or failure. Since
      off-platform sellers (e.g., Google Ad Manager, Rubicon, etc.)
      conduct a secondary auction, bidding ECP does not necessarily
      ensure winning off-platform impressions.
    - **Auto-bid to win ~50% of platform impressions (EAP)** - Select
      this option to bid an estimate of the price that is likely to win
      about half of the impressions from Xandr
      platform sellers based on historical bids and their success or
      failure. Since off-platform sellers (e.g., Google Ad Manager,
      Rubicon, etc.) conduct a secondary auction, bidding EAP does not
      necessarily ensure winning half of off-platform impressions.
    - **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and
      lowest CPM dollar amount that you are willing to spend on an
      impression.
    - **Enable Cadence Modifier** - Under OTHER OPTIONS, check this box
      to vary your bid based on how often and recently users have seen
      your creatives. This feature is based on the idea that an ad is
      more effective (and therefore worth more) when a user hasn't seen
      it before or hasn't seen it many times or seen it recently. For
      more details, see
      <a href="cadence-modifier-and-the-chaos-factor.md"
      class="xref">Cadence Modifier and the Chaos Factor</a>.



<b>Note:</b>

If minimum margin is set on the line item, this will ensure campaigns
will bid at or below the minimum margin %. This setting effectively sets
a bid cap on your third-party campaigns.

- To learn how to enable minimum margin for campaigns targeting direct
  inventory, see
  <a href="manage-network-priorities.md" class="xref">Manage Network
  Priorities</a>.
- To learn about how to balance margin and delivery, see our
  <a href="using-minimum-margin-to-balance-margin-and-delivery.md"
  class="xref">Using Minimum Margin to Balance Margin and Delivery</a>.
- To learn how to set minimum margin on the line item, see
  <a href="create-a-standard-line-item.md" class="xref">Create a
  Standard Line Item</a>.





<b>Note:</b>

The ability to combine CPM booked revenue with either the **Pay on a
Per-click (CPC) Basis** or the **Pay on a Per-conversion (CPA) Basis**
buying strategies is being deprecated soon. Although this combination
will remain functional for existing campaigns, you will no longer be
able to use this combination on new campaigns or duplicate existing
campaigns that use it. For best results, set a **Performance Goal** on
your line item and use **Optimize to a % Margin of Booked Revenue** as
your campaign buying strategy.

- For more information, please see
  <a href="using-performance-goals-with-cpm-booked-revenue.md"
  class="xref">Using Performance Goals with CPM Booked Revenue</a>
- To learn about setting up Performance Goals on the line item, see Step
  6 of <a href="create-a-standard-line-item.md" class="xref">Create a
  Standard Line Item</a>.



Step 8. Show to users without cookies

To target users that you have not seen before and users who have cleared
their cookies, check the **Show to users without cookies** box under
Buying
Strategies  \>  OTHER
OPTIONS.



<b>Tip:</b> If using frequency targeting for
this campaign, you must also check the **Show to users without cookies**
box in the Frequency section of the
**Targeting** area. For more details, see Frequency Targeting.



Your campaign will show ads to users without cookies by default except
when conversion tracking is enabled at the line item level (one or more
conversion pixels are attached to the line item). In this case,
targeting users without cookies is not the default because we cannot
attribute conversions back to an impression view or click when users do
not have cookies.



<b>Important:</b>

Cookieless Users on Mobile Devices

- Targeting cookieless users does not affect mobile app targeting.
  Almost all in-app inventory has a device ID associated with it; this
  device ID is then associated with a cookie from
  Xandr.
- For mobile web campaigns, checking **Show to users without cookies**
  is currently the only way to serve ads to Safari users, since Safari
  disables third-party (advertising) cookies by default.



Step 9. Set optimization levers

If your buying strategy uses the Xandr
optimization engine, you can adjust **Optimization Levers** to influence
how optimization works for your campaign, for example, how much you bid
during the Learn phase, how many success events (clicks or conversions)
it takes to move from the Learn phase to the Optimized phase, as well as
whether you want to optimize to the campaign bidding strategy before
optimizing to the line item booked revenue.

To access optimization levers, click the
Edit button under
Buying
Strategies  \>  OTHER
OPTIONS. For detailed explanations of each lever, see
Optimization Levers.



<b>Important:</b>

If you do not have access to optimization levers and are interested in
learning more about about them, please contact your
Xandr account representative.



Step 10. Add targeting

In the Targeting section, you can
<a href="apply-a-targeting-template.md" class="xref">Apply a Targeting
Template</a> or set unique inventory and user targeting for this
campaign. Use the links below to learn more about each type of
targeting.



<b>Note:</b> **Boolean Logic**

When you apply multiple types of targeting (e.g., inventory, segment,
geography, etc.), keep in mind that your campaign will buy only
impressions that match all targeting. In other words, there is an AND
relationship between the main types of targeting. For example, if you
target seller 123, segment ABC, and the United States, your campaign
will bid only on impressions from that seller being viewed by users in
that segment and in the United States.



Target inventory

You can target inventory in numerous ways. Use the links below to learn
more about each type of inventory targeting.

- <a href="inventory-quality-targeting.md" class="xref">Inventory
  Quality Targeting</a>
- <a href="content-category-targeting.md" class="xref">Content Category
  Targeting</a>
- <a href="direct-inventory-targeting.md" class="xref">Direct Inventory
  Targeting</a>
- <a href="third-party-inventory-targeting.md" class="xref">Third-Party
  Inventory Targeting</a>
- <a href="domain-targeting.md" class="xref">Domain Targeting</a>
- <a href="app-targeting.md" class="xref">App Targeting</a>
- <a href="query-string-targeting-via-placement-tags-and-segments.md"
  class="xref">Query String Targeting via Placement Tags and Segments</a>

Target users

You can target users in numerous ways. Use the links below to learn more
about each type of user targeting.

- <a href="device-and-supply-type-targeting.md"
  class="xref">device-and-supply-type-targeting.md</a>
- <a href="geography-targeting.md" class="xref">Geography Targeting</a>
- <a href="segment-targeting.md" class="xref"
  title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
  Targeting</a>
- <a href="frequency-and-recency-caps.md" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>
- <a href="daypart-targeting.md" class="xref">Daypart Targeting</a>
- <a href="system-targeting.md" class="xref">System Targeting</a>
- <a href="system-targeting.md" class="xref">System Targeting</a>
- <a href="test-and-control-targeting.md" class="xref">Test and Control
  Targeting</a>

Step 11. Associate creatives and define a dynamic landing page

In the Associated Creatives section,
you can select a **Creative Rotation** to determine how you want to
rotate and weight multiple creatives. Select one of three options: -
**Evenly weight creatives (default):** Even rotation is handled
automatically by our system. - **Auto-optimize creative weight:** When
this option is chosen, 75% of delivery is allocated to the creative with
the highest click-through rate; all remaining creatives of the same size
receive equal allocations of the remaining 25% of overall delivery. -
**Manually weight creatives:** By selecting this option, you will be
able to manually set a weight (between 0 and 1000).

See <a
href="creative-rotation-standard-line-item-and-guaranteed-delivery-line-item.md"
class="xref"
title="When multiple creatives of the same size are trafficked to a line item or campaign, you can set a creative delivery strategy using the Creative Rotation settings.">Creative
Rotation</a> for more information.

Click Edit and select the creatives
that you want to run for the campaign. Also, if you want to define a
dynamic landing page to be used by multiple creatives associated to the
campaign, enter the **Landing Page URL** and then make sure the
creatives are set up to use a dynamic landing page. Note that you can
set a dynamic landing page at the line item level as well. For more
details, see <a href="dynamic-landing-pages.md" class="xref"
title="As an advertiser, you may wish to send users to different landing pages or compare the performance of different landing pages. To accomplish this, you can associate a landing page URL with a line item or campaign. This landing page will then be available for association with any creatives that are attached to that line item or campaign.">Dynamic
Landing Pages</a>.



<b>Tip:</b> If you prefer, you can associate
creatives to the campaign at a later time. For more details, see
<a href="associate-creatives-to-campaigns.md" class="xref">Associate
Creatives to Campaigns</a>.



Step 12. Enter comments

In the Comments section, enter any
comments that you would like to record with the campaign. Comments are
for your reference only and will not affect campaign delivery.

Step 13. Add serving fees

If you owe serving fees to third parties for services such as creative
hosting or user data, you can add these fees in the
Serving Fees section. Serving fees can
be either a percentage of costs or a flat CPM. Please note the
following: - Serving fees are added to your media cost. - When you use a
third-party buying strategy that involves optimization ("Optimize to a
predicted CPA/CPC goal" or "Optimize to a % margin of booked revenue"),
bids are automatically reduced to account for serving fees. - When you
buy direct inventory or use a third-party buying strategy that does not
involve optimization, bids are not reduced to account for serving fees.

To add a new serving fee: 1. Click the Add
Fee button. 2. In the Broker
field, select the relevant broker or create a new broker. 3. In the
Description field, enter details about
the serving fee. 4. Select the **Fee Type** (CPM or Cost Share) and
enter the relevant **Fee Value** (dollar amount for CPM, percentage for
Revenue Share). 5. Click Add.



<b>Important:</b>

Per broker, you can add no more than one CPM serving fee and one Cost
Share serving fee.



Step 14. Review and save your campaign

Confirm that the campaign details are correct and then click the
Save button to finish adding the
campaign to Xandr. The campaign is then added to
the list of campaigns on the
<a href="explore-campaigns.md" class="xref">Explore Campaigns</a>.

Step 15. Complete peer approval



<b>Tip:</b> When activated for a user at the
network level, the campaign peer approval feature requires a user to get
approval from a second user before campaigns can be set to **Active**.
This feature minimizes the risk of user-side errors in campaign
activation and can help users identify and change settings to improve
campaign performance.





<b>Note:</b> This step applies only to clients
who have enabled the peer approval feature for their users. To learn
more about enabling peer approval for users, see Create a Network User.





<b>Note:</b> The campaign peer approval
feature sets requirements for who must obtain peer approval, but not who
can approve campaigns. Any other user who is able to create campaigns
for your network may provide this approval. There is no way to designate
a single approver of others' campaigns.



If your campaigns use the peer approval feature, in order to switch a
campaign's status from **Inactive** to **Active**, you will need peer
approval from another user. In the Create New
Campaign screen in the Approved
By field, you will see a message alerting you to the need for
peer approval and will be unable to save the campaign in an active
state.

To approve the campaign, another user from your team must log in, go to
the Campaigns screen, select the
desired campaign and click Edit. This
will open the Edit Campaign screen. On
the Edit Campaign screen, the
alternate user must check the **Approved By** checkbox. Once this step
is completed, the campaign can be set to **Active** by any user on your
team.

Next Steps

Once you've created a campaign, you can
<a href="view-campaign-details.md" class="xref">View Campaign
Details</a>. You can also continue
<a href="associate-creatives-to-campaigns.md" class="xref">Associate
Creatives to Campaigns</a>.

Related Topics

- <a href="working-with-campaigns.md" class="xref">Working with
  Campaigns</a>
- <a href="explore-campaigns.md" class="xref">Explore Campaigns</a>
- <a href="view-campaign-details.md" class="xref">View Campaign
  Details</a>
- <a href="buy-side-targeting.md" class="xref">Buy-Side Targeting</a>
- <a href="associate-creatives-to-campaigns.md" class="xref">Associate
  Creatives to Campaigns</a>




