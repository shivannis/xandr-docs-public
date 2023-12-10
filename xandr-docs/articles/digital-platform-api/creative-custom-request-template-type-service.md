---
Title : Creative Custom Request Template Type Service
Description : <b>Note:</b> Mediation is available only to
ms.date: 10/28/2023
ms.custom: digital-platform-api
Monetize Ad Server customers.
---


# Creative Custom Request Template Type Service





<b>Note:</b> Mediation is available only to
Monetize Ad Server customers.



The Creative Custom Request Template Type Service is a read-only service
that lists the specific types of creative custom request templates
needed to integrate with various ad servers. When you create a new
custom request template using the <a
href="xandr-api-internal/creative-custom-request-template-service.md"
class="xref" target="_blank">Creative Custom Request Template
Service</a>, you must specify that your template is one of the types
listed by this service. Together they describe how to make requests to
that ad server that use the correct query string parameters and are
populated with the correct creative macros.

For more information, see the <a
href="xandr-api-internal/creative-custom-request-template-service.md"
class="xref" target="_blank">Creative Custom Request Template
Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000202b__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000202b__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000202b__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-template-type"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template-type</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__3">View
all template types</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-template-type?id=TEMPLATE_TYPE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template-type?id=TEMPLATE_TYPE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__3">View
an individual template type</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__2"><a
href="https://api.appnexus.com/creative-custom-request-template-type/meta"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-custom-request-template-type/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__3">See
all of the available fields, and whether they can be filtered or
sorted</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000202b__entry__13"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000202b__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000202b__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__15">The
unique ID of this template type.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__15">The
internal name of the template type as used by our systems.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__13"><code
class="ph codeph">display_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__15">The
"print name'' of the template type, suitable for a user interface.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000202b__entry__14">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000202b__entry__15">The
date and time at which this template type was last updated.
<p><strong>Sort by:</strong> Yes</p>
<p><strong>Filter by:</strong> Yes</p></td>
</tr>
</tbody>
</table>





## Example

**View all template types**

``` pre
{code}
$ curl -b cookies 'https://api.appnexus.com/creative-custom-request-template-type'
{
    "response": {
        "status": "OK",
        "count": 5,
        "start_element": 0,
        "num_elements": 100,
        "creative-custom-request-templates-types": [
            {
                "id": 1,
                "name": "none",
                "display_name": "",
                "last_modified": "2013-07-10 14:04:57"
            },
            {
                "id": 2,
                "name": "inmobi",
                "display_name": "InMobi",
                "last_modified": "2013-07-10 14:04:57"
            },
            {
                "id": 3,
                "name": "millenial",
                "display_name": "Millenial Media",
                "last_modified": "2013-07-10 14:04:57"
            },
            {
                "id": 4,
                "name": "mojiva",
                "display_name": "Mojiva",
                "last_modified": "2013-07-10 14:04:57"
            },
            {
                "id": 5,
                "name": "jumptap",
                "display_name": "Jumptap",
                "last_modified": "2013-07-10 14:04:57"
            }
        ],
        "dbg_info": {
            "instance": "29.bm-hbapi.prod.nym1",
            "slave_hit": false,
            "db": "master",
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 43.544054031372,
            "start_microtime": 1373907586.5736,
            "version": "1.13.53",
            "slave_miss": "no_service_index",
            "slave_lag": 0,
            "member_last_modified_age": 1373907586
        }
    }
}
{code}
```

**View an individual template type**

``` pre
{code}
$ curl -b cookies https://api.appnexus.com/creative-custom-request-template-type?id=1
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "creative-custom-request-template-type": {
            "id": 1,
            "name": "none",
            "display_name": "",
            "last_modified": "2013-07-10 14:04:57"
        },
        "dbg_info": {
            "instance": "29.bm-hbapi.prod.nym1",
            "slave_hit": false,
            "db": "master",
            "awesomesauce_cache_used": false,
            "count_cache_used": false,
            "warnings": [],
            "time": 223.9089012146,
            "start_microtime": 1373908192.0697,
            "version": "1.13.53",
            "slave_miss": "no_service_index",
            "slave_lag": 0,
            "member_last_modified_age": 1373908192
        }
    }
}
{code}
```





## Related Topics

<a href="creative-custom-request-template-service.md"
class="xref">Creative Custom Request Template Service</a>

<a href="creative-custom-request-template-parameters.md"
class="xref">Creative Custom Request Template Parameters</a>






