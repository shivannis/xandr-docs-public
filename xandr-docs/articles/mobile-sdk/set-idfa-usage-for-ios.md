---
Title : Set IDFA usage for iOS
Description : ## Overview
The Identifier for Advertisers (**IDFA**) is an Apple provided id to
track the users for advertising purposes by the publishers who have an
app on the Apple App Store (post getting consent from the users to do
that). An API is introduced in Xandr mobile SDK
ms.custom : ios-sdk
---


# Set IDFA usage for iOS





## Overview

The Identifier for Advertisers (**IDFA**) is an Apple provided id to
track the users for advertising purposes by the publishers who have an
app on the Apple App Store (post getting consent from the users to do
that). An API is introduced in Xandr mobile SDK
to enable or disable IDFA usage by including or excluding the IDFA field
in the ad request. By default, the value is set as **NO** for including
the IDFA field in the AdRequests.





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000323f__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-0000323f__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000323f__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-0000323f__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000323f__entry__1"><code
class="ph codeph">disableIDFAUsage</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000323f__entry__2">BOOL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000323f__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000323f__entry__4">To
exclude the IDFA field in ad request. Default value is NO.<br />
</td>
</tr>
</tbody>
</table>

``` pre
@property (nonatomic, readwrite) BOOL disableIDFAUsage;
```





##  Example

``` pre
[ANSDKSettings sharedInstance].disableIDFAUsage  = YES;
```






