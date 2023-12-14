---
Title : Integrate Web/Mobile Web with PSP
Description : Prebid Server Premium (PSP) supports four options for SSP customers to
ms.date: 10/28/2023
integrate web and mobile web inventory:
- Prebid.js Send Top Bid
---


# Integrate Web/Mobile Web with PSP





Prebid Server Premium (PSP) supports four options for SSP customers to
integrate web and mobile web inventory:

- Prebid.js Send Top Bid
- Prebid.js Send All Bids
- Non-Prebid
- Long-Form Video



Monetize Ad Server customers do not need to change their current
integration into Xandr and can instead follow
the <a
href="monetize_monetize-standard/integrate-with-psp.md"
class="xref" target="_blank">PSP Setup Steps</a>.



## Prebid.js Send Top Bid

**Context**

In general, Send Top Bid should be used by default if you do not have
bidder-specific line items already set up in your ad server, or if you
do not need all bids for reporting purposes. By using the Send Top Bid
option, the winning bid response will indicate Xandr as the winner with
a buyer member ID as normal even if a separate SSP Demand Partner won
through Prebid Server Premium. Your ad server will see Xandr as the
winner if this top bid wins the ad server auction. You can determine
which SSP won, either Xandr or another demand partner via Prebid Server
Premium, by utilizing Xandr's Prebid Server Premium Seller Analytics
Report and standard Monetize Reporting and cross-referencing the other
SSP Demand Partners' reporting.

**Implementation**

To set up Prebid.js with Send Top Bid:

1.  <a href="https://docs.prebid.org/prebid-server/use-cases/pbs-pbjs.md"
    class="xref" target="_blank">Integrate with a Prebid.js instance</a>
    that uses the
    <a href="https://docs.prebid.org/dev-docs/bidders/appnexus.md"
    class="xref" target="_blank">Xandr (AppNexus) Prebid.js adapter</a>.
    This should not require any changes to the "appnexus" adapter setup
    on page if already integrated through Xandr this way.
2.  Call the Xandr SSP client-side using the
    `/ut/v3/prebid` endpoint.
3.  If Demand Partners are already being called client-side, remove
    partners other than 'appnexus' (Xandr) from the Prebid.js
    client-side instance.
4.  Configure those, and any additional SSP Demand Partners, in
    Monetize via
    Publishers
    \> Prebid Server Premium \>
    Demand Partner Configurations
    . For more information, see <a
    href="monetize_monetize-standard/add-edit-or-delete-a-psp-configuration.md"
    class="xref" target="_blank">Add, Edit, or Delete a PSP
    Configuration</a>





## Prebid.js Send All Bids

**Context**

Send All Bids should be used if Demand Parter-specific line items in the
ad server are absolutely required. PSP will set key value targeting for
the top CPM bid, along with the standard top bid key values (bidder,
price, deal) for each included Demand Partner per ad unit.

**Implementation**

To set up Prebid.js with Send All Bids:

1.  <a href="https://docs.prebid.org/prebid-server/use-cases/pbs-pbjs.md"
    class="xref" target="_blank">Integrate with a Prebid.js instance</a>
    that uses the
    <a href="https://docs.prebid.org/dev-docs/bidders/appnexus.md"
    class="xref" target="_blank">Xandr (AppNexus) Prebid.js adapter</a>.
    This should not require any changes to the "appnexus" adapter setup
    on page if already integrated through Xandr this way.
2.  Call the Xandr SSP client-side using the
    `/openrtb2/prebid` endpoint
3.  Follow the <a
    href="https://github.com/prebid/Prebid.js/blob/master/integrationExamples/gpt/prebidServer_example.md"
    class="xref" target="_blank">Prebid GitHub example here</a>.
    

    <b>Note:</b>
    <a href="https://github.com/prebid/Prebid.js/releases" class="xref"
    target="_blank">Prebid.js version 6.10 or higher</a> is required.

    



Make the below changes to the s2sConfig:

1.  Set the accountId to your
    Xandr Seller Member ID.

2.  Set enabled to
    true.

3.  Set defaultVendor to
    'appnexuspsp'.

4.  Set allowUnknownBidderCodes to
    true.

5.  Include both includebidderkeys
    and includewinners in the
    extPrebid targeting object as
    shown in the following example:

    ``` pre
    extPrebid = ([
       {
          "targeting":{
             "includebidderkeys":true,
             "includewinners":true
          }
       }
    ])            
                
    ```

6.  Include 'appnexus' in
    bidders.

7.  Set the timeout value to the number of ms the browser should wait
    for a response from Xandr.
    

    <b>Note:</b> This value should be greater
    than your Xandr (PSP) auction timeout. If
    the value is lower, there is a risk that the client-side timeout
    will hit before Xandr responds with a bid,
    potentially preventing receipt of demand from
    Xandr. For more information, see the Demand
    Partner Timeout section in <a
    href="monetize_monetize-standard/add-or-edit-psp-global-settings.md"
    class="xref" target="_blank">Add or Edit PSP Global Settings</a>.

    





See below for a **s2sConfig** example:

``` pre
pbjs.setConfig({
   "s2sConfig":{
      "accountId":9325,
      "bidders":[
         "appnexus"
      ],
      "defaultVendor":"appnexuspsp",
      "enabled":true,
      "allowUnknownBidderCodes":true,
      "timeout":1000,
      "extPrebid":{
         "targeting":{
            "pricegranularity":"dense",
            "includebidderkeys":true,
            "includewinners":true
         }
      }
   }
})        
        
```



When using Send All Bids, report on the key values in an external ad
server, such as Google Ad Manager (GAM), by defining key values
appropriately and setting them as reportable. GAM documentation can be
found
<a href="https://support.google.com/admanager/answer/7352444?hl=en"
class="xref" target="_blank">here</a>.





## Non-Prebid

**Context**



The above Prebid.js integration methods return Prebid key values to the
ad server. If Prebid.js is not implemented on the pages and Prebid key
values are not needed for PSP demand to compete in the ad server's
auction, the SSP customer's existing integration into
Xandr can be used instead:

- `/openrtb2` (For more details see, <a
  href="supply-partners/incoming-bid-request-from-ssps.md"
  class="xref" target="_blank">Incoming Bid Request from SSPs</a>)
- Video tags (For more details see, <a
  href="monetize_monetize-standard/integrating-in-stream-video-with-tags.md"
  class="xref" target="_blank">Integrating In-Stream Video with Tags</a>)
  - `/ptv` (client-side video)
  - `/ssptv` (server-side video)
  - `/vmap` (long-form client-side video)
  - `/ssvmap` (long-form server-side video)
- `/ttj` (For more details see,
  <a href="xandr-bidders/tinytags.md"
  class="xref" target="_blank">TinyTags</a>)



**Implementation**

In this scenario, maintain the above integration methods and proceed
with the <a
href="monetize_monetize-standard/integrate-with-psp.md"
class="xref" target="_blank">PSP Setup Steps</a>.



>

## Long-Form Video

**Context**

SSP customers with long-form, ad pod web inventory must use the
`/prebid/lfv` endpoint. Long-form video durations are at least 30
minutes with potential pre, mid, and post-roll positions.

**Implementation**

In this scenario, make POST calls to the `/prebid/lfv` endpoint as
detailed under the <a
href="xandr-api/long-form-video-service.md"
class="xref" target="_blank">Long Form Video Sevice</a>



>

## Related Topics

- <a href="integrate-apps-with-psp.md" class="xref">Integrate Apps with
  PSP</a>
- <a href="integrate-accelerated-mobile-pages-with-psp.md"
  class="xref">Integrate Accelerated Mobile Pages with PSP</a>
- <a href="prebid-server-premium-identity-and-user-syncing.md"
  class="xref">Prebid Server Premium Identity &amp; User Syncing</a>






