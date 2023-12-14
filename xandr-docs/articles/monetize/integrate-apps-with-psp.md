---
Title : Integrate Apps with PSP
Description : Prebid Server Premium (PSP) supports three options for SSP customers to
ms.date: 10/28/2023
integrate app inventory:
- Prebid Mobile SDK
- Non-SDK
- Long-Form Video
Microsoft Monetize Ad Server customers do not need
to change their current integration into Xandr and can instead follow
the steps mentioned in
<a href="integrate-with-psp.md" class="xref">this page</a>.
---


# Integrate Apps with PSP





Prebid Server Premium (PSP) supports three options for SSP customers to
integrate app inventory:

- Prebid Mobile SDK
- Non-SDK
- Long-Form Video



Microsoft Monetize Ad Server customers do not need
to change their current integration into Xandr and can instead follow
the steps mentioned in
<a href="integrate-with-psp.md" class="xref">this page</a>.

>

## Prebid Mobile SDK

**Context**

For SSP customers using a mobile app integrated with the Prebid Mobile
SDK, Xandr sends all bids when the app calls the
`/openrtb2/prebid` endpoint, regardless of their ad server line item
setup, which may be consolidated (top bid) or bidder-specific (all
bids). Xandr's Prebid bid response includes
Prebid key-values (bidder, price, deal, etc.) for
Xandr SSP and each SSP demand partner that
submitted a valid bid into the PSP auction along with the standard top
bid key-values.

**Implementation**

>

To set up Prebid Mobile SDK with PSP:

1.  <a
    href="https://docs.prebid.org/prebid-mobile/prebid-mobile-getting-started.md"
    class="xref" target="_blank">Implement Prebid Mobile SDK</a>

2.  In the host section of global settings, update the host URL to the
    `/openrtb2/prebid` endpoint as shown below:

    ``` pre
    Host custom = Host.CUSTOM;
    custom.setHostUrl("https://ib.adnxs.com/openrtb2/prebid");
    PrebidMobile.setPrebidServerHost(custom); 
    ```

3.  While setting up your Prebid Server Account, use your `member id` as
    the `account id` as shown below:

    ``` pre
    PrebidMobile.setPrebidServerAccountId("Your member id");
    ```

4.  While setting up the AdUnits, replace `config id` with the
    `placement id`. For example, for Banner, Native and Video Ad Units:

    ``` pre
    BannerAdUnit adUnit = new BannerAdUnit("Your placement id", size.first, size.second);
    NativeAdUnit nativeAdUnit = new NativeAdUnit("Your placement id");
    VideoAdUnit adUnit = new VideoAdUnit("Your placement id", 640, 480, VideoAdUnit.PlacementType.IN_BANNER);
    ```





>

## Non SDK

**Context**

>

The Prebid Mobile SDK integration method mentioned above returns Prebid
key values to the ad server. If the SDK is not implemented and Prebid
key values are not needed for PSP demand to compete in the ad server's
auction, the SSP customer's existing integration into Xandr can be used
as listed below:

- `/openrtb2` (Click <a
  href="supply-partners/incoming-bid-request-from-ssps.md"
  class="xref" target="_blank">here</a> for more details)
- Video tags (Click
  <a href="integrating-in-stream-video-with-tags.md" class="xref"
  title="To integrate in-stream video using a placement tag solution, you&#39;ll need to set up your placements with the correct options, export the tags, and then customize them using the required and optional query parameters before trafficking them within your ad server.">here</a>
  for more details)
  - `/ptv` (client-side video)
  - `/ssptv` (server-side video)
  - `/vmap` (long-form client-side video)
  - `/ssvmap` (long-form server-side video)



**Implementation**

In this scenario, maintain the above integration methods and proceed
with the steps mentioned in
<a href="integrate-with-psp.md" class="xref">this page</a>.



>

## Long-Form Video

**Context**

SSP customers with long-form, ad pod app inventory must use the
`/prebid/lfv` endpoint. Long-form video durations are at least 30
minutes with potential pre, mid, and post-roll positions.

**Implementation**

In this scenario, make POST calls to the `/prebid/lfv` endpoint as
detailed under the <a
href="xandr-api/long-form-video-service.md"
class="xref" target="_blank">Long Form Video Sevice</a>



>

## Related Topics

- <a href="integrate-web-mobile-web-with-psp.md" class="xref">Integrate
  Web/Mobile Web with PSP</a>
- <a href="integrate-accelerated-mobile-pages-with-psp.md"
  class="xref">Integrate Accelerated Mobile Pages with PSP</a>






