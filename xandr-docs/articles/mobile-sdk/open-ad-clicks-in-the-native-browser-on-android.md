---
Title : Open Ad Clicks in the Native Browser on Android
Description : You can choose whether the device's native browser will open if the user
clicks an ad in this view. By default, the SDK will open clicks in an
---


# Open Ad Clicks in the Native Browser on Android



You can choose whether the device's native browser will open if the user
clicks an ad in this view. By default, the SDK will open clicks in an
in-app browser.

To cause a specific ad creative to open in the native browser, use
the <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/anjam-user-guide.html"
class="xref" target="_blank">ANJAM API</a>.

Use this code to open the device's native browser when the user clicks
an ad:

``` pre
adView.setClickThroughAction(ANClickThroughAction.OPEN_DEVICE_BROWSER);    
```




