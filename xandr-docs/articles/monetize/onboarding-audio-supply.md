---
Title : Onboarding Audio Supply
Description : This page explains how to modify placement settings to accept audio
ms.date: 10/28/2023
creatives and how to export and test placement tags. For a complete
---


# Onboarding Audio Supply





This page explains how to modify placement settings to accept audio
creatives and how to export and test placement tags. For a complete
walkthrough of placement object setup, see
<a href="create-a-placement.md" class="xref">Create a Placement</a>.





## Onboarding Audio Placements

In the Placement Details tab,
select the Audio media type(s) to
include the following:





## Export Placement Tag

>

When you
<a href="export-placement-tags.md" class="xref">export the placement
tag</a> for a placement that allows VAST audio creatives, the placement
tag generated is a URL. In the URL, we automatically change `/ttj` to
`/ptv` to ensure that ad calls will return the XML required by your
publisher's video player to serve the desired creative. The end result
looks something like this:

``` pre
https://ib.adnxs.com/ptv?id=1234
```



Once you have the tag, make sure to append the placement tag with the
parameters below before implementing. Make sure that you copy the URL
into the audio player rather than place it directly on the page.

**Append Placement Tag Parameters:**

The following placement tag parameters are highly recommended. You
should append all available parameters in order to comply with platform
policies and maximize revenue opportunity.



<table id="onboarding-audio-supply__table_tcq_1s5_yvb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"><code
class="ph codeph">appid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3">This
string is used to identify a mobile app running on Android or iOS
devices.

<ul>
<li>On Android, this is the app's package name. It's formatted as <code
class="ph codeph">com.example.helloworld</code>.</li>
<li>On iOS, this is the app's iTunes ID. It's formatted as <code
class="ph codeph">123456789</code>.</li>
</ul>


Many buyers set campaign targeting and reporting based on <code
class="ph codeph">appid</code>. Failing to supply a correct <code
class="ph codeph">appid</code> will make your inventory unattractive to
these buyers. Therefore, passing this field is <strong>strongly
recommended</strong> when <code class="ph codeph">supply_type</code> is
set to <code class="ph codeph">mobile_app</code>.
class="note note_note">
<b>Note:</b> This is what our Mobile SDKs do
when they request an ad.


<p>To find the <code class="ph codeph">appid</code> for a particular
Android or iOS app, find the app's detail page in Google Playstore or
App Store. The easiest way is to do a web search. The URL of the app
store's detail page will show the <code
class="ph codeph">appid</code>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"><code
class="ph codeph">idfa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3">The Apple
advertising identifier for iOS devices.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"><code
class="ph codeph">aaid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3">The
Google advertising identifier for Android devices as retrieved from
Google Playstore.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"><code
class="ph codeph">adid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3"><p>The
Windows advertising identifier for Windows devices.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"><code
class="ph codeph">ip</code></td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3"><p>IP
address of the device making the ad request, e.g., <code
class="ph codeph">207.237.150.246</code>.</p>
<p>If not specified for <code class="ph codeph">/ptv</code> calls, the
IP address passed via HTTP headers is used for geo detection.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__1"><code
class="ph codeph">loc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="onboarding-audio-supply__table_tcq_1s5_yvb__entry__3">The
user's location expressed in latitude and longitude, in the format:
<code class="ph codeph">snnn.ddddddddddddd,snnn.ddddddddddddd</code>. Up
to 13 decimal places of precision are allowed.</td>
</tr>
</tbody>
</table>





**Example of a placement tag**:

``` pre
https://ib.adnxs.com/ptv?id=10928372&appid=919288199&idfa=939828182082837&ip=100.10.102.19.&loc=-79.1209911,-10.9900099
```







## Testing Placement Tags

If you do not have access to a test page, you can use an online VAST
validator to determine if the placement tag is functioning properly.
There are several available online, including at
<a href="https://googleads.github.io/googleads-ima-html5/vsi/"
class="xref" target="_blank">VAST Inspector</a>.





## Recording Impressions

VAST impressions are recorded after the first frame serves, per the
<a href="https://www.iab.com/guidelines/iab-new-ad-portfolio/"
class="xref" target="_blank">IAB guidelines</a>. If you test VAST by
loading the URL in a browser, no impressions will be recorded. It is
only when the VAST response is parsed by an audio player and the VAST
impression trackers are called that the impression is recorded.



>

## Related Topics

>

- <a href="create-a-placement.md" class="xref">Create a Placement</a>
- <a href="assign-a-default-creative-to-a-placement.md"
  class="xref">Assign a Default Creative to a Placement</a>
- <a href="export-placement-tags.md" class="xref">Export Placement
  Tags</a>
- <a href="placement-tag-parameters.md" class="xref">Placement Tag
  Parameters</a>








