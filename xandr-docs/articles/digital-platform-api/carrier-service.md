---
Title : Carrier Service
Description : Mobile carriers, also known as wireless carriers or mobile network
ms.date: 10/28/2023
ms.custom: digital-platform-api
operators, own or control all the elements necessary to sell and deliver
wireless communication services to users of mobile devices. The
---


# Carrier Service



Mobile carriers, also known as wireless carriers or mobile network
operators, own or control all the elements necessary to sell and deliver
wireless communication services to users of mobile devices. The
read-only Mobile Carrier Service allows you to see what mobile carriers
are registered in our system. You can use this service to retrieve the
IDs of carriers for targeting in mobile campaigns.



<b>Note:</b>

You can target mobile campaigns based on the make and model of mobile
devices as well. For more details, see the <a
href="device-make-service.md"
class="xref" target="_blank">Device Make Service</a> and <a
href="device-model-service.md"
class="xref" target="_blank">Device Model Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000004db__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000004db__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000004db__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__2"><a
href="https://api.appnexus.com/carrier" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/carrier</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__3">View
all carriers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__2"><a
href="https://api.appnexus.com/carrier?country_code=COUNTRY_CODE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/carrier?country_code=COUNTRY_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__3">View
all carriers in a specific country</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__2"><a
href="https://api.appnexus.com/carrier?id=CARRIER_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/carrier?id=CARRIER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__3">View
a specific carrier</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__2"><a
href="https://api.appnexus.com/carrier/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/carrier/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





##  JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000004db__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000004db__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000004db__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__18">The
ID of the mobile carrier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__18">The
name of the mobile carrier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__16"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__18">The
<a href="https://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country in which the carrier
operates.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__16"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__18">The
name of the country in which the carrier operates.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__16"><code
class="ph codeph">codes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__18">Third-party representations for the
mobile carrier. See <a href="carrier-service.md#ID-000004db__codes"
class="xref">Codes Object</a> below for more details.</td>
</tr>
</tbody>
</table>

**Codes Object**

Each object in the `codes` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000004db__entry__34"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000004db__entry__35"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000004db__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__34"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__36">The
ID of the carrier code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__34"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__36">The
third-party representation for the carrier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__34"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__35">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__36">Identification information about the
third party.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__34"><code
class="ph codeph">carrier_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000004db__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000004db__entry__36">The
ID of the carrier. (This is the same as the <code
class="ph codeph">id</code> field described above.)</td>
</tr>
</tbody>
</table>





## Examples

**View all mobile carriers**

``` pre
{code}$ curl -b cookies -c cookies 'https://api.appnexus.com/carrier'
{
    "response": {
        "status": "OK",
        "count": 143,
        "start_element": null,
        "num_elements": 10,
        "carriers": [
            {
                "id": 1,
                "name": "WIFI",
                "country_code": "",
                "is_aggregated": false,
                "codes": null
            },
            {
                "id": 2,
                "name": "Verizon - AR",
                "country_code": "AR",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 3,
                "name": "Verizon - AU",
                "country_code": "AU",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 4,
                "name": "Verizon - CA",
                "country_code": "CA",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 5,
                "name": "Verizon - DE",
                "country_code": "DE",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 6,
                "name": "Verizon - FR",
                "country_code": "FR",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 7,
                "name": "Verizon - GB",
                "country_code": "GB",
                "is_aggregated": true,
                "codes": null
            },
            ...
        ],
        
    }
}
{code}
```

**View all mobile carriers in the US**

``` pre
{code}$ curl -b cookies -c cookies 'https://api.appnexus.com/carrier?country_code=US'
{
    "response": {
        "status": "OK",
        "count": 7,
        "start_element": null,
        "num_elements": null,
        "carriers": [
            {
                "id": 14,
                "name": "Verizon - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 26,
                "name": "Sprint - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 40,
                "name": "Orange - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 55,
                "name": "T-Mobile - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 60,
                "name": "AT&T - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 90,
                "name": "Vodafone - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            },
            {
                "id": 108,
                "name": "Telefonica - US",
                "country_code": "US",
                "is_aggregated": true,
                "codes": null
            }
        ]
    }
}
{code}
```

**View a specific mobile carrier**

``` pre
{code}
$ curl -b cookies -c cookies 'https://api.appnexus.com/carrier?id=1'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "carriers": [
            {
                "id": 1,
                "name": "WIFI",
                "country_code": null,
                "codes": null
            }
        ]
    }
}
{code}
```






