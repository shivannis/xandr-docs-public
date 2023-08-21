# Control Landing Page Load Visibility on iOS

<div class="body">

This page has instructions for configuring the landing page load
behavior on ad clicks. By default, the landing page loads in the
background until the initial payload finishes loading and can present a
fully rendered landing page to the user. Setting this to NO will cause
the in-app browser to immediately become visible and display the
unrendered landing page. 

<div class="note">

<span class="notetitle">Note:</span> If you're consistently experiencing
slow clickthrough rates, try setting this property to false (Android) or
NO (iOS).

</div>

Use the `ANAdProtocol`'s `landingPageLoadsInBackground` flag to
determine whether, when an ad is clicked, the SDK loads the landing page
in the background (the default is `YES`):

``` pre
banner.landingPageLoadsInBackground = NO;
```

Setting this to `NO` will cause the in-app browser to immediately become
visible and display the unrendered landing page. Setting this
to `NO` when an ad redirects to the app store may cause the in-app
browser to briefly flash on the screen.

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
