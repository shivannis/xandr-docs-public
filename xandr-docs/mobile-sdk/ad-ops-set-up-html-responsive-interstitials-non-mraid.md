# Ad Ops - Set Up HTML Responsive Interstitials (non-MRAID)

<div class="body">

This page has Ad Ops setup instructions for serving responsive HTML
interstitials (non-MRAID) on our <span class="ph">Xandr</span><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Mobile SDKs</a>.

For developer-focused interstitial documentation, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>.

<div class="section">

## Creative Settings

<div class="p">

To set up your creative, follow the general instructions in
<span class="ph"></span> documentation for adding interstitial creatives
and include the following settings:

- Under **Creative Content**, choose a **Third-party** creative type.
- Choose a **Creative format** of **Third Party URL**.
- Choose an **Output Type** of **HTML**.
- Choose a **Media Type** of **Interstitial: Interstitial**.
- In the <span class="ph uicontrol">Template</span> field, choose
  <span class="ph">Xandr</span>: **Mobile SDK** (ID 38895).

</div>

</div>

<div class="section">

## Placement Settings

<div class="p">

To set up your placement, follow the general instructions under "Create
a Placement" in <span class="ph"></span> documentation and include the
following settings:

- In the <span class="ph uicontrol">Allowed Media</span> section, select
  the <span class="ph uicontrol">Other</span> button and include the
  **Interstitial: Interstitial** media type.

</div>

</div>

<div class="section">

## SDK Settings

Make sure the SDK is sending the 1x1 ad size on the ad call (it does
send this size by default).

If you have changed the allowed sizes for interstitials in your app from
the defaults, check to make sure you're sending the 1x1 ad size. For
instructions on sending ad sizes explicitly, see the
<span class="ph uicontrol">Using Custom Interstitial Sizes</span>
section of <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>.

You can use the following <span class="ph">Xandr</span> placement ID in
your app for testing: `8522187`.

</div>

<div class="section">

## Related Topics

<div class="p">

- <a href="ad-ops-set-up-mraid-full-screen-interstitials.html"
  class="xref">Ad Ops - Set Up MRAID Full Screen Interstitials</a>
- <a href="ad-ops-set-up-static-image-full-screen-interstitials.html"
  class="xref">Ad Ops - Set Up Static Image Full Screen Interstitials</a>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ad-ops-for-mobile-sdk.html" class="link">Ad Ops for Mobile
SDK</a>

</div>

</div>

</div>
