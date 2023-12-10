---
Title : Access Resource Dependency Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Resource Dependency Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-resource-dependency** service retrieves a list of resource
IDs for all parents, children, and dependencies associated with a
resource. Use this service to manage dependencies within the system that
are under access control.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000694__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000694__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000694__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__2">https://api.<span
class="ph">appnexus.com/access-resource-dependency</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000694__entry__3">View
all resources and their dependencies</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__2">https://api.<span
class="ph">appnexus.com/access-resource-dependency?resource_id=ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__3">Create dependencies to a resource</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__2">https://api.<span
class="ph">appnexus.com/access-resource-dependency?resource_id=ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__3">Delete a resource</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000694__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000694__entry__14" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000694__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__13"><code
class="ph codeph">children</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__14">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000694__entry__15">An
array of resource IDs for the children of the resource</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__13"><code
class="ph codeph">dependencies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__14">array of dependency objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000694__entry__15">An
array of dependency objects containing direct parent/child
relationships</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__13"><code
class="ph codeph">parents</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__14">array of ints</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000694__entry__15">An
array of resource IDs for the parents of the resource</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__13"><code
class="ph codeph">resource_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__14">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__15"><p>The ID of the resource.</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> and
<code class="ph codeph">DELETE</code></p></td>
</tr>
</tbody>
</table>

**Dependencies**

Resource values can be retrieved by calling the access-resource service.
For more information on retrieving resources, see <a
href="view-system-resources-using-the-api.md"
class="xref" target="_blank">View System Resources using the API</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000694__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000694__entry__29" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000694__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__28"><code
class="ph codeph">parent_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000694__entry__30">The
ID of the parent resource in the parent/child relationship.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__28"><code
class="ph codeph">child_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000694__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000694__entry__30">The
ID of the child resource in the parent/child relationship.</td>
</tr>
</tbody>
</table>





## Examples

**View all resource dependencies**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-resource-dependency'
"access-resource-dependency": [
    {
        "resource_id": 22,
        "parents": [
            123,
            134
        ],
        "children": [
            11
        ],
        "dependencies": [
            {
                "parent_id": 15,
                "child_id": 789
            },
            {
                "parent_id": 2,
                "child_id": 15
            }
        ]
    },
        ...
```

**View resource dependencies for a single resource**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-resource-dependency?resource_id=22'
"access-resource-dependency": [
    {
        "resource_id": 22,
        "parents": [
            123,
            134
        ],
        "children": [
            11
        ],
        "dependencies": [
            {
                "parent_id": 15,
                "child_id": 789
            },
            {
                "parent_id": 2,
                "child_id": 15
            }
        ]
    }
]
 
```





##  Related Topics



- <a
  href="working-with-roles-using-the-api.md"
  class="xref" target="_blank">Working with Roles using the API</a>
- <a
  href="create-a-custom-role-using-the-api.md"
  class="xref" target="_blank">Create a Custom Role using the API</a>
- <a
  href="view-system-resources-using-the-api.md"
  class="xref" target="_blank">View System Resources using the API</a>  
    
    








