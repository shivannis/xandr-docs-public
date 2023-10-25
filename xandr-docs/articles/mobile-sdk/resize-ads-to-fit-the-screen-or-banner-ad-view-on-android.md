---
Title : Resize Ads to fit the Screen or Banner Ad View on Android
Description : Depending on where advertising fits into your application, you might
want to expand the ad creative to fill the banner ad view in which it is
displayed, or to fit the device's screen width.
---


# Resize Ads to fit the Screen or Banner Ad View on Android



Depending on where advertising fits into your application, you might
want to expand the ad creative to fill the banner ad view in which it is
displayed, or to fit the device's screen width.

This page has instructions for:

- Resizing the ad to fill the banner ad view
- Resizing the ad to fit the device's screen width
- Constraining the ad the the container view (superview)



## Resize Ad to Fit the Banner Ad View

**Methods**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001727__entry__1"
class="entry colsep-1 rowsep-1">Method</th>
<th id="ID-00001727__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__1"><code
class="ph codeph">setResizeAdToFitContainer(boolean)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__2">Whether the creative should resize to
fill the banner ad view in which it is displayed. This feature will
cause ad creatives that are smaller than the view size to 'stretch' to
the current size. This may cause image quality degradation for the
benefit of having an ad occupy the entire ad view. Defaults to <code
class="ph codeph">false</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__1"><code
class="ph codeph">getResizeAdToFitContainer()</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__2">Check whether the creative will resize
to fill the banner ad view in which it is displayed.</td>
</tr>
</tbody>
</table>

**Example**

``` pre
BannerAdView bav = new BannerAdView(this);
bav.setPlacementID("1326299");
bav.setAdSize(300, 50);
bav.setResizeAdToFitContainer(true);
bav.getResizeAdToFitContainer();  // true
```





## Resize Ad to Fit the Screen Width

**Methods**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001727__entry__7"
class="entry colsep-1 rowsep-1">Method</th>
<th id="ID-00001727__entry__8"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__7"><code
class="ph codeph">setExpandsToFitScreenWidth(boolean)</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__8">Causes the banner ad view to resize to
fit the width of the device's screen. This feature will cause ad
creatives that are smaller than the screen width to 'stretch' to fit.
This may cause image quality degradation for the benefit of having an ad
occupy the entire screen. Defaults to <code
class="ph codeph">false</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__7"><code
class="ph codeph">getExpandsToFitScreenWidth()</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001727__entry__8">Check whether the banner ad view will
resize to fit the width of the device's screen.</td>
</tr>
</tbody>
</table>

**Example**

``` pre
BannerAdView bav = new BannerAdView(this);
bav.setPlacementID("1326299");
bav.setAdSize(300, 50);
bav.setExpandsToFitScreenWidth(true);
bav.getExpandsToFitScreenWidth(); // true
```

**Put Them Together**

If you call
both `setExpandsToFitScreenWidth(true)` and `setResizeAdToFitContainer(true)`,
the SDK will try to expand the banner ad view to the screen width first,
and then adjust the ad to fit the container size.






