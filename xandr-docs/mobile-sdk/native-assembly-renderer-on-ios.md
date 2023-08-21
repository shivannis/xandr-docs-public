# Native Assembly Renderer on iOS

<div class="body">

The native assembly renderer simplifies the use of <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banner-native-on-ios.html"
class="xref" target="_blank">Banner Native</a> so that it behaves
like <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banners-on-ios.html"
class="xref" target="_blank">Banner</a>. That is, you can set Native
banners to act like web display banners. The renderer simplifies the
process of generating Native display and allows
<span class="ph">Xandr</span> users to implement Native advertising
without requiring developers to rebuild their apps with changes or new
formats.

Previously, developers had to manage native assets in the UT response by
using the AN Native Response class in the Mobile SDK. Now
the `renderer_url` in the UT response can be processed and combined with
the resources necessary to display native assets in a web view. This
generates an AN MRAID container view that is ready to display the moment
it is loaded.

<div class="section">

## EntryPoint 

Currently, this feature is available only in <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banner-native-on-ios.html"
class="xref" target="_blank">Banner Native</a>.

</div>

<div class="section">

## Request API for Native Assembly Renderer

Renderer is only available in `BannerNative`. For a `BannerNativeAd`, a
Client Developer can enable `enableNativeRendering` by setting
the `Allow Native` to YES in the `BannerAdRequest. The` response will be
processed in the same manner as a `BannerAd`. 

The following fields must be set:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d26022e106" class="entry cellborder"
style="vertical-align: top">Field</th>
<th id="d26022e109" class="entry cellborder"
style="vertical-align: top">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d26022e106 "><code
class="ph codeph">AllowNativeDemand</code></td>
<td class="entry cellborder"
headers="d26022e109 "><code class="ph codeph">YES/true</code></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26022e106 "><code
class="ph codeph">enableNativeRendering</code></td>
<td class="entry cellborder"
headers="d26022e109 "><code class="ph codeph">YES/true</code></td>
</tr>
</tbody>
</table>

</div>

``` pre
@property (nonatomic, readwrite) BOOL enableNativeRendering;
```

Example : 

``` pre
bannerAdObject.enableNativeRendering = YES;
```

**Response API for Native Assembly Renderer**

Banner's Delegate is being used to handle Banner-Native RendererAd

``` pre
- (void)adDidReceiveAd:(id)ad
```

Example : 

``` pre
- (void)adDidReceiveAd:(id)ad
{
        //Ad Received Successfully
}
```

</div>

<div class="section">

## Tracker Management 

Impression trackers are automatically handled by the SDK in the same
manner as HTML banner ads.

Click trackers should be setup via the renderer console and be managed
in the renderer itself.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-ad-units.html" class="link">iOS SDK Ad Units</a>

</div>

</div>

</div>
