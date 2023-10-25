---
Title : Set Reserve Prices on iOS
Description : The reserve price is the minimum bid amount you'll accept to show an ad.
ms.custom : android-ios
---


# Set Reserve Prices on iOS



The reserve price is the minimum bid amount you'll accept to show an ad.
This setting should be used with caution, as it can cause you to show
significantly fewer ads (or none at all), which will negatively affect
your app's monetization.


<b>Note:</b> This API must be called
before `loadAd` method if you want to set a reserve price on an
impression. The price set here will be used in the auction logic.



Set a reserve price on the impression using the following code:

``` pre
banner.reserve = 0.01;
```




