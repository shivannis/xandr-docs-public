# Support for External Inventory Code and Traffic Source Code on Android

<div class="body">

<div class="section">

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

</div>

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d11758e89" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d11758e92" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d11758e95" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d11758e89 "><code class="ph codeph">extInvCode</code></td>
<td class="entry cellborder"
headers="d11758e92 ">String</td>
<td class="entry cellborder"
headers="d11758e95 ">Sets the external inventory code and indicates
predefined value passed on the query string that can be used in
reporting.</td>
</tr>
</tbody>
</table>

</div>

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

</div>

<div class="section">

##   Example

``` pre
//Banner
bannerAdView.setExtInvCode("Xandr-extInvCode");
bannerAdView.getExtInvCode();
//Native
nativeAdRequest.setExtInvCode("Xandr-extInvCode");
nativeAdRequest.getExtInvCode();
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
<th id="d11758e186" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d11758e189" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d11758e192" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d11758e186 "><code
class="ph codeph">trafficSourceCode</code></td>
<td class="entry cellborder"
headers="d11758e189 ">String</td>
<td class="entry cellborder"
headers="d11758e192 ">Indicates predefined source code values for third
party traffic passed on the query string.</td>
</tr>
</tbody>
</table>

</div>

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

</div>

<div class="section">

## Example

``` pre
//Banner
bannerAdView.setTrafficSourceCode("Xandr-trafficSourceCode");
bannerAdView.getTrafficSourceCode();
 
//Native
nativeAdRequest.setTrafficSourceCode("Xandr-trafficSourceCode");
nativeAdRequest.getTrafficSourceCode();
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-code-samples.html" class="link">Android SDK Code
Samples</a>

</div>

</div>

</div>
