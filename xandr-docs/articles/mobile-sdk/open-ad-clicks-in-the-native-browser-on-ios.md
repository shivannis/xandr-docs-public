---
Title : Open Ad Clicks in the Native Browser on iOS
Description : You can choose whether the device's native browser will open if the user
clicks an ad in this view. By default, the SDK will open clicks in an
ms.custom : ios-sdk
---


# Open Ad Clicks in the Native Browser on iOS



You can choose whether the device's native browser will open if the user
clicks an ad in this view. By default, the SDK will open clicks in an
in-app browser.

To cause a specific ad creative to open in the native browser, use
the <a
href="mobile-sdk/anjam-user-guide.md"
class="xref" target="_blank">ANJAM API</a>.

Use this code to open the device's native browser when the user clicks
an ad:

``` pre
banner.clickThroughAction = ANClickThroughActionOpenDeviceBrowser;
```



<b>Note:</b>
The `banner.opensInNativeBrowser` has been deprecated as of Mobile SDK
version 5.0.






