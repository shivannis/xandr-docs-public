# Ad Ops - Set Up MRAID Full Screen Interstitials

<div class="body">

This page has Ad Ops setup instructions for serving MRAID full screen
interstitials on our <span class="ph">Xandr</span><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Mobile SDKs</a>.

For developer-focused interstitial documentation, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>..

<div class="section">

## Creative Settings

To set up your MRAID creative, first create a creative and
then configure the settings listed below:

- Under **Creative Content**, choose the **Third-party** creative type.

- Choose a **Creative format** of **Third-party tag**. Make sure to
  uncheck **Serve in iFrame**.

- When entering the MRAID creative text in the
  <span class="ph uicontrol">Tag</span> field, make sure to reference
  the `mraid.js` file in the first line of your creative:

  ``` pre
  <script src="mraid.js"></script>
  ```

- Choose a **Media Type** of **Interstitial: Interstitial**.

- In the <span class="ph uicontrol">Template</span> field, choose
  <span class="ph uicontrol"></span>**<span class="ph">Xandr</span>:
  Mobile SDK** (ID 38896).

Then, in the <span class="ph uicontrol">Template</span> tab:

- Check the **Delay Tag Load** checkbox to delay third-party tags from
  loading until the WebView displaying the ad occupies the full screen.
  This may be necessary to prevent discrepancies, since some third-party
  tags don't load properly offscreen in a 1x1 pixel WebView.
- Use the **Restrict To Orientation** dropdown to control how the ad
  will be shown on the device's screen:
  - **none**: The ad can appear in either a landscape (horizontal) or
    portrait (vertical) orientation
  - **landscape**: The ad will only appear in a landscape (horizontal)
    orientation
  - **portrait**: The ad will only appear in a portrait (vertical)
    orientation

<div class="fig fignone">

<img src="mobile-sdk/images/ad-ops-set-up-mraid.png" class="image"
width="480" />

</div>

</div>

<div class="section">

## Placement Settings

To set up your placement, first create a placement and then configure
the settings listed below:

- In the <span class="ph uicontrol">Allowed Media</span> section, select
  the <span class="ph uicontrol">Other</span> button and include the
  **Interstitial: Interstitial** media type.

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
your app for testing: `8522131`.

</div>

<div class="section">

## Related Topics

<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/ad-ops---set-up-static-image-full-screen-interstitials.html"
class="xref" target="_blank">Ad Ops - Set Up Static Image Full Screen
Interstitials</a>

<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/ad-ops---set-up-html-responsive-interstitials--non-mraid-.html"
class="xref" target="_blank">Ad Ops - Set Up HTML Responsive
Interstitials (non-MRAID)</a>

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
