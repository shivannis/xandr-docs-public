# Resize Ads to fit the Screen or Banner Ad View on iOS

<div class="body">

Depending on where advertising fits into your application, you might
want to expand the ad creative to fill the banner ad view in which it is
displayed, or to fit the device's screen width.

<div class="section">

## Resize Ad to Fit the Banner Ad View

**Properties**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d4564e55" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d4564e58" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d4564e55 "><code
class="ph codeph">shouldResizeAdToFitContainer</code></td>
<td class="entry cellborder"
headers="d4564e58 ">Determines whether the creative should resize to
fill the banner ad view in which it is displayed. This feature will
cause ad creatives that are smaller than the view size to 'stretch' to
the current size. This may cause image quality degradation for the
benefit of having an ad occupy the entire ad view. Defaults to <code
class="ph codeph">NO</code>.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
// Create the banner ad view and add it as a subview
ANBannerAdView *banner = [ANBannerAdView adViewWithFrame:rect placementId:@"1326299" adSize:size];
banner.rootViewController = self;
// Ad should resize to fit the container
banner.shouldResizeAdToFitContainer = YES;
[self.view addSubview:banner];
// Load an ad!
[banner loadAd];
```

</div>

<div class="section">

## Constrain to the Container View

By default ANBannerAdView is set to constrain to the size of the
creative that is returned. But for some custom sizes you might want
the ANBannerAdView to be constrained to its superview.

By adding the custom sizes
to `sizesThatShouldConstrainToSuperview` array you can instruct the SDK
to set the right constraints for you. 

<div class="note">

<span class="notetitle">Note:</span>
`sizesThatShouldConstrainToSuperview` is a Global setting and will be
applied to all of the Banner Ad Views in your app.

</div>

  **Properties**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d4564e128" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d4564e131" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d4564e128 "><code
class="ph codeph">sizesThatShouldConstrainToSuperview</code></td>
<td class="entry cellborder"
headers="d4564e131 ">Special ad sizes for which the ANBannerAdView
should be constrained to its super view.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
NSArray *customSizes = @[[NSValue valueWithCGSize:CGSizeMake(3, 3)],[NSValue valueWithCGSize:CGSizeMake(4, 4)]];// Special ad sizes for which the ANBannerAdView should be constrained to its super view.
ANSDKSettings.sharedInstance.sizesThatShouldConstrainToSuperview  = customSizes;
 
 
// Create the banner ad view and add it as a subview
ANBannerAdView *banner = [ANBannerAdView adViewWithFrame:rect placementId:adID adSize:CGSizeMake(3, 3)];
banner.rootViewController = self;
  
[self.view addSubview:banner];
  
// Load an ad!
[banner loadAd];
```

</div>

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
