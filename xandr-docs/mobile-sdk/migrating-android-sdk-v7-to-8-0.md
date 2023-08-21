# Migrating Android SDK v7 to 8.0

<div class="body">

Publishers with SDK v8.0, are required to initialize
<span class="ph">Xandr</span> SDK before making an ad request. When
using <span class="ph">Xandr</span> Mobile Ads SDK for Android SDK v8,
the init() method must be called prior to any other SDK
operations. Without this initialization no Ad request would go through
and the SDK would throw an exception. For more information, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/android-sdk-initialization-v8-0.html"
class="xref" target="_blank">Android - SDK Initialization (v8.0)</a>

<div class="section">

## Removed APIs and their alternatives

Some of the APIs listed below has been removed in the
<span class="ph">Xandr</span> SDK v8.0. If the below listed APIs are
being used, we request the APIs to be migrated to their equivalent or
alternative APIs.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d17249e68" class="entry cellborder"
style="vertical-align: top">Class</th>
<th id="d17249e71" class="entry cellborder"
style="vertical-align: top">Removed API</th>
<th id="d17249e74" class="entry cellborder"
style="vertical-align: top">Alternate API</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d17249e68 ">ANNativeAdResponse</td>
<td class="entry cellborder"
headers="d17249e71 ">isOpenNativeBrowser()</td>
<td class="entry cellborder"
headers="d17249e74 ">getClickThroughAction()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">openNativeBrowser(boolean openNativeBrowser)</td>
<td class="entry cellborder"
headers="d17249e74 ">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd ">
<td rowspan="5" class="entry cellborder"
headers="d17249e68 ">VideoAd</td>
<td class="entry cellborder"
headers="d17249e71 ">getOpensNativeBrowser()</td>
<td class="entry cellborder"
headers="d17249e74 ">getClickThroughAction()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry cellborder"
headers="d17249e74 ">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setExternalUid(String externalUid)</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getExternalUid()</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getCreativeId()</td>
<td class="entry cellborder"
headers="d17249e74 ">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d17249e68 ">ANMultiAdRequest</td>
<td class="entry cellborder"
headers="d17249e71 ">getExternalUid()</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setExternalUid(String externalUid)</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="even ">
<td rowspan="10" class="entry cellborder"
headers="d17249e68 ">BannerAdView</td>
<td class="entry cellborder"
headers="d17249e71 ">loadAdOffscreen()</td>
<td class="entry cellborder"
headers="d17249e74 ">loadAd()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getOpensNativeBrowser()</td>
<td class="entry cellborder"
headers="d17249e74 ">getClickThroughAction()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry cellborder"
headers="d17249e74 ">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setExternalUid(String externalUid)</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getExternalUid()</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getCreativeId()</td>
<td class="entry cellborder"
headers="d17249e74 ">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getAdType()</td>
<td class="entry cellborder"
headers="d17249e74 ">ANAdResponseInfo.getAdType()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setAllowNativeDemand(boolean enabled, int
rendererId)</td>
<td class="entry cellborder"
headers="d17249e74 ">setAllowNativeDemand(boolean)
<p>setRendererId(int rendererId)</p></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setCountImpressionOnAdLoad(boolean enabled)</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getCountImpressionOnAdLoad()</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="even ">
<td rowspan="7" class="entry cellborder"
headers="d17249e68 ">InterstitialAdView</td>
<td class="entry cellborder"
headers="d17249e71 ">loadAdOffscreen()</td>
<td class="entry cellborder"
headers="d17249e74 ">loadAd()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getOpensNativeBrowser()</td>
<td class="entry cellborder"
headers="d17249e74 ">getClickThroughAction()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry cellborder"
headers="d17249e74 ">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setExternalUid(String externalUid)</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getExternalUid()</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getCreativeId()</td>
<td class="entry cellborder"
headers="d17249e74 ">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getAdType()</td>
<td class="entry cellborder"
headers="d17249e74 ">ANAdResponseInfo.getAdType()</td>
</tr>
<tr class="odd ">
<td rowspan="4" class="entry cellborder"
headers="d17249e68 ">NativeAdRequest</td>
<td class="entry cellborder"
headers="d17249e71 ">getOpensNativeBrowser()</td>
<td class="entry cellborder"
headers="d17249e74 ">getClickThroughAction()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setOpensNativeBrowser(boolean
opensNativeBrowser)</td>
<td class="entry cellborder"
headers="d17249e74 ">setClickThroughAction(ANClickThroughAction
clickThroughAction)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setExternalUid(String externalUid)</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.setPublisherUserId(String
publisherUserId)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getExternalUid()</td>
<td class="entry cellborder"
headers="d17249e74 ">SDKSettings.getPublisherUserId()</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e68 ">NativeAdResponse</td>
<td class="entry cellborder"
headers="d17249e71 ">getCreativeId()</td>
<td class="entry cellborder"
headers="d17249e74 ">ANAdResponseInfo.getCreativeId()</td>
</tr>
<tr class="even ">
<td rowspan="7" class="entry cellborder"
headers="d17249e68 ">SDKSettings</td>
<td class="entry cellborder"
headers="d17249e71 ">useHttps(boolean useHttps)</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A. HTTPS is used by default.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">isHttpsEnabled()</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setExternalUserIds(Map&lt;ANExternalUserIdSource,String&gt;
externalUserIds)</td>
<td class="entry cellborder"
headers="d17249e74 ">setUserIds(List&lt;ANUserId&gt; userIdList)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">getExternalUserIds()</td>
<td class="entry cellborder"
headers="d17249e74 ">getUserIds()</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">setAllowUsingSimpleDomain(boolean allow)</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e71 ">setCountImpressionOn1pxRendering(boolean
enable)</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e71 ">getCountImpressionOn1pxRendering()</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d17249e68 ">Clog</td>
<td class="entry cellborder"
headers="d17249e71 ">clogged (Variable)</td>
<td class="entry cellborder"
headers="d17249e74 ">N/A</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d17249e68 ">ANExternalUserIdSource (enum)</td>
<td class="entry cellborder"
headers="d17249e71 "> </td>
<td class="entry cellborder"
headers="d17249e74 ">ANUserId.Source</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk.html" class="link">Android SDK</a>

</div>

</div>

</div>
