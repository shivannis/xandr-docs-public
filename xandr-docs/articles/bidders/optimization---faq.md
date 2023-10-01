---
Title : Optimization - FAQ
Description : <div id="optimization-faq__section_jld_fxt_4wb" >
## Data for Optimization
**What data is available for optimization**
Buyers of inventory may optimize their purchasing logic using any of the
fields sent in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
---


# Optimization - FAQ



<div id="optimization-faq__section_jld_fxt_4wb" >

## Data for Optimization

**What data is available for optimization**

Buyers of inventory may optimize their purchasing logic using any of the
fields sent in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Request</a>. The most common fields
used are:

- `selling_member_id` - the member ID of the seller.
- `url` - the most granular information about the url of the impression
  that can be passed to the bidder. This is determined by the seller's
  business rules and the data that was passed to Xandr for that
  impression.
- `country` - the country from which the user is viewing the impression.

Additional data that may be used for optimization includes the
following:

- `publisher_id` - the unique ID of the publisher. This ID cannot be
  dereferenced, but impressions from a given publisher may perform
  similarly and thus be considered an optimizable chunk. For most
  sellers on the platform, publisher_id is the top level in the
  hierarchy.
- `site_id` - the unique ID of the site. This ID cannot be dereferenced,
  but impressions from a given site may perform similarly and thus be
  considered an optimizable chunk. Sites are below publishers in the
  Xandr hierarchy, so any publisher will have one or more sites.
- `id` (within the tags array) - the unique ID of the tag. This ID
  cannot be dereferenced, but impressions from a given tag may perform
  similarly and thus be considered an optimizable chunk. Tags are below
  site in the Xandr hierarchy, so any site will have one or more tags.
- `inventory_audits` - see the Inventory Audits in the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/inventory---faq.html"
  class="xref" target="_blank">Inventory - FAQ</a>.
- `position` - when available, this indicates whether the ad tag is
  above or below the fold.



<div id="optimization-faq__section_kny_mxt_4wb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
  class="xref" target="_blank">Bid Request</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/inventory---faq.html"
  class="xref" target="_blank">Inventory - FAQ</a>






