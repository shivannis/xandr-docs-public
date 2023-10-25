---
Title : Publisher Side User Opt-Out for iOS
Description : The publisher-side user opt-out feature provides a new API call in
Mobile SDK that enables the publishers to set the information of users'
choice of opt-in/out from tracking in the AdRequests. For any AdRequest,
ms.custom : android-ios
---


# Publisher Side User Opt-Out for iOS



The publisher-side user opt-out feature provides a new API call in
Mobile SDK that enables the publishers to set the information of users'
choice of opt-in/out from tracking in the AdRequests. For any AdRequest,
Xandr Mobile SDK checks in the device or OS
environment level and populates the value for limitAdTracking (LMT) in
the background automatically (If LMT=true, it indicates that the user
opts out from tracking at the device or OS settings). However, the
publishers retain information about their users' opt-in/out of tracking
and thus are required to pass that information if their user has opted
out in order to comply with their privacy regulations. To facilitate
this, publisher side user opt-out feature has been introduced to the
Mobile SDK. 



## Property

The publisher side user opt-out feature enhances the MobileSDK API with
a property which indicates whether the feature is enabled or not and if
not enable the same.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000030c7__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000030c7__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000030c7__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000030c7__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000030c7__entry__1"><code
class="ph codeph">doNotTrack</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030c7__entry__2">BOOL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030c7__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000030c7__entry__4">Indicates if you have information in the
app about user opt-out. If set to YES, tracking cookies and IDFA will be
disabled for all future auctions.<br />
Default value is NO.</td>
</tr>
</tbody>
</table>

``` pre
/**
 Do not track flag. Set this to YES/NO if you have information in the app about user opt-out.
 If set to YES, tracking cookies and IDFA will be disabled for all future auctions.
 Default value is NO.
*/
@property (nonatomic, readwrite) BOOL doNotTrack;
```





## Example

``` pre
//Swift
ANSDKSettings.sharedInstance().doNotTrack = true
//Objective-C
[ANSDKSettings sharedInstance].doNotTrack = YES;
```






