---
Title : Creative Format Service
Description : The Xandr platform categorizes creatives by
format, media type, and media subtype. Format defines the resource type
---


# Creative Format Service



The Xandr platform categorizes creatives by
format, media type, and media subtype. Format defines the resource type
of creatives (flash, image, etc.); media type defines the general
display style of creatives (banner, expandable, video, etc.); and media
subtype defines the specific display style of creatives (standard
banner, MediaMind expandable, or Standard VAST).

This read-only service allows you to view all of the supported creative
formats.



Note:

To view all supported media types and media subtypes, you can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a> and the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f7__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000009f7__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000009f7__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__2"><a
href="https://api.appnexus.com/creative-format" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/creative-format</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__3">View
all creative formats</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__2"><a
href="https://api.appnexus.com/creative-format?id=CREATIVE_FORMAT_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/creative-format?id=CREATIVE_FORMAT_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__3">View
a specific creative format</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f7__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f7__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f7__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__12">The
ID of the creative format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__11">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__12">The
name of the creative format, for example, "flash", "image", "url-html",
or "url-xml".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f7__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f7__entry__12">The
date and time when Xandr last modified the
creative format.</td>
</tr>
</tbody>
</table>





## Examples

**View all creative formats**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-format'
{
    "response": {
        "status": "OK",
        "count": 12,
        "start_element": 0,
        "num_elements": 100,
        "creative-formats": [
            {
                "id": 1,
                "name": "url-html",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 2,
                "name": "url-js",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 3,
                "name": "flash",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 4,
                "name": "image",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 5,
                "name": "raw-js",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 6,
                "name": "raw-html",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 7,
                "name": "iframe-html",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 8,
                "name": "url-vast",
                "last_modified": "2011-06-03 13:29:18"
            },
            {
                "id": 9,
                "name": "text",
                "last_modified": "2011-06-03 13:29:19"
            },
            {
                "id": 10,
                "name": "url-xml",
                "last_modified": "2012-01-27 16:14:43"
            },
            {
                "id": 11,
                "name": "url-file",
                "last_modified": "2012-01-27 16:14:43"
            },
            {
                "id": 12,
                "name": "native",
                "last_modified": "2015-02-26 23:40:28"
            }
        ]
    }
}
```

**View a specific creative format**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-format?id=5'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "creative-format": {
            "id": 5,
            "name": "raw-js",
            "last_modified": "2012-01-17 18:50:25"
        }
    }
}
```






