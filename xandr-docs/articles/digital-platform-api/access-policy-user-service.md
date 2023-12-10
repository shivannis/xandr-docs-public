---
Title : Access Policy User Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Policy User Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-policy-user** service allows you to identify which roles
and teams a user is on.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005ab__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000005ab__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000005ab__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__2">https://api.<span
class="ph">appnexus.com/access-policy-user?user_id=USER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005ab__entry__3">View
a user's roles and teams</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005ab__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000005ab__entry__8" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000005ab__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__7"><code
class="ph codeph">groups</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__8">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005ab__entry__9">An
object containing arrays of roles and teams to which this user is
assigned.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__7"><code
class="ph codeph">landing_pages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__8">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005ab__entry__9">The
list of Console pages this user will see upon logon. Only one page is
supported at this time.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__7"><code
class="ph codeph">user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__8">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__9"><p>The ID of the user.</p>
<p><strong>Default</strong>: auto-generated number.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">GET</code></p></td>
</tr>
</tbody>
</table>

**Groups**

This object contains the role and teams to which a user is assigned.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005ab__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000005ab__entry__20" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000005ab__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__19"><code
class="ph codeph">roles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005ab__entry__21">A
list of role IDs for roles this user is assigned to. Only one role
assignment is supported at this time.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__19"><code
class="ph codeph">teams</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005ab__entry__20">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005ab__entry__21">A
list of team IDs for teams this user is assigned to. A user can be
assigned to multiple teams.</td>
</tr>
</tbody>
</table>





## Examples

**View a user's teams and role**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-user?user_id=10'
{
    "user_id": 10,
    "landing_pages": [
    ],
    "groups": {
        "roles": [
            4
        ],
                "teams": [
                        20,
                        22
                ]
    }
}
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
    
    








