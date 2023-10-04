---
Title : Operating System-Families Service
Description : The Operating System-Families Service returns all the operating systems
available for the caller's member.
---


# Operating System-Families Service



The Operating System-Families Service returns all the operating systems
available for the caller's member.

Operating systems are a Xandr-wide list NOT
maintained by Prebid Server Premium. This service can be found at <a
href="https://docs.xandr.com/bundle/xandr-api/page/operating-system-service.html"
class="xref" target="_blank">Operating System Service</a>. We offer this
endpoint in PSP as a convenience to users and also so we can show a list
of operating systems for targeting purposes in the UI.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="operating-system-families-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="operating-system-families-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="operating-system-families-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="operating-system-families-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="operating-system-families-service__entry__2"><a
href="https://api.appnexus.com/prebid/operating-system-families"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/operating-system-families</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="operating-system-families-service__entry__3">Return all the
operating system-families objects.</td>
</tr>
</tbody>
</table>



**Example Response**

The response is a JSON array of operating system-family objects.



``` pre
[
  {
    "id": 1,
    "name": "Unknown"
  },
  {
    "id": 2,
    "name": "Android"
  },
  {
    "id": 3,
    "name": "Apple iOS"
  },
  {
    "id": 4,
    "name": "Apple Mac"
  },
  {
    "id": 5,
    "name": "Microsoft Windows"
  },
  {
    "id": 6,
    "name": "BlackBerry OS"
  },
  {
    "id": 8,
    "name": "Linux"
  },
  {
    "id": 9,
    "name": "Symbian OS"
  },
  {
    "id": 10,
    "name": "Chrome OS"
  },
  {
    "id": 11,
    "name": "PlayStation 4 OS"
  },
  {
    "id": 12,
    "name": "Firefox OS"
  },
  {
    "id": 13,
    "name": "Roku OS"
  },
  {
    "id": 14,
    "name": "Tizen"
  },
  {
    "id": 15,
    "name": "webOS"
  },
  {
    "id": 16,
    "name": "PlayStation 3 OS"
  },
  {
    "id": 17,
    "name": "KaiOS"
  },
  {
    "id": 18,
    "name": "tvOS"
  },
  {
    "id": 19,
    "name": "Vewd OS"
  }
]
```








