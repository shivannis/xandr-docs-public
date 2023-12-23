---
Title : Floor Rule Targeting
Description : When creating a floor rule, you can target the rule based on several
ms.date: 10/28/2023
difference targeting criteria. The following sections describe the
---


# Floor Rule Targeting



When creating a floor rule, you can target the rule based on several
difference targeting criteria. The following sections describe the
different types of floor rule targeting.

Frequency Targeting

When creating a floor rule, you can target the rule based on the number
of times a user has viewed an impression. You can set this rule based on
either the minimum or maximum number of times the user has viewed an
impression, or you can set both values to define a range to which this
rule applies.

From the Create New Floor Rule or
Edit Floor Rule page, locate
Targeting.

- Select the Scope to indicate whether
  you would like frequency to be calculated based on views on inventory
  across the entire platform (Platform
  Wide), or only views on the publisher's inventory
  (Publisher Specific).
- Check the User seen at most \_\_
  times checkbox and then type the maximum number of impression
  views to which the rule will apply.
- Check the User seen at least \_\_
  times checkbox and then type the minimum number of impression
  views you want to user to experience before the rule applies.
- If you choose to set a minimum and/or maximum value, you can select
  the option to **Apply to users without a valid
  Xandr User ID**. Doing this might violate
  frequency caps.

Geography Targeting

When creating floor rules, you can target users based on the geographic
location of the users.

From the Create New Floor Rule or
Edit Floor Rule page, locate
Targeting. Next to
Inventory, click
Edit.

See
<a href="geography-targeting.md" class="xref">Geography Targeting</a>
for details on the different types of geography targeting.

Segment Targeting

By default, floor rules target all users. Segment targeting allows you
to narrow the users targeted by included or excluding the segments they
occupy.

From the Create New Floor Rule or
Edit floor rule page, locate
Targeting. Next to
Segment, click
Edit.

See <a href="segment-targeting.md" class="xref"
title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
Targeting</a> for details on setting up segment targeting using boolean
logic.

Inventory Targeting

When creating or editing a floor rule, you can select specific inventory
you would like the rule to apply to. You can target direct inventory
placements, universal categories, or custom categories.

Getting There

From the Create New Floor Rule or
Edit floor rule page, locate
Targeting. Next to
Inventory, click
Edit.

Target Direct Inventory

By default, the floor rule targets all of your direct inventory.
However, you can narrow your targeting to include or exclude specific
placement groups or placements.

To target direct inventory, click the the
Direct Inventory tab. Click
Placement Groups to include or exclude
groups of placements, and Placements
to include or exclude specific placements.



<b>Important:</b>

By default, you are in browse mode, which allows you to browse or search
the placements or placement groups. To manage objects by ID, click
text . In text mode, type one or more
IDs, separated by commas, spaces, or lines, then click
Include or
Exclude.



Target Custom Categories

By default, your campaign will target all custom categories. However,
you can narrow your targeting to include or exclude specific custom
categories.



<b>Note:</b> The
Custom Categories tab shows you the
custom categories that you have applied to your own placement groups
and/or placements for direct buying as well as the custom categories
that other sellers have exposed to you for third-party buying. See
<a href="content-category-targeting.md" class="xref">Content Category
Targeting</a> for more information.



Click the Custom Categories tab to
include or exclude categories in the floor rule.



<b>Important:</b>

When targeting more than one custom category, the categories have an OR
relationship. For example, if you include "Custom Category 1" and
"Custom Category 2", you will bid on inventory that is in **either**
category. The inventory does not need to be in both categories.



Target Universal Categories

By default, your campaign will target all universal categories. However,
you can narrow your targeting to include or exclude specific universal
categories.



<b>Note:</b> Universal categories are defined
by Xandr. When Xandr
reviews inventory, we apply these categories based on the inventory's
content. For example, a car dealership placement group would be assigned
to the "Autos & Vehicles" category. Sellers can apply universal
categories when self-reviewing inventory as well.



Click the the Universal Categories tab
to include or exclude universal categories in the floor rule.

- Click Categories to see the
  top-level universal categories. You can either include or exclude
  top-level categories or drill into a category to view its child
  categories.
- Click Sub-Categories to see the
  child universal categories in the context of their parent categories.
  You can either include or exclude sub-categories. Note that when you
  exclude a top-level category, its sub-categories are not available for
  further inclusion or exclusion.



<b>Important:</b> When targeting more than one
universal category, the categories have an OR relationship. For example,
if you target the "News" and "Finance" categories, you will bid on
inventory that is in **either** category. The inventory does not need to
be in both categories.



Inventory Targeting Summary

To view a summary of the targeting you have applied to this rule, click
the Summary tab. To continue editing,
return to any of the other tabs, or click
Add to close the Inventory targeting
dialog and save all targeting.

Page Properties Targeting

When creating a floor rule, you can target users based on the position
of the tag on the page or based on values passed in the query string of
the ad call.



<b>Tip:</b> Since tag position and query
strings are passed by the seller, these targeting options are therefore
most often used when buying direct inventory. For more details about
using query string targeting, see
<a href="query-string-targeting-via-placement-tags-and-segments.md"
class="xref">Query String Targeting via Placement Tags and Segments</a>.



From the Create New Floor Rule or
Edit floor rule page, locate
Targeting . Next to
Page Properties , click
Edit.

See <a href="page-properties-targeting.md" class="xref"
title="Through page properties targeting, you can target impressions based on the position of the creative tag on the page or based on values passed in the query string of the ad call.">Page
Properties Targeting</a> for details on setting up your page properties
targeting.

Size Targeting

When creating a floor rule, by default, all sizes of inventory are
included. you can target inventory of one or more sizes.

From the Create New Floor Rule or
Edit floor rule page, under
Targeting, locate
Size. Select
Specific sizes... then click a size to
select it for targeting. Press Shift +
Click or Command + Click to
select multiple sizes within the list. You can also enter a custom size
by entering the dimensions in the Add a new
size target boxes, and then clicking
Add **Size** . The size you have added
will be displayed under the Custom
Sizes header.

Demand Filtering

By default, the floor rule targets all of your demand. However, you can
narrow your targeting to include or exclude specific buyers, brands, and
offer categories.

Getting There

From the Create New Floor Rule or
Edit floor rule page, locate
Targeting. Next to
Demand, click
Edit.

Target Buyers

By default, the floor rule targets all of your buyers. However, you can
narrow your targeting to include or exclude specific buyers.

Click the Buyers tab to include or
exclude specific buyers from a floor rule.



<b>Tip:</b> By default, you are in browse
mode, which allows you to browse or search the buyers. To manage buyers
by ID, click text. In text mode, type
one or more IDs, separated by commas, spaces, or lines, then click
Include or
Exclude.



Target Brands

By default, the floor rule targets all brands. However, you can narrow
your targeting to include or exclude specific brands.

Click the Brands tab to include or
exclude specific brands in a floor rule.



<b>Tip:</b> By default, you are in browse
mode, which allows you to browse or search the buyers. To manage buyers
by ID, click text. In text mode, type
one or more IDs, separated by commas, spaces, or lines, then click
Include or
Exclude.



Target Offer Categories

By default, the floor rule targets all offer categories. However, you
can narrow your targeting to include or exclude specific categories.

Click the Offer Categories tab to
include or exclude specific categories in a floor rule.



<b>Tip:</b> By default, you are in browse
mode, which allows you to browse or search the buyers. To manage buyers
by ID, click text. In text mode, type
one or more IDs, separated by commas, spaces, or lines, then click
Include or
Exclude.



Demand Filtering Summary

To view a summary of the targeting you have applied to this rule, click
the Summary tab. To continue editing,
return to any of the other tabs, or click
Add to close and save all Demand
Filtering targeting.

Related Topics

- <a href="create-a-floor-rule.md" class="xref">Create a Floor Rule</a>
- <a href="update-floor-rules.md" class="xref">Update Floor Rules</a>




