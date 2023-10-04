---
Title : 02 - Buy-Side Overview
Description : <div id="ID-00000671__section_e1d_k4g_rwb" >
## Diagram
<figure id="ID-00000671__fig_r2d_sdg_rwb" class="fig fignone">
<p><img src="xandr-api/images/166636909.png"
---


# 02 - Buy-Side Overview



<div id="ID-00000671__section_e1d_k4g_rwb" >

## Diagram

<figure id="ID-00000671__fig_r2d_sdg_rwb" class="fig fignone">
<p><img src="xandr-api/images/166636909.png"
id="ID-00000671__image_s2d_sdg_rwb" class="image" width="800" /></p>
</figure>



<div id="ID-00000671__section_fgd_sdg_rwb" >

## Object Definitions

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
  class="xref" target="_blank">Member</a>: The parent object for your
  account. Each member has a contractual relationship with
  Xandr.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">Advertiser</a>: The object which
  represents a single advertiser on Xandr.
  Generally, an advertiser can be associated with a single brand.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order</a>: This object groups
  line items.  
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
  class="xref" target="_blank">Line Item</a>: This object tracks all
  revenue in the system and defines how inventory will be purchased,
  including bidding strategies and media cost budgeting.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative</a>: The actual advertisement to
  be served. The specification of a creative includes format, size and
  audit attributes.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/segment-service.html"
  class="xref" target="_blank">Segment</a>: Used for targeting specific
  groups of users who have been added to the segment through a pixel.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/conversion-pixel-service.html"
  class="xref" target="_blank">Conversion Pixel</a>: These objects are
  used for tracking conversions as well as optimization for CPA
  campaigns and line items.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
  class="xref" target="_blank">Profile</a>: This object defines all of
  the targeting parameters for another object (e.g., line item). Please
  note that a profile is the only object that does not correspond to the
  objects in the UI. For example  combines a
  profile (targeting) and a campaign (budget and flight dates) and shows
  a campaign alone.






