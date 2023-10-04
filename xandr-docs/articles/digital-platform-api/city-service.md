---
Title : City Service
Description : The read-only City Service allows you to see information about the
cities registered in the Xandr system, including
the region, designated market area, and country to which each city
belongs. You can use this service to retrieve the IDs of cities for
---


# City Service



The read-only City Service allows you to see information about the
cities registered in the Xandr system, including
the region, designated market area, and country to which each city
belongs. You can use this service to retrieve the IDs of cities for
targeting in campaigns (see `city_targets` in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000007df__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000007df__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000007df__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/city</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
all cities</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city?country_code=COUNTRY_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/city?country_code=COUNTRY_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
all cities in a specific country</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city?country_name=COUNTRY_NAME"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/city?country_name=COUNTRY_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
all cities in a specific country</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city?dma_id=DMA_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/city?dma_id=DMA_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
all cities in a specific designated market area</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city?dma_name=DMA_NAME" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/city?dma_name=DMA_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
all cities in a specific designated market area</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/city?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
a specific city by ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city?name=NAME" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/city?name=NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">View
a specific city by NAME</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__2"><a
href="https://api.appnexus.com/city/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/city/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000007df__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000007df__entry__29"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000007df__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
ID of the city.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
name of the city.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
ID of the country to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
name of the country to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country to which the city
belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/country-service.html"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">region_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
ID of the region to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a> to retrieve a complete
list of region IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">region_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
name of the region to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a> to retrieve a complete
list of region names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">region_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
ISO or FIPS code for the region to which the city belongs. You can use
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/region-service.html"
class="xref" target="_blank">Region Service</a> to retrieve a complete
list of region codes.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">dma_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
ID of the designated market area to which the city belongs. You can use
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a> to
retrieve a complete list of DMA IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">dma_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">The
name of the designated market area to which the city belongs. You can
use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a> to
retrieve a complete list of DMA names.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__28"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007df__entry__29">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007df__entry__30">If
true, the city is available for targeting. If false, there is no
geolocation data for the city and so delivery is not possible.</td>
</tr>
</tbody>
</table>





## Examples

**View all cities in Germany**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/city?country_code=DE'
{
    "response": {
        "status": "OK",
        "count": 15769,
        "start_element": 0,
        "num_elements": 100,
        "cities": [
            {
                "id": 36677,
                "name": "Aach",
                "region_id": 825,
                "region_name": "Baden-Wurttemberg",
                "region_code": "01",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "dma_id": 1,
                "dma_name": "--",
                "active": true,
                "last_modified": "2015-04-09 19:40:57"
            },
            {
                "id": 36678,
                "name": "Aalen",
                "region_id": 825,
                "region_name": "Baden-Wurttemberg",
                "region_code": "01",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "dma_id": 1,
                "dma_name": "--",
                "active": true,
                "last_modified": "2015-04-09 19:40:57"
            },
            {
                "id": 36679,
                "name": "Abstatt",
                "region_id": 825,
                "region_name": "Baden-Wurttemberg",
                "region_code": "01",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "dma_id": 1,
                "dma_name": "--",
                "active": true,
                "last_modified": "2015-04-09 19:40:57"
            },
            ...
        ]
    }
}
```

**View all cities in the Bayern region of Germany**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/city?region_name=Bayern'
{
  "response": {
    "status": "OK",
    "count": 3066,
    "start_element": 0,
    "num_elements": 100,
    "cities": [
      {
        "id": 39026,
        "name": "Abenberg",
        "region_id": 826,
        "region_name": "Bayern",
        "region_code": "02",
        "country_id": 59,
        "country_name": "Germany",
        "country_code": "DE",
        "dma_id": 1,
        "dma_name": "--",
        "active": true,
        "last_modified": "2015-04-09 19:40:57"
      },
      {
        "id": 39027,
        "name": "Abensberg",
        "region_id": 826,
        "region_name": "Bayern",
        "region_code": "02",
        "country_id": 59,
        "country_name": "Germany",
        "country_code": "DE",
        "dma_id": 1,
        "dma_name": "--",
        "active": true,
        "last_modified": "2015-04-09 19:40:57"
      },
      {
        "id": 39028,
        "name": "Absberg",
        "region_id": 826,
        "region_name": "Bayern",
        "region_code": "02",
        "country_id": 59,
        "country_name": "Germany",
        "country_code": "DE",
        "dma_id": 1,
        "dma_name": "--",
        "active": true,
        "last_modified": "2015-04-09 19:40:57"
      },
      ...
    ]
  }
}
```

**View all cities named "Karlsruhe"**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/city?name=Karlsruhe'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "cities": [
            {
                "id": 37739,
                "name": "Karlsruhe",
                "region_id": 825,
                "region_name": "Baden-Wurttemberg",
                "region_code": "01",
                "country_id": 59,
                "country_name": "Germany",
                "country_code": "DE",
                "dma_id": 1,
                "dma_name": "--",
                "active": true,
                "last_modified": "2015-04-09 19:40:57"
            },
            {
                "id": 195431,
                "name": "Karlsruhe",
                "region_id": 3952,
                "region_name": "North Dakota",
                "region_code": "ND",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "dma_id": 687,
                "dma_name": "Minot-Bismarck-Dickinson(Williston) ND",
                "active": false,
                "last_modified": "2016-10-19 05:01:12"
            }
        ]
    }
}
```






