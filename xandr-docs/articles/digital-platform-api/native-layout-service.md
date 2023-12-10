---
Title : Native Layout Service
Description : This service allows the seller to specify the layout for a native
ms.date: 10/28/2023
ms.custom: digital-platform-api
creative. Once the layout is in our database, it can be retrieved using
---


# Native Layout Service



This service allows the seller to specify the layout for a native
creative. Once the layout is in our database, it can be retrieved using
the `renderer_id`, and subsequently the layout_id.

>

## REST API



<table id="native-layout-service__table_f1k_y3l_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="native-layout-service__table_f1k_y3l_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="native-layout-service__table_f1k_y3l_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="native-layout-service__table_f1k_y3l_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__2"><a
href="https://api.appnexus.com/native-layout?member_id=456" class="xref"
target="_blank">https://api.appnexus.com/native-layout?member_id=456</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__3">Create a
new layout.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__2"><a
href="https://api.appnexus.com/native-layout?id=16&amp;member_id=456"
class="xref"
target="_blank">https://api.appnexus.com/native-layout?id=16&amp;member_id=456</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__3">Edit an
existing layout.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__2"><a
href="https://api.appnexus.com/native-layout?id=123&amp;member_id=456"
class="xref"
target="_blank">https://api.appnexus.com/native-layout?id=123&amp;member_id=456</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_f1k_y3l_twb__entry__3">Delete a
layout.</td>
</tr>
</tbody>
</table>





>

## JSON Fields



<table id="native-layout-service__table_nwd_bjl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="native-layout-service__table_nwd_bjl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="native-layout-service__table_nwd_bjl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="native-layout-service__table_nwd_bjl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__1"><code
class="ph codeph">data_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__3">Attributes
of the native creative. See <a
href="native-layout-service.md#NativeLayoutService-DataAssets"
class="xref" target="_blank">Data Assets</a> below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__1"><code
class="ph codeph">image_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__3">Specify the
required attributes of each individual image. See <a
href="native-layout-service.md#NativeLayoutService-ImageAssets"
class="xref" target="_blank">Image Assets</a> for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__1"><code
class="ph codeph">renderer</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_nwd_bjl_twb__entry__3"><div
>
The renderer id of the seller. Enter the <strong><code
class="ph codeph">id</code></strong> <code
class="ph codeph">in this array. Example:</code>
<pre
id="native-layout-service__codeblock-5043615b-944d-47bd-a03d-a3ad6276e7cc"
class="pre codeblock"><code>&quot;renderer&quot;:{&quot;id&quot;:1}</code></pre>
</td>
</tr>
</tbody>
</table>

**Image Assets**



The `image_assets` object includes the following fields:

<table id="native-layout-service__table_ujc_hjl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="native-layout-service__table_ujc_hjl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="native-layout-service__table_ujc_hjl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="native-layout-service__table_ujc_hjl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__1"><code
class="ph codeph">aspect_ratios</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__3"><p>Define
the aspect ratios required for the <code class="ph codeph">icon</code>
image type. Required values are <strong><code
class="ph codeph">min_width,</code></strong><code
class="ph codeph"> </code><strong><code
class="ph codeph">ratio_width</code></strong><code
class="ph codeph"> and </code><strong><code
class="ph codeph">ratio_height</code></strong><code
class="ph codeph">.</code></p>

Example:
<pre id="native-layout-service__codeblock_ydm_njl_twb"
class="pre codeblock"><code>&quot;aspect_ratios&quot;: [
                    {
                        &quot;min_width&quot; : 100,
                        &quot;ratio_width&quot;: 1,
                        &quot;ratio_height&quot;: 2
                    }
                ]</code></pre>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__1"><code
class="ph codeph">image_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__3"><p>The
format of the image. Possible values include:</p>
<ul>
<li>main_image</li>
<li>icon_image</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__1"><code
class="ph codeph">required</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__3"><p>Specify
if the image is required.</p>
<p>Possible values:</p>
<ul>
<li><strong>1</strong> - Required</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__1"><code
class="ph codeph">sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="native-layout-service__table_ujc_hjl_twb__entry__3"><p>The size
of the image. Specify both <strong>width</strong> and
<strong>height.</strong></p>

Example:
<pre id="native-layout-service__codeblock_b2q_ljl_twb"
class="pre codeblock"><code>&quot;sizes&quot;: [
             {
                  &quot;width&quot;: 300,
                  &quot;height&quot;: 500
              }
          ]</code></pre>
</td>
</tr>
</tbody>
</table>

**Data Assets**

The `data_assets` object includes the following fields:

<table id="native-layout-service__table_rzk_rjl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="native-layout-service__table_rzk_rjl_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="native-layout-service__table_rzk_rjl_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="native-layout-service__table_rzk_rjl_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__1"><code
class="ph codeph">data_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__3"><p>The
asset type for the native creative. Possible values:</p>
<ul>
<li>sponsored_by</li>
<li>title</li>
<li>description</li>
<li>rating</li>
<li>call_to_action</li>
<li>display_url</li>
<li><p>likes</p></li>
<li><p>downloads</p></li>
<li><p>price</p></li>
<li><p>sale_price</p></li>
<li><p>phone</p></li>
<li><p>address</p></li>
<li><p>additional_description</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__1"><code
class="ph codeph">required</code></td>
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__3">If required
then the value should be <strong>1</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__1"><code
class="ph codeph">maximum_length</code></td>
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="native-layout-service__table_rzk_rjl_twb__entry__3">The maximum
length of the data asset</td>
</tr>
</tbody>
</table>



>

## Examples



**Create a new native layout protocol**

``` pre
$ cat native_layout

{
    "native-layout": {
        "renderer": {
            "id": 1
        },
        "image_assets":[
            {
                "image_type": "main_image", //depends on api.native_asset_image_type.name
                "required": 1,
                "sizes": [
                    {
                        "width": 300,
                        "height": 500
                    }
                ]
            },
            {
                "image_type": "icon_image",
                "aspect_ratios": [
                    {
                        "minimum_width" : 100,
                        "ratio_width": 1,
                        "ratio_height": 2
                    }
                ]
            }
        ],
        "data_assets": [
            {
                "data_type": "title", //depends on api.native_asset_data_type.name
                "required": 1,
                "maximum_length": 100
            }
        ]
    }
} 

$ curl -b cookies -c cookies -X POST -d @native_layout 'https://api.appnexus.com/native-layout?member_id=456'

{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "native-layout": {
            "id": 2,
            "member_id": 7,
            "renderer": {
                "id": 1
            },
            "data_assets": [
                {
                    "required": true,
                    "data_type": "title",
                    "maximum_length": 100
                }
            ],
            "image_assets": [
                {
                    "required": true,
                    "image_type": "main_image",
                    "sizes": [
                        {
                            "width": 300,
                            "height": 500
                        }
                    ],
                    "aspect_ratios": null
                },
                {
                    "required": false,
                    "image_type": "icon_image",
                    "sizes": null,
                    "aspect_ratios": [
                        {
                            "minimum_width": 100,
                            "ratio_width": 1,
                            "ratio_height": 2
                        }
                    ]
                }
            ]
        },
        ...
    }
}
```








