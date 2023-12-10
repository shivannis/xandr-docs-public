---
Title : Member Multi Click Service
Description : The Member Multi Click service is an admin-only service that allows
ms.date: 10/28/2023
ms.custom: digital-platform-api
updates to the `common.member_multi_click` table. This table configures
---


# Member Multi Click Service



The Member Multi Click service is an admin-only service that allows
updates to the `common.member_multi_click` table. This table configures
members to track multiple clicks for specific cases. Please be careful
when adding or updating objects when using this service



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002ce5__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002ce5__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002ce5__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__2">https://api.<span
class="ph">appnexus.com/member-multi-click <br />
(template JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002ce5__entry__3">Add
a new member-multi-click setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__2"> https://api.<span
class="ph">appnexus.com/member-multi-click?id=MULTI_CLICK_ID*

<b>Note:</b> <code
class="ph codeph">MULTI_CLICK_ID</code> is not the member_id but a
uniquely generated id for the setting. It can be retrieved via <code
class="ph codeph">GET</code><br />
(template JSON)
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__3">Modify a member-multi-click setting</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__2">https://api.<span
class="ph">appnexus.com/member-multi-click?id=MULTI_CLICK_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__3">Delete a member-multi-click setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__2"> https://api.<span
class="ph">appnexus.com/member-multi-click</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002ce5__entry__3">View
all member-multi-click settings</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__2">https://api.<span
class="ph">appnexus.com/member-multi-click?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002ce5__entry__3">View
a specific member's multi click setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__2">https://api.<span
class="ph">appnexus.com/member-multi-click/meta<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__3"><p>Find out which fields you can filter
and sort by</p></td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002ce5__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002ce5__entry__23" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00002ce5__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002ce5__entry__24">The
ID of the member multi click.
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002ce5__entry__24">The
<code class="ph codeph">member_id</code> for which to set multiple click
tracking.
<p><strong>Default:</strong> None</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__22"><code
class="ph codeph">flag</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002ce5__entry__24">Boolean flag to enable/disable multiple
click tracking.
<p><strong>Default:</strong> True</p></td>
</tr>
</tbody>
</table>





## Examples

**View all member-multi-click settings**

``` pre
$ curl -b cookies -c cookies 'http:api.appnexus.com/member-multi-click'
{
  "response": {
    "status": "OK",
    "count": 2,
    "start_element": 0,
    "num_elements": 100,
    "member-multi-clicks": [
      {
        "id": 1,
        "member_id": "884",
        "flag": true,
        "last_modified": "2013-10-01 19:29:15",
        "created_on": "2013-10-01 19:29:15"
      },
      {
        "id": 2,
        "member_id": "1631",
        "flag": true,
        "last_modified": "2013-12-04 20:41:32",
        "created_on": "2013-12-04 20:41:32"
      }
    ],
    "dbg_info": {
      "instance": "63.bm-hbapi.prod.nym2",
      "slave_hit": false,
      "db": "master",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [
      ],
      "time": 41.685104370117,
      "start_microtime": 1421350933.2934,
      "version": "1.15.326",
      "slave_miss": "no_service_index",
      "slave_lag": 0,
      "member_last_modified_age": 1421350933,
      "output_term": "member-multi-clicks"
    }
  }
}
```



**Add a multi-click-setting for a member**

``` pre
$ cat member-multi-click

{
    "member-multi-click": {
        "member_id": 123,
        "flag": true
    }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @member-multi-click 'https://api.appnexus.com/member-multi-click'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "member-multi-click":{
        "id": 3,
        "member_id": "123",
        "flag": true,
        "last_modified": "2015-01-15 19:29:15",
        "created_on": "2013-01-15 19:29:15"
        }
}
```






