---
Title : Show High Impact Media type on iOS
Description : <div id="ID-000022b6__note_vlg_wfs_lwb"
Note: This feature is available in
Xandr Mobile SDK version 8.1.0 for iOS.
---


# Show High Impact Media type on iOS





<div id="ID-000022b6__note_vlg_wfs_lwb" 

Note: This feature is available in
Xandr Mobile SDK version 8.1.0 for iOS.







## Overview

This page has instructions and code samples for showing a high impact
media as banner ad view in Xandr Mobile SDK for iOS.





## Property

This feature enhances the MobileSDK API with a property that indicates
whether high impact media can serve on an Ad object.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022b6__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000022b6__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022b6__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000022b6__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022b6__entry__1"><code
class="ph codeph">shouldAllowHighImpactDemand</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022b6__entry__2">BOOL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022b6__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022b6__entry__4">Indicates whether high impact media can
serve on the Ad object.<br />
Default value is NO.</td>
</tr>
</tbody>
</table>

``` pre
/**
 * Sets whether or not High Impact Media(AppNexus Media Type:11) can serve on this Ad object.
 *
*/
@property (nonatomic, readwrite) BOOL shouldAllowHighImpactDemand;
```





## Example

``` pre
// Allow High Impact Media for ANBannerAdView 
bannerAdView.shouldAllowHighImpactDemand = YES;
```






