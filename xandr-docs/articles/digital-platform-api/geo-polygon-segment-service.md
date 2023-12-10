---
Title : Geo Polygon Segment Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
<b>Note:</b>
This service is in **Alpha**. This feature is subject to change without
---


# Geo Polygon Segment Service





<b>Note:</b>

This service is in **Alpha**. This feature is subject to change without
notice and is only available to select clients. If you would like to
participate in the Alpha test, please contact your account manager.



The Geo Polygon Segment Service lets you create, configure, and export
geo polygon segments. A geo polygon segment is a list of user locations
specified by Well-known text (WKT) polygon coordinates. Well-known text
(WKT) is a text markup language for representing vector geometry objects
on a map using coordinates. After you create a geo polygon segment, you
can use the segment automatically associated with it for geographical
targeting of multiple user locations. The Geo Polygon Segment Service
lets you to upload CSV files of geo polygon WKT into a geo segment. You
can use the same geo segment for targeting at the line item level.





<b>Warning:</b> Geo Polygon Segment Service is
based on Well-known text (WKT) polygon coordinates. This indicates that
the geo polygons must be uploaded in **longitude and latitude (long,
lat)** format instead of latitude and longitude (lat, long) format.





>

## Process Flow

To create a segment with geo polygons, follow below steps:

1.  Create a shell segment. To create the shell segment, make a POST
    call to the **`/geo-polygon-segment`** endpoint.
2.  Upload polygons to the shell segment. You can create a CSV file with
    polygons in it and make a POST call to the
    **`/geo-polygon-segment/{segmentID}/upload-polygon`** endpoint.





## Geo Polygon Segment REST API



<table
id="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/geo-polygon-segment" class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment</a>(new-geo-polygon-segment
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Create
a new geo polygon segment</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/geo-polygon-segment/%7BsegmentID%7D/upload-polygon"
class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment/{segmentID}/upload-polygon</a>(add-polygons.csv)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
polygons to a segment</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/geo-polygon-segment" class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment</a>(new-geo-polygon-segment
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Create
a new geo polygon segment</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/geo-polygon-segment/select" class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment/select</a>
<pre id="geo-polygon-segment-service__codeblock_i4t_xcf_xwb"
class="pre codeblock"><code>POST -d &#39;{&quot;criteria&quot;:{},&quot;ordering&quot;:
{&quot;direction&quot;:&quot;desc&quot;,&quot;by&quot;:&quot;id&quot;}}&#39; &quot;https://api.appnexus.com/geo-
polygon-segment/select&quot;</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all geo polygon segments for a member</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><div
>
<a
href="https://api.appnexus.com/geo-polygon-segment/%7BsegmentID%7D/polygon/select"
class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment/{segmentID}/polygon/select</a>
<pre id="geo-polygon-segment-service__codeblock_vxg_fdf_xwb"
class="pre codeblock"><code>POST -d &#39;{&quot;criteria&quot;:{},&quot;ordering&quot;:{&quot;direction&quot;:&quot;desc&quot;,&quot;by&quot;:&quot;id&quot;}}&#39; 
&quot;https://api.appnexus.com/geo-polygon-segment/{segmentID}/polygon/select&quot;</code></pre>
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific geo polygon segment's details</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><div
>
<a
href="https://api.appnexus.com/geo-polygon-segment/%7BsegmentID%7D/polygon/select"
class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment/{segmentID}/polygon/select</a>
<pre id="geo-polygon-segment-service__codeblock_nmj_hdf_xwb"
class="pre codeblock"><code>POST -d &#39;{&quot;criteria&quot;:{},&quot;ordering&quot;:{&quot;direction&quot;:&quot;desc&quot;,&quot;by&quot;:&quot;id&quot;}}&#39; 
&quot;https://api.appnexus.com/geo-polygon-segment/{segmentID}/polygon/select&quot;</code></pre>
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all geo polygon definitions in a segment</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/apd-status" class="xref"
target="_blank">https://api.appnexus.com/apd-status</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
recent uploads</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/apd-status?id=%7Bapd_id%7D" class="xref"
target="_blank">https://api.appnexus.com/apd-status?id=%7Bapd_id%7D</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
status of a specific upload</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/geo-polygon-segment/%7BsegmentID"
class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment/{segmentID</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a geo polygon segment</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/geo-polygon-segment/%7BsegmentID%7D/polygon/delete"
class="xref"
target="_blank">https://api.appnexus.com/geo-polygon-segment/%7BsegmentID%7D/polygon/delete</a>
<pre id="geo-polygon-segment-service__codeblock_vly_ldf_xwb"
class="pre codeblock"><code>POST -d &#39;{&quot;criteria&quot;:{&quot;id&quot;:{&quot;in&quot;:[_polygon_feature_id_]}}}&#39; 
&quot;https://api.appnexus.com/geo-polygon-segment/{segmentID}/polygon/delete&quot;</code></pre></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a specific feature from a geo polygon segment</td>
</tr>
</tbody>
</table>







## JSON Fields

**Create New Geo Polygon Segment JSON**



<table
id="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">User-defined
code for calling the geo polygon segment. For example, <code
class="ph codeph">"GEO123"</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Description
for this geo polygon segment</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">short_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Short
name used to describe the geo polygon segment</p>
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">regional_centers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="geo-polygon-segment-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">ID
or code of the region in which the geo polygon segment is available.

<strong>Possible values</strong>:
<ul>
<li>ID: 1, 2 or 3</li>
<li>code: "americas", "emea", "apac"</li>
</ul>
</td>
</tr>
</tbody>
</table>

**CSV File Format**



Column names: Polygon,Name.



<b>Note:</b>

Column names are case-sensitive and without any space. You must specify
the column names in your CSV file.



**Example:**



**add-polygons.csv**

``` pre
Polygon,Name
"POLYGON((-73.79619781688602 40.926119268030504,-73.96923248485477 40.95931402310335,-74.09008209422977 
40.52648176879785,-73.23864166454227 
40.62870062738066,-73.38421051219852 40.926119268030504,-73.79619781688602 40.926119268030504))",FirstPolygon
```





<b>Note:</b>

The polygons must be specified inside quote marks, as required by the
CSV file standard.



Once you upload the CSV file successfully, the API sends response with
below fields:

- `geo_segment_polygon_id`: The auto-generated ID of the geo polygon as
  stored in Xandr's system.
- `name`**:** The name of the geo-polygon.
- `apd_id`**:** The job ID of the upload. You must keep track of this in
  case you want to track down the status of the upload.





<b>Note:</b> You need to keep record of the
upload responses as it will be necessary for troubleshooting.







>

## Examples



**Create a new geo polygon segment**

``` pre
$ cat new-geo-polygon-segment.json

{
  "short_name": "New Geo Polygon Segment",
  "description": "Creating a new geo polygon segment example",
  "regional_centers": [
    {
      "id": 1
    }
  ]
}

Alternatively

$ cat new-geo-polygon-segment.json
{
  "short_name": "New Geo Polygon Segment",
  "description": "Creating a new geo polygon segment example",
  "regional_centers": [
    {
      "code": "emea"
    }
  ]
}

$ curl -b cookies -d @new-geo-segment.json -X POST "https://api.appnexus.com/geo-polygon-segment"
{
 "id": 35619,
 "segment_id": 27258480,
 "created_on": "2021-08-04 03:17:41",
 "updated_on": "2021-08-04 03:17:41"
}
```



**View all supported regional centers**



``` pre
$ curl -b cookies "https://api.appnexus.com/regional-center"
{
 "regional_centers": [
   {
     "id": 1,
     "code": "emea",
     "name": "Europe, Middle East, Africa"
   },
  {
     "id": 2,
     "code": "americas",
     "name": "North, Central and South America"
  },
  {
     "id": 3,
     "code": "apac",
     "name": "Asia and Pacific"
  }
 ]
}
```





**Upload polygons to the newly created segment**

``` pre
$ curl -b cookies -c cookies -X POST --form 'file=@"/home/add-polygons.csv"' "https://api.appnexus.com/geo-polygon-
segment/27258480/upload-polygon"

[
    {
    "geo_segment_polygon_id": 47,
    "name": "FirstPolygon"
    }
    {
    "apd_id": "393cc786-f537-11eb-b5b0-3cfdfedf9b61"
    }
]
```





**View all geo polygon segments for a member**

``` pre
$ curl -b cookies -c cookies -X POST -d '{"criteria":{},"ordering":{"direction":"desc","by":"id"}}' 
"https://api.appnexus.com/geo-polygon-segment/select"
```





**View all geo polygon definitions in a segment**

``` pre
curl -b cookies -c cookies -X POST -d '{"criteria":{},"ordering":{"direction":"desc","by":"id"}}' 
"https://api.appnexus.com/geo-polygon-segment/27258480/polygon/select"
```





**View recent uploads**

``` pre
curl -b cookies "https://api.appnexus.com/apd-status"
```





**View status of a specific upload**

``` pre
curl -b cookies "https://api.appnexus.com/apd-status?id=4d362ab8-f94d-11eb-a5ee-3cfdfec8e950"
```





**Delete a geo polygon segment**

``` pre
curl -b cookies -c cookies -X DELETE "https://api.appnexus.com/geo-polygon-segment/27258480"
```





**Delete a specific feature from a geo polygon segment**

``` pre
curl -b cookies -c cookies -X POST -d 
 '{"criteria":
    {"id":
      {"in":[9653092]}
    }
  }' 
"https://api.appnexus.com/geo-polygon-segment/31584260/polygon/delete" | json_reformat
```





**Important Points To Note**

- The Geo Polygon Segment Service does not currently accept geo polygon
  definitions with holes (In geometry, a polygon with holes is an
  area-connected planar polygon with one external boundary and one or
  more interior boundaries). If a polygon definition contains a hole,
  the service will ignore the hole.
- The maximum number of polygon definitions that can be hosted in a
  segment is 50,000.
- When the uploading of the CSV file is successful, the service returns
  `apd_id` and `geo_segment_polygon_id` in response. You need to save
  them for any troubleshooting in future.
- If uploaded file has some issues such as invalid formatting, missing
  quotes, trailing spaces, segment already having 50000 polygon
  definitions etc., then there would not be any `geo_segment_polygon_id`
  in the response. If the upload response contains only `apd_id`, that
  signifies that file was rejected due to any of the reasons mentioned
  above. In such cases, it is recommended to rectify the issue and
  attempt the upload again.
- Multi-polygons are not supported currently. Please split multi-polygon
  definitions into unique, individual, polygon definitions and upload
  only those.
- A geo polygon segment can be connected to a maximum of one regional
  centre.








