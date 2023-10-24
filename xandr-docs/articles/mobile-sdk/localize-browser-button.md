---
Title : Localize Browser Button
Description : When using the SDK feature to open click-through links within an in-app
browser (in a native iOS app), you might need to localize the "OK"
button that is displayed in the browser. To perform this localization,
ms.custom : android-sdk
---


# Localize Browser Button



When using the SDK feature to open click-through links within an in-app
browser (in a native iOS app), you might need to localize the "OK"
button that is displayed in the browser. To perform this localization,
use the **NSLocalizedString** macro.

Add a value for the "OK" key for the browser's OK button. For example,
to localize to Finnish ad the following code to
Localizable.strings(Finnish):

``` pre
"OK" = "kunnossa";
```

The **NSLocalizedString** macro will fetch the localized string from
the **Localizable.strings** file for the current localization.




