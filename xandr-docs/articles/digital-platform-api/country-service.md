---
Title : Country Service
Description : The read-only Country Service allows you to see information about the
ms.date: 10/28/2023
ms.custom: digital-platform-api
countries registered in the Xandr system. You
---


# Country Service



The read-only Country Service allows you to see information about the
countries registered in the Xandr system. You
can use this service to retrieve the ID for targeting in campaigns (see
`country_targets` in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000929__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000929__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000929__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__2">https://api.<span
class="ph">appnexus.com/country</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__3">View
all countries</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__2">https://api.<span
class="ph">appnexus.com/country?id=ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__3">View
a specific country by ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__2">https://api.<span
class="ph">appnexus.com/country?name=NAME</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__3">View
a specific country by NAME</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__2">https://api.<span
class="ph">appnexus.com/country?code=CODE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__3">View
a specific country by CODE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__2">https://api.<span
class="ph">appnexus.com/country/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000929__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000929__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000929__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__21">The
ID of the country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__21">The
name of the country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__21">The
<a href="https://en.wikipedia.org/wiki/ISO_3166" class="xref"
target="_blank">ISO code</a> for the country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000929__entry__20">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000929__entry__21">If
true, the country is available for targeting. If false, there is no
geolocation data for the country and so delivery is not possible.</td>
</tr>
</tbody>
</table>





## Examples

**View all countries**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/country'
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
                "code": "A1",
                "active": true
            },
            {
                "id": 2,
                "name": "Satellite Provider",
                "code": "A2",
                "active": true
            },
            {
                "id": 3,
                "name": "Other Country",
                "code": "O1",
                "active": true
            },
            ...
        ]
    }
}
```

**View a specific country by ID**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/country?id=59'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "country": {
            "id": 59,
            "name": "Germany",
            "code": "DE",
            "active": true
        }
    }
}
```

**View a specific country by code**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/country?code=DE'
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
                "code": "DE",
                "active": true
            }
        ]
    }
}
```

**View all countries that contain "United" in their names **

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/country?like_name=United'
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
                "code": "AE",
                "active": true
            },
            {
                "id": 80,
                "name": "United Kingdom",
                "code": "GB",
                "active": true
            },
            {
                "id": 229,
                "name": "Tanzania, United Republic of",
                "code": "TZ",
                "active": true
            },
            {
                "id": 232,
                "name": "United States Minor Outlying Islands",
                "code": "UM",
                "active": true
            },
            {
                "id": 233,
                "name": "United States",
                "code": "US",
                "active": true
            }
        ]
    }
}
```






