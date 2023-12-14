---
Title : Create a Floor Rule
Description : The **Floor Rules Manager** allows you to set your network's preferred
ms.date: 10/28/2023
bid amount on a given impression. There are two kinds of floor rules:
---


# Create a Floor Rule



The **Floor Rules Manager** allows you to set your network's preferred
bid amount on a given impression. There are two kinds of floor rules:

- Create a base floor rule to set floors for all of the publisher's
  inventory.
- Create a conditional floor rule to set hard and soft floors or enable
  Floor Optimization for specific impressions. You can target floors
  based on impression frequency, geography, segment, specific placement,
  category, placement size, buyer, brand, or creative category.



<b>Important:</b>

For more information on floors and how they work, see
<a href="working-with-yield-management.md" class="xref">Working with
Yield Management</a> and
<a href="update-floor-rules.md" class="xref">Update Floor Rules</a>.



To begin, select
Partners
\>  Yield Management  \>
 Floor Rules from the
navigation menu.

Create a Base Floor Rule

Create a base rule to set hard and soft floors for all of the
publisher's inventory.



<b>Note:</b> For more information on floors
and how they work, see
<a href="working-with-yield-management.md" class="xref">Working with
Yield Management</a> and
<a href="update-floor-rules.md" class="xref">Update Floor Rules</a>.



Step 1: Getting there

**Publisher-only clients:** Select
Partners
\>  Yield Management  \>
 Floor rules in the menu bar,
and then select a publisher if you are prompted.

**All other clients:** Select
Publishers
 \>  Floor Rules in the
menu bar, and then select a publisher if you are prompted.

Step 2. Get started

Select a publisher when prompted. This opens the **Floor Rule Manager**.

Step 3. Open the Create New Base Rule window

Click Create New
 \>  Base Rule to open
the **Create New Base Floor Rule** window.



<b>Note:</b> You can only create one base
rule. If a base rule exists, you will not be able to create a new base
rule. Instead, you can edit or delete the existing rule.



Step 4. Enter base rule details

Under Basic Settings, the **Name** is
set to **Base Rule** and the **Priority** is set to **1**. This means
any existing conditional rules will take precedence over the base rule.
You can also add:

- Description- Enter a rule
  description for reference.

Step 5. Enter floor pricing



<b>Important:</b>

Floor Optimization is currently in a closed Beta. We are working to roll
this feature out to more clients.



Enter the net floor values for the base rule and select the type of bids
that the rule will apply to.

- **Hard Floor** - (Required) Enter a hard floor value, which is the
  minimum net amount the network will accept for placing a creative. If
  this price is not met then no bids are accepted and the auction ends
  without a winner, or a default creative is served.
  

  <b>Important:</b>
  If you enter a hard floor, be sure to set up a default creative for
  your placements. If no bid meets your hard floor, your default
  creative will serve. If you do not have a default creative, a PSA will
  serve.

  
- **Soft Floor** - After you enter a hard floor, you can optionally
  enter a soft floor value, which is the lowest net price you are
  willing to price-reduce a bid to. In a second-price auction, the
  winning bidder pays the greater of the two between the soft floor
  price and the second bidder's bid.
- **Floor Optimization** - Instead of entering a soft floor, you can
  turn on Floor Optimization, which use algorithms to move floors up and
  and down depending on market conditions, but never allow the amount to
  go below the hard floor.
  

  <b>Note:</b> Soft floors are not available
  when **Floor Optimization** is turned on. Floor Optimization makes
  soft floors unnecessary because **Optimal Floors** automatically
  adjust in response to market conditions. For more information, see
  <a href="floor-optimization.md" class="xref"
  title="You can enable floor optimization for any floor rule. When enabled, floor optimization adjusts the hard floor for every impression to better protect and value a seller&#39;s inventory.">Floor
  Optimization</a>.

  
- **Floor Price Applies To** - Select the type of bids that the floor
  rule will apply to:
  - **All demand** - The rule will apply to bids from your managed
    advertisers as well as third-party bids.
  - **Third-party and non-preferred direct demand** - The rule will
    apply to third-party bids as well as bids from your managed
    advertisers that are not considered a preferred bid.
  - **Third-party demand only** - The rule will apply to third-party
    bids, and not to bids from your managed advertisers.

  

  <b>Note:</b> The rule will not apply to
  learn bids from your managed advertisers when your inventory prefers
  learn bids.

  

Step 6. Enter advanced settings (optional)

Click Advanced Settings to enter these
additional settings:

- **Code** - Codes may be helpful for networks with distinct internal
  names/IDs, so that the names/IDs can be associated in
  Monetize and then extracted for reporting
  purposes via our API.
- **Reserve Price Override** - Turn this feature on to enable the
  publisher to override the YM Rule hard floor via the ad tag query
  string `reserve_price` field (as per
  <a href="placement-tag-parameters.md" class="xref">Placement Tag
  Parameters</a> and
  <a href="target-video-attributes-via-query-string-parameters.md"
  class="xref"
  title="If you use a tag solution for in-stream video, effectively targeting demand requires knowledge and careful implementation of the range of possible tag parameters.">Target
  Video Attributes via Query String Parameters</a>) or via the ad
  request bidfloor parameter (as per <a
  href="supply-partners/incoming-bid-request-from-ssps.md"
  class="xref" target="_blank">Incoming Bid Request from SSPs</a>). The
  `reserve` parameter that publishers pass must be greater than the
  existing hard floor in order to override it.

Step 7. Save the base floor rule

Once you have entered the rule details, click
Save at the bottom of the screen. The
rule will then be displayed under Base
Rule on the Floor Rule Manager
screen.

Create a Conditional Floor Rule

Create a conditional rule to set hard and soft floors for specific
impressions. You can target floors based on impression frequency,
geography, segment, specific placement, category, placement size, buyer,
brand, or creative category.

Step 1: Getting there

**Publisher-only clients:** Select
Partners
\>  Yield Management  \>
 Floor rules in the menu bar,
and then select a publisher if you are prompted.

**All other clients:** Select
Publishers
 \>  Floor Rules in the
menu bar, and then select a publisher if you are prompted.

Step 2. Get started

Select a publisher when prompted. This opens the **Floor Rule Manager**.

Step 3. Open the Create New Floor Rule window

Click Create New
 \>  Conditional Rule.

Step 4. Enter rule details

Under **Basic Settings**, enter the following:

- **Name** - (Required) Enter a name for your rule. Select a name that
  aligns with your business strategy for ease of use.
- **Priority** - (Required) Select the desired priority for the rule. 5
  is selected by default. It is recommended to leave lower priorities
  (1-4) for network-wide rules and higher priorities (5-9) for your
  publisher-specific rules. It is a good idea to reserve priority 10 for
  special cases that may arise, such as emergencies or blockers.
- **Description** - Enter a rule description for reference.

Step 5. Enter floor pricing



<b>Important:</b>

Floor Optimization is currently in a closed Beta. We are working to roll
this feature out to more clients.



Enter the net floor values for the base rule and select the type of bids
that the rule will apply to.

- **Hard Floor** - (Required) Enter a hard floor value, which is the
  minimum net amount the network will accept for placing a creative. If
  this price is not met then no bids are accepted and the auction ends
  without a winner, or a default creative is served.
  

  <b>Important:</b>
  If you enter a hard floor, be sure to set up a default creative for
  your placements. If no bid meets your hard floor, your default
  creative will serve. If you do not have a default creative, a PSA will
  serve.

  
- **Soft Floor** - After you enter a hard floor, you can optionally
  enter a soft floor value, which is the lowest net price you are
  willing to price-reduce a bid to. In a second-price auction, the
  winning bidder pays the greater of the two between the soft floor
  price and the second bidder's bid.
- **Floor Optimization** - Instead of entering a soft floor, you can
  turn on Floor Optimization, which use algorithms to move floors up and
  and down depending on market conditions, but never allow the amount to
  go below the hard floor.
  

  <b>Note:</b> Soft floors are not available
  when **Floor Optimization** is turned on. Floor Optimization makes
  soft floors unnecessary because Optimal Floors automatically adjust in
  response to market conditions. For more information, see
  <a href="floor-optimization.md" class="xref"
  title="You can enable floor optimization for any floor rule. When enabled, floor optimization adjusts the hard floor for every impression to better protect and value a seller&#39;s inventory.">Floor
  Optimization</a>.

  
- **Floor Price Applies To** - Select the type of bids that the floor
  rule will apply to:
  - **All demand** - The rule will apply to bids from your managed
    advertisers as well as third-party bids.
  - **Third-party and non-preferred direct demand** - The rule will
    apply to third-party bids as well as bids from your managed
    advertisers that are not considered a preferred bid.
- **Third-party demand only** - The rule will apply to third-party bids,
  and not to bids from your managed advertisers
  

  <b>Note:</b> The rule will not apply to
  learn bids from your managed advertisers when your inventory prefers
  learn bids.

  

Step 6. Set optional targeting

Under **Targeting**, you can select the types of users you would like
the rule to apply to. See
<a href="floor-rule-targeting.md" class="xref">Floor Rule
Targeting</a> for details on the different types of targeting available.

Step 7. Configure Advanced Settings

Click the + next to
Advanced Settings to open the panel to
complete two optional items:

- **Code** - Codes may be helpful for third-party networks that use
  distinct internal names or IDs. Enter that name or ID in the Code box
  to allow it to be associated in Monetize and
  then extracted for reporting purposes via our API.
- **Reserve Price Override** - Turn this feature **ON** to enable the
  publisher to override the YM Rule hard floor via the ad tag query
  string reserve price field (as per
  <a href="placement-tag-parameters.md" class="xref">Placement Tag
  Parameters</a> and
  <a href="target-video-attributes-via-query-string-parameters.md"
  class="xref"
  title="If you use a tag solution for in-stream video, effectively targeting demand requires knowledge and careful implementation of the range of possible tag parameters.">Target
  Video Attributes via Query String Parameters</a>) or via the ad
  request `bidfloor` parameter (as per <a
  href="supply-partners/incoming-bid-request-from-ssps.md"
  class="xref" target="_blank">Incoming Bid Request from SSPs</a>). The
  `reserve/bidfloor` parameter that publishers pass must be greater than
  the existing hard floor in order to override it for the given action.

Step 8. Save the conditional floor rule

Once you have entered the rule details, click
Save at the bottom of the screen. The
rule will then display in the conditional rule area on the
Floor Rule Manager screen.

Related Topics

- <a href="working-with-yield-management.md" class="xref">Working with
  Yield Management</a>
- <a href="understanding-yield-management.md" class="xref">Understanding
  Yield Management</a>
- <a href="update-floor-rules.md" class="xref">Update Floor Rules</a>




