---
Title : Pixel Template Service
Description : This read-only service allows you to view information about
ms.date : 10/28/2023
Xandr-approved creative pixels from trusted,
commonly-used providers, such as Evidon and Brilig. Most
---


# Pixel Template Service



This read-only service allows you to view information about
Xandr-approved creative pixels from trusted,
commonly-used providers, such as Evidon and Brilig. Most
Xandr-approved creative pixels can be added to
creatives without causing re-audit.

Here's how it works:

1.  You use the Pixel Template Service to find the
    Xandr-approved pixel that you want to add to
    your creative.
2.  You note the ID of the pixel as well as its required parameters.
3.  You use the pixels array in <a
    href="creative-service.md"
    class="xref" target="_blank">Creative Service</a> to add the pixel
    to your creative and define values for the required parameters.


## REST API

<table id="ID-00004895__table_dbn_pbr_nwb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00004895__table_dbn_pbr_nwb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="ID-00004895__table_dbn_pbr_nwb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00004895__table_dbn_pbr_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__table_dbn_pbr_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__table_dbn_pbr_nwb__entry__2"><a
href="https://api..com/pixel-template" class="xref"
target="_blank">https://api..com/pixel-template</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__table_dbn_pbr_nwb__entry__3">To view all <span
class="ph">Xandr-approved creative pixels</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__table_dbn_pbr_nwb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__table_dbn_pbr_nwb__entry__2"><a
href="https://api..com/pixel-template/PIXEL_TEMPLATE_ID" class="xref"
target="_blank">https://api..com/pixel-template/PIXEL_TEMPLATE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__table_dbn_pbr_nwb__entry__3">To view a specific
Xandr-approved creative pixel</td>
</tr>
</tbody>
</table>




## JSON Fields





<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004895__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004895__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004895__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
ID of the Xandr-approved creative pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
name of the Xandr-approved creative pixel.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">format</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
format of the Xandr-approved creative pixel.
Possible values: "raw-js", "url-html", "url-js", or "url-image".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
HTML or JavaScript content of the creative pixel. This field is included
if format is "raw-js".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">secure_content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
secure HTML or JavaScript content of the creative pixel. This field is
included if format is "raw-js".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
URL of the html, JavaScript, or image creative pixel. This field is
included if format is "url-html", "url-js" or "url-image".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">secure_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
secure URL of the html, JavaScript, or image creative pixel. This field
is included if format is "url-html", "url-js" or "url-image".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">num_required_params</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">The
number of parameters that must be defined when adding the pixel to a
creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__10"><code
class="ph codeph">require_reaudit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004895__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004895__entry__12">If
true, adding the pixel to a creative causes the creative to be
resubmitted for audit.</td>
</tr>
</tbody>
</table>





## Examples

**Viewing all Xandr-approved creative pixels**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/pixel-template'
{
    "response": {
        "status": "OK",
        "count": 3,
        "start_element": 0,
        "num_elements": 100,
        "pixel-templates": [
            {
                "id": 1,
                "name": "Evidon AdChoices Icon",
                "format": "raw-js",
                "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' + ((\"https:\"
                 == document.location.protocol) ? \"https://c.betrad.com\" : \"http://c.betrad.com\") +
                 '/surly.js?;ad_wxh=${CREATIVE_SIZE};coid=${P1};nid=${P2};${P3}\"></scr'+'ipt>');}());",
                "num_required_params": 2,
                "require_reaudit": false
            },
            {
                "id": 2,
                "name": "Brilig Impression Tracker",
                "format": "url-image",
                "num_required_params": 1,
                "require_reaudit": false,
                "url": "http://p.brilig.com/contact/bct?pid=${P1}&_ct=pixel&adid=${CP_ID}&action=1"
            },
            {
                "id": 3,
                "name": "Alenty Impression Tracker",
                "format": "raw-js",
                "content": "var lnte = window.document.createElement('SCRIPT');lnte.src = 'http://js.alenty.com/
                 apnxs/l/adtrk.js'+'#customer_id=${P1}'+';advertiser=${ADV_ID}'+';campaign=${CP_ID}'+';creative=
                 ${CREATIVE_ID}'+';dimension=${WIDTH}x${HEIGHT}'+';site=${INV_SOURCE_ID}'+';sitepage=${PUBLISHER_ID}
                 _${SITE_ID}'+';external_id=-a--${SSP_DATA}-b--${PRICE_PAID}'+';url=' + encodeURIComponent
                 ('${REFERER_URL_ENC}'); lnte.type = \"text/javascript\"; window.document.body.insertBefore(lnte,
                 window.document.body.lastChild);",
                "num_required_params": 1,
                "require_reaudit": false
            },
            ...
        ],
        "dbg": {
            ...
        }
    }
}
```

**Viewing a specific Xandr-approved creative
pixel**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/pixel-template/1'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "pixel-template": {
            "id": 1,
            "name": "Evidon AdChoices Icon",
            "format": "raw-js",
            "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' + ((\"https:\"
             == document.location.protocol) ? \"https://c.betrad.com\" : \"http://c.betrad.com\") +
             /surly.js?;ad_wxh=${CREATIVE_SIZE};coid=${P1};nid=${P2};${P3}\"></scr'+'ipt>');}());",
            "num_required_params": 2,
            "require_reaudit": false
        },
        "dbg": {
            ...
        }
    }
}
```






