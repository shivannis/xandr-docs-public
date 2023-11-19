---
Title : Inventory Attribute Service
Description : Use the read-only Inventory Attribute Service to see what inventory
ms.date : 10/28/2023
attributes are registered in the Xandr system.
---


# Inventory Attribute Service



Use the read-only Inventory Attribute Service to see what inventory
attributes are registered in the Xandr system.
These IDs are provided in the inventory_audits objects on the bid
request.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000086f3__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000086f3__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000086f3__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__2">https://api.<span
class="ph">adnxs.com/inventory-attribute</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000086f3__entry__3">To
view all the inventory attributes in the Xandr
system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__2">https://api.<span
class="ph">adnxs.com/inventory-attribute/INVENTORY_ATTRIBUTE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000086f3__entry__3">To
view information about a particular inventory attribute</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000086f3__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000086f3__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000086f3__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000086f3__entry__12">The
ID of the inventory attribute.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__10"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__12">When the inventory attribute was last
modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000086f3__entry__12">Inventory attribute name.</td>
</tr>
</tbody>
</table>





## Example

**View all inventory attributes (below output is subject to change)**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/inventory-attribute"
{
  "response": {
    "status": "OK",
    "count": 10,
    "start_element": null,
    "num_elements": null,
    "inventory_attributes": [
      {
        "id": 2,
        "name": "Political",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 4,
        "name": "Social media",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 6,
        "name": "Photo & video sharing",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 8,
        "name": "Forums (moderated)",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 10,
        "name": "Forums (unmoderated)",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 12,
        "name": "Incentivized clicks",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 14,
        "name": "Non-english languages",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 16,
        "name": "Streaming media",
        "last_activity": "2010-10-19 19:26:08"
      },
      {
        "id": 17,
        "name": "Toolbars, plugins, or extensions",
        "last_activity": "2012-12-04 21:00:58"
      },
      {
        "id": 29,
        "name": "Contextual Nudity",
        "last_activity": "2014-04-22 19:11:56"
      }
    ]
  }
}
```






