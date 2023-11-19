---
Title : Browser Service
Description : This is a **read-only** service that shows you the mapping between the
ms.date : 10/28/2023
browser IDs that you see in the <a
href="outgoing-bid-request-to-bidders.md"
---


# Browser Service



This is a **read-only** service that shows you the mapping between the
browser IDs that you see in the <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Request</a> and their names. For
example, you can see that
<a href="http://www.google.com/chrome/" class="xref"
target="_blank">Google Chrome</a>'s ID in our system is 8.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007631__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00007631__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00007631__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007631__entry__2"><a
href="https://api.adnxs.com/browser" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/browser</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007631__entry__3">The
basic service call will return a list of browsers available for
targeting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007631__entry__2"><a
href="https://api.adnxs.com/browser/BROWSER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/browser/BROWSER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007631__entry__3">To
return a specific browser.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007631__entry__10"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00007631__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007631__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007631__entry__12">ID
of the browser entry.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007631__entry__12">The
date and time the browser entry was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__12">Name of the browser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__10"><code
class="ph codeph">platform_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__11">enum - "web", "mobile", or "both"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007631__entry__12">Describes whether the browser runs on
web devices, mobile devices, or both.</td>
</tr>
</tbody>
</table>





## Examples

**To return a specific browser**

``` pre
$ curl -b cookies -c cookies  https://api.adnxs.com/browser/2
{
   "response":{
      "status":"OK",
      "browser":{
         "id":2,
         "name":"Firefox (all versions)",
         "last_modified":"2010-06-30 19:38:01"
      },
      "count":1,
      "start_element":null,
      "num_elements":null
   }
   }
```





## Related Topics

- <a
  href="outgoing-bid-request-to-bidders.md"
  class="xref" target="_blank">Bid Request</a>
- <a href="api-services.md" class="xref">API Services</a>
- <a
  href="bid-request---faq.md"
  class="xref" target="_blank">Bid Request - FAQ</a>






