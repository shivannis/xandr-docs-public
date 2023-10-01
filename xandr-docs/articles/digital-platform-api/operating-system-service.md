---
Title : Operating System Service
Description : Note:
To retrieve operating system **versions** (Android 3.x, Apple iOS 6,
---


# Operating System Service





Note:

To retrieve operating system **versions** (Android 3.x, Apple iOS 6,
etc.), you should use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended Service</a>
instead of this service. To retrieve operating systems as a whole
(Android, Windows, Linux, etc.), you should use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000028a4__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000028a4__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000028a4__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__2">https://api.<span
class="ph">appnexus.com/operating-system</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__3">View
all operating systems</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__2">https://api.<span
class="ph">appnexus.com/operating-system?search=SEARCH_TERM</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__3">Search for operating systems with IDs or
names containing certain characters</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__2">https://api.<span
class="ph">appnexus.com/operating-system?id=OPERATING_SYSTEM_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__3">View
a specific operating system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__2">https://api.<span
class="ph">appnexus.com/operating-system/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000028a4__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000028a4__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000028a4__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__18">The
ID of the operating system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__16"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__18">The
date and time the operating system version entry was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__18">The
name of the operating system version.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__16"><code
class="ph codeph">os_family_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__18">The
ID of the operating system family to which the operating system version
belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-family-service.html"
class="xref" target="_blank">Operating System Family Service</a> service
to get information about operating system families.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__16"><code
class="ph codeph">os_family_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__18">The
name of the operating system family to which the operating system
version belongs, e.g., "Android", "Apple iOS", "Apple Mac/OSX",
etc.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__16"><code
class="ph codeph">platform_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000028a4__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000028a4__entry__18">The
type of platform on which the operating system version runs. Possible
values: "web", "mobile", or "both".</td>
</tr>
</tbody>
</table>





## Examples

**View all operating systems**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/operating-system'
{
  "response": {
    "status": "OK",
    "count": 15,
    "start_element": 0,
    "num_elements": 100,
    "operating-systems": [
      {
        "id": 0,
        "name": "Unknown",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 1,
        "name": "Windows 7",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 2,
        "name": "Windows Vista",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 3,
        "name": "Windows XP",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 4,
        "name": "Windows 2000",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 5,
        "name": "Windows (other versions)",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 6,
        "name": "Android",
        "platform_type": "mobile",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 7,
        "name": "Linux",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 8,
        "name": "iPhone",
        "platform_type": "mobile",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 9,
        "name": "iPod",
        "platform_type": "mobile",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 10,
        "name": "iPad",
        "platform_type": "mobile",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 11,
        "name": "Mac",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 12,
        "name": "Blackberry",
        "platform_type": "mobile",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 13,
        "name": "Windows Phone 7",
        "platform_type": "mobile",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      },
      {
        "id": 14,
        "name": "Windows 8",
        "platform_type": "web",
        "os_family_id": null,
        "last_modified": "2012-11-28 16:25:01",
        "os_family_name": null
      }
    ],
    "dbg_info": {
      ...
    }
  }
}
```

**View a specific operating system**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/operating-system?id=8'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "operating-system": {
            "id": 8,
            "name": "iPhone - iOS (other versions)",
            "platform_type": "mobile",
            "os_family_id": 3,
            "last_modified": "2013-02-21 21:37:12",
            "os_family_name": "Apple iOS"
        }
    }
}
```






