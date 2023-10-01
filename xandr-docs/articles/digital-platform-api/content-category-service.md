---
Title : Content Category Service
Description : Xandr provides a set of "universal" categories,
which are commonly used categories that members can apply to their sites
(placement groups) and placements for later targeting or informational
purposes. You can also create your own custom categories by using this
---


# Content Category Service



Xandr provides a set of "universal" categories,
which are commonly used categories that members can apply to their sites
(placement groups) and placements for later targeting or informational
purposes. You can also create your own custom categories by using this
service.

You apply content categories to sites and placements through the
<a href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
class="xref" target="_blank">Site Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a> using the content
category ID, retrieved from this service. Content categories can then be
used for site and placement targeting for direct campaigns through the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000011b6__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000011b6__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000011b6__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__2"><a
href="https://api.appnexus.com/content-category?type=standard"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/content-category?type=standard</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__3">View
all standard custom content categories belonging to your member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__2"><a
href="https://api.appnexus.com/content-category?category_type=universal&amp;id=CONTENT_CATEGORY_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/content-category?category_type=universal&amp;id=CONTENT_CATEGORY_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__3">View
a specific custom content category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__2"><a
href="https://api.appnexus.com/content-category?id=1%2c2%2c3"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/content-category?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__3">View
multiple content categories by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__2"><a
href="https://api.appnexus.com/content-category" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/content-category</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__3">Add
a custom content category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__2"><a
href="https://api.appnexus.com/content-category?id=CONTENT_CATEGORY_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/content-category?id=CONTENT_CATEGORY_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__3">Modify a custom content category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__2"><a
href="https://api.appnexus.com/content-category?id=CONTENT_CATEGORY_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/content-category?id=CONTENT_CATEGORY_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__3">Delete a custom content category.

Tip: You cannot add, modify, or delete
universal content categories (where <code
class="ph codeph">is_system</code> is set to true). Universal content
categories are managed by Xandr.
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000011b6__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000011b6__entry__23" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000011b6__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__24">Used only for deals.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__24">The
description of the content category</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__24"><p>The ID of the category.</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code></p>
<p><strong>Default</strong>: auto-generated number</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">is_system</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__24"><strong>Read Only.</strong> If <code
class="ph codeph">true</code>, this is a "universal" content category
created by Xandr. You can apply universal
content categories to your sites and placements, but you cannot edit
them.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__24"><strong>Read Only.</strong> The date
and time that this content category was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__24"><strong>Read Only.</strong> Your member
ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">string (100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__24"><p>The name of the category.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">parent_category</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__24">If
the category is the child of a parent category, the ID and name of the
parent is listed here in the following format:
<pre class="pre codeblock"><code>&quot;parent_category&quot;: {
    &quot;id&quot;: 10,
    &quot;name&quot;: &quot;Games&quot;
} </code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__22"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011b6__entry__23">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011b6__entry__24">The
type of content category. Possible values are <code
class="ph codeph">"standard", "deal", or "deal_priority"</code>.</td>
</tr>
</tbody>
</table>





## Examples

**View all custom content categories belonging to your member**

``` pre
$ curl -b cookies 'https://api.appnexus.com/content-category'
{
   "response":{
      "status":"OK",
      "content-categories":[
         {
            "id":9999,
            "name":"Animals",
            "description":null,
            "is_system":false,
            "type":"standard",
            "code": null,
            "last_modified":"2010-05-12 22:46:42"
         },
         {
            "id":8888,
            "name":"Arts & Humanities",
            "description":null,
            "is_system":false,
            "type":"standard",
            "code": null,
            "last_modified":"2010-05-12 22:46:42"
         },
         ...
         {
            "id":7777,
            "name":"Travel",
            "description":null,
            "is_system":false,
            "type":"standard",
            "code": null,
            "last_modified":"2010-05-12 22:46:42"
         }
      ]
   }
}
```

**View all universal content categories**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/content-category?is_system=true'
{
    "response": {
        "status": "OK",
        "content-categories": [
            {
              "id": 1,
              "name": "Music",
              "description": null,
              "is_system": true,
              "parent_category": null,
              "type": "standard",
              "code": null,
              "last_modified": "2010-03-04 18:18:52"
            },
            
            {
              "id": 2,
              "name": "Pets & Animals",
              "description": null,
              "is_system": true,
              "parent_category": null,
              "type": "standard",
              "code": null,
              "last_modified": "2010-10-24 02:43:16"
            },
            {
              "id": 3,
              "name": "Fun & Trivia",
              "description": null,
              "is_system": true,
              "parent_category": {
                "id": "10",
                "name": "Arts & Entertainment"
              },
              "type": "standard",
              "code": null,
              "last_modified": "2010-10-24 02:43:16"
            },
            {
              "id": 4,
              "name": "Autos & Vehicles",
              "description": null,
              "is_system": true,
              "parent_category": null,
              "type": "standard",
              "code": null,
              "last_modified": "2010-10-24 02:43:16"
            },
            ...
        ],
        "count": 34,
        "start_element": null,
        "num_elements": null
    }
}
```

**View a specific custom content category**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/content-category?category_type=universal&id=11111'
{
    "response": {
        "status": "OK",
        "content-category": {
            "id": 11111,
            "name": "A fine and private placement",
            "description": null,
            "is_system": false,
            "parent_category": null,
            "type": "standard",
            "code": null,
            "last_modified": "2012-08-29 15:42:01"
        },
        "count": 1,
        "start_element": 0,
        "num_elements": 100
    }
}
```

**View a specific universal content category**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/content-category?is_system=true&id=2222'
{
    "response": {
        "status": "OK",
        "content-category": {
            "id": 2222,
            "name": "Small Business",
            "description": null,
            "is_system": true,
            "type": "standard",
            "code": null,
            "parent_category": {
                "id": "8"
            },
            "last_modified": "2010-10-24 02:43:16"
        },
        "count": 1,
        "start_element": 0,
        "num_elements": 100
    }
}
```






