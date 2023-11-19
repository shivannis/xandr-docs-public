---
Title : Rating Service
Description : Use the read-only Rating Service to see what video content ratings are
ms.date : 10/28/2023
registered in the Xandr system. Video content
---


# Rating Service



Use the read-only Rating Service to see what video content ratings are
registered in the Xandr system. Video content
fields can be added to line item or deal line item targeting. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ef0__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00008ef0__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00008ef0__entry__3"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__2">https://api.<span
class="ph">adnxs.com/video-content-rating</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ef0__entry__3">To
view all defined ratings</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__2">https://api.<span
class="ph">adnxs.com/video-content-rating?id=&lt;id
value&gt;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ef0__entry__3">To
view a defined rating</td>
</tr>
</tbody>
</table>





## JSON FIELDS

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ef0__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00008ef0__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008ef0__entry__12"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ef0__entry__12">The
Xandr referential ID associated with rating</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__12"><ul>
<li><strong>Required on</strong> POST/PUT</li>
</ul>
<p>The video taxonomy referential value</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ef0__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ef0__entry__12">The
time of last modification</td>
</tr>
</tbody>
</table>




## EXAMPLE

**To retrieve all defined ratings  
  
**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/video-content-rating"  
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-content-ratings": [
      {
        "id": 1,
        "name": "all",
        "last_modified": "2020-09-21 13:59:38"
      },
      {
        "id": 2,
        "name": "children",
        "last_modified": "2020-09-21 13:59:38"
      },
      {
        "id": 3,
        "name": "teens",
        "last_modified": "2020-09-21 13:59:38"
      },
      {
        "id": 4,
        "name": "young_adults",
        "last_modified": "2020-09-21 13:59:38"
      },
      {
        "id": 5,
        "name": "adults",
        "last_modified": "2020-09-21 13:59:38"
      }
    ],
    "count": 5,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-content-ratings"
    }
  }
}
```




## Related Topics



- <a
  href="xandr-api/profile-service.md"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="xandr-api/api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="xandr-api/api-semantics.md"
  class="xref" target="_blank">API Semantics</a>








