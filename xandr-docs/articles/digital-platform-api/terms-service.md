---
Title : Terms Service
Description: This service is used to record Tango member's acceptance of the Tango usage terms of service. Although this service was created to support a
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Terms Service

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.

This service is used to record Tango member's acceptance of the Tango
usage terms of service. Although this service was created to support a
current Tango need, it may be used in the future for other terms of
service needs.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000042a6__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000042a6__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000042a6__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__2"><a
href="https://api.appnexus.com/terms-of-service" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/terms-of-service</a>
<p><br />
(add_TOS JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__3">Add
a new terms of service acceptance record</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__2"><a
href="https://api.appnexus.com/terms-of-service" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/terms-of-service</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__3">View
all terms of service records</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__2"><a
href="https://api.appnexus.com/terms-of-service?id=TERMS_OF_SERVICE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/terms-of-service?id=TERMS_OF_SERVICE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__3">View
a specific terms of service record</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__2"><a
href="https://api.appnexus.com/terms-of-service/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/terms-of-service/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>







<b>Note:</b> The calls below are visible to
Xandr Employees only. These calls can only be
made my administrators.





<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000042a6__entry__16" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000042a6__entry__17"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000042a6__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__16"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__17"><a
href="https://api.appnexus.com/terms-of-service?id=TERMS_OF_SERVICE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/terms-of-service?id=TERMS_OF_SERVICE_ID</a>
<p>(modify_TOS JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__18">Modify a terms of service record.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__16"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__17"><a
href="https://api.appnexus.com/terms-of-service?id=TERMS_OF_SERVICE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/terms-of-service?id=TERMS_OF_SERVICE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__18">Delete a terms of service record.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000042a6__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000042a6__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000042a6__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__27">The
ID of the terms of service record.
<p><strong>Default:</strong> Auto-generated number</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__25"><code
class="ph codeph">user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__27">The
ID of the user that has accepted the terms of service.
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__25"><code
class="ph codeph">terms_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__27">The
name of the terms of service that were accepted. Currently this should
only be Tango related terms of service.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__25"><code
class="ph codeph">date_accepted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__26">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__27">The
date the terms of service were accepted.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__25"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000042a6__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000042a6__entry__27">The
date the record was last modified.</td>
</tr>
</tbody>
</table>





## Examples



**Add a record of accepted terms of service**

``` pre
$ cat add_TOS
{
 "terms_of_service":
  {
    "user_id" : 1066,
    "terms_name" : "Test Terms",
    "date_accepted" : "2013-01-16 00:10:00"
  }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @add_TOS.json "https://api.appnexus.com/terms-of-service"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 19,
    "terms_of_service": {
      "id": 19,
      "user_id": 1066,
      "terms_name": "Test Terms",
      "date_accepted": "2013-01-16 00:10:00",
      "last_modified": "2013-10-09 15:43:53"
    },
  }
}
```

**View all terms of service records**

``` pre
$ curl -b cookies -c cookies "http://sand.api.appnexus.com/terms-of-service"
{
  "response": {
    "status": "OK",
    "count": 8,
    "terms_of_services": [
      {
        "id": 1,
        "user_id": 3920,
        "terms_name": "",
        "date_accepted": "0000-00-00 00:00:00",
        "last_modified": "2013-10-01 21:31:45"
      },
      {
        "id": 5,
        "user_id": 3920,
        "terms_name": "\"hey\"",
        "date_accepted": "2013-10-02 00:00:00",
        "last_modified": "2013-10-01 21:35:10"
      },
      {
        "id": 6,
        "user_id": 3920,
        "terms_name": "v1",
        "date_accepted": "0000-00-00 00:00:00",
        "last_modified": "2013-10-01 22:20:44"
      },
      {
        "id": 11,
        "user_id": 3920,
        "terms_name": "\"v1\"",
        "date_accepted": "0000-00-00 00:00:00",
        "last_modified": "2013-10-01 22:37:09"
      },
      {
        "id": 16,
        "user_id": 5870,
        "terms_name": "hey",
        "date_accepted": "2013-10-01 00:00:00",
        "last_modified": "2013-10-03 19:11:34"
      },
      {
        "id": 17,
        "user_id": 5870,
        "terms_name": "v1",
        "date_accepted": "2013-10-01 00:00:00",
        "last_modified": "2013-10-03 19:19:12"
      },
      {
        "id": 18,
        "user_id": 5870,
        "terms_name": "v0",
        "date_accepted": "2013-10-03 17:10:40",
        "last_modified": "2013-10-04 00:22:40"
      },
      {
        "id": 19,
        "user_id": 1066,
        "terms_name": "Test Terms",
        "date_accepted": "2013-01-16 00:10:00",
        "last_modified": "2013-10-09 15:43:53"
      }
    ],
  }
}
```

**View a specific terms of service record**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/terms-of-service?id=19"
{
  "response": {
    "status": "OK",
    "count": 1,
    "terms_of_service": {
      "id": 19,
      "user_id": 1066,
      "terms_name": "Test Terms",
      "date_accepted": "2013-01-16 00:10:00",
      "last_modified": "2013-10-09 15:43:53"
    },
  }
}
```



<b>Note:</b> The examples below are visible to
Xandr employees only. These calls can only be
made my administrators.

**Modify a terms of service record**

``` pre
$ cat modify_TOS
{
 "terms_of_service":
  {
    "terms_name" : "Usage Terms of Service"
  }
}
$ curl -b cookies -c cookies -X PUT -d @modify_TOS.json "https://api.appnexus.com/terms-of-service?id=19"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 19,
    "terms_of_service": {
      "id": 19,
      "user_id": 1066,
      "terms_name": "Usage Terms of Service",
      "date_accepted": "2013-01-16 00:10:00",
      "last_modified": "2013-10-09 15:43:53"
    },
  }
}
```

**Delete a terms of service record**

``` pre
$ curl -b cookies -c cookies -X DELETE "https://api.appnexus.com/terms-of-service?id=19"
{
  "response": {
    "status": "OK",
    "count": 1,
  }
}
```








