---
Title : Inventory Resold Service
Description : This read-only service allows you to view inventory that has been
ms.date: 10/28/2023
ms.custom: digital-platform-api
<u>exposed</u> for resale by networks on the platform. This includes
---


# Inventory Resold Service



This read-only service allows you to view inventory that has been
<u>exposed</u> for resale by networks on the platform. This includes
inventory exposed by your network and other networks. 

- To <u>enable</u> your inventory for resale, use the
  <a href="site-service.md"
  class="xref" target="_blank">Site Service</a>.
- To <u>expose</u> your inventory for resale:
  - For inventory categories, use the <a
    href="visibility-profile-service.md"
    class="xref" target="_blank">Visibility Profile Service</a>.
  - For publishers, use the <a
    href="publisher-service.md"
    class="xref" target="_blank">Publisher Service</a>.
  - For whole networks, use the <a
    href="member-service.md"
    class="xref" target="_blank">Member Service</a>.
- To control the inventory data that platform members and external
  bidders see in your bid requests, use the <a
  href="visibility-profile-service.md"
  class="xref" target="_blank">Visibility Profile Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001644__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001644__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001644__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
all publishers, content categories, and members exposed for resale</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold?type=publisher</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
all publishers exposed for resale</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold?type=publisher&amp;id=1,2,3,etc.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
specific publishers exposed for resale (using a comma-separated list of
IDs)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold?type=content_category&amp;category_type=standard</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
all content categories exposed for resale</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold?type=content_category&amp;id=1,2,3,etc.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
specific content categories exposed for resale (using a comma-separated
list of IDs)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold?type=member</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
all members exposed for resale</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold?type=member&amp;id=1,2,3,etc.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">View
specific members exposed for resale (using a comma-separated list of
IDs)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__2">https://api.<span
class="ph">appnexus.com/inventory-resold/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001644__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001644__entry__29" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00001644__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">daily_volume</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
average daily impressions from last 7 days.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
description of the object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
internal ID assigned to the object (publisher, member or
content_category).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
ID of the owning member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
name of the owning member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
name of the object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">reselling_exposed_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
date and time when the publisher or member was exposed for reselling.
Note that, as of version 1.13, this field is not available for content
categories.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">stats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__30">The <code
class="ph codeph">stats</code> object has been deprecated (as of October
17, 2016). Use the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__28"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001644__entry__29">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001644__entry__30">The
type of object. Possible values: "publisher", "member", or
"content_category".</td>
</tr>
</tbody>
</table>





## Examples

**Viewing all publishers, content categories, and members exposed for
resale**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/inventory-resold'
{
    "response": {
        "status": "OK",
        "inventory-resold": [
            {
                "id": 88,
                "name": "Kitara Media",
                "description": null,
                "member_id": 88,
                "member_name": "Kitara Media",
                "type": "member",
                "reselling_exposed_on": "2010-06-07 21:29:56",
                "daily_volume": "67119880"
            },
            {
                "id": 95,
                "name": "Matomy Media (formerly Xtend Media)",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "member",
                "reselling_exposed_on": "2011-05-04 08:51:51",
                "daily_volume": "20578570"
            },
            {
                "id": 231,
                "name": "Morning Falls",
                "description": null,
                "member_id": 231,
                "member_name": "Morning Falls",
                "type": "member",
                "reselling_exposed_on": "2010-08-23 20:44:51",
                "daily_volume": "24"
            },
            {
                "id": 311,
                "name": "Collective Exchange",
                "description": null,
                "member_id": 311,
                "member_name": "Collective Exchange",
                "type": "member",
                "reselling_exposed_on": "2010-11-19 22:55:15",
                "daily_volume": "97485150"
            },
            ...
            {
                "id": 537,
                "name": "Fun & Trivia",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 538,
                "name": "Autos & Vehicles",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 539,
                "name": "Beauty & Personal Care",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 540,
                "name": "Business & Industry",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 541,
                "name": "Computers & Electronics",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 541,
                "name": "CPXInteractive",
                "description": null,
                "member_id": 541,
                "member_name": "CPXInteractive",
                "type": "member",
                "reselling_exposed_on": "2011-01-05 17:22:19",
                "daily_volume": "1067491726"
            },
            {
                "id": 542,
                "name": "Arts & Entertainment",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 543,
                "name": "Finance",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 544,
                "name": "Food & Drink",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 545,
                "name": "Games",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 546,
                "name": "Health",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            ...
            {
                "id": 563,
                "name": "X-Taringa.org",
                "description": "",
                "member_id": 332,
                "member_name": "D'Arriens",
                "type": "publisher",
                "reselling_exposed_on": "2012-03-21 18:55:47",
                "daily_volume": null
            },
            {
                "id": 564,
                "name": "Collective Exchange (UK)",
                "description": null,
                "member_id": 564,
                "member_name": "Collective Exchange (UK)",
                "type": "member",
                "reselling_exposed_on": "2010-12-15 16:09:48",
                "daily_volume": "4322501"
            },
            {
                "id": 564,
                "name": "MessengerAdictos",
                "description": "",
                "member_id": 332,
                "member_name": "D'Arriens",
                "type": "publisher",
                "reselling_exposed_on": "2012-03-21 18:55:47",
                "daily_volume": null
            },
            {
                "id": 568,
                "name": "Httpool",
                "description": null,
                "member_id": 568,
                "member_name": "Httpool",
                "type": "member",
                "reselling_exposed_on": "2011-02-24 15:49:52",
                "daily_volume": "159637"
            },
            {
                "id": 576,
                "name": "Nextperience",
                "description": null,
                "member_id": 576,
                "member_name": "Nextperience",
                "type": "member",
                "reselling_exposed_on": "2010-10-29 20:46:08",
                "daily_volume": "3359929"
            },
            {
                "id": 576,
                "name": "Grooveshark",
                "description": "",
                "member_id": 332,
                "member_name": "D'Arriens",
                "type": "publisher",
                "reselling_exposed_on": "2012-03-21 18:55:48",
                "daily_volume": "48"
            },
            ...
        ],
        "count": 13984,
        "start_element": 0,
        "num_elements": 100
    }
}
```

**Viewing all content categories exposed for resale**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/inventory-source?type=content_category&category_type=standard'
{
    "response": {
        "status": "OK",
        "inventory-resold": [
            {
                "id": 537,
                "name": "Fun & Trivia",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 538,
                "name": "Autos & Vehicles",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 539,
                "name": "Beauty & Personal Care",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 540,
                "name": "Business & Industry",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 541,
                "name": "Computers & Electronics",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 542,
                "name": "Arts & Entertainment",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            {
                "id": 543,
                "name": "Finance",
                "description": null,
                "member_id": 95,
                "member_name": "Matomy Media (formerly Xtend Media)",
                "type": "content_category",
                "daily_volume": null
            },
            ...
        ],
        "count": 1145,
        "start_element": 0,
        "num_elements": 100
    }
}
```






