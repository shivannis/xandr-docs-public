---
Title : Media Subtype Service
Description : The Xandr platform categorizes creatives by
ms.date: 10/28/2023
ms.custom: digital-platform-api
format, media type, and media subtype. Format defines the resource type
---


# Media Subtype Service



The Xandr platform categorizes creatives by
format, media type, and media subtype. Format defines the resource type
of creatives (flash, image, etc.); media type defines the general
display style of creatives (banner, expandable, video, etc.); and media
subtype defines the specific display style of creatives (standard
banner, MediaMind expandable, Standard VAST, etc.).

This read-only service allows you to view all of the supported media
subtypes and the media types to which they belong.



<b>Tip:</b>

To view all supported formats and media types, you can use the <a
href="creative-format-service.md"
class="xref" target="_blank">Creative Format Service</a> and the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a>.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d4b__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001d4b__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001d4b__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__2"><a
href="https://api.appnexus.com/media-subtype" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/media-subtype</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__3">View
all media subtypes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__2"><a
href="https://api.appnexus.com/media-subtype?id=MEDIA_SUBTYPE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/media-subtype?id=MEDIA_SUBTYPE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__3">View
a specific media subtype</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__2"><a
href="https://api.appnexus.com/media-subtype?media_type.id=MEDIA_TYPE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/media-subtype?media_type.id=MEDIA_TYPE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__3">View
media subtypes that belong to a specific media type</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d4b__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d4b__entry__14" class="entry colsep-1 rowsep-1">Type
(length)</th>
<th id="ID-00001d4b__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__15">The
ID of the media subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__15">The
date and time when Xandr last modified the media
subtype.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__13"><code
class="ph codeph">media_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__14">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__15">The
media type to which the subtype belongs. See <a
href="media-subtype-service.md#ID-00001d4b__mt" class="xref">Media
Type</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__15">The
name of the media subtype, for example, "Standard Banner", "In-Banner
Video", or "15-Second VAST".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__13"><code
class="ph codeph">native_assets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__14">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__15">An
array describing constraints on elements of native ads for this media
subtype. Elements of a native ad can include the title, body content,
and more. The format's constraints could be whether body content is
required or recommended, or how long the text may be. See <a
href="media-subtype-service.md#ID-00001d4b__na" class="xref">Native
Assets</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__13"><code
class="ph codeph">permitted_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__14">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__15">The
permitted sizes for creatives of the media subtype. See <a
href="media-subtype-service.md#ID-00001d4b__ps" class="xref">Permitted
Sizes</a> below for more details. Note that not all media subtypes have
permitted size requirements.</td>
</tr>
</tbody>
</table>

**Media Type**

The `media_type` object contains the following fields. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d4b__entry__34"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d4b__entry__35"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d4b__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__34"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__36">The
ID of media type.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__34"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__35">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__36">The
group to which a media type belongs. This information is relevant for
setting allowed media types on placements (see <a
href="placement-service.md"
class="xref" target="_blank">Placement Service</a>). Only media types
that belong to the same group can be allowed on a single placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__34"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__35">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__36">The
name of the media type, for example, "Banner" or "Video".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__34"><code
class="ph codeph">uses_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__35">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__36">The
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

**Permitted Sizes**

Each object in the `permitted_sizes` array contains the following
fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d4b__entry__49"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d4b__entry__50"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d4b__entry__51"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">aspect_ratio_tolerance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">validate_image_size</code> and <code
class="ph codeph">scaling_permitted</code> are both <code
class="ph codeph">true</code> , the image can deviate from the aspect
ratio of <code class="ph codeph">platform_width</code> and <code
class="ph codeph">platform_height</code> by this amount. For example,
the aspect ratio for a platform_width and platform_height of 254x133 is
1.19:1. If the <code class="ph codeph">aspect_ratio_tolerance</code> is
0.03, an aspect ratio between 1.16:1 and 1.22:1 would be
acceptable.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">max_image_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the maximum acceptable image height, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">min_image_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the minimum acceptable image height, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">max_image_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the maximum acceptable image width, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">min_image_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code>, the minimum acceptable image width, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">platform_height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">The
actual rendering height, in pixels, for creatives of this media subtype.
This is also the height that appears in reporting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">platform_width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">The
actual rendering width, in pixels, for creatives of this media subtype.
This is also the width that appears in reporting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">scaling_permitted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">true</code>, the image for creatives of this
media subtype must have the same aspect ratio as <code
class="ph codeph">platform_width</code> / <code
class="ph codeph">platform_height</code>.
<p>If <code class="ph codeph">false</code>, the image for creatives of
this media subtype must have a width and height exactly matching <code
class="ph codeph">platform_width</code> and <code
class="ph codeph">platform_height</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__49"><code
class="ph codeph">validate_image_size</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__50">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__51">If
<code class="ph codeph">true</code>, the image for creatives of this
media subtype will be validated against the requirements defined by the
following fields in this object: <code
class="ph codeph">scaling_permitted</code>, <code
class="ph codeph">aspect_ratio_tolerance</code>, <code
class="ph codeph">min_image_width</code>, <code
class="ph codeph">max_image_width</code>, <code
class="ph codeph">min_image_height</code>, and <code
class="ph codeph">max_image_height</code>.</td>
</tr>
</tbody>
</table>

**Native Assets**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d4b__entry__79"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001d4b__entry__80"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001d4b__entry__81"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__79"><code
class="ph codeph">max_text_length</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__80">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__81">The
maximium allowable length of the text of the native asset for this media
subtype, in characters.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__79"><code
class="ph codeph">min_text_length</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__80">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__81">The
minimum allowable length of the text of the native asset for this media
subtype, in characters.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__79"><code
class="ph codeph">native_asset_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__80">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001d4b__entry__81">The
name of the native asset. This can be one of:
<ul>
<li><code class="ph codeph">"title"</code></li>
<li><code class="ph codeph">"content"</code></li>
<li><code class="ph codeph">"description"</code></li>
<li><code class="ph codeph">"full_text"</code></li>
<li><code class="ph codeph">"context"</code></li>
<li><code class="ph codeph">"icon_img_url"</code></li>
<li><code class="ph codeph">"main_media"</code></li>
<li><code class="ph codeph">"cta"</code></li>
<li><code class="ph codeph">"rating"</code></li>
<li><code class="ph codeph">"click_fallback_url"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__79"><code
class="ph codeph">requirement</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__80">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001d4b__entry__81">Whether this asset is required by this
particular media subtype. This field can contain several levels of
"requiredness":
<ul>
<li><code class="ph codeph">"required"</code></li>
<li><code class="ph codeph">"recommended"</code></li>
<li><code class="ph codeph">"optional"</code></li>
</ul></td>
</tr>
</tbody>
</table>





## Examples

**View all media subtypes**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/media-subtype'
{
    "response": {
        "status": "OK",
        "count": 26,
        "start_element": null,
        "num_elements": null,
        "media-subtypes": [
            {
                "id": 1,
                "name": "Standard Banner",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 1,
                    "name": "Banner",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 2,
                "name": "Popup",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 2,
                    "name": "Pop",
                    "media_type_group_id": 2,
                    "uses_sizes": "sometimes"
                }
            },
            {
                "id": 3,
                "name": "In-Banner Video",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 1,
                    "name": "Banner",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 4,
                "name": "Popunder",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 2,
                    "name": "Pop",
                    "media_type_group_id": 2,
                    "uses_sizes": "sometimes"
                }
            },
            {
                "id": 5,
                "name": "Standard Interstitial",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 3,
                    "name": "Interstitial",
                    "media_type_group_id": 1,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 7,
                "name": "15-second VAST",
                "last_modified": "2012-02-17 22:58:10",
                "media_type": {
                    "id": 4,
                    "name": "Video",
                    "media_type_group_id": 4,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 8,
                "name": "30-second VAST",
                "last_modified": "2012-02-17 22:58:10",
                "media_type": {
                    "id": 4,
                    "name": "Video",
                    "media_type_group_id": 4,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 9,
                "name": "Text",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 5,
                    "name": "Text",
                    "media_type_group_id": 1,
                    "uses_sizes": "sometimes"
                }
            },
            {
                "id": 10,
                "name": "Other Expandable",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 11,
                "name": "MediaMind",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 12,
                "name": "Pointroll",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 13,
                "name": "EyeWonder",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 14,
                "name": "EyeReturn",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 15,
                "name": "Pictela",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 16,
                "name": "Flashtalking",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 17,
                "name": "Doubleclick",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 18,
                "name": "Unicast",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 19,
                "name": "Spongecell",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 20,
                "name": "Adrime",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 21,
                "name": "Layer",
                "last_modified": "2012-02-01 18:49:36",
                "media_type": {
                    "id": 3,
                    "name": "Interstitial",
                    "media_type_group_id": 1,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 22,
                "name": "Slide-in",
                "last_modified": "2012-02-01 18:49:37",
                "media_type": {
                    "id": 3,
                    "name": "Interstitial",
                    "media_type_group_id": 1,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 23,
                "name": "Other VAST",
                "last_modified": "2012-02-17 22:58:11",
                "media_type": {
                    "id": 4,
                    "name": "Video",
                    "media_type_group_id": 4,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 24,
                "name": "Oggifinogi",
                "last_modified": "2012-02-20 19:07:46",
                "media_type": {
                    "id": 6,
                    "name": "Expandable",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                }
            },
            {
                "id": 48,
                "name": "IAB",
                "last_modified": "2012-04-30 16:39:35",
                "media_type": {
                    "id": 8,
                    "name": "Skin",
                    "media_type_group_id": 1,
                    "uses_sizes": "never"
                }
            },
            {
                "id": 49,
                "name": "Custom",
                "last_modified": "2012-04-30 16:39:35",
                "media_type": {
                    "id": 8,
                    "name": "Skin",
                    "media_type_group_id": 1,
                    "uses_sizes": "never"
                }
            }
            }
        ]
    }
}
```

**View the "Standard VAST" media subtype (id 64)**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/media-subtype?id=64'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "media-subtype": {
            "id": 64,
            "name": "Standard VAST",
            "last_modified": "2014-09-04 13:06:04",
            "media_type": {
                "id": 4,
                "name": "Video",
                "media_type_group_id": 4,
                "uses_sizes": "never"
            },
            "permitted_sizes": null,
            "native_assets": null
        }
    }
}
```

**View the media subtypes that belong to the "Banner" media type**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/media-subtype?media_type.id=1'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "media-subtypes": [
            {
                "id": 1,
                "name": "Standard Banner",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 1,
                    "name": "Banner",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                },
                "permitted_sizes": null
            },
            {
                "id": 3,
                "name": "In-Banner Video",
                "last_modified": "2012-01-27 16:14:43",
                "media_type": {
                    "id": 1,
                    "name": "Banner",
                    "media_type_group_id": 1,
                    "uses_sizes": "always"
                },
                "permitted_sizes": null
            }
        ]
    }
}
```






