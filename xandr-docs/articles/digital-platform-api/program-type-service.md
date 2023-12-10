---
Title : Program Type Service
Description : Use the read-only Program-Type Service to see what video content program
ms.date: 10/28/2023
ms.custom: digital-platform-api
types are registered in the Xandr system. Video
---


# Program Type Service



Use the read-only Program-Type Service to see what video content program
types are registered in the Xandr system. Video
content fields can be added to line item or deal line item targeting. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003277__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00003277__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00003277__entry__3"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__2">https://api.<span
class="ph">appnexus.com/video-program-type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003277__entry__3">To
view all defined program types</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__2">https://api.<span
class="ph">appnexus.com/video-program-type?id=&lt;id
value&gt;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003277__entry__3">To
view a defined program type</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003277__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003277__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003277__entry__12"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003277__entry__12">The
Xandr referential ID associated with the program
type</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003277__entry__12">The
video taxonomy referential value
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003277__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003277__entry__12">The
time of last modification</td>
</tr>
</tbody>
</table>





## Example

**To retrieve all defined program types  
  
**

``` pre
curl -b cookies -c cookies "https://api.appnexus.com/video-program-type"
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-program-types": [
      {
        "id": 1,
        "name": "Movie",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 2,
        "name": "Series",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 3,
        "name": "Special",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 4,
        "name": "Show",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 5,
        "name": "Event",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 6,
        "name": "Clip",
        "last_modified": "2020-09-21 13:59:43"
      }
    ],
    "count": 6,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-program-types"
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






