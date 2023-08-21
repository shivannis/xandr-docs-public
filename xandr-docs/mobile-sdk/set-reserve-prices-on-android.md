# Set Reserve Prices on Android

<div class="body">

The reserve price is the minimum bid amount you'll accept to show an ad.
This setting should be used with caution, as it can cause you to show
significantly fewer ads (or none at all), which will negatively affect
your app's monetization.

<div id="ID-00001839__note_egh_dfs_lwb" class="note">

<span class="notetitle">Note:</span> This API must be called
before `loadAd` method if you want to set a reserve price on an
impression. The price set here will be used in the auction logic.

</div>

Set a reserve price on the impression using the following code:

``` pre
adView.setReserve(0.05f);
```

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
