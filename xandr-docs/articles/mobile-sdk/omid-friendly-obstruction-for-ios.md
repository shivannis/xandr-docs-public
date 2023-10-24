---
Title : OMID-Friendly Obstruction for iOS
Description : The Open Measurement Software Development Kit (OM SDK) is designed to
facilitate third party viewability and verification measurement for ads
served to mobile app environments without requiring multiple Ad
Verification Service Providers (Measurement Provider) SDKs.
ms.custom : ios-sdk
---


# OMID-Friendly Obstruction for iOS



The Open Measurement Software Development Kit (OM SDK) is designed to
facilitate third party viewability and verification measurement for ads
served to mobile app environments without requiring multiple Ad
Verification Service Providers (Measurement Provider) SDKs.

Open Measurement Interface Definition (OMID) is an open measurement API
provided by IAB. In short, it enables a publisher to get data on the
viewability of an ad within a mobile device. For more detailed
information about OMID, visit the IAB site
<a href="https://iabtechlab.com/standards/open-measurement-sdk/"
class="xref" target="_blank">here</a>. 

Friendly obstructions are the views that OMID will exclude from all
viewability calculations when added to the OMID Session. When a UI
element needs to be considered as a part of the ad, that can be added as
a friendly obstruction to prevent it from counting towards coverage of
the ad. For example, any native element such as a close button, some
logo text, or other object that needs to be considered as a part of an
ad (and not be counted for viewability measurement) should be
registered as a friendly obstruction. This applies to any ancestor or
peer views in the view hierarchy.

The OMID API enables :

- Adding a friendly obstruction
- Removing a friendly obstruction
- Removing all friendly obstructions

The details of these APIs for iOS platform for different AdUnits are
discussed in the API details section.

In addition to the above mentioned functionalities, the OM SDK
facilitates a property (`enableOMIDOptimization`) that enables
optimization. Here, as part of optimization, viewability is tracked
until an ad is fully visible to the user. Once the ad ceases to be
visible, viewability tracking stops. By default this property is set as
"NO" and when set as "YES", the OM SDK takes care of performing
Open-Measurement Optimization.



## Properties

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002fcb__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-00002fcb__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002fcb__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-00002fcb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002fcb__entry__1"><code
class="ph codeph">enableOMIDOptimization</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002fcb__entry__2">BOOL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002fcb__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002fcb__entry__4">Indicates if Open-Measurement
Optimization  for viewability and verification measurement for ads
served is enabled and if not, enable the same. Default value is NO.
<p><strong><em>This API supports only banner and native ad
types.</em></strong></p></td>
</tr>
</tbody>
</table>

``` pre
/**
 If YES, the SDK will allow to perform Open-Measurement Optimization  for viewability and verification measurement for ads served. Default is NO.
 */
@property (nonatomic, readwrite) BOOL enableOMIDOptimization;
```





## Example

**Objective C**

``` pre
ANSDKSettings.sharedInstance.enableOMIDOptimization = true;
```

**Swift**

``` pre
ANSDKSettings.sharedInstance().enableOMIDOptimization = true
```





## API Details

**Adding a Friendly Obstruction**

To add a Friendly Obstruction for Banner, Interstitial and Video
AdUnits, you need to pass the view as an argument to the API. 

**API for Adding Friendly Obstruction**

``` pre
(void)addOpenMeasurementFriendlyObstruction:(nonable UIView *)obstructionView;
```

For Native AdUnits, you need to pass a Friendly Obstruction views list
to add views as Friendly Obstruction with register view tracking.

**API for Adding Friendly Obstruction**

``` pre
(BOOL)registerViewForTracking:(nonnull UIView *)view withRootViewController:(nonnull UIViewController *)rvc clickableViews:(nullable NSArray<UIView *> *)views openMeasurementFriendlyObstructions:(nonnull NSArray<UIView *> *)obstructionViews error:(NSError *__nullable*__nullable)error;
```

**Examples for Adding a Friendly Obstruction for AdUnits (Banner,
Interstitial and Video)**

``` pre
[adObject addOpenMeasurementFriendlyObstruction:friendlyObstructionView]; 
```

**Example for Adding a Friendly Obstruction for Native AdUnit**

``` pre
[self.nativeResponse
    registerViewForTracking:self.nativeView
    withRootViewController:self clickableViews:@[]
    openMeasurementFriendlyObstructions:@[friendlyObstructionView1, friendlyObstructionView2, ...]
    error:nil];
```





##  Removing a Friendly Obstruction



<b>Note:</b> Native AdUnits does not support
remove API



To remove a Friendly Obstruction for Banner, Interstitial and Video
AdUnits, you need to pass the view as an argument to the API.   

**API for Removing a Friendly Obstruction**

``` pre
(void)removeOpenMeasurementFriendlyObstruction:(nonable UIView*)obstructionView;
```

**Examples for Removing a Friendly Obstruction for AdUnits (Banner,
Interstitial and Video)**

``` pre
[adObject removeOpenMeasurementFriendlyObstruction:friendlyObstructionView];
```





## Removing All Friendly Obstructions



<b>Note:</b> Native AdUnits does not support
remove API



**API for Removing All Friendly Obstruction**

``` pre
(void)removeAllOpenMeasurementFriendlyObstructions;
```

**Examples for Removing All Friendly Obstruction for AdUnits (Banner,
Interstitial and Video)**

``` pre
[adObject removeAllOpenMeasurementFriendlyObstructions];
```






