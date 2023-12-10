---
Title : Creative Upload Service - File Format
Description : The Creative Upload service provides the ability to upload a file and
ms.date: 10/28/2023
ms.custom: digital-platform-api
get a **media asset object** in return.
---


# Creative Upload Service - File Format



The Creative Upload service provides the ability to upload a file and
get a **media asset object** in return.



<b>Note:</b> Media assets that are not
associated to a creative can be cleaned up at any time.



>

## Format Overview

The creative upload service is a multi-part form post. There are a few
parameters required to construct the post.

The following table describes the ordering of the forms that compose the
post:

<table id="buy-side-service-template__table_gbt_mdj_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><a
href="creative-upload-service---file-format.md"
class="xref" target="_blank">Authorization</a></td>
<td class="entry align-left colsep-1 rowsep-1"><a
href="creative-upload-service---file-format.md#CreativeUploadServiceFileFormat-FormType"
class="xref" target="_blank">Form Type</a></td>
<td class="entry align-left colsep-1 rowsep-1"><a
href="creative-upload-service---file-format.md#CreativeUploadServiceFileFormat-FormFileUpload"
class="xref" target="_blank">Form File Upload</a></td>
<td class="entry align-left colsep-1 rowsep-1"><a
href="creative-upload-service---file-format.md"
class="xref" target="_blank">AppNexus API</a></td>
</tr>
</tbody>
</table>



>

## Authorization

<table id="buy-side-service-template__table_hbt_mdj_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_hbt_mdj_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1"><strong>Name</strong></th>
<th id="buy-side-service-template__table_hbt_mdj_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="buy-side-service-template__table_hbt_mdj_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1"><strong>Description</strong></th>
<th id="buy-side-service-template__table_hbt_mdj_wwb__entry__4"
class="entry align-left colsep-1 rowsep-1"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbt_mdj_wwb__entry__1"><code
class="ph codeph">Authorization</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbt_mdj_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbt_mdj_wwb__entry__3">The
token received when authenticated to AppNexus API.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbt_mdj_wwb__entry__4">"hbapi:108172:05866d06f6964:nym2"</td>
</tr>
</tbody>
</table>

For more information, see <a
href="04---api-authentication.md"
class="xref" target="_blank">API Authentication</a>.

**Form Type**

Use the first form to define the **type** of file you are looking to
upload.

<table id="buy-side-service-template__table_ibt_mdj_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ibt_mdj_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_ibt_mdj_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_ibt_mdj_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
<th id="buy-side-service-template__table_ibt_mdj_wwb__entry__4"
class="entry align-left colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ibt_mdj_wwb__entry__1"><code
class="ph codeph">form</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ibt_mdj_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ibt_mdj_wwb__entry__3">Define
the type of file you are looking to upload.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ibt_mdj_wwb__entry__4"><code
class="ph codeph">--form </code> <code
class="ph codeph">"type=video"</code></td>
</tr>
</tbody>
</table>

**Accepted file types:**

<table id="buy-side-service-template__table_jbt_mdj_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_jbt_mdj_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_jbt_mdj_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__1"><code
class="ph codeph">html</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__2">"zip".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__1"><code
class="ph codeph">video</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__2"><p>"webm","mkv","flv","vob","ogv","ogg","avi","mov","qt","wmv","rm","asf","mp4","m4p","m4v","mpg","mp2","mpeg","mpe","mpv","m2v","m4v",</p>
<p>"3gp","3g2","f4v","f4p","f4a","f4b", "swf".</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__1"><code
class="ph codeph">audio</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__2"><p>"aac","webm","mkv","flv","vob","ogv","ogg","avi","mov","qt","wmv","rm","asf","mp3","mp4","m4p","m4v","mpg","mp2","mpeg","mpe","mpv",</p>
<p>"m2v","m4v","3gp","3g2","f4v","f4p","f4a","f4b", "swf",
"wav".</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__1"><code
class="ph codeph">image</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__2">"jpeg",
"jpg", "gif", "png", "swf".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__1"><code
class="ph codeph">default</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jbt_mdj_wwb__entry__2"></td>
</tr>
</tbody>
</table>





<b>Note:</b> .mov videos will play in all
browsers after the video finishes transcoding, however, there may be a
delay in previewing.





**Form File Upload**

Use the next form to define the **path** to the file you want to upload.

<table id="buy-side-service-template__table_h5g_wdj_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_h5g_wdj_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1"><strong>Name</strong></th>
<th id="buy-side-service-template__table_h5g_wdj_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1"><strong>Type</strong></th>
<th id="buy-side-service-template__table_h5g_wdj_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1"><strong>Description</strong></th>
<th id="buy-side-service-template__table_h5g_wdj_wwb__entry__4"
class="entry align-left colsep-1 rowsep-1"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h5g_wdj_wwb__entry__1"><code
class="ph codeph">form</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h5g_wdj_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h5g_wdj_wwb__entry__3">Define
the path to the file you want to upload.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h5g_wdj_wwb__entry__4">--form
"file=@/Folder1/Folder2/Downloads/IMG_0332.JPG"</td>
</tr>
</tbody>
</table>

**AppNexus API**

Define the **URL** to the AppNexus API and point to the
`creative-upload` end point. Member ID is required.

<table id="buy-side-service-template__table_i5g_wdj_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_i5g_wdj_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_i5g_wdj_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_i5g_wdj_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
<th id="buy-side-service-template__table_i5g_wdj_wwb__entry__4"
class="entry align-left colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i5g_wdj_wwb__entry__1"><code
class="ph codeph">URL</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i5g_wdj_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i5g_wdj_wwb__entry__3">Define
HTTP protocol and the <code class="ph codeph">creative-upload</code>
endpoint.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i5g_wdj_wwb__entry__4"><code
class="ph codeph">"</code><a
href="https://api.appnexus.com/creative-upload?member_id=123"
class="xref" target="_blank"><code
class="ph codeph">https://api.appnexus.com/creative-upload?member_id=123"</code></a></td>
</tr>
</tbody>
</table>



>

## Example

The following example illustrates a scenario derived from a real use
case.

A client is uploading an image file to member 123.

<table id="buy-side-service-template__table_j5g_wdj_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td
class="entry align-left colsep-1 rowsep-1"><strong>Field</strong></td>
<td
class="entry align-left colsep-1 rowsep-1"><strong>Value</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">Authorization</code></td>
<td class="entry align-left colsep-1 rowsep-1"><pre
id="buy-side-service-template__pre_k5g_wdj_wwb" class="pre"><code>hbapi:139072:5761726637ada:nym2</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">Form Type</code></td>
<td class="entry align-left colsep-1 rowsep-1">image</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">Form File Upload</code></td>
<td class="entry align-left colsep-1 rowsep-1"><pre
id="buy-side-service-template__pre_l5g_wdj_wwb" class="pre"><code>Folder1/Folder2/IMG_0332.JPG</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">AppNexus API</code></td>
<td class="entry align-left colsep-1 rowsep-1"><pre
id="buy-side-service-template__pre_m5g_wdj_wwb" class="pre"><code>https://api.appnexus.com/creative-upload?member_id=12</code></pre></td>
</tr>
</tbody>
</table>

**A client is uploading an image file to member 123**

``` pre
curl -X POST -H "Authorization: hbapi:139072:5761726637ada:nym2" --form "type=image" --form "file=@/Folder1/Folder2/IMG_0332.JPG" "https://api.appnexus.com/creative-upload?member_id=123"
```

``` pre
"response":{  
      "status":"OK",
      "count":0,
      "start_element":0,
      "num_elements":0,
      "dbg_info":{  
         "instance":"05.media-asset-pipeline.prod.nym2",
         "db":"",
         "warnings":[  

         ],
         "start_microtime":1492716035.805,
         "time":5,
         "version":"",
         "output_term":"media-asset"
      },
      "media-asset":[  
         {  
            "id":1536691,
            "parent_media_asset_id":null,
            "member_id":123,
            "advertiser_id":null,
            "publisher_id":null,
            "file_name":"IMG_0332.JPG",
            "size_in_bytes":79400,
            "cdn_uploaded_on":null,
            "cdn_url":"http://vcdn.adnxs.com/p/creative-image/1b/ee/3d/95/1bee3d95-7042-4e10-b0bf-7f43e2e4322a.JPG",
            "cdn_secure_url":"https://vcdn.adnxs.com/p/creative-image/1b/ee/3d/95/1bee3d95-7042-4e10-b0bf-7f43e2e4322a.JPG",
            "created_on":"2017-04-20 19:20:35",
            "last_modified":"2017-04-20 19:20:35",
            "deleted":false,
            "media_asset_status":[  
               {  
                  "id":1536687,
                  "media_asset_id":1536691,
                  "error_message":null,
                  "local_path":"1b/ee/3d/95/1bee3d95-7042-4e10-b0bf-7f43e2e4322a.JPG",
                  "cdn_upload_attempt_count":0,
                  "created_on":"2017-04-20 19:20:35",
                  "last_modified":"2017-04-20 19:20:35",
                  "deleted":false,
                  "status":"on_shared_storage"
               }
            ],
            "media_asset_image":{  
               "id":1005450,
               "media_asset_id":1536691,
               "height":480,
               "width":640,
               "created_on":"2017-04-20 19:20:35",
               "last_activity":"2017-04-20 19:20:35",
               "deleted":false
            },
            "media_asset_video":null,
            "media_asset_html5":null,
            "asset_type":"image",
            "mime_type":"image/jpeg"
         }
      ]
   }
   }
```



>

## **Related Topics**



- <a
  href="creative-service.md"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="creative-vast-service.md"
  class="xref" target="_blank">Creative VAST Service</a>
- <a
  href="creative-html-service.md"
  class="xref" target="_blank">Creative HTML Service</a>








