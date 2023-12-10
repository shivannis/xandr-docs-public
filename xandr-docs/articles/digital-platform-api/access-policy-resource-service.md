---
Title : Access Policy Resource Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Policy Resource Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-policy-resource** service allows you to retrieve the
resources based on resource type: UI or API.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000004ce__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000004ce__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000004ce__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__2">https://api.<span
class="ph">appnexus.com/access-policy-resource</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004ce__entry__3">View
all resources</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__2">https://api.<span
class="ph">appnexus.com/access-policy-resource?resource_type=RESOURCE_TYPE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004ce__entry__3">View
all resources for a given type</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000004ce__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000004ce__entry__11" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000004ce__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__10"><code
class="ph codeph">resources</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__11">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004ce__entry__12">The
ID and name of each resource in this role.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__10"><code
class="ph codeph">resource_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004ce__entry__12">The
type of each resource within the associated resources object. Value will
be either ui or api.</td>
</tr>
</tbody>
</table>

**Resources**

Full resource values can be retrieved by calling the access-resource
service. For more information on retrieving resources, see <a
href="view-system-resources-using-the-api.md"
class="xref" target="_blank">View System Resources using the API</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000004ce__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000004ce__entry__20" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000004ce__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__19"><code
class="ph codeph">token</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004ce__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004ce__entry__21">A
string containing the resource. This string is a tokenized version of
the name property returned by the access-resource service. For example
here are the names and tokens for the resource <em>Delete an Ad Quality
Rule using the API:</em>
<p>access-resource name: hbapi-ad-quality-rule-delete</p>
<p>access-policy-resource token: hbapi:/ad-quality-rule:DELETE</p></td>
</tr>
</tbody>
</table>





## Examples

**View all resources**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-resource'
{
    "access-policy-resource": [
        {
            "resource_type": "api",
            "resources": [
                {
                    "token": "hbapi:/ym-bias:POST"
                },
                {
                    "token": "hbapi:/ad-quality-rule:DELETE"
                },
                {
                    "token": "hbapi:/access-resource:GET"
                },
                        ...
}
```

**View all resources for a given type**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-resource?resource_type=ui'
 
{
    "access-policy-resource": [
        {
            "resource_type": "ui",
            "resources": [
                {
                    "token": "ui:/ad-quality:GET"
                },
                {
                    "token": "ui:/buyside/advertiser/show:GET"
                },
                {
                    "token": "ui:/bias-rule:MANAGE"
                },
                ...
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
    
    








