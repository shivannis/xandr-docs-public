# Android SDK Ad Units

<div class="body">

This section describes how to implement the various ad units available
within the Android SDK.

<div class="section">

## Android Ad Units

<div class="note important">

<span class="importanttitle">Important:</span> Native impression
counting methodology follows the count-on-render methodology that is
used for banner creatives - an impression will fire as soon as the
native advertisement renders, regardless of its length of time on the
screen. This will ensure greater accuracy and better deliverability,
thus improving overall yield.

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d2251e61" class="entry nocellnoborder"
style="vertical-align: top">AdUnits</th>
<th id="d2251e64" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banners-on-android.html"
class="xref" target="_blank">Banner Ads</a></td>
<td class="entry cell-noborder"
headers="d2251e64 ">Enables the display of a banner ad.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banner-native-on-android.html"
class="xref" target="_blank">Banner Native</a></td>
<td class="entry cell-noborder"
headers="d2251e64 ">Enables the configuration of a banner ad to return
native demand.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-high-impact-media-type-on-android.html"
class="xref" target="_blank">High Impact Media</a></td>
<td class="entry cell-noborder"
headers="d2251e64 ">Enables the display of high impact media as banner
ad.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-instream-video-ads-on-android.html"
class="xref" target="_blank">Instream Video</a></td>
<td class="entry cell-noborder"
headers="d2251e64 ">Enables the display of in-stream video ads.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-on-android.html"
class="xref" target="_blank">Interstitials Ads</a></td>
<td class="entry cell-noborder"
headers="d2251e64 ">Enables the display of an interstitial ad, an
interactive, full-screen ad that covers the interface of the app.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-multi-format-banner-ads-on-android.html"
class="xref" target="_blank">Multiformat Banner Ads</a></td>
<td class="entry cell-noborder"
headers="d2251e64 ">Multi-Format Banner Ads supports serving multiple
creative formats (RTB VAST out-stream videos and regular banner ads)
through a single banner entry point.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d2251e61 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-native-ads-on-android.html"
class="xref" target="_blank">Native Ads</a></td>
<td class="entry cellborder"
headers="d2251e64 ">Enables the return of native ad demand. Native
advertising is the use of ads that match the look, feel and function of
the media format in which they appear.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Interfaces

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d2251e170" class="entry nocellnoborder"
style="vertical-align: top">Interfaces</th>
<th id="d2251e173" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d2251e170 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/publisher-id-for-android.html"
class="xref" target="_blank">Publisher Id</a></td>
<td class="entry cell-noborder"
headers="d2251e173 ">Provides publishers with options to what action
should occur when an ad request fails at the placement level.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d2251e170 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/native-assembly-renderer-for-android.html"
class="xref" target="_blank">Native Assembly Renderer</a></td>
<td class="entry cell-noborder"
headers="d2251e173 ">The native assembly renderer simplifies the use of
Banner Native so that it behaves like Banner.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d2251e170 "><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/multi-ad-request-for-android.html"
class="xref" target="_blank">Multi Ad Request</a></td>
<td class="entry cellborder"
headers="d2251e173 ">ANMultiAdRequest enables the user to use a single
universal tag (UTv3) request to initiate multiple auctions.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

- **[Show Banners on Android](show-banners-on-android.html)**  
- **[Show Banner Native on
  Android](show-banner-native-on-android.html)**  
- **[Show High Impact Media Type on
  Android](show-high-impact-media-type-on-android.html)**  
- **[Show Instream Video Ads on
  Android](show-instream-video-ads-on-android.html)**  
- **[Show Interstitials on
  Android](show-interstitials-on-android.html)**  
- **[Show Multi-Format Banner Ads on
  Android](show-multi-format-banner-ads-on-android.html)**  
- **[Show Native Ads on Android](show-native-ads-on-android.html)**  
- **[Publisher ID for Android](publisher-id-for-android.html)**  
- **[Ad Response Info Class for
  Android](ad-response-info-class-for-android.html)**  
- **[Multi Ad Request for
  Android](multi-ad-request-for-android.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk.html" class="link">Android SDK</a>

</div>

</div>

</div>
