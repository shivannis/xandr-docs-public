---
Title : Technical Attribute Service
Description : Use the read-only Technical Attribute Service to see what technical
ms.date : 10/28/2023
attributes are registered in the Xandr system
and can apply to creatives. Technical attributes describe features of
---


# Technical Attribute Service



Use the read-only Technical Attribute Service to see what technical
attributes are registered in the Xandr system
and can apply to creatives. Technical attributes describe features of
the creative such as whether it is an image, flash, video, is
expandable, etc. Creatives are tagged with technical attributes, and ad
profiles can be configured to include / exclude particular technical
attributes.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000907a__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000907a__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000907a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__2"><a
href="https://api.adnxs.com/technical-attribute" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/technical-attribute</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__3">To
view all technical attributes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__2"><a
href="https://api.adnxs.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__3">To
view information about a particular technical attribute</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__2"><a
href="https://api.adnxs.com/technical-attribute" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/technical-attribute</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__3">To
add a technical attribute (admin only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__2"><a
href="https://api.adnxs.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__3">To
modify a technical attribute (admin only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__2"><a
href="https://api.adnxs.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__3">To
delete a technical attribute (admin only)</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000907a__entry__19"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-0000907a__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000907a__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000907a__entry__21">The
ID of the technical attribute</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__21">Technical attribute name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000907a__entry__21">When the technical attribute was last
modified.</td>
</tr>
</tbody>
</table>




## Example

**View all technical attributes**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/technical-attribute"
{
   "response":{
      "status":"OK",
      "technical_attributes":[
         {
            "id":1,
            "name":"Image",
            "last_activity":"2010-05-19 21:43:24"
         },
         {
            "id":2,
            "name":"Flash",
            "last_activity":"2010-05-19 21:43:24"
         },
         {
            "id":3,
            "name":"Text",
            "last_activity":"2010-05-19 21:43:24"
         },
         {
            "id":4,
            "name":"Video",
            "last_activity":"2010-05-19 21:43:24"
         },
         {
            "id":5,
            "name":"DHTML",
            "last_activity":"2010-05-19 21:43:24"
         },
         {
            "id":6,
            "name":"Expandable",
            "last_activity":"2010-05-19 21:43:24"
         },
         {
            "id":7,
            "name":"Audio",
            "last_activity":"2010-05-19 21:43:25"
         }
      ],
      "count":7,
      "start_element":null,
      "num_elements":null
   }
}
```




## Related Topics

- <a href="api-services.md" class="xref">API Services</a>
- <a href="creative-api-services.md" class="xref">Creative API
  Services</a>






