---
Title : Content Search Service
Description : Xandr admins can use this read-only service to
ms.date: 10/28/2023
ms.custom: digital-platform-api
search for creative IDs that have not been deleted and have not expired,
based on the `content` and `media_url` attributes of a creative. 
---


# Content Search Service



Xandr admins can use this read-only service to
search for creative IDs that have not been deleted and have not expired,
based on the `content` and `media_url` attributes of a creative. 



<b>Note:</b> After using this service to
retrieve creative IDs, you can use other services to lookup additional
data. For example, to find out who a particular creative belongs to, you
would make a `GET` call with the creative ID to the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000020f7__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000020f7__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000020f7__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000020f7__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000020f7__entry__2"><p>https://api.<span
class="ph">appnexus.com//creative-content-search?q=xxx</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000020f7__entry__3">Search for creative IDs based on terms
in <code class="ph codeph">content</code> and <code
class="ph codeph">media_url</code>.</td>
</tr>
</tbody>
</table>



**Rules**

- **For creative IDs to be returned, ALL search terms must match
  either** `content` **or** `media_url`**.**
- **Queries must be between 3 and 15 characters.** Queries outside this
  range will not return results.
- **This service does not return expired creatives.**
- **This service returns only creative IDs.** If more information is
  required; such as who the creative belongs to, or if you want to join
  the creative table with other tables, use the IDs returned in future
  queries/lookups. See the <a
  href="content-search-service.md#ID-000020f7__examples_content_search_service"
  class="xref">examples</a> below for more details.







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000020f7__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000020f7__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000020f7__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000020f7__entry__7"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000020f7__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000020f7__entry__9">The
ID of the creative.</td>
</tr>
</tbody>
</table>



>

## Examples

**Get creative IDs for the 'adnxs' search
parameter**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-content-search?q=adnxs'
{
  "response": {
    "status": "OK",
    "num_elements": 100,
    "start_element": 0,
    "count": 516001,
    "results": [
      {
        "id": 17500999
      },
      {
        "id": 17501020
      },
      {
        "id": 17501040
      },
      {
        "id": 17501052
      },
      {
        "id": 17501060
      },
        ...
    ],
    "dbg_info": {
      "instance": "63.bm-hbapi.prod.nym2",
      "slave_hit": false,
      "db": "master",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [],
      "time": 154.0949344635,
      "start_microtime": 1423773726.0317,
      "version": "1.15.368",
      "slave_miss": "no_service_index",
      "slave_lag": 0,
      "member_last_modified_age": 1423773726,
      "output_term": "not_found"
    }
  }
}
```






