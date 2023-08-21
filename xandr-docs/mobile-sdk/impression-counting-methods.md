# Impression Counting Methods

<div class="body">

The Mobile SDK uses different impression tracking mechanisms for various
Ad formats. These methods apply to Mobile SDK versions 7.0 and earlier.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d9028e46" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d9028e49" class="entry cellborder"
style="vertical-align: top">Counting Method</th>
<th id="d9028e52" class="entry cellborder"
style="vertical-align: top">AdUnits</th>
<th id="d9028e55" class="entry cellborder"
style="vertical-align: top">How to enable</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d9028e46 ">Default</td>
<td class="entry cellborder"
headers="d9028e49 ">Impression trackers are fired when rendered
(attached to window)</td>
<td class="entry cellborder"
headers="d9028e52 ">Banner Ads</td>
<td class="entry cellborder"
headers="d9028e55 ">NA</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d9028e46 ">Default</td>
<td class="entry cellborder"
headers="d9028e49 ">Impression trackers are fired when rendered
(attached to window)</td>
<td class="entry cellborder"
headers="d9028e52 ">Native Ads</td>
<td class="entry cellborder"
headers="d9028e55 ">NA</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d9028e46 ">Feature</td>
<td class="entry cellborder"
headers="d9028e49 ">Impression trackers are fired when 1 pixel of the
content is loaded</td>
<td class="entry cellborder"
headers="d9028e52 ">Banner and Native Ads</td>
<td class="entry cellborder"
headers="d9028e55 ">iOS:
<p><code
class="ph codeph">ANSDKSettings.sharedInstance.countImpressionOn1PxRendering = YES</code>;</p>
<p>Android:</p>
<code
class="ph codeph">SDKSettings.setCountImpressionOn1pxRendering(true)</code></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d9028e46 ">Feature</td>
<td class="entry cellborder"
headers="d9028e49 ">When lazy load is enabled, impression trackers are
fired when content is loaded in webview </td>
<td class="entry cellborder"
headers="d9028e52 ">Banner Ads</td>
<td class="entry cellborder"
headers="d9028e55 "><div class="note">
<span class="notetitle">Note:</span> For more info on lazy load, visit
<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/lazy-load-for-ios.html"
class="xref" target="_blank">lazy load for iOS</a> and <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/lazy-load-for-android.html"
class="xref" target="_blank">Android</a> page.
</div></td>
</tr>
</tbody>
</table>

</div>

To know more about generic impression counting, please visit <a
href="https://docs.xandr.com/bundle/industry-reference/page/impression-counting.html"
class="xref"
target="_blank">https://docs.xandr.com/bundle/industry-reference/page/impression-counting.html</a>.

<div class="note">

<span class="notetitle">Note:</span>

Viewability and impression counting are two different entities.
Impression counting measures if an ad is served whereas viewability
measures a whole lot of analytics like how long the ad was viewed by the
user, what actions the user took, etc. to give better picture for the
advertiser to serve better.  The definition of impression counting
definition has evolved over the years. Initially an impression was
counted when it was rendered on the page or it was downloaded to the
user page. However, it was not necessary that the ad was viewed though
it was downloaded. So even if the ad was downloaded in the background
the impression count was considered.  This method of impression counting
becomes irrelevant as advertisers want accurate counts to understand how
many ads are actually served the user which means how many ads are
actually downloaded as well as viewed by the user. This is what viewable
impression counts. Viewable impression counting applies for all managed
demand and for certain bidders like DV 360 who count only viewable
impressions.  The logic applies only for mobile app impressions and not
for mobile web or web pages as these still count when the ad is rendered
or downloaded to the page.

</div>

</div>
