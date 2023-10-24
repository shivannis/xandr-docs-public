---
Title : Support to Pass Traffic Source and External Inventory Codes in Ad Request for iOS
Description : ## Overview - External Inventory Code
An external inventory code provides publishers the ability to break out
data on their inventory more granularly than the placement level.  The
ms.custom : ios-sdk
---


# Support to Pass Traffic Source and External Inventory Codes in Ad Request for iOS





## Overview - External Inventory Code

An external inventory code provides publishers the ability to break out
data on their inventory more granularly than the placement level.  The
value can be passed via the `ext_inv_code`` `field of the request body
using the `extInvCode` property, but must be entered into the system
before it is logged and available as a dimension in relevant reporting.
For more information, see <a
href="xandr-api/external-inventory-code-service.md"
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





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000033bd__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000033bd__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000033bd__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000033bd__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__1"><code
class="ph codeph">extInvCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__4">Indicates predefined value passed on the
query string that can be used in reporting.</td>
</tr>
</tbody>
</table>

``` pre
/**
 Set the extInvCode, Specifies predefined value passed on the query string that can be used in reporting. The value must be entered into the system before it is logged.
*/
@property (nonatomic, readwrite, strong, nullable) NSString *extInvCode;
```





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





## Overview - Traffic Source Code

A traffic source code provides the ability to check the third-party
traffic source of a particular impression. If the traffic source code is
pre-registered with Xandr, and is passed via the
query string using the `trafficSourceCode` property, then it would let
you know the sources for the third party traffic occurred for an
impression.

**Scope of trafficSourceCode**

You need to set the Traffic Source Code using
the `trafficSourceCode` property
of `ANBannerAdView`, `InterstitialAdView`, `ANNativeAdRequest` and `ANInstreamVideoAd`.  





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000033bd__entry__9"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000033bd__entry__10"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000033bd__entry__11"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000033bd__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__9"><code
class="ph codeph">trafficSourceCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__10">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__11">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033bd__entry__12">Indicates predefined source code values
for third party traffic passed on the query string.</td>
</tr>
</tbody>
</table>

``` pre
/**
Set the trafficSourceCode,  Specifies the third-party source of this impression.
*/
@property (nonatomic, readwrite, strong, nullable) NSString *trafficSourceCode;
```





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






