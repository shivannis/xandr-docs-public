---
Title : Onboarding Mobile Supply
Description : Note:
Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
---


# Onboarding Mobile Supply





Note:

Xandr now supports a domain,
<a href="http://adnxs-simple.com/" class="xref"
target="_blank">adnxs-simple.com</a>, which does not send or read
browser cookies on requests. Clients can leverage this cookie-free
domain when there is no consent to use personal data. Relevant calls
initiated by Xandr will automatically use this
domain when there is no consent or when cookies are not required for the
function. For more information, see <a
href="https://wiki.xandr.com/display/policies/Reinforcing+Privacy+Controls+Through+a+Cookie-Free+Domain"
class="xref" target="_blank">Reinforcing Privacy Controls Through a
Cookie-Free Domain</a> (login required).



There are several ways to onboard mobile supply. The type of mobile
supply you are bringing on will determine the type of ad call your
publishers need to make.

This page lists the exact mobile ad calls you must make for each type of
mobile supply integration we support. For each call, we describe the
required supply type for that inventory, and the required and
recommended query string parameters.



Warning: Sellers using the `/mob` or
`/ssmob` calls must ensure that this traffic is **mobile app traffic
only**. Any non-app traffic coming through these handlers will be
rejected.





Important: Currently,
Monetize does not export mobile ad tags
directly. You must
<a href="export-placement-tags.html" class="xref">Export Placement
Tags</a> and then edit them to include the parameters described below.



Differences Between Server and Client-Side

For both app and mobile web inventory, there are two types of ad calls
that can be generated: one that comes directly from the device (the
client-side), and one that comes from the server.

When an ad call comes directly from the device (client-side), the
application or website calls the Xandr
Impression Bus directly. This means that Xandr
has direct access to important metadata such as the User Agent and IP
address.

On the other hand, a server-side call means that an external server
calls the Xandr Impression Bus on behalf of the
client (the device). In this case, Xandr does
not have direct access to necessary metadata that would make the
impression attractive to buyers such as the IP address and the User
Agent. Since this data is not supplied by the server-side call, it must
be appended to the request by your mobile ad tag. The instructions below
show you which tags you must add to your placement tags depending on the
type of integration.

This diagram shows the difference between how server-side and
client-side mobile ad calls are made:

<img src="../images/onboarding-mobile-supply/server-vs-client.png"
class="image" />

Server-Side Integrations

Follow the instructions in this section to set up a server-side
integration with a mobile publisher. Use either Mobile App or Mobile
Web.

Mobile App

Supply Type

In Monetize, ensure that you have marked your
placement group with a supply type of **Mobile Application**. For
instructions on marking a site's supply type, see
<a href="create-a-placement-group.html" class="xref">Create a Placement
Group</a>.



Note: Only traffic matching the
placement group's supply type can serve within that placement group.

For example, if a seller labels their placement group as **Standard
Website** but the traffic coming through that placement group is both
standard website as well as mobile optimized, any campaign targeting
**Mobile Application** placement groups will not be able to serve on
this inventory.



Required Parameters

Server-side mobile app traffic should only use the `/ssmob` endpoint.
Server-side traffic coming through `/mob` calls runs the risk of being
rejected.

Technically, the minimum required URL for a server-side ad call coming
from a mobile app looks like

``` pre
https://mobile.adnxs.com/ssmob?id=PLACEMENT_ID&size=WIDTHxHEIGHT&format=json 
```

where `PLACEMENT_ID` is your placement ID (e.g., "123459") and
`WIDTHxHEIGHT` is the width and height of the ad slot (e.g., "320x50").
The `format` parameter is required to ensure that the server requesting
the ad is getting the response in the format it needs.

Even though this call will fetch an ad, it doesn't provide as much
information as it could to make the impression attractive to buyers; see
the next section for a list of recommended parameters.

Recommended Parameters

We recommend that you include the following parameters (in the table
below) on server-side ad calls from mobile apps. For more information
about how to properly format mobile ad calls, see the
<a href="mobile-ad-call-reference.html" class="xref">Mobile Ad Call
Reference</a>.



Tip: We recommend creating separate
placements for Android and iOS.



<table id="ID-00001ec1__table_hw5_51n_kkb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001ec1__table_hw5_51n_kkb__entry__1"
class="entry">Name</th>
<th id="ID-00001ec1__table_hw5_51n_kkb__entry__2"
class="entry">Parameter</th>
<th id="ID-00001ec1__table_hw5_51n_kkb__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001ec1__table_hw5_51n_kkb__entry__1">App
ID</td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__2"><pre
class="pre codeblock"><code>appid</code></pre></td>
<td class="entry" headers="ID-00001ec1__table_hw5_51n_kkb__entry__3">The
app ID is a string used to identify an app running on Android or iOS.
Many buyers set campaign targeting and reporting based on app ID.
Failing to supply a correct <code class="ph codeph">appid</code> will
make your inventory unattractive to these buyers. Therefore, passing
this field is <strong>strongly recommended</strong>. For more
information about the <code class="ph codeph">appid</code> parameter,
see our <a href="mobile-ad-call-reference.html" class="xref">Mobile Ad
Call Reference</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001ec1__table_hw5_51n_kkb__entry__1">IP
Address</td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__2"><pre
class="pre codeblock"><code>ip</code></pre></td>
<td class="entry" headers="ID-00001ec1__table_hw5_51n_kkb__entry__3">The
IP address parameter provides Xandr with the
geographic location of the user, as well as the carrier whose network
the device is connected to. Many buyers use carrier or geo targeting.
Including this information on an ad call is important in order to
capture mobile demand.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__1">User Agent</td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__2"><pre
class="pre codeblock"><code>ua</code></pre></td>
<td class="entry" headers="ID-00001ec1__table_hw5_51n_kkb__entry__3">The
User Agent parameter provides us with the device's operating system as
well its make and model. Many buyers are targeting based on these
parameters and not including them will restrict demand.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__1">IDFA (for iOS)</td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__2"><pre
class="pre codeblock"><code>idfa</code></pre></td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__3">This is the user's
unique identifier for iOS devices and is tied to a user ID. If you don't
provide this information on the ad call, demand partners who have
implemented frequency capping and/or a buying strategy that requires
conversion tracking will not buy your inventory. Not providing the
user's unique ID will severely restrict demand.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__1">AAID (for
Android)</td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__2"><pre
class="pre codeblock"><code>aaid</code></pre></td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__3">This is the user's
unique identifier for Android devices that use Google Play Services and
is tied to a user ID. If you don't provide this information on the ad
call, demand partners who have implemented frequency capping and/or a
buying strategy that requires conversion tracking will not buy your
inventory. Not providing the user's unique ID will severely restrict
demand.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__1">Unique Device ID
(Android)</td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__2"><code
class="ph codeph">md5udid</code>, <code
class="ph codeph">sha1udid</code></td>
<td class="entry"
headers="ID-00001ec1__table_hw5_51n_kkb__entry__3">This is the user's
unique identifier for Android devices that do not use Google Play
Services and is tied to a user ID. If you do not provide this
information on the ad call, demand partners who have implemented
frequency capping and/or a buying strategy that requires conversion
tracking will not buy your inventory. Not providing the user's unique ID
will severely restrict available demand.</td>
</tr>
</tbody>
</table>

Mobile Web

Supply Type

In Monetize, ensure that you have marked your
site's supply type as **Mobile Optimized Website**. For instructions on
marking a site's supply type, see
<a href="create-a-placement-group.html" class="xref">Create a Placement
Group</a>.

Required Parameters

Technically, the minimum required URL for a server-side ad call coming
from a mobile website looks like

``` pre
https://mobile.adnxs.com/ttj?id=PLACEMENT_ID&size=WIDTHxHEIGHT 
```

where `PLACEMENT_ID` is your placement ID ("123459"), and `WIDTHxHEIGHT`
is the width and height of the ad slot ("320x50").

Even though this call will fetch an ad, it doesn't provide enough
information to make the impression attractive to buyers; see the next
section for a list of recommended parameters.

Recommended Parameters

We recommend that you include the following parameters on server-side ad
calls from mobile websites:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001ec1__entry__22" class="entry">Name</th>
<th id="ID-00001ec1__entry__23" class="entry">Parameter</th>
<th id="ID-00001ec1__entry__24" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001ec1__entry__22">Location</td>
<td class="entry" headers="ID-00001ec1__entry__23"><pre
class="pre codeblock"><code>loc</code></pre></td>
<td class="entry" headers="ID-00001ec1__entry__24">This is the user's
location expressed in latitude and longitude, to allow
geo-targeting.</td>
</tr>
</tbody>
</table>



Tip: For a complete list of the query
string parameters you can pass on our `/tt` and `/ttj` calls, see
<a href="placement-tag-parameters.html" class="xref">Placement Tag
Parameters</a>.



Client-Side Integrations

Follow the instructions in this section to set up a client-side
integration with a mobile publisher. Refer to Mobile App or Mobile Web
as needed.

Mobile App

Supply Type

Ensure that you have marked your site's supply type as **Mobile
Application**. For instructions on marking a site's supply type, see
<a href="create-a-placement-group.html" class="xref">Create a Placement
Group</a>.

Required Parameters

To do a client-side mobile app integration, use one of our <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank">Mobile SDKs</a>. We have SDKs for Android
and iOS, and they are designed so that you don't have to build the
correct mobile ad calls yourself. The SDK will generate calls with the
required parameters for you.

For a complete list of our mobile ad call parameters, see our
<a href="mobile-ad-call-reference.html" class="xref">Mobile Ad Call
Reference</a>

Recommended Parameters

In order to get the SDK to send the device's location and carrier info,
and thus make the impression more valuable to buyers, you will need to
do the following:

- Configure the SDK during installation to enable the permissions that
  will allow it to send location-based data to advertisers.
- Use the SDK to get the user's location and send it on the ad call.

For instructions on enabling location permissions and sending user data,
see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/android-sdk-integration.html"
class="xref" target="_blank">Android SDK Integration</a> and <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/ios-sdk-integration.html"
class="xref" target="_blank">iOS SDK Integration</a>.

Mobile Web

Client-side mobile web integrations should use the `/ttj` placement tag
that is exported by Monetize. This is the same
ad tag used for display impressions. Our ad server will retrieve the
browser's User Agent and the device's IP address using the same methods
used for display. For instructions on exporting a placement tag, see
<a href="export-placement-tags.html" class="xref">Export Placement
Tags</a>.

Supply Type

Ensure that you have marked your site's supply type as **Mobile
Optimized Website**. For instructions on marking a site's supply type,
see
<a href="create-a-placement-group.html" class="xref">Create a Placement
Group</a>.

Required Parameters

A client-side ad call coming from a mobile website only requires a
couple of parameters:

``` pre
https://ib.adnxs.com/ttj?id=PLACEMENT_ID&size=WIDTHxHEIGHT 
```

Recommended Parameters

We recommend that you include the following parameters on client-side ad
calls from mobile websites:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001ec1__entry__28" class="entry">Name</th>
<th id="ID-00001ec1__entry__29" class="entry">Parameter</th>
<th id="ID-00001ec1__entry__30" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001ec1__entry__28">Location</td>
<td class="entry" headers="ID-00001ec1__entry__29"><pre
class="pre codeblock"><code>loc</code></pre></td>
<td class="entry" headers="ID-00001ec1__entry__30">This is the user's
location expressed in latitude and longitude, to allow
geo-targeting.</td>
</tr>
</tbody>
</table>

For a complete list of the query string parameters you can pass on our
`/tt` and `/ttj` calls, see
<a href="placement-tag-parameters.html" class="xref">Placement Tag
Parameters</a>.

Related Topics

- <a href="placement-tag-parameters.html" class="xref">Placement Tag
  Parameters</a>
- <a href="mobile-ad-call-reference.html" class="xref">Mobile Ad Call
  Reference</a>
- <a href="managing-mobile-discrepancies.html" class="xref">Managing
  Mobile Discrepancies</a>
- <a href="mobile-debug-auction-tips.html" class="xref">Mobile Debug
  Auction Tips</a>




