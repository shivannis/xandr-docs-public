---
Title : Impression Counting Methods
Description : The Mobile SDK uses different impression tracking mechanisms for various
Ad formats. These methods apply to Mobile SDK versions 7.0 and earlier.
---


# Impression Counting Methods



The Mobile SDK uses different impression tracking mechanisms for various
Ad formats. These methods apply to Mobile SDK versions 7.0 and earlier.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003eac__entry__1" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003eac__entry__2" class="entry colsep-1 rowsep-1">Counting
Method</th>
<th id="ID-00003eac__entry__3"
class="entry colsep-1 rowsep-1">AdUnits</th>
<th id="ID-00003eac__entry__4" class="entry colsep-1 rowsep-1">How to
enable</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__1">Default</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__2">Impression trackers are fired when
rendered (attached to window)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__3">Banner Ads</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__4">NA</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__1">Default</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__2">Impression trackers are fired when
rendered (attached to window)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__3">Native Ads</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__4">NA</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__1">Feature</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__2">Impression trackers are fired when 1
pixel of the content is loaded</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__3">Banner and Native Ads</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003eac__entry__4">iOS:
<p><code
class="ph codeph">ANSDKSettings.sharedInstance.countImpressionOn1PxRendering = YES</code>;</p>
<p>Android:</p>
<code
class="ph codeph">SDKSettings.setCountImpressionOn1pxRendering(true)</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__1">Feature</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003eac__entry__2">When
lazy load is enabled, impression trackers are fired when content is
loaded in webview </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003eac__entry__3">Banner Ads</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003eac__entry__4"><div
class="note note_note">
Note: For more info on lazy load, visit
<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/lazy-load-for-ios.html"
class="xref" target="_blank">lazy load for iOS</a> and <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/lazy-load-for-android.html"
class="xref" target="_blank">Android</a> page.
</td>
</tr>
</tbody>
</table>

To know more about generic impression counting, please visit <a
href="https://docs.xandr.com/bundle/industry-reference/page/impression-counting.html"
class="xref"
target="_blank">https://docs.xandr.com/bundle/industry-reference/page/impression-counting.html</a>.



Note:

Viewability and impression counting are two different entities.
Impression counting measures if an ad is served whereas viewability
measures a whole lot of analytics like how long the ad was viewed by the
user, what actions the user took, etc. to give better picture for the
advertiser to serve better.  
The definition of impression counting definition has evolved over the
years. Initially an impression was counted when it was rendered on the
page or it was downloaded to the user page. However, it was not
necessary that the ad was viewed though it was downloaded. So even if
the ad was downloaded in the background the impression count was
considered.  
This method of impression counting becomes irrelevant as advertisers
want accurate counts to understand how many ads are actually served the
user which means how many ads are actually downloaded as well as viewed
by the user. This is what viewable impression counts. Viewable
impression counting applies for all managed demand and for certain
bidders like DV 360 who count only viewable impressions.  
The logic applies only for mobile app impressions and not for mobile web
or web pages as these still count when the ad is rendered or downloaded
to the page.






