---
Title : OpenRTB Bid Request Requirements
Description : Xandr supply partners must provide sufficient
auction metadata on <a
href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
---


# OpenRTB Bid Request Requirements



Xandr supply partners must provide sufficient
auction metadata on <a
href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
class="xref" target="_blank">incoming bid requests</a> to ensure that
buyers have the information they need to bid intelligently. This page
documents the OpenRTB fields required and the corresponding volume
thresholds that need to be met. For example, a 95% threshold for the
banner height field indicates that 95% of randomly sampled requests must
contain information about the banner height. Traffic samples must meet
the thresholds for all relevant fields. Inventory that does not meet the
requirements outlined below will be eligible for selling through deals,
but will not be made available on the open exchange.

Currently, we will be determining eligibility for the following formats:

- Web Banner
- Web Video
- Web Audio
- Web Native
- App Banner
- App Video
- App Audio
- App Native

The "web" designation includes both desktop web and mobile web;  "app"
is defined as in-app inventory. Additional thresholds may be added in
the future for other media types such as native or audio.



##  Bid Request Criteria and Thresholds

The sections below outline the OpenRTB bid request fields that are
required for each format. The "Required OpenRTB Field" column represents
the IAB OpenRTB fields that correspond to the "Auction Attribute" in the
first column. In cases where multiple OpenRTB fields are listed for a
given auction attribute, only one of those fields is required. For
example, in order for a request to pass the "Tag ID" criterion for "Web
Banner Criteria", either site.id or imp.tagid needs to be passed.

**Web Banner Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__1" class="entry colsep-1 rowsep-1"> Auction
Attribute</th>
<th id="ID-00000a84__entry__2" class="entry colsep-1 rowsep-1">Required
OpenRTB Field</th>
<th id="ID-00000a84__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__5"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">Height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">imp.banner.h</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the exact height of the banner
in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">Width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">imp.banner.w</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the exact width of the banner
in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__1">User
ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">user.buyeruid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__4">The
Xandr unique ID of this user. If set, this value
will overwrite the <code class="ph codeph">customdata</code> value.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">site.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies an identifier for the specific
ad placement or ad tag that was used to initiate the auction. This is
the Xandr placement code.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">site.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="odd row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">site.domain</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the domain of the site (for
example, <a href="http://publishersite.com/" class="xref"
target="_blank"><code class="ph codeph">publishersite.com</code></a>)
where the impression will be shown. Set as the referrer domain on the
impression if available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%<br />
<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">site.page</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the full URL of the page where
the impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">IP</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">device.ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the IPv4 address closest to
the device. Omitted when sent to buyers if seller visibility settings
prohibit sharing.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="even row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__1">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the model of the device. If
passed, Xandr sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__5">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the user agent string from the
browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the type of device, using IAB
values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__2">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__4">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
</tbody>
</table>

**Web Video Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__59" class="entry colsep-1 rowsep-1"> Auction
Attribute</th>
<th id="ID-00000a84__entry__60" class="entry colsep-1 rowsep-1">Required
OpenRTB Field</th>
<th id="ID-00000a84__entry__61"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__62"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__63"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.h</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the height of the video
player, in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.w</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the width of the video
player, in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Mime Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.mimes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the video content MIME types
supported; for example, <code
class="ph codeph">video/x-ms-wmv</code> and <code
class="ph codeph">video/x-flv</code>. If not specified, any MIME type is
allowed.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__59">API
Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.api</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the supported API frameworks
for this impression. If an API is not explicitly listed, it is assumed
not to be supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">User ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">user.buyeruid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__62">The
Xandr unique ID of this user. If set, this value
will overwrite the <code class="ph codeph">customdata</code> value.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63"></td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">site.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code. </td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">site.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Minimum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.minbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the minimum bit rate, in
kilobytes per second. If specified, only return creatives having at
least one media file within the appropriate bit range.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Maximum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.maxbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the maximum bit rate, in
kilobytes per second. If specified, only return creatives having at
least one media file within the appropriate bit range.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Playback Method</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.playbackmethod</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the allowed playback methods.
If not specified, all are assumed to be allowed. Currently supported
values are:
<ul>
<li><code class="ph codeph">1</code>: Autoplay, sound on</li>
<li><code class="ph codeph">2</code>: Autoplay, sound off</li>
<li><code class="ph codeph">3</code>: Click to play</li>
<li><code class="ph codeph">4</code>: Mouse over to play</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__59">Min
Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.minduration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the maximum video ad
duration, in seconds.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__59">Max
Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.maxduration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the maximum video ad
duration, in seconds.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Start Delay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.startdelay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the start delay of the video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">imp.video.protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Array of supported video bid response
protocols.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">site.domain</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the domain of the site (for
example, <a href="http://publishersite.com/" class="xref"
target="_blank"><code class="ph codeph">publishersite.com</code></a>)
where the impression will be shown. Set as the referrer domain on the
impression if available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%<br />
<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">site.page</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the full URL of the page
where the impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">IP</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">device.ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the IPv4 address closest to
the device. Omitted when sent to buyers if seller visibility settings
prohibit sharing.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="odd row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__59">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the model of the device. If
passed, we will set the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to view the
models registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__63">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the type of device, using IAB
values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__60">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__61">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__62">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
</tbody>
</table>

The following field values in bid requests must be internally
consistent.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__162"
class="entry colsep-1 rowsep-1"> Criteria</th>
<th id="ID-00000a84__entry__163"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__164"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__165"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__162">VPAID1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__163">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__164">If
the imp.video.mimes array contains value "1" for VPAID1, then the
imp.video.mimes array must contain either contain value
"application/x-shockwave-flash" or be empty, in which case all mime
types are assumed to be supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__165">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__162">VPAID2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__163">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__164">If
the imp.video.mimes array contains value "2" for VPAID2, then the
imp.video.mimes array must contain either contain value
"application/x-shockwave-flash", or "application/javascript" or be
empty, in which case all mime types are assumed to be supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__165">95%</td>
</tr>
</tbody>
</table>

**Web Audio Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__174"
class="entry colsep-1 rowsep-1"> Auction Attribute</th>
<th id="ID-00000a84__entry__175"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__176"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__177"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__178"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Mime Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.mimes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the audio content MIME types
supported; for example, <code
class="ph codeph">audio/vnd.wav</code>, <code
class="ph codeph">audio/mpeg</code>, <code
class="ph codeph">audio/mp4</code>, <code
class="ph codeph">audio/ogg</code>, or <code
class="ph codeph">audio/mp2</code>..</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">API Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.api</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the supported API frameworks
for this impression. If an API is not explicitly listed, it is assumed
not to be supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">User ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">user.buyeruid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">The Xandr
unique ID of this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">site.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code. </td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">site.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Minimum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.minbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">The minimum bit rate, in kilobytes per
second.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Maximum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.maxbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">The maximum bit rate, in kilobytes per
second.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Min Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.maxduration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the maximum audio ad
duration, in seconds.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Max Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.maxduration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the maximum audio ad
duration, in seconds.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Start Delay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.startdelay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the start delay of the
video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">imp.audio.protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Array of supported video bid response
protocols.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">site.domain</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the domain of the site (for
example, <a href="http://publishersite.com/" class="xref"
target="_blank"><code class="ph codeph">publishersite.com</code></a>)
where the impression will be shown. Set as the referrer domain on the
impression if available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%<br />
<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">site.page</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the full URL of the page
where the impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">IP</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">device.ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the IPv4 address closest to
the device. Omitted when sent to buyers if seller visibility settings
prohibit sharing.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="even row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__174">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the model of the device. If
passed, we will set the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to view the
models registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__178">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the type of device, using
IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__175">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__176">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__177">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
</tbody>
</table>

**Web Native Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__262"
class="entry colsep-1 rowsep-1"> Auction Attribute</th>
<th id="ID-00000a84__entry__263"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__264"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__265"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__266"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">User ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">user.buyeruid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">The Xandr
unique ID of this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">site.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">site.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="odd row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">site.domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the domain of the site (for
example, <a href="http://publishersite.com/" class="xref"
target="_blank"><code class="ph codeph">publishersite.com</code></a>)
where the impression will be shown. Set as the referrer domain on the
impression if available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%<br />
<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">site.page</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the full URL of the page
where the impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the model of the device. If
passed, Xandr sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the type of device, using
IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">IP</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">device.ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Specifies the IPv4 address closest to
the device. Omitted when sent to buyers if seller visibility settings
prohibit sharing.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Version</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">native.ver</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Version of the Native Markup version
in use.
<p>Xandr currently supports the following native
versions:</p>
<ul>
<li>1.0</li>
<li>1.1</li>
</ul>

Note: Required if using 1.1. If no
version is submitted, then we will default to 1.0.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">native.request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">The rendered creative markup to be
delivered; native creatives can be returned in this field as a
JSON-encoded string.
<p>Native 1.0 Example:</p>
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;native\&quot;:{\&quot;ver\&quot;:\&quot;1.0\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
<p>Native 1.1 Example:</p>

Note: the main difference of the two
versions is the removal of "native" in the request object.
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;ver\&quot;:\&quot;1.1\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Asset ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">native.request.native.assets.id</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">integer</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">Unique asset ID, assigned by exchange.
Typically a counter for the array. Every asset object needs to contain a
unique Asset ID. Use native.request.native.assets.id for Native Version
1.0 and use native.request.assets.id for Native Version 1.1.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">native.request.assets.id</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__262">Title Asset</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__263">native.request.assets.title</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__264">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__265">The Title object is to be used for
title element of the Native ad.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__266">95%</td>
</tr>
</tbody>
</table>

**App Banner Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__332"
class="entry colsep-1 rowsep-1">  Auction Attribute</th>
<th id="ID-00000a84__entry__333" class="entry colsep-1 rowsep-1">OpenRTB
Field</th>
<th id="ID-00000a84__entry__334"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__335"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__336"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">imp.banner.h</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the exact height of the
banner in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">imp.banner.w</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the exact width of the
banner in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Device ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">device.ifa</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">The "identifier for advertising" is an
unhashed device ID sanctioned for advertiser use. This is the <a
href="https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/SubmittingTheApp.html#//apple_ref/doc/uid/TP40011225-CH33-SW8"
class="xref" target="_blank">IDFA</a> on iOS and the <a
href="https://developer.android.com/google/play-services/id.html"
class="xref" target="_blank">AAID</a> on Android.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">app.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code. </td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">app.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">app.domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the domain of the app (for
example, <a href="http://publishersite.com/" class="xref"
target="_blank"><code
class="ph codeph">mygame.publishersite.com</code></a>) where the
impression will be shown. Set as the referrer domain on the impression
if available.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%<br />
<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Bundle ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">app.bundle</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the application bundle or
package name (e.g., <code class="ph codeph">com.foo.mygame</code>). This
is intended to be a unique ID across multiple exchanges.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="odd row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__332">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the model of the device. If
passed, Xandr sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__336">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the type of device, using
IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__333">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__334">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__335">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
</tbody>
</table>

**App Video Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__388"
class="entry colsep-1 rowsep-1"> Auction Attribute</th>
<th id="ID-00000a84__entry__389"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__390"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__391"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__392"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Height</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.h</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the height of the video
player, in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Width</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.w</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the width of the video
player, in pixels.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Mime Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.mimes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the video content MIME types
supported; for example, <code
class="ph codeph">video/x-ms-wmv</code> and <code
class="ph codeph">video/x-flv</code>. If not specified, any MIME type is
allowed.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">API Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.api</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the supported API frameworks
for this impression. If an API is not explicitly listed, it is assumed
not to be supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Device ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">device.ifa</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">The "identifier for advertising" is an
unhashed device ID sanctioned for advertiser use. This will be the <a
href="https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/SubmittingTheApp.html#//apple_ref/doc/uid/TP40011225-CH33-SW8"
class="xref" target="_blank">IDFA</a> on iOS or <a
href="https://developer.android.com/google/play-services/id.html"
class="xref" target="_blank">AAID</a> on Android.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">app.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code. </td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">app.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Minimum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.minbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the minimum bit rate, in
kilobytes per second. If specified, only return creatives having at
least one media file within the appropriate bit range.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Maximum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.maxbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the maximum bit rate, in
kilobytes per second. If specified, only return creatives having at
least one media file within the appropriate bit range.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Playback Method</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.playbackmethod</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the allowed playback
methods. If not specified, all are assumed to be allowed. Currently
supported values are:
<ul>
<li><code class="ph codeph">1</code>: Autoplay, sound on</li>
<li><code class="ph codeph">2</code>: Autoplay, sound off</li>
<li><code class="ph codeph">3</code>: Click to play</li>
<li><code class="ph codeph">4</code>: Mouse over to play</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Max Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.maxduration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the maximum video ad
duration, in seconds.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Start Delay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.startdelay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the start delay of the
video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">imp.video.protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Array of supported video bid response
protocols.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">app.domain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the domain of the app (for
example, <a href="http://publishersite.com/" class="xref"
target="_blank"><code
class="ph codeph">mygame.publishersite.com</code></a><code
class="ph codeph"> </code>) where the impression will be shown. Set as
the referrer domain on the impression if available.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%<br />
<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Bundle ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">app.bundle</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the application bundle or
package name (e.g., <code class="ph codeph">com.foo.mygame</code>). This
is intended to be a unique ID across multiple exchanges.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="odd row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__388">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the model of the device. If
passed, we will set the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the makes
registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__392">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the type of device, using
IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__389">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__390">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__391">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
</tbody>
</table>

The following field values in bid requests must be internally
consistent.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__484"
class="entry colsep-1 rowsep-1"> Criteria</th>
<th id="ID-00000a84__entry__485"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__486"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__487"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__484">VPAID1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__485">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__486">If
the imp.video.mimes array contains value "1" for VPAID1, then the
imp.video.mimes array must contain either contain value
"application/x-shockwave-flash" or be empty, in which case all mime
types are assumed to be supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__487">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__484">VPAID2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__485">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000a84__entry__486">If
the imp.video.mimes array contains value "2" for VPAID2, then the
imp.video.mimes array must contain either contain value
"application/x-shockwave-flash", or "application/javascript" or be
empty, in which case all mime types are assumed to be supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__487">95%</td>
</tr>
</tbody>
</table>

**App Audio Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__496"
class="entry colsep-1 rowsep-1"> Auction Attribute</th>
<th id="ID-00000a84__entry__497"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__498"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__499"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__500"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Mime Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.mimes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the audio content MIME types
supported; for example, <code
class="ph codeph">audio/vnd.wav</code>, <code
class="ph codeph">audio/mpeg</code>, <code
class="ph codeph">audio/mp4</code>, <code
class="ph codeph">audio/ogg</code>, or <code
class="ph codeph">audio/mp2</code>..</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">API Type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.api</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the supported API frameworks
for this impression. If an API is not explicitly listed, it is assumed
not to be supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">User ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">user.buyeruid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">The Xandr
unique ID of this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">app.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code. </td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">app.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Minimum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.minbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">The minimum bit rate, in kilobytes per
second.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Maximum Bitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.maxbitrate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">The maximum bit rate, in kilobytes per
second.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Max Duration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.maxduration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the maximum audio ad
duration, in seconds.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Start Delay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.startdelay</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the start delay of the
video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">imp.audio.protocols</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">array of integers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Array of supported video bid response
protocols.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Bundle ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">app.bundle</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the application bundle or
package name (e.g., <code class="ph codeph">com.foo.mygame</code>). This
is intended to be a unique ID across multiple exchanges.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">IP</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">device.ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the IPv4 address closest to
the device. Omitted when sent to buyers if seller visibility settings
prohibit sharing.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="even row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__496">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the model of the device. If
passed, we will set the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to view the
models registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__500">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the type of device, using
IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__497">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__498">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__499">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
</tbody>
</table>

**App Native Criteria**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a84__entry__577"
class="entry colsep-1 rowsep-1"> Auction Attribute</th>
<th id="ID-00000a84__entry__578"
class="entry colsep-1 rowsep-1">Required OpenRTB Field</th>
<th id="ID-00000a84__entry__579"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000a84__entry__580"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00000a84__entry__581"
class="entry colsep-1 rowsep-1">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">User ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">user.buyeruid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">The Xandr
unique ID of this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Tag ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">app.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies an identifier for the
specific ad placement or ad tag that was used to initiate the auction.
This is the Xandr placement code.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">imp.tagid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Publisher ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">site.publisher.id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the seller's publisher ID,
used to look up a Xandr publisher ID.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Bundle ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">app.bundle</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the application bundle or
package name (e.g., <code class="ph codeph">com.foo.mygame</code>). This
is intended to be a unique ID across multiple exchanges.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="even row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Device Data<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">device.model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the model of the device. If
passed, Xandr sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the Xandr system.</td>
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">device.ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the user agent string from
the browser. User agent often identifies such information as the
application, operating system, and software vendor acting on behalf of
the user, e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">device.devicetype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the type of device, using
IAB values:
<ul>
<li><code class="ph codeph">1</code>: Mobile/Tablet</li>
<li><code class="ph codeph">2</code>: Personal Computer</li>
<li><code class="ph codeph">3</code>: Connected TV</li>
<li><code class="ph codeph">4</code>: Phone</li>
<li><code class="ph codeph">5</code>: Tablet</li>
<li><code class="ph codeph">6</code>: Connected Device</li>
<li><code class="ph codeph">7</code>: Set Top Box</li>
</ul>
<p>Only used if not supported via the <code
class="ph codeph">ua</code> field.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">device.make</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the make of the device. Only
used if the model is not passed in, is not valid, or is not available
via parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the Xandr system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">IP</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">device.ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Specifies the IPv4 address closest to
the device. Omitted when sent to buyers if seller visibility settings
prohibit sharing.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Version</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">native.ver</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Version of the Native Markup version
in use.
<p>Xandr currently supports the following native
versions:</p>
<ul>
<li>1.0</li>
<li>1.1</li>
</ul>

Note: Required if using 1.1. If no
version is submitted, then we will default to 1.0.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">native.request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">The rendered creative markup to be
delivered; native creatives can be returned in this field as a
JSON-encoded string.
<p>Native 1.0 Example:</p>
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;native\&quot;:{\&quot;ver\&quot;:\&quot;1.0\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
<p>Native 1.1 Example:</p>

Note: the main difference of the two
versions is the removal of "native" in the request object.
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;ver\&quot;:\&quot;1.1\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="odd row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Asset ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">native.request.native.assets.id</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">integer</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">Unique asset ID, assigned by exchange.
Typically a counter for the array. Every asset object needs to contain a
unique Asset ID. Use native.request.native.assets.id for Native Version
1.0 and use native.request.assets.id for Native Version 1.1.</td>
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">native.request.assets.id</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__577">Title Asset</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__578">native.request.assets.title</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__579">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__580">The Title object is to be used for
title element of the Native ad.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000a84__entry__581">95%</td>
</tr>
</tbody>
</table>





##  Example Bid Requests

**Web Banner Request**

``` pre
{
    "site": {
        "publisher": {
            "id": "534561625"
        },
        "domain": "publishersite.com",
        "id": "537123178",
        "page": "https://page.publishersite.com/path/to/page"
    },
    "imp": [
        {
            "banner": {
                "h": 250,
                "w": 300
            },
            "id": "7bbab3f3-83db-4b00-a82d-faa69fcbb5c5"
        }
    ],
    "device": {
        "os": "Windows",
        "make": "desktop",
        "dnt": 0,
        "ua": "Mozilla/5.0 (Windows NT 6.0; rv:50.0) Gecko/20100101 Firefox/50.0",
        "devicetype": 2,
        "model": "browser",
        "user": {
            "buyeruid": "8320715123477372344"
        },
        "id": "7bbab3f3-83db-4b00-a82d-faa69fcbb5c5"
    }
}
```

**App Banner Requests**

``` pre
{
    "app": {
        "publisher": {
            "id": "537133097"
        },
        "bundle": "com.publisher.app",
                "domain": "publisher.com",
                "id": "537252150"
    },
    "imp": [
        {
            "banner": {
                "h": 250,
                "w": 300
            },
            "id": "a4d94cdc-3999-4708-9a6d-6ac01f6c07d4"
        }
    ],
    "device": {
        "os": "Android",
        "language": "en",
        "make": "generic",
        "dnt": 0,
        "ua": "Mozilla/5.0 (Linux; Android 4.4.2; GT-I9301I Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36",
        "devicetype": 4,
        "ifa": "ffab2dd1-c6eb-4be9-b88b-1c24e431766d",
        "ip": "5.90.222.251",
        "model": "android phone"
    },
    "id": "a4d94cdc-3999-4708-9a6d-6ac01f6c07d4"
}
```

**Web Video Requests**

``` pre
 {
    "site": {
        "publisher": {
            "id": "74964"
        },
        "domain": "publishersite.com",
        "id": "123456",
        "page": "page.publishersite.com/path"
    },
    "imp": [
        {
            "video": {
                "mimes": [
                    "video/x-flv",
                    "video/mp4",
                    "application/x-shockwave-flash"
                ],
                "api": [
                    1
                ],
                                "minbitrate": 1,
                                "maxbitrate": 2000,
                                "playbackmethod": [2],
                                "maxduration": 30,
                                "startdelay":0,
                                "protocols": [2, 5],
                "h": 360,
                "w": 480
            },
            "id": "1"
        }
    ],
    "device": {
        "language": "en",
        "os": "Windows 10",
        "make": "Google",
        "devicetype": 2,
        "ip": "24.171.153.60",
        "model": "Chrome - Windows",
        "ua": "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36"
    },
    "id": "32683827af9b11e6b43212a6e39f0001",
    "user": {
        "buyeruid": "6415517486677292084"
    }
}
```

**App Video Requests**

``` pre
 {
    "app": {
        "publisher": {
            "id": "1100001685"
        },
        "bundle": "com.publisher.app",
        "domain": "publishersite.com",
        "id": "123456",
        "page": "page.publishersite.com/path"
    },
    "imp": [
        {
            "tagid": "130200094",
            "video": {
                                "mimes": [
                    "video/x-flv",
                    "video/mp4",
                    "application/x-shockwave-flash"
                ],
                "api": [
                    1
                ],
                                "minbitrate": 1,
                                "maxbitrate": 2000,
                                "playbackmethod": [2],
                                "maxduration": 30,
                                "startdelay":0,
                                "protocols": [2, 5],
                "h": 480,
                "w": 320
            }
        }
    ],
    "device": {
        "os": "Android",
        "ua": "Mozilla/5.0 (Linux; Android 6.0.1; SM-N920V Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/54.0.2840.85 Mobile Safari/537.36",
        "make": "Samsung",
        "devicetype": 1,
        "ifa": "C8A53AB8-D371-4955-BFDA-7805FA931E44",
        "model": "SM-N920V"
    },
    "id": "Nr4EZZiP5z"
}
```






