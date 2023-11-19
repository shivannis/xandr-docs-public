---
Title : Operating System Service
Description : This is a read-only service that shows you the list of operating systems
ms.date : 10/28/2023
that you can target in the <a
href="legacy-bidder-profile-service.md"
---


# Operating System Service



This is a read-only service that shows you the list of operating systems
that you can target in the <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a> via the
operating system ID.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ae3__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00008ae3__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00008ae3__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ae3__entry__2"><a
href="https://api.adnxs.com/operating-system" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/operating-system</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ae3__entry__3">The
basic service call will return a list of operating systems</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ae3__entry__2"><a
href="https://api.adnxs.com/operating-system" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/operating-system/OPERATING_SYSTEM_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ae3__entry__3">To
return a specific operating system</td>
</tr>
</tbody>
</table>





## JSON Parameters

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008ae3__entry__10"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00008ae3__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008ae3__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008ae3__entry__12">ID
of the operating system entry</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__12">Date and time the operating system
entry was last modified</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__12">Name of the operating system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__10"><code
class="ph codeph">platform_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__11">enum - "web", "mobile", or "both"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008ae3__entry__12">Describes whether the operating system
runs on web devices, mobile devices, or both</td>
</tr>
</tbody>
</table>




## Examples

To return a specific operating system

``` pre
$ curl -b cookies -c cookies  https://api.adnxs.com/operating-system/1
{
   "response":{
      "status":"OK",
      "operating-system":{
         "id":1,
         "name":"Windows 7",
         "last_modified":"2010-06-30 19:38:01"
      },
      "count":1,
      "start_element":null,
      "num_elements":null
   }
}
```




## Related Topics

- <a href="impression-bus-api.md" class="xref">Impression Bus API</a>
- <a href="api-services.md" class="xref">API Services</a>






