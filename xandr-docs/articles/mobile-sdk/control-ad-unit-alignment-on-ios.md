---
Title : Control Ad Unit Alignment on iOS
Description : This page has instructions on how to control the alignment of banner
ads.
ms.custom : android-ios

---


# Control Ad Unit Alignment on iOS



This page has instructions on how to control the alignment of banner
ads.

Use the `ANBannerViewAdAlignment` property of banner ad views to
override the alignment of the ad unit within the banner ad view:

``` pre
banner.alignment = ANBannerViewAdAlignmentBottomCenter;
```

This will only work in cases where the banner ad view's frame is larger
than the ad. The default alignment is `ANBannerViewAdAlignmentCenter`.
The ad can be aligned in one of the following ways:

- center
- top left
- top center
- top right
- center left
- center right
- bottom left
- bottom center
- bottom right




