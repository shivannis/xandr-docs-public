# Publisher Side User Opt-Out for iOS

<div class="body">

The publisher-side user opt-out feature provides a new API call in
Mobile SDK that enables the publishers to set the information of users'
choice of opt-in/out from tracking in the AdRequests. For any AdRequest,
<span class="ph">Xandr</span> Mobile SDK checks in the device or OS
environment level and populates the value for limitAdTracking (LMT) in
the background automatically (If LMT=true, it indicates that the user
opts out from tracking at the device or OS settings). However, the
publishers retain information about their users' opt-in/out of tracking
and thus are required to pass that information if their user has opted
out in order to comply with their privacy regulations. To facilitate
this, publisher side user opt-out feature has been introduced to the
Mobile SDK. 

<div class="section">

## Property

The publisher side user opt-out feature enhances the MobileSDK API with
a property which indicates whether the feature is enabled or not and if
not enable the same.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d3362e60" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d3362e63" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d3362e66" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d3362e69" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d3362e60 "><code class="ph codeph">doNotTrack</code></td>
<td class="entry cellborder"
headers="d3362e63 ">BOOL</td>
<td class="entry cellborder"
headers="d3362e66 ">readwrite</td>
<td class="entry cellborder"
headers="d3362e69 ">Indicates if you have information in the app about
user opt-out. If set to YES, tracking cookies and IDFA will be disabled
for all future auctions.  Default value is NO.</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
 Do not track flag. Set this to YES/NO if you have information in the app about user opt-out.
 If set to YES, tracking cookies and IDFA will be disabled for all future auctions.
 Default value is NO.
*/
@property (nonatomic, readwrite) BOOL doNotTrack;
```

</div>

<div class="section">

## Example

``` pre
//Swift
ANSDKSettings.sharedInstance().doNotTrack = true
//Objective-C
[ANSDKSettings sharedInstance].doNotTrack = YES;
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
