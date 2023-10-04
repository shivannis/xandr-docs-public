---
Title : Create a Deal Campaign
Description : Creating a campaign that targets deals you have with
Monetize sellers and/or external supply partners
is similar to setting up a standard
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.
---


# Create a Deal Campaign



Creating a campaign that targets deals you have with
Monetize sellers and/or external supply partners
is similar to setting up a standard
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.
There are a few settings, however, that you must pay particularly close
attention to:

- You must select the deal campaign type. See **Step 2. Select the deal
  campaign type** for details.

- You must select the deals you want to target. See **Step 3. Target
  deals** for details.

- You must set a buying strategy that is appropriate for deals. See
  **Step 5. Set the buying strategy** for details.

  For an introduction to the concept of deals and links to other
  resources, see
  <a href="buying-deals.html" class="xref">Buying Deals</a>.

Before You Begin

Before you can target a deal, you must negotiate and set up the deal in
cooperation with the seller. For more information, see
<a href="negotiate-deals-with-sellers.html" class="xref">Negotiate Deals
with Sellers</a>.

Step 1. Get started

Select a line item and advertiser, and start a new campaign as you
normally would.

On the Advertisers screen
(Advertisers
 \>  All Advertisers),
click the Line Items button near the
advertiser under which you want to create a new campaign. Then, on the
Campaign Details screen, click
Create New
 \>  Campaign. Finally,
in the Select a Line Item section,
confirm that the line item with which you want the campaign associated
is selected, then click Continue.



Tip: You can find
Create New
 \>  Campaign on the
insertion orders and line items under the advertiser, as well.





Important:

For more detailed information on initial campaign setup, see the generic
campaign setup workflow,
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.



Step 2. Select the deal campaign type

In the Campaign Type section, select
Buy using Deal ID. This will reveal
the full workflow for setting up a deal campaign.



Tip: You can expand or collapse each
section of the screen as you like. To expand or collapse all sections at
once, click the **Expand All** or Collapse
All link in the upper right.





Warning: Changing the campaign type
will reset your workflow and available targeting options.



Step 3. Target deals

In the Deals Selection section, click
the Edit button and then include the
deals that you want to target.



Tip: **Finding Deals** Click the column
headers to sort by name, ID, ask price, or seller, or use the search
field to find deals by ID, code, or name. Also, all active and inactive
deals are listed by default, but you can use the filter to the right of
the search field to show just active or inactive deals.

**Viewing Deal Details**

Hover over the **eye icon** to view details about a deal. You can view
additional deal details in the
<a href="partnership-details-screen-buyer-view.html"
class="xref">Partnership Details Screen - Buyer View</a>.

**Explanation of Deal Details**

- **Ext. Deal ID**

  The custom code for the deal. For deals with external supply partners,
  this is generally the ID that you use to identify the deal. If a
  custom code hasn't been defined for the deal, this field will not be
  shown.

- **Status**

  Whether or not the deal is currently available for buying.

- **Ask Price**

  The minimum CPM that the seller will accept for the deal. Note that
  when you set your buying strategy, you will need to bid higher than
  the ask price to account for pre-bid fees and other factors. For more
  details, see **Step 5. Set the buying strategy**.

- **Currency**

  The currency for the ask price.

- **Type** The type of auction that will be held for the deal. For more
  details and examples showing how the different types of auctions work,
  see <a href="deal-auction-mechanics.html" class="xref">Deal Auction
  Mechanics</a>.
  - **Open Auction**

    Buyers targeting the deals and buyers targeting the inventory via
    other means compete for the impression.

  - **Private Auction**

    Buyers targeting the private deals compete for the impression first.
    Then, if none of the deal buyers win, the auction is opened to
    buyers targeting the inventory via other means.

  - **First Look** Deals considered "First Look" are offered only by
    external supply partners and have extremely varied auction logic
    depending on both the supply partner and the seller. You must
    contact the supply partner for details about how the deal works.
    Xandr as a buying platform can make no
    guarantee that first look deals actually give you the first look at
    an impression.

- **Start Date** The day and time when the deal starts being available
  to you. Note that this is distinct from your campaign start date.

- **End Date** The day and time when the deal stops being available to
  you. Note that this is distinct from your campaign end date.

- **Last Updated** The date and time when the deal was last modified by
  the seller.

- **Sizes** The creative sizes to which the deal applies.

- **Brands** The brands to which the deal applies.

- **Description** The description of the deal. The seller may use the
  description to provide additional insight or details about the deal.



Step 4. Enter campaign details

Enter campaign details, flight dates, and set the campaign budget as you
normally would. In the Basic Setup
section, enter the basic details and flight dates for the campaign in
the fields provided. Then, in the
Budget section, set the campaign
budget. By default, your campaign media budget is unlimited. If you
prefer, you can define exactly how much you are willing to spend by
setting a specific budget. The budget can be set in impressions or in
media cost (dollars).



Important: For more detailed
information on **Basic Setup** and
Budget sections, see the generic
campaign setup workflow,
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.



Step 5. Set the buying strategy

In the Buying Strategies section, we
recommend using the **Bid a base CPM** option to bid on your deals.
Enter the fixed dollar amount to bid per thousand impressions in the
**Base CPM $\_** field.

**Highest Targeted Floor**

This amount is the highest ask price of all deals you are targeting. For
example, if you target Deal A with an ask price of $1.00 and Deal B with
an ask price of $5.00 the highest targeted floor will be $5.00.

**Suggested Minimum Bid**

If you're targeting deals with an ask price, the suggested minimum bid
shows you the CPM amount that will likely clear the ask price for your
deals. It is based on the highest ask price of all deals you are
targeting plus your auction service charge. For deals with external
suppliers, this amount will include additional margin to account for
discrepancies and may fluctuate over time as the level of discrepancy
between Xandr and the third party changes.



Note: Bidding the suggested minimum
will help ensure that you are eligible for the deal but will not
guarantee that your bid wins.



Paying on a CPA or CPC basis is not available for deal inventory. The
other CPM buying strategy options remain available, although they are
not recommended.

- **Optimize to a % margin of booked revenue** - Use this strategy to
  bid a % margin of the revenue that the advertiser pays you. For
  example, if your booked revenue is $1 CPM, and you set a bidding
  strategy margin of 25%, your campaign will bid $0.75. If your booked
  revenue type is a CPA or CPC goal, it will apply your desired margin
  and optimize to that predicted goal.
  - **Bid CPM: max $\_\_\_ CPM min $\_\_\_ CPM** - Enter the highest and
    lowest CPM dollar amount that you are willing to spend on an
    impression.
  - **Enable cadence modifier** - Under OTHER OPTIONS, check this box to
    vary your bid based on how often and recently users have seen your
    creatives. This feature is based on the idea that an ad is more
    effective (and therefore worth more) when a user hasn't seen it
    before or hasn't seen it many times or seen it recently. For more
    details, see <a href="cadence-modifier-and-the-chaos-factor.html"
    class="xref">Cadence Modifier and the Chaos Factor</a>.
- **Optimize to a predicted CPA goal** - Use this strategy to vary bids
  based on the likelihood of an attributed conversion for each piece of
  inventory. This strategy uses the Xandr
  optimization engine.
  - **Bid $\_ post-click/post-view CPA** - Select the conversion pixel
    to which you want to optimize and enter the dollar amount per
    conversion that you want the optimization engine to aim for.
  - **Learn Budget** - The learn budget is the portion of your campaign
    budget that you want to commit to optimizing your campaign, which
    helps you quickly find slices of third-party inventory that provide
    a positive ROI. The first phase of this process is called Learn. You
    can set a lifetime learn budget of up to 100% of the campaign budget
    as well as a daily cap for learning. For more information about
    optimization and learning, see
    <a href="targeted-learn.html" class="xref">Targeted Learn</a>.
  - **Bid at most $\_ CPM in Learn Phase** - When your campaign starts
    to spend on new inventory, the optimization engine submits "learn"
    bids. If necessary, enter max CPM dollar amount for these bids.
    Note: When you set both a cap for learn bids and a max CPM for
    non-learn bids (next option), the lower of the two will be used for
    learn.
  - **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and lowest
    CPM dollar amount that you are willing to spend on an impression.
  - **Enable cadence modifier** - This option appears under OTHER
    OPTIONS and cannot be deselected. When optimizing to a predicted CPA
    goal, your bids will always vary based on how often and recently
    users have seen your creatives. This feature is based on the idea
    that an ad is more effective (and therefore worth more) when a user
    hasn't seen it before or hasn't seen it many times or seen it
    recently. For more details, see
    <a href="cadence-modifier-and-the-chaos-factor.html"
    class="xref">Cadence Modifier and the Chaos Factor</a>.
- **Optimize to a predicted CPC goal** - Use this strategy to vary bids
  based on the likelihood of a click for each piece of inventory. This
  strategy uses the Xandr optimization engine.
- **Optimize to $\_ per click** - Enter the dollar amount per click that
  you want the optimization engine to aim for when calculating bids.
- **Learn Budget** - The learn budget is the portion of your campaign
  budget that you want to commit to optimizing your campaign, which
  helps you quickly find slices of third-party inventory that provide a
  positive ROI. The first phase of this process is called Learn. You can
  set a lifetime learn budget of up to 100% of the campaign budget as
  well as a daily cap for learning. For more information about
  optimization and learning, see
  <a href="targeted-learn.html" class="xref">Targeted Learn</a>.
- **Bid at most $\_ CPM in Learn Phase** - When your campaign starts to
  spend on new inventory, the optimization engine submits "learn" bids.
  It is recommended to enter a max CPM dollar about for these bids. In
  doing so, you will avoid learning on inventory that is too expensive
  while not limiting yourself from optimized inventory sources that are
  worth higher prices. Note: When you set both a cap for learn bids and
  a max CPM for non-learn bids (next option), the lower of the two will
  be used for learn.
- **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and lowest
  CPM dollar amount that you are willing to spend on an impression.
- **Enable cadence modifier** - This option appears under OTHER OPTIONS
  and cannot be deselected. When optimizing to a predicted CPA goal,
  your bids will always vary based on how often and recently users have
  seen your creatives. This feature is based on the idea that an ad is
  more effective (and therefore worth more) when a user hasn't seen it
  before or hasn't seen it many times or seen it recently. For more
  details, see <a href="cadence-modifier-and-the-chaos-factor.html"
  class="xref">Cadence Modifier and the Chaos Factor</a>.
- **Target reach and delivery (bid via ECP or EAP)** - Use this strategy
  to bid the going platform rate for each piece of inventory.
  - **Auto-bid to win most platform impressions (ECP)** - Select this
    option to bid an estimate of the price that is likely to win most
    impressions from Xandr platform sellers
    based on historical bids and their success or failure. Since
    off-platform sellers (e.g., Google Ad Manager, Rubicon, etc.)
    conduct a secondary auction, bidding ECP does not necessarily ensure
    winning off-platform impressions.
  - **Auto-bid to win ~50% of platform impressions (EAP)** - Select this
    option to bid an estimate of the price that is likely to win about
    half of the impressions from Xandr platform
    sellers based on historical bids and their success or failure. Since
    off-platform sellers (e.g., Google Ad Manager, Rubicon, etc.)
    conduct a secondary auction, bidding EAP does not necessarily ensure
    winning half of off-platform impressions.
  - **Bid CPM: max $\_ CPM min $\_ CPM** - Enter the highest and lowest
    CPM dollar amount that you are willing to spend on an impression.
  - **Enable cadence modifier** - Under OTHER OPTIONS, check this box to
    vary your bid based on how often and recently users have seen your
    creatives. This feature is based on the idea that an ad is more
    effective (and therefore worth more) when a user hasn't seen it
    before or hasn't seen it many times or seen it recently. For more
    details, see <a href="cadence-modifier-and-the-chaos-factor.html"
    class="xref">Cadence Modifier and the Chaos Factor</a>.

Although **Enable cadence modifier** is available under
OTHER OPTIONS, this setting is not
recommended as it will limit your campaign delivery. You can set
performance goals at the line item level to achieve similar results.

- **Enable cadence modifier** - Under **OTHER OPTIONS**, check this box
  to vary your bid based on how often and recently users have seen your
  creatives. This feature is based on the idea that an ad is more
  effective (and therefore worth more) when a user hasn't seen it before
  or hasn't seen it many times or seen it recently. For more details,
  see <a href="cadence-modifier-and-the-chaos-factor.html"
  class="xref">Cadence Modifier and the Chaos Factor</a>.
- **Bid CPM: max $\_\_\_ CPM min $\_\_\_ CPM** - This option is
  available under OTHER OPTIONS only
  once you enable cadence modifier. Enter the highest and lowest CPM
  dollar amount that you are willing to spend on an impression.

Step 6. Add advanced targeting

In the Advanced Targeting section, you
can <a href="apply-a-targeting-template.html" class="xref">apply a
predefined targeting template</a> or set unique inventory and user
targeting for this campaign. Use the links in the **Target inventory**
and Target users sections below to
learn more about each type of targeting.



Warning: Layering advanced targeting
over your deals will limit your campaign's reach. Be sure to use
targeting that is not in direct conflict with the terms of your deal.
For example, if your deals cover inventory in the US and you then use
Geography targeting to target just users in Canada, your campaign will
serve only to Canadian users who happen to be looking at the US
inventory in your deals.

If you
<a href="apply-a-targeting-template.html" class="xref">Apply a Targeting
Template</a>, be sure to apply one designed for deal campaigns. If you
apply a template designed for a non-deal campaign, your campaign type
will be changed and your workflow and available targeting options will
be reset.



Target inventory



Note: You cannot use frequency capping
or your own first-party or third-party data, nor may you add users to
segments on view when targeting audience deals on LinkedIn.



You can target inventory in numerous ways. Use the links below to learn
more about each type of inventory targeting.

- <a href="inventory-quality-targeting.html" class="xref">Inventory
  Quality Targeting</a>
- <a href="content-category-targeting.html" class="xref">Content Category
  Targeting</a>
- <a href="direct-inventory-targeting.html" class="xref">Direct Inventory
  Targeting</a>
- <a href="third-party-inventory-targeting.html" class="xref">Third-Party
  Inventory Targeting</a>
- <a href="domain-targeting.html" class="xref">Domain Targeting</a>
- <a href="app-targeting.html" class="xref">App Targeting</a>
- <a href="page-properties-targeting.html" class="xref"
  title="Through page properties targeting, you can target impressions based on the position of the creative tag on the page or based on values passed in the query string of the ad call.">Page
  Properties Targeting</a>

Target users

You can target users in numerous ways. Use the links below to learn more
about each type of user targeting.

- <a href="device-and-supply-type-targeting.html"
  class="xref">device-and-supply-type-targeting.html</a>
- <a href="geography-targeting.html" class="xref">Geography Targeting</a>
- <a href="segment-targeting.html" class="xref"
  title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
  Targeting</a>
- <a href="frequency-and-recency-caps.html" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>
- <a href="daypart-targeting.html" class="xref">Daypart Targeting</a>
- <a href="system-targeting.html" class="xref">System Targeting</a>
- <a href="test-and-control-targeting.html" class="xref">Test and Control
  Targeting</a>

Step 7. Finish creating your campaign

You can now add creatives, add serving fees, enter comments, review your
campaign settings, and set campaign peer approval as you would for any
campaign.

Complete the Associated Creatives
section to set your creative rotation preferences and add landing page
URLs. If you owe serving fees to third parties for services such as
creative hosting or user data, you can add these fees in the
Serving Fees section. Enter any
comments you have in the Comments
section, then review and save your campaign. Complete peer approval for
the campaign if necessary.



Important:

For more detailed information on these sections, see the generic
campaign setup workflow,
<a href="create-a-campaign.html" class="xref">Create a Campaign</a>.



Related Topics

- <a href="buying-deals.html" class="xref">Buying Deals</a>
- <a href="negotiate-deals-with-sellers.html" class="xref">Negotiate Deals
  with Sellers</a>
- <a href="get-deals-from-seller-packages.html" class="xref">Get Deals
  from Seller Packages</a>
- <a href="deal-auction-mechanics.html" class="xref">Deal Auction
  Mechanics</a>
- <a href="buy-side-reporting-on-deals.html" class="xref">Buy-Side
  Reporting on Deals</a>
- <a href="partnership-details-screen-buyer-view.html"
  class="xref">Partnership Details Screen - Buyer View</a>




