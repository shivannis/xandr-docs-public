---
Title : Target Inventory on the Yahoo Ad Exchange
Description : <b>Note:</b> This form of targeting is only
ms.date: 10/28/2023
available to Standard Line Items. For an overview of which targeting
---


# Target Inventory on the Yahoo Ad Exchange





<b>Note:</b> This form of targeting is only
available to Standard Line Items. For an overview of which targeting
options are available to Standard versus Augmented Line items, see
<a href="buy-side-targeting.md" class="xref">Buy-Side Targeting</a>.



This page shows you how to set up a campaign to run on Yahoo Ad Exchange
(YAX) inventory.



<b>Note:</b> YAX Marketplace

Clients who have been migrated to the the latest version of the Yahoo Ad
Exchange, the YAX Marketplace, can target the entire YAX seller but can
no longer target "Seller Lines" or specific YAX inventory.





<b>Tip:</b> If you have negotiated deals with
YAX, see
<a href="create-a-deal-campaign.md" class="xref">Create a Deal
Campaign</a> for instructions on targeting your deals. For information
about negotiating deals with YAX, see
<a href="negotiate-deals-with-sellers.md" class="xref">Negotiate Deals
with Sellers</a>.



Before You Begin

Access to YAX

Buyers that do not have access to the Yahoo Ad Exchange through
Xandr will not see the YAX seller for targeting.
For information about gaining access to YAX, please speak with your
Xandr representative.

Creative Requirements

Each creative that you want to serve on YAX inventory must meet the
following requirements:

- The creative must meet YAX's <a
  href="https://api.yieldmanager.com/api-1.37/doc/phpdoc/4_enum_size.md"
  class="xref" target="_blank">size requirements</a>.
- The creative must meet YAX's <a
  href="https://api.yieldmanager.com/api-1.37/doc/phpdoc/4_enum_language.md"
  class="xref" target="_blank">language requirements</a>.
- The creative format must be flash, image, raw-js, raw-html,
  iframe-html, or url-html.
- The creative template must be a Standard template.
- You must submit the creative for
  <a href="creative-standards.md" class="xref"
  title="Xandr has foundational policies that all creative and inventory content must follow. Creatives that violate these policies will be removed from the platform, and will be ineligible for both real-time bidding (RTB) and in-network buying. Repeated violation of these policies may result in strikes against offending members.">auditing</a>,
  and it must pass.
- If you want the creative to serve on secure YAX inventory, you must
  submit the creative for Xandr SSL audit, and
  it must pass.

Step 1. Open your campaign

On the Campaigns screen, select the
campaign that you want to run on your Yahoo Ad Exchange inventory and
click the Edit icon.

This will open the Edit Campaign
screen.

Step 2. Confirm the buying strategy

Yahoo Ad Exchange is an external supply partner. Therefore, in the
Basic Settings section under
Buying Strategies, you should be sure
to select Buy Third-Party Inventory
and set a strategy. For detailed information about the strategies open
to you, see
<a href="buying-strategies.md" class="xref">Buying Strategies</a>.

Step 3. Target Yahoo Ad Exchange inventory

If you target all third-party inventory, your targeting will include all
Yahoo Ad Exchange inventory as well as all other third-party inventory.
However, if you want to focus on YAX, you **must** set more specific
targets.

First, in the Targeting section under
Inventory, click
Edit.

This will open the **Inventory Targeting** dialog.

Option 1. Target all Yahoo Ad Exchange inventory

In the **Inventory Targeting** dialog, under
3rd Party Inventory \> **Sellers**,
search for "273". Include the seller called **Yahoo Ad Exchange (273)**
by clicking on the green checkmark icon.

Option 2. Target specific Yahoo Ad Exchange "Seller Lines"



<b>Note:</b> Clients who have been migrated to
the the latest version of the Yahoo Ad Exchange, the YAX Marketplace,
can target the entire YAX seller but can no longer target "Seller Lines"
or specific YAX inventory.



To target specific Yahoo Ad Exchange "Seller Lines", click on "Yahoo Ad
Exchange (273)" and either **Include** the specific "Seller Lines" that
you want to target or Exclude the
specific "Seller Lines" that you do not want to target.



<b>Tip:</b> **Targeting Yahoo Ad Exchange
"Seller Lines" and Other Third-Party Inventory**

- If you want to target specific Yahoo Ad Exchange "Seller Lines" and
  **all** other third-party inventory, the best method is to **Include**
  the Yahoo Ad Exchange seller, then **Exclude** the "Seller Lines" that
  you do not want to target.
- If you want to target specific Yahoo Ad Exchange "Seller Lines" and
  **some** other third-party inventory, the best method is to
  **Include** "Yahoo Ad Exchange (273)" and any other seller that you do
  want to target and then, under Publishers &
  Categories, **Exclude** the specific "Seller Lines" that you do
  not want to target.



Step 4. Adjust your inventory quality filtering

We recommend removing inventory quality filtering when targeting the
Yahoo Ad Exchange. Some of the inventory in your "Seller Lines" might
not be platform-reviewed. If you are nonetheless confident that your
"Seller Lines" are of acceptable quality, the surest way to reach all of
the inventory is to disable inventory quality filtering. In particular,
Yahoo O&O inventory is not platform-reviewed.

In the Targeting section under
Inventory Quality, select the **Serve
on any inventory** radio button.

Step 5. Set additional targeting options

In the Targeting section, you can
further restrict your campaign to target users based on geography,
segment, frequency, daypart (day of week and time of day), system
(browser and operating system), page properties, and demographics. For
more information about targeting, see
<a href="buy-side-targeting.md" class="xref">Buy-Side Targeting</a>.



<b>Tip:</b> Since all additional targeting is
respected, please be careful not to inadvertently restrict your
campaign's reach. For example, if a Yahoo Ad Exchange "Seller Line"
covers Yahoo! US and you then use Geography targeting to target just
users in Canada, your campaign will likely not serve any impressions.



Step 6. Review and save your campaign

Once you have finished adjusting your campaign targeting, confirm that
the details are correct and then click the
Save button to save your changes.




