---
Title : Creative Custom Request Template Parameters
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
ms.custom: digital-platform-api
Monetize Ad Server customers.
---


# Creative Custom Request Template Parameters





<b>Note:</b> Mediation is available only to
Monetize Ad Server customers.



This document describes the query string parameters and creative macros
Xandr supports for use by the <a
href="xandr-api-internal/creative-custom-request-template-service.md"
class="xref" target="_blank">Creative Custom Request Template
Service.</a> For each ad server listed below, the supported parameters
and macros are listed, along with examples of their use in building a
request tailored to that ad server.



<b>Tip:</b> For those parameters which are
listed as "Not supported" below, you can use the `PT1` through `PT9`
custom macros to pass the information you require in the request.





## Millennial



<b>Note:</b> For more information, see the
<a href="https://docs.onemobilesdk.aol.com/S2S/ad-request.md"
class="xref" target="_blank">Millennial Media Ad Request
Documentation</a>.







## Required

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__3"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__1">apid</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__2">Ad
placement ID assigned by Millennial</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__3">Use
custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__4"><code
class="ph codeph">apid=#{APID</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__1">auid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__2">Unique ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__3"><code
class="ph codeph">${DEVICE_OPENUDID</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__1">ua</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__2">User
agent</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__3"><code
class="ph codeph">${USER_AGENT_ENC</code>}; User agent is also
automatically passed in the header.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__4"><code
class="ph codeph">ua=${USER_AGENT_ENC</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__1">uip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__2">User's IP address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__3"><code
class="ph codeph">${USER_IP</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__4"><code
class="ph codeph">uip=${USER_IP</code>}

<b>Note:</b> Xandr is
COPPA compliant so the last octet will be truncated as appropriate.
</td>
</tr>
</tbody>
</table>





## Optional

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__21"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__22"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__23"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__24"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__23"><code
class="ph codeph">${AGE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__24"><code
class="ph codeph">age=${AGE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__23"><code
class="ph codeph">${GENDER</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__24"><code
class="ph codeph">gender=${GENDER</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">zip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's zip code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__23"><code
class="ph codeph">${POSTAL_CODE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__24"><code
class="ph codeph">zip=${POSTAL_CODE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">marital</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's marital status</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__23">Not
supported</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__24">NOT
SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">income</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's househould income</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__23">Not
supported</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__24">NOT
SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">lat</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's latitude</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__23"><code
class="ph codeph">${GEO_LAT</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__24"><code
class="ph codeph">lat=${GEO_LAT</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__21">long</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__22">User's longitude</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__23"><code
class="ph codeph">${GEO_LON</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__24"><code
class="ph codeph">long=${GEO_LON</code>}</td>
</tr>
</tbody>
</table>





## Jumptap

**Required**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__53"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__54"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__55"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__56"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">gateway-ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">User's IP address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55">User's IP address is automatically
passed in the header.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__56">DO
NOT INCLUDE.

<b>Note:</b> ;Xandr is
COPPA compliant so the last octet will be truncated as appropriate.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">hid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">Device ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__55">Not
supported</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__56">NOT
SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">hid_sha1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">SHA1 hash of device ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55"><code
class="ph codeph">${DEVICE_SHA1</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">hid_sha1=${DEVICE_SHA1</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">idfa</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">IDFA (for iOS devices only)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55"><code
class="ph codeph">${DEVICE_APPLE_IDA</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">idfa=${DEVICE_APPLE_IDA</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">idflag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">Limit ad tracking</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__56">DO
NOT INCLUDE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">l</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">User's preferred language</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55">User's Accept-Language is automatically
passed in the header</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__56">NOT
SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">pub</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">Publisher alias assigned by
Jumptap</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__55">Use
custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">pub=#{PUB</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">site</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">Site alias asigned by Jumptap</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__55">Use
custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">site=#{SITE</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">spot</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__54">Ad
spot alias assigned by Jumptap</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__55">Use
custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">spot=#{SPOT</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">url</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__54">URL
of the page requesting the ad</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55"><code
class="ph codeph">${REFERER_URL_ENC</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">url=${REFERER_URL_ENC</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">User agent</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55"><code
class="ph codeph">${USER_AGENT_ENC</code>}; User agent is also
automatically passed in the header.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__56"><code
class="ph codeph">ua=${USER_AGENT_ENC</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__53">v</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__54">Version of the Jumptap tapLink API</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__55">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__56">DO
NOT INCLUDE</td>
</tr>
</tbody>
</table>

**Optional**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__105"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__106"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__107"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__108"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">mt-mraid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">MRAID version</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">mt-jtlib</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">Jumptap SDK version</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">a</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">Indicate whether adult ads are
allowed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108"><code
class="ph codeph">a=#{ADULT_ADS</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">client-ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's IP address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">User's IP address is automatically
passed in the header</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__108">DO
NOT INCLUDE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">country</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's country</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107"><code
class="ph codeph">${USER_COUNTRY</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108"><code
class="ph codeph">country=${USER_COUNTRY</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">ll</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's lat/long</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">{{${JUMPTAP_LAT_LONG_ENC</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">ll=${JUMPTAP_LAT_LONG_ENC}}}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">email_sha1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">SHA1 hash of email address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">mt-age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107"><code
class="ph codeph">${AGE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108"><code
class="ph codeph">mt-age=${AGE</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">mt-gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107"><code
class="ph codeph">${GENDER</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108"><code
class="ph codeph">mt-gender=${GENDER</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">mt-hhi</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's household income</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">mt-model</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">Manufacturer's model name</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">operator</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">On-deck mobile operator</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">pc</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">User's zip code</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107"><code
class="ph codeph">${POSTAL_CODE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108"><code
class="ph codeph">pc=${POSTAL_CODE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">q</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">Search terms</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__105">u</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__106">Publisher's unique ID of end-user</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__107">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__108">NOT SUPPORTED</td>
</tr>
</tbody>
</table>





## InMobi

**Required**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__169"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__170"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__171"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__172"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__169">mk-siteid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__170">Site ID assigned by InMobi</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__171">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__172"><code
class="ph codeph">mk-siteid=#{MK_SITEID</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__169">mk-carrier</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__170">User's IP address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__171"><code
class="ph codeph">${USER_IP</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__172"><code
class="ph codeph">mk-carrier=${USER_IP</code>}

<b>Note:</b> Xandr is
COPPA compliant so the last octet will be truncated as appropriate.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__169">h-user-agent</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__170">User agent</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__171"><code
class="ph codeph">${USER_AGENT_ENC</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__172"><code
class="ph codeph">h-user-agent=${USER_AGENT_ENC</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__169">mk-version</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__170">Version of the InMobi API</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__171">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__172">DO
NOT INCLUDE</td>
</tr>
</tbody>
</table>

**Optional**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__189"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__190"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__191"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__192"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">mk-ad-slot</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__190">Ad
slot ID corresponding to tag size</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__192">DO
NOT INCLUDE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">h-referer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Referer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${REFERER_URL_ENC</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">h-referer=${REFERER_URL_ENC</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">u-id-map</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Map of unique user IDs</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${INMOBI_UID_MAP</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">u-id-map=${INMOBI_UID_MAP</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">u-id-adt</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Limit ad tracking</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__192">DO
NOT INCLUDE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">u-key-ver</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Must be set to 0</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Automatically populated when u-id-map
is present</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__192">DO
NOT INCLUDE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">mk-ads</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Number of ads requested</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Automatically populated.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__192">DO
NOT INCLUDE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">ref-tag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Reporting/performance grouping
metrics</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192">NOT SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">adtype</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__190">Ad
format</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">u-latlong-accu</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">User's lat/long/accuracy.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${INMOBI_LAT_LONG_ACCU</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">u-latlong-accu=${INMOBI_LAT_LONG_ACCU</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">u-age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">User's age</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${AGE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">u-age=${AGE</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">u-gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">User's gender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${GENDER</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">u-gender=${GENDER</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">p-keywords</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Comma-separated list that describes
page content</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Not supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">tp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Third-party integration type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__192">DO
NOT INCLUDE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">d-localization</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">User locale</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${USER_LOCALE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">d-localization=${USER_LOCALE</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">d-nettype</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Type of network</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${INMOBI_NETTYPE</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">d-nettype=${INMOBI_NETTYPE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">d-orientation</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Orientation of the screen</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191"><code
class="ph codeph">${INMOBI_ORIENTATION</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__192"><code
class="ph codeph">d-orientation=${INMOBI_ORIENTATION</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__189">format</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__190">Output format</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__191">Automatically populated</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001982__entry__192">DO
NOT INCLUDE</td>
</tr>
</tbody>
</table>





## Mojiva

**Required**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001982__entry__261"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001982__entry__262"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001982__entry__263"
class="entry colsep-1 rowsep-1">Macro</th>
<th id="ID-00001982__entry__264"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__261">zone</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__262">Zone of the publisher site assigned by
Mojiva</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__263">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__264"><code
class="ph codeph">zone=#{ZONE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__261">ip</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__262">User's IP address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__263"><code
class="ph codeph">${USER_IP</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__264"><code
class="ph codeph">ip=${USER_IP</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__261">ua</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__262">User agent</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__263"><code
class="ph codeph">${USER_AGENT_ENC</code>}</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001982__entry__264"><code
class="ph codeph">ua=${USER_AGENT_ENC</code>}</td>
</tr>
</tbody>
</table>

**Optional**

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">url</td>
<td class="entry colsep-1 rowsep-1">URL of the page requesting the
ad</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${REFERER_URL_ENC</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">url=${REFERER_URL_ENC</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">key</td>
<td class="entry colsep-1 rowsep-1">Output format</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">type</td>
<td class="entry colsep-1 rowsep-1">Type of ad</td>
<td class="entry colsep-1 rowsep-1">Not supported</td>
<td class="entry colsep-1 rowsep-1">NOT SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">count</td>
<td class="entry colsep-1 rowsep-1">Number of ads requested</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">udid</td>
<td class="entry colsep-1 rowsep-1">MD5 hash of device ID</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${DEVICE_MD5</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">udid=${DEVICE_MD5</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">test</td>
<td class="entry colsep-1 rowsep-1">Retrieve test ads</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">test=#{TEST</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">timeout</td>
<td class="entry colsep-1 rowsep-1">Timeout of ad call</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">timeout=#{TIMEOUT</code>}

<b>Note:</b> The lower of the value set here
and the value defined on the template or creative will be used as the
timeout.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">creatives</td>
<td class="entry colsep-1 rowsep-1">Returns the ad with the specified
creative ID</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">creatives=#{CREATIVES</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">excreatives</td>
<td class="entry colsep-1 rowsep-1">Returns the ad excluding the
specified creative IDs</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">excreatives=#{EXCREATIVES</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">lineitems</td>
<td class="entry colsep-1 rowsep-1">Returns the creative that belongs to
the line item of the specific ID</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">lineitems=#{LINEITEMS</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">exlineitems</td>
<td class="entry colsep-1 rowsep-1">Returns the creative that does not
belong to the line item of the specific ID</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">exlineitems=#{EXLINEITEMS</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">order</td>
<td class="entry colsep-1 rowsep-1">Sorted list of line item IDs desired
to be shown first</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">order=#{ORDER</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">image</td>
<td class="entry colsep-1 rowsep-1">Used for getting the direct
image</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">image=#{IMAGE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">over_18</td>
<td class="entry colsep-1 rowsep-1">Filter ads by over 18 content</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">over_18=#{OVER_18</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">keywords</td>
<td class="entry colsep-1 rowsep-1">Filter ads by keywords</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">keywords=#{KEYWORDS</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">border</td>
<td class="entry colsep-1 rowsep-1">Show borders around banner ads</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">border=#{BORDER</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">textborder</td>
<td class="entry colsep-1 rowsep-1">Show borders around text ads</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">textborder=#{TEXTBORDER</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">paramBG</td>
<td class="entry colsep-1 rowsep-1">Background color in HEX</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">paramBG=#{PARAMBG</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">paramBORDER</td>
<td class="entry colsep-1 rowsep-1">Border color for text ads in
HEX</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">paramBORDER=#{PARAMBORDER</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">paramLINK</td>
<td class="entry colsep-1 rowsep-1">Determine the color of links in
HEX</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">paramLINK=#{PARAMLINK</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">min_size_x</td>
<td class="entry colsep-1 rowsep-1">Minimal width of ad</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">min_size_y</td>
<td class="entry colsep-1 rowsep-1">Minimal height of ad</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">size_x</td>
<td class="entry colsep-1 rowsep-1">Maximum width of ad</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">size_y</td>
<td class="entry colsep-1 rowsep-1">Maximum height of ad</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">size_required</td>
<td class="entry colsep-1 rowsep-1">Indicate whether image size info is
returned</td>
<td class="entry colsep-1 rowsep-1">Automatically populated</td>
<td class="entry colsep-1 rowsep-1">DO NOT INCLUDE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">lat</td>
<td class="entry colsep-1 rowsep-1">User's latitude</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${GEO_LAT</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">lat=${GEO_LAT</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">long</td>
<td class="entry colsep-1 rowsep-1">User's longitude</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${GEO_LON</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">long=${GEO_LON</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">country</td>
<td class="entry colsep-1 rowsep-1">User's country</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${USER_COUNTRY</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">country=${USER_COUNTRY</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">mcc</td>
<td class="entry colsep-1 rowsep-1">Mobile country code</td>
<td class="entry colsep-1 rowsep-1">Not supported</td>
<td class="entry colsep-1 rowsep-1">NOT SUPPORTED</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">mnc</td>
<td class="entry colsep-1 rowsep-1">Mobile network code</td>
<td class="entry colsep-1 rowsep-1">Not supported</td>
<td class="entry colsep-1 rowsep-1">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">region</td>
<td class="entry colsep-1 rowsep-1">User's region</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${USER_STATE</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">region=${USER_STATE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">city</td>
<td class="entry colsep-1 rowsep-1">User's city</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${USER_CITY</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">city=${USER_CITY</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">area</td>
<td class="entry colsep-1 rowsep-1">User's area code</td>
<td class="entry colsep-1 rowsep-1">Not supported</td>
<td class="entry colsep-1 rowsep-1">NOT SUPPORTED.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">dma</td>
<td class="entry colsep-1 rowsep-1">User's DMA.</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${USER_DMA</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">dma=${USER_DMA</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">zip</td>
<td class="entry colsep-1 rowsep-1">User's zip code</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">${POSTAL_CODE</code>}</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">zip=${POSTAL_CODE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">jsvar</td>
<td class="entry colsep-1 rowsep-1">Variable used to identify ad on
page</td>
<td class="entry colsep-1 rowsep-1">Not applicable</td>
<td class="entry colsep-1 rowsep-1">NOT APPLICABLE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">callback</td>
<td class="entry colsep-1 rowsep-1">JSONP callback function</td>
<td class="entry colsep-1 rowsep-1">Not applicable</td>
<td class="entry colsep-1 rowsep-1">NOT APPLICABLE</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">carrier</td>
<td class="entry colsep-1 rowsep-1">Mobile carrier name</td>
<td class="entry colsep-1 rowsep-1">Not supported</td>
<td class="entry colsep-1 rowsep-1">NOT SUPPORTED</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">track</td>
<td class="entry colsep-1 rowsep-1">Configure when impressions are
counted by Mojiva</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">track=#{TRACK</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">no_external</td>
<td class="entry colsep-1 rowsep-1">Indicate whether external ads are
allowed</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">no_external=#{NO_EXTERNAL</code>}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">imgstyle</td>
<td class="entry colsep-1 rowsep-1">Add style attribute to &lt;img&gt;
tag</td>
<td class="entry colsep-1 rowsep-1">Use custom macro</td>
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">imgstyle=#{IMGSTYLE</code>}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">encoding</td>
<td class="entry colsep-1 rowsep-1">Ad encoding</td>
<td class="entry colsep-1 rowsep-1">Not applicable</td>
<td class="entry colsep-1 rowsep-1">NOT APPLICABLE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">target</td>
<td class="entry colsep-1 rowsep-1">Change the &lt;a&gt; target for HTML
responses</td>
<td class="entry colsep-1 rowsep-1">Not applicable</td>
<td class="entry colsep-1 rowsep-1">NOT APPLICABLE</td>
</tr>
</tbody>
</table>





## Related Topics



- <a href="creative-custom-request-template-service.md"
  class="xref">Creative Custom Request Template Service</a>
- <a href="creative-custom-request-template-type-service.md"
  class="xref">Creative Custom Request Template Type Service</a>








