---
Title : Device Make Service
Description : Mobile devices are categorized by make and model, where make is
generally the manufacturer of the device (i.e., Apple) and model is
---


# Device Make Service



Mobile devices are categorized by make and model, where make is
generally the manufacturer of the device (i.e., Apple) and model is
generally the specific product (i.e., IPhone). The read-only Device Make
Service allows you to see what makes of mobile devices are registered in
the Xandr system. You can use this service to
retrieve device make IDs for targeting in mobile campaigns.



Note:

To see the device models and mobile carriers that you can target in
mobile campaigns, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/device-model-service.html"
class="xref" target="_blank">Device Model Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/carrier-service.html"
class="xref" target="_blank">Carrier Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000111d__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000111d__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000111d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__2"><a
href="https://api.appnexus.com/device-make" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/device-make</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__3">View
all device makes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__2"><a
href="https://api.appnexus.com/device-make?id=DEVICE_MAKE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/device-make?id=DEVICE_MAKE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__3">View
a specific device make</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__2"><a
href="https://api.appnexus.com/device-make?name=DEVICE_MAKE_NAME"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/device-make?name=DEVICE_MAKE_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__3">View
a specific device make</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__2"><a
href="https://api.appnexus.com/device-make/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/device-make/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000111d__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000111d__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000111d__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__16"><code
class="ph codeph">codes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__18">Third-party representations for the
device make. See <a href="device-make-service.html#ID-0000111d__codes"
class="xref">Codes</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__18">The
ID of the device make.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__18">The
name of the device make, i.e., "Apple".</td>
</tr>
</tbody>
</table>

**Codes**

Each object in the `codes` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000111d__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000111d__entry__29"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000111d__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__28"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__30">The
ID for the device make.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__28"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__29">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__30">The
third-party representation for the device make.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__28"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__29">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__30">Identification information about the
third-party.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__28"><code
class="ph codeph">device_make_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000111d__entry__29">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000111d__entry__30">The
ID for the device make.</td>
</tr>
</tbody>
</table>





## Examples

**View all makes of mobile devices**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/device-make'
{
        "status": "OK",
        "count": 501,
        "start_element": null,
        "num_elements": null,
        "device-makes": [
            {
                "id": 1,
                "name": "4G Systems",
                "codes": [
                    {
                        "id": 1,
                        "code": "da-3499464",
                        "notes": "4G Systems:Onetab XST2",
                        "device_make_id": 1
                    }
                ]
            },
            {
                "id": 2,
                "name": "A-Link",
                "codes": [
                    {
                        "id": 2,
                        "code": "da-3924965",
                        "notes": "A-Link:PAD7",
                        "device_make_id": 2
                    }
                ]
            },
            {
                "id": 3,
                "name": "Acer",
                "codes": [
                    {
                        "id": 3,
                        "code": "da-3318996",
                        "notes": "Acer:A101",
                        "device_make_id": 3
                    },
                    {
                        "id": 4,
                        "code": "da-3334186",
                        "notes": "Acer:A200",
                        "device_make_id": 3
                    },
                    {
                        "id": 5,
                        "code": "da-3861983",
                        "notes": "Acer:A210",
                        "device_make_id": 3
                    },
                    {
                        "id": 6,
                        "code": "da-2434036",
                        "notes": "Acer:A500/Picasso",
                        "device_make_id": 3
                    },
                    {
                        "id": 7,
                        "code": "da-3318534",
                        "notes": "Acer:A501",
                        "device_make_id": 3
                    },
                    {
                        "id": 8,
                        "code": "da-3548843",
                        "notes": "Acer:A510",
                        "device_make_id": 3
                    },
                    {
                        "id": 9,
                        "code": "da-3838998",
                        "notes": "Acer:A701",
                        "device_make_id": 3
                    },
                    {
                        "id": 10,
                        "code": "da-3789553",
                        "notes": "Acer:Allegro",
                        "device_make_id": 3
                    },
                    {
                        "id": 11,
                        "code": "da-2516536",
                        "notes": "Acer:beTouch E100",
                        "device_make_id": 3
                    },
                    {
                        "id": 12,
                        "code": "da-2287408",
                        "notes": "Acer:beTouch E120",
                        "device_make_id": 3
                    },
                    {
                        "id": 13,
                        "code": "da-2332640",
                        "notes": "Acer:beTouch E140",
                        "device_make_id": 3
                    },
                    {
                        "id": 14,
                        "code": "da-2287407",
                        "notes": "Acer:beTouch E400",
                        "device_make_id": 3
                    },
                    {
                        "id": 15,
                        "code": "da-3533259",
                        "notes": "Acer:DX650",
                        "device_make_id": 3
                    },
                    {
                        "id": 16,
                        "code": "da-1808396",
                        "notes": "Acer:E101/beTouch E101",
                        "device_make_id": 3
                    },
                    {
                        "id": 17,
                        "code": "da-2254010",
                        "notes": "Acer:E110",
                        "device_make_id": 3
                    },
                    {
                        "id": 18,
                        "code": "da-2516741",
                        "notes": "Acer:E130",
                        "device_make_id": 3
                    },
                    {
                        "id": 19,
                        "code": "da-2434146",
                        "notes": "Acer:E200/beTouch E200",
                        "device_make_id": 3
                    },
                    {
                        "id": 20,
                        "code": "da-2332643",
                        "notes": "Acer:E210/beTouch E210",
                        "device_make_id": 3
                    },
                    {
                        "id": 21,
                        "code": "da-2332646",
                        "notes": "Acer:E310/Liquid Mini",
                        "device_make_id": 3
                    },
                    {
                        "id": 22,
                        "code": "da-3738195",
                        "notes": "Acer:E320",
                        "device_make_id": 3
                    },
                    {
                        "id": 23,
                        "code": "da-1855360",
                        "notes": "Acer:F900",
                        "device_make_id": 3
                    },
                    {
                        "id": 24,
                        "code": "da-2516595",
                        "notes": "Acer:G100W/G100W",
                        "device_make_id": 3
                    },
                    {
                        "id": 25,
                        "code": "da-2434031",
                        "notes": "Acer:Iconia Tab A100/Vangogh",
                        "device_make_id": 3
                    },
                    {
                        "id": 26,
                        "code": "da-3431972",
                        "notes": "Acer:Iconia Tab A700",
                        "device_make_id": 3
                    },
                    {
                        "id": 27,
                        "code": "da-2013536",
                        "notes": "Acer:Liquid",
                        "device_make_id": 3
                    },
                    {
                        "id": 28,
                        "code": "da-2332649",
                        "notes": "Acer:Liquid Metal",
                        "device_make_id": 3
                    },
                    {
                        "id": 29,
                        "code": "da-2516556",
                        "notes": "Acer:neoTouch P400",
                        "device_make_id": 3
                    },
                    {
                        "id": 30,
                        "code": "da-205043",
                        "notes": "Acer:Pro80",
                        "device_make_id": 3
                    },
                    {
                        "id": 31,
                        "code": "da-1988721",
                        "notes": "Acer:S100",
                        "device_make_id": 3
                    },
                    {
                        "id": 32,
                        "code": "da-2388397",
                        "notes": "Acer:S110/Stream",
                        "device_make_id": 3
                    },
                    {
                        "id": 33,
                        "code": "da-1832515",
                        "notes": "Acer:S200/newTouch S200",
                        "device_make_id": 3
                    },
                    {
                        "id": 34,
                        "code": "da-2516389",
                        "notes": "Acer:S300",
                        "device_make_id": 3
                    },
                    {
                        "id": 35,
                        "code": "da-2516591",
                        "notes": "Acer:TPA60W/TPA60W",
                        "device_make_id": 3
                    },
                    {
                        "id": 36,
                        "code": "da-1689050",
                        "notes": "Acer:X960",
                        "device_make_id": 3
                    },
                    {
                        "id": 37,
                        "code": "da-3890403",
                        "notes": "Acer:Z110",
                        "device_make_id": 3
                    }
                ]
            },
            {
                "id": 4,
                "name": "Advan",
                "codes": [
                    {
                        "id": 38,
                        "code": "da-3852091",
                        "notes": "Advan:T2V",
                        "device_make_id": 4
                    }
                ]
            },
            ...
        ]
    }
}
```

**View a specific make of mobile device**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/device-make?id=6'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "device-make": {
            "id": 6,
            "name": "Agso",
            "codes": [
                {
                    "id": 40,
                    "code": "da-3505359",
                    "notes": "Agso:M70",
                    "device_make_id": 6
                },
                {
                    "id": 41,
                    "code": "da-3505520",
                    "notes": "Agso:S9",
                    "device_make_id": 6
                }
            ]
        }
    }
}
```






