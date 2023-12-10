---
Title : ASI Member Settings Service
Description : The ASI Member Setting is an admin-only service that allows users to add
ms.date: 10/28/2023
ms.custom: digital-platform-api
entries to the `api.asi_member_settings` table. This table is consumed
---


# ASI Member Settings Service



The ASI Member Setting is an admin-only service that allows users to add
entries to the `api.asi_member_settings` table. This table is consumed
by adserver and contains configuration settings for ASI members. Please
be careful when modifying objects using this service.



## REST API



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000cf7__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000cf7__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000cf7__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__2">https://api.<span
class="ph">appnexus.com/asi-member-setting
<p>(asi_member_setting JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000cf7__entry__3">Add
a new ASI member setting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__2">https://api.<span
class="ph">appnexus.com/asi-member-setting?member_id=MEMBER_ID
<p>(asi_member_setting_update JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__3">Modify an ASI member setting</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__2">https://api.<span
class="ph">appnexus.com/asi-member-setting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000cf7__entry__3">View
all ASI member settings</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__2">https://api.<span
class="ph">appnexus.com/asi-member-setting?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000cf7__entry__3">View
a specific ASI member setting</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__2">https://api.<span
class="ph">appnexus.com/asi-member-setting/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000cf7__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000cf7__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000cf7__entry__20" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000cf7__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000cf7__entry__21">The
ID of the ASI member.
<p><strong>Required On</strong>: <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__19"><code
class="ph codeph">use_second_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__21">Setting to use second price auctions.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__19"><code
class="ph codeph">allow_cookieless</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__21">Flag to indicate whether the ASI Member
is enabled to send cookieless traffic.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__19"><code
class="ph codeph">append_pubclick</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000cf7__entry__21">Sets the <code
class="ph codeph">append_pubclick</code> field in the database.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>





## Examples

**View a specific ASI Member Setting**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/asi-member-setting?member_id=280'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "asi-member-settings": [
      {
        "member_id": 280,
        "use_second_price": true,
        "allow_cookieless": true,
        "append_pubclick": false,
        "last_activity": "2015-01-08 15:06:39"
      }
    ],
    "dbg_info": {
      "instance": "62.bm-hbapi.prod.nym2",
      "slave_hit": true,
      "db": "227.bm-mysql.prod.nym2",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [
      ],
      "time": 46.911001205444,
      "start_microtime": 1421274164.9374,
      "version": "1.15.329",
      "slave_lag": 0,
      "member_last_modified_age": 544565,
      "output_term": "asi-member-settings"
    }
  }
}
```



**Modify an ASI Member Setting**

``` pre
$ cat asi_member_setting_update

{
    "asi-member-setting": {
        "use_second_price":true
    }
}
```



``` pre
$ curl -b cookies -c cookies -X PUT -d @asi_member_setting_update 'https://api.appnexus.com/asi-member-setting?id=280'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "asi-member-settings": [
      {
        "member_id": 280,
        "use_second_price": false,
        "allow_cookieless": true,
        "append_pubclick": false,
        "last_activity": "2015-01-08 15:06:39"
      }
    ],
    "dbg_info": {
      "instance": "62.bm-hbapi.prod.nym2",
      "slave_hit": true,
      "db": "227.bm-mysql.prod.nym2",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [
      ],
      "time": 46.911001205444,
      "start_microtime": 1421274164.9374,
      "version": "1.15.329",
      "slave_lag": 0,
      "member_last_modified_age": 544565,
      "output_term": "asi-member-settings"
    }
  }
  }
```






