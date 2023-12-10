---
Title : Mobile App Store Service
Description : The Mobile App Store Service is a **read-only** service that you can use
ms.date: 10/28/2023
ms.custom: digital-platform-api
to see all of the mobile app stores that are registered in our system.
---


# Mobile App Store Service



The Mobile App Store Service is a **read-only** service that you can use
to see all of the mobile app stores that are registered in our system.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000226b__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000226b__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000226b__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__2"><a
href="https://api.appnexus.com/mobile-app-store?id=3" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/mobile-app-store?id=3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__3">View
a single app store</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__2"><a
href="https://api.appnexus.com/mobile-app-store" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/mobile-app-store</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__3">View
all of your app stores registered in our system</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000226b__entry__10"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000226b__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000226b__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__12">The
ID of the app store.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__11">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__12">When this app store description was
last updated in our system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__12">The
name of the app store.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__10"><code
class="ph codeph">os_family_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__12">The
operating system family ID of the operating system that uses this app
store.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__10"><code
class="ph codeph">os_family_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__12">The
operating system family name of the OS that uses this app store.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__10"><code class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000226b__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000226b__entry__12">The
URL associated with the app store.</td>
</tr>
</tbody>
</table>





## Example

**See all the app stores registered in our system**

You can see all of the app stores registered in our system with a single
`GET` request:

``` pre
$ curl -b cookies https://api.appnexus.com/mobile-app-store
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "mobile-app-stores": [
            {
                "id": 1,
                "name": "Android",
                "url": "https://play.google.com",
                "last_modified": "2013-10-24 13:50:20",
                "os_family_id": 1,
                "os_family_name": "Unknown"
            }
        ],
            ...
    }
}
```





## Related Topics

- <a
  href="mobile-app-instance-service.md"
  class="xref" target="_blank">Mobile App Instance Service</a>
- <a
  href="mobile-app-instance-list-service.md"
  class="xref" target="_blank">Mobile App Instance List Service</a>
- <a
  href="mobile-app-service.md"
  class="xref" target="_blank">Mobile App Service</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>






