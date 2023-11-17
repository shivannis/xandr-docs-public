---
Title : Delivery Type Service
Description : Use the read-only Delivery Type Service to see what video content
delivery types are registered in the Xandr
system. Video content fields can be added to line item or deal line item
---


# Delivery Type Service



Use the read-only Delivery Type Service to see what video content
delivery types are registered in the Xandr
system. Video content fields can be added to line item or deal line item
targeting. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008291__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00008291__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00008291__entry__3"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__2">https://api.<span
class="ph">adnxs.com/video-delivery-type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008291__entry__3">To
view all defined delivery types.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__2">https://api.<span
class="ph">adnxs.com/video-delivery-type?id=&lt;id value&gt;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008291__entry__3">To
view a defined delivery type.</td>
</tr>
</tbody>
</table>





## JSON FIELDS

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008291__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00008291__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008291__entry__12"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008291__entry__12">The
Xandr referential ID associated with the
delivery type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__12"><p>The video taxonomy referential
value.</p>
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008291__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008291__entry__12">The
time of last modification.</td>
</tr>
</tbody>
</table>





## Example

**To retrieve all defined delivery types  
**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/video-delivery-type"
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-delivery-types": [
      {
        "id": 1,
        "name": "Live",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 2,
        "name": "VOD",
        "last_modified": "2020-09-21 13:59:43"
      }
    ],
    "count": 2,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-delivery-types"
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






