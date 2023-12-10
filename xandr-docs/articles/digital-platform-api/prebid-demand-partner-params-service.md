---
Title : Prebid Demand Partner Params Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
>
The Prebid Demand Partner Params Service allows users to view, add,
remove, enable, and disable specific partners on PSP configurations.
---


# Prebid Demand Partner Params Service



>

The Prebid Demand Partner Params Service allows users to view, add,
remove, enable, and disable specific partners on PSP configurations.
Configurations are managed via the <a
href="config-service.md"
class="xref" target="_blank">Config Service</a> . A demand partner must
be enabled in the <a
href="cross-partner-settings-service.md"
class="xref" target="_blank">Cross-Partner Settings Service</a> to
receive requests.



<b>Note:</b> While a partner may be disabled
via this service at the configuration level, any future changes to the
partner in the <a
href="cross-partner-settings-service.md"
class="xref" target="_blank">Cross-Partner Settings Service</a> will
override individual configurations and enable/disable the partner across
all configurations. Details on the parameters supported by each partner
can be found in the <a
href="demand-partner-schema-service.md"
class="xref" target="_blank">Demand Partner Schema Service</a>.







## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="prebid-demand-partner-params-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="prebid-demand-partner-params-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="prebid-demand-partner-params-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__2"><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__3">Get all Prebid
demand partner configs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__2"><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params?prebid_settings_id=%7Bprebid_settings_id"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params?prebid_settings_id={prebid_settings_id}</a><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params?prebid_settings_id=%7Bprebid_settings_id%7D&amp;member_id=%7Bmember_id"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params?prebid_settings_id={prebid_settings_id}&amp;member_id={member_id</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__3">Get all Prebid
demand partners for a specific Prebid setting.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__2"><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params/%7BprebidDemandPartnerParamId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params/{prebidDemandPartnerParamId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__3">Get a specific
Prebid demand partner config. Include the prebidSettingsId as the last
URL path component.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__2"><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__3">Create new
demand partner parameters. See <a
href="#prebid-demand-partner-params-service__prebid-demand-partner-params-service-post"
class="xref">POST</a> section below for cURL example and response.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__2"><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params/%7BprebidDemandPartnerParamId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params/{prebidDemandPartnerParamId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__3">Update an
existing Prebid demand partner config.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__2"><a
href="https://api.appnexus.com/prebid/prebid-demand-partner-params/%7BprebidDemandPartnerParamId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/prebid-demand-partner-params/{prebidDemandPartnerParamId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__3">Delete a
specific Prebid demand partner config. Include the prebidSettingsId as
the last URL path component.</td>
</tr>
</tbody>
</table>







## GET

Returns all or a specific Prebid demand partner config params for the
caller's member. For a specific Prebid demand partner config include the
prebidSettingsId as the last URL path component. Results are returned as
JSON.

**Example call using curl to return a specific config**

Append the config id as the last component of the URL.

``` pre
curl --header "Content-Type: application/json" https://api.appnexus.com/prebid/prebid-demand-partner-params/{prebidSettingsId}
```

**Return All Prebid Demand Partner Config Params for a Specific Prebid
Setting**

``` pre
GET https://api.appnexus.com/prebid/prebid-demand-partner-params?prebid_settings_id={prebid_settings_id}
 
//or 

GET https://api.appnexus.com/prebid/prebid-demand-partner-params?prebid_settings_id={prebid_settings_id}&member_id={member_id}
```

**Response**

A successful response will return JSON containing all the Prebid configs
for the member or the requested Prebid config.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="prebid-demand-partner-params-service__entry__22"
class="entry colsep-1 rowsep-1">Property</th>
<th id="prebid-demand-partner-params-service__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="prebid-demand-partner-params-service__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">Indicates
whether the params object for this partner has been deleted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">Indicates if
the Prebid demand partner params are enabled or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">The caller's
id.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">The most
recent modification date of the demand partner config params.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">last_modified_by</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">The person who
made the last modifications to the demand partner params.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">The caller's
member id.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">object</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">The name of
the demand partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">object</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">An object
containing the parameters supported by the partner and the mapped
values. Supported parameters <a
href="demand-partner-schema-service.md"
class="xref" target="_blank">can be found here</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__22"><code
class="ph codeph">prebid_settings_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__23">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__24">The Prebid
setting object's id.</td>
</tr>
</tbody>
</table>



**Example Response**

``` pre
[
   {
      "id":104,
      "prebid_settings_id":30,
      "name":"improvedigital",
      "member_id":7293,
      "params":{
         "size":null,
         "keyValues":null,
         "placementId":567594,
         "publisherId":null,
         "placementKey":null
      },
      "enabled":true,
      "deleted":false,
      "last_modified_by":"test123",
      "last_modified":"2019-09-03T22:48:58.135Z"
   }
]            
            
```







## POST

Enables the creation of a new Prebid Demand Partner Param object.



**Example call using curl**

``` pre
curl -d @demand-partner-params.json -X POST --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/prebid-demand-partner-params'
```



**Parameters**

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="prebid-demand-partner-params-service__entry__52"
class="entry colsep-1 rowsep-1">Name</th>
<th id="prebid-demand-partner-params-service__entry__53"
class="entry colsep-1 rowsep-1">Type</th>
<th id="prebid-demand-partner-params-service__entry__54"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="prebid-demand-partner-params-service__entry__55"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__52"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__53">string</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__54">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__55">The name of
the Prebid demand partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__52"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__53">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__54">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__55">Indicates if
the Prebid demand partner params are enabled or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__52"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__53">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__54">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__55">The caller's
member id.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__52"><code
class="ph codeph">params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__53">object</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__54">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__55">An object
containing the parameters supported by the partner and the mapped
values. Supported parameters <a
href="demand-partner-schema-service.md"
class="xref" target="_blank">can be found here</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__52"><code
class="ph codeph">prebid_settings_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__53">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__54">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="prebid-demand-partner-params-service__entry__55">The
prebid_settings id.</td>
</tr>
</tbody>
</table>

**Example Response**

``` pre
[
   {
      "id":3333333,
      "prebid_settings_id":222222,
      "name":"appnexus",
      "member_id":11111,
      "params":{
         "placement_id":123456
      },
      "enabled":true,
      "deleted":false,
      "last_modified_by":"user@domain.com",
      "last_modified":"2023-05-01T18:23:09.045Z"
   }
]            
            
```





## PUT

Updates an existing Prebid demand partner param. Include the
prebidDemandPartnerParamId as the last component of the URL path. Pass
the update information as JSON in the body of the request.



**Example call using curl**

``` pre
curl -d @config-update.json -X PUT --header "Content-Type: application/json https://api.appnexus.com/prebid/prebid-demand-partner-params/{prebidDemandPartnerParamId}
```



**Response**

Returns a Prebid demand partner param object.





## DELETE

Delete an existing Prebid demand partner param. Include the
prebidSettingsId as the last component of the path.

**Example call using curl**

``` pre
curl -X DELETE https://api.appnexus.com/prebid/prebid-demand-partner-params/{prebidDemandPartnerParamId}
```

**Response**

On success the Prebid demand partner param object is returned as a JSON
object with the deleted property set to true. The Prebid demand partner
params will no longer be available in the system. Any sub-objects will
also be deleted.





## Related Topics

- <a
  href="demand-partner-service.md"
  class="xref" target="_blank">Demand Partner Service</a>

- <a
  href="demand-partner-schema-service.md"
  class="xref" target="_blank">Demand Partner Schema Service</a>

- <a
  href="config-service.md"
  class="xref" target="_blank">Config Service</a>

- <a
  href="monetize_monetize-standard/prebid-server-premium-demand-partner-integrations.md"
  class="xref" target="_blank">PSP Demand Partner Integrations</a>

- <a
  href="monetize_monetize-standard/add-or-edit-a-demand-partner.md"
  class="xref" target="_blank">Add or Edit a Demand Partner</a>

- <a
  href="monetize_monetize-standard/add-edit-or-delete-a-psp-configuration.md"
  class="xref" target="_blank">Add, Edit, or Delete a PSP
  Configuration</a>






