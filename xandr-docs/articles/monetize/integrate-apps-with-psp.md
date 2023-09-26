---
Title : Integrate Apps with PSP
Description : Prebid Server Premium (PSP) supports three options for SSP customers to
integrate app inventory:
- Prebid Mobile SDK
- Non-SDK
- Long-Form Video
Microsoft Monetize Ad Server customers do not need
to change their current integration into Xandr and can instead follow
the steps mentioned in
<a href="integrate-with-psp.html" class="xref">this page</a>.
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
<a href="integrate-with-psp.html" class="xref">this page</a>.

<div id="integrate-an-ad-server-with-mobile-app__section-aa7c220c-3f6b-4331-9f8a-3a4605e34f9e"
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

<div id="integrate-an-ad-server-with-mobile-app__p-98816630-b214-47d9-996c-d487a7e999b9"
>

To set up Prebid Mobile SDK with PSP:

1.  <a
    href="https://docs.prebid.org/prebid-mobile/prebid-mobile-getting-started.html"
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





<div id="integrate-an-ad-server-with-mobile-app__section-ab078929-ef41-40fa-bd33-39bd02d11f43"
>

## Non SDK

**Context**

<div id="integrate-an-ad-server-with-mobile-app__p-1af3752a-13de-48c7-a1c9-0f4849a007a9"
>

The Prebid Mobile SDK integration method mentioned above returns Prebid
key values to the ad server. If the SDK is not implemented and Prebid
key values are not needed for PSP demand to compete in the ad server's
auction, the SSP customer's existing integration into Xandr can be used
as listed below:

- `/openrtb2` (Click <a
  href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
  class="xref" target="_blank">here</a> for more details)
- Video tags (Click
  <a href="integrating-in-stream-video-with-tags.html" class="xref"
  title="To integrate in-stream video using a placement tag solution, you&#39;ll need to set up your placements with the correct options, export the tags, and then customize them using the required and optional query parameters before trafficking them within your ad server.">here</a>
  for more details)
  - `/ptv` (client-side video)
  - `/ssptv` (server-side video)
  - `/vmap` (long-form client-side video)
  - `/ssvmap` (long-form server-side video)



**Implementation**

In this scenario, maintain the above integration methods and proceed
with the steps mentioned in
<a href="integrate-with-psp.html" class="xref">this page</a>.



<div id="integrate-an-ad-server-with-mobile-app__section-a677bb84-68fb-4b29-a5d5-a755591bc401"
>

## Long-Form Video

**Context**

SSP customers with long-form, ad pod app inventory must use the
`/prebid/lfv` endpoint. Long-form video durations are at least 30
minutes with potential pre, mid, and post-roll positions.

**Implementation**

In this scenario, make POST calls to the `/prebid/lfv` endpoint as
detailed under the <a
href="https://docs.xandr.com/bundle/xandr-api/page/long-form-video-service.html"
class="xref" target="_blank">Long Form Video Sevice</a>



<div id="integrate-an-ad-server-with-mobile-app__section_mqd_nh1_nmb"
>

## Related Topics

- <a href="integrate-web-mobile-web-with-psp.html" class="xref">Integrate
  Web/Mobile Web with PSP</a>
- <a href="integrate-accelerated-mobile-pages-with-psp.html"
  class="xref">Integrate Accelerated Mobile Pages with PSP</a>






