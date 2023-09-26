---
Title : Update Campaigns
Description : You can take several actions on campaigns to update them, including
editing, delete, duplicating, and activating.
---


# Update Campaigns



You can take several actions on campaigns to update them, including
editing, delete, duplicating, and activating.

Editing a Campaign

You can edit a campaign directly from the
Campaigns screen. Hover over the row
for the campaign you want to edit and then click the pencil icon that
appears in the row.

In addition, you can click the row of the campaign you want to edit to
expose the Campaign Summary pane. From
there, you can edit targeting and creatives, or click the pencil icon
next to the campaign name to be taken to the full
Edit Campaign screen.

Editing Lifetime and Daily Budgets

You can edit both lifetime and daily budgets for one or more campaigns
directly from the Campaigns screen.
Click the pencil and paper icon at the top of either the
Lifetime Budget or
Daily Budget column to expose the
column editing options.



Note: The bulk edit option is currently
not available through Microsoft Internet Explorer. If you would like to
access this feature, please use another browser.



This exposes the Edit Daily Budget or
Edit Lifetime Budget column, where you
can modify budgets and save your changes.

Bulk Editing Flight Dates

You can edit the flight dates of one or more campaigns directly from the
Campaigns screen. Check the checkbox
for each campaign whose flight dates you wish to edit then click
Actions 
\>  Change Flight Dates. You
can edit both start and/or end dates for all the campaigns selected in
the Bulk Change Flight Dates dialog
that appears.

Activating/Deactivating Campaigns

You can activate or deactivate one or more campaigns directly from the
Campaigns screen. Check the checkbox
for each campaign that you want to activate or deactivate and click
Actions 
\>  Activate or
Actions 
\>  Deactivate.

A confirmation dialog lists the campaign(s) to be activated or
deactivated. Click OK to complete the
action.

When you deactivate a campaign, the campaign will typically stop serving
within 10 - 15 seconds, with a maximum wait time of approximately 60
seconds.

Duplicating Campaigns

You can duplicate campaigns directly from the
<a href="explore-campaigns.html" class="xref">Explore Campaigns</a>.
Each new campaign will be assigned a unique ID, will not inherit the
original campaign's External Code, and will default to the Inactive
state, but will otherwise have the exact same settings as the original,
including budgets, flight dates, buying strategies, and targeting.



Important: When you duplicate a
campaign that uses a buying strategy involving optimization, the
optimization data (impressions, clicks, conversion, etc.) of the
original campaign is not available to the new campaign. This means that
the new campaign must go through its own "learning" process. For more
details, see
<a href="targeted-learn.html" class="xref">Targeted Learn</a>.



1.  On the Campaigns screen, check the
    box next to each campaign that you want to duplicate.
2.  Click
    Actions
     \>  Duplicate.
3.  In the confirmation dialog, decide whether you want to create each
    new campaign under the original's parent line item or select a
    different line item under which all copies should be created.
    

    Important: CPA campaigns use
    conversion pixels associated with their parent line item. Therefore,
    such campaigns can be copied to a different line item only if the
    relevant conversion pixels are also associated with that line item.

    
4.  By default, the new campaigns have the same names as the original
    campaigns but with "Copy" as a prefix. If necessary, update the
    names for the new campaigns.
5.  Review your choices and then click
    Duplicate to confirm the
    duplication. The new campaigns will then appear on the
    <a href="explore-campaigns.html" class="xref">Explore Campaigns</a>.

Deleting Campaigns

You can delete campaigns directly from the
Campaigns screen. This is particularly
useful when you are approaching your object limit for campaigns, or when
you want to get rid of unnecessary or accidentally created campaigns for
a particular advertiser. For more information about object limits, see
<a href="viewing-your-object-limits.html" class="xref">Viewing Your
Object Limits</a>.



Warning: Deleting campaigns is
permanent and cannot be reverted. Also, although deleted campaigns
continue to be available in reporting, you will no longer have
visibility into their specific settings (e.g., budget and targeting).



1.  On the Campaigns screen, check the
    box next to each campaign that you want to delete.
2.  Click
    Actions
     \>  Delete.
3.  A confirmation dialog lists the campaigns that you selected for
    deletion. Review the list carefully and then click
    Confirm to permanently delete the
    campaigns from the system.

Edit Multiple Campaigns with Power Uploader



Important: This offering is currently
in Open Beta. It is available to all clients, but subject to change or
downtime without notice.



Power Uploader enables you to edit multiple campaigns in one easy
process by updating and uploading an Excel spreadsheet, instead of
<a href="create-a-campaign.html" class="xref">creating a new
campaign</a> or using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html"
class="xref" target="_blank">Campaign Service</a>.

Spreadsheet Fields

The Beta version of Power Uploader currently supports updates to the
following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002163__entry__1" class="entry">Spreadsheet Field</th>
<th id="ID-00002163__entry__2" class="entry">Campaign Screen Field</th>
<th id="ID-00002163__entry__3" class="entry">Description</th>
<th id="ID-00002163__entry__4" class="entry">API Service / Field</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00002163__entry__1 ID-00002163__entry__2 ID-00002163__entry__3 ID-00002163__entry__4">Basics</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">ID</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">ID</td>
<td class="entry" headers="ID-00002163__entry__3">Required. The ID of
the campaign.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">id</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Name</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Name</td>
<td class="entry" headers="ID-00002163__entry__3">Required. The name of
the campaign.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">name</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Status</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Status</td>
<td class="entry" headers="ID-00002163__entry__3">Required. The state of
the campaign. Valid values: Active or Inactive</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">state</code></td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00002163__entry__1 ID-00002163__entry__2 ID-00002163__entry__3 ID-00002163__entry__4">Budget</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Enable Daily
Pacing</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Budget  &gt;
 Media Cost | Impression  &gt; <span
class="ph uicontrol"> Impression </td>
<td class="entry" headers="ID-00002163__entry__3">If TRUE, the
campaign's daily budgeted spend is spread out evenly throughout each
day. You must also provide either a Daily Monetary Budget or Daily
Impression budget. Daily Budget Pacing OR Lifetime Budget Pacing may be
enabled, but not both.
<p>For more details about even daily pacing, see <a
href="daily-pacing.html" class="xref">Daily Pacing</a>.</p></td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">enable_pacing</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Daily Monetary
Budget</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Budget  &gt;
 Media Cost  &gt; <span
class="ph uicontrol"> Daily </td>
<td class="entry" headers="ID-00002163__entry__3">The daily budget in
media cost. The currency symbol can be omitted and the default currency
will be used. Enter unlimited to represent unlimited budget.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">daily_budget</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Daily Impression
Budget</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Budget  &gt;
 Impression  &gt; <span
class="ph uicontrol"> Daily</td>
<td class="entry" headers="ID-00002163__entry__3">The daily budget in
impressions. Enter unlimited to represent unlimited budget.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">daily_budget_imps</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Enable Lifetime
Pacing</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Budget  &gt;
 Media Cost | Impression  &gt; <span
class="ph uicontrol"> Lifetime</td>
<td class="entry" headers="ID-00002163__entry__3">If TRUE, the
campaign's overall lifetime budget is spread out evenly over the
campaign billing period. Daily Budget Pacing OR Lifetime Budget Pacing
may be enabled, but not both.
<p>For more details about lifetime pacing, see <a
href="lifetime-pacing.html" class="xref"
title="Lifetime pacing intelligently distributes a budget over the lifespan of a line item&#39;s flight.">Lifetime
Pacing</a>.</p></td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">lifetime_pacing</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Lifetime Monetary
Budget</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Budget  &gt;
 Media Cost  &gt; <span
class="ph uicontrol"> Lifetime</td>
<td class="entry" headers="ID-00002163__entry__3">The lifetime budget in
dollars (media cost). The currency symbol can be omitted and the default
currency will be used. Enter unlimited to represent unlimited budget.

Warning: If Campaign, Line Item, and
Insertion Order Lifetime Budgets are all set to unlimited, severe
overspend can occur.
</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">lifetime_budget</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Lifetime Impression
Budget</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Budget  &gt;
 Impression  &gt; <span
class="ph uicontrol"> Lifetime</td>
<td class="entry" headers="ID-00002163__entry__3">The lifetime budget in
impressions. Enter unlimited to represent unlimited budget.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">lifetime_budget_imps</code></td>
</tr>
<tr class="even row">
<td colspan="4" class="entry"
headers="ID-00002163__entry__1 ID-00002163__entry__2 ID-00002163__entry__3 ID-00002163__entry__4">Buying
Strategies</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Buy Direct
Inventory</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Buying Strategies
 &gt;  Direct
Inventory</td>
<td class="entry" headers="ID-00002163__entry__3">The type of inventory
targeted by this campaign. If TRUE, you will target inventory managed by
your network.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">inventory_type</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Campaign Priority</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Buying Strategies
 &gt;  Buy Direct Inventory 
&gt;  Campaign Priority</td>
<td class="entry" headers="ID-00002163__entry__3">For a campaign
targeting direct inventory, there is no need to input a buying strategy
since you have already paid for inventory. However, you can set the
campaign's priority to weight the campaign against other direct
campaigns within your account. The campaign with the highest priority
will always win, even if a lower priority campaign bids more. For more
information about managing priority, see <a href="bidding-priority.html"
class="xref">Bidding Priority</a>.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">priority</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Buy Third Party
Inventory</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Buying Strategies
 &gt;  Buy Third-Party Inventory
</td>
<td class="entry" headers="ID-00002163__entry__3">The type of inventory
targeted by this campaign. If TRUE, you will target all third-party
inventory not managed by your network that has been enabled for
reselling (including external supply partners such as Microsoft
Advertising Exchange and Google Ad Manager.

Warning: Entering TRUE and a base CPM
bid may overwrite existing third-party buying strategies without notice.
</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">inventory_type</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">CPM Bid</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Buying Strategies
 &gt;  Buy Third-Party Inventory
 &gt;  Pay on a Per-Impression (CPM)
basis  &gt;  Bid a Media Cost
CPM</td>
<td class="entry" headers="ID-00002163__entry__3">Use this strategy to
bid a fixed dollar amount per thousand impressions.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">cpm_bid_type</code></td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00002163__entry__1 ID-00002163__entry__2 ID-00002163__entry__3 ID-00002163__entry__4">Targeting</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Target Desktops &amp;
Laptops</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Device and Supply Type</td>
<td class="entry" headers="ID-00002163__entry__3">By default, your
campaign will target all physical device types ( Desktops &amp; Laptops
, Tablets , and Phones ). To restrict the device types you are
targeting, enter FALSE.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">device_type_targets</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Target Tablets</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Device and Supply Type</td>
<td class="entry" headers="ID-00002163__entry__3">By default, your
campaign will target all physical device types (Desktops &amp; Laptops,
Tablets, and Phones). To restrict the device types you are targeting,
enter FALSE.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">device_type_targets</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Target Phones</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Device and Supply Type</td>
<td class="entry" headers="ID-00002163__entry__3">By default, your
campaign will target all physical device types (Desktops &amp; Laptops,
Tablets, and Phones). To restrict the device types you are targeting,
enter FALSE.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">device_type_targets</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Target Deal IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Deals  &gt;
 Deals</td>
<td class="entry" headers="ID-00002163__entry__3">The deal IDs to be
targeted by this campaign. A deal is an agreement between a seller and
buyer that may provide the buyer preferential pricing, access to
exclusive inventory, reduced competition on inventory, or other
opportunities.
<p>This is a comma separated list with quotations around each deal ID.
For example: "ABC123", "DEF456", "GHI789"</p></td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">deal_targets</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Include or Exclude
Direct Publishers</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 Direct Inventory  &gt; <span
class="ph uicontrol"> Publishers</td>
<td class="entry" headers="ID-00002163__entry__3">Valid value is Include
or Exclude. You can only use one value or the other.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">inventory_action</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Direct Publisher
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 Direct Inventory  &gt; <span
class="ph uicontrol"> Publishers</td>
<td class="entry" headers="ID-00002163__entry__3">Managed/direct
publisher IDs to be either excluded or included in targeting.
<p>This is a comma separated list. For example: 123, 456, 789</p></td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">publisher_targets</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Include or Exclude
Direct Placement Groups</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 Direct Inventory  &gt; <span
class="ph uicontrol"> Placement Groups</td>
<td class="entry" headers="ID-00002163__entry__3">Valid value is Include
or Exclude. You can only use one value or the other.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">inventory_action</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Direct Placement Group
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 Direct Inventory  &gt; <span
class="ph uicontrol"> Placement Groups</td>
<td class="entry" headers="ID-00002163__entry__3">The sites IDs to be
either excluded or included in targeting.
<p>This is a comma separated list. For example: 123, 456, 789</p></td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">site_targets</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Include or Exclude
Direct Placements</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 Direct Inventory  &gt; <span
class="ph uicontrol"> Placements</td>
<td class="entry" headers="ID-00002163__entry__3">Valid value is Include
or Exclude. You can only use one value or the other.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">inventory_action</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Direct Placement
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 Direct Inventory  &gt; <span
class="ph uicontrol"> Placements</td>
<td class="entry" headers="ID-00002163__entry__3">The placement IDs to
be either excluded or included in targeting.
<p>This is a comma separated list. For example: 123, 456, 789</p></td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">placement_targets</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Include or Exclude
Third-Party Sellers</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 3rd Party Inventory  &gt; <span
class="ph uicontrol"> Sellers</td>
<td class="entry" headers="ID-00002163__entry__3">Valid value is Include
or Exclude. You can only use one value or the other.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">member_default_action</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Third-Party Seller
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 3rd Party Inventory  &gt; <span
class="ph uicontrol"> Sellers</td>
<td class="entry" headers="ID-00002163__entry__3">Seller member IDs to
be either excluded or included in targeting.
<p>This is a comma separated list. For example: 123, 456, 789</p></td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">member_targets</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Include or Exclude
Third-Party Publishers</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 3rd Party Inventory  &gt; <span
class="ph uicontrol"> Publishers &amp; Categories</td>
<td class="entry" headers="ID-00002163__entry__3">Valid value is Include
or Exclude. You can only use one value or the other.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">platform_publisher_targets</code>
<p>Profile / <code
class="ph codeph">platform_content_category_targets</code></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Third-Party Publisher
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph menucascade">Inventory  &gt;
 3rd Party Inventory  &gt; <span
class="ph uicontrol"> Publishers &amp; Categories</td>
<td class="entry" headers="ID-00002163__entry__3">The third-party
publisher and content category IDs to be either excluded or included in
targeting.
<p>This is a comma separated list. For example: 123, 456, 789</p></td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">platform_publisher_targets</code>
<p>Profile / <code
class="ph codeph">platform_content_category_targets</code></p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Include or Exclude
Third-Party Placements</td>
<td class="entry" headers="ID-00002163__entry__2"></td>
<td class="entry" headers="ID-00002163__entry__3"></td>
<td class="entry" headers="ID-00002163__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Third-Party Placement
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"></td>
<td class="entry" headers="ID-00002163__entry__3"></td>
<td class="entry" headers="ID-00002163__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1"># of Imps over
lifetime</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Frequency</td>
<td class="entry" headers="ID-00002163__entry__3">The maximum number of
impressions per user.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">max_lifetime_imps</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1"># of Imps per user per
day</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Frequency</td>
<td class="entry" headers="ID-00002163__entry__3">The maximum number of
impressions per user per day.</td>
<td class="entry" headers="ID-00002163__entry__4">Profile / <code
class="ph codeph">max_day_imps</code></td>
</tr>
<tr class="even row">
<td colspan="4" class="entry"
headers="ID-00002163__entry__1 ID-00002163__entry__2 ID-00002163__entry__3 ID-00002163__entry__4">Creatives</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00002163__entry__1">Associated Creatives
IDs</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Associated Creatives</td>
<td class="entry" headers="ID-00002163__entry__3">The list of creative
IDs or codes associated to the campaign.
<p>This is a comma separated list. For example: 123, 456, 789</p></td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">creatives</code></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Landing Page URL</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Landing Page URL</td>
<td class="entry" headers="ID-00002163__entry__3">The optional landing
page URL for non-3rd party image and flash creatives.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">click_url</code></td>
</tr>
<tr class="odd row">
<td colspan="4" class="entry"
headers="ID-00002163__entry__1 ID-00002163__entry__2 ID-00002163__entry__3 ID-00002163__entry__4">Comments</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00002163__entry__1">Comments</td>
<td class="entry" headers="ID-00002163__entry__2"><span
class="ph uicontrol">Comments</td>
<td class="entry" headers="ID-00002163__entry__3">Comments about the
campaign.</td>
<td class="entry" headers="ID-00002163__entry__4">Campaign / <code
class="ph codeph">comments</code></td>
</tr>
</tbody>
</table>

Export a Spreadsheet

While this step is not required, it is recommended that you export the
Excel spreadsheet from Monetize to use as a
template and prevent errors.

1.  On the Campaigns screen, select
    the campaigns to edit.
2.  Select Edit
    in Excel \> Export selected to
    Excel or Export all to
    Excel.
3.  In the Download Spreadsheet
    window, select the columns you want to show and/or edit in the
    spreadsheet.
    

    Note: ID, Name, and Status will
    download by default.

    
4.  Click Download. The campaigns are
    downloaded into an editable Excel spreadsheet. The default
    spreadsheet name is `campaigns.xlsx`.

Edit the Spreadsheet



Tip: While you can use your own
spreadsheet containing matching column names, a spreadsheet downloaded
from Monetize will include the correct column
names. It is suggested to start with this downloaded spreadsheet to
avoid errors.



Name and Status are required for each campaign. When you're editing
existing campaigns, treat ID as read-only so that you don't accidentally
update the wrong campaign.

To create new campaigns, leave the ID field blank.

Import a Spreadsheet

1.  When you have edited and saved the spreadsheet, select
    Edit in
    Excel \> Import from
    Excel.
2.  In the Upload Spreadsheet
    window, click Browse....
3.  Select your edited spreadsheet. If the upload is successful, a
    confirmation message will display. If the spreadsheet is improperly
    formatted, an error message will display. Click
    Select another file to select a
    different spreadsheet.
4.  Click Next. The
    Upload Spreadsheet window will
    display the changes for you to review before applying them.
5.  Click Apply Settings. The changes
    will be applied.
6.  If the changes are applied successfully, a confirmation message will
    display. Proceed to step 9.
7.  If the changes are unsuccessful, an error message will list all the
    campaigns that could not be updated. Click on a red X for more
    details about the error for that campaign, or click
    Download Errors to download a
    spreadsheet containing all the rows that failed to update.
8.  Correct the errors on the spreadsheet and return to step 1.
9.  If there are no errors or you want to bypass editing errors, click
    Go to Campaigns to navigate back
    to the Campaigns screen.

Related Topics

- <a href="working-with-campaigns.html" class="xref">Working with
  Campaigns</a>
- <a href="create-a-campaign.html" class="xref">Create a Campaign</a>
- <a href="explore-campaigns.html" class="xref">Explore Campaigns</a>




