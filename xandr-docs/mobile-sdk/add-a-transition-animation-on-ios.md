# Add a Transition Animation on iOS

<div class="body">

This page has instructions on how to add an animation to banner ad state
transitions.

When ANBannerAdView presents more than one creative, a transition
animation can be enabled between the visibly presented creative content.

By default, transitions are not animated. When there is no animation one
creative immediately replaces the other. Enable transition animations as
follows:

``` pre
bannerAdView.transitionType = ANBannerViewAdTransitionTypeFlip;
```

The enumerated type `ANBannerViewAdTransitionType` defines the possible
transition types.

You can also define the duration and direction of the transition:

``` pre
bannerAdView.transitionDuration = 2.5; // Duration in seconds.
bannerAdView.transitionDirection = ANBannerViewAdTransitionDirectionLeft;
```

The range of transition directions is defined by the enumerated
type `ANBannerViewAdTransitionDirection`.

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
