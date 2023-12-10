---
Title : App Asset Service
Description : This is an admin-only service that allows Xandr
ms.date: 10/28/2023
ms.custom: digital-platform-api
personnel to add app-related images to Akamai. This service is not
---


# App Asset Service



This is an admin-only service that allows Xandr
personnel to add app-related images to Akamai. This service is not
available to any Apps Marketplace subscribers or developers.



## REST API



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000980__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000980__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000980__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__2"><a
href="https://api.appnexus.com/app-asset" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-asset</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__3">Add
an image</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__2"><a
href="https://api.appnexus.com/app-asset" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-asset</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__3">View
all images</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__2"><a
href="https://api.appnexus.com/app-asset?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-asset?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__3">View
a specific image</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__2"><a
href="https://api.appnexus.com/app-asset?plugin_id=PLUGIN_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/app-asset?plugin_id=PLUGIN_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__3">View
all images associated to a specific app</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__2"><a
href="https://api.appnexus.com/app-asset?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-asset?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__3">Delete an image</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000980__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000980__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000980__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__21">The unique ID of each image.
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code> and
<code class="ph codeph">DELETE</code>, in querystring.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">plugin_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__21">The
unque ID value of the plugin to which this image is associated.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__21">Text which describes the app asset.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">category</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__21">The
category in which the app asset belongs. The possible values: <code
class="ph codeph">"big_icon"</code>,<code
class="ph codeph">"icon"</code>,<code
class="ph codeph">"favicon"</code>,<code
class="ph codeph">"screenshot"</code>
<p><strong>Default</strong>: <code class="ph codeph">null</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__21">The
width of the app asset, in pixels.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__21">The
height of the app asset, in pixels. This must be at least
<strong>400</strong>.
<p><strong>Default:</strong><code class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">file_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__21"><strong>Read only.</strong> The image
type of the app asset. Possible values are <code
class="ph codeph">"png"</code>, <code class="ph codeph">"jpg"</code>,
<code class="ph codeph">"gif"</code>.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__21"><strong>Read Only.</strong> The date
and time when the image was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">media_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__21"><strong>Read Only.</strong> The URL to
the hosted app asset. 
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">content</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000980__entry__21">The
base 64 encoded content of the app asset. This field does not
appear when you execute a <code class="ph codeph">GET</code> command. 
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__19"><code
class="ph codeph">size_in_bytes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000980__entry__21"><strong>Read Only.</strong> The size of
the app asset in bytes. This cannot exceed <strong>2 MB</strong>.
<p><strong>Default</strong>: <code class="ph codeph">0</code></p></td>
</tr>
</tbody>
</table>





## Image Requirements



1.  The `plugin_id` must be a valid one from the plugin service.
2.  The number of app assets for each plugin_id cannot exceed the limit
    given by `allowed_asset_count` in the <a
    href="plugin-service.md"
    class="xref" target="_blank">Plugin Service</a>. The default is
    **5**.
3.  The image size cannot exceed **2MB**.
4.  The image type must be either **.jpg**, **gif**, or
    .png.
5.  The image must be **base 64 encoded**.
6.  The image height must be at least **400px**.
7.  The following dimensions are required for these `category` types:
    - **big_icon:** 150 x 175
    - **icon:** 96 x 96
    - **favicon:** 16 x 16
    - **screenshot:** 640 x 400







## Examples

**Add an image**

``` pre
$ cat add-image.json
             {
             "app-asset": {
             "id":  "3466",
             "plugin_id": "91"
             }
             }
             $ curl -b cookies -c cookies -X PUT -d @add-image.json 'https://api.appnexus.com/app-asset'
             {
             "response":{
             "status":"OK",
             "count":1,
             "id":"3467",
             "start_element":null,
             "num_elements":null,
             "app-asset":{
             "id":3467,
             "plugin_id":92,
             "description":null,
             "category":"screenshot",
             "width":640,
             "height":400,
             "file_type":"jpeg",
             "media_url":"http:\/\/cdn.sand-08.adnxs.net\/s\/app_asset\/11\/d7\/55\/bc\/11d755bce0f9e7539b57408de1799204.jpeg",
             "size_in_bytes":49354
             },
```

**View a specific image**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/app-asset?id=3464'
             {
             "response":{
             "status":"OK",
             "count":1,
             "start_element":null,
             "num_elements":null,
             "app-asset":{
             "id":3467,
             "plugin_id":92,
             "description":null,
             "category":"screenshot",
             "width":640,
             "height":400,
             "file_type":"jpeg",
             "media_url":"http:\/\/cdn.sand-08.adnxs.net\/s\/app_asset\/11\/d7\/55\/bc\/11d755bce0f9e7539b57408de1799204.jpeg",
             "size_in_bytes":49354
             }
             }
             }
```

**View all images**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/app-asset'
             {
             "response":{
             "status":"OK",
             "count":3,
             "start_element":null,
             "num_elements":null,
             "app-assets":[
             {
             "id":3467,
             "plugin_id":92,
             "description":null,
             "category":"screenshot",
             "width":640,
             "height":400,
             "file_type":"jpeg",
             "media_url":"http:\/\/cdn.sand-08.adnxs.net\/s\/app_asset\/11\/d7\/55\/bc\/11d755bce0f9e7539b57408de1799204.jpeg",
             "size_in_bytes":49354
             },
             {
             "id":3468,
             "plugin_id":91,
             "description":"This is a description of the screenshot",
             "category":"screenshot",
             "width":640,
             "height":400,
             "file_type":"jpeg",
             "media_url":"http:\/\/cdn.sand-08.adnxs.net\/s\/app_asset\/11\/d7\/55\/bc\/11d755bce0f9e7539b57408de1799204.jpeg",
             "size_in_bytes":49354
             },
             {
             "id":3469,
             "plugin_id":47,
             "description":null,
             "category":"icon",
             "width":96,
             "height":96,
             "file_type":"png",
             "media_url":"http:\/\/cdn.sand-08.adnxs.net\/s\/app_asset\/1b\/65\/02\/14\/1b6502147d7fa34f5a75d722fb46e4f3.png",
             "size_in_bytes":15250
             }
             ]
             }}
```

**View all images associated to a specific app**

``` pre
$ curl -b cookies -c cookies 'http://sand.api.appnexus.com/app-asset?plugin_id=91' | json-pp
             {
             "response":{
             "status":"OK",
             "count":1,
             "start_element":null,
             "num_elements":null,
             "app-assets":[
             {
             "id":3468,
             "plugin_id":91,
             "description":"This is a description of the screenshot",
             "category":"screenshot",
             "width":640,
             "height":400,
             "file_type":"jpeg",
             "media_url":"http:\/\/cdn.sand-08.adnxs.net\/s\/app_asset\/11\/d7\/55\/bc\/11d755bce0f9e7539b57408de1799204.jpeg",
             "size_in_bytes":49354
             }
             ]
             }
             }
```

**Delete an image**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/app-asset?id=3468' |
             {
             "response":{
             "status":"OK",
```






