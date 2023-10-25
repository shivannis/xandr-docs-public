---
Title : Ad Ops - Set Up Static Image Full Screen Interstitials
Description : This page has Ad Ops setup instructions for serving static image
"full-screen" interstitials on our Xandr<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
---


# Ad Ops - Set Up Static Image Full Screen Interstitials



This page has Ad Ops setup instructions for serving static image
"full-screen" interstitials on our Xandr<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Mobile SDKs.</a> By "full-screen", we mean
that the static image will be resized to fit the device's screen by
JavaScript running in the creative template used in the instructions
below.

For developer-focused interstitial documentation, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-ads-on-ios.html"
class="xref" target="_blank">Show Interstitials</a>.



## Creative Settings

To set up your creative, first create a creative and then configure the
settings listed below:

- Under Creative Content, choose to Upload a file.
- Choose a Media Type of Interstitial: Interstitial.
- In the Template field, choose
  Xandr:
  Mobile SDK Static Images (ID 38934).
- If you have a landscape image you want to traffic when the user
  changes the orientation of their device, you can add it in the
  Template tab.

<figure class="fig fignone">
<p><img src="mobile-sdk/images/ad-ops-set-up-static-image.png"
class="image" height="150" /></p>
</figure>





## Placement Settings

To set up your placement, first create a placement and then configure
the settings listed below:

- In the Allowed Media section, select
  the Other button and include the
  Interstitial: Interstitial media type.





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

You can use the following Xandr placement ID in
your app for testing: `8571059`.





## Related Topics



- <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/ad-ops---set-up-mraid-full-screen-interstitials.html"
  class="xref" target="_blank">Ad Ops - Set Up MRAID Full Screen
  Interstitials</a>
- <a href="https://docs.xandr.com/csh?context" class="xref"
  target="_blank">Ad Ops - Set Up HTML Responsive Interstitials
  (non-MRAID)</a>








