---
Title : Working with Ad Quality
Description : Ad quality settings allow sellers to determine which creatives will be
ms.date: 10/28/2023
allowed to serve on their inventory. These rules are applied based on
---


# Working with Ad Quality



Ad quality settings allow sellers to determine which creatives will be
allowed to serve on their inventory. These rules are applied based on
attributes of the creative such as the buyer or brand. Sellers may also
determine which rules to apply based on other information about the
impression such as the size of the creative or the user's session
frequency.

This topic provides an overview of the ad quality settings that can be
configured by publisher users. For more information about the
configuration options available to network administrator users, see
<a href="working-with-network-ad-quality.md" class="xref">Working with
Network Ad Quality</a>.



<b>Important:</b> For comprehensive
information about our quality standards for creatives, see
<a href="creative-standards.md" class="xref"
title="Xandr has foundational policies that all creative and inventory content must follow. Creatives that violate these policies will be removed from the platform, and will be ineligible for both real-time bidding (RTB) and in-network buying. Repeated violation of these policies may result in strikes against offending members.">Creative
Standards</a>.





<b>Note:</b> If an Ad Quality (AQ) is set as
`default_brand_status:banned` but the parent brand is set as
`status:trusted`, the child brand overrides the setting in
`default_brand_status` and it will be able to serve unless it is
explicitly banned in the Ad Profile's brand override list.



Reference

- <a href="explore-publisher-ad-quality.md" class="xref">Explore
  Publisher Ad Quality</a> - A reference covering the major user
  interface elements and their functionality.

How-Tos

- <a href="create-a-custom-profile.md" class="xref">Create a Custom
  Profile</a> - Maintain a unique set of ad quality rules for one
  publisher.
- <a href="create-publisher-ad-quality-rules.md" class="xref">Create
  Publisher Ad Quality Rules</a> - Dynamically determine ad quality
  settings for each impression.

Custom Profiles

A Custom Profile creates a new collection of ad quality settings for one
publisher. A Custom Profile may use an existing Publisher Template as a
starting point; note that future changes to a Publisher Template are not
applied to any Custom Profiles that inherit from that template. Use a
Custom Profile if you want to maintain unique ad quality rules for one
publisher.

For more information, see
<a href="create-a-custom-profile.md" class="xref">Create a Custom
Profile</a>.

Publisher Base and Conditional Rules

Publisher Base and Conditional Rules give you the ability to dynamically
determine which collection of ad quality settings (i.e., Publisher
Template or Custom Profile) you would like to apply to a particular
impression based on attributes such as creative size, placement, or user
frequency. The Base Rule is the publisher rule that is chosen when no
Conditional Rules exist, or when the existing Conditional Rules'
targeting requirements are not met by an impression. Only one Base or
Conditional Rule from the publisher is chosen in addition to the Network
Profile.

For more information, see
<a href="create-publisher-ad-quality-rules.md" class="xref">Create
Publisher Ad Quality Rules</a>.

Related Topics

- <a href="working-with-network-ad-quality.md" class="xref">Working with
  Network Ad Quality</a>
- <a href="explore-publisher-ad-quality.md" class="xref">Explore
  Publisher Ad Quality</a>
- <a href="selling-guide.md" class="xref">Selling Guide</a>




