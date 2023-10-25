---
Title : Android SDK Ad Units
Description : This section describes how to implement the various ad units available
within the Android SDK.
---


# Android SDK Ad Units



This section describes how to implement the various ad units available
within the Android SDK.



## Android Ad Units



Important: Native impression counting
methodology follows the count-on-render methodology that is used for
banner creatives - an impression will fire as soon as the native
advertisement renders, regardless of its length of time on the
screen. This will ensure greater accuracy and better deliverability,
thus improving overall yield.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000627__entry__1" class="entry">AdUnits</th>
<th id="ID-00000627__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banners-on-android.html"
class="xref" target="_blank">Banner Ads</a></td>
<td class="entry" headers="ID-00000627__entry__2">Enables the display of
a banner ad.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banner-native-on-android.html"
class="xref" target="_blank">Banner Native</a></td>
<td class="entry" headers="ID-00000627__entry__2">Enables the
configuration of a banner ad to return native demand.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-high-impact-media-type-on-android.html"
class="xref" target="_blank">High Impact Media</a></td>
<td class="entry" headers="ID-00000627__entry__2">Enables the display of
high impact media as banner ad.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-instream-video-ads-on-android.html"
class="xref" target="_blank">Instream Video</a></td>
<td class="entry" headers="ID-00000627__entry__2">Enables the display of
in-stream video ads.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-on-android.html"
class="xref" target="_blank">Interstitials Ads</a></td>
<td class="entry" headers="ID-00000627__entry__2">Enables the display of
an interstitial ad, an interactive, full-screen ad that covers the
interface of the app.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-multi-format-banner-ads-on-android.html"
class="xref" target="_blank">Multiformat Banner Ads</a></td>
<td class="entry" headers="ID-00000627__entry__2">Multi-Format Banner
Ads supports serving multiple creative formats (RTB VAST out-stream
videos and regular banner ads) through a single banner entry point.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000627__entry__1"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-native-ads-on-android.html"
class="xref" target="_blank">Native Ads</a></td>
<td class="entry" headers="ID-00000627__entry__2">Enables the return of
native ad demand. Native advertising is the use of ads that match the
look, feel and function of the media format in which they appear.</td>
</tr>
</tbody>
</table>





## Interfaces

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000627__entry__17" class="entry">Interfaces</th>
<th id="ID-00000627__entry__18" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000627__entry__17"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/publisher-id-for-android.html"
class="xref" target="_blank">Publisher Id</a></td>
<td class="entry" headers="ID-00000627__entry__18">Provides publishers
with options to what action should occur when an ad request fails at the
placement level.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000627__entry__17"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/native-assembly-renderer-for-android.html"
class="xref" target="_blank">Native Assembly Renderer</a></td>
<td class="entry" headers="ID-00000627__entry__18">The native assembly
renderer simplifies the use of Banner Native so that it behaves like
Banner.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000627__entry__17"><a
href="https://docs.xandr.com/bundle/mobile-sdk/page/multi-ad-request-for-android.html"
class="xref" target="_blank">Multi Ad Request</a></td>
<td class="entry" headers="ID-00000627__entry__18">ANMultiAdRequest
enables the user to use a single universal tag (UTv3) request to
initiate multiple auctions.</td>
</tr>
</tbody>
</table>






