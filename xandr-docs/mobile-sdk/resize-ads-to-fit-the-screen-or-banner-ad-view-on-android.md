# Resize Ads to fit the Screen or Banner Ad View on Android

<div class="body">

Depending on where advertising fits into your application, you might
want to expand the ad creative to fill the banner ad view in which it is
displayed, or to fit the device's screen width.

This page has instructions for:

- Resizing the ad to fill the banner ad view
- Resizing the ad to fit the device's screen width
- Constraining the ad the the container view (superview)

<div class="section">

## Resize Ad to Fit the Banner Ad View

**Methods**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18797e69" class="entry cellborder"
style="vertical-align: top">Method</th>
<th id="d18797e72" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18797e69 "><code
class="ph codeph">setResizeAdToFitContainer(boolean)</code></td>
<td class="entry cellborder"
headers="d18797e72 ">Whether the creative should resize to fill the
banner ad view in which it is displayed. This feature will cause ad
creatives that are smaller than the view size to 'stretch' to the
current size. This may cause image quality degradation for the benefit
of having an ad occupy the entire ad view. Defaults to <code
class="ph codeph">false</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18797e69 "><code
class="ph codeph">getResizeAdToFitContainer()</code></td>
<td class="entry cellborder"
headers="d18797e72 ">Check whether the creative will resize to fill the
banner ad view in which it is displayed.</td>
</tr>
</tbody>
</table>

</div>

**Example**

``` pre
BannerAdView bav = new BannerAdView(this);
bav.setPlacementID("1326299");
bav.setAdSize(300, 50);
bav.setResizeAdToFitContainer(true);
bav.getResizeAdToFitContainer();  // true
```

</div>

<div class="section">

## Resize Ad to Fit the Screen Width

**Methods**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18797e136" class="entry cellborder"
style="vertical-align: top">Method</th>
<th id="d18797e139" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18797e136 "><code
class="ph codeph">setExpandsToFitScreenWidth(boolean)</code></td>
<td class="entry cellborder"
headers="d18797e139 ">Causes the banner ad view to resize to fit the
width of the device's screen. This feature will cause ad creatives that
are smaller than the screen width to 'stretch' to fit. This may cause
image quality degradation for the benefit of having an ad occupy the
entire screen. Defaults to <code class="ph codeph">false</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d18797e136 "><code
class="ph codeph">getExpandsToFitScreenWidth()</code></td>
<td class="entry cellborder"
headers="d18797e139 ">Check whether the banner ad view will resize to
fit the width of the device's screen.</td>
</tr>
</tbody>
</table>

</div>

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

</div>

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
