# Set Reserve Prices on iOS

<div class="body">

The reserve price is the minimum bid amount you'll accept to show an ad.
This setting should be used with caution, as it can cause you to show
significantly fewer ads (or none at all), which will negatively affect
your app's monetization.

<div id="ID-0000329a__note_uqm_jfs_lwb" class="note">

<span class="notetitle">Note:</span> This API must be called
before `loadAd` method if you want to set a reserve price on an
impression. The price set here will be used in the auction logic.

</div>

Set a reserve price on the impression using the following code:

``` pre
banner.reserve = 0.01;
```

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
