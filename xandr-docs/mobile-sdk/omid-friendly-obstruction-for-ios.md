# OMID-Friendly Obstruction for iOS

<div class="body">

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

<div class="section">

## Properties

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d14429e88" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d14429e91" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d14429e94" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d14429e97" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d14429e88 "><code
class="ph codeph">enableOMIDOptimization</code></td>
<td class="entry cellborder"
headers="d14429e91 ">BOOL</td>
<td class="entry cellborder"
headers="d14429e94 ">readwrite</td>
<td class="entry cellborder"
headers="d14429e97 ">Indicates if Open-Measurement Optimization  for
viewability and verification measurement for ads served is enabled and
if not, enable the same. Default value is NO.
<p><strong><em>This API supports only banner and native ad
types.</em></strong></p></td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
 If YES, the SDK will allow to perform Open-Measurement Optimization  for viewability and verification measurement for ads served. Default is NO.
 */
@property (nonatomic, readwrite) BOOL enableOMIDOptimization;
```

</div>

<div class="section">

## Example

**Objective C**

``` pre
ANSDKSettings.sharedInstance.enableOMIDOptimization = true;
```

**Swift**

``` pre
ANSDKSettings.sharedInstance().enableOMIDOptimization = true
```

</div>

<div class="section">

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

</div>

<div class="section">

##   Removing a Friendly Obstruction

<div class="note">

<span class="notetitle">Note:</span> Native AdUnits does not support
remove API

</div>

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

</div>

<div class="section">

## Removing All Friendly Obstructions

<div class="note">

<span class="notetitle">Note:</span> Native AdUnits does not support
remove API

</div>

**API for Removing All Friendly Obstruction**

``` pre
(void)removeAllOpenMeasurementFriendlyObstructions;
```

**Examples for Removing All Friendly Obstruction for AdUnits (Banner,
Interstitial and Video)**

``` pre
[adObject removeAllOpenMeasurementFriendlyObstructions];
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
