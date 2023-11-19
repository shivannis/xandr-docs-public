---
Title : Country Service
Description : The read-only Country Service allows you to see information about the
ms.date : 10/28/2023
countries registered in the Xandr system. You
---


# Country Service



The read-only Country Service allows you to see information about the
countries registered in the Xandr system. You
can use this service to retrieve the IDs for targeting in <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">profiles</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081b6__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000081b6__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000081b6__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__2"><a
href="https://api.adnxs.com/country" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/country</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__3">View
all countries.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__2"><a
href="https://api.adnxs.com/country?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/country?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__3">View
a specific country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__2"><a
href="https://api.adnxs.com/country?name=NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/country?name=NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__3">View
a specific country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__2"><a
href="https://api.adnxs.com/country?code=CODE" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/country?code=CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__3">View
a specific country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__2"><a
href="https://api.adnxs.com/country/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/country/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000081b6__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000081b6__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000081b6__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__21">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__21">The
ID of the country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000081b6__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000081b6__entry__21">The
name of the country.</td>
</tr>
</tbody>
</table>





## Examples

**View all countries**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/country'
{
    "response": {
        "status": "OK",
        "count": 250,
        "start_element": null,
        "num_elements": null,
        "countries": [
            {
                "id": 1,
                "name": "Anonymous Proxy",
                "code": "A1"
            },
            {
                "id": 2,
                "name": "Satellite Provider",
                "code": "A2"
            },
            {
                "id": 3,
                "name": "Other Country",
                "code": "O1"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}         
```

**View a specific country by ID**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/country?id=59'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "country": {
            "id": 59,
            "name": "Germany",
            "code": "DE"
        },
        "dbg_info": {
            ...
        }
    }
}
```

**View a specific country by code**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/country?code=DE'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "countries": [
            {
                "id": 59,
                "name": "Germany",
                "code": "DE"
            }
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View all countries that contain "United" in their names**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/country?like_name=United'
{
    "response": {
        "status": "OK",
        "count": 5,
        "start_element": null,
        "num_elements": null,
        "countries": [
            {
                "id": 5,
                "name": "United Arab Emirates",
                "code": "AE"
            },
            {
                "id": 80,
                "name": "United Kingdom",
                "code": "GB"
            },
            {
                "id": 229,
                "name": "Tanzania, United Republic of",
                "code": "TZ"
            },
            {
                "id": 232,
                "name": "United States Minor Outlying Islands",
                "code": "UM"
            },
            {
                "id": 233,
                "name": "United States",
                "code": "US"
            }
        ],
        "dbg_info": {
            ...
        }
    }
}     
```






