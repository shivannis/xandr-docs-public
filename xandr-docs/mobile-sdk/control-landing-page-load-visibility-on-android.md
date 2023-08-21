# Control Landing Page Load Visibility on Android

<div class="body">

This page has instructions for configuring the landing page load
behavior on ad clicks. By default, the landing page loads in the
background until the initial payload finishes loading and can present a
fully rendered landing page to the user. Setting this to NO will cause
the in-app browser to immediately become visible and display the
unrendered landing page. 

<div class="note">

<span class="notetitle">Note:</span> If you're consistently experiencing
slow clickthrough rates, try setting this property to false.

</div>

Use the `AdView.setLoadsInBackground(boolean)` method to determine
whether, when an ad is clicked, the SDK loads the landing page in the
background (the default is `true`):

``` pre
bav.setLoadsInBackground(false);
```

Setting this to `false` will cause the in-app browser to immediately
become visible and display the unrendered landing page. Setting this
to `false` when an ad redirects to the app store may cause the in-app
browser to briefly flash on the screen.

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
