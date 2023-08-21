# Show High Impact Media type on iOS

<div class="body">

<div class="p">

<div id="ID-000022b6__note_vlg_wfs_lwb" class="note">

<span class="notetitle">Note:</span> This feature is available in
<span class="ph">Xandr</span> Mobile SDK version 8.1.0 for iOS.

</div>

</div>

<div class="section">

## Overview

This page has instructions and code samples for showing a high impact
media as banner ad view in Xandr Mobile SDK for iOS.

</div>

<div class="section">

## Property

This feature enhances the MobileSDK API with a property that indicates
whether high impact media can serve on an Ad object.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d36498e73" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d36498e76" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d36498e79" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d36498e82" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d36498e73 "><code
class="ph codeph">shouldAllowHighImpactDemand</code></td>
<td class="entry cellborder"
headers="d36498e76 ">BOOL</td>
<td class="entry cellborder"
headers="d36498e79 ">readwrite</td>
<td class="entry cellborder"
headers="d36498e82 ">Indicates whether high impact media can serve on
the Ad object.  Default value is NO.</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
 * Sets whether or not High Impact Media(AppNexus Media Type:11) can serve on this Ad object.
 *
*/
@property (nonatomic, readwrite) BOOL shouldAllowHighImpactDemand;
```

</div>

<div class="section">

## Example

``` pre
// Allow High Impact Media for ANBannerAdView 
bannerAdView.shouldAllowHighImpactDemand = YES;
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-ad-units.html" class="link">iOS SDK Ad Units</a>

</div>

</div>

</div>
