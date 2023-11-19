---
Title : Content Category Service
Description : Use the read-only Content Category Service to see what content
ms.date : 10/28/2023
categories are registered in the Xandr system.
---


# Content Category Service



Use the read-only Content Category Service to see what content
categories are registered in the Xandr system.
These IDs are provided in the inventory_audits objects on the bid
request.

Content categories are arranged in a two-level hierarchy. There are
top-level categories and child categories. The child categories have a
parent_category_id pointing to their parent. The top-level categories
have a null parent_category_id.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007b7a__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00007b7a__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00007b7a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__2"><a
href="https://api.adnxs.com/content-category" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/content-category</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__3">To
view all the content categories in the Xandr
system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__2"><a
href="https://api.adnxs.com/content-category/CONTENT_CATEGORY_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/content-category/CONTENT_CATEGORY_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__3">To
view information about a particular content category.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007b7a__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00007b7a__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007b7a__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__10"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__12">The
description of the content category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__12">The
ID of the content category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__10"><code
class="ph codeph">is_system</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__11">bool</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__12">If
true, the content category is defined by <span
class="ph">Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__12">The
date and time that this content category was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__12">The
name of the content category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__10"><code
class="ph codeph">parent_category</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007b7a__entry__11">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007b7a__entry__12">If
the category is the child of a parent category, the ID and name of the
parent is listed here in the following format:
<pre class="pre codeblock"><code>&quot;parent_category&quot;: {
    &quot;id&quot;:10,
    &quot;name&quot;: &quot;Games&quot;
} </code></pre></td>
</tr>
</tbody>
</table>





## Example

**View all content categories (below output is truncated)**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/content-category"
{
    "response": {
        "status": "OK",
        "count": 325,
        "start_element": null,
        "num_elements": null,
        "content_categories": [
            {
                "id": 4,
                "name": "Pets & Animals",
                "description": null,
                "is_system": true,
                "last_modified": "2010-10-24 02:43:16",
                "parent_category": null
            },
            {
                "id": 5,
                "name": "Fun & Trivia",
                "description": null,
                "is_system": true,
                "last_modified": "2010-10-24 02:43:16",
                "parent_category": {
                    "id": 10,
                    "name": "Arts & Entertainment"
                }
            },
            {
                "id": 6,
                "name": "Autos & Vehicles",
                "description": null,
                "is_system": true,
                "last_modified": "2010-10-24 02:43:16",
                "parent_category": null
            },
            {
                "id": 7,
                "name": "Beauty & Personal Care",
                "description": null,
                "is_system": true,
                "last_modified": "2010-03-04 19:14:12",
                "parent_category": null
            },
            [...]
        ],
        "count": 326,
        "num_elements": 5,
        "start_element": 1,
        "status": "OK"
    }
}              
```






