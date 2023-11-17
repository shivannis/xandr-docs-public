---
Title : Inventory - FAQ
Description : <div id="inventory-faq__section_unh_lls_4wb" >
## Inventory Audits
**How is audit information conveyed in the bid request?**
The results of inventory audits are available in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
---


# Inventory - FAQ



<div id="inventory-faq__section_unh_lls_4wb" >

## Inventory Audits

**How is audit information conveyed in the bid request?**

The results of inventory audits are available in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Request</a> as an inventory_audit
object. This includes the auditor_member_id, intended_audience,
inventory_attributes, and content_categories. Xandr audits will be in
the bid_info portion of the bid request and the auditor_member_id will
be null. If Xandr has not audited the inventory, there will be no
inventory_audit object in the bid_info portion of the bid request.

Seller audits will be in the "tags" level of the bid request, with an
inventory audit per tag, as applicable. The auditor_member\_ id will be
the seller's member ID for seller audits. Most bid requests are for a
single tag on a page, however some auctions are multi-tag auctions.
Since sellers audits appear on the tag level, each tag in a multi-tag
auction that has been audited by the seller will have an inventory_audit
object. If the seller has not audited the inventory, there will be no
inventory_audit object in the tag level.

Because the Xandr audits and seller audits are conducted independently,
it is possible that the results of the two audits may be different.
Buyers of inventory may decide which sellers they trust - and thus may
disregard any audit data from sellers that they do not trust. Buyers may
also decide how to reconcile any conflicts of audit data using their
relative trust between Xandr and seller audits.

**What data is available from an inventory audit?**

An inventory audit will include the data below about the impression:

Intended audience is an enum of general, children, young_adult, or
mature, and indicates the target maturity level of readers of the site.

The field inventory_attributes contains an array of the IDs of sensitive
attributes of the site that some advertisers may opt not to run on.
These ids can be found in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/inventory-attribute-service.html"
class="xref" target="_blank">Inventory Attribute Service</a> to
determine what they mean. The presence of an empty array in this field
indicates that the site has been audited and found to have **no**
sensitive attributes.



The field content_categories contains an array of the IDs of content
categories of the site. These ids can be found in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a> to determine
what they mean.

<div id="inventory-faq__note_jwk_yls_4wb" 

Note: You may see ids in this list that
are not visible to you in the content-category service.





**Who audits inventory?**

Xandr audits inventory by domain. Our auditors review the highest
traffic domains first, and have currently audited domains accounting for
over 75% of the traffic through the platform. Sellers of inventory may
also audit their inventory. When a seller audits their inventory, they
input the same type of data, using the same taxonomy that an Xandr
auditor uses for the inventory audit. A given impression may have no
audit information, only Xandr's audit, only the seller's audit, or both
Xandr and the seller's audit.



<div id="inventory-faq__section_z42_cms_4wb" >

## Platform Sellers

**How can I find the ID of a certain seller?**

This information is available through the API using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/platform-member-service.html"
class="xref" target="_blank">Platform Member Service</a>.






