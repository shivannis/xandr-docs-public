---
Title : Ad Ops - Set Up HTML Responsive Interstitials (non-MRAID)
Description : This page has Ad Ops setup instructions for serving responsive HTML
interstitials (non-MRAID) on our Xandr<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
---


# Ad Ops - Set Up HTML Responsive Interstitials (non-MRAID)



This page has Ad Ops setup instructions for serving responsive HTML
interstitials (non-MRAID) on our Xandr<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Mobile SDKs</a>.

For developer-focused interstitial documentation, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>.



## Creative Settings



To set up your creative, follow the general instructions in
 documentation for adding interstitial creatives
and include the following settings:

- Under **Creative Content**, choose a **Third-party** creative type.
- Choose a **Creative format** of **Third Party URL**.
- Choose an **Output Type** of **HTML**.
- Choose a **Media Type** of **Interstitial: Interstitial**.
- In the Template field, choose
  Xandr: **Mobile SDK** (ID 38895).







## Placement Settings



To set up your placement, follow the general instructions under "Create
a Placement" in  documentation and include the
following settings:

- In the Allowed Media section, select
  the Other button and include the
  **Interstitial: Interstitial** media type.







## SDK Settings

Make sure the SDK is sending the 1x1 ad size on the ad call (it does
send this size by default).

If you have changed the allowed sizes for interstitials in your app from
the defaults, check to make sure you're sending the 1x1 ad size. For
instructions on sending ad sizes explicitly, see the
Using Custom Interstitial Sizes
section of <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>.

You can use the following Xandr placement ID in
your app for testing: `8522187`.





## Related Topics



- <a href="ad-ops-set-up-mraid-full-screen-interstitials.html"
  class="xref">Ad Ops - Set Up MRAID Full Screen Interstitials</a>
- <a href="ad-ops-set-up-static-image-full-screen-interstitials.html"
  class="xref">Ad Ops - Set Up Static Image Full Screen Interstitials</a>








