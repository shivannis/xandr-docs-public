---
Title : Region Service
Description : The read-only Region Service allows you to see information about the
ms.date : 10/28/2023
regions and states registered in the Xandr
system, including the country to which each region/state belongs. You
---


# Region Service



The read-only Region Service allows you to see information about the
regions and states registered in the Xandr
system, including the country to which each region/state belongs. You
can use this service to retrieve region IDs for targeting in <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">profiles.</a>



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008f85__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00008f85__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00008f85__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__2"><a
href="https://api.adnxs.com/region" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/region</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__3">View
all regions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__2"><a
href="https://api.adnxs.com/region?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/region?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__3">View
a specific region.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__2"><a
href="https://api.adnxs.com/region?name=NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/region?name=NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__3">View
a specific region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__2"><a
href="https://api.adnxs.com/region?code=CODE" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/region?code=CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__3">View
a specific region.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__2"><a
href="https://api.adnxs.com/region/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/region/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008f85__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00008f85__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008f85__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__21">The
ISO or FIPS code for the region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__19"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__21">The
ID of the country to which the region belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__19"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__21">The
name of the country to which the region belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__19"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__21">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country to which the region
belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__21">The
ID of the region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008f85__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008f85__entry__21">The
name of the region.</td>
</tr>
</tbody>
</table>





## Examples

**View all regions in Germany**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/region?country_code=DE'
{
    "response": {
        "status": "OK",
        "count": 16,
        "start_element": null,
        "num_elements": null,
        "regions": [
            {
                "id": 825,
                "name": "Baden-Wurttemberg",
                "code": "01",                
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 826,
                "name": "Bayern",
                "code": "02",                
                "country_id": 69,                
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 827,
                "name": "Bremen",
                "code": "03",
                "country_id": 69,                                
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 828,
                "name": "Hamburg",
                "code": "04",
                "country_id": 69,                                
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 829,
                "name": "Hessen",
                "code": "05",
                "country_id": 69,                                                
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 830,
                "name": "Niedersachsen",
                "code": "06",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 831,
                "name": "Nordrhein-Westfalen",
                "code": "07",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 832,
                "name": "Rheinland-Pfalz",
                "code": "08",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 833,
                "name": "Saarland",
                "code": "09",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 834,
                "name": "Schleswig-Holstein",
                "code": "10",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 835,
                "name": "Brandenburg",
                "code": "11",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 836,
                "name": "Mecklenburg-Vorpommern",
                "code": "12",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 837,
                "name": "Sachsen",
                "code": "13",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 838,
                "name": "Sachsen-Anhalt",
                "code": "14",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 839,
                "name": "Thuringen",
                "code": "15",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 840,
                "name": "Berlin",
                "code": "16",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            }
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View all regions in Germany and France**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/region?country_code=DE,FR'
{
    "response": {
        "status": "OK",
        "count": 38,
        "start_element": null,
        "num_elements": null,
        "regions": [
            {
                "id": 825,
                "name": "Baden-Wurttemberg",
                "code": "01",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 826,
                "name": "Bayern",
                "code": "02",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 827,
                "name": "Bremen",
                "code": "03",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            {
                "id": 828,
                "name": "Hamburg",
                "code": "04",
                "country_id": 69,
                "country_code": "DE",
                "country_name": "Germany"
            },
            ...
            {
                "id": 1070,
                "name": "Aquitaine",
                "code": "97",
                "country_id": 78,
                "country_code": "FR",
                "country_name": "France"
            },
            {
                "id": 1071,
                "name": "Auvergne",
                "code": "97",
                "country_id": 78,
                "country_code": "FR",
                "country_name": "France"
            },
            {
                "id": 1072,
                "name": "Basse-Normandie",
                "code": "99",
                "country_id": 78,
                "country_code": "FR",
                "country_name": "France"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View all regions that contain "California" in their names**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/region?like_name=California'
{
    "response": {
        "status": "OK",
        "count": 3,
        "start_element": null,
        "num_elements": null,
        "regions": [
            {
                "id": 2600,
                "name": "Baja California",
                "code": "02",
                "country_id": 42,
                "country_code": "MX",
                "country_name": "Mexico"
            },
            {
                "id": 2601,
                "name": "Baja California Sur",
                "code": "03",
                "country_id": 42,
                "country_code": "MX",
                "country_name": "Mexico"
            },
            {
                "id": 3922,
                "name": "California",
                "code": "CA",
                "country_id": 233,
                "country_code": "US",
                "country_name": "United States"
            }
        ]
    }
}
```






