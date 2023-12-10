---
Title : Config Platform Service
Description : Config Platform is an admin-only service to update very specific
ms.date: 10/28/2023
ms.custom: digital-platform-api
multi-bid settings for bidder members (stored in the
`common.config_platform` table). Please be very careful when adding or
---


# Config Platform Service



Config Platform is an admin-only service to update very specific
multi-bid settings for bidder members (stored in the
`common.config_platform` table). Please be very careful when adding or
updating objects using this service



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001381__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001381__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001381__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__2">https://api.<span
class="ph">appnexus.com/config-platform
<p>(config JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__3">Add
a new config-platform setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__2">https://api.<span
class="ph">appnexus.com/config-platform?id=CONFIG_PLATFORM_ID
<p>(config_update JSON)</p>

<b>Note:</b> <code
class="ph codeph">CONFIG_PLATFORM_ID</code> is a uniquely generated ID
for the config platform setting and can be retrieved via <code
class="ph codeph">GET</code>.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__3"><p>Modify a config-platform
setting</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__2">https://api.<span
class="ph">appnexus.com/config-platform</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__3">View
all config-platform settings</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001381__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001381__entry__14" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00001381__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__15">The
ID of the config platform setting.
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__13"><code class="ph codeph">key</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__14">varchar(256)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__15">The
key value used by adserver.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__13"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__14">varchar(16834)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__15">The
value for the given key.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__13"><code
class="ph codeph">application</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__14">varchar(256)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__15">The
application using the setting. Only <code
class="ph codeph">"impbus"</code> is supported currently.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__13"><code
class="ph codeph">json_value_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001381__entry__14">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001381__entry__15">The
type of the given value. Possible values: <code
class="ph codeph">"string"</code>, <code
class="ph codeph">"array"</code>, <code
class="ph codeph">"numeric"</code>, or <code
class="ph codeph">"boolean"</code>.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
</tbody>
</table>





## Examples

**View all config-platform settings**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/config-platform'
{
  "response": {
    "status": "OK",
    "count": 5,
    "start_element": 0,
    "num_elements": 100,
    "config-platforms": [
      {
        "id": 1,
        "key": "admarket_scale_pct",
        "value": "75",
        "instance": null,
        "application": "impbus",
        "depend": 0,
        "variation": null,
        "json_value_type": "numeric",
        "last_modified": "2013-02-18 13:57:02"
      },
      {
        "id": 2,
        "key": "threepe_bidder_id",
        "value": "55",
        "instance": null,
        "application": "impbus",
        "depend": 1,
        "variation": null,
        "json_value_type": "numeric",
        "last_modified": "2014-10-02 21:38:53"
      },
      {
        "id": 3,
        "key": "rmx_max_num_bids",
        "value": "5",
        "instance": null,
        "application": "impbus",
        "depend": 1,
        "variation": null,
        "json_value_type": "numeric",
        "last_modified": "2013-08-08 12:53:06"
      },
        ...
        ]
  }
}
```

**Modify a config-platform setting**

``` pre
$ cat config_platform_update

{
    "config-platform": {
        "value": 7
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @template_update 'https://api.appnexus.com/config-platform?id=3'
{
  "response": {
    "status": "OK",
    "count": 5,
    "start_element": 0,
    "num_elements": 100,
    "config-platform": {
        "id": 3,
        "key": "rmx_max_num_bids",
        "value": "7",
        "instance": null,
        "application": "impbus",
        "depend": 1,
        "variation": null,
        "json_value_type": "numeric",
        "last_modified": "2015-01-15 12:53:06"
        }
  }
  }
```






