---
Title : Sld Use Subdomain Service
Description : The Second Level Domain (SLD) Use Subdomain service is an admin-only
ms.date: 10/28/2023
ms.custom: digital-platform-api
service that allows users to add rows to the `api.sld_use_subdomain`
---


# Sld Use Subdomain Service

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.


The Second Level Domain (SLD) Use Subdomain service is an admin-only
service that allows users to add rows to the `api.sld_use_subdomain`
table. This table is consumed by adserver to let them know for which
second level domains they should track subdomains.  Please be careful
when adding or updating objects using this service.



<b>Warning:</b> \#iq-engineering must confirm
all new entries to this service. DO NOT post new entries without
confirmation.





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00003a5f__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00003a5f__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00003a5f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__2">https://api.<span
class="ph">appnexus.com/sld-use-subdomain<br />
&#10;<p>(template JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003a5f__entry__3">Add
a new entry to sld-use-subdomain</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__2"> https://api.<span
class="ph">appnexus.com/sld-use-subdomain?id=SETTING_ID

<b>Note:</b> <code
class="ph codeph">SETTING_ID</code> is an automatically generated value
for the specific table and can be retrieved via <code
class="ph codeph">GET</code><br />
&#10;<p>(template JSON)</p>
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__3">Modify an entry in
sld-use-subdomain</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__2">https://api.<span
class="ph">appnexus.com/sld-use-subdomain?id=SETTING_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__3">Delete an entry in
sld-use-subdomain</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__2">https://api.<span
class="ph">appnexus.com/sld-use-sudbomain?id=SETTING_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__3"><p>View a specific entry in
sld-use-sudbomain</p></td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003a5f__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003a5f__entry__17" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00003a5f__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003a5f__entry__18">The
ID of the sld-use-subomain record.
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE</code>, in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__16"><code
class="ph codeph">secondary_level_domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__17">string(100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003a5f__entry__18">The
domain for which to track secondary_level_domains.
<p><strong>Default:</strong> None</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__16"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__17">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003a5f__entry__18">Whether the record is active or not.
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
</tbody>
</table>





## Examples

**View all sld-use-subdomains**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/sld-use-subdomain'
{
  "response": {
    "status": "OK",
    "count": 66,
    "start_element": 0,
    "num_elements": 100,
    "sld-use-subdomains": [
      {
        "id": 1,
        "secondary_level_domain": "co.uk",
        "active": true,
        "last_activity": "2010-07-27 20:40:17"
      },
      {
        "id": 2,
        "secondary_level_domain": "live.com",
        "active": true,
        "last_activity": "2011-02-04 14:59:47"
      },
      {
        "id": 3,
        "secondary_level_domain": "msn.com",
        "active": true,
        "last_activity": "2011-03-02 20:23:00"
      },
      {
        "id": 4,
        "secondary_level_domain": "mtv.com",
        "active": true,
        "last_activity": "2011-04-26 13:50:01"
      },
      {
        "id": 5,
        "secondary_level_domain": "live.ca",
        "active": true,
        "last_activity": "2011-06-09 18:17:22"
      },
        ...
        ]
}
```



**Add a new sld-use-subdomain**

``` pre
$ cat sld-use-subdomain

{
    "sld-use-subdomain": {
        "secondary_level_domain": "newdomain.com",
        "active": true
    }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @sld-use-subdomain 'https://api.appnexus.com/sld-use-subdomain'
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 73,
    "start_element": 0,
    "num_elements": 100,
    "sld-use-subdomain": {
      "id": 73,
      "secondary_level_domain": "newdomain.com",
      "active": true,
      "last_activity": "2015-01-14 22:05:02"
    },
    "dbg_info": {
      "instance": "10.hbapi.sand-08.nym2",
      "slave_hit": false,
      "db": "master",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [
      ],
      "time": 2493.2899475098,
      "start_microtime": 1421273101.3622,
      "version": "1.15.327",
      "slave_lag": 0,
      "member_last_modified_age": 1421273101,
      "output_term": "sld-use-subdomain"
    }
  }
}
```



**Modify a sld-use-subdomain**

``` pre
$ cat sld-use-subdomain
 
{
    "sld-use-subdomain": {
        "secondary_level_domain": "newdomain.com",
        "active": true
    }
}
```



``` pre
$ curl -b cookies -c cookies -X PUT -d @template_update 'https://api.appnexus.com/template?id=73'
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 73,
    "start_element": 0,
    "num_elements": 100,
    "sld-use-subdomain": {
      "id": 73,
      "secondary_level_domain": "newdomain.com",
      "active": false,
      "last_activity": "2015-01-14 22:05:02"
    },
    "dbg_info": {
      "instance": "10.hbapi.sand-08.nym2",
      "slave_hit": false,
      "db": "master",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [
      ],
      "time": 2493.2899475098,
      "start_microtime": 1421273101.3622,
      "version": "1.15.327",
      "slave_lag": 0,
      "member_last_modified_age": 1421273101,
      "output_term": "sld-use-subdomain"
    }
  }
}
```






