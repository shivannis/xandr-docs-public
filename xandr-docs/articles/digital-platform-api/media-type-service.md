---
Title : Media Type Service
Description : The Xandr platform categorizes creatives by
format, media type, and media subtype:
- Format defines the resource type of the creative (flash, image, etc.)
---


# Media Type Service



The Xandr platform categorizes creatives by
format, media type, and media subtype:

- Format defines the resource type of the creative (flash, image, etc.)
- Media type defines the general display style of the creative (banner,
  expandable, video, etc.)
- Media subtype defines the specific display style of the creative
  (standard banner, MediaMind expandable, Standard VAST, etc.)

This read-only service allows you to view all of the supported media
types.



Tip:

To view all supported formats and media subtypes, you can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-format-service.html"
class="xref" target="_blank">Creative Format Service</a> and the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001f53__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001f53__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001f53__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__2">https://api.<span
class="ph">appnexus.com/media-type</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__3">View
all media types</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__2">https://api.<span
class="ph">appnexus.com/media-type?id=MEDIA_TYPE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__3">View
a specific media type</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001f53__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001f53__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001f53__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__10"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__12">A
code-friendly version of the media type's name. For example, "Image and
Text" becomes <code class="ph codeph">"image_and_text"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__12">The
ID of the media type.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__12">The
date and time when Xandr last modified the media
type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__10"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__12">The
group to which a media type belongs. This information is relevant for
setting allowed media types on placements (see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a>). Only media types
that belong to the same group can be allowed on a single placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__11">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__12">The
name of the media type, for example, "Banner", "Interstitial", or
"Video".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__10"><code
class="ph codeph">uses_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001f53__entry__11">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001f53__entry__12">The
size requirement for creatives belonging to the media type. Possible
values:
<ul>
<li>"always" - width and height are required when adding creatives
(Banner and Expandable)</li>
<li>"sometimes" - width and height are sometimes required when adding
creatives (Pop and Text)</li>
<li>"never" - width and height are not required when adding creatives
(Interstitial, Video, and Skin)</li>
</ul></td>
</tr>
</tbody>
</table>





## Examples

**View all media types**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/media-type'
{
    "response": {
        "status": "OK",
        "count": 8,
        "start_element": null,
        "num_elements": null,
        "media-types": [
            {
                "id": 1,
                "name": "Banner",
                "media_type_group_id": 1,
                "uses_sizes": "always",
                "last_modified": "2012-03-16 21:36:10"
            },
            {
                "id": 2,
                "name": "Pop",
                "media_type_group_id": 2,
                "uses_sizes": "sometimes",
                "last_modified": "2012-03-16 21:36:10"
            },
            {
                "id": 3,
                "name": "Interstitial",
                "media_type_group_id": 1,
                "uses_sizes": "never",
                "last_modified": "2012-06-26 17:18:54"
            },
            {
                "id": 4,
                "name": "Video",
                "media_type_group_id": 4,
                "uses_sizes": "never",
                "last_modified": "2012-03-16 21:36:10"
            },
            {
                "id": 5,
                "name": "Text",
                "media_type_group_id": 1,
                "uses_sizes": "sometimes",
                "last_modified": "2012-03-16 21:36:10"
            },
            {
                "id": 6,
                "name": "Expandable",
                "media_type_group_id": 1,
                "uses_sizes": "always",
                "last_modified": "2012-03-16 21:36:11"
            },
            {
                "id": 8,
                "name": "Skin",
                "media_type_group_id": 1,
                "uses_sizes": "never",
                "last_modified": "2012-06-26 17:18:54"
            },
            {
                "id": 9,
                "name": "Facebook",
                "media_type_group_id": 6,
                "uses_sizes": "always",
                "last_modified": "2012-06-27 18:53:17"
            }
        ]
    }
}
```

**View the "Video" media type (id 4)**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/media-type?id=4'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "media-type": {
            "id": 4,
            "name": "Video",
            "media_type_group_id": 4,
            "uses_sizes": "never",
            "last_modified": "2012-03-16 21:36:10"
        }
    }
}
```

**View media types that always require creatives to have a width and
height**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/media-type?uses_sizes=always'
{
    "response": {
        "status": "OK",
        "count": 4,
        "start_element": 0,
        "num_elements": 100,
        "media-types": [
            {
                "id": 1,
                "name": "Banner",
                "media_type_group_id": 1,
                "uses_sizes": "always",
                "last_modified": "2012-03-16 21:36:10",
                "code": "banner"
            },
            {
                "id": 6,
                "name": "Expandable",
                "media_type_group_id": 1,
                "uses_sizes": "always",
                "last_modified": "2012-03-16 21:36:11",
                "code": "expandable"
            },
            {
                "id": 9,
                "name": "Facebook",
                "media_type_group_id": 6,
                "uses_sizes": "always",
                "last_modified": "2012-06-27 18:53:17",
                "code": "facebook"
            },
            {
                "id": 10,
                "name": "Image and Text",
                "media_type_group_id": 1,
                "uses_sizes": "always",
                "last_modified": "2013-10-31 20:31:59",
                "code": "image_and_text"
            }
        ]
    }
    }
```





## Related Topics

- <a href="creative-format-service.html" class="xref">Creative Format
  Service</a>
- <a href="media-subtype-service.html" class="xref">Media Subtype
  Service</a>






