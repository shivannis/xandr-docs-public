---
Title : Support for External Inventory Code and Traffic Source Code on Android
Description : ## Overview - External Inventory Code
An external inventory code provides publishers the ability to break out
data on their inventory more granularly than the placement level. The
---


# Support for External Inventory Code and Traffic Source Code on Android





## Overview - External Inventory Code

An external inventory code provides publishers the ability to break out
data on their inventory more granularly than the placement level. The
value can be passed via the `ext_inv_code` field of the request body
using the `extInvCode` property, but must be entered into the system
before it is logged and available as a dimension in relevant reporting.
For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/external-inventory-code-service.html"
class="xref" target="_blank">External Inventory Code Service</a>. In
short, this property allows you to pass the predefined external
inventory codes on ad calls and then report on them.

**Scope of extInvCode**

You need to set the External Inventory Code using
the `extInvCode` property
of `BannerAdView`, `InterstitialAdView`, `NativeAdRequest` and `VideoAd`.
However, the scope of use of this property depends on your reporting
requirement. You can omit the call to this property if you don't want to
use this feature. 





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001048__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-00001048__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001048__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__1"><code
class="ph codeph">extInvCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__2">String</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001048__entry__3">Sets
the external inventory code and indicates predefined value passed on the
query string that can be used in reporting.</td>
</tr>
</tbody>
</table>

``` pre
/**
 * Passes the external inventory code to the Ad Request
 * @param extInvCode passed as String, specifies predefined value passed on the query string that can be used in reporting.
 * */
public void setExtInvCode(String extInvCode)
 
 
/**
 * Returns the external inventory code, initially added using {@link #setExtInvCode(String)}
 * @@return extInvCode as String, specifies predefined value passed on the query string that can be used in reporting.
 * */
public String getExtInvCode()
```





##  Example

``` pre
//Banner
bannerAdView.setExtInvCode("Xandr-extInvCode");
bannerAdView.getExtInvCode();
//Native
nativeAdRequest.setExtInvCode("Xandr-extInvCode");
nativeAdRequest.getExtInvCode();
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
<th id="ID-00001048__entry__7"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-00001048__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001048__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__7"><code
class="ph codeph">trafficSourceCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__8">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001048__entry__9">Indicates predefined source code values
for third party traffic passed on the query string.</td>
</tr>
</tbody>
</table>

``` pre
/**
 * Passes the traffic source code to the Ad Request
 * @param trafficSourceCode passed as String, specifies the third-party source of this impression.
 * */
public void setTrafficSourceCode(String trafficSourceCode) {
    requestParameters.setTrafficSourceCode(trafficSourceCode);
}
 
/**
 * Returns the traffic source code, initially added using {@link #setTrafficSourceCode(String)}
 * @return trafficSourceCode as String, specifies the third-party source of this impression.
 * */
public String getTrafficSourceCode() {
    return requestParameters.getTrafficSourceCode();
}
```





## Example

``` pre
//Banner
bannerAdView.setTrafficSourceCode("Xandr-trafficSourceCode");
bannerAdView.getTrafficSourceCode();
 
//Native
nativeAdRequest.setTrafficSourceCode("Xandr-trafficSourceCode");
nativeAdRequest.getTrafficSourceCode();
```






