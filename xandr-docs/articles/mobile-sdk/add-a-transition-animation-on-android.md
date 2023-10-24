---
Title : Add A Transition Animation on Android
Description : By default this feature is disabled. Enable banner ad transition
ms.custom : android-sdk
---


# Add A Transition Animation on Android





By default this feature is disabled. Enable banner ad transition
animations with the following code:

``` pre
bav.setTransitionType(TransitionType.PUSH);
```





Disable banner transitions by calling

``` pre
bav.setTransitionType(TransitionType.NONE);
```





The available transition types (including `NONE` to disable the feature)
are:

- none
- random
- push
- reveal
- move in
- fade





In addition to its type, a transition animation has a direction and a
duration (expressed in milliseconds) associated with it. Set the
direction and duration of transition animations like so:

``` pre
bav.setTransitionDirection(TransitionDirection.UP);  // or DOWN, LEFT, RIGHT
bav.setTransitionDuration( 1000 );
```



The default values for the direction and duration are `UP` and `1000`,
respectively.




