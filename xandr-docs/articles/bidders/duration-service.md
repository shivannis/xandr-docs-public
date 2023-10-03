---
Title : Duration Service
Description : Use the read-only Duration Service to see what video content durations
are registered in the Xandr system. Video
---


# Duration Service



Use the read-only Duration Service to see what video content durations
are registered in the Xandr system. Video
content fields can be added to line item or deal line item targeting. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c9__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000085c9__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000085c9__entry__3"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__2">https://api.<span
class="ph">adnxs.com/video-content-duration</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c9__entry__3">To
view all defined durations.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__2">https://api.<span
class="ph">adnxs.com/video-content-duration?id=&lt;id
value&gt;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c9__entry__3">To
view a defined duration.</td>
</tr>
</tbody>
</table>





## JSON FIELDS

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000085c9__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000085c9__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000085c9__entry__12"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c9__entry__12">The
Xandr referential ID associated with the
duration.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__12"><p>The video taxonomy referential
value.</p>
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000085c9__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000085c9__entry__12">The
time of last modification.</td>
</tr>
</tbody>
</table>





## Example

**To retrieve all defined durations  
  
**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/video-content-duration"
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-content-durations": [
      {
        "id": 1,
        "name": "long-form",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 2,
        "name": "short-form",
        "last_modified": "2020-09-21 13:59:43"
      }
    ],
    "count": 2,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-content-durations"
    }
  }
  } 
```





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>






