---
Title : Breaking Changes
Description : Our impression bus API and bidding protocol are continually changing.
ms.date : 10/28/2023
---


# Breaking Changes



Our impression bus API and bidding protocol are continually changing.
The vast majority of changes are seamless additions of new
functionality, but occasionally we introduce "breaking changes" that may
require you to adjust your integration.

This page explains what changes qualify as "breaking changes" to our
impression bus API and our bidding protocol. It also gives you examples
of changes that do not quality as breaking changes.



<b>Note:</b> Xandr
reserves the right to fix bugs, adjust functionality to comply with our
<a href="https://wiki.xandr.com/display/policies/Home" class="xref"
target="_blank">service policies</a> (login required) and legal
obligations, and change features and products in alpha and beta without
providing early notice.





## Impression Bus API

In the context of our <a
href="impression-bus-api.md"
class="xref" target="_blank">Impression Bus API</a>, the following types
of changes qualify as breaking changes:

- Removal of a field
- Change of a field from non-mandatory to mandatory
- Addition of new validation rules
- Modification of the data type of a field (e.g., array of IDs converted
  to array of objects)
- Modification of throttling of requests
- Reduction in the number of objects returned by responses

When we introduce a breaking change into our impression bus API, we will
support two versions of the API in production, one with and one without
the breaking change, for 60 days. We will announce these changes and how
to correctly reach each version during the breaking changes
period (see <a href="breaking-changes.md#ID-00000394__receive"
class="xref">Receiving Breaking Change Notifications</a>).





## Bidding Protocol

In the context of our <a
href="bidding-protocol.md"
class="xref" target="_blank">Bidding Protocol</a> (requests and
responses), the following types of changes qualify as breaking changes:

- Removal of a field
- Change of a field from non-mandatory to mandatory
- Modification of the data type of a field (e.g., array of IDs converted
  to array of objects)

We will announce breaking changes to our bidding protocol at least 45
days before the changes take effect (see
<a href="breaking-changes.md#ID-00000394__receive"
class="xref">Receiving Breaking Change Notifications</a>). 





## Examples of Non-Breaking Changes

The following types of changes do not quality as breaking changes.
Please note that this list is not exhaustive; these are just some
examples of non-breaking changes.

- Addition of a new non-mandatory field (API or bidding protocol)
- Addition of a new service (API)
- Addition of metrics/dimensions to reports (API)
- Addition of a new report type (API)
- Deprecation of a field without removing it (API or bidding protocol)
- Reduction or increase in the number of concurrent reports allowed
  (API)
- Change in order of fields in an object, objects in an array, etc. (API
  or bidding protocol)




## Receiving Breaking Change Notifications

- If you have a Xandr user account, you will
  receive breaking change communications automatically. 
- If you do not have your own Xandr user
  account, you can sign up to receive communications
  at <a href="https://www.appnexus.com/en/subscribe" class="xref"
  target="_blank">https://www.<span
  class="ph">appnexus.com/en/subscribe</a>. 






