---
Title : Access Policy Group Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Policy Group Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-policy-group** service allows you to retrieve the elements
that make up a role or a team. For a role this service returns a list of
tokens that define user permissions. For teams, this service returns the
IDs of the advertisers, insertion orders, publishers, sites, and
placements that make up the team.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000278__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000278__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000278__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__2">https://api.<span
class="ph">appnexus.com/access-policy-group</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000278__entry__3">View
all groups</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000278__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000278__entry__8" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000278__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__7"><code
class="ph codeph">group_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__8"><p>int</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__9"><p>The ID of the group</p>
<p><strong>Default</strong>: auto-generated number</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__7"><code
class="ph codeph">group_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__8"><p>string</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000278__entry__9">The
type of group. Value will be either <code class="ph codeph">role</code>
or <code class="ph codeph">team</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__7"><code
class="ph codeph">resources</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__8"><p>object</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000278__entry__9">The
ID and name of each resource in the group</td>
</tr>
</tbody>
</table>

**Resources**

Resource values can be retrieved by calling the access-resource service.
For more information on retrieving resources, see <a
href="view-system-resources-using-the-api.md"
class="xref" target="_blank">View System Resources using the API</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000278__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000278__entry__20" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-00000278__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__19"><code
class="ph codeph">token</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__20"><p>string</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000278__entry__21">For
roles, a unique string identifier for the resource.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__19"><code
class="ph codeph">entity_ids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000278__entry__20"><p>array of int</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000278__entry__21">For
teams, a list of resource IDs.</td>
</tr>
</tbody>
</table>





## Examples

**View all groups**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-group'
{
    "group_id": 10,
    "group_type": "role",
    "resources": [
        {
            "token": "hbapi:/report:get"
        },
        {
            "token": "hbapi:/adjustment:PUT"
        },
        {
            "token": "ui:/buyside/advertiser/select:GET"
        },
        {
            "token": "ui:/buyside/advertiser:GET"
        },
        {
            "token": "hbapi:/segment:DELETE"
        },
        {
            "token": "hbapi:/segment:GET"
        },
        {
            "token": "hbapi:/publisher:GET"
        },
                ...
    ]
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
    
    






