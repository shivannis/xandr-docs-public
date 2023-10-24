---
Title : Set Reserve Prices on Android
Description : The reserve price is the minimum bid amount you'll accept to show an ad.
---


# Set Reserve Prices on Android



The reserve price is the minimum bid amount you'll accept to show an ad.
This setting should be used with caution, as it can cause you to show
significantly fewer ads (or none at all), which will negatively affect
your app's monetization.

<div id="ID-00001839__note_egh_dfs_lwb" 

Note: This API must be called
before `loadAd` method if you want to set a reserve price on an
impression. The price set here will be used in the auction logic.



Set a reserve price on the impression using the following code:

``` pre
adView.setReserve(0.05f);
```




