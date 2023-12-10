---
Title : Designated Market Area Service
Description : The read-only Designated Market Area (DMA) Service allows you to
ms.date: 10/28/2023
ms.custom: digital-platform-api
retrieve the IDs of designated market areas for targeting in campaigns
(see `dma_targets` in the <a
href="profile-service.md"
---


# Designated Market Area Service



The read-only Designated Market Area (DMA) Service allows you to
retrieve the IDs of designated market areas for targeting in campaigns
(see `dma_targets` in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001047__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001047__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001047__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__2"><a
href="https://api.appnexus.com/dma" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/dma</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__3">View
all designated market areas</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__2"><a
href="https://api.appnexus.com/dma?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/dma?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__3">View
a specific designated market area</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__2"><a
href="https://api.appnexus.com/dma?name=NAME" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/dma?name=NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__3">View
a specific designated market area</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__2"><a
href="https://api.appnexus.com/dma?like_name=XX" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/dma?like_name=XX</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__3">View
all designated market areas in a specific state where <code
class="ph codeph">XX</code> is the state code</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__2"><a
href="https://api.appnexus.com/dma/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/dma/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001047__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001047__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001047__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__21">If
true, the DMA is available for targeting. If false, there is no
geolocation data for the DMA and so delivery is not possible.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__21">The
code of the DMA.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__21">The <a
href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country to which the DMA
belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country codes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code
class="ph codeph">country_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__21">The
ID of the country to which the DMA belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country IDs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__21">The
name of the country to which the DMA belongs. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country names.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__21">The
ID of the DMA.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001047__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001047__entry__21">The
name of the DMA.</td>
</tr>
</tbody>
</table>





## Examples

**View all designated market areas**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/dma'
{
    "response": {
        "status": "OK",
        "count": 211,
        "start_element": null,
        "num_elements": null,
        "dmas": [
            {
                "id": 500,
                "code": 500,
                "name": "Portland-Auburn ME",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            {
                "id": 501,
                "code": 501,
                "name": "New York NY",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            {
                "id": 502,
                "code": 502,
                "name": "Binghamton NY",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            {
                "id": 503,
                "code": 503,
                "name": "Macon GA",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            {
                "id": 504,
                "code": 504,
                "name": "Philadelphia PA",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            {
                "id": 505,
                "code": 505,
                "name": "Detroit MI",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            {
                "id": 506,
                "code": 506,
                "name": "Boston MA-Manchester NH",
                "country_id": 233,
                "country_name": "United States",
                "country_code": "US",
                "active": true,
                "last_modified": "2013-02-15 14:16:07"
            },
            ...
        ]
    }
}
```






