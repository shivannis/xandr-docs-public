---
Title : September 5, 2017 - API Version 1.18 Release - Breaking Changes
Description : We are pleased to announce the release of version 1.18 of the
---


# September 5, 2017 - API Version 1.18 Release - Breaking Changes



We are pleased to announce the release of version 1.18 of the
AppNexus Imp Bus API.  



Warning: ImpBus API

In addition to new features, this release includes breaking changes. We
will therefore support two versions of the API for the next 60 days, as
stated in our <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/breaking-changes.html"
class="xref" target="_blank">Breaking Changes</a> policy. The changeover
date is **November 13, 2017**.

**Version 1.17**: This version **does not** include breaking changes.
The <a href="https://api.adnxs.com" class="xref" target="_blank"><code
class="ph codeph">https://api.</code><code
class="ph codeph">adnxs</code><code
class="ph codeph">.com</code></a> endpoint will continue to point to
version 1.17 for 60 days. After that time, this endpoint will point to
version 1.18.

**Version 1.18**: This version **does** include breaking changes and new
features. For the next 60 days, to use this version, you must point
directly to it in your calls, e.g.,
<a href="https://api.adnxs.com/v1.18" class="xref" target="_blank"><code
class="ph codeph">https://api.</code><code
class="ph codeph">adnxs</code><code
class="ph codeph">.com/v1.18</code></a>.





## Authentication and Security Changes

**dbg, dbg_info, and X-Rate-Limits Header**

As of version 1.18, the `dbg` and `dbg_info` output in API responses is
being deprecated. Instead, <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/api-usage-constraints.html"
class="xref" target="_blank">rate limit information</a> can be found in
the headers of the API responses. All older `X-Ratelimit` headers are
being replaced with a single `X-Rate-Limits` header that has the
following structure:

Rate limit information has three dimensions:

- **Count vs Limit:** whether the value is the current count or the
  total limit
- **Read vs Write:** whether the value applies to API reads or writes
- **User vs Member:** whether the value applies to the user ID or the
  member seat associated with it

Each value has an attribute from each dimension, resulting in eight
total combinations:

- `cru`: the count for user reads
- `crm`: the count for member reads
- `cwu`: the count for user writes
- `cwm`: the count for member writes
- `lru`: the limit for user reads
- `lrm`: the limit for member reads
- `lwu`: the limit for user writes
- `lwm`: the limit for member writes

These will appear as a single header value composed of key-value pairs.
For example:



``` pre
X-Rate-Limits: cru=1;crm=1;cwu=1;cwm=1;lru=100;lrm=100;lwu=60;lwm=60
```



We offer this information for troubleshooting purposes, but you should
**not** attempt to parse the `X-Rate-Limits` header to use the counts
and limits for retry logic. Instead, use the HTTP status 429 as the
indication that you need to pause and retry and use the `Retry-After`
header to determine the number of seconds you should wait before trying
again. This will allow you to take advantage of the opportunity to
exceed your rate limits when our platform has the free capacity to
handle your API calls.

**HTTPS Authentication**

For your security, all production and test API access should be
performed over HTTPS. Currently, authentication over HTTPS is possible
but not required. As of Version 1.18, if authentication is attempted
over HTTP, AppNexus will return an HTTP 308
response redirecting queries to HTTPS.

Our ultimate goal is for all our clients to authenticate and access the
API using HTTPS only. In order to minimize disruption during this
transition, we still support access to other API services over HTTP once
you authenticate with HTTPS. However, we strongly recommend that you
switch to using HTTPS in all cases if you're not already doing so





## Changed Services

**Browser Service**

In the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/browser-service.html"
class="xref" target="_blank">Browser Service</a>, the `platform_type`
field is now deprecated.

**Device Model Service**

The following fields are being deprecated from the  <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>:

- `supports_js`
- `supports_cookies`
- `supports_flash`
- `supports_geo`
- `supports_html_video`
- `supports_html_audio`

**Region Service**

The field `code` has been deprecated in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/region-service.html"
class="xref" target="_blank">Region Service</a>.

**Tinytag Service**

Previously, `default_referrer_url` for the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/tinytag-service.html"
class="xref" target="_blank">TinyTag Service</a> could be set to any
value.  Going forward, the value must be preregistered before it can be
used. To register a new referrer URL, please open a
<a href="https://support.xandr.com" class="xref" target="_blank">support
ticket</a>.





## Changed Reports

**Report Service**

As of 1.18, the syntax for the Imp Bus <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/region-service.html"
class="xref" target="_blank">Region Service</a> has been updated to
match the syntax for the Console <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/report-service.html"
class="xref" target="_blank">Report Service</a>. Previously, you would
specify the report ID after a forward slash. As of 1.18, you should
use `?id=REPORT_ID` instead. 

For example,  in 1.17, the old command to obtain a report was:



``` pre
GET https://api.adnxs.com/report/REPORT_ID
```



In 1.18, the new syntax is:



``` pre
GET https://api.adnxs.com/report?id=REPORT_ID
```



Similarly, the deprecated syntax for downloading a report was



``` pre
GET https://api.adnxs.com/report-download/REPORT_ID
```



and is now



``` pre
GET https://api.adnxs.com/report-download?id=REPORT_ID
```



In the Report Service, buyer_platform_billing will be deprecated.

**Saved Report Service**

As of 1.18, the syntax for the Imp Bus  <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/saved-report-service.html"
class="xref" target="_blank">Saved Report Service</a> has been updated
to match the syntax for the Console <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/saved-report-service.html"
class="xref" target="_blank">Saved Report Service</a>. Previously, you
would specify the report ID after a forward slash. As of 1.18, you
should use `?id=REPORT_ID` instead. 

For example, in 1.17, the old command to add a new saved report was:



``` pre
GET https://api.adnxs.com/saved-report/REPORT_ID
```



In 1.18, the new syntax is



``` pre
GET https://api.adnxs.com/saved-report?id=REPORT_ID
```








