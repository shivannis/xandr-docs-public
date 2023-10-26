---
Title : Resize Ads to fit the Screen or Banner Ad View on iOS
Description : Depending on where advertising fits into your application, you might
want to expand the ad creative to fill the banner ad view in which it is
displayed, or to fit the device's screen width.
ms.custom : android-ios
---


# Resize Ads to fit the Screen or Banner Ad View on iOS



Depending on where advertising fits into your application, you might
want to expand the ad creative to fill the banner ad view in which it is
displayed, or to fit the device's screen width.



## Resize Ad to Fit the Banner Ad View

**Properties**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003190__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-00003190__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003190__entry__1"><code
class="ph codeph">shouldResizeAdToFitContainer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003190__entry__2">Determines whether the creative should
resize to fill the banner ad view in which it is displayed. This feature
will cause ad creatives that are smaller than the view size to 'stretch'
to the current size. This may cause image quality degradation for the
benefit of having an ad occupy the entire ad view. Defaults to <code
class="ph codeph">NO</code>.</td>
</tr>
</tbody>
</table>

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





## Constrain to the Container View

By default ANBannerAdView is set to constrain to the size of the
creative that is returned. But for some custom sizes you might want
the ANBannerAdView to be constrained to its superview.

By adding the custom sizes
to `sizesThatShouldConstrainToSuperview` array you can instruct the SDK
to set the right constraints for you. 



<b>Note:</b>
`sizesThatShouldConstrainToSuperview` is a Global setting and will be
applied to all of the Banner Ad Views in your app.



  
**Properties**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003190__entry__5"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-00003190__entry__6"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003190__entry__5"><code
class="ph codeph">sizesThatShouldConstrainToSuperview</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003190__entry__6">Special ad sizes for which the
ANBannerAdView should be constrained to its super view.</td>
</tr>
</tbody>
</table>

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






