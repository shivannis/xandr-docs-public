# OpenRTB Bid Request Requirements

<div class="body">

<span class="ph">Xandr</span> supply partners must provide sufficient
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

<div class="section">

##   Bid Request Criteria and Thresholds

The sections below outline the OpenRTB bid request fields that are
required for each format. The "Required OpenRTB Field" column represents
the IAB OpenRTB fields that correspond to the "Auction Attribute" in the
first column. In cases where multiple OpenRTB fields are listed for a
given auction attribute, only one of those fields is required. For
example, in order for a request to pass the "Tag ID" criterion for "Web
Banner Criteria", either site.id or imp.tagid needs to be passed.

**Web Banner Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e103" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e106" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e109" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e112" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e115" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e103 ">Height</td>
<td class="entry cellborder"
headers="d33911e106 ">imp.banner.h</td>
<td class="entry cellborder"
headers="d33911e109 ">integer</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the exact height of the banner in
pixels.</td>
<td class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e103 ">Width</td>
<td class="entry cellborder"
headers="d33911e106 ">imp.banner.w</td>
<td class="entry cellborder"
headers="d33911e109 ">integer</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the exact width of the banner in
pixels.</td>
<td class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e103 ">User ID</td>
<td class="entry cellborder"
headers="d33911e106 ">user.buyeruid</td>
<td class="entry cellborder"
headers="d33911e109 ">integer</td>
<td class="entry cellborder"
headers="d33911e112 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e103 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e106 ">site.id</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e112 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e106 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e103 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e106 ">site.publisher.id</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d33911e103 ">Domain</td>
<td class="entry cellborder"
headers="d33911e106 ">site.domain</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the domain of the site (for example, <a
href="http://publishersite.com/" class="xref" target="_blank"><code
class="ph codeph">publishersite.com</code></a>) where the impression
will be shown. Set as the referrer domain on the impression if
available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e115 ">95%  </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e106 ">site.page</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the full URL of the page where the
impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e103 ">IP</td>
<td class="entry cellborder"
headers="d33911e106 ">device.ip</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
<td class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="4" class="entry cellborder"
headers="d33911e103 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e106 ">device.model</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the model of the device. If passed,
<span class="ph">Xandr</span> sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e115 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e106 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e106 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the type of device, using IAB values:
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
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e106 ">device.make</td>
<td class="entry cellborder"
headers="d33911e109 ">string</td>
<td class="entry cellborder"
headers="d33911e112 ">Specifies the make of the device. Only used if the
model is not passed in, is not valid, or is not available via parsing
the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
</tbody>
</table>

</div>

**Web Video Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e450" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e453" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e456" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e459" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e462" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">Height</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.h</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the height of the video player, in
pixels.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">Width</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.w</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the width of the video player, in
pixels.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">Mime Type</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.mimes</td>
<td class="entry cellborder"
headers="d33911e456 ">array of strings</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the video content MIME types supported;
for example, <code class="ph codeph">video/x-ms-wmv</code> and <code
class="ph codeph">video/x-flv</code>. If not specified, any MIME type is
allowed.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">API Type</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.api</td>
<td class="entry cellborder"
headers="d33911e456 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the supported API frameworks for this
impression. If an API is not explicitly listed, it is assumed not to be
supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">User ID</td>
<td class="entry cellborder"
headers="d33911e453 ">user.buyeruid</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry cellborder"
headers="d33911e462 "> </td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e450 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e453 ">site.id</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e459 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code. </td>
<td rowspan="2" class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e453 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e453 ">site.publisher.id</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">Minimum Bitrate</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.minbitrate</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the minimum bit rate, in kilobytes per
second. If specified, only return creatives having at least one media
file within the appropriate bit range.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">Maximum Bitrate</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.maxbitrate</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the maximum bit rate, in kilobytes per
second. If specified, only return creatives having at least one media
file within the appropriate bit range.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">Playback Method</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.playbackmethod</td>
<td class="entry cellborder"
headers="d33911e456 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the allowed playback methods. If not
specified, all are assumed to be allowed. Currently supported values
are:
<ul>
<li><code class="ph codeph">1</code>: Autoplay, sound on</li>
<li><code class="ph codeph">2</code>: Autoplay, sound off</li>
<li><code class="ph codeph">3</code>: Click to play</li>
<li><code class="ph codeph">4</code>: Mouse over to play</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">Min Duration</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.minduration</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the maximum video ad duration, in
seconds.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">Max Duration</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.maxduration</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the maximum video ad duration, in
seconds.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">Start Delay</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.startdelay</td>
<td class="entry cellborder"
headers="d33911e456 ">integer</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the start delay of the video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e450 ">Protocols</td>
<td class="entry cellborder"
headers="d33911e453 ">imp.video.protocols</td>
<td class="entry cellborder"
headers="d33911e456 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e459 ">Array of supported video bid response
protocols.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e450 ">Domain</td>
<td class="entry cellborder"
headers="d33911e453 ">site.domain</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the domain of the site (for example, <a
href="http://publishersite.com/" class="xref" target="_blank"><code
class="ph codeph">publishersite.com</code></a>) where the impression
will be shown. Set as the referrer domain on the impression if
available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e462 ">95%  </td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e453 ">site.page</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the full URL of the page where the
impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e450 ">IP</td>
<td class="entry cellborder"
headers="d33911e453 ">device.ip</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
<td class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="4" class="entry cellborder"
headers="d33911e450 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e453 ">device.model</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the model of the device. If passed, we
will set the device <code class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to view the
models registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e462 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e453 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e453 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the type of device, using IAB values:
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
<tr class="even ">
<td class="entry cellborder"
headers="d33911e453 ">device.make</td>
<td class="entry cellborder"
headers="d33911e456 ">string</td>
<td class="entry cellborder"
headers="d33911e459 ">Specifies the make of the device. Only used if the
model is not passed in, is not valid, or is not available via parsing
the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
</tbody>
</table>

</div>

The following field values in bid requests must be internally
consistent.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e1029" class="entry cellborder"
style="vertical-align: top"> Criteria</th>
<th id="d33911e1032" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e1035" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e1038" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1029 ">VPAID1</td>
<td class="entry cellborder"
headers="d33911e1032 ">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry cellborder"
headers="d33911e1035 ">If the imp.video.mimes array contains value "1"
for VPAID1, then the imp.video.mimes array must contain either contain
value "application/x-shockwave-flash" or be empty, in which case all
mime types are assumed to be supported</td>
<td class="entry cellborder"
headers="d33911e1038 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1029 ">VPAID2</td>
<td class="entry cellborder"
headers="d33911e1032 ">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry cellborder"
headers="d33911e1035 ">If the imp.video.mimes array contains value "2"
for VPAID2, then the imp.video.mimes array must contain either contain
value "application/x-shockwave-flash", or "application/javascript" or be
empty, in which case all mime types are assumed to be supported</td>
<td class="entry cellborder"
headers="d33911e1038 ">95%</td>
</tr>
</tbody>
</table>

</div>

**Web Audio Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e1104" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e1107" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e1110" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e1113" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e1116" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1104 ">Mime Type</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.mimes</td>
<td class="entry cellborder"
headers="d33911e1110 ">array of strings</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the audio content MIME types supported;
for example, <code class="ph codeph">audio/vnd.wav</code>, <code
class="ph codeph">audio/mpeg</code>, <code
class="ph codeph">audio/mp4</code>, <code
class="ph codeph">audio/ogg</code>, or <code
class="ph codeph">audio/mp2</code>..</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1104 ">API Type</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.api</td>
<td class="entry cellborder"
headers="d33911e1110 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the supported API frameworks for this
impression. If an API is not explicitly listed, it is assumed not to be
supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1104 ">User ID</td>
<td class="entry cellborder"
headers="d33911e1107 ">user.buyeruid</td>
<td class="entry cellborder"
headers="d33911e1110 ">integer</td>
<td class="entry cellborder"
headers="d33911e1113 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e1104 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e1107 ">site.id</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1113 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code. </td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1107 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1104 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e1107 ">site.publisher.id</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1104 ">Minimum Bitrate</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.minbitrate</td>
<td class="entry cellborder"
headers="d33911e1110 ">integer</td>
<td class="entry cellborder"
headers="d33911e1113 ">The minimum bit rate, in kilobytes per
second.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1104 ">Maximum Bitrate</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.maxbitrate</td>
<td class="entry cellborder"
headers="d33911e1110 ">integer</td>
<td class="entry cellborder"
headers="d33911e1113 ">The maximum bit rate, in kilobytes per
second.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1104 ">Min Duration</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.maxduration</td>
<td class="entry cellborder"
headers="d33911e1110 ">integer</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the maximum audio ad duration, in
seconds.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1104 ">Max Duration</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.maxduration</td>
<td class="entry cellborder"
headers="d33911e1110 ">integer</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the maximum audio ad duration, in
seconds.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1104 ">Start Delay</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.startdelay</td>
<td class="entry cellborder"
headers="d33911e1110 ">integer</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the start delay of the video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1104 ">Protocols</td>
<td class="entry cellborder"
headers="d33911e1107 ">imp.audio.protocols</td>
<td class="entry cellborder"
headers="d33911e1110 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e1113 ">Array of supported video bid response
protocols.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d33911e1104 ">Domain</td>
<td class="entry cellborder"
headers="d33911e1107 ">site.domain</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the domain of the site (for example, <a
href="http://publishersite.com/" class="xref" target="_blank"><code
class="ph codeph">publishersite.com</code></a>) where the impression
will be shown. Set as the referrer domain on the impression if
available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1116 ">95%  </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1107 ">site.page</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the full URL of the page where the
impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1104 ">IP</td>
<td class="entry cellborder"
headers="d33911e1107 ">device.ip</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
<td class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="4" class="entry cellborder"
headers="d33911e1104 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e1107 ">device.model</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the model of the device. If passed, we
will set the device <code class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to view the
models registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e1116 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1107 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1107 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the type of device, using IAB values:
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
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1107 ">device.make</td>
<td class="entry cellborder"
headers="d33911e1110 ">string</td>
<td class="entry cellborder"
headers="d33911e1113 ">Specifies the make of the device. Only used if
the model is not passed in, is not valid, or is not available via
parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
</tbody>
</table>

</div>

**Web Native Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e1622" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e1625" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e1628" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e1631" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e1634" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1622 ">User ID</td>
<td class="entry cellborder"
headers="d33911e1625 ">user.buyeruid</td>
<td class="entry cellborder"
headers="d33911e1628 ">integer</td>
<td class="entry cellborder"
headers="d33911e1631 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e1622 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e1625 ">site.id</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1631 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1625 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1622 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e1625 ">site.publisher.id</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d33911e1622 ">Domain</td>
<td class="entry cellborder"
headers="d33911e1625 ">site.domain</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the domain of the site (for example, <a
href="http://publishersite.com/" class="xref" target="_blank"><code
class="ph codeph">publishersite.com</code></a>) where the impression
will be shown. Set as the referrer domain on the impression if
available, or extracted from the <code
class="ph codeph">page</code> field.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1634 ">95%  </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1625 ">site.page</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the full URL of the page where the
impression will be shown (for example, <a
href="http://page.publishersite.com/path/to/page" class="xref"
target="_blank"><code
class="ph codeph">page.publishersite.com/path/to/page</code></a>). This
should be the referrer URL and is preferred over the <code
class="ph codeph">domain</code> field.</td>
</tr>
<tr class="odd ">
<td rowspan="4" class="entry cellborder"
headers="d33911e1622 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e1625 ">device.model</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the model of the device. If passed,
<span class="ph">Xandr</span> sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1625 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1625 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the type of device, using IAB values:
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
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1625 ">device.make</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the make of the device. Only used if
the model is not passed in, is not valid, or is not available via
parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1622 ">IP</td>
<td class="entry cellborder"
headers="d33911e1625 ">device.ip</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
<td class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1622 ">Version</td>
<td class="entry cellborder"
headers="d33911e1625 ">native.ver</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">Version of the Native Markup version in use.
<p><span class="ph">Xandr</span> currently supports the following native
versions:</p>
<ul>
<li>1.0</li>
<li>1.1</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> Required if using 1.1. If no
version is submitted, then we will default to 1.0.
</div></td>
<td class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1622 ">Request</td>
<td class="entry cellborder"
headers="d33911e1625 ">native.request</td>
<td class="entry cellborder"
headers="d33911e1628 ">string</td>
<td class="entry cellborder"
headers="d33911e1631 ">The rendered creative markup to be delivered;
native creatives can be returned in this field as a JSON-encoded string.
<p>Native 1.0 Example:</p>
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;native\&quot;:{\&quot;ver\&quot;:\&quot;1.0\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
<p>Native 1.1 Example:</p>
<div class="note">
<span class="notetitle">Note:</span> the main difference of the two
versions is the removal of "native" in the request object.
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;ver\&quot;:\&quot;1.1\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
</div></td>
<td class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e1622 ">Asset ID</td>
<td class="entry cellborder"
headers="d33911e1625 ">native.request.native.assets.id</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1628 ">integer</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1631 ">Unique asset ID, assigned by exchange. Typically
a counter for the array. Every asset object needs to contain a unique
Asset ID. Use native.request.native.assets.id for Native Version 1.0 and
use native.request.assets.id for Native Version 1.1.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e1625 ">native.request.assets.id</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e1622 ">Title Asset</td>
<td class="entry cellborder"
headers="d33911e1625 ">native.request.assets.title</td>
<td class="entry cellborder"
headers="d33911e1628 ">object</td>
<td class="entry cellborder"
headers="d33911e1631 ">The Title object is to be used for title element
of the Native ad.</td>
<td class="entry cellborder"
headers="d33911e1634 ">95%</td>
</tr>
</tbody>
</table>

</div>

**App Banner Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e2038" class="entry cellborder"
style="vertical-align: top">  Auction Attribute</th>
<th id="d33911e2041" class="entry cellborder"
style="vertical-align: top">OpenRTB Field</th>
<th id="d33911e2044" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e2047" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e2050" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2038 ">Height</td>
<td class="entry cellborder"
headers="d33911e2041 ">imp.banner.h</td>
<td class="entry cellborder"
headers="d33911e2044 ">integer</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the exact height of the banner in
pixels.</td>
<td class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2038 ">Width</td>
<td class="entry cellborder"
headers="d33911e2041 ">imp.banner.w</td>
<td class="entry cellborder"
headers="d33911e2044 ">integer</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the exact width of the banner in
pixels.</td>
<td class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2038 ">Device ID</td>
<td class="entry cellborder"
headers="d33911e2041 ">device.ifa</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">The "identifier for advertising" is an unhashed
device ID sanctioned for advertiser use. This is the <a
href="https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/SubmittingTheApp.html#//apple_ref/doc/uid/TP40011225-CH33-SW8"
class="xref" target="_blank">IDFA</a> on iOS and the <a
href="https://developer.android.com/google/play-services/id.html"
class="xref" target="_blank">AAID</a> on Android.</td>
<td class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e2038 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e2041 ">app.id</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e2047 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code. </td>
<td rowspan="2" class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2041 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2038 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e2041 ">app.publisher.id</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2038 ">Domain</td>
<td class="entry cellborder"
headers="d33911e2041 ">app.domain</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the domain of the app (for example, <a
href="http://publishersite.com/" class="xref" target="_blank"><code
class="ph codeph">mygame.publishersite.com</code></a>) where the
impression will be shown. Set as the referrer domain on the impression
if available.</td>
<td class="entry cellborder"
headers="d33911e2050 ">95%  </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2038 ">Bundle ID</td>
<td class="entry cellborder"
headers="d33911e2041 ">app.bundle</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the application bundle or package name
(e.g., <code class="ph codeph">com.foo.mygame</code>). This is intended
to be a unique ID across multiple exchanges.</td>
<td class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="4" class="entry cellborder"
headers="d33911e2038 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e2041 ">device.model</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the model of the device. If passed,
<span class="ph">Xandr</span> sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e2050 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2041 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2041 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the type of device, using IAB values:
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
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2041 ">device.make</td>
<td class="entry cellborder"
headers="d33911e2044 ">string</td>
<td class="entry cellborder"
headers="d33911e2047 ">Specifies the make of the device. Only used if
the model is not passed in, is not valid, or is not available via
parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
</tbody>
</table>

</div>

**App Video Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e2370" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e2373" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e2376" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e2379" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e2382" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Height</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.h</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the height of the video player, in
pixels.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">Width</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.w</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the width of the video player, in
pixels.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Mime Type</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.mimes</td>
<td class="entry cellborder"
headers="d33911e2376 ">array of strings</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the video content MIME types supported;
for example, <code class="ph codeph">video/x-ms-wmv</code> and <code
class="ph codeph">video/x-flv</code>. If not specified, any MIME type is
allowed.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">API Type</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.api</td>
<td class="entry cellborder"
headers="d33911e2376 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the supported API frameworks for this
impression. If an API is not explicitly listed, it is assumed not to be
supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Device ID</td>
<td class="entry cellborder"
headers="d33911e2373 ">device.ifa</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">The "identifier for advertising" is an unhashed
device ID sanctioned for advertiser use. This will be the <a
href="https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/SubmittingTheApp.html#//apple_ref/doc/uid/TP40011225-CH33-SW8"
class="xref" target="_blank">IDFA</a> on iOS or <a
href="https://developer.android.com/google/play-services/id.html"
class="xref" target="_blank">AAID</a> on Android.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e2370 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e2373 ">app.id</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e2379 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code. </td>
<td rowspan="2" class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2373 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e2373 ">app.publisher.id</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Minimum Bitrate</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.minbitrate</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the minimum bit rate, in kilobytes per
second. If specified, only return creatives having at least one media
file within the appropriate bit range.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">Maximum Bitrate</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.maxbitrate</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the maximum bit rate, in kilobytes per
second. If specified, only return creatives having at least one media
file within the appropriate bit range.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Playback Method</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.playbackmethod</td>
<td class="entry cellborder"
headers="d33911e2376 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the allowed playback methods. If not
specified, all are assumed to be allowed. Currently supported values
are:
<ul>
<li><code class="ph codeph">1</code>: Autoplay, sound on</li>
<li><code class="ph codeph">2</code>: Autoplay, sound off</li>
<li><code class="ph codeph">3</code>: Click to play</li>
<li><code class="ph codeph">4</code>: Mouse over to play</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">Max Duration</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.maxduration</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the maximum video ad duration, in
seconds.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Start Delay</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.startdelay</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the start delay of the video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">Protocols</td>
<td class="entry cellborder"
headers="d33911e2373 ">imp.video.protocols</td>
<td class="entry cellborder"
headers="d33911e2376 ">integer</td>
<td class="entry cellborder"
headers="d33911e2379 ">Array of supported video bid response
protocols.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2370 ">Domain</td>
<td class="entry cellborder"
headers="d33911e2373 ">app.domain</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the domain of the app (for example, <a
href="http://publishersite.com/" class="xref" target="_blank"><code
class="ph codeph">mygame.publishersite.com</code></a><code
class="ph codeph"> </code>) where the impression will be shown. Set as
the referrer domain on the impression if available.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%  </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2370 ">Bundle ID</td>
<td class="entry cellborder"
headers="d33911e2373 ">app.bundle</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the application bundle or package name
(e.g., <code class="ph codeph">com.foo.mygame</code>). This is intended
to be a unique ID across multiple exchanges.</td>
<td class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="4" class="entry cellborder"
headers="d33911e2370 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e2373 ">device.model</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the model of the device. If passed, we
will set the device <code class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e2382 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2373 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2373 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the type of device, using IAB values:
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
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2373 ">device.make</td>
<td class="entry cellborder"
headers="d33911e2376 ">string</td>
<td class="entry cellborder"
headers="d33911e2379 ">Specifies the make of the device. Only used if
the model is not passed in, is not valid, or is not available via
parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
</tbody>
</table>

</div>

The following field values in bid requests must be internally
consistent.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e2918" class="entry cellborder"
style="vertical-align: top"> Criteria</th>
<th id="d33911e2921" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e2924" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e2927" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2918 ">VPAID1</td>
<td class="entry cellborder"
headers="d33911e2921 ">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry cellborder"
headers="d33911e2924 ">If the imp.video.mimes array contains value "1"
for VPAID1, then the imp.video.mimes array must contain either contain
value "application/x-shockwave-flash" or be empty, in which case all
mime types are assumed to be supported</td>
<td class="entry cellborder"
headers="d33911e2927 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2918 ">VPAID2</td>
<td class="entry cellborder"
headers="d33911e2921 ">imp.video.mimes
<p>imp.video.api</p></td>
<td class="entry cellborder"
headers="d33911e2924 ">If the imp.video.mimes array contains value "2"
for VPAID2, then the imp.video.mimes array must contain either contain
value "application/x-shockwave-flash", or "application/javascript" or be
empty, in which case all mime types are assumed to be supported</td>
<td class="entry cellborder"
headers="d33911e2927 ">95%</td>
</tr>
</tbody>
</table>

</div>

**App Audio Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e2993" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e2996" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e2999" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e3002" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e3005" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2993 ">Mime Type</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.mimes</td>
<td class="entry cellborder"
headers="d33911e2999 ">array of strings</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the audio content MIME types supported;
for example, <code class="ph codeph">audio/vnd.wav</code>, <code
class="ph codeph">audio/mpeg</code>, <code
class="ph codeph">audio/mp4</code>, <code
class="ph codeph">audio/ogg</code>, or <code
class="ph codeph">audio/mp2</code>..</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2993 ">API Type</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.api</td>
<td class="entry cellborder"
headers="d33911e2999 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the supported API frameworks for this
impression. If an API is not explicitly listed, it is assumed not to be
supported. Currently supported values are:
<ul>
<li><code class="ph codeph">1</code>: VPAID 1.0</li>
<li><code class="ph codeph">2</code>: VPAID 2.0</li>
<li><code class="ph codeph">3</code>: MRAID-1</li>
<li><code class="ph codeph">4</code>: ORMMA</li>
<li><code class="ph codeph">5</code>: MRAID-2</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2993 ">User ID</td>
<td class="entry cellborder"
headers="d33911e2996 ">user.buyeruid</td>
<td class="entry cellborder"
headers="d33911e2999 ">integer</td>
<td class="entry cellborder"
headers="d33911e3002 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e2993 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e2996 ">app.id</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3002 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code. </td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2996 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2993 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e2996 ">app.publisher.id</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2993 ">Minimum Bitrate</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.minbitrate</td>
<td class="entry cellborder"
headers="d33911e2999 ">integer</td>
<td class="entry cellborder"
headers="d33911e3002 ">The minimum bit rate, in kilobytes per
second.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2993 ">Maximum Bitrate</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.maxbitrate</td>
<td class="entry cellborder"
headers="d33911e2999 ">integer</td>
<td class="entry cellborder"
headers="d33911e3002 ">The maximum bit rate, in kilobytes per
second.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2993 ">Max Duration</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.maxduration</td>
<td class="entry cellborder"
headers="d33911e2999 ">integer</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the maximum audio ad duration, in
seconds.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2993 ">Start Delay</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.startdelay</td>
<td class="entry cellborder"
headers="d33911e2999 ">integer</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the start delay of the video:
<ul>
<li>&gt; <code class="ph codeph">0</code>: For values greater than zero,
the delay before video start, in seconds.</li>
<li><code class="ph codeph">0</code>: Pre-roll</li>
<li><code class="ph codeph">-1</code>: Generic mid-roll</li>
<li><code class="ph codeph">-2</code>: Generic post-roll</li>
</ul></td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2993 ">Protocols</td>
<td class="entry cellborder"
headers="d33911e2996 ">imp.audio.protocols</td>
<td class="entry cellborder"
headers="d33911e2999 ">array of integers</td>
<td class="entry cellborder"
headers="d33911e3002 ">Array of supported video bid response
protocols.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2993 ">Bundle ID</td>
<td class="entry cellborder"
headers="d33911e2996 ">app.bundle</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the application bundle or package name
(e.g., <code class="ph codeph">com.foo.mygame</code>). This is intended
to be a unique ID across multiple exchanges.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2993 ">IP</td>
<td class="entry cellborder"
headers="d33911e2996 ">device.ip</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
<td class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="4" class="entry cellborder"
headers="d33911e2993 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e2996 ">device.model</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the model of the device. If passed, we
will set the device <code class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a>  to view the
models registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e3005 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2996 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e2996 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the type of device, using IAB values:
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
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e2996 ">device.make</td>
<td class="entry cellborder"
headers="d33911e2999 ">string</td>
<td class="entry cellborder"
headers="d33911e3002 ">Specifies the make of the device. Only used if
the model is not passed in, is not valid, or is not available via
parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
</tbody>
</table>

</div>

**App Native Criteria**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d33911e3469" class="entry cellborder"
style="vertical-align: top"> Auction Attribute</th>
<th id="d33911e3472" class="entry cellborder"
style="vertical-align: top">Required OpenRTB Field</th>
<th id="d33911e3475" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d33911e3478" class="entry cellborder"
style="vertical-align: top">Description</th>
<th id="d33911e3481" class="entry cellborder"
style="vertical-align: top">Threshold</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3469 ">User ID</td>
<td class="entry cellborder"
headers="d33911e3472 ">user.buyeruid</td>
<td class="entry cellborder"
headers="d33911e3475 ">integer</td>
<td class="entry cellborder"
headers="d33911e3478 ">The <span class="ph">Xandr</span> unique ID of
this user. If set, this value will overwrite the <code
class="ph codeph">customdata</code> value.</td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d33911e3469 ">Tag ID</td>
<td class="entry cellborder"
headers="d33911e3472 ">app.id</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3478 ">Specifies an identifier for the specific ad
placement or ad tag that was used to initiate the auction. This is the
<span class="ph">Xandr</span> placement code.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3472 ">imp.tagid</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e3469 ">Publisher ID</td>
<td class="entry cellborder"
headers="d33911e3472 ">site.publisher.id</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the seller's publisher ID, used to look
up a <span class="ph">Xandr</span> publisher ID.</td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3469 ">Bundle ID</td>
<td class="entry cellborder"
headers="d33911e3472 ">app.bundle</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the application bundle or package name
(e.g., <code class="ph codeph">com.foo.mygame</code>). This is intended
to be a unique ID across multiple exchanges.</td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="even ">
<td rowspan="4" class="entry cellborder"
headers="d33911e3469 ">Device Data  </td>
<td class="entry cellborder"
headers="d33911e3472 ">device.model</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the model of the device. If passed,
<span class="ph">Xandr</span> sets the device <code
class="ph codeph">make</code> and <code
class="ph codeph">devicetype</code> based off the model and not the
fields passed in. This value will override the parsed <code
class="ph codeph">ua</code> field if passed in. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> to view the models
registered in the <span class="ph">Xandr</span> system.</td>
<td rowspan="4" class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3472 ">device.ua</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the user agent string from the browser.
User agent often identifies such information as the application,
operating system, and software vendor acting on behalf of the user,
e.g., <code
class="ph codeph">"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4"</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e3472 ">device.devicetype</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the type of device, using IAB values:
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
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3472 ">device.make</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the make of the device. Only used if
the model is not passed in, is not valid, or is not available via
parsing the <code class="ph codeph">ua</code> field. Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-make-service.html"
class="xref" target="_blank">Device Make Service</a> to view the makes
registered in the <span class="ph">Xandr</span> system.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e3469 ">IP</td>
<td class="entry cellborder"
headers="d33911e3472 ">device.ip</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Specifies the IPv4 address closest to the device.
Omitted when sent to buyers if seller visibility settings prohibit
sharing.</td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3469 ">Version</td>
<td class="entry cellborder"
headers="d33911e3472 ">native.ver</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">Version of the Native Markup version in use.
<p><span class="ph">Xandr</span> currently supports the following native
versions:</p>
<ul>
<li>1.0</li>
<li>1.1</li>
</ul>
<div class="note">
<span class="notetitle">Note:</span> Required if using 1.1. If no
version is submitted, then we will default to 1.0.
</div></td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e3469 ">Request</td>
<td class="entry cellborder"
headers="d33911e3472 ">native.request</td>
<td class="entry cellborder"
headers="d33911e3475 ">string</td>
<td class="entry cellborder"
headers="d33911e3478 ">The rendered creative markup to be delivered;
native creatives can be returned in this field as a JSON-encoded string.
<p>Native 1.0 Example:</p>
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;native\&quot;:{\&quot;ver\&quot;:\&quot;1.0\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
<p>Native 1.1 Example:</p>
<div class="note">
<span class="notetitle">Note:</span> the main difference of the two
versions is the removal of "native" in the request object.
<pre class="pre codeblock"><code>&quot;native&quot;: {
        &quot;request&quot;: &quot;{\&quot;ver\&quot;:\&quot;1.1\&quot;,\&quot;assets\&quot;:[{\&quot;id\&quot;:3}}]}&quot;
}</code></pre>
</div></td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="odd ">
<td rowspan="2" class="entry cellborder"
headers="d33911e3469 ">Asset ID</td>
<td class="entry cellborder"
headers="d33911e3472 ">native.request.native.assets.id</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3475 ">integer</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3478 ">Unique asset ID, assigned by exchange. Typically
a counter for the array. Every asset object needs to contain a unique
Asset ID. Use native.request.native.assets.id for Native Version 1.0 and
use native.request.assets.id for Native Version 1.1.</td>
<td rowspan="2" class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d33911e3472 ">native.request.assets.id</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d33911e3469 ">Title Asset</td>
<td class="entry cellborder"
headers="d33911e3472 ">native.request.assets.title</td>
<td class="entry cellborder"
headers="d33911e3475 ">object</td>
<td class="entry cellborder"
headers="d33911e3478 ">The Title object is to be used for title element
of the Native ad.</td>
<td class="entry cellborder"
headers="d33911e3481 ">95%</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

##   Example Bid Requests

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

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="rtb-eligibility-requirements.html" class="link">RTB Eligibility
Requirements</a>

</div>

</div>

</div>
