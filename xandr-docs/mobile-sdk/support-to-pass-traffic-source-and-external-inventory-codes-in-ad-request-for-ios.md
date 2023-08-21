# Support to Pass Traffic Source and External Inventory Codes in Ad Request for iOS

<div class="body">

<div class="section">

## Overview - External Inventory Code

An external inventory code provides publishers the ability to break out
data on their inventory more granularly than the placement level.  The
value can be passed via the `ext_inv_code`` `field of the request body
using the `extInvCode` property, but must be entered into the system
before it is logged and available as a dimension in relevant reporting.
For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/external-inventory-code-service.html"
class="xref" target="_blank">External Inventory Code Service</a>.  In
short, this property allows you to pass the predefined external
inventory codes on ad calls and then report on them.

**Scope of extInvCode**

You need to set the External Inventory Code using
the `extInvCode` property
of `ANBannerAdView`, `InterstitialAdView`, `ANNativeAdRequest` and `ANInstreamVideoAd`.
However, the scope of use of this property depends on your reporting
requirement. You can omit the call to this property if you don't want to
use this feature. 

</div>

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d25659e93" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d25659e96" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d25659e99" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d25659e102" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d25659e93 "><code class="ph codeph">extInvCode</code></td>
<td class="entry cellborder"
headers="d25659e96 ">String</td>
<td class="entry cellborder"
headers="d25659e99 ">readwrite</td>
<td class="entry cellborder"
headers="d25659e102 ">Indicates predefined value passed on the query
string that can be used in reporting.</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
 Set the extInvCode, Specifies predefined value passed on the query string that can be used in reporting. The value must be entered into the system before it is logged.
*/
@property (nonatomic, readwrite, strong, nullable) NSString *extInvCode;
```

</div>

<div class="section">

## Example

``` pre
//Banner
ANBannerAdView *  banner = [[ANBannerAdView alloc] initWithFrame: CGRectMake(0, 0, 320, 50)];
.............
[banner setExtInvCode:@"Xandr-extInvCode"];
 
//Native
ANNativeAdRequest *  nativeAdRequest = [[ANNativeAdRequest alloc] init];
 ...........
[nativeAdRequest setExtInvCode:@"Xandr-extInvCode"];
```

</div>

<div class="section">

## Overview - Traffic Source Code

A traffic source code provides the ability to check the third-party
traffic source of a particular impression. If the traffic source code is
pre-registered with <span class="ph">Xandr</span>, and is passed via the
query string using the `trafficSourceCode` property, then it would let
you know the sources for the third party traffic occurred for an
impression.

**Scope of trafficSourceCode**

You need to set the Traffic Source Code using
the `trafficSourceCode` property
of `ANBannerAdView`, `InterstitialAdView`, `ANNativeAdRequest` and `ANInstreamVideoAd`.  

</div>

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d25659e199" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d25659e202" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d25659e205" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d25659e208" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d25659e199 "><code
class="ph codeph">trafficSourceCode</code></td>
<td class="entry cellborder"
headers="d25659e202 ">String</td>
<td class="entry cellborder"
headers="d25659e205 ">readwrite</td>
<td class="entry cellborder"
headers="d25659e208 ">Indicates predefined source code values for third
party traffic passed on the query string.</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
Set the trafficSourceCode,  Specifies the third-party source of this impression.
*/
@property (nonatomic, readwrite, strong, nullable) NSString *trafficSourceCode;
```

</div>

<div class="section">

## Example

``` pre
//Banner
ANBannerAdView *  banner = [[ANBannerAdView alloc] initWithFrame: CGRectMake(0, 0, 320, 50)];
.............
[banner setTrafficSourceCode:@"Xandr-trafficSourceCode"];
 
//Native
ANNativeAdRequest *  nativeAdRequest = [[ANNativeAdRequest alloc] init];
 ...........
[nativeAdRequest setTrafficSourceCode:@"Xandr-trafficSourceCode"];
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
