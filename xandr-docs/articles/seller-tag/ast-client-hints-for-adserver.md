# User Agent Client Hints

<div class="body">

<div id="ast-client-hits-for-adserver__section-853424c7-4320-4169-b05a-ee0fd87dfbae"
class="section">

## Overview

The User-Agent Client Hints API is an expansion to the Client Hints API,
that enables developers to access information about a user's browser in
a more specific and targeted manner, while still preserving the user's
privacy and providing users with greater control over the data that is
shared about their browsing activity. This API extends the traditional
User-Agent header in HTTP requests and allows developers to request only
the specific pieces of information they need, rather than exposing the
entire header. This helps to eventually reduce the User-Agent string
granularity and the amount of potentially sensitive information that can
be transmitted.

Client Hints are intended to be an alternative source of information
contained in the User-Agent header. User-Agent (UA) reduction is an
effort to minimize the identifying information shared in the User-Agent
string. As a result, the return values from certain `Navigator`
interfaces will be reduced, including: `navigator.userAgent`,
`navigator.appVersion`, and `navigator.platform`. If we do not make the
necessary adjustments and fail to adapt to this change, certain
capabilities will be forfeited, including the ability to identify and
prevent fraud and bot activity, recognizing browsers for rendering
purposes, and targeting buyers based on their devices. Furthermore,
buyers will no longer be able to take advantage of device targeting.

<div id="ast-client-hits-for-adserver__p-c43b5fe0-9e41-4532-bdee-b3ac4a92d201"
class="p">

**Current UA string (detected as Tablet device):**

``` pre
Mozilla/5.0 (Linux; Android 9; SM-T810) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.1234.56 Safari/537.36
```

</div>

<div id="ast-client-hits-for-adserver__p-72899109-2688-4000-b7aa-a45d1e156728"
class="p">

**Same user with reduced UA string - not using Client Hints (detected as
Desktop device):**

``` pre
Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.0.0 Safari/537.36
```

</div>

</div>

<div id="ast-client-hits-for-adserver__section-22cd6f7a-1017-4002-a63e-bc66ca464887"
class="section">

## **High Entropy Client Hints**

</div>

<div id="ast-client-hits-for-adserver__section-0de8952f-e8f7-4d41-a9d2-d6b85efed6db"
class="section">

<div id="ast-client-hits-for-adserver__p-ebe640ab-0f49-4ddb-b1f4-b80958d140f3"
class="p">

To offer maximum performance and execute optimal device targeting, Xandr
needs to access two high entropy Client Hints:

- Model
- Platform Version

To pass these values, publishers need to set two headers, **Accept-CH**
and **Permissions-Policy**.

</div>

**Accept-CH** is a http header, set by a server to specify which Client
Hints headers the browser should include in subsequent requests. By
default, the Client Hint headers will only be sent over same-origin
requests. It indicates Xandr’s ad call does not have access being a
cross-origin request . To allow hints on cross-origin requests, each
hint must be specified by a **Permissions-Policy** header.

<div id="ast-client-hits-for-adserver__p-15b2f4ae-710c-49e2-a604-8c3584e8d427"
class="p">

The publisher server is required to set these two headers as shown
below:

- Accept-CH: `sec-ch-ua-model,sec-ch-ua-platform-version`
- Permissions-Policy: `ch-ua-model=*,ch-ua-platform-version=*`

</div>

</div>

<div class="section">

## Scenarios

If you are using `ast.js` or Xandr’s bid adapter in `prebid.js`, there
are two scenarios depending upon whether the client-side script
(ast/prebid) is loaded outside or inside an iframe.

**Script is loaded outside an iframe**

In this scenario, the publisher server needs to set the http headers
whereas no change is required on the client side. For example, if the
publisher domain is <a href="https://example.com/" class="xref"
target="_blank">https://example.com</a>*,* then the server for
<a href="http://example.com/" class="xref"
target="_blank">example.com</a> needs to set the http headers.

**Script is loaded inside a cross-domain iframe**

In this scenario, the cross-domain server needs to set the http headers.
For example, if publisher domain is
<a href="https://example.com/" class="xref"
target="_blank">https://example.com</a> and the iframe loads content
from another domain,
<a href="https://adscripthost.com/ad_script_setup.html" class="xref"
target="_blank">https://adscripthost.com/ad_placement_setup.html</a>,
then the server for <a href="https://adscripthost.com/" class="xref"
target="_blank">https://adscripthost.com</a> needs to set the headers.

<div id="ast-client-hits-for-adserver__p-600099dc-fcbc-4c29-834e-c825b3c6ccf9"
class="p">

Here, the `allow` attribute should also be present on the iframe with
value set to `ch-ua-platform-version;ch-ua-model`. For example,

``` pre
<iframe allow="ch-ua-platform-version;ch-ua-model" src="https://adscripthost.com/ad_placement_setup.html"></iframe>  
```

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../seller-tag/ast-api-reference.html" class="link">AST API
Reference</a>

</div>

</div>

</div>
