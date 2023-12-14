---
Title : Target Video Attributes via Query String Parameters
Description : If you use a tag solution for in-stream video, effectively targeting
ms.date: 10/28/2023
demand requires knowledge and careful implementation of the range of
possible tag parameters.
---


# Target Video Attributes via Query String Parameters



If you use a tag solution for in-stream video, effectively targeting
demand requires knowledge and careful implementation of the range of
possible tag parameters.



Xandr provides clients with a simple-to-use tag to source video demand
from a client or server environment. Requests are fulfilled via industry
standard VAST XML where the VAST can contain VAST (media files only),
VPAID1 (Flash) or VPAID2 (Flash or JavaScript). The `ptv` and `vmap`
tags can be used on the client side, and the `ssptv` and `ssvmap` tags
can be used on the server side. These tags are used across multiple use
cases, sourcing demand to different device contexts such as desktop web,
mobile web, mobile app (iOS and Android), OTT, IPTV, game consoles, and
more.

When used for desktop web video, cookies can be used; for mobile apps,
device identifiers such as IDFA and AAID can be used. For OTT or IPTV
IP, other identifiers may be used for user and device identification.
The `ptv` and `ssptv` tags can be used with OpenRTB protocols (2.2 and
higher).


This page describes available query string parameters and what they
target. Each attribute can be added to a`/ptv` or`/ssptv` tag using a
query string parameter. These attributes are distinct from the creative
attributes. Here's an example of a query string parameter:

``` pre
https://ib.adnxs.com/ptv?id=5523324&vmaxduration=30&vskippable=0&vplaybackmethod=5&vwidth=480&vcontext=1&vframeworks=1,2&schain=<blahblah>
```



The following targetable attributes of the video placement and player
are compliant with the OpenRTB 2.2 and OpenRTB 2.3 specifications. (For
more information, see <a
href="supply-partners/incoming-bid-request-from-ssps.md"
class="xref" target="_blank">Incoming Bid Requests from SSPs</a>.) The
ad call accepts the query string parameters shown below. The Compatible
Handlers column notes which tag type(s) work with each parameter.

The following parameters are especially important for success:



- For web and mobile web inventory, always include the `referrer`
  parameter on your video request. For example, include
  `"referrer=`*`abcd.com&`*`"` where `abcd.com` is the appropriate URL
  for your inventory.
- Mobile app and CTV inventory require the `appid` parameter instead of
  `referrer`. For example, include `"appid=``com.xandr``"` where
  `com.xandr` is the app ID for your inventory.
- To receive exchange demand, you must pass in the either the `referrer`
  or `appid` parameter on all ad requests for video inventory. Not doing
  so will significantly limit demand for your inventory, and prevent you
  from monetizing effectively.





<b>Note:</b> Device ID fields are case
sensitive.







## Basic Targetable Attributes



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003325__entry__1" class="entry">Parameter</th>
<th id="ID-00003325__entry__2" class="entry">Type</th>
<th id="ID-00003325__entry__3" class="entry">Required?</th>
<th id="ID-00003325__entry__4" class="entry">Compatible Handlers</th>
<th id="ID-00003325__entry__5" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">gdpr</code></td>
<td class="entry" headers="ID-00003325__entry__2">boolean</td>
<td class="entry" headers="ID-00003325__entry__3">Yes, on all GET calls
in the EU</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">A boolean value that
shows GDPR status for the call. 
<ul>
<li>0 = no = GDPR does not apply </li>
<li>1 = yes = GDPR applies</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">gdpr_consent</code></td>
<td class="entry" headers="ID-00003325__entry__2">string</td>
<td class="entry" headers="ID-00003325__entry__3">Yes, on all GET calls
in the EU</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">A string containing
GDPR consent data. This field is comparable to <code
class="ph codeph">getConsentData</code> as discussed in IAB Europe's <a
href="https://github.com/InteractiveAdvertisingBureau/GDPR-Transparency-and-Consent-Framework/blob/a32574941ce201708e30e78702278efe1ce6cd59/Consent%20string%20and%20vendor%20list%20formats%20v1.1%20Final.md"
class="xref" target="_blank">Consent String and Vendor List Format:
Transparency &amp; Consent Framework</a> as well as <a
href="https://advertisingconsent.eu/" class="xref"
target="_blank">advertisingconsent.eu</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vmax_slot_duration </code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">Maximum video duration
per slot in an ad pod in seconds. Any creative with a duration longer
than this value will be excluded from the pod.
class="note note_note">
<b>Note:</b> This value only overrides the
slot maximum duration defined on the placement video settings if the
placement and request (i.e. vmaxduration) does not have a pod maximum
duration value specified.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vmax_num_ads </code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">Maximum number of ads
per ad pod. This is the number of requests that will be sent for a given
pod.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vmaxduration </code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">For single requests,
this is the maximum video placement duration in seconds. Any creative
with a duration longer than this value will be excluded from the
auction. For podded inventory, this is the length of the full pod.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vskippable</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__5">Denotes whether the
placement is skippable. Possible values:
<ul>
<li>1 - the ad slot is skippable</li>
<li>0 - the ad slot is not skippable</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vplaybackmethod</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__5">Designates the
playback method of the placement:
<ul>
<li>1 - Auto-play, sound-on</li>
<li>2 - Auto-play, sound-off</li>
<li>3 - Click-to-play</li>
<li>4 - Mouse-over</li>
<li>5 - Auto-play, sound unknown</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vwidth</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">Required to monetize
inventory</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">Player width (in
pixels). While not required, this parameter is recommended in order to
ensure video bidders receive both width and height on bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vheight</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">Required to monetize
inventory</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">Player height (in
pixels). While not required, this parameter is recommended in order to
ensure video bidders receive both width and height on bid requests.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vcontext</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">Required to monetize
inventory</td>
<td class="entry" headers="ID-00003325__entry__4"><pre
class="pre codeblock"><code>ptv, ssptv</code></pre></td>
<td class="entry" headers="ID-00003325__entry__5">Position of the video
placement. Possible Values:
<ul>
<li>1 - Linear Pre-roll</li>
<li>2 - Linear Mid-roll</li>
<li>3 - Linear Post-roll</li>
<li>4 - Outstream</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vframeworks</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">Required to monetize
inventory</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">Frameworks supported
by the player. Possible values:
<ul>
<li>1 - VPAID 1.0</li>
<li>2 - VPAID 2.0</li>
<li>3 - MRAID-1</li>
<li>4 - MRAID-2</li>
<li>5 - ORMMA</li>
<li>6 - OMID-1</li>
</ul>

<b>Note:</b> <code
class="ph codeph">vframeworks</code> supports single as well as a list
of comma-separated integer values. For example,
<pre class="pre codeblock"><code>vframeworks=1,2,3</code></pre>
or
<pre class="pre codeblock"><code>vframeworks=1</code></pre>
.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">referrer</code></td>
<td class="entry" headers="ID-00003325__entry__2">string</td>
<td class="entry" headers="ID-00003325__entry__3">Yes, for web
traffic</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">The URL where the ad
will be rendered</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">appid</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">Yes, for mobile
app/CTV traffic</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">The bundle ID of the
mobile/CTV application. A platform-specific application identifier
intended to be unique to the app and independent of the exchange. This
string is used to identify an app running on Android or Apple iOS mobile
devices as well as on Connected TV devices, such as Android TV, Apple
TV, Roku, etc. For more details/examples see, <a
href="https://iabtechlab.com/wp-content/uploads/2020/08/IAB-Tech-Lab-OTT-store-assigned-App-Identification-Guidelines-2020.pdf"
class="xref" target="_blank">IAB Tech Lab OTT/CTV Store Assigned App
Identification Guidelines</a>
<ul>
<li>On Android (mobile &amp; CTV), this is the app’s alphanumeric
package name defined by the developer in the Google Play Store. It’s
formatted as follows: <code
class="ph codeph">com.example.helloworld</code>, wherein this bundle ID
appears at the end of the URL of the app store’s detail page.</li>
<li>On iOS (mobile) and tvOS (CTV), this is the app’s numeric iOS store
ID, auto-generated by the Apple App Store. It’s formatted as follows:
<code class="ph codeph">123456789</code>, wherein this bundle ID appears
at the end of the URL of the app store’s detail page.</li>
<li>On Roku (CTV), this is the numeric ID autogenerated by Roku. It’s
formatted as follows: <code class="ph codeph">123456</code>,wherein this
bundle ID is available in the HTML meta-tags in the Roku Channel Store
page source following IABTL app-ads.txt guidelines.</li>
</ul>
Many buyers set campaign targeting and reporting based on appid. Failing
to supply a correct appid will make your inventory unattractive to these
buyers. Therefore, passing this field is strongly recommended when
supply_type is set to mobile_app. Note that this is what our Mobile SDKs
do when they request an ad. To find the app ID for a particular app,
inspect the app’s detail page, which you can find using a web search.
For example, here are the detail pages for the “Tubi” app (with appid
bundles available as per above descriptions):
<ul>
<li>Google Play (Android) <a
href="https://play.google.com/store/apps/details?id=com.tubitv"
class="xref"
target="_blank">https://play.google.com/store/apps/details?id=com.tubitv</a></li>
</ul>
<ul>
<li>Apple (iOS / tvOS): <a
href="https://apps.apple.com/us/app/tubi-watch-movies-tv-shows/id886445756"
class="xref"
target="_blank">https://apps.apple.com/us/app/tubi-watch-movies-tv-shows/id886445756</a></li>
</ul>
<ul>
<li>Roku: <a
href="https://channelstore.roku.com/details/7c34d32446def64db7eb2cc359749fe5/tubi-free-movies-and-tv"
class="xref"
target="_blank">https://channelstore.roku.com/details/7c34d32446def64db7eb2cc359749fe5/tubi-free-movies-and-tv</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">vv</code></td>
<td class="entry" headers="ID-00003325__entry__2">int</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">The VAST version
supported by the player:
<ul>
<li>2 - VAST 2.0</li>
<li>3 - VAST 3.0</li>
<li>4 - VAST 4.0</li>
<li>5 - VAST 4.1</li>
<li>6 - VAST 4.2</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">schain</code></td>
<td class="entry" headers="ID-00003325__entry__2">string</td>
<td class="entry" headers="ID-00003325__entry__3">Required for requests
on resold inventory</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__5">Advertising systems
should support a parameter in their ad tags or VAST URLs to accept a
string-serialized SupplyChain. It is recommended that this parameter be
<code class="ph codeph">schain</code>. For more information about schain
string parameters and their corresponding JSON objects, see: <a
href="https://github.com/InteractiveAdvertisingBureau/openrtb/blob/master/supplychainobject.md#supplychain-for-non-openrtb-requests"
class="xref" target="_blank">SupplyChain for Non-OpenRTB Requests</a>
<pre id="ID-00003325__codeblock-85aed1bd-d876-40fc-a990-e172be626742"
class="pre codeblock"><code>1.0,1!exchange1.com,1234,1,bid-request-1,publisher,publisher.com!exchange2.com,abcd,1,bid-request2,intermediary,intermediary.com</code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__1"><code
class="ph codeph">eids</code></td>
<td class="entry" headers="ID-00003325__entry__2">string</td>
<td class="entry" headers="ID-00003325__entry__3">No</td>
<td class="entry" headers="ID-00003325__entry__4"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__5">An external ID (eid)
is passed by a publisher when an auction is initiated. Each eid has 3
comma separated fields, where the source and id are the required fields.
<ul>
<li><strong>source:</strong>The identity solution source, representing
the origin of the ID. For example, you can specify liveramp.com or a
custom string for publisher provided ID solutions.</li>
<li><strong>id:</strong>The user ID provided by identity solution.</li>
<li><strong>rti_partner:</strong> The third party identity solution
name.</li>
</ul>
The following example shows two external IDs, each with their respective
fields. To pass multiple IDs, separate the eids with a pipe character:
<ul>
<li>External ID1: source=adserver.org,id=987654,rti_partner=TDID</li>
<li>External ID2: source=criteo.com,id=1234567,rti_partner=(none)</li>
</ul>
The two external IDs are then passed into an endpoint, in the following
way:
<pre class="pre codeblock"><code>...&amp;eids=adserver.org,987654,TDID|criteo.com,1234567&amp;... </code></pre></td>
</tr>
</tbody>
</table>







## Additional Settings



<table class="table">
<colgroup>
<col style="width: 12%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 59%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00003325__entry__86" class="entry">Parameter</th>
<th id="ID-00003325__entry__87" class="entry">Type</th>
<th id="ID-00003325__entry__88" class="entry">Required?</th>
<th id="ID-00003325__entry__89" class="entry">Compatible Handlers</th>
<th id="ID-00003325__entry__90" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">Yes</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The unique ID of the
placement where the ad will serve. If you'd rather not pass the raw
placement ID, you can pass in a combination of <code
class="ph codeph">member</code> and <code
class="ph codeph">inv_code</code> parameters. For more information, see
the documentation for those parameters.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">member</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">(Optional) The member
ID of the member on whose placement the ad will serve. Instead of
passing the placement ID, you can pass a combination of this field and
<code class="ph codeph">inv_code</code> to uniquely identify a specific
placement.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">carrier</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Name of the mobile
carrier. This is optional because our system can usually deduce the
carrier from the device's IP address. For Example: <code
class="ph codeph">AT&amp;T - US</code>. For more information on allowed
values for this field, see <a
href="xandr-api/carrier-service.md"
class="xref" target="_blank">Carrier Service</a></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">connection_type</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The type of network
used by the device. Allowed values are <code
class="ph codeph">"wifi"</code> or <code
class="ph codeph">"wan"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_len</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The content
duration in seconds.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_livestream</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>Whether the
content is live or video on demand (VOD). 0: VOD, 1: Live</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_genre</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The genre that
best describes the content.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_program_type</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The type of
program (For example: movie, event, episode, etc).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_contentrating</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The content rating
(For example: PG-13).</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_album</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Album to which the
content belongs; typically for audio.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_artist</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Artist credited with
the content.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_cat</code></td>
<td class="entry" headers="ID-00003325__entry__87">string array</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Array of IAB content
categories that describe the content producer. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">list 5.1</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_context</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Type of content
(game, video, text, etc.).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_data_id</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Exchange-specific ID
for the data provider.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_data_name</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Exchange-specific
name for the data provider.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_data_segment</code></td>
<td class="entry" headers="ID-00003325__entry__87">object array</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Array of Segment
objects that contain the actual data values.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_embeddable</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Indicator of whether
or not the content is embeddable (Example: An embeddable video player),
where 0 = no, 1 = yes.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_episode</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Episode number.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_isrc</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">International
Standard Recording Code conforming to ISO-3901.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_keywords</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Comma separated list
of keywords describing the content.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_prodq</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Production
quality.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_producer_id</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Content producer or
originator ID. Useful if content is syndicated and may be posted on a
site using embed tags.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_producer_cat</code></td>
<td class="entry" headers="ID-00003325__entry__87">string array</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Array of IAB content
categories that describe the content producer. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">List 5.1</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_producer_name</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Content producer or
originator name (e.g., “Warner Bros”).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_producer_domain</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Highest level domain
of the content producer (Example:“<a href="https://producer.com/"
class="xref" target="_blank">producer.com</a>”).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_qagmediarating</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Media rating per IQG
guidelines. Refer to <a
href="https://iabtechlab.com/standards/content-taxonomy/" class="xref"
target="_blank">List 5.19</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_season</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Content season
(Example: “Season 3”).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_series</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Content series. Video
Examples: “The Office” (television), “Star Wars” (movie), or “Arby ‘N’
The Chief” (made for web). Non-Video Example: “Ecocentric” (Time
Magazine blog).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_sourcerelationship</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">0 = indirect, 1 =
direct.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_title</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Content title. Video
Examples: “Search Committee” (television), “A New Hope” (movie), or
“Endgame” (made for web). Non-Video Example: “Why an Antarctic Glacier
Is Melting So Quickly” (Time magazine article).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_url</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">URL of the content,
for buy-side contextualization or review.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_userrating</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">User rating of the
content (Example: Number of stars, likes, etc.).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_network</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The top-level
parent company or, where relevant, a sub-brand which owns multiple
TV-like channels, d2c content brands, or digital properties on which the
content is being viewed</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_language</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The language of
the video content. Specify the language using the two-letter
ISO-639-1-alpha-2 code.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">channel_name</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The name of
channel the content is airing on.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">airtime</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The original
airtime. It only applies to time-shifted content.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">content_id</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The unique
alphanumeric content identifier.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">devmake</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The manufacturer
of the device requesting the ad. Typically, this value is parsed from
the UA string parameter (for server-side implementations) or included
automatically in the request headers (for client-side integrations).
Otherwise, you can use this parameter to pass the information in the
query string directly. For Example: <code
class="ph codeph">da-4G Systems</code>. For more information on allowed
values for this field, see the name values from the <a
href="xandr-api/device-make-service.md"
class="xref" target="_blank">Device Make Service</a> and prefix them
with <code class="ph codeph">"da-"</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">devtype</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The type of the
device requesting the ad. Typically, this value is parsed from the UA
string parameter (for server-side implementations) or included
automatically in the request headers (for client-side integrations).
Otherwise, you can use this parameter to pass the information in the
query string directly. Allowed values are <code
class="ph codeph">da-Tablet</code>, <code
class="ph codeph">da-Mobile Phone</code>, <code
class="ph codeph">da-Game Console</code>, <code
class="ph codeph">da-TV</code>, <code
class="ph codeph">da-Set Top Box</code>, <code
class="ph codeph">da-Media Player</code>. For more information on how
the values in this field get mapped into targeting/reporting, see the <a
href="xandr-api/profile-service.md#ProfileService-DeviceTypeTargets"
class="xref" target="_blank">Device Type Targets section of Profile
Service</a></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">devmodel</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The specific name
or number of the device requesting the ad. Typically, this value is
parsed from the UA string parameter (for server-side implementations )
or included automatically in the request headers (for client-side
integrations). Otherwise, you can use this parameter to pass the
information in the query string directly. For Example: <code
class="ph codeph">da-3499464</code>. For more information on allowed
values for this field, see the code values with <code
class="ph codeph">“da-”</code> prefix from the <a
href="xandr-api/device-model-service.md"
class="xref" target="_blank">Device Model Service</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">dnt</code></td>
<td class="entry" headers="ID-00003325__entry__87">boolean</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><strong>This field is
deprecated, and may be removed in the future.</strong> Use the <code
class="ph codeph">LimitAdTrackingEnabled</code> flag instead.
<p>If <code class="ph codeph">true</code>, the user has set the
system-level preference to not receive behaviorally targeted ads.
Allowed values: <code class="ph codeph">true</code>, <code
class="ph codeph">false</code>, <code class="ph codeph">1</code>, or
<code class="ph codeph">0</code>.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">devtime</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The time on the
device, measured in seconds since the epoch, or <a
href="https://en.wikipedia.org/wiki/Unix_time" class="xref"
target="_blank">UNIX Time</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">devtz</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The device's
timezone.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">external_uid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">A string that
corresponds to an external user ID for this user.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">ifa</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">Required to monetize
inventory</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The unique device
identifier using the UUID standard (8-4-4-4-12)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">ifa_type</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">Required to monetize
inventory</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Possible values are
<code class="ph codeph">aaid</code> (Android), <code
class="ph codeph">idfa</code> (AppleTV), <code
class="ph codeph">afai</code> (Amazon Fire), <code
class="ph codeph">msai</code> (Microsoft), <code
class="ph codeph">rida</code> (Roku), <code
class="ph codeph">ppid</code>, <code class="ph codeph">tifa</code>
(Tizen (Samsung)), <code class="ph codeph">vida</code> (Vizio), <code
class="ph codeph">lgudid</code> (LG).

<b>Note:</b> If you can't dynamically pass in
device or platform IDs, you should use:
<ul>
<li><code class="ph codeph">ifa_type=openudid</code> for CTV ad requests
if you have authentication data and can pass persistent IDs</li>
<li>&amp;ifa_type=sessionid if you don't have authentication data with
persistent IDs</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">LimitAdTrackingEnabled</code></td>
<td class="entry" headers="ID-00003325__entry__87">boolean</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">If <code
class="ph codeph">true</code>, the user has set the system-level
preference to not receive behaviorally targeted ads. Allowed values:
<code class="ph codeph">true</code>, <code
class="ph codeph">false</code>, <code class="ph codeph">1</code>, or
<code class="ph codeph">0</code>.
<p>For more information about the system-level ads preferences on iOS,
see <a href="https://support.apple.com/en-us/HT202074" class="xref"
target="_blank">Opt out of interest-based ads from iAd</a>.</p>
<p>For more information about the system-level ads preferences on
Android, see <a
href="https://developer.android.com/google/play-services/id.md"
class="xref" target="_blank">Advertising ID</a>.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">md5udid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The MD5 hash of the
<code class="ph codeph">ANDROID_ID</code>. This should only be sent for
Android devices. This should be URL-encoded.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">sha1udid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The SHA1 hash of the
<code class="ph codeph">ANDROID_ID</code>. This should only be sent for
Android devices. This should be URL encoded..</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">rida</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The device ID for a
Roku device.

<b>Note:</b> This parameter isn't needed if
<code class="ph codeph">ifa </code>and <code
class="ph codeph">ifa_type</code> are passed.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">idfa</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The Apple advertising
identifier for iOS devices running iOS 6+.

<b>Note:</b> This parameter isn't needed if
<code class="ph codeph">ifa </code>and <code
class="ph codeph">ifa_type</code> are passed.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">aaid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The Google
advertising identifier for Android devices as retrieved from Google Play
services.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">adid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The Windows
advertising identifier for Windows devices.

<b>Note:</b> This parameter isn't needed if
<code class="ph codeph">ifa </code>and <code
class="ph codeph">ifa_type</code> are passed.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">ip</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">IP address of the
device making the ad request, e.g., <code
class="ph codeph">207.237.150.246</code>.
<ul>
<li>If <code class="ph codeph">ip</code> is not specified for <code
class="ph codeph">/ptv</code> calls, the IP passed via HTTP headers will
be used for geo detection instead.</li>
<li>If <code class="ph codeph">ip</code> is not specified for <code
class="ph codeph">/ssptv</code> calls, Xandr will not be able to detect
geographic location, and buyers will therefore not be able to target by
geolocation.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">language</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The device's
language, specified with an <a
href="https://www.iso.org/iso/home/standards/language_codes.htm"
class="xref" target="_blank">ISO Language Code</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">loc</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The user's location
expressed in latitude and longitude, in the format: <code
class="ph codeph">snnn.ddddddddddddd,snnn.ddddddddddddd</code>. Up to 13
decimal places of precision are allowed.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">loc_age</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Age of the location
data in milliseconds.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">loc_prec</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Precision of the
location data in meters.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">mcc</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The Mobile Country
Code as specified by the <a
href="https://www.itu.int/en/publications/ITU-T/Pages/publications.aspx?parent=T-SP&amp;view=T-SP1"
class="xref" target="_blank">ITU</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">mnc</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The Mobile Network
Code as specified by the <a
href="https://www.itu.int/en/publications/ITU-T/Pages/publications.aspx?parent=T-SP&amp;view=T-SP1"
class="xref" target="_blank">ITU</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">openudid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The <a
href="https://github.com/ylechelle/OpenUDID" class="xref"
target="_blank">OpenUDID</a> of the device. This should only be sent for
iOS versions 5 and below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">orientation</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Device screen
orientation during the ad request. Allowed values are <code
class="ph codeph">"v"</code> or <code class="ph codeph">"h"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">os</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The operating system
and the version number of the device requesting the ad. Typically, this
value is parsed from the UA string parameter (for server-side
implementations) or included automatically in the request headers (for
client-side integrations). Otherwise, you can use this parameter to pass
the information in the query string directly. For Example: <code
class="ph codeph">iPhone - iOS (other versions)</code>. For more
information on allowed values for this field, see <a
href="xandr-api/operating-system-service.md"
class="xref" target="_blank">Operating System Service</a></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">pcode</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The postal code of
the user requesting an ad. If not specified, postal code will be
determined from the IP address.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">redirenc</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The redirect URL that
should be used in the case where there is no valid creative to serve.
The url should be encoded.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">reserve</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The reserve price for
this inventory, which is the minimum net amount the placement will
accept for placing a creative. This parameter will override a preset
price and will set the hard floor (and soft floor where relevant) if
Yield Management is not being used or if the reserve price is greater in
value than the YM Floor wherein the Floor Rule has the override setting
on.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">sha1mac</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The SHA1 hash of the
<a href="https://code.google.com/p/odinmobile/" class="xref"
target="_blank">ODIN</a>. This should only be sent for iOS versions 5
and below. This should be URL encoded.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">st</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The supply type of
the inventory, which indicates the environment in which an ad will be
shown. Allowed values: <code class="ph codeph">"mobile_app"</code>,
<code class="ph codeph">"mobile_web"</code>, or <code
class="ph codeph">"web"</code>. Defaults to <code
class="ph codeph">"mobile_app"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">size</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Deprecated. Use
vwidth and vheight instead. The requested banner size, for example,
<code class="ph codeph">"320x50"</code>, or the screen size for
Interstitial ads.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">tmpl_id</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The supply template
identifier.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">traffic_source_code</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">A traffic source code
provides the ability to check the third-party traffic source of a
particular impression. If the traffic source code is pre-registered with
Xandr, and is passed via the query string using
the trafficSourceCode property, then it would let you know the sources
for the third-party traffic occurred for an impression.
<p>This traffic_source_code is included in the <a
href="log-level-data/standard-feed.md"
class="xref" target="_blank">Standard Feed</a> and can be used to pass
publisher key-value information to the feed.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">ua</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The user agent
string associated with the device requesting an ad. If specified, this
value will be used rather than the standard user agent sent via HTTP
header. This should be URL encoded. The user agent identifies
information such as the device’s operating system as well as the
device’s make and model, along with the information about the
application, and the software vendor acting on behalf of the user. Many
buyers target their audiences based on these parameters and not
including them will restrict demand.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">us_privacy</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__90"><p>The IAB Tech Lab's
US Privacy String communicates signals regarding consumer privacy and
choice under US privacy regulation. <a
href="https://wiki.xandr.com/display/GDPR/CCPA+Client+Overview"
class="xref" target="_blank">CCPA Client Overview</a>(Login
required)</p>
<p>For more information, see: <a
href="https://wiki.xandr.com/display/GDPR/CCPA+Publisher+Controls+Provided+by+Xandr"
class="xref" target="_blank">CCPA Publisher Controls</a> (Login
required)</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">placement_set</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The placement set to
be associated with the tag. To learn more, see <a
href="xandr-api/placement-set-service.md"
class="xref" target="_blank">Placement Set Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">vmin_ad_duration*</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__90">The minimum ad
duration, in seconds</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">mimes*</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Video mimes accepted,
expressed as a comma-separated list of IDs. You can find the IDs in the
<a
href="xandr-api/placement-service.md"
class="xref" target="_blank">Placement Service documentation</a> under
"Supported Mime Types."</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">minbitrate*</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The minimum bitrate
accepted</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">mf_min_height*</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The minimum media
file height, in pixels</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">mf_min_width*</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The minimum media
file width, in pixels</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">mf_aspect_ratio*</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">The media file aspect
ratio</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">an_user_id</code></td>
<td class="entry" headers="ID-00003325__entry__87">int</td>
<td class="entry" headers="ID-00003325__entry__88">No</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ssptv</code></td>
<td class="entry" headers="ID-00003325__entry__90">The Xandr user
ID</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">gpp</code></td>
<td class="entry" headers="ID-00003325__entry__87">string</td>
<td class="entry" headers="ID-00003325__entry__88">Yes, on all GET calls
in applicable US states</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">Indicates the actual
IAB GPP consent string. It implies which vendors are permitted to
process personal data and under which conditions. This field is
discussed as part of the IAB Tech Lab's <a
href="https://iabtechlab.com/gpp" class="xref" target="_blank">Global
Privacy Platform</a> (GPP)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">gpp_sid</code></td>
<td class="entry" headers="ID-00003325__entry__87">string array</td>
<td class="entry" headers="ID-00003325__entry__88">Yes, on all GET calls
in applicable US states</td>
<td class="entry" headers="ID-00003325__entry__89"><code
class="ph codeph">ptv</code>, <code class="ph codeph">ssptv</code>,
<code class="ph codeph">vmap</code>, <code
class="ph codeph">ssvmap</code></td>
<td class="entry" headers="ID-00003325__entry__90">A boolean value that
shows which <a
href="https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/blob/main/Sections/Section%20Information.md#section-ids"
class="xref" target="_blank">sections of the GPP</a> apply for the
call.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00003325__entry__86"><code
class="ph codeph">ext_inv_code</code></td>
<td class="entry" headers="ID-00003325__entry__87"></td>
<td class="entry" headers="ID-00003325__entry__88"></td>
<td class="entry" headers="ID-00003325__entry__89"></td>
<td class="entry" headers="ID-00003325__entry__90"><p>A predefined value
passed on the query string that can be used in reporting. The value must
be entered into the system before it is logged. For more information,
see External Inventory Code Service. Example: <code
class="ph codeph">ext_inv_code=10039</code></p></td>
</tr>
</tbody>
</table>







## Related Topics



- <a href="create-a-placement.md" class="xref">Create a Placement</a>
- <a href="assign-a-default-creative-to-a-placement.md"
  class="xref">Assign a Default Creative to a Placement</a>
- <a href="export-video-placement-tags.md" class="xref">Export Video
  Placement Tags</a>
- <a href="onboarding-video-supply.md" class="xref">Onboarding Video
  Supply</a>








