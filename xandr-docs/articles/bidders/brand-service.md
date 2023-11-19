---
Title : Brand Service
Description : Use the read-only Brand Service to see what brands are registered in the
ms.date : 10/28/2023
Xandr system. You can also use the Brand Service
---


# Brand Service



Use the read-only Brand Service to see what brands are registered in the
Xandr system. You can also use the Brand Service
to obtain the ID assigned to a certain brand. This ID is used as an
optional input for the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000074ec__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000074ec__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000074ec__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__2"><a
href="https://api.adnxs.com/brand" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/brand</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__3">To
view all the brands in the Xandr system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__2"><a
href="https://api.adnxs.com/brand?search=BRAND_NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/brand?search=BRAND_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__3">To
view all brands with names containing certain characters.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__2"><a
href="https://api.adnxs.com/brand?url_search=BRAND_URL" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/brand?url_search=BRAND_URL</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__3">To
view all brands with URLS starting with certain characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__2"><a
href="https://api.adnxs.com/brand/BRAND_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/brand/BRAND_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__3">To
view a specific brand.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000074ec__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000074ec__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000074ec__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__18">The
ID of the category associated with this brand - see <a
href="category-service.md" class="xref">Category Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">company_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__18">This field is not currently used</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__18">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">is_premium</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__18">This field is not currently used</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__18">When the brand was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__18">Brand name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">num_creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__18">Number of active, serveable creatives
with this brand that are registered with <span
class="ph">Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000074ec__entry__18">URL
for this brand. This field has been deprecated in favor or the urls
field (below).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__16"><code
class="ph codeph">urls</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__17">string array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000074ec__entry__18">URLs associated with this brand.</td>
</tr>
</tbody>
</table>





## Example

**View all brands (below output is truncated)**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/brand"
{
   "response":{
      "status":"OK",
      "brands":[
         {
            "last_activity" : "2009-01-02 19:53:15",
            "urls" : ["weightwatchers.com"],
            "name" : "Weight Watchers",
            "id" : 154,
            "num_creatives" : 10,
            "category_id" : 14
         },
         {
            "last_activity" : "2009-01-02 19:53:16",
            "urls" : ["yahoo.com"],
            "name" : "Yahoo",
            "id" : 15,
            "num_creatives" : 50,
            "category_id" : 15
         },
         ....
      ]
   }
}
```






