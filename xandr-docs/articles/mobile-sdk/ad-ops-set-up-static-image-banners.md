---
title: Ad Ops - Set up Static Image Banners
description: In this article, find Ad Ops setup instructions for serving banners on Xandr mobile SDKs.
ms.custom: android-sdk
ms.date : 10/28/2023
---

# Ad ops - Set up static image banners

This page has Ad Ops setup instructions for serving banners on our Xandr [Mobile SDKs](xandr-mobile-sdks.md). The configuration matches the placement in our SDK's demo app.

For developer-focused banner documentation, see [Show Banners](show-banners-on-ios.md).

## Creative settings

Use the following settings to set up your creative (see “Add Interstitial Creatives” in the UI documentation (customer login required) for more information):

- Under **Creative Content**, choose a **Third-party creative** type.
- Choose a **Creative format** of Third Party URL.
- Choose an Output Type of **Image**.
- Choose a **Media Type of Banner**: **Standard Banner**.
- In the **Template** field, choose **AppNexus: Standard**.

## Placement settings

Use the following settings to set up your placement (see "Create a Placement" in the UI documentation (customer login required) for more information):

- Set the **Supply Type** to **Mobile Application**.
- Set the **Media Type** to **Banner**.
- Choose a placement size that matches the size of your desired banner ad view in the SDK (as described in the [Show Banners](show-banners-on-ios.md) developer docs).

## SDK settings

Follow the developer documentation in [Show Banners](show-banners-on-ios.md).

## Related topics

- [Ad Ops - Set Up MRAID Full Screen Interstitials](ad-ops-set-up-mraid-full-screen-interstitials.md)
- [Ad Ops - Set Up Static Image Full Screen Interstitials](ad-ops-set-up-static-image-full-screen-interstitials.md)
