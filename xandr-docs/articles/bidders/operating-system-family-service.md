---
Title : Operating System Family Service
Description : This read-only service lets you see what operating systems (Android,
Apple iOS, Microsoft Windows, etc.) are registered in the
---


# Operating System Family Service



This read-only service lets you see what operating systems (Android,
Apple iOS, Microsoft Windows, etc.) are registered in the
Xandr system. You can use this service to
retrieve operating system family IDs for targeting in <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profiles</a>.



Tip: To see the specific **versions**
of operating systems (Android 3x, Apple iOS 6, etc.) that you can
target, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-extended-service.html"
class="xref" target="_blank">Operating System Extended Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a37__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00008a37__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00008a37__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__2">https://api.<span
class="ph">adnxs.com/operating-system-family</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a37__entry__3">View
all operating system families</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__2">https://api.<span
class="ph">adnxs.com/operating-system-family?id=OPERATING_SYSTEM_FAMILY_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a37__entry__3">View
a specific operating system family</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__2">https://api.<span
class="ph">adnxs.com/operating-system-family/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a37__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008a37__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00008a37__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008a37__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a37__entry__15">The
ID of the operating system family.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a37__entry__15">The
date and time when the operating system family entry was last
modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008a37__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008a37__entry__15">The
name of the operating system family, e.g., "Android", "Apple iOS",
"Apple Mac/OSX", etc.</td>
</tr>
</tbody>
</table>



<div id="ID-00008a37__section_zbm_jwq_nwb" >

## Examples

**View all operating system families**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/operating-system-family'
 
{
    "response": {
        "status": "OK",
        "count": 9,
        "start_element": 0,
        "num_elements": 100,
        "operating-system-families": [
            {
                "id": 1,
                "name": "Unknown",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 2,
                "name": "Android",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 3,
                "name": "Apple iOS",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 4,
                "name": "Apple Mac",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 5,
                "name": "Microsoft Windows",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 6,
                "name": "BlackBerry OS",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 7,
                "name": "Microsoft Mobile",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 8,
                "name": "Linux",
                "last_modified": "2013-07-09 18:41:36"
            },
            {
                "id": 9,
                "name": "Symbian OS",
                "last_modified": "2013-11-15 17:07:29"
            }
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View a specific operating system family**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/operating-system-family?id=4'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "operating-system-family": {
            "id": 4,
            "name": "Apple Mac",
            "last_modified": "2013-07-09 18:41:36"
        },
        "dbg_info": {
            ...
        }
    }
}
```



<div id="ID-00008a37__section_adm_jwq_nwb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/legacy-bidder-profile-service.html"
  class="xref" target="_blank">Legacy Bidder Profile Service</a>






