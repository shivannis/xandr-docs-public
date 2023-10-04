---
Title : Migrating Android SDK v7 to 8.0
Description : Publishers with SDK v8.0, are required to initialize
---


# Migrating Android SDK v7 to 8.0



Publishers with SDK v8.0, are required to initialize
Xandr SDK before making an ad request. When
using Xandr Mobile Ads SDK for Android SDK v8,
the init() method must be called prior to any other SDK
operations. Without this initialization no Ad request would go through
and the SDK would throw an exception. For more information, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/android-sdk-initialization-v8-0.html"
class="xref" target="_blank">Android - SDK Initialization (v8.0)</a>



## Removed APIs and their alternatives

Some of the APIs listed below has been removed in the
Xandr SDK v8.0. If the below listed APIs are
being used, we request the APIs to be migrated to their equivalent or
alternative APIs.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001ae1__entry__1"
class="entry colsep-1 rowsep-1">Class</th>
<th id="ID-00001ae1__entry__2" class="entry colsep-1 rowsep-1">Removed
API</th>
<th id="ID-00001ae1__entry__3" class="entry colsep-1 rowsep-1">Alternate
API</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row rowsep-1">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">ANNativeAdResponse</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">isOpenNativeBrowser()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">getClickThroughAction()</td>
</tr>
<tr class="even row rowsep-1">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">openNativeBrowser(boolean
openNativeBrowser)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd row">
<td rowspan="5" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">VideoAd</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getOpensNativeBrowser()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">getClickThroughAction()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setExternalUid(String externalUid)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getExternalUid()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getCreativeId()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">ANMultiAdRequest</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getExternalUid()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setExternalUid(String externalUid)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="even row">
<td rowspan="10" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">BannerAdView</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">loadAdOffscreen()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">loadAd()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getOpensNativeBrowser()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">getClickThroughAction()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setExternalUid(String externalUid)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getExternalUid()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getCreativeId()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getAdType()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANAdResponseInfo.getAdType()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setAllowNativeDemand(boolean enabled,
int rendererId)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setAllowNativeDemand(boolean)
<p>setRendererId(int rendererId)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setCountImpressionOnAdLoad(boolean
enabled)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getCountImpressionOnAdLoad()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="even row">
<td rowspan="7" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">InterstitialAdView</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">loadAdOffscreen()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">loadAd()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getOpensNativeBrowser()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">getClickThroughAction()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setExternalUid(String externalUid)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getExternalUid()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getCreativeId()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getAdType()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANAdResponseInfo.getAdType()</td>
</tr>
<tr class="odd row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">NativeAdRequest</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getOpensNativeBrowser()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">getClickThroughAction()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setExternalUid(String externalUid)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getExternalUid()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">NativeAdResponse</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getCreativeId()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even row">
<td rowspan="7" class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">SDKSettings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">useHttps(boolean useHttps)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001ae1__entry__3">N/A.
HTTPS is used by default.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">isHttpsEnabled()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setExternalUserIds(Map&lt;ANExternalUserIdSource,String&gt;
externalUserIds)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">setUserIds(List&lt;ANUserId&gt;
userIdList)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getExternalUserIds()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">getUserIds()</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setAllowUsingSimpleDomain(boolean
allow)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">setCountImpressionOn1pxRendering(boolean
enable)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">getCountImpressionOn1pxRendering()</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">Clog</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2">clogged (Variable)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__1">ANExternalUserIdSource (enum)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001ae1__entry__3">ANUserId.Source</td>
</tr>
</tbody>
</table>






