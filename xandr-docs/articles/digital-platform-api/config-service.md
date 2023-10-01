---
Title : Config Service
Description : The Config Service enables the retrieval, creation, and editing of
Prebid Server Premium (PSP) configurations. PSP configurations are
---


# Config Service



The Config Service enables the retrieval, creation, and editing of
Prebid Server Premium (PSP) configurations. PSP configurations are
objects used to facilitate PSP spend on a particular Xandr Targeting
Object (placement, placement group, publisher). Each config has an array
of demand partner parameters attached to it, as a way to indicate which
of the external PSP demand partners should facilitate spend for that
config.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="config-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="config-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="config-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__2"><a
href="https://api.appnexus.com/prebid/config" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/config</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__3">Return all of the Prebid
configs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__2"><a
href="https://api.appnexus.com/prebid/config/%7BprebidSettingsId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/config/{prebidSettingsId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__3">Return a specific Prebid config.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__2"><a
href="https://api.appnexus.com/prebid/config" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/config</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__3">Add a new Prebid config.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__2"><a
href="https://api.appnexus.com/prebid/config/%7BprebidSettingsId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/config/{prebidSettingsId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__3">Update an existing Prebid
config.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__1"><code
class="ph codeph">PATCH</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__2"><a
href="https://api.appnexus.com/prebid/config/%7BprebidSettingsId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/config/{prebidSettingsId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__3">Update a portion of an existing
Prebid config</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__2"><a
href="https://api.appnexus.com/prebid/config/%7BprebidSettingsId"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/config/{prebidSettingsId</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="config-service__entry__3">Delete an existing Prebid
config.</td>
</tr>
</tbody>
</table>







## GET

Returns all Prebid configurations for the caller's member. Results are
returned as JSON.



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
<th id="config-service__entry__22"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="config-service__entry__23"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="config-service__entry__24"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__25"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__22"><code
class="ph codeph">status_filter</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__24">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__25">Filter results based on whether a
config is enabled or disabled. Pass the `status_filter` argument in the
query and set the value to either *enabled* or *disabled*.</td>
</tr>
</tbody>
</table>



**Example call using curl with status filter arguments**

``` pre
curl --header "Content-Type: application/json" https://api.appnexus.com/prebid/config?status_filter=enabled
```

**Example call using curl to return a specific config. Append the config
id as the last component of the URL**

``` pre
curl --header "Content-Type: application/json"https://api.appnexus.com/prebid/config/{id}
```

**Responses**

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
<th id="config-service__entry__30"
class="entry colsep-1 rowsep-1">Property</th>
<th id="config-service__entry__31"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__32"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">bidder_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">The timeout in milliseconds.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">configs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">Container with the configs objects
for the member or a specific config object. See the <a
href="config-service.html#config-service__config-service-config-properties"
class="xref">config properties</a> table below for items contained in a
config object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">If true, indicates that the config
object is not available for use but its data is still viewable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">demand_partner_settings</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">The demand partner properties. See
the <a
href="config-service.html#config-service__config-service-demand-partner-settings"
class="xref">demand partner settings</a> table below for the items
contained in the demand_partner_settings object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">A unique identifier for the config
object being returned. This id is then referred to as prebid_settings_id
in other endpoints of this API.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">The most recent modification date of
the config object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">The caller's member id.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">price_granularity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">The price bucket granularity setting
that will be used for this member. See the <a
href="config-service.html#config-service__config-service-price-granularity"
class="xref">price granularity</a> properties table for items contained
in a price_granularity object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__30"><code
class="ph codeph">total_configs</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__31">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__32">The number of configs returned.</td>
</tr>
</tbody>
</table>

**Demand Partner Settings**

<table id="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__1"><code
class="ph codeph">bid_cpm_adjustment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__2">float</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__3">Multiplier
value applied to the Demand Partner's CPM bid price to adjust how the
bids compete in auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__1"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__3">Indicates
if the demand partner has been enabled or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__3">The
id for the demand partner settings.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-d86b2b31-61c5-412b-8fc4-3bab99063653__entry__3">The
name of the demand partner.</td>
</tr>
</tbody>
</table>



**Config Properties**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="config-service__entry__75"
class="entry colsep-1 rowsep-1">Property</th>
<th id="config-service__entry__76"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__77"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">demand_partner_config_params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">Container with the demand partners'
config parameters. See the <a
href="config-service.html#config-service__config-service-demand-partner-configs-properties"
class="xref">demand partner configs properties</a> table for items
contained in a demand_partner_config_params object.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">Indicates if the config is enabled
or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The id of the config.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The most recent modification date of
the config. Formatted as date-time.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The media types associated with the
config. See the <a href="#config-service__p001" class="xref">media types
properties table</a> for items contained in a media_types object.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The member_id associated with the
config.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The name of the config.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">targeting_level_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The rank of the type of object in
the targeting hierarchy. Placement has targeting_level_code 0, placement
group is 1, publisher is 2.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">targeting_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The id of the object the
configuration is associated with. Requests will be sent to Demand
Partners when that object or an object matching the criteria is in the
request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">targeting_level_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The name of the level (example:
publisher)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">If true, indicates that the config
object is not available for use but its data is still viewable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">last_modified_by</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">The person who made the last
modifications to the demand partner params.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__75"><code
class="ph codeph">targeting_metadata</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__76">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__77">Includes modifiers for the targeting
object. See the <a href="#config-service__p-001" class="xref">Targeting
Metadata Properties</a> targeting_metadata table.</td>
</tr>
</tbody>
</table>



**Media Types**

The media type object determines which formats (currently banner,
native, and video) and ad sizes are included in the requests to demand
partners.

<table id="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__1"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__3">Demand
Partners will only receive requests for this configuration where these
ad sizes are present.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__1"><code
class="ph codeph">sizes.width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__3">Width
of the unit. For Example, 300.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__1"><code
class="ph codeph">sizes.height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__3">Height
of the unit. For Example, 250.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__1"><code
class="ph codeph">sizes.is_standard</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__3">Denotes
whether the size has been defined as standard by the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__1"><code
class="ph codeph">types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-37abcb2a-b95c-4812-9428-10325c3f59ff__entry__3">Includes
the media type(s) eligible for the configuration. Only these types will
be passed to demand partners in requests. Values are banner, native,
video.</td>
</tr>
</tbody>
</table>

<div id="config-service__p-001" >

**Targeting Metadata Properties**

<table id="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf__entry__1"><code
class="ph codeph">os_family_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-6bca4443-f67f-4c1d-935c-14141c5c5fbf__entry__3">Demand
Partners will only receive requests for this configuration where these
operating systems are present. Operating systems represented by integer
ids from the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-families-service.html"
class="xref" target="_blank">Operating-System Families Service</a>.</td>
</tr>
</tbody>
</table>





**Demand Partner Configs Properties**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="config-service__entry__141"
class="entry colsep-1 rowsep-1">Property</th>
<th id="config-service__entry__142"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__143"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">Indicates if the Demand Partner has
been enabled or disabled. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-service.html"
class="xref" target="_blank">Demand Partner Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">If true, indicates that the config
object is not available for use but its data is still viewable.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The id of the parameter mappings
for the specific demand partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The most recent modification date
of the demand_partner_config.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">last_modified_by</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The person who made the last
modifications to the demand_partner_config.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The member_id associated with the
demand_partner_config.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-demand-partner-integrations.html"
class="xref" target="_blank">Prebid bidder name</a> for the Demand
Partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The partner-specific parameters and
mapped values. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-service.html"
class="xref" target="_blank">Demand Partner Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__141"><code
class="ph codeph">prebid_settings_id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__142">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__143">The id of the config which can
contain multiple demand partner parameter mappings.</td>
</tr>
</tbody>
</table>



**Price Granularity**



Price granularity defines the CPM price buckets into which demand
partner bids will be grouped. This is defined in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/cross-partner-settings-service.html"
class="xref" target="_blank">Cross-Partner Settings Service</a>.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="config-service__entry__171"
class="entry colsep-1 rowsep-1">Property</th>
<th id="config-service__entry__172"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__173"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__171"><code
class="ph codeph">ranges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__172">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__173">Container object describing the
price granularity range.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__171"><code
class="ph codeph">ranges.max</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__172">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__173">The maximum length of the
range.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__171"><code
class="ph codeph">ranges.increment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__172">float</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__173">The amount to increment through the
range.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__171"><code
class="ph codeph">precision</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__172">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__173">The number of decimal places in the
price granularity ranges.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__171"><code
class="ph codeph">currency_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__172">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__173">The currency of the price
buckets.</td>
</tr>
</tbody>
</table>



**Pagination**



The number of responses can be limited by passing the num_elements
argument. Which element to start viewing can be set through the
start_element argument.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="config-service__entry__189"
class="entry colsep-1 rowsep-1">Field</th>
<th id="config-service__entry__190"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__191"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__189"><code
class="ph codeph">start_element</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__190">int</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__191">The number at which to start
counting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__189"><code
class="ph codeph">num_elements</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__190">int</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__191">How many elements to return. For
example start at object # 4 and return 3 objects, or # 4, 5, 6.</td>
</tr>
</tbody>
</table>



**Example call to limit to fifteen results and to start the results at
the tenth element**

The elements returned will be indexed from the 10th through the
twenty-fifth.



``` pre
GET https://api.appnexus.com/prebid/config?num_element=15&start_element=10
```





**Click to view a sample JSON response**

``` pre
{
  "bidder_timeout_ms": 750,
  "configs": [
    {
      "deleted": false,
      "demand_partner_config_params": [
        {
          "deleted": false,
          "enabled": true,
          "id": 24682,
          "last_modified": "2020-02-20T15:48:36Z",
          "last_modified_by": "auser@9325",
          "member_id": 9325,
          "name": "appnexus",
          "params": {
            "invCode": null,
            "inv_code": null,
            "keywords": null,
            "member": null,
            "placementId": null,
            "placement_id": null,
            "position": null,
            "private_sizes": null,
            "reserve": null,
            "targetingId": 4887810,
            "trafficSourceCode": null,
            "traffic_source_code": null,
            "use_pmt_rule": null
          },
          "prebid_settings_id": 5084
        },
        {
          "deleted": false,
          "enabled": true,
          "id": 24681,
          "last_modified": "2020-02-20T15:48:36Z",
          "last_modified_by": "auser@9325",
          "member_id": 9325,
          "name": "pubmatic",
          "params": {
            "adSlot": null,
            "keywords": null,
            "publisherId": "test123",
            "wrapper": null
          },
          "prebid_settings_id": 5084
        }
      ],
      "enabled": true,
      "id": 5084,
      "last_modified": "2020-02-20T15:48:36Z",
      "last_modified_by": "auser@9325",
      "media_types": {
        "sizes": [
          {
            "height": 150,
            "is_standard": false,
            "width": 180
          },
          {
            "height": 250,
            "is_standard": false,
            "width": 300
          }
        ],
        "type": "banner"
      },
      "member_id": 9325,
      "name": "Targeting Test",
      "targeting_id": 4887810,
      "targeting_level_code": 1,
      "targeting_level_name": "site",
      "targeting_metadata": {
        "os_family_ids": [
          ""
        ]
      }
    },
    
    ...
    
    {
      "deleted": false,
      "demand_partner_config_params": [
        {
          "deleted": false,
          "enabled": true,
          "id": 14370,
          "last_modified": "2020-02-14T15:17:53Z",
          "last_modified_by": "auser@9325",
          "member_id": 9325,
          "name": "pubmatic",
          "params": {
            "adSlot": "Test Slot",
            "keywords": null,
            "publisherId": "9325",
            "wrapper": null
          },
          "prebid_settings_id": 1930
        },
        {
          "deleted": false,
          "enabled": true,
          "id": 14371,
          "last_modified": "2020-02-14T15:17:53Z",
          "last_modified_by": "auser@9325",
          "member_id": 9325,
          "name": "appnexus",
          "params": {
            "invCode": null,
            "inv_code": null,
            "keywords": null,
            "member": null,
            "placementId": null,
            "placement_id": null,
            "position": null,
            "private_sizes": null,
            "reserve": null,
            "targetingId": 3589320,
            "trafficSourceCode": null,
            "traffic_source_code": null,
            "use_pmt_rule": null
          },
          "prebid_settings_id": 1930
        }
      ],
      "enabled": true,
      "id": 1930,
      "last_modified": "2020-02-14T15:17:53Z",
      "last_modified_by": "auser@9325",
      "media_types": {
        "sizes": [
          {
            "height": 600,
            "width": 160
          }
        ],
        "type": "banner"
      },
      "member_id": 9325,
      "name": "Test - Harish",
      "targeting_id": 3589320,
      "targeting_level_code": 1,
      "targeting_level_name": "site",
      "targeting_metadata": {
        "os_family_ids": [
          4
        ]
      }
    }
  ],
  "deleted": false,
  "demand_partner_settings": {
    "adform": {
      "bid_cpm_adjustment": 2,
      "enabled": true,
      "id": 102
    },
    "appnexus": {
      "bid_cpm_adjustment": 1,
      "enabled": true,
      "id": 65
    },
    "appnexus-video": {
      "bid_cpm_adjustment": 4,
      "enabled": true,
      "id": 118
    },
    ...
    "triplelift_native": {
      "bid_cpm_adjustment": 1,
      "enabled": true,
      "id": 320
    },
    "verizonmedia": {
      "bid_cpm_adjustment": 1,
      "enabled": true,
      "id": 240
    }
  },
  "id": 2,
  "last_modified": "2020-02-12T18:06:33Z",
  "member_id": 9325,
  "price_granularity": {
    "label": "Medium",
    "precision": 2,
    "ranges": [
      {
        "increment": 0.1,
        "max": 20
      }
    ]
  },
  "total_configs": 36
}
```







## POST

Enables the creation of a new config object.



**Example call using curl**

``` pre
curl -d @config.json -X POST --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/config'
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
<th id="config-service__entry__198"
class="entry colsep-1 rowsep-1">Property</th>
<th id="config-service__entry__199"
class="entry colsep-1 rowsep-1">Type</th>
<th id="config-service__entry__200"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="config-service__entry__201"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">The name of the configuration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">Indicates if the config is enabled
or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">demand_partner_config_params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">An array containing
demand_partner_config_params objects. See the <a
href="config-service.html#config-service__config-service-demand-partner-configs-properties"
class="xref">demand partner configs properties</a> table for items
contained in a demand_partner_config_params object.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">The media_types associated with the
config. See the <a
href="config-service.html#config-service__config-service-media-types"
class="xref">media type</a> properties table for items contained in a
media_type object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">targeting_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">The id of the object the
configuration is associated with. Requests will be sent to Demand
Partners when that object or an object matching the criteria is in the
request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">targeting_level_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">The rank of the type of object in
the targeting hierarchy. Placement has targeting_level_code 0, placement
group is 1, publisher is 2.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__198"><code
class="ph codeph">targeting_metadata</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__199">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__200">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__entry__201">Includes modifiers for the
targeting object. See the <a href="#config-service__p-003"
class="xref">Targeting Metadata Properties</a> table for items contained
in the targeting_metadata object.</td>
</tr>
</tbody>
</table>



<div id="config-service__p-bcf15f00-3768-460d-979b-2aa6f3c8aad9"
>

**Demand Partner Configs Properties**

<table id="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__3"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__1"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__4">If
true, indicates that the config object is not available for use but its
data is still viewable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__4">The
member_id associated with the demand_partner_config.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__4">The
<a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-demand-partner-integrations.html"
class="xref" target="_blank">Prebid bidder name</a> for the Demand
Partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__1"><code
class="ph codeph">params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__4">The
partner-specific parameters and mapped values. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-service.html"
class="xref" target="_blank">Demand Partner Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__1"><code
class="ph codeph">prebid_settings_id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-484c0038-8bb6-4ea0-bbe2-ff0217e84b20__entry__4">The
id of the config which can contain multiple demand partner parameter
mappings.</td>
</tr>
</tbody>
</table>



**Media Types**

The media type object determines which formats (currently banner,
native, and video) and ad sizes are included in the requests to demand
partners.

<table id="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__3"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__1"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__4">Demand
Partners will only receive requests for this configuration where these
ad sizes are present.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__1"><code
class="ph codeph">sizes.width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__4">Width
of the unit. For Example, 300.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__1"><code
class="ph codeph">sizes.height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__4">Height
of the unit. For Example, 250.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__1"><code
class="ph codeph">sizes.is_standard</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__4">Denotes
whether the size has been defined as standard by the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__1"><code
class="ph codeph">types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-e7bf8dd2-da3e-4bec-85aa-243ea7736d8d__entry__4">Includes
the media type(s) eligible for the configuration. Only these types will
be passed to demand partners in requests. Values are banner, native,
video.</td>
</tr>
</tbody>
</table>

<div id="config-service__p-003" >

**Targeting Metadata Properties**

<table id="config-service__table-f888b042-4a51-47b9-b07a-da845465a990"
class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th
id="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__3"
class="entry colsep-1 rowsep-1">Scope</th>
<th
id="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__1"><code
class="ph codeph">os_family_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="config-service__table-f888b042-4a51-47b9-b07a-da845465a990__entry__4">Demand
Partners will only receive requests for this configuration where these
operating systems are present. Operating systems represented by integer
ids from the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-families-service.html"
class="xref" target="_blank">Operating-System Families Service</a>.</td>
</tr>
</tbody>
</table>





**Click to view a sample JSON request**

``` pre
{
    "name": "test_configuration",
    "enabled": false,
    "demand_partner_config_params": [{
        "deleted": false,
        "enabled": true,
        "id": 7466,
        "member_id": 9325,
        "name": "rubicon",
        "params": {
            "accountId": 1001,
            "inventory": null,
            "siteId": 113932,
            "video": null,
            "visitor": null,
            "zoneId": 535510
        }
    }],
     "media_types": {
        "sizes": [
          {
            "height": 600,
            "width": 160
          }
        ],
        "type": "banner"
      }
}
```



**Response**

A successful response will return the new config object.



**Click to view a sample JSON response**

``` pre
[
  {
    "deleted": false,
    "demand_partner_config_params": [
      {
        "deleted": false,
        "enabled": true,
        "id": 24679,
        "last_modified": "2020-02-19T17:53:36.674Z",
        "last_modified_by": "azacarias@9325",
        "member_id": 9325,
        "name": "rubicon",
        "params": {
          "accountId": 1001,
          "inventory": null,
          "siteId": 113932,
          "video": null,
          "visitor": null,
          "zoneId": 535510
        },
        "prebid_settings_id": 5083
      },
      {
        "deleted": false,
        "enabled": true,
        "id": 24680,
        "last_modified": "2020-02-19T17:53:36.674Z",
        "last_modified_by": "azacarias@9325",
        "member_id": 9325,
        "name": "appnexus",
        "params": {},
        "prebid_settings_id": 5083
      }
    ],
    "enabled": false,
    "id": 5083,
    "last_modified": "2020-02-19T17:53:36.674Z",
    "last_modified_by": "azacarias@9325",
    "media_types": {
      "sizes": [
        {
          "height": 600,
          "width": 160
        }
      ],
      "type": "banner"
    },
    "member_id": 9325,
    "name": "test_configuration",
    "targeting_id": null,
    "targeting_level_code": null,
    "targeting_metadata": null
  }
]
```







## PUT

Updates an existing Prebid config. Include the prebidSettingsId as the
last component of the URL path. Pass the update information as JSON in
the body of the request.



**Example call using curl**

``` pre
curl -d @config-update.json -X PUT --header "Content-Type: application/json https://api.appnexus.com/prebid/config/{prebidSettingsId}
```



**Response**

Returns a Prebid config object.





## PATCH

Partially update an existing Prebid config. Include the prebidSettingsId
as the last component of the path. Pass the update information as JSON
in the body of the request.

**Example call using curl**

``` pre
curl -d @config-update.json -X PATCH --header "Content-Type: application/json https://api.appnexus.com/prebid/config/{prebidSettingsId}
```

**Response**

Returns a Prebid config object.





## DELETE

Delete an existing Prebid config. Include the prebidSettingsId as the
last component of the path.



**Example call using curl**

``` pre
curl -X DELETE https://api.appnexus.com/prebid/config/{prebidSettingsId}
```



**Response**

On success, the config indicated will be returned as a JSON object with
the deleted property set to true. It will no longer be available within
the system. All sub-objects will also be deleted.





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-schema-service.html"
  class="xref" target="_blank">Demand Partner Schema Service</a>

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-service.html"
  class="xref" target="_blank">Demand Partner Service</a>

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/prebid-demand-partner-params-service.html"
  class="xref" target="_blank">Prebid Demand Partner Params Service</a>

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/ad-sizes-service.html"
  class="xref" target="_blank">Ad Sizes Service</a>

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
  class="xref" target="_blank">Media Type Service</a>

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-edit-or-delete-a-psp-configuration.html"
  class="xref" target="_blank">Add, Edit, or Delete a PSP
  Configuration</a>






