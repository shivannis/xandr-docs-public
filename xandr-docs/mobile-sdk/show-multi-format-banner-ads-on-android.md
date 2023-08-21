# Show Multi-Format Banner Ads on Android

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This offering is currently in Alpha
and is subject to change.

</div>

As of Version 4.6 the <span class="ph">Xandr</span> mobile SDK supports
serving multiple creative formats (RTB VAST outstream videos and regular
banner ads) through a single banner entry point.

Some constraints:

- Video mediation is not yet supported.
- You cannot currently configure video player options, such as starting
  video with audio on/off or the presence of a volume button, for a
  mobile placement with the Console UI.

<div id="ID-00000920__section_lfl_q4y_fyb" class="section">

## Show a Mix of VAST Video and HTML Banner Ads

Before you begin, you must <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/android-sdk-integration-instructions.html"
class="xref" target="_blank">integrate the SDK</a>with your project. 

<div class="p">

Next, enable Video Ads in your App for BannerAdView.

``` pre
banner.shouldAllowVideoDemand = true;
```

</div>

<div class="p">

The selection of either VAST video or regular HTML banner ads in the app
is determined automatically by the SDK based on the creative with the
highest bid.

<div id="ID-00000920__note_g4c_xt4_cyb" class="note">

<span class="notetitle">Note:</span> If you have specified Video as a
Media Type for your placement in Console, it is still necessary to use
the aforementioned commands to activate video ads. Without explicitly
enabling video ads through the SDK, only banner ads will be served. On
the other hand, if you haven't included Video as a Media Type for your
placement in Console, you can still enable video ads to be served by
calling the above commands to set **AllowVideoDemand** to true.

</div>

</div>

</div>

<div id="ID-00000920__section_shl_q4y_fyb" class="section">

## Video Orientation

**Video Player Size:**

Publishers have the option to set predetermined player sizes for
different video orientations (portrait, landscape, and square) before
loading the video ad using the **loadAd**() function. When the video
assets are received, the SDK will automatically play the video ad in the
appropriate pre-set player size based on its aspect ratio. If these
pre-set values are not defined, the SDK will default to using the
primary AdSize of **BannerAdview** as the player size.

**Set Video Player Size for each BannerAdView instance:**

``` pre
bav.setPortraitBannerVideoPlayerSize(new AdSize(300,400));
bav.setLandscapeBannerVideoPlayerSize(new AdSize(300,250));
bav.setSquareBannerVideoPlayerSize(new AdSize(200,200));
```

**Video creative's width and height:**

<div class="p">

Publishers can query the size of the video ad using the below API.

<div id="ID-00000920__note_c11_h4y_fyb" class="note">

<span class="notetitle">Note:</span> The values will only be populated
after the **onAdLoaded** callback is triggered.

</div>

``` pre
((BannerAdView) bav).getBannerVideoCreativeWidth();
((BannerAdView) bav).getBannerVideoCreativeHeight();
```

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-ad-units.html" class="link">Android SDK Ad
Units</a>

</div>

</div>

</div>
