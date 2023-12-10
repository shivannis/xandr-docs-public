---
Title : Access Policy Object Team Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Policy Object Team Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-policy-object-team** service allows you to retrieve a list
of all the teams a given resource is on. You can query on any
combination of advertisers, insertion orders, publishers, sites, and
placements. If you query on multiple objects, your results will include
all the teams that any of the objects is on, not the teams that *all* of
the objects are on. For example, if AdvertiserA is on Team1 and Team2,
and PublisherA is on Team2 and Team3, querying access-policy-object-team
on AdvertiserA and PublisherA would return Team1, Team2, and Team3.



## REST API

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-0000043a__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000043a__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000043a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000043a__entry__2"><ul>
<li><p>https://api..com/access-policy-object-team?advertiser_id=ADVERTISER_ID</p></li>
<li><p>https://api..com/access-policy-object-team?insertion_order_id=INSERTION_ORDER_ID</p></li>
<li><p>https://api..com/access-policy-object-team?publisher_id=PUBLISHER_ID</p></li>
<li><p>https://api..com/access-policy-object-team?site_id=SITE_ID</p></li>
<li><p>https://api..com/access-policy-object-team?placement_id=PLACEMENT_ID</p></li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000043a__entry__3">View
all teams a resource is on</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__2">https://api..com/access-member-role?&lt;resource&gt;_id=RESOURCE_ID&amp;&lt;resource&gt;_id=RESOURCE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000043a__entry__3">View
all teams several resources are on</td>
</tr>
</tbody>
</table>





##  JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000043a__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000043a__entry__11" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-0000043a__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000043a__entry__12">The
numeric ID of the team.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000043a__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000043a__entry__12">The
name of the team the resource is on.</td>
</tr>
</tbody>
</table>





##  Examples

**View all teams a resource is on**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-object-team?advertiser_id=123456'
{
    "id": 10,
    "name": "Team1",
},
{
    "id": 20,
    "name": "Team5",
}
```

**View all teams multiple resources are on**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-object-team?advertiser_id=123456&publisher_id=234567'
 
{
    "id": 10,
    "name": "Team1",
},
{
    "id": 20,
    "name": "Team5",
},
{
    "id": 15,
    "name": "Team7",
}
```





##  Related Topics



- <a
  href="working-with-roles-using-the-api.md"
  class="xref" target="_blank">Working with Roles using the API</a>
- <a
  href="create-a-custom-role-using-the-api.md"
  class="xref" target="_blank">Create a Custom Role using the API</a>
- <a
  href="view-system-resources-using-the-api.md"
  class="xref" target="_blank">View System Resources using the API</a>  








