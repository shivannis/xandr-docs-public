---
Title : Carrier Service
Description : Mobile carriers, also known as wireless carriers or mobile network
operators, own or control all the elements necessary to sell and deliver
wireless communication services to users of mobile devices. The
---


# Carrier Service



Mobile carriers, also known as wireless carriers or mobile network
operators, own or control all the elements necessary to sell and deliver
wireless communication services to users of mobile devices. The
read-only Mobile Carrier Service allows you to see what mobile carriers
are registered in the Xandr system.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000076e1__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000076e1__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000076e1__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__2"><a
href="https://api.adnxs.com/carrier" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/carrier</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__3">View
all carriers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__2"><a
href="https://api.adnxs.com/carrier/CARRIER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/carrier/CARRIER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__3">View
a specific carrier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__2"><a
href="https://api.adnxs.com/carrier?name=CARRIER_NAME" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/carrier?name=CARRIER_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__3">View
a specific carrier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__2"><a
href="https://api.adnxs.com/carrier/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/carrier/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000076e1__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000076e1__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000076e1__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__18">The
ID of the mobile carrier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__18">The
name of the mobile carrier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__16"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__18">The
<a href="http://www.maxmind.com/en/iso3166" class="xref"
target="_blank">ISO code</a> for the country in which the carrier
operates.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__16"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__18">The
name of the country in which the carrier operates.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__16"><code
class="ph codeph">codes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__18">Third-party representations for the
mobile carrier. See "Codes" below for more details.</td>
</tr>
</tbody>
</table>





## Codes

Each object in the `codes` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000076e1__entry__34"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000076e1__entry__35"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000076e1__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__34"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__36">The
ID for the mobile carrier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__34"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__36">The
third-party representation for the mobile carrier.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__34"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__35">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__36">Identification information about the
third-party.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__34"><code
class="ph codeph">device_model_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000076e1__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000076e1__entry__36">The
ID for the mobile carrier.</td>
</tr>
</tbody>
</table>





## Examples

**View all mobile carriers**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/carrier'
{
    "response": {
        "status": "OK",
        "count": 236,
        "start_element": null,
        "num_elements": null,
        "carriers": [
            {
                "id": 1,
                "name": "WIFI",
                "country_code": "",
                "country_name": null,
                "codes": null
            },
            {
                "id": 14,
                "name": "Verizon",
                "country_code": "US",
                "country_name": "United States",
                "codes": [
                    {
                        "id": 593,
                        "code": "70092",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 594,
                        "code": "310-010",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 595,
                        "code": "310-012",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 596,
                        "code": "310-013",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 597,
                        "code": "310-590",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 598,
                        "code": "310-890",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 599,
                        "code": "310-910",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 600,
                        "code": "311-110",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 601,
                        "code": "311-270",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 602,
                        "code": "311-271",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 603,
                        "code": "311-272",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 604,
                        "code": "311-273",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 605,
                        "code": "311-274",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 606,
                        "code": "311-275",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 607,
                        "code": "311-276",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 608,
                        "code": "311-277",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 609,
                        "code": "311-278",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 610,
                        "code": "311-279",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 611,
                        "code": "311-280",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 612,
                        "code": "311-281",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 613,
                        "code": "311-282",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 614,
                        "code": "311-283",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 615,
                        "code": "311-284",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 616,
                        "code": "311-285",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 617,
                        "code": "311-286",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 618,
                        "code": "311-287",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 619,
                        "code": "311-288",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 620,
                        "code": "311-289",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 621,
                        "code": "311-390",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 622,
                        "code": "311-480",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 623,
                        "code": "311-481",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 624,
                        "code": "311-482",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 625,
                        "code": "311-483",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 626,
                        "code": "311-484",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 627,
                        "code": "311-485",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 628,
                        "code": "311-486",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 629,
                        "code": "311-487",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 630,
                        "code": "311-488",
                        "notes": null,
                        "carrier_id": 14
                    },
                    {
                        "id": 631,
                        "code": "311-489",
                        "notes": null,
                        "carrier_id": 14
                    }
                ]
            },
            {
                "id": 26,
                "name": "Sprint",
                "country_code": "US",
                "country_name": "United States",
                "codes": [
                    {
                        "id": 640,
                        "code": "70091",
                        "notes": null,
                        "carrier_id": 26
                    },
                    {
                        "id": 641,
                        "code": "310-120",
                        "notes": null,
                        "carrier_id": 26
                    },
                    {
                        "id": 642,
                        "code": "311-490",
                        "notes": null,
                        "carrier_id": 26
                    },
                    {
                        "id": 643,
                        "code": "311-870",
                        "notes": null,
                        "carrier_id": 26
                    },
                    {
                        "id": 644,
                        "code": "311-880",
                        "notes": null,
                        "carrier_id": 26
                    },
                    {
                        "id": 645,
                        "code": "312-190",
                        "notes": null,
                        "carrier_id": 26
                    },
                    {
                        "id": 646,
                        "code": "316-010",
                        "notes": null,
                        "carrier_id": 26
                    }
                ]
            },
            {
                "id": 31,
                "name": "Orange",
                "country_code": "FR",
                "country_name": "France",
                "codes": [
                    {
                        "id": 114,
                        "code": "70180",
                        "notes": null,
                        "carrier_id": 31
                    },
                    {
                        "id": 115,
                        "code": "208-01",
                        "notes": null,
                        "carrier_id": 31
                    },
                    {
                        "id": 116,
                        "code": "208-02",
                        "notes": null,
                        "carrier_id": 31
                    },
                    {
                        "id": 117,
                        "code": "208-91",
                        "notes": null,
                        "carrier_id": 31
                    }
                ]
            },
            ...
        },
        "dbg": {
            ...
        }
    }
}
```

**View a specific mobile carrier**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/carrier/1'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "carrier": {
            "id": 31,
            "name": "Orange",
            "country_code": "FR",
            "country_name": "France",
            "codes": [
                {
                    "id": 114,
                    "code": "70180",
                    "notes": null,
                    "carrier_id": 31
                },
                {
                    "id": 115,
                    "code": "208-01",
                    "notes": null,
                    "carrier_id": 31
                },
                {
                    "id": 116,
                    "code": "208-02",
                    "notes": null,
                    "carrier_id": 31
                },
                {
                    "id": 117,
                    "code": "208-91",
                    "notes": null,
                    "carrier_id": 31
                }
            ]
        },
        "dbg": {
            ... 
        }
    }
}
```






