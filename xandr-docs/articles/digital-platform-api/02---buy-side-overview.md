---
Title : 02 - Buy-Side Overview
ms.date: 10/28/2023
ms.custom: digital-platform-api
## Diagram
<figure id="ID-00000671__fig_r2d_sdg_rwb" class="fig fignone">
<p><img src="media/166636909.png"
---


# 02 - Buy-Side Overview




## Diagram

![Buy Side Overview](media/buy-side-overview.png)




## Object Definitions

- <a
  href="member-service.md"
  class="xref" target="_blank">Member</a>: The parent object for your
  account. Each member has a contractual relationship with
  Xandr.
- <a
  href="advertiser-service.md"
  class="xref" target="_blank">Advertiser</a>: The object which
  represents a single advertiser on Xandr.
  Generally, an advertiser can be associated with a single brand.
- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order</a>: This object groups
  line items.  
- <a
  href="line-item-service.md"
  class="xref" target="_blank">Line Item</a>: This object tracks all
  revenue in the system and defines how inventory will be purchased,
  including bidding strategies and media cost budgeting.
- <a
  href="creative-service.md"
  class="xref" target="_blank">Creative</a>: The actual advertisement to
  be served. The specification of a creative includes format, size and
  audit attributes.
- <a
  href="segment-service.md"
  class="xref" target="_blank">Segment</a>: Used for targeting specific
  groups of users who have been added to the segment through a pixel.
- <a
  href="conversion-pixel-service.md"
  class="xref" target="_blank">Conversion Pixel</a>: These objects are
  used for tracking conversions as well as optimization for CPA
  campaigns and line items.
- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile</a>: This object defines all of
  the targeting parameters for another object (e.g., line item). Please
  note that a profile is the only object that does not correspond to the
  objects in the UI. For example  combines a
  profile (targeting) and a campaign (budget and flight dates) and shows
  a campaign alone.






