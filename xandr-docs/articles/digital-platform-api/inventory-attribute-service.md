---
Title : Inventory Attribute Service
Description : Use the read-only Inventory Attribute Service to see what inventory
ms.date: 10/28/2023
ms.custom: digital-platform-api
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
<th id="ID-000015c6__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000015c6__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000015c6__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015c6__entry__2"><a
href="https://api.appnexus.com/inventory-attribute" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/inventory-attribute</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015c6__entry__3">To
view all the inventory attributes in the Xandr
system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015c6__entry__2"><a
href="https://api.appnexus.com/inventory-attribute?id=INVENTORY_ATTRIBUTE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/inventory-attribute?id=INVENTORY_ATTRIBUTE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015c6__entry__3">To
view information about a particular inventory attribute</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015c6__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000015c6__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000015c6__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015c6__entry__12">The
ID of the inventory attribute.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__11">string(50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__12">Inventory attribute name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__10"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000015c6__entry__12">When the inventory attribute was last
modified.</td>
</tr>
</tbody>
</table>





## Example

**View all inventory attributes (below output is subject to change)**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/inventory-attribute"
{
    "response": {
        "count": 8,
        "inventory-attributes": [
            {
                "id": 2,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Political"
            },
            {
                "id": 4,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Social media"
            },
            {
                "id": 6,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Photo & video sharing"
            },
            {
                "id": 8,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Forums (moderated)"
            },
            {
                "id": 10,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Forums (unmoderated)"
            },
            {
                "id": 12,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Incentivized clicks"
            },
            {
                "id": 14,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Non-english languages"
            },
            {
                "id": 17,
                "last_activity": "2010-10-19 19:26:08",
                "name": "Toolbars, plugins, or extensions"
            }
        ],
        "num_elements": null,
        "start_element": null,
        "status": "OK"
    }
}
```






