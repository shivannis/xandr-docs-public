---
Title : Selling Guide
Description : This guide helps you understand the sell-side capabilities of
ms.date: 10/28/2023
Microsoft Monetize and provides step-by-step
instructions for working with managed publishers with whom you have a
direct financial relationship. For details about network-level features
---


# Selling Guide



This guide helps you understand the sell-side capabilities of
Microsoft Monetize and provides step-by-step
instructions for working with managed publishers with whom you have a
direct financial relationship. For details about network-level features
that apply to all publishers, see the
**<a href="network-guide.md" class="xref">Network Guide</a>**.



<b>Tip:</b> New to sell-side setup tasks and
concepts? Check our **<a
href="training-resources/training-microsoft-advertising-learning-lab.md"
class="xref" target="_blank">Training: Microsoft Advertising's Learning
Lab</a>** for self-paced videos and upcoming classroom and webinar
sessions.



In This Guide

- <a href="working-with-publishers.md" class="xref">Working with
  Publishers</a> In Xandr, the publisher object
  is the top level of the sell-side hierarchy (Publishers \> Placement
  Groups \> Placements). When you create a publisher, you define your
  financial and business relationship with the publisher, specify how
  you would like to sell the publisher's inventory to your
  Xandr partners, and set the types of
  acceptable payments, payment terms, and ad quality settings.
- <a href="working-with-payment-rules.md" class="xref">Working with
  Payment Rules</a> Payment rules represent a financial agreement
  between a network and a publisher. A network may have a single payment
  rule for all impressions from a publisher, or it might have a "base
  rule" that serves as a default. More specific "conditional rules" can
  be defined that apply to individual impressions based on geography,
  frequency, or other targeting.
- <a href="working-with-publisher-ad-quality.md" class="xref">Working
  with Ad Quality</a> Ad quality settings allow sellers to determine
  which creatives will be allowed to serve on their inventory. These
  rules are applied based on attributes of the creative such as the
  buyer or brand. Sellers may also determine which rules to apply based
  on other information about the impression such as the size of the
  creative or the user's session frequency. This section provides an
  overview of the ad quality settings that can be configured for
  specific publishers. For more information about the ad quality options
  that apply across all or multiple publishers, see
  <a href="working-with-network-ad-quality.md" class="xref">Working with
  Network Ad Quality</a>.
- <a href="working-with-placement-groups.md" class="xref">Working with
  Placement Groups</a> In Monetize, placement
  groups allow publishers to organize and categorize placements based on
  ad quality settings and auditing criteria. You can create numerous
  placement groups that live under a publisher. Additionally, since
  placement groups are the parents of placements, each placement group
  can act as a folder under which related placements can live. Lastly,
  if you wished to enable your placements for reselling, which adds them
  to the general pool of real-time unaudited inventory, you would do so
  at the placement group level.
- <a href="working-with-placements.md" class="xref">Working with
  Placements</a> A placement is basically an ad tag, for example, a
  300x250 slot on mysite.com. Placements may be used by publishers, by
  their intermediaries who are using Xandr
  Monetize as their publisher ad server, or by advertisers who
  wish to traffic a direct media buy through Xandr
  Monetize. When you create a placement in
  Monetize, you select the size and types of
  creatives that can serve on the placement, set a reserve price for
  your managed and external demand or just for external demand and
  self-classify the placement with categories and sensitive attributes
  for targeting in campaigns and for reporting.
- <a href="reselling-managed-inventory.md" class="xref">Reselling
  Managed Inventory</a> In addition to selling your publishers'
  inventory to managed advertisers, you can resell managed inventory to
  the entire Xandr platform. This section shows
  you the various ways to expose your inventory for targeting and how to
  make sure your placements can be bought by third parties.

Key Sell-Side Features

Microsoft Monetize has a number of features that
allow you to maintain business and technical relationships with your
managed publishers.

Key Features

Microsoft Monetize is more than just an ad server.
Using Monetize, you can:

- Set up publishers and traffic campaigns on managed inventory.
- Resell inventory on the Xandr platform for
  better monetization.
- Apply optimization strategies to your direct campaigns; optimizing
  direct campaigns is as important as optimizing on third-party
  inventory.
- Manage individual publishers' ad quality requirements, ensuring that
  you meet expectations about the quality and content of ads served on
  their sites.

Publishers, Placement Groups, and Placements

Within Monetize, the hierarchy for Publisher
organization is as follows: Publisher, Placement Group, Placement.

Publisher, the broadest unit, is where you define your financial
relationship with a given publisher. A Placement Group can be thought of
as a folder in which to organize your Placements; it's also where you
will assign sensitive attributes and content categories. A Placement,
the most granular unit, is equivalent to an ad tag or ad call. You can
also define a financial relationship on the Placement level that
overrides your settings at the Publisher level.

Regarding the relationships within this hierarchy: Each Publisher can be
associated with one or more Placement Groups, and that a Placement Group
may have one or more Placements beneath it.




