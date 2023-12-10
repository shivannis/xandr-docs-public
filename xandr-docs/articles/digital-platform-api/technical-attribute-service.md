---
Title : Technical Attribute Service
Description : This is a read-only service that shows you the list of technical
ms.date: 10/28/2023
ms.custom: digital-platform-api
attributes that you can target in the <a
href="ad-profile-service.md"
---


# Technical Attribute Service



This is a read-only service that shows you the list of technical
attributes that you can target in the <a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profile Service</a> via ID.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000357c__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000357c__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000357c__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__2">https://api.<span
class="ph">appnexus.com/technical-attribute</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000357c__entry__3">View
all technical attributes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__2">https://api.<span
class="ph">appnexus.com/technical-attribute?id=TECHNICAL_ATTRIBUTE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000357c__entry__3">View
a specific technical attribute</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000357c__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000357c__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000357c__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000357c__entry__12">The
internal identifier for the technical attribute</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__10"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__11">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000357c__entry__12">The
date/time at which the technical attribute was last modified</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000357c__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000357c__entry__12">The
name of the technical attribute</td>
</tr>
</tbody>
</table>





## Examples

**To see all technical attributes available for targeting.**

``` pre
$ curl -b cookies -c cookies  https://api.appnexus.com/technical-attribute
{
  "response": {
    "status": "OK",
    "count": 29,
    "start_element": 0,
    "num_elements": 100,
    "technical-attributes": [
      {
        "id": 1,
        "name": "Image",
        "last_modified": "2010-05-21 21:05:28"
      },
      {
        "id": 2,
        "name": "Flash",
        "last_modified": "2010-05-21 21:05:28"
      },
      {
        "id": 3,
        "name": "Text",
        "last_modified": "2010-05-21 21:05:28"
      },
      {
        "id": 4,
        "name": "Video",
        "last_modified": "2010-05-21 21:05:28"
      },
      {
        "id": 5,
        "name": "DHTML",
        "last_modified": "2012-03-23 14:25:40"
      },
      {
        "id": 6,
        "name": "Expandable",
        "last_modified": "2010-05-21 21:05:28"
      },
      {
        "id": 7,
        "name": "Audio: user-initiated",
        "last_modified": "2010-06-24 18:04:00"
      },
      {
        "id": 8,
        "name": "Audio: auto-initiated",
        "last_modified": "2010-06-24 18:04:02"
      },
      {
        "id": 9,
        "name": "Initial Load > 40kb",
        "last_modified": "2011-02-06 20:24:56"
      },
      {
        "id": 10,
        "name": "Full Page Pop",
        "last_modified": "2011-06-08 22:19:05"
      },
      {
        "id": 16,
        "name": "Animated: between 15 and 30 seconds",
        "last_modified": "2013-06-27 14:13:26"
      },
      {
        "id": 17,
        "name": "Animated: more than 30 seconds",
        "last_modified": "2013-06-27 14:13:26"
      },
      {
        "id": 18,
        "name": "Expandable: Standard Expansion",
        "last_modified": "2012-04-05 19:23:14"
      },
      {
        "id": 19,
        "name": "Expandable: Large Expansion",
        "last_modified": "2012-04-05 19:23:14"
      },
      {
        "id": 20,
        "name": "Expandable: Click To Expand",
        "last_modified": "2012-04-05 19:23:14"
      },
      {
        "id": 21,
        "name": "Expandable: Mouseover To Expand",
        "last_modified": "2012-04-05 19:23:14"
      },
      {
        "id": 22,
        "name": "Expandable: Auto-Expand",
        "last_modified": "2012-04-05 19:23:14"
      },
      {
        "id": 23,
        "name": "Interstitial",
        "last_modified": "2012-03-16 19:39:59"
      },
      {
        "id": 25,
        "name": "Animated: between 0 - 15 seconds",
        "last_modified": "2013-06-27 14:13:26"
      },
      {
        "id": 26,
        "name": "Pop up",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 27,
        "name": "Pop under",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 28,
        "name": "Site under",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 29,
        "name": "Layer: Banderole",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 30,
        "name": "Layer: Footer",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 31,
        "name": "Layer: Skin",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 32,
        "name": "Layer: Slide-in",
        "last_modified": "2012-09-18 23:34:15"
      },
      {
        "id": 34,
        "name": "Mobile Targeted Landing Page",
        "last_modified": "2013-08-19 13:50:28"
      },
      {
        "id": 35,
        "name": "Mobile Optimized Creative",
        "last_modified": "2013-08-19 13:52:50"
      },
      {
        "id": 36,
        "name": "MRAID",
        "last_modified": "2013-08-19 16:04:51"
      }
    ],
  }
}
```






