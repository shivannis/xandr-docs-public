---
title : Smart Image Adjustments for Native Creatives - Bidders
description : Learn how Buyers can use Smart Image Adjustments to resize their main native creative image and icon with a few clicks of the mouse.
ms.date : 11/27/2023

---


# Smart image adjustments for Native Creatives - Bidders

Buyers can use Smart Image Adjustments to automatically resize their
main native creative image and icon with a few clicks of the mouse so
that they can quickly meet the publisher's placement criteria.


## Accessing smart image adjustments for Native Creatives

By default, the **Allow Smart Image Adjustments** toggle is enabled for
all buyers under a bidder. To keep to our recommended native best
practices, see [Buying Native Inventory](../invest/buying-native-inventory.md).

If buyers would like to make adjustments to their Smart Image Adjustment
settings, please file a support ticket
([help.xandr.com](https://help.xandr.com/s/login/)) or reach out to your
Xandr representative.

## How smart image adjustments works

If buyers bid with a native creative image that doesn't exactly match
the dimensions of a publisher's
placement, Xandr will automatically resize the
image by adding white bars to fill the placement when the **Allow Smart
Image** **Adjustments** is enabled.

When using Smart Image Adjustments within Bidders, the main native
creative image and icon can only be resized up to 200% and down to 50%
of the original aspect ratio. Smart Image Adjustments can also convert
native creative images vertically and horizontally. This can be done
with our Creative Service API , which gives you more control over the
max scale factor and aspect ratio bounds. For more information, see [Creative API Services](creative-api-services.md). The original
dimensions of the native creative ultimately determine what is possible.

## BEST Practices/Requirements:

- Smart Image Adjustments only works for the following file types:
  - .png
  - .jpg
  - .jpeg
  - .gif
- Make sure that Image URLs return valid content. Image URLs that return
  non-200, non-image content will not display properly.
- To ensure the best viewer experience, we recommend that you host image
  assets in the appropriate geographic region for your audience. Poorly
  distributed image assets can lead to slower image fetch times.

## Related topics

- [Native Ad Markup Bidding](native-ad-markup-bidding.md)