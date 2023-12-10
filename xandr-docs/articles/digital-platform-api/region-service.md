---
Title : Region Service
Description : The read-only Region Service allows you to see information about the
ms.date: 10/28/2023
ms.custom: digital-platform-api
regions and states registered in the
Xandr system, including the country to which
each region/state belongs. You can use this service to retrieve region
---


# Region Service



The read-only Region Service allows you to see information about the
regions and states registered in the
Xandr system, including the country to which
each region/state belongs. You can use this service to retrieve region
IDs for targeting in campaigns (see `region_targets` in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000033b5__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000033b5__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000033b5__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__2"><a
href="https://api.appnexus.com/region" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/region</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__3">View
all regions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__2"><a
href="https://api.appnexus.com/region?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/region?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__3">View
a specific region by ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__2"><a
href="https://api.appnexus.com/region?name=NAME" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/region?name=NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__3">View
a specific region by NAME</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__2"><a
href="https://api.appnexus.com/region?code=CODE" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/region?code=CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__3">View
a specific region by CODE</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__2"><a
href="https://api.appnexus.com/region/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/region/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000033b5__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000033b5__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000033b5__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">If
true, the region is available for targeting. If false, there is no
geolocation data for the region and so delivery is not possible. Note
that regions may occasionally become active or inactive based on changes
to IP addressing or changes in geolocation technologies, as well as
based on changes to geographical borders.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__21"><strong>Deprecated</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country to which the region
belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">The
ID of the country to which the region belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">The
name of the country to which the region belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">The
ID of the region.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">iso_3166_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">The
<a href="https://en.wikipedia.org/wiki/ISO_3166-2" class="xref"
target="_blank">ISO 3166-2</a> code for the region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000033b5__entry__21">The
name of the region.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__19"><code
class="ph codeph">sales_tax_rate_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__20">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000033b5__entry__21">Sales tax for member in region acting
as buyer.</td>
</tr>
</tbody>
</table>





## Examples

**View all regions in Germany**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/region?country_code=DE'
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
                "iso_3166_2": "BW",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 826,
                "name": "Bayern",
                "code": "02",
                "iso_3166_2": "BY",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 827,
                "name": "Bremen",
                "code": "03",
                "iso_3166_2": "HB",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 828,
                "name": "Hamburg",
                "code": "04",
                "iso_3166_2": "HH",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 829,
                "name": "Hessen",
                "code": "05",
                "iso_3166_2": "HE",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 830,
                "name": "Niedersachsen",
                "code": "06",
                "iso_3166_2": "NI",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 831,
                "name": "Nordrhein-Westfalen",
                "code": "07",
                "iso_3166_2": "NW",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 832,
                "name": "Rheinland-Pfalz",
                "code": "08",
                "iso_3166_2": "RP",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 833,
                "name": "Saarland",
                "code": "09",
                "iso_3166_2": "SL",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 834,
                "name": "Schleswig-Holstein",
                "code": "10",
                "iso_3166_2": "SH",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 835,
                "name": "Brandenburg",
                "code": "11",
                "iso_3166_2": "BR",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 836,
                "name": "Mecklenburg-Vorpommern",
                "code": "12",
                "iso_3166_2": "MV",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 837,
                "name": "Sachsen",
                "code": "13",
                "iso_3166_2": "SN",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 838,
                "name": "Sachsen-Anhalt",
                "code": "14",
                "iso_3166_2": "ST",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 839,
                "name": "Thuringen",
                "code": "15",
                "iso_3166_2": "TH",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 840,
                "name": "Berlin",
                "code": "16",
                "iso_3166_2": "BE",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            }
        ]
    }
}
```

**View all regions in Germany and France**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/region?country_code=DE,FR'
{
    "response": {
        "status": "OK",
        "count": 38,
        "start_element": 0,
        "num_elements": 100,
        "regions": [
            {
                "id": 825,
                "name": "Baden-Wurttemberg",
                "code": "01",
                "iso_3166_2": "BW",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 826,
                "name": "Bayern",
                "code": "02",
                "iso_3166_2": "BY",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 827,
                "name": "Bremen",
                "code": "03",
                "iso_3166_2": "HB",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            {
                "id": 828,
                "name": "Hamburg",
                "code": "04",
                "iso_3166_2": "HH",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "active": true
            },
            ...
            {
                "id": 1070,
                "name": "Aquitaine",
                "code": "97",
                "iso_3166_2": "B",
                "country_id": 78,
                "country_name": "France",
                "country_code": "FR",
                "active": true
            },
            {
                "id": 1071,
                "name": "Auvergne",
                "code": "98",
                "iso_3166_2": "C",
                "country_id": 78,
                "country_name": "France",
                "country_code": "FR",
                "active": true
            },
            {
                "id": 1072,
                "name": "Basse-Normandie",
                "code": "99",
                "iso_3166_2": "P",
                "country_id": 78,
                "country_name": "France",
                "country_code": "FR",
                "active": true
            },
            ...
        ]
    }
}
```

**View all regions that contain "California" in their names**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/region?like_name=California'
{
    "response": {
        "status": "OK",
        "count": 3,
        "start_element": 0,
        "num_elements": 100,
        "regions": [
            {
                "id": 2600,
                "name": "Baja California",
                "code": "02",
                "iso_3166_2": "BCN",
                "country_id": 159,
                "country_name": "Mexico",
                "country_code": "MX",
                "active": true
            },
            {
                "id": 2601,
                "name": "Baja California Sur",
                "code": "03",
                "iso_3166_2": "BCS",
                "country_id": 159,
                "country_name": "Mexico",
                "country_code": "MX",
                "active": true
            },
            {
                "id": 3922,
                "name": "California",
                "code": "CA",
                "iso_3166_2": "CA",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true
            }
        ]
    }
}
```






