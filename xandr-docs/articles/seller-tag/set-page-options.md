---
Title : Set Page Options
Description : <div id="ID-00001923__section_ud5_spm_g5b" >
This function sets page-level options placements.
---


# Set Page Options



<div id="ID-00001923__section_ud5_spm_g5b" >

This function sets page-level options placements.

``` pre
setPageOpts ({parameters})
```

The parameters listed below can be sent as arguments in the function.



<div id="ID-00001923__section_wd5_spm_g5b" >

## Parameters

<table id="ID-00001923__table_xd5_spm_g5b" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__table_xd5_spm_g5b__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001923__table_xd5_spm_g5b__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001923__table_xd5_spm_g5b__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">number</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">The member ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">publisherId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">number</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">The <code
class="ph codeph">publisherId</code> can be used when using an inventory
code. This ensures the right publisher is used to help pick the correct
default placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">user</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Object that specifies
information about an external user. See User Object details below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">A set of key/value
pairs applicable to all ad slots on this page. Querystring segments are
defined by key/value pairs in this object. Keywords that contain hyphens
must be enclosed in single quote marks. Best practice is to always
surround keywords with single quotes. A maximum of 100 key/value pairs
can be defined at the page level. (Each tag can have up to 100
additional key/value pairs defined.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">disablePsa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Indicates whether all
placements should disable PSAs from showing. A value of <code
class="ph codeph">true</code> will disable all PSAs globally.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">device</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Complex object that
declares and overrides the type of device, as populated in the <span
class="ph">Xandr bid request. See Device Object details
below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">enableSafeFrame</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Specifies whether all
ads will be served in a SafeFrame container. For more information, see
the <a href="safeframe-api-reference.html" class="xref">SafeFrame API
Reference</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">app</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Complex object that
populates app information. It is an object that holds information
related to the application. See App Object details below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">consentManagement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Specifies whether
consent management is enabled for compliance with the transparency,
notice and choice/consent requirements under the US state privacy law
via the <a href="https://iabtechlab.com/gpp" class="xref"
target="_blank">Global Privacy Platform</a>, GDPR and the ePrivacy
Directive. Consent management is enabled by default. See Consent
Management Object details below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">auctionTimeout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">number</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">The amount of time,
in milliseconds, to wait for a bidder to respond to a bid request.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">geoOverride</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Provides the ability
to override IP-based geo location. See Geo Override Object
details below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">schain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3"> Allows publishers to
specify their Supply Chain Object for the request they made to the ad
server. Further information about the Supply Chain Object spec and its
structure can be found with these links:
<ul>
<li><a href="https://iabtechlab.com/sellers-json/" class="xref"
target="_blank">https://iabtechlab.com/sellers-json/</a></li>
<li><a
href="https://github.com/InteractiveAdvertisingBureau/openrtb/blob/master/supplychainobject.md"
class="xref"
target="_blank">https://github.com/InteractiveAdvertisingBureau/openrtb/blob/master/supplychainobject.md</a></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">us_privacy</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">A string that
conforms to the <a href="https://iabtechlab.com/standards/ccpa/"
class="xref" target="_blank">IAB CCPA Compliance Framework</a>
requirements. See the code sample in the US
Privacy section below.
<div id="ID-00001923__note_zd5_spm_g5b"
class="note warning note_warning">
Warning: Important
<p>This parameter is planned be deprecated at a future date</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">pageUrl</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">This field is set to
support progressive web apps that uses AST to show ads in their apps.
The development framework generates an invalid referrer, that is blocked
by our IQ rules.<br />
Publishers using AST in their iOS apps, need to set this field to
override the default page URL referrer information (normally derived by
AST), to  HTTP(s) value they feel best represents the page. This feature
is primarily designed for mobile environments where the referrer
information may not reflect typical HTTP page URLs. The feature will
only activate when the AST tag is loaded within an iOS app webview.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">trackingManagement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Object that specifies
values for tracking related features related to the auction and
creatives (viewability, usersync, etc). See <a
href="#ID-00001923__TM-001" class="xref">TrackingManagement Object</a>
details below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__1"><code
class="ph codeph">renderingManagement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__table_xd5_spm_g5b__entry__3">Object that specifies
values for rendering related features, which influence how ads are
rendered onto a webpage. See <a href="#ID-00001923__p-00d3d4"
class="xref">RenderingManagement Object</a> details below.</td>
</tr>
</tbody>
</table>





## Objects

**App Object** 

Specifies information about the application.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__52"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001923__entry__53"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001923__entry__54"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__52"><code
class="ph codeph">appid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__53">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__54">Object that defines the application
identification information.</td>
</tr>
</tbody>
</table>

Here's an example:

``` pre
apntag.setPageOpts({
        app: {
                appid: 'com.mypackage.myapp'
        }
});
```

**Schain Object**

The feature in AST allows for publishers to perform an optional syntax
check on the schain they specify in the config parameter. The syntax
criteria is based on the IAB specification for the schain object.

- If the publisher enables the strict option, the config schain object
  will be checked exactly and if there is an error in the structure, an
  error message from AST will be thrown in the console and the schain
  object will not be included in the request to the adserver.
- If the publisher enables the relaxed option, the config schain object
  will be checked. If is something wrong, a warning message will be
  displayed in the browser console, but the schain object will still be
  included in the request to the adserver.
- If the publisher enables the off option, the config schain object will
  not be checked at all. It will simply be included in the request to
  the adserver, whether it was correctly formatted or not. 



Note: you need to have the AST debug
flag enabled to see the messages in the console.



Here's an example:

``` pre
schain: {
  validation: 'strict',  // strict, relaxed, or off - strict is default
  config: {
    ver: '1.0',
    complete: 0,
    nodes: [{
      asi: 'testasi.com',
      sid: 'test123sid',
      hp: 1
    }]
  }
}
```

**  
User Object**

 Specifies information about an external user to whom the ads will be
shown.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__58"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001923__entry__59"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001923__entry__60"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code class="ph codeph">age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">number</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__60">The
age of the user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code class="ph codeph">dnt</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__60">Do
not track flag. Indicates if tracking cookies should be disabled for
this auction:
<ul>
<li><code class="ph codeph">true</code> (disable cookies)</li>
<li><code class="ph codeph">false</code> (Default)</li>
</ul>

Note: When <code
class="ph codeph">dnt:true</code> , user data will not be available
throughout the auction, regardless of sending external UID or <span
class="ph">Xandr UUID. The ID would appear as -1 in LLD,
representing opted-out.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code
class="ph codeph">externalUid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__60">Specifies a string that corresponds to
an external user ID for this user.

Warning: Important
<p><code class="ph codeph">externalUid</code> should only be used in
cookieless environments. Application outside of that may result in
decreased user match rate (impacting retargeting) and / or increased
user blocklisting over time.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__60">Specifies the gender of the user:
<ul>
<li><code class="ph codeph">0</code>: unknown</li>
<li><code class="ph codeph">1</code>: male</li>
<li><code class="ph codeph">2</code>: female</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code
class="ph codeph">language</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__60">The
two-letter ANSI code for this user's language; for example, <code
class="ph codeph">EN</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code
class="ph codeph">segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">array of numbers</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__60">Specifies the segments to which the
user is a member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code
class="ph codeph">userIds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__60">An
array containing objects that hold userId parameters. See User ID Object
details below for definitions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__58"><code
class="ph codeph">coppa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__59">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__60">When enabled, this includes the coppa
flag to the auction request.</td>
</tr>
</tbody>
</table>

**User ID Object**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__85"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001923__entry__86"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001923__entry__87"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__85"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__86">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__87">The
cookie or platform native identifier</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__85"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__86">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__87">The
source value of the provider that provides the included ID. Supported
identity solutions:
<ul>
<li>criteo: criteo's identity solution.</li>
<li>liveramp: Liveramp's identity solution.</li>
<li>netid: european cross-device enabled advertising identifier.</li>
<li>ttd: the trade desk 1.0 identity solution.</li>
<li>uid2: uid2 identity solution.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__85"><code
class="ph codeph">extendedIDs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__86">type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__87">The
publisher defined first party IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__85"><code
class="ph codeph">eids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__86">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001923__entry__87">The
eids value is only compliant with the extendedID type (all other defined
types should use the existing id string defined above). The objects
inside this eids array have 2 parameters, id and source:
<ul>
<li>id : identical to the existing id value in its purpose and
description. </li>
<li>source : the source or technology provider utilized by the publisher
to handle the first party ID; generally expressed as a domain. See the
example below.</li>
</ul></td>
</tr>
</tbody>
</table>

  
**Device Object**

Specifies a mobile device on which the ads will be shown.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__100"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001923__entry__101"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001923__entry__102"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">deviceId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">Object that defines the device
identification information; includes the following parameters:
<ul>
<li><code class="ph codeph">idfa</code>: The Apple advertising
identifier for iOS devices running iOS 6+.</li>
<li><code class="ph codeph">aaid</code>: The Google advertising
identifier for Android devices as retrieved from Google Play
services.</li>
<li><code class="ph codeph">sha1udid</code>: The SHA1 hash of the <code
class="ph codeph">ANDROID_ID</code>.</li>
<li><code class="ph codeph">md5udid</code>: The The MD5 hash of the
<code class="ph codeph">ANDROID_ID</code>.</li>
<li><code class="ph codeph">windowsadid</code> - The Microsoft
advertising identifier for Windows devices.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">deviceType</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">Specifies the type of device on which
the ad will be shown (such as <code class="ph codeph">phone</code> or
<code class="ph codeph">tablet</code>).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">useragent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The user agent string from the device
browser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">geo</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">Object that defines the location of
the device; includes the following parameters:
<ul>
<li><code class="ph codeph">lat</code>: Device latitude (a number, such
as <code class="ph codeph">45.5</code>).</li>
<li>lng: Device longitude (a number, such as <code
class="ph codeph">-122.7</code>).</li>
<li><code class="ph codeph">country</code>: Country for the device. Uses
the three-character <a
href="https://www.iso.org/obp/ui/#iso:pub:PUB500001:en" class="xref"
target="_blank">ISO 3166-1 alpha-3</a> codes.</li>
<li><code class="ph codeph">region</code>: Device region.</li>
<li><code class="ph codeph">city</code>: Device city.</li>
<li><code class="ph codeph">zip</code>: Device ZIP code.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code class="ph codeph">ip</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The device's IP address.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">make</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The device model; for example, <code
class="ph codeph">Apple</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">model</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The device make; for example, <code
class="ph codeph">iPhone</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code class="ph codeph">os</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The device operating system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">osVersion</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The version of the device operating
system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">carrier</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The carrier for the device.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">connectionType</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">number</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The connection type:
<ul>
<li><code class="ph codeph">0</code>: Unknown</li>
<li><code class="ph codeph">1</code>: WiFi</li>
<li><code class="ph codeph">2</code>: WAN</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">mcc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The mobile country code, as specified
by the ITU.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">mnc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The mobile network code, as specified
by the ITU.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__100"><code
class="ph codeph">devTime</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__101">number</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001923__entry__102">The time on the device (in UNIX
Time).</td>
</tr>
</tbody>
</table>

**TrackingManagement Object**

<div id="ID-00001923__p-cb6d205d-e5e9-4979-9227-16ae8b851a1d" >

<table id="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__1"
class="entry align-center colsep-1 rowsep-1">Parameter</th>
<th
id="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__1"><code
class="ph codeph">native</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__3">Object
that contains settings related to native types specifically.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__1"><code
class="ph codeph">native.loadViewabilityScriptAt</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__3"><div
>
Permitted values:
<ul>
<li>impression</li>
<li>adresponse</li>
</ul>
<strong>Default</strong>: adresponse

<p>The adresponse time is recorded when the ad is received by AST. It is
the historical setting.</p>
<p>The new impression time is recorded closer to the impression event.
This may be more desirable to certain publishers who rely on native
viewability metrics.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__1"><code
class="ph codeph">userSync</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-fc0d5a21-e818-4938-8738-0f237500ebf0__entry__3">Object
that contains settings related to the AST <code
class="ph codeph">userSync</code> feature.</td>
</tr>
</tbody>
</table>



**RenderingManagement Object**

<div id="ID-00001923__p-01040aa3" >

<table id="ID-00001923__table-08a" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__table-08a__entry__1"
class="entry align-center colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001923__table-08a__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th id="ID-00001923__table-08a__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__1"><code
class="ph codeph">insertWrapperDiv</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__3">When enabled, AST adds an
additional div element between the main AST <code
class="ph codeph">utif</code> div and the AST iframe (or safeframe)
container for all ad slots. This option is useful for publishers who
wish to customize or control the contents of the ad container further
without modifying the main div container.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__1"><code
class="ph codeph">sandboxAdIframe</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__3">When enabled, AST adds and
populates the HTML sandbox attribute for the AST iframe (or safeframe)
container for all ad slots using the values from the appropriate <code
class="ph codeph">sandboxAttributes</code> parameter.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__1"><code
class="ph codeph">sandboxAttributes</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__2">array of strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-08a__entry__3">The values of these
attributes are applied to the HTML sandbox attribute for the AST iframe
(or safeframe) ad containers when the appropriate <code
class="ph codeph">andboxAdIframe</code> setting is set to true. For
suitable values to include in this array, please see the HTML sandbox
documentation. If enabled, it is advised to include at least <code
class="ph codeph">allow-same-origin</code> and <code
class="ph codeph">allow-scripts</code> to ensure that the contents of
the iframe may function properly (omitting these values may result in
some warnings in the browser console).</td>
</tr>
</tbody>
</table>



**userSync Object**

<div id="ID-00001923__p-d3295c10-db8d-4bd3-bb8f-d84183d4bd51" >



Note: For more details about `userSync`
object, go to <a href="user-sync.html" class="xref">User Sync</a> page.





<div id="ID-00001923__p-c6932867-27ba-44ec-b37b-e7d93b8afa1c" >

<table id="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__1"
class="entry align-center colsep-1 rowsep-1">Parameter</th>
<th
id="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__1"><code
class="ph codeph">syncEnabled</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__3"><p>Enables
or disables the logic in AST that loads the <code
class="ph codeph">userSync</code> script after the auction ends.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__1"><code
class="ph codeph">syncDelay</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__3"><p>Specifies
the amount of time (in milliseconds) that AST waits after the auction
ends before loading the <code class="ph codeph">userSync</code>
script.</p>
<p><strong>Default</strong>: 3000</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__1"><code
class="ph codeph">publisherId</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__3">Numeric
identifier for the publisher entity used for the auction on this page.
It includes the value that is passed to the <code
class="ph codeph">userSync</code> script, which provides more
information downstream.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__1"><code
class="ph codeph">sellerId</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001923__table-a4be271c-7027-4da8-88a5-8183a888d3db__entry__3">Numeric
identifier of the seller entity used for the auction on this page. It
includes the value that is passed to the <code
class="ph codeph">userSync</code> script, which provides more
information downstream.</td>
</tr>
</tbody>
</table>



Here's an example

``` pre
apntag.setPageOpts({
    member: 958,
    user: {
        age: 25,
        externalUid: '10',   
                userIds: [{ "type": "criteo", "id": "_fl7bV96WjZsbiUyQnJlQ3g4ckh5a1N", }, // Criteo Identifier
                  { "type": "ttd", "id": "00000111-91b1-49b2-ae37-17a8173dc36f" }, // Trade Desk Identifier
                  { "type": "netid", "id": "999888777" }, // NetID Identifier
                  { "type": "liveramp", "id": "AjfowMv4ZHZQJFM8TpiUnYEyA81Vdgg" }, //Liveramps's Identifier
                  { "type": "uid2", "id": "234123424" }, //UID2's Identifier
                  { "type": "extendedIDs", "eids": [{ "id": "abc123def345", "source": "mySampleDomain.com" }] }, // publisher first party IDs
                ], 
        segments: [1, 2],
        gender: 0,
        dnt: true,
        language: 'EN'
    }
    keywords: {
        genre: ['rock', 'pop']
    },
    disablePsa : true,
    enableSafeFrame : true,
    device : {
        deviceId : {
            idfa : 'String',
            aaid : 'String',
            md5udid : 'String',
            sha1udid : 'String'
        },
        deviceType : 'String',
        useragent : 'String',
        geo : {
            lat : 0.4,
            lng : 0.5,
            country : 'USA',
            region : 'String',
            city : 'String',
            zip : 'String'
        },
        ip : 'String',
        make : 'String',
        model : 'String',
        os : 'String',
        osVersion : 'String',
        carrier : 'String',
        connectionType : 0,
        mcc : 'String',
        mnc : 'String',
        devTime : 12345
    },
    auctionTimeout: 3000,
    pageUrl: 'http://www.samplesite.com/testpage.html',
    trackingManagement: {
     native: {
       loadViewabilityScriptAt: 'impression'
     },
    renderingManagement: {
      insertWrapperDiv: true,
      sandboxAdIframe: true,
      sandboxAttributes: ['allow-same-origin', 'allow-scripts', 'allow-presentation']
      },
     userSync: {
       syncEnabled: true,
       syncDelay: 4000,
       publisherId: 12345,
       sellerId: 123
      }
     }
 });
```

**Geo Override Object**

Use this object to override the auction's geographic information. The
supplied country code and zip code will be used to look up all
geographic attributes to determine location.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__184" class="entry">Field</th>
<th id="ID-00001923__entry__185" class="entry">Type</th>
<th id="ID-00001923__entry__186" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001923__entry__184"><code
class="ph codeph">countryCode</code></td>
<td class="entry" headers="ID-00001923__entry__185">string</td>
<td class="entry" headers="ID-00001923__entry__186">Required. A
two-character country code.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001923__entry__184"><code
class="ph codeph">zip</code></td>
<td class="entry" headers="ID-00001923__entry__185">string</td>
<td class="entry" headers="ID-00001923__entry__186">Required. Zip code
must be at least one character.</td>
</tr>
</tbody>
</table>

Here's an example

``` pre
apntag.setPageOpts({      
  ... // other settings
  geoOverride: {
    countryCode: 'US',
    zip: '10000'
  }
})
```

**Consent Management Object**

Use this object to specify whether consent management is enabled for
compliance with the transparency, notice and choice/consent requirements
under US state privacy laws, GDPR, the ePrivacy Directive and <a
href="https://iabtechlab.com/wp-content/uploads/2019/10/CCPA_Compliance_Framework_US_Privacy_USER_SIGNAL_API_SPEC_IABTechLab_DRAFT_for_Public_Comment.pdf"
class="xref" target="_blank">IAB's U.S. Privacy User Signal Mechanism
(USP)</a>, which currently covers the
<a href="https://oag.ca.gov/privacy/ccpa" class="xref"
target="_blank">California Consumers Privacy Act (CCPA)</a>. Consent
management is enabled by default.



Warning: Important

In order for our clients to meet their transparency, notice and
choice/consent requirements under US state privacy laws, the GDPR, the
existing ePrivacy Directive, Xandr supports the
<a href="https://iabtechlab.com/gpp" class="xref" target="_blank">Global
Privacy Platform</a> (GPP) and <a
href="https://iabeurope.eu/iab-europe-transparency-consent-framework-policies/"
class="xref" target="_blank">the IAB Europe Transparency &amp; Consent
Framework</a> (the <a
href="https://iabtechlab.com/wp-content/uploads/2019/10/CCPA_Compliance_Framework_US_Privacy_USER_SIGNAL_API_SPEC_IABTechLab_DRAFT_for_Public_Comment.pdf"
class="xref" target="_blank">IAB's U.S. Privacy User Signal Mechanism
(USP)</a> will be deprecated in 2023).

This is a reference for publishers using AST to surface notice,
transparency and choice to end users located within regions covered by
the above mentioned policies and signal approved vendors and, where
necessary, pass consent, to Xandr and demand sources and their vendors
through Xandr's platform.

This resource should not be construed as legal advice and Xandr makes no
guarantees about compliance with any law or regulation. Please note that
because every company and its collection, use, and storage of personal
data is different, you should also seek independent legal advice
relating to obligations under European regulations, including the GDPR
and the existing ePrivacy Directive. Only a lawyer can provide you with
legal advice specifically tailored to your situation. Nothing in this
guide is intended to provide you with, or should be used as a substitute
for, legal advice tailored to your business.

Note our <a
href="https://microsoftapc.sharepoint.com/teams/XandrServicePolicies/SitePages/Xandr-Service-Policies.aspx"
class="xref" target="_blank">Service Policies</a> (for Buying, Selling,
and Data Providers) include privacy-specific obligations of which you
should be aware.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__193" class="entry">Parameter</th>
<th id="ID-00001923__entry__194" class="entry">Type</th>
<th id="ID-00001923__entry__195" class="entry">Description</th>
<th id="ID-00001923__entry__196" class="entry">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001923__entry__193"><code
class="ph codeph">disabled</code></td>
<td class="entry" headers="ID-00001923__entry__194">Boolean</td>
<td class="entry" headers="ID-00001923__entry__195">Set to true to
disable consent management functionality.</td>
<td class="entry" headers="ID-00001923__entry__196">False</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001923__entry__193"><code
class="ph codeph">timeout</code></td>
<td class="entry" headers="ID-00001923__entry__194">Integer</td>
<td class="entry" headers="ID-00001923__entry__195">The amount of time
(in milliseconds) to wait for the CMP to respond.</td>
<td class="entry" headers="ID-00001923__entry__196">10000</td>
</tr>
</tbody>
</table>

**Disabling Consent Management**

Xandr provides the option to disable all consent
management or individual ones per the user's needs. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001923__entry__205" class="entry">Options</th>
<th id="ID-00001923__entry__206" class="entry">Examples</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001923__entry__205">Disable all consent
management</td>
<td class="entry" headers="ID-00001923__entry__206"><pre
class="pre codeblock"><code>//disables all consent management apntag.setPageOpts({ ... // other settings consentManagement: { disabled: true, timeout: 10000 } })               </code></pre></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001923__entry__205">Disable GDPR
only</td>
<td class="entry" headers="ID-00001923__entry__206"><pre
class="pre codeblock"><code>apntag.setPageOpts({ consentManagement: { timeout: 5000, tcf : { disabled: true } } });</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00001923__entry__205">Disable GPP
only</td>
<td class="entry" headers="ID-00001923__entry__206"><pre
class="pre codeblock"><code>apntag.setPageOpts({ consentManagement: { timeout: 5000, gpp : { disabled: true } } });      </code></pre></td>
</tr>
</tbody>
</table>



The following describes the functionality of AST in supporting GPP and
GDPR compliance when consentManagement is enabled:

- During the Load Tags function call, the AST tag will attempt to fetch
  the consent data from the IAB-compliant Consent Management Platforms
  (CMP).
- When it’s time for the AST tag to call ImpBus, the consent information
  is included in the /ut POST request. Specifically, the consent
  information is stored under the POST’s data object as:



- 

  Note: The request-building process is
  paused during the above execution in order to allow new users a chance
  to complete their consent information. The process will stop waiting
  after a specified timeout period (default 10 seconds) and finish
  building the request.

  

``` pre
gdpr_consent : {
    consent_string: 'abc123',
    consent_required: true|false
},
us_privacy: "1YNY"
```

When the CMP fetch fails or the timeout period expires, the
consentManagement code will log a warning message to the browser
console, package a consent object in the following manner and include it
into the AST request as described.

``` pre
gdpr_consent : {
    consent_string: undefined,
    consent_required: undefined
},
gpp_sid: [5]
```

When AST detects TCF 2.0 it will rely on events generated by the CMP.
The consent string will be retrieved when any of the following
conditions are met: 

- The event generated is `useractioncomplete` or `tcloaded`.

- The event generated is `cmpuishown `and `purposeOneTreatment `flag is
  set to true in the available TCF string.

- The only event generated is `cmpuishown` and a time out occurs.

  In TCF v2.0 if the `gdprApplies` flag is set to true and Purpose One
  consent is not granted then AST will not include cookies in the `/ut`
  POST request.

**  
Global Privacy Platform**



In order to comply with multiple US state privacy laws, Xandr supports
the Global Privacy Platform. When AST detects GPP it will rely on events
generated by the CMP. The GPP string will be retrieved when any of the
following conditions are met:

- The event sectionChange has occurred - This event is called whenever
  the status or content of a section changes (e.g. consent is obtained).
- The cmpStatus is loaded and the cmpDisplayStatus does not equal
  visible - This means the CMP code has finished loading (out of the
  stub phase) and the CMP is not visible to the end-user (which
  typically means the CMP has prior consent information available).








