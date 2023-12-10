---
Title : Brand Company Service
Description : Each brand is associated with a company, which can be used for filtering
ms.date: 10/28/2023
ms.custom: digital-platform-api
and searching. You can use the read-only **Brand Company Service** to
---


# Brand Company Service



Each brand is associated with a company, which can be used for filtering
and searching. You can use the read-only **Brand Company Service** to
list these companies. Brand companies are used primarily in developing
<a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profiles</a> that determine what brands
are allowed to run on certain publishers' pages.

For more information about brands, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000001f2__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000001f2__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000001f2__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000001f2__entry__2"><a
href="https://api.appnexus.com/brand-company" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/brand-company</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000001f2__entry__3">To
view all the brand categories</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000001f2__entry__2"><a
href="https://api.appnexus.com/brand-company?id=BRAND_COMPANY_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/brand-company?id=BRAND_COMPANY_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000001f2__entry__3">To
view information about a particular brand category</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000001f2__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000001f2__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000001f2__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000001f2__entry__12">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__12">Brand company name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000001f2__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000001f2__entry__12">A
timestamp of when the record was last modified.</td>
</tr>
</tbody>
</table>





## Example

**View all brand companies (below output is truncated):**

``` pre
curl -b cookies -c cookies "https://api.appnexus.com/brand-company"
{
    "response": {
        "brand-companies": [
            {
                "id":1,
                "name":"Amazon",
                "last_modified":"2010-06-20 15:45:00"
            },
            ...
        ],
        "status": "OK"
    }
}
```




## Related Topics

- <a href="category-service.md" class="xref">Category Service</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>






