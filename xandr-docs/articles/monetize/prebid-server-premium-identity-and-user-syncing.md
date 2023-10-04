---
Title : **Prebid Server Premium Identity & User Syncing**
Description : This page provides high-level guidance on the types of user identifiers
available for monetization with Prebid Server Premium (PSP).
---


# **Prebid Server Premium Identity & User Syncing**





This page provides high-level guidance on the types of user identifiers
available for monetization with Prebid Server Premium (PSP).

<div id="Prebid_Server_Premium_Identity_and_User_Syncing__note_gqf_wp3_wxb"


Note: GDPR and CCPA are taken into
account with PSP requests.





<div id="Prebid_Server_Premium_Identity_and_User_Syncing__section-4584cca1-3980-407b-94a2-6f0952ae0416"
>

## Cookies

Publishers do not need to take any action specific to PSP in order to
sync user cookies. The integration with Xandr
Monetize will sync Xandr cookies as well as a
rotation of pixels from Xandr marketplace
Bidders (DSPs) and Prebid Demand Partners (typically SSPs). Prebid
Server Demand Partners are automatically synced through the userSync
endpoints they <a
href="https://github.com/prebid/prebid-server/tree/master/static/bidder-info"
class="xref" target="_blank">provide in GitHub</a>. If no endpoint is
provided in a partner's .yaml file, they must actively contact
Xandr to provide a URL for
Xandr to implement.

User matched request counts and sync rates can be reviewed by Demand
Partner in the <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-health-analytics-report.html"
class="xref" target="_blank">PSP Health Analytics Report</a>. Note that
these metrics currently only include cookies, not more persistent
identifiers such as industry IDs (examples: RampID, UID 2.0) or
publisher-provided IDs (PPIDs). The presence of device IDs is also not
reflected in these metrics.

**Prebid.js**

Publishers using Prebid.js that prefer to maximize cookie sync
opportunities by syncing on page load, instead of only syncing when
delivers an ad, must override the default setting and enable iframe
syncing. For more information, see <a
href="https://docs.prebid.org/prebid-server/endpoints/pbs-endpoint-cookieSync.html"
class="xref" target="_blank">Prebid Server endpoints and cookie_sync</a>.

<div id="Prebid_Server_Premium_Identity_and_User_Syncing__p-ea1139d0-1594-4d11-8b3f-75db6d2e5c96"
>

Generally, iframe or all syncs must be enabled with all bidders or at
least Xandr included:

1.  In the response object, under `filterSettings`
    1.  If `filterSettings.iframe` is set to include \* (all),
        Xandr, or `AppNexus`, and `syncEnabled`
        is `true`, iframe cookie syncing is enabled.
    2.  If `filterSettings.all` is set to include \* (all),
        Xandr, or `AppNexus`, and `syncEnabled`
        is true, iframe cookie syncing is enabled.
    3.  If only `filterSettings.image` is enabled, them iframe syncing
        is not enabled, limiting cookie syncing opportunities.
2.  If the settings are not as desired, publishers must change them in
    their Prebid.js deployment



**AST**

<div id="Prebid_Server_Premium_Identity_and_User_Syncing__p-a3e62f64-7c4f-4517-a2da-cfc25b5b3e10"
>

Monetize Ad Server publishers using AST that prefer to maximize cookie
sync opportunities by syncing on page load, instead of only syncing when
Xandr delivers an ad, must set the userSync
object following the example below. The sellerId and publisherId must be
replaced with the relevant values and the syncDelay may be changed from
the value in the example. More information <a
href="https://docs.xandr.com/bundle/seller-tag/page/seller-tag/set-page-options.html"
class="xref" target="_blank">can be found here</a>.

``` pre
apntag.setPageOpts(
{       
  trackingManagement: 
  {                
    userSync: 
    {                   
      syncEnabled: true,                   
      syncDelay: 3000,                   
      publisherId: 11111,                   
      sellerId: 12345               
    }   
   }
}); 
```



**AMP**

Publishers with AMP inventory that prefer to maximize cookie sync
opportunities must override the default load-cookie.html behavior to
enable iframe syncing. For more information, see <a
href="https://docs.prebid.org/prebid-server/endpoints/pbs-endpoint-cookieSync.html"
class="xref" target="_blank">Prebid Server endpoints and cookie_sync</a>.

Similar to Prebid.js, AMP implementations must allow iframe syncs with
all bidders or at least Xandr included.



<div id="Prebid_Server_Premium_Identity_and_User_Syncing__section-b0ac4695-2d70-46da-868e-79e24f68422b"
>

## **Persistent Identifiers**

**Devices Identifiers**

PSP supports pass-through of device IDs such as IDFAs and AAIDs. No
action is needed from the publisher to allow demand partners to receive
this data.

**Common Industry Identifiers**

PSP supports pass-through of select industry identifiers supported by
Microsoft Monetize such as UID 2.0. When a given
industry ID is supported, it generally does not require action on the
part of the publisher to be passed to demand partners. Contact your
Xandr Representative for more details.



<div id="Prebid_Server_Premium_Identity_and_User_Syncing__section_qbx_5zq_dtb"
>

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/set-up-prebid-server-premium.html"
  class="xref" target="_blank">Set Up Prebid Server Premium</a>
- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/integrate-web-mobile-web-with-psp.html"
  class="xref" target="_blank">Integrate Web/Mobile Web with PSP</a>
- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/integrate-accelerated-mobile-pages-with-psp.html"
  class="xref" target="_blank">Integrate Accelerated Mobile Pages with
  PSP</a>
- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-demand-partner-integrations.html"
  class="xref" target="_blank">PSP Demand Partner Integrations</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/cookies.html"
  class="xref" target="_blank">Cookies</a>
- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-health-analytics-report.html"
  class="xref" target="_blank">PSP Health Analytics Report</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-service.html"
  class="xref" target="_blank">Demand Partner Service</a>






