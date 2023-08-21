# Ad Ops - Set Up Static Image Full Screen Interstitials

<div class="body">

This page has Ad Ops setup instructions for serving static image
"full-screen" interstitials on our <span class="ph">Xandr</span><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Mobile SDKs.</a> By "full-screen", we mean
that the static image will be resized to fit the device's screen by
JavaScript running in the creative template used in the instructions
below.

For developer-focused interstitial documentation, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>.

<div class="section">

## Creative Settings

To set up your creative, first create a creative and then configure the
settings listed below:

- Under Creative Content, choose to Upload a file.
- Choose a Media Type of Interstitial: Interstitial.
- In the <span class="ph uicontrol">Template</span> field, choose
  <span class="ph uicontrol"></span><span class="ph">Xandr</span>:
  Mobile SDK Static Images (ID 38934).
- If you have a landscape image you want to traffic when the user
  changes the orientation of their device, you can add it in the
  <span class="ph uicontrol">Template</span> tab.

<div class="fig fignone">

<img src="mobile-sdk/images/ad-ops-set-up-static-image.png"
class="image" height="150" />

</div>

</div>

<div class="section">

## Placement Settings

To set up your placement, first create a placement and then configure
the settings listed below:

- In the <span class="ph uicontrol">Allowed Media</span> section, select
  the <span class="ph uicontrol">Other</span> button and include the
  Interstitial: Interstitial media type.

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

You can use the following <span class="ph">Xandr</span> placement ID in
your app for testing: `8571059`.

</div>

<div class="section">

## Related Topics

<div class="p">

- <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/ad-ops---set-up-mraid-full-screen-interstitials.html"
  class="xref" target="_blank">Ad Ops - Set Up MRAID Full Screen
  Interstitials</a>
- <a href="https://docs.xandr.com/csh?context" class="xref"
  target="_blank">Ad Ops - Set Up HTML Responsive Interstitials
  (non-MRAID)</a>

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
