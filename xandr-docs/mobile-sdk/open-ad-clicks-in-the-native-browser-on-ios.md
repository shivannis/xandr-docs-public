# Open Ad Clicks in the Native Browser on iOS

<div class="body">

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
banner.clickThroughAction = ANClickThroughActionOpenDeviceBrowser;
```

<div class="note">

<span class="notetitle">Note:</span>
The `banner.opensInNativeBrowser` has been deprecated as of Mobile SDK
version 5.0.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-code-samples.html" class="link">iOS SDK Code
Samples</a>

</div>

</div>

</div>
