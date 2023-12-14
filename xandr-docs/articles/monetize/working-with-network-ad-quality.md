---
Title : Working with Network Ad Quality
Description : Ad quality settings allow sellers to determine which creatives will be
ms.date: 10/28/2023
allowed to serve on their inventory. These rules are applied based on
---


# Working with Network Ad Quality



Ad quality settings allow sellers to determine which creatives will be
allowed to serve on their inventory. These rules are applied based on
attributes of the creative such as the buyer or brand. Sellers may also
determine which rules to apply based on other information about the
impression such as the size of the creative or the user's session
frequency.

This document provides an overview of the ad quality settings that can
be configured by network administrator users. For more information about
the configuration options available to publisher users, see
<a href="working-with-publisher-ad-quality.md" class="xref">Working
with Ad Quality</a>.



<b>Important:</b> For comprehensive
information about our quality standards for creatives, see
<a href="creative-standards.md" class="xref"
title="Xandr has foundational policies that all creative and inventory content must follow. Creatives that violate these policies will be removed from the platform, and will be ineligible for both real-time bidding (RTB) and in-network buying. Repeated violation of these policies may result in strikes against offending members.">Creative
Standards</a>.



Network Profiles

A *Network Profile* is a collection of ad quality settings that is
created by a network administrator. These settings are applied to every
impression across all publishers associated with a network. As a result,
publisher-level settings may only be more strict than the Network
Profile, never less; restrictions set in Network Profiles cannot be
loosened at the publisher level. For example, if an outside network's
demand (Let's call it Network **X**) is banned by the Network Profile,
and then a publisher's Publisher Template or Custom Profile is updated
with a rule enabling creatives from Network **X**, those creatives will
still be banned from serving on that publisher's inventory.

For more information, see
<a href="update-your-network-profile.md" class="xref">Update Your
Network Profile</a>.

Publisher Templates

A Publisher Template, like a Network Profile, is a collection of ad
quality settings. Publisher Templates ease publisher creation and set-up
by allowing a network administrator to define common ad quality settings
for a number of publishers at once. When a template is edited, all
publishers using that template will inherit the updated settings. Use a
Publisher Template if you want to maintain a group of publishers' ad
quality settings together. Note that associating a publisher with a
Publisher Template is strictly optional.

For more information, see
<a href="create-a-publisher-template.md" class="xref">Create a
Publisher Template</a>.

In This Section

- <a href="network-ad-quality-screen.md" class="xref">Network Ad Quality
  Screen</a> A description of the screen elements and what they do.
- <a href="update-your-network-profile.md" class="xref">Update Your
  Network Profile</a> Determine ad quality settings for all the
  impressions across your network.
- <a href="create-a-publisher-template.md" class="xref">Create a
  Publisher Template</a> Create a collection of ad quality settings that
  can be reused across multiple publishers.
- <a href="ad-quality-order-of-operations.md" class="xref">Ad Quality
  Order of Operations</a> How our system decides what ad quality
  settings to apply to each impression.
- <a href="opt-out-of-gambling-ads.md" class="xref">Opt Out of Gambling
  Ads</a> What to do if you don't want gambling ads to run on your
  inventory.

Related Topics

- <a href="working-with-publisher-ad-quality.md" class="xref">Working
  with Ad Quality</a>




