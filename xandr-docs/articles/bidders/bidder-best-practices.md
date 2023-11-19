---
Title : Bidder Best Practices
Description : As you integrate your bidder and get set to go live, there are a number
ms.date : 10/28/2023
of wiki pages and bidder settings we recommend using to ensure that you
have the best experience possible on our platform. This page highlights
---


# Bidder Best Practices



As you integrate your bidder and get set to go live, there are a number
of wiki pages and bidder settings we recommend using to ensure that you
have the best experience possible on our platform. This page highlights
a number of services, bidder fields, and practices that are commonly
overlooked but prove very useful to our partners.



## Good Reads

- <a
  href="platform-member-service.md"
  class="xref" target="_blank">Platform Member Service</a> - Read-only
  service that provides you with the most up-to-date list of sellers on
  our platform and shows information about data providers 
- <a
  href="content-category-service.md"
  class="xref" target="_blank">Content Category Service</a> - Allows you
  to see what content categories are registered and their corresponding
  IDs.   
- <a
  href="inventory-attribute-service.md"
  class="xref" target="_blank">Inventory Attribute Service</a> - Allows
  you to see what inventory attributes are registered in
  Xandr's system
- <a
  href="creative-standards-and-auditing.md"
  class="xref" target="_blank">Creative Standards and Auditing</a> -
  Highlights our Creative Audit Policy and standards
- <a
  href="audit-notify-request.md"
  class="xref" target="_blank">Audit Notification Request</a> - Alerts
  you to any changes in the creative audit status (including creative
  approvals and rejections)
- <a
  href="outgoing-bid-request-to-bidders.md"
  class="xref" target="_blank">Bid Request</a>  - Provides all of the
  fields sent in the bid request to you bidder





## Recommended

We recommend to set the `audit_notify_email` and `sherlock_notify_email`
fields in the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>  to valid email
addresses. This will ensure you are notified when your creatives are
audited and will enable you to take action, where needed.





## Not Recommended

A practice that we do **not** typically recommend is setting your bidder
profile to run exclusively on a allowlist by domain.  While this is
possible, there is a very good chance you will be severely limiting the
traffic you are seeing mainly because publishers reserve the right to
mask domains or not provide any domain detail at all.  If you find there
is a publisher that is not providing the level of transparency you
desire, please contact your Xandr
representative.





## Related Topics



- <a href="https://docs.xandr.com/csh?context" class="xref"
  target="_blank">Auction Configuration &amp; Feedback</a>
- <a
  href="integrate-a-bidder.md"
  class="xref" target="_blank">Integrate a Bidder</a>
- <a
  href="api-services.md"
  class="xref" target="_blank">API Services</a>
- <a
  href="bidder-profile---faq.md"
  class="xref" target="_blank">Bidder Profile - FAQ</a>
- <a
  href="legacy-bidder-profile-service.md"
  class="xref" target="_blank">Legacy Bidder Profile Service</a>








