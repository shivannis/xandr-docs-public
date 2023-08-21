# Control Ad Unit Alignment on Android

<div class="body">

This page has instructions on how to control the alignment of banner
ads.

Use the `BannerView.setAdAlignment(enum AdAlignment)` method to override
the alignment of the ad unit within the banner ad view:

``` pre
bav.setAdAlignment(BOTTOM_CENTER);
```

This will only work in cases where the banner ad view's frame is larger
than the ad. The default alignment is `CENTER`. The ad can be aligned in
one of the following ways:

- center
- top left
- top center
- top right
- center left
- center right
- bottom left
- bottom center
- bottom right

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-code-samples.html" class="link">Android SDK Code
Samples</a>

</div>

</div>

</div>
