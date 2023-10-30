---
title : Xandr Mobile SDKs
description : The Document provides description on Xandr's Mobile SDKs and how helps the user to monetize their apps.
ms.custom : android-sdk
---

# Xandr mobile SDKs

Xandr's Mobile SDKs give app developers a fast,
convenient way to monetize their apps.

## Features of the Mobile SDK

- Open-source code (including release notes) available on [GitHub](https://github.com/appnexus).
- Extensive documentation.
- [Support forum](https://groups.google.com/forum/#%21forum/appnexussdk) for direct engineering
  support.
- Complete support of [MRAID 2.0](https://www.iab.com/guidelines/mobile-rich-media-ad-interface-definitions-mraid/) for rich media  creatives.
- Dedicated [Android](https://play.google.com/store/apps/details?id=com.appnexus.opensdkapp) and [iOS](https://itunes.apple.com/us/app/appnexus-sdk-app/id736869833?mt=8) apps integrate the SDK and allow you to test your campaigns and creatives in real environments.
- Mediation is managed by the network through
  Xandr, removing the burden from the publisher.
- SDK can mediate or be mediated by any other SDK with mediation
  capabilities.
- Pre-built adaptors for mediating third party SDKs.
- Rapid integration.

## Supported Creative Formats

- Banners
- Interstitials
- Rich media ads using MRAID can serve on banners or interstitials
- Video ads using MRAID can serve on interstitials

## Getting Started

- Android:[Xandr's Android SDK Integration](/android-sdk-integration-instructions.md)
- iOS:[Xandr's iOS SDK Integration](ios-sdk-integration-instructions.md)

## Ad Types

| Platform | Ad Types                                                                                                            |
|----------|---------------------------------------------------------------------------------------------------------------------|
| Android  | Show Banners Show Interstitials Show Multi-Format Banner Ads Show Native Ads Show Banner Native Show Instream Video |
| iOS      | Show Banners Show Interstitials Show Multi-Format Banner Ads Show Native Ads Show Banner Native Show Instream Video |

## Targeting

| Platform | Targeting                                                        |
|----------|------------------------------------------------------------------|
| Android  | Add Targeting Parameters Pass Custom Keywords Set Reserve Prices |
| iOS      | Add Targeting Parameters Pass Custom Keywords Set Reserve Prices |

## Mediation

| Platform | Targeting                                                     |
|----------|---------------------------------------------------------------|
| Android  | Mediate with Android SDK Instructions Android Custom Adaptors |
| iOS      | Mediate with iOS iOS Custom Adaptors                          |

## Configuration

| Platform | Configuration                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Platform | Configuration                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Android  | [Allow Multiple Ad Sizes to Serve into a Banner Ad View](allow-multiple-ad-sizes-to-serve-into-a-banner-ad-view-on-android.md) <br> [Add a Transition Animation](add-a-transition-animation-on-android.md) <br> [ANJAM User Guide](anjam-user-guide.md) <br> [Configure SDK Logging](configure-sdk-logging-on-android.md) <br>[Control Ad Unit Alignment](control-ad-unit-alignment-on-android.md)<br> [Control Landing Page Loading Visibility](location-controls-on-android.md) <br>[Control Location Accuracy](location-controls-on-android.md) <br>[Customize Video Player Options](customize-video-player-options-on-android.md) <br>[Dismiss Interstitials on User Click](dismiss-interstitials-on-user-click.md) <br> [Multi-Format Banner and Video Ad Support](show-multi-format-banner-ads-on-android.md) [Open Ad Clicks in the Native Browser](open-ad-clicks-in-the-native-browser-on-android.md) <br>[Toggle PSAs](toggle-psas-on-android.md) <br>[Receive Ad View Status Events](receive-ad-view-status-events-on-android.md)<br> [Resize Ads to fit the Screen or Banner Ad View](resize-ads-to-fit-the-screen-or-banner-ad-view-on-android.md) [Resize the Banner Ad View to the Size of the Winning Creative](resize-the-banner-ad-view-to-the-size-of-the-winning-creative-on-android.md) <br>[Request Ads over HTTPS](request-ads-over-https-on-android.md) | iOS | [Allow Multiple Ad Sizes to Serve into a Banner Ad View](allow-multiple-ad-sizes-to-serve-into-a-banner-ad-view-on-ios.md)<br>[Add a Transition Animation](add-a-transition-animation-on-ios.md)<br>[ANJAM User Guide](anjam-user-guide.md)<br>[Configure SDK Logging](configure-sdk-logging-on-ios.md)<br>[Control Ad Unit Alignment](control-ad-unit-alignment-on-ios.md)<br> [Control Landing Page Loading Visibility](control-landing-page-load-visibility-on-ios.md)<br>[Control Location Accuracy](location-controls-on-ios.md) [Customize Video Player Options](configure-video-player-options-on-ios.md)<br>[Multi-Format Banner and Video Ad Support](show-multi-format-banner-ads-on-ios.md)<br>[Open Ad Clicks in the Native Browser](open-ad-clicks-in-the-native-browser-on-ios.md)<br>[Toggle PSAs](toggle-psas-on-ios.md)<br>[Receive Ad View Status Events](receive-ad-view-status-events-on-ios.md)<br>[Resize Ads to fit the Screen or Banner Ad View](resize-ads-to-fit-the-screen-or-banner-ad-view-on-ios.md)<br>[Resize the Banner Ad View to the Size of the Winning Creative](../resize-the-banner-ad-view-to-the-size-of-the-winning-creative-on-ios.md) [Request Ads over HTTPS](request-ads-over-https-on-ios.md) |

## Impression Tracking

- [Mobile SDK: Impression Counting Methods](impression-counting-methods.md)

## Apps
[Xandr SDK App](xandr-sdk-app.md)

## Ad Ops Guides

- [Ad Ops - Set up Static Image Banners](ad-ops-set-up-static-image-banners.md)
- [Ad Ops - Set Up HTML Responsive Interstitials(non-MRAID)](ad-ops-set-up-html-responsive-interstitials-non-mraid.md)
- [Ad Ops - Set Up MRAID Full Screen Interstitials](ad-ops-set-up-mraid-full-screen-interstitials.md)
- [Ad Ops - Set Up Static Image Full Screen
  Interstitials](ad-ops-set-up-static-image-full-screen-interstitials.md)

## Support

The [Xandr Customer Support
Portal](https://help.xandr.com/s/login/) is for issues that must be addressed by our Support team.
Examples of issues that should be submitted to the
[Xandr Customer Support
Portal](https://help.xandr.com/s/login/) include:

- Only PSAs are returned
- Incorrect ad quality settings for the publisher
- Creative delivery issues

## Licensing

All of Xandr Mobile SDK code is released
under [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)license. License information can be found
in our Github repositories
of [iOS](https://github.com/appnexus/mobile-sdk-ios) and [Android](https://github.com/appnexus/mobile-sdk-android) SDK.

Third-party components are included in Xandr Mobile SDKS under the licenses specified by their respective authors.
For information about these licenses, refer to the source files in the Xandr Mobile SDK.
