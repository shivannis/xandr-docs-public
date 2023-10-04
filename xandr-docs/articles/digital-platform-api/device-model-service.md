---
Title : Device Model Service
Description : Mobile devices are categorized by make and model, where make is
generally the manufacturer of the device (such as Apple) and model is
generally the specific product (such as iPhone). The read-only Device
---


# Device Model Service



Mobile devices are categorized by make and model, where make is
generally the manufacturer of the device (such as Apple) and model is
generally the specific product (such as iPhone). The read-only Device
Model Service allows you to see what models of mobile devices are
registered in the Xandr system, as well as the
make, device type (phone, tablet, or other device), device screen size,
and supported capabilities (such as JavaScript creatives, Flash
creatives, cookies) for each model. You can use this service to retrieve
this data for targeting in mobile campaigns.



Note:

You can target mobile campaigns based on mobile carrier as well. For
more details, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/carrier-service.html"
class="xref" target="_blank">Carrier Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001202__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001202__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001202__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__2"><a
href="https://api.appnexus.com/device-model" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/device-model</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__3">View
all device models</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__2"><a
href="https://api.appnexus.com/device-model?device_type=DEVICE_TYPE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/device-model?device_type=DEVICE_TYPE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__3">View
all device models of a specific type (i.e., pc, phone, or tablet)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__2"><a
href="https://api.appnexus.com/device-model?id=DEVICE_MODEL_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/device-model?id=DEVICE_MODEL_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__3">View
a specific device model</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__2"><a
href="https://api.appnexus.com/device-model/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/device-model/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001202__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001202__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001202__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">codes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18">Third-party representations for the
device model. See <a href="device-model-service.html#ID-00001202__codes"
class="xref">Codes</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">device_make_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
ID of the device make to which the model belongs. For example, the <code
class="ph codeph">iPhone</code> device model would belong to the <code
class="ph codeph">Apple</code> device make.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">device_make_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
name of the device make to which the model belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">device_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
type of device. Possible values: <code class="ph codeph">pc</code>,
<code class="ph codeph">phone</code>, <code
class="ph codeph">tablet</code>, <code class="ph codeph">tv</code>,
<code class="ph codeph">gameconsole</code>, <code
class="ph codeph">stb</code>, <code
class="ph codeph">mediaplayer</code><br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
ID of the device model.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
name of the device model (such as <code
class="ph codeph">iPhone</code>).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">screen_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
height of the screen on the device.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">screen_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__18">The
width of the screen on the device.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">supports_cookies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18"><strong>Not yet available</strong>. If
<code class="ph codeph">true</code>, the device supports cookies. If
null, Xandr does not know whether or not the
device supports cookies.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">supports_flash</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18"><strong>Not yet supported</strong>. If
<code class="ph codeph">true</code>, the device supports Flash
creatives. If null, Xandr does not know whether
or not the device supports Flash.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">supports_geo</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18"><strong>Not yet available</strong>. If
<code class="ph codeph">true</code>, the device can pass the latitude
and longitude of users, when GPS data is available. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">supports_html_audio</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18"><strong>Not yet available</strong>. If
<code class="ph codeph">true</code>, the device supports HTML audio
creatives. If null, Xandr does not know whether
or not the device supports HTML audio.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">supports_html_video</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18"><strong>Not yet available</strong>. If
<code class="ph codeph">true</code>, the device supports HTML video
creatives. If null, Xandr does not know whether
or not the device supports HTML video.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__16"><code
class="ph codeph">supports_js</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__18"><strong>Not yet available</strong>. If
<code class="ph codeph">true</code>, the device supports JavaScript
creatives. If null, Xandr does not know whether
or not the device supports JavaScript.</td>
</tr>
</tbody>
</table>

**Codes**

Each object in the `codes` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001202__entry__61"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001202__entry__62"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001202__entry__63"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__61"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__62">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__63">The
ID for the device model.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__61"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__62">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__63">The
third-party representation for the device model.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__61"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__62">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__63">Identification information about the
third-party.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__61"><code
class="ph codeph">device_model_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001202__entry__62">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001202__entry__63">The
ID for the device model.</td>
</tr>
</tbody>
</table>





## Examples

**View all models of mobile devices**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/device-model'
{
    "response": {
        "status": "OK",
        "count": 9033,
        "start_element": null,
        "num_elements": null,
        "device-models": [
            {
                "id": 1,
                "name": "Onetab XST2",
                "device_make_id": 1,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "4G Systems",
                "codes": [
                    {
                        "id": 1,
                        "code": "da-3499464",
                        "notes": "4G Systems:Onetab XST2",
                        "device_model_id": 1
                    }
                ]
            },
            {
                "id": 2,
                "name": "PAD7",
                "device_make_id": 2,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "A-Link",
                "codes": [
                    {
                        "id": 2,
                        "code": "da-3924965",
                        "notes": "A-Link:PAD7",
                        "device_model_id": 2
                    }
                ]
            },
            {
                "id": 3,
                "name": "A101",
                "device_make_id": 3,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "Acer",
                "codes": [
                    {
                        "id": 3,
                        "code": "da-3318996",
                        "notes": "Acer:A101",
                        "device_model_id": 3
                    }
                ]
            },
            {
                "id": 4,
                "name": "A200",
                "device_make_id": 3,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "Acer",
                "codes": [
                    {
                        "id": 4,
                        "code": "da-3334186",
                        "notes": "Acer:A200",
                        "device_model_id": 4
                    }
                ]
            },
            ...
        ]
    }
}
```

**View a specific model of mobile device**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/device-model?id=2'
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "device-model": {
            "id": 2,
            "name": "PAD7",
            "device_make_id": 2,
            "device_type": "tablet",
            "screen_width": null,
            "screen_height": null,
            "is_aggregated": false,
            "supports_js": null,
            "supports_cookies": null,
            "supports_flash": null,
            "supports_geo": null,
            "supports_html_video": null,
            "supports_html_audio": null,
            "device_make_name": "A-Link",
            "codes": [
                {
                    "id": 2,
                    "code": "da-3924965",
                    "notes": "A-Link:PAD7",
                    "device_model_id": 2
                }
            ]
        }
    }
}
```

**View all models of "tablet" devices**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/device-model?device_type=tablet'
{
    "response": {
        "status": "OK",
        "count": 547,
        "start_element": null,
        "num_elements": null,
        "device-models": [
            {
                "id": 1,
                "name": "Onetab XST2",
                "device_make_id": 1,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "4G Systems",
                "codes": [
                    {
                        "id": 1,
                        "code": "da-3499464",
                        "notes": "4G Systems:Onetab XST2",
                        "device_model_id": 1
                    }
                ]
            },
            {
                "id": 2,
                "name": "PAD7",
                "device_make_id": 2,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "A-Link",
                "codes": [
                    {
                        "id": 2,
                        "code": "da-3924965",
                        "notes": "A-Link:PAD7",
                        "device_model_id": 2
                    }
                ]
            },
            {
                "id": 3,
                "name": "A101",
                "device_make_id": 3,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "Acer",
                "codes": [
                    {
                        "id": 3,
                        "code": "da-3318996",
                        "notes": "Acer:A101",
                        "device_model_id": 3
                    }
                ]
            },
            {
                "id": 4,
                "name": "A200",
                "device_make_id": 3,
                "device_type": "tablet",
                "screen_width": null,
                "screen_height": null,
                "is_aggregated": false,
                "supports_js": null,
                "supports_cookies": null,
                "supports_flash": null,
                "supports_geo": null,
                "supports_html_video": null,
                "supports_html_audio": null,
                "device_make_name": "Acer",
                "codes": [
                    {
                        "id": 4,
                        "code": "da-3334186",
                        "notes": "Acer:A200",
                        "device_model_id": 4
                    }
                ]
            },
            ...
        ]
    }
}
```






