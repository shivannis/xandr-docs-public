---
Title : Member DC Setting Service
Description : Member Datacenter Setting is an admin-only service that allows users to
ms.date: 10/28/2023
ms.custom: digital-platform-api
add entries to the `api.member_dc_setting`table. This table is consumed
---


# Member DC Setting Service



Member Datacenter Setting is an admin-only service that allows users to
add entries to the `api.member_dc_setting`table. This table is consumed
by impression bus and used to configure datacenter-specific settings for
bidder members. Please be careful when modifying objects using this
service.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002c14__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002c14__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002c14__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__2">https://api.<span
class="ph">appnexus.com/member-dc-setting (datacenter_setting
JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__3">Add
a new Member Datacenter Setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__2">https://api.<span
class="ph">appnexus.com/member-dc-setting?id=DATACENTER_SETTING_ID
(datacenter_setting_update JSON)

<b>Note:</b> The <code
class="ph codeph">DATACENTER_SETTING_ID</code> is a uniquely generated
ID in the table; it's not the same as <code
class="ph codeph">member_id</code>. This value can be retrieved via
<code class="ph codeph">GET</code>.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__3">Modify a Member Datacenter Setting</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__2">https://api.<span
class="ph">appnexus.com/member-dc-setting?id=DATACENTER_SETTING_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__3">Delete a Member Datacenter Setting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__2">https://api.<span
class="ph">appnexus.com/member-dc-setting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__3">View
all Member Datacenter Settings.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__2">https://api.<span
class="ph">appnexus.com/member-dc-setting?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__3">View
a specific member's Datacenter Setting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__2">https://api.<span
class="ph">appnexus.com/member-dc-setting/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002c14__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002c14__entry__23" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00002c14__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__24">The
ID of the member datacenter setting.
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code>/<code class="ph codeph">DELETE</code>, in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__24">The
ID of the bidder member.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__22"><code
class="ph codeph">datacenter</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__23">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__24">Object containing the ID of the
datacenter for the specific setting (to see a list of datacenters, use
the Datacenter Service).
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__22"><code
class="ph codeph">default_auction_timeout_ms</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__23"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__24">The
default auction timeout for the bidder member. Can be up to <code
class="ph codeph">350</code>.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__22"><code
class="ph codeph">throttle_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c14__entry__23">decimal(5,2)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c14__entry__24">The
throttle percentage for the member. Can be between <code
class="ph codeph">0</code> and <code class="ph codeph">100</code>
percent.
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>





## Examples

**View a specific member's dc setting**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/member-dc-setting?member_id=280'
{
  "response": {
    "status": "OK",
    "count": 3,
    "start_element": 0,
    "num_elements": 100,
    "member-dc-settings": [
      {
        "id": 31,
        "member_id": 280,
        "default_auction_timeout_ms": 350,
        "throttle_pct": null,
        "last_modified": "2014-08-29 02:30:13",
        "datacenter": {
          "id": 7,
          "name": "fra1"
        }
      },
      {
        "id": 28,
        "member_id": 280,
        "default_auction_timeout_ms": 350,
        "throttle_pct": null,
        "last_modified": "2014-08-01 03:37:50",
        "datacenter": {
          "id": 8,
          "name": "sin1"
        }
      },
      {
        "id": 32,
        "member_id": 280,
        "default_auction_timeout_ms": 350,
        "throttle_pct": null,
        "last_modified": "2014-08-01 03:38:03",
        "datacenter": {
          "id": 12,
          "name": "ams3"
        }
      }
    ]
  }
}
```

**Add a member datacenter setting**

``` pre
$ cat member_dc_setting

{
    "member-dc-setting": {
        "member_id":123,
        "default_auction_timeout_ms":100,
        "datacenter":{
            "id":7
        }
    }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @template 'https://api.appnexus.com/member-dc-setting'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "member-dc-settings": [
      {
        "id": 401,
        "member_id": 123,
        "default_auction_timeout_ms": 100,
        "throttle_pct": null,
        "last_modified": "2015-01-15 02:30:13",
        "datacenter": {
          "id": 7,
          "name": "fra1"
        }
      }
    ]
  }
}
```






