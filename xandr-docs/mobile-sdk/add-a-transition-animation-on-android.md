# Add A Transition Animation on Android

<div class="body">

<div class="p">

By default this feature is disabled. Enable banner ad transition
animations with the following code:

``` pre
bav.setTransitionType(TransitionType.PUSH);
```

</div>

<div class="p">

Disable banner transitions by calling

``` pre
bav.setTransitionType(TransitionType.NONE);
```

</div>

<div class="p">

The available transition types (including `NONE` to disable the feature)
are:

- none
- random
- push
- reveal
- move in
- fade

</div>

<div class="p">

In addition to its type, a transition animation has a direction and a
duration (expressed in milliseconds) associated with it. Set the
direction and duration of transition animations like so:

``` pre
bav.setTransitionDirection(TransitionDirection.UP);  // or DOWN, LEFT, RIGHT
bav.setTransitionDuration( 1000 );
```

</div>

The default values for the direction and duration are `UP` and `1000`,
respectively.

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
