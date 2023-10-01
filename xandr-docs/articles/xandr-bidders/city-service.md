---
Title : City Service
Description : The read-only City Service allows you to see information about the
cities registered in the Xandr system, including
the region, designated market area, and country to which each city
belongs. You can use this service to retrieve the IDs of cities for
---


# City Service



The read-only City Service allows you to see information about the
cities registered in the Xandr system, including
the region, designated market area, and country to which each city
belongs. You can use this service to retrieve the IDs of cities for
targeting in campaigns (see `city_targets` in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/enhanced-bidder-profiles.html"
class="xref" target="_blank">Enhanced Bidder Profiles</a>).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007a48__entry__1" class="entry colsep-1 rowsep-1">HTTP
Methods</th>
<th id="ID-00007a48__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00007a48__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
all cities.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city?country_code=COUNTRY_CODE" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city?country_code=COUNTRY_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
all cities in a specific country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city?country_name=COUNTRY_NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city?country_name=COUNTRY_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
all cities in a specific country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city?dma_id=DMA_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city?dma_id=DMA_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
all cities in a specific designated market area.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city?dma_name=DMA_NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city?dma_name=DMA_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
all cities in a specific designated market area.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
a specific city.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city?name=NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city?name=NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">View
a specific city.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__2"><a
href="https://api.adnxs.com/city/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/city/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007a48__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00007a48__entry__29"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007a48__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country to which the city
belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/country-service.html"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
name of the country to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/country-service.html"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">dma_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
ID of the designated market area to which the city belongs. You can use
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a> to
retrieve a complete list of dma IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">dma_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
name of the designated market area to which the city belongs. You can
use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/designated-market-area-service.html"
class="xref" target="_blank">Designated Market Area Service</a> to
retrieve a complete list of dma names.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
ID of the city.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
name of the city.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">region_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
ID of the region to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/region-service.html"
class="xref" target="_blank">Region Service</a> to retrieve a complete
list of region IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__28"><code
class="ph codeph">region_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007a48__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007a48__entry__30">The
name of the region to which the city belongs. You can use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/region-service.html"
class="xref" target="_blank">Region Service</a> to retrieve a complete
list of region names.</td>
</tr>
</tbody>
</table>





## Examples

**View all cities in Germany**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/city?country_code=DE'
{
    "response": {
        "status": "OK",
        "count": 19786,
        "start_element": null,
        "num_elements": null,
        "cities": [
            {
                "id": 36677,
                "country_code": "DE",
                "name": "Aach",
                "region_name": "Baden-Wurttemberg",
                "region_id": 825,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            {
                "id": 36678,
                "country_code": "DE",
                "name": "Aalen",
                "region_name": "Baden-Wurttemberg",
                "region_id": 825,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            {
                "id": 36679,
                "country_code": "DE",
                "name": "Abstatt",
                "region_name": "Baden-Wurttemberg",
                "region_id": 825,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View all cities in the Bayern region of Germany**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/city?region_name=Bayern'
{
    "response": {
        "status": "OK",
        "count": 3799,
        "start_element": null,
        "num_elements": null,
        "cities": [
            {
                "id": 39026,
                "country_code": "DE",
                "name": "Abenberg",
                "region_name": "Bayern",
                "region_id": 826,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            {
                "id": 39027,
                "country_code": "DE",
                "name": "Abensberg",
                "region_name": "Bayern",
                "region_id": 826,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            {
                "id": 39028,
                "country_code": "DE",
                "name": "Absberg",
                "region_name": "Bayern",
                "region_id": 826,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**View all cities named "Karlsruhe"**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/city?name=Karlsruhe'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": null,
        "num_elements": null,
        "cities": [
            {
                "id": 37739,
                "country_code": "DE",
                "name": "Karlsruhe",
                "region_name": "Baden-Wurttemberg",
                "region_id": 825,
                "dma_name": "Other DMA",
                "dma_id": -1,
                "country_name": "Germany"
            },
            {
                "id": 195431,
                "country_code": "US",
                "name": "Karlsruhe",
                "region_name": "North Dakota",
                "region_id": 3952,
                "dma_name": "Minot-Bismarck-Dickinson(Williston) ND",
                "dma_id": 687,
                "country_name": "United States"
            }
        ],
        "dbg_info": {
            ...
        }
    }
} 
```






