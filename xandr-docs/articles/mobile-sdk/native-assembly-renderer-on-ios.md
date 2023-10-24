---
Title : Native Assembly Renderer on iOS
Description : The native assembly renderer simplifies the use of <a
href="mobile-sdk/show-banner-native-on-ios.md"
ms.custom : ios-sdk
---


# Native Assembly Renderer on iOS



The native assembly renderer simplifies the use of <a
href="mobile-sdk/show-banner-native-on-ios.md"
class="xref" target="_blank">Banner Native</a> so that it behaves
like <a
href="show-banners-on-ios.md"
class="xref" target="_blank">Banner</a>. That is, you can set Native
banners to act like web display banners. The renderer simplifies the
process of generating Native display and allows
Xandr users to implement Native advertising
without requiring developers to rebuild their apps with changes or new
formats.

Previously, developers had to manage native assets in the UT response by
using the AN Native Response class in the Mobile SDK. Now
the `renderer_url` in the UT response can be processed and combined with
the resources necessary to display native assets in a web view. This
generates an AN MRAID container view that is ready to display the moment
it is loaded.



## EntryPoint 

Currently, this feature is available only in <a
href="show-banner-native-on-ios.md"
class="xref" target="_blank">Banner Native</a>.





## Request API for Native Assembly Renderer

Renderer is only available in `BannerNative`. For a `BannerNativeAd`, a
Client Developer can enable `enableNativeRendering` by setting
the `Allow Native` to YES in the `BannerAdRequest. The` response will be
processed in the same manner as a `BannerAd`. 

The following fields must be set:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002252__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002252__entry__2"
class="entry colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002252__entry__1"><code
class="ph codeph">AllowNativeDemand</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002252__entry__2"><code
class="ph codeph">YES/true</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002252__entry__1"><code
class="ph codeph">enableNativeRendering</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002252__entry__2"><code
class="ph codeph">YES/true</code></td>
</tr>
</tbody>
</table>

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





## Tracker Management 

Impression trackers are automatically handled by the SDK in the same
manner as HTML banner ads.

Click trackers should be setup via the renderer console and be managed
in the renderer itself.






