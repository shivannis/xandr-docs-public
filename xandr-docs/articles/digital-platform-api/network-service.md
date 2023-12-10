---
Title : Network Service
Description : Use the read-only Network Service to see what video content networks are
ms.date: 10/28/2023
ms.custom: digital-platform-api
registered in the Xandr system. Video content
---


# Network Service



Use the read-only Network Service to see what video content networks are
registered in the Xandr system. Video content
fields can be added to line item or deal line item targeting. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000023e3__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000023e3__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000023e3__entry__3"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__2">https://api.<span
class="ph">appnexus.com/video-content-network</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023e3__entry__3">To
view all defined networks</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__2">https://api.<span
class="ph">appnexus.com/video-content-network?id=&lt;id
value&gt;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023e3__entry__3">To
view a defined network</td>
</tr>
</tbody>
</table>





## JSON FIELDS

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000023e3__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000023e3__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000023e3__entry__12"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023e3__entry__12">The
Xandr referential ID associated with the
network</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023e3__entry__12">The
video taxonomy referential value
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023e3__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023e3__entry__12">The
time of last modification</td>
</tr>
</tbody>
</table>





## Example

**To retrieve all defined networks  
  
**

``` pre
curl -b cookies -c cookies "https://api.appnexus.com/video-content-network"
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-content-networks": [
      {
        "id": 1,
        "name": "Network 1",
        "last_modified": "2020-09-21 13:59:38"
      },
      {
        "id": 2,
        "name": "Network 2",
        "last_modified": "2020-09-21 13:59:39"
      }
    ],
    "count": 2,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-content-networks"
    }
  }
  }
```





## Related Topics

- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>






