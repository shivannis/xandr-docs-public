---
Title : Access Platform User Role Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Platform User Role Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-platform-user-role** service can be used to manage roles
for users who are not associated with members.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000169__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000169__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000169__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__2">https://api.<span
class="ph">appnexus.com/access-platform-user-role</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000169__entry__3">View
all platform users and their roles</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__2">https://api.<span
class="ph">appnexus.com/access-platform-user-role?user_id=UID&amp;role_id=ROLE_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__3">Create a platform user/role
association</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__2">https://api.<span
class="ph">appnexus.com/access-platform-user-role</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__3">Delete a platform user/role
association</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000169__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000169__entry__14" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000169__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__13"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000169__entry__15">The
description of the role.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000169__entry__15">The
unique ID of the user/role association
<p><strong>Required On</strong>: <code
class="ph codeph">DELETE</code></p>
<p><strong>Default</strong>: auto-generated on <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__13"><code
class="ph codeph">platform_role</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__14">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__15">Returns <code
class="ph codeph">true</code> if the role is a platform role; <code
class="ph codeph">false</code> if the role is a custom role</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__13"><code
class="ph codeph">role_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__14">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__15"><p>The type of group. Value will be
either <code class="ph codeph">role</code> or <code
class="ph codeph">team</code>.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__13"><code
class="ph codeph">role_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__14">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000169__entry__15">The
ID and name of each resource in the group.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__13"><code
class="ph codeph">user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__14">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000169__entry__15"><p>The ID of the group.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST </code></p></td>
</tr>
</tbody>
</table>





## Examples

**View all platform user/role associations**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-platform-user-role'
"access-platform-user-role": [
    {
        "user_id": 123456,
        "role_id": 111,
        "role_name": "Test Role",
        "description": "Temporary Role for Testing",
        "platform_role": false,
        "id": 123
    }
]
```

**Create a new platform user/role association**

``` pre
$ cat platform-user-role.json
{
        "access-platform-user-role": 
                [
                        {
                                "user_id": 123456,
                                "role_id": 123
                        }
                ]
}
$ curl -b cookies 'https://api.appnexus.com/access-platform-user-role'
```

**Delete a platform user/role association**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-platform-user-role?id=123'
```





## Related Topics



- <a
  href="working-with-roles-using-the-api.md"
  class="xref" target="_blank">Working with Roles using the API</a>
- <a
  href="create-a-custom-role-using-the-api.md"
  class="xref" target="_blank">Create a Custom Role using the API</a>
- <a
  href="view-system-resources-using-the-api.md"
  class="xref" target="_blank">View System Resources using the API</a>  
    
    








