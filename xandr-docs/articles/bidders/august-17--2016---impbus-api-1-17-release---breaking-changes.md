---
Title : August 17, 2016 - ImpBus API 1.17 Release - Breaking Changes
Description : We are pleased to announce the release of version 1.17 of the
ms.date : 10/28/2023
---


# August 17, 2016 - ImpBus API 1.17 Release - Breaking Changes



We are pleased to announce the release of version 1.17 of the
AppNexus ImpBus API.



<b>Warning:</b> In addition to new features,
this release includes breaking changes. We will therefore support two
versions of the API for the next 60 days, as stated in our <a
href="breaking-changes.md"
class="xref" target="_blank">Breaking Changes</a> policy. The changeover
date is **October 17, 2016**.

**Version 1.16**: This version **does not** include breaking changes.
The <a href="https://api.adnxs.com" class="xref" target="_blank"><code
class="ph codeph">https://api.</code><code
class="ph codeph">adnxs</code><code
class="ph codeph">.com</code></a> endpoint will continue to point to
version 1.16 for 60 days. After that time, this endpoint will point to
version 1.17.

**Version 1.17**: This version **does** include breaking changes and new
features. For the next 60 days, to use this version, you must point
directly to it in your calls, e.g.,
<a href="https://api.adnxs.com/v1.17" class="xref" target="_blank"><code
class="ph codeph">https://api.</code><code
class="ph codeph">adnxs</code><code
class="ph codeph">.com/v1.17</code></a>.




## Breaking Changes

All of the changes described in this section are only present in version
1.17.

**Endpoint Changes**

We are discontinuing the endpoints for versions
<a href="https://api.adnxs.com/v1.14" class="xref"
target="_blank">https://api.adnxs.com/v1.14</a>
and <a href="https://api.adnxs.com/v1.15" class="xref"
target="_blank">https://api.adnxs.com/v1.15</a>.


<b>Note:</b> Despite the names, these
endpoints already point to version 1.16.



**Changed Services**

**Authentication Service**

The <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> no longer
supports the GET method for user name and password. Use the POST method
instead.

**Creative Service**

The following changes are being made to the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>:

- The `status` object has been added to specify how the creative is
  hosted and whether the creative is ready to serve or not. 
  `user_ready` specifies whether the creative is ready to serve to
  users. Possible values are "true" or "false".
  `hosted_assets_association_complete` (read-only) specifies the status
  of the creative uploaded by AppNexus' internal
  systems. Possible values: "true" or "false" for hosted creatives,
  "null" for third-party creatives.
- The following fields are now read-only:
  - The `adservers` field, which specifies the ad servers that deliver
    the creative or that are called for data collection purposes during
    the delivery of the creative.
  - The `active` field, which specifies the state of the creative.
    Possible values: "true" or "false".
- The following fields are being removed:
  - `google_audit_feedback`

  - `google_audit_status`

  - `msft_audit_status`

  - `msft_audit_feedback`

  - `msft_external_audit_status`

  - `msft_external_audit_feedback`

    `Google_audit_feedback` and `google_audit_status` have been replaced
    by `adx_audit`, a read-only object contains information about the
    status and feedback related to the Google AdExchange audit of the
    creative. 

**Creative Template Service**

The <a
href="creative-template-service.md"
class="xref" target="_blank">Creative Template Service</a> no longer
supports the `content_xml` field`.`

**Deprecated Reporting Dimensions**

Currently, several reports include dimensions that are concatenations of
the object ID and object name fields. For example, the Network Analytics
report includes the dimension `advertiser`, which is a concatenation
of `advertiser_ID` and `advertiser_name`. These concatenated fields are
being deprecated as redundant. The individual component fields (ID and
name) will remain. In the given example, there will no longer be
an `advertiser` reporting dimension, but you can still
use `advertiser_ID` and `advertiser_name`.

**Buyer Platform Billing**

The following fields are being eliminated from the <a
href="bidder-billing-report-api.md"
class="xref" target="_blank">Bidder Billing Report API</a>:

- `bidder`
- `buyer_member`
- `publisher`
- `seller_member`

**Platform Buyer**

The following fields are being eliminated from the <a
href="bidder-platform-buyer-report.md"
class="xref" target="_blank">Bidder Platform Buyer Report</a>:

- `bidder`
- `buyer_member`
- `content_category`
- `creative`
- `publisher`
- `seller_member`
- `site`
- `tag`

**Platform Seller**

The following fields are being eliminated from the <a
href="platform-seller-report.md"
class="xref" target="_blank">Platform Seller Report</a>:

- `bidder`
- `buyer_member`
- `publisher`
- `seller_member`
- `site`
- `tag` 

**Seller Platform Billing**

The following fields are being eliminated from the <a
href="seller-platform-billing-report.md"
class="xref" target="_blank">Seller Platform Billing Report</a>:

- `bidder`
- `buyer_member`
- `publisher`
- `seller_member`
- `site`

**Changed Error Messages**

**Authentication Expires**

If your authentication token has been in continuous use for 24 hours, it
will expire. Attempts to connect will be rejected with the status code
`401` for an unauthorized connection. Previously, this error produced
status code `200 OK`.

**Rate Limits**

If you exceed the rate limits specified by the <a
href="api-best-practices.md"
class="xref" target="_blank">API Best Practices</a>, the error status
returned will be `429` and the number of seconds to wait before retrying
will be specified by the `Retry-After` header. Previously, the error
returned was status `405`.






