---
Title : Creative Custom Request Partner Service
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
ms.custom: digital-platform-api
Monetize Ad Server customers.
---


# Creative Custom Request Partner Service





<b>Note:</b> Mediation is available only to
Monetize Ad Server customers.



  
This service is used to define custom request partners that sellers on
our platform can send ad requests to via mediation. Custom request
partners are usually ad networks that are not connected to our exchange,
but that sellers on our platform would like to sell to nonetheless.

Custom request partners can be integrated with either:



- All members, meaning any member can send mediation ad requests to this
  partner.
- A single, specific member only. This means that only that member can
  send mediation ad requests to this partner.



Most custom request partners are made available for all members to sell
to (as of the time of this writing in Q3 2014).

This service allows you to define many of the necessary details involved
with integrating an external network with our systems. It works in
concert with the <a
href="mediation-services.md"
class="xref" target="_blank">Mediated Bid Service</a>, <a
href="mediated-network-service.md"
class="xref" target="_blank">Mediated Network Service</a>, and others.
For more information, see the pages listed in the Related Topics
section.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001447__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001447__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001447__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-partner"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-partner</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__3">View
all partners</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-partner?id=NETWORK_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-partner?id=NETWORK_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__3">View
a specific partner</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-partner"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-partner</a><br />
(+ JSON payload)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__3">Create a new partner</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-partner?id=NETWORK_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-partner?id=NETWORK_ID</a><br />
(+ JSON payload)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__3">Update a partner</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-partner?id=NETWORK"
class="xref" target="_blank"><code
class="ph codeph">https://api.</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">.com/creative-custom-request-partner?</code></a><a
href="https://api.appnexus.com/creative-custom-request-partner?id=NETWORK_ID"
class="xref" target="_blank">id=NETWORK_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__3">Delete a partner</td>
</tr>
</tbody>
</table>





##   JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001447__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001447__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001447__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__21">The
unique identification number of the custom partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__21">The
name of the partner.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">macro_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__21">Indicates the type of macros used to
define the partner. Allowed values:
<ul>
<li><code class="ph codeph">standard</code>: The integration is not via
a user-defined <strong>Custom Network,</strong> and has access to our
standard creative macros to build the request. This can include
supported SDK integrations.</li>
<li><code class="ph codeph">customsdk</code>: The integration is with a
user-created <strong>Custom Mobile Network.</strong></li>
<li><code class="ph codeph">customweb</code>: The integration is with a
user-created <strong>Custom Web Network.</strong></li>
<li><code class="ph codeph">customvideo</code>: The integration is with
a user-created <strong>Custom Video Network.</strong></li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">standard</code> </p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__21">Determines who can use this custom
creative request partner. A value of <code class="ph codeph">0</code>
indicates that any member can integrate with (i.e., use mediation to
sell to) this partner. If the value is a particular non-zero member ID,
the partner is only available to that member.
<p><strong>Default:</strong> <code class="ph codeph">0</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__21"><strong>Read Only.</strong> The date
and time that this record was last changed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">creative_custom_request_partner_credentials</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__21">This array contains information about
the authentication credentials required for this custom request partner.
This can be <code class="ph codeph">null</code> if no credential
information is required. See <a
href="creative-custom-request-partner-service.md#ID-00001447__Creative_Custom_Request_Partner_Credentials"
class="xref">Creative Custom Request Partner Credentials</a> below for
more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">creative_custom_request_partner_integration</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__21">This array indicates whether the
partner is supported and active. This can be <code
class="ph codeph">null</code> if no integration information is required.
See <a
href="creative-custom-request-partner-service.md#ID-00001447__CreativeCustomRequestIntegration"
class="xref">Creative Custom Request Integration</a> below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__19"><code
class="ph codeph">creative_custom_request_templates</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__20">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__21">This array contains details about the
macros that will be used by this custom partner. This can be <code
class="ph codeph">null</code> if no macro information is required. See
<a
href="creative-custom-request-partner-service.md#ID-00001447__CreativeCustomRequestTemplate"
class="xref">Creative Custom Request Template</a> below for more
details.</td>
</tr>
</tbody>
</table>

**Creative Custom Request Partner Credentials**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001447__entry__46"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001447__entry__47"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001447__entry__48"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__48">The
unique ID of this set of partner credentials.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code
class="ph codeph">creative_custom_request_partner_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__48">The
ID of the custom request partner that these credentials are associated
with.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__48">The
name of this particular credential object, e.g., <code
class="ph codeph">"username"</code>, <code
class="ph codeph">"password"</code>. This is not limited to usernames or
passwords; it could also be an Oauth key.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code
class="ph codeph">is_required</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__48">Indicates whether this credentials
field is required.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code
class="ph codeph">is_obscured</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__48">Tells  whether
to obscure this field from the user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__48"><strong>Read Only.</strong> The date
and time when this record was last changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__46"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__47">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__48">Indicates the type of value that this
parameter will accept. The values are the same as those specified in the
<code class="ph codeph">type</code> field of the <a
href="xandr-api-internal/creative-custom-request-template-service.md"
class="xref" target="_blank">Creative Custom Request Template
Service</a>'s <code class="ph codeph">macro</code> object, since the
credentials functionality is designed and implemented in terms of
template macros:
<ul>
<li><code class="ph codeph">decimal</code></li>
<li><code class="ph codeph">integer</code></li>
<li><code class="ph codeph">select_from_list</code></li>
<li><code class="ph codeph">"string"</code></li>
<li><code class="ph codeph">string_list</code></li>
<li><code class="ph codeph">true_false</code></li>
<li><code class="ph codeph">url</code></li>
</ul>
<p>The default value is <code
class="ph codeph">"string"</code>.</p></td>
</tr>
</tbody>
</table>

**Creative Custom Request Integration**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001447__entry__70"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001447__entry__71"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001447__entry__72"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__72">The
unique ID associated with this partner's integration information.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code
class="ph codeph">creative_custom_request_partner_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__72">The
custom request partner associated with this integration
information.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code
class="ph codeph">supported</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__72">This is set to <code
class="ph codeph">true</code> if we support pulling data from this
network for use in our publisher reporting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__72">Whether we are currently able to
collect data from the partner or not. In other words, whether we are
able to log in to this network's systems.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__72"><strong>Read Only.</strong> The date
and time when this record was last changed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code
class="ph codeph">data_timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__72">The
time zone used by the reporting system that we pulled the data
from.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__70"><code
class="ph codeph">data_granularity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001447__entry__71">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001447__entry__72">How
often we pull data from the external partner. Allowed values:
<ul>
<li><code class="ph codeph">daily</code></li>
<li><code class="ph codeph">hourly</code></li>
</ul></td>
</tr>
</tbody>
</table>

**Creative Custom Request Template**

For a list of this object's fields and their definitions, see the <a
href="xandr-api-internal/creative-custom-request-template-service.md"
class="xref" target="_blank">Creative Custom Request Template
Service.</a>





## Examples

**View all Custom Partners**

``` pre
{code}$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-custom-request-partner'
{
    "response":{
        "status":"OK",
        "count":19,
        "start_element":0,
        "num_elements":100,
        "creative-custom-request-partners":[
            {
                "id":1,
                "name":"unknown",
                "macro_type":"standard",
                "member_id":null,
                "last_modified":"2014-03-21 21:43:33",
                "creative_custom_request_partner_credentials":null,
                "creative_custom_request_partner_integration":null,
                "creative_custom_request_templates":[
                    {
                        "id":14,
                        "name":null,
                        "type_id":6,
                        "creative_custom_request_partner_id":1,
                        "member_id":0,
                        "hostname":null,
                        "uri":null,
                        "port":80,
                        "is_post":false,
                        "content":"[ { \"tag\":\"#{TAG}\" } ] ",
                        "timeout_ms":0,
                        "is_client":true,
                        "last_modified":"2014-03-18 13:30:44",
                        "macros":[
                            {
                                "id":68,
                                "template_id":14,
                                "code":"TAG",
                                "name":"TAG",
                                "type":"string",
                                "is_required":false,
                                "last_modified":"2014-03-18 13:30:44"
                            }
                        ]
                    },
                    {
                        "id":39,
                        "name":null,
                        "type_id":6,
                        "creative_custom_request_partner_id":1,
                        "member_id":0,
                        "hostname":null,
                        "uri":null,
                        "port":80,
                        "is_post":false,
                        "timeout_ms":0,
                        "is_client":true,
                        "last_modified":"2014-04-29 20:25:04",
                        "macros":null
                    },
                    {
                        "id":40,
                        "name":"Millennial Media Async",
                        "type_id":6,
                        "creative_custom_request_partner_id":1,
                        "member_id":0,
                        "hostname":null,
                        "uri":null,
                        "port":80,
                        "is_post":false,
                        "content":"[ { \"tag\":\"document.write('window.async = true; var cb = function(adFilled) { window.async = false; if (!adFilled) ADNXSMediation.noAd(); setTimeout(function(){ ADNXSMediation.next() }, 0); } ; window.mmAPI.placeAd({ containerElementId: \\\"adContainer\\\", apid: \\\"#{APID} \\\", placementType: \\\"inline\\\", width: ${WIDTH}, height: ${HEIGHT}, allowLocation: #{LOC} }, cb);');\" } ] ",
                        "timeout_ms":0,
                        "is_client":true,
                        "last_modified":"2014-05-27 19:45:45",
                        "macros":[
                            {
                                "id":118,
                                "template_id":40,
                                "code":"APID",
                                "name":"APID",
                                "type":"string",
                                "is_required":true,
                                "last_modified":"2014-05-27 19:45:45"
                            },
                            {
                                "id":119,
                                "template_id":40,
                                "code":"LOC",
                                "name":"Allow Location",
                                "type":"true_false",
                                "is_required":true,
                                "last_modified":"2014-05-27 19:45:45"
                            }
                        ]
                    },
                    {
                        "id":41,
                        "name":"Millennial Media Async",
                        "type_id":6,
                        "creative_custom_request_partner_id":1,
                        "member_id":0,
                        "hostname":null,
                        "uri":null,
                        "port":80,
                        "is_post":false,
                        "content":"[ { \"tag\": \"http:\/\/s3.amazonaws.com\/APN-test\/millennial-web-2.js\", \"vars\":\"var APN={ } ;APN.apid='#{APID} ';APN.w=${WIDTH} ;APN.h=${HEIGHT} ;APN.loc=#{ LOC } ;\", \"width\":${WIDTH}, \"height\":${HEIGHT} } ] ",
                        "timeout_ms":0,
                        "is_client":true,
                        "last_modified":"2014-05-30 13:28:41",
                        "macros":[
                            {
                                "id":120,
                                "template_id":41,
                                "code":"APID",
                                "name":"APID",
                                "type":"string",
                                "is_required":true,
                                "last_modified":"2014-05-27 20:09:25"
                            },
                            {
                                "id":121,
                                "template_id":41,
                                "code":"LOC",
                                "name":"Allow Location",
                                "type":"true_false",
                                "is_required":true,
                                "last_modified":"2014-05-27 20:09:25"
                            }
                        ]
                    },
                    {
                        "id":42,
                        "name":"Millennial Media Async",
                        "type_id":6,
                        "creative_custom_request_partner_id":1,
                        "member_id":0,
                        "hostname":null,
                        "uri":null,
                        "port":80,
                        "is_post":false,
                        "content":"[ { \"tag\": \"document.write(\\\" window.async = true; var cb = function(adFilled) { window.async = false;  if (!adFilled) ADNXSMediation.noAd();  setTimeout(function(){ ADNXSMediation.next() }, 0); } ; window.mmAPI.placeAd({ containerElementId: \\\\\"adContainer\\\\\", apid: \\\\\"#{APID} \\\\\", placementType: \\\\\"inline\\\\\", width: #{WIDTH}, height: #{HEIGHT}, allowLocation: #{LOC} }, cb);\\\");\" } ] ",
                        "timeout_ms":0,
                        "is_client":true,
                        "last_modified":"2014-05-27 21:31:29",
                        "macros":[
                            {
                                "id":122,
                                "template_id":42,
                                "code":"APID",
                                "name":"APID",
                                "type":"string",
                                "is_required":true,
                                "last_modified":"2014-05-27 21:31:29"
                            },
                            {
                                "id":123,
                                "template_id":42,
                                "code":"LOC",
                                "name":"Allow Location",
                                "type":"true_false",
                                "is_required":true,
                                "last_modified":"2014-05-27 21:31:29"
                            }
                        ]
                    }
                ]
            },
            {
                "id":17,
                "name":"inMobi",
                "macro_type":"standard",
                "member_id":null,
                "last_modified":"2014-04-23 22:24:46",
                "creative_custom_request_partner_credentials":[
                    {
                        "id":42,
                        "creative_custom_request_partner_id":17,
                        "name":"username",
                        "is_required":true,
                        "is_obscured":false,
                        "last_modified":"2014-04-23 22:24:46",
                        "type":"string"
                    },
                    {
                        "id":43,
                        "creative_custom_request_partner_id":17,
                        "name":"password",
                        "is_required":true,
                        "is_obscured":true,
                        "last_modified":"2014-04-23 22:24:46",
                        "type":"string"
                    }
                ],
                "creative_custom_request_partner_integration":[
                    {
                        "id":15,
                        "creative_custom_request_partner_id":17,
                        "supported":true,
                        "active":true,
                        "last_modified":"2014-05-13 19:29:42",
                        "data_timezone":"GMT",
                        "data_granularity":"daily"
                    },
                    {
                        "id":39,
                        "creative_custom_request_partner_id":17,
                        "supported":true,
                        "active":true,
                        "last_modified":"2014-05-13 19:29:45",
                        "data_timezone":"GMT",
                        "data_granularity":"daily"
                    }
                ],
                "creative_custom_request_templates":null
            },
}
{code}
```

**View Custom Partners Associated with a Specific Member**

``` pre
{code}
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-custom-request-partner?id=17'    
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "creative-custom-request-partner":{
            "id":17,
            "name":"inMobi",
            "macro_type":"standard",
            "member_id":null,
            "last_modified":"2014-04-23 22:24:46",
            "creative_custom_request_partner_credentials":[
                {
                    "id":42,
                    "creative_custom_request_partner_id":17,
                    "name":"username",
                    "is_required":true,
                    "is_obscured":false,
                    "last_modified":"2014-04-23 22:24:46",
                    "type":"string"
                },
                {
                    "id":43,
                    "creative_custom_request_partner_id":17,
                    "name":"password",
                    "is_required":true,
                    "is_obscured":true,
                    "last_modified":"2014-04-23 22:24:46",
                    "type":"string"
                }
            ],
            "creative_custom_request_partner_integration":[
                {
                    "id":15,
                    "creative_custom_request_partner_id":17,
                    "supported":true,
                    "active":true,
                    "last_modified":"2014-05-13 19:29:42",
                    "data_timezone":"GMT",
                    "data_granularity":"daily"
                },
                {
                    "id":39,
                    "creative_custom_request_partner_id":17,
                    "supported":true,
                    "active":true,
                    "last_modified":"2014-05-13 19:29:45",
                    "data_timezone":"GMT",
                    "data_granularity":"daily"
                }
            ],
            "creative_custom_request_templates":null
        }
    }
}           
}
{code}
```

**Create a Custom Partner**

``` pre
{code}$ cat create-custom-creative-request-partner-service.json
{
    "creative-custom-request-partner": {
        "name": "Fred's Company",
        "macro_type": "standard"
    }
}
$ curl -b cookies -c cookies -X POST -d @custom-creative-request-partner-service.json 'https://api.appnexus.com/creative-custom-request-partner'
 
{
    "response":{
        "status":"OK",
        "count":1,
        "id":49,
        "start_element":0,
        "num_elements":100,
        "creative-custom-request-partner":{
            "id":49,
            "name":"Fred's Company",
            "macro_type":"standard",
            "member_id":null,
            "last_modified":"2014-06-02 17:55:27",
            "creative_custom_request_partner_credentials":null,
            "creative_custom_request_partner_integration":null,
            "creative_custom_request_templates":null
        }
    }
}
{code}
```

**Edit a Custom Partner**

``` pre
{code}$ cat edit-custom-creative-request-partner-service.json
{
    "creative-custom-request-partner":{
        "member_id": 3261
    }
}
$ curl -b cookies -c cookies -X PUT -d @edit-ccr-partner-service.json 'https://api.appnexus.com/creative-custom-request-partner?id=17'
{
    "response":{
        "status":"OK",
        "count":1,
        "id":"17",
        "start_element":0,
        "num_elements":100,
        "creative-custom-request-partner":{
            "id":17,
            "name":"inMobi",
            "macro_type":"standard",
            "member_id":3261,
            "last_modified":"2014-06-03 14:36:49",
            "creative_custom_request_partner_credentials":[
                {
                    "id":42,
                    "creative_custom_request_partner_id":17,
                    "name":"username",
                    "is_required":true,
                    "is_obscured":false,
                    "last_modified":"2014-04-23 22:24:46",
                    "type":"string"
                },
                {
                    "id":43,
                    "creative_custom_request_partner_id":17,
                    "name":"password",
                    "is_required":true,
                    "is_obscured":true,
                    "last_modified":"2014-04-23 22:24:46",
                    "type":"string"
                }
            ],
            "creative_custom_request_partner_integration":[
                {
                    "id":15,
                    "creative_custom_request_partner_id":17,
                    "supported":true,
                    "active":true,
                    "last_modified":"2014-05-13 19:29:42",
                    "data_timezone":"GMT",
                    "data_granularity":"daily"
                },
                {
                    "id":39,
                    "creative_custom_request_partner_id":17,
                    "supported":true,
                    "active":true,
                    "last_modified":"2014-05-13 19:29:45",
                    "data_timezone":"GMT",
                    "data_granularity":"daily"
                }
            ],
            "creative_custom_request_templates":null
        }
    }
}            
{code}
```

**Delete a Custom Partner**

``` pre
{code}$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/creative-custom-request-partner?id=49'
{
    "response": {
        "status":"OK",
        ...
    }
}
{code}
```





## Related Topics



- <a
  href="mediated-bid-service.md"
  class="xref" target="_blank">Mediated Bid Service</a>
- <a
  href="mediated-network-service.md"
  class="xref" target="_blank">Mediated Network Service</a>
- <a
  href="xandr-api-internal/creative-custom-request-template-service.md"
  class="xref" target="_blank">Creative Custom Request Template
  Service</a>
- <a
  href="xandr-api-internal/creative-custom-request-template-type-service.md"
  class="xref" target="_blank">Creative Custom Request Template Type
  Service</a>
- <a
  href="xandr-api-internal/creative-custom-request-template-parameters.md"
  class="xref" target="_blank">Creative Custom Request Template
  Parameters</a>
- <a
  href="creative-template-service.md"
  class="xref" target="_blank">Creative Template Service</a>
- <a
  href="creative-service.md"
  class="xref" target="_blank">Creative Service</a>








