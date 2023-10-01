---
Title : Universal Pixel Service
Description : The Universal Pixel Service is a set of REST API services that give you
access to one or more Universal Pixels and any associated audiences and
conversions.
---


# Universal Pixel Service



The Universal Pixel Service is a set of REST API services that give you
access to one or more Universal Pixels and any associated audiences and
conversions.

<div id="universal-pixel-service__section_opt_cg2_xwb"
>

## Universal Pixel Service Overview

The Universal Pixel provides insights into the interactions that users
have with your website so you can easily segment these users, measure
actions they take, and better target your ads. The Universal Pixel
Service has three sets of endpoints:

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/universal-pixel-service.html#UniversalPixelService-pixelrestapi"
  class="xref" target="_blank">Universal-Pixel REST API</a> - to create,
  delete, view, and update a Universal Pixel.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/universal-pixel-service.html#UniversalPixelService-audiencerestapi"
  class="xref" target="_blank">Audience REST API</a> - to create,
  delete, view, and update an audience.
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/universal-pixel-service.html#UniversalPixelService-conversionrestapi"
  class="xref" target="_blank">Conversion REST API</a> - to create,
  delete, view, and update a conversion.

See below for <a
href="https://docs.xandr.com/bundle/xandr-api/page/universal-pixel-service.html#UniversalPixelService-examples"
class="xref" target="_blank">examples</a> of each Universal Pixel
endpoint.

**Universal Pixel REST API**

You can create a Universal Pixel using the **`/universal-pixel`**
endpoint. Once a Universal Pixel is created, you can use the
/universal-pixel endpoint to view it, update it, or delete it.

**Audience REST API**

You can create a Universal Pixel audience using
**`/universal-pixel/audience`** endpoint. Once an audience is created,
you can use the **`/universal-pixel/audience`** endpoint to view it,
updated it, or delete it.

**Conversion REST API**

You create a Universal Pixel conversion using
**`/universal-pixel/conversion`** endpoint. Once a conversion is
created, you can use the **`/universal-pixel/conversion`** endpoint to
view it, updated it, or delete it.



<div id="universal-pixel-service__section_hwc_xl2_xwb"
>

## Universal Pixel REST API



<table
id="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/universal-pixel/pixel" class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/pixel</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a list of Universal Pixels associated with a member or advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/universal-pixel/pixel" class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/pixel</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Create
a new Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/universal-pixel/pixel/PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/pixel/PIXEL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a Universal Pixel by ID.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/universal-pixel/pixel/PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/pixel/PIXEL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Update
a Universal Pixel by ID.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/universal-pixel/pixel/PIXEL_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/pixel/PIXEL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a Universal Pixel by ID.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/universal-pixel/pixel-uuid/PIXEL_UUID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/pixel-uuid/PIXEL_UUID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a Universal Pixel by UUID.</td>
</tr>
</tbody>
</table>

**View a List of Universal Pixels**



**Query Fields**

<table id="universal-pixel-service__table_t2f_xh2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_t2f_xh2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_t2f_xh2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_t2f_xh2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__3">ID of a
member associated with Universal Pixel for operation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__3">ID of an
advertiser associated with Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__1"><code
class="ph codeph">sort</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__3"><p>Sort
by field and direction:</p>
<ul>
<li>ID ascending = id.asc</li>
<li>ID descending = id.dsc</li>
</ul>
<p>Default = id.asc</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__1"><code
class="ph codeph">num_elements</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__3">Number of
elements to return; maximum = 1000, minimum = 1, default = 1000.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__1"><code
class="ph codeph">start_element</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_t2f_xh2_xwb__entry__3">Starting
element (used for paging);default = 0.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_v2f_xh2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_v2f_xh2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_v2f_xh2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_v2f_xh2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">Array of
Universal Pixel objects.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">Universal
Pixel ID assigned by the API.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">Name of
the Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">uuid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">Unique ID
for the Universal Pixel assigned by the API.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">ID of
member associated with Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">ID of
advertiser associated with Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">Timestamp
the Universal Pixel was created. Format: <em>YYYY-MM-DD HH:MM:SS</em>
e.g., 2019-03-08 15:34:18.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__1"><code
class="ph codeph">last_updated</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_v2f_xh2_xwb__entry__3">Timestamp
when the Universal Pixel was last updated. Format: <em>YYYY-MM-DD
HH:MM:SS</em> e.g., 2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Create a new Universal Pixel**

**Query Fields**

<table id="universal-pixel-service__table_czr_f32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_czr_f32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_czr_f32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_czr_f32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_czr_f32_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_czr_f32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_czr_f32_xwb__entry__3">ID of a
member associated with Universal Pixel for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Request Body)**

<table id="universal-pixel-service__table_dzr_f32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_dzr_f32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_dzr_f32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_dzr_f32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dzr_f32_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dzr_f32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dzr_f32_xwb__entry__3">Name of
the Universal Pixel. Minimum length of string is 1 and maximum is 100.
This is a required field.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dzr_f32_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dzr_f32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dzr_f32_xwb__entry__3">ID of
advertiser associated with Universal Pixel.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_ezr_f32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_ezr_f32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_ezr_f32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_ezr_f32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">Universal
Pixel ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">Name of
the Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">uuid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">Unique ID
for the Universal Pixel assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">ID of
member associated with Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">ID of
advertiser associated with Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">Timestamp
the Universal Pixel was created. Format: <em>YYYY-MM-DD HH:MM:SS</em>
e.g., 2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__1"><code
class="ph codeph">last_updated</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ezr_f32_xwb__entry__3">Timestamp
when the Universal Pixel was last updated. Format: <em>YYYY-MM-DD
HH:MM:SS</em> e.g., 2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**View a Universal Pixel by ID**

**Query Fields**

<table id="universal-pixel-service__table_z5n_q32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_z5n_q32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_z5n_q32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_z5n_q32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_z5n_q32_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_z5n_q32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_z5n_q32_xwb__entry__3">ID for
the Universal Pixel assigned by the API for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_avn_q32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_avn_q32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_avn_q32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_avn_q32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">Universal
Pixel ID assigned by the API for operation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">Name of
the Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">uuid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">Unique ID
for the Universal Pixel assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">ID of
member associated with Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">ID of
advertiser associated with Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">Timestamp
the Universal Pixel was created. Format: <em>YYYY-MM-DD HH:MM:SS</em>
e.g., 2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__1"><code
class="ph codeph">last_updated</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_avn_q32_xwb__entry__3">Timestamp
when the Universal Pixel was last updated. Format: <em>YYYY-MM-DD
HH:MM:SS</em> e.g., 2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Update a Universal Pixel by ID**

Query Fields

<table id="universal-pixel-service__table_xxm_w32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_xxm_w32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_xxm_w32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_xxm_w32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_xxm_w32_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_xxm_w32_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_xxm_w32_xwb__entry__3">ID for
the Universal Pixel assigned by the API for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Request Body)**

Any field which needs to be changed from existing value to new one. For
example,

<table id="universal-pixel-service__table_yxm_w32_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_yxm_w32_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_yxm_w32_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_yxm_w32_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_yxm_w32_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_yxm_w32_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_yxm_w32_xwb__entry__3">Updated
name of the Universal Pixel. This is a required field.</td>
</tr>
</tbody>
</table>

**Delete a Universal Pixel by ID**

**Query Fields**

<table id="universal-pixel-service__table_lz2_dj2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_lz2_dj2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_lz2_dj2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_lz2_dj2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_lz2_dj2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_lz2_dj2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_lz2_dj2_xwb__entry__3">ID for
the Universal Pixel assigned by the API which would be deleted.</td>
</tr>
</tbody>
</table>

**View a Universal Pixel by UUID**

**Query Fields**

<table id="universal-pixel-service__table_qpd_jj2_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">Field</td>
<td class="entry">Type</td>
<td class="entry">Description</td>
</tr>
<tr class="even row">
<td class="entry"><code class="ph codeph">uuid</code></td>
<td class="entry">integer</td>
<td class="entry">Unique ID for the Universal Pixel assigned by the API
for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_rpd_jj2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_rpd_jj2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_rpd_jj2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_rpd_jj2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">Universal
Pixel ID assigned by the API for operation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">Name of
the Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">uuid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">Unique ID
for the Universal Pixel assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">ID of
member associated with Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">ID of
advertiser associated with Universal Pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">Timestamp
the Universal Pixel was created. Format: <em>YYYY-MM-DD HH:MM:SS</em>
e.g., 2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__1"><code
class="ph codeph">last_updated</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_rpd_jj2_xwb__entry__3">Timestamp
when the Universal Pixel was last updated. Format: <em>YYYY-MM-DD
HH:MM:SS</em> e.g., 2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Audience REST API**

<table id="universal-pixel-service__table_ytx_wj2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_ytx_wj2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="universal-pixel-service__table_ytx_wj2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="universal-pixel-service__table_ytx_wj2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/audience" class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/audience</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__3">View a
list of audiences associated with a member or advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/audience" class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/audience</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__3">Create a
new audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/audience/AUDIENCE_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/audience/AUDIENCE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__3">View an
audience by ID.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/audience/AUDIENCE_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/audience/AUDIENCE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__3">Update an
audience by ID.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/audience/AUDIENCE_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/audience/AUDIENCE_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ytx_wj2_xwb__entry__3">Delete an
audience by ID.</td>
</tr>
</tbody>
</table>

**View a list of Audiences**

**Query Fields**

<table id="universal-pixel-service__table_ejk_2k2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_ejk_2k2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_ejk_2k2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_ejk_2k2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">ID of a
member associated with Universal Pixel for operation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">ID of an
advertiser associated with Universal Pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">sort</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3"><p>Sort
by field and direction:</p>
<ul>
<li>ID ascending = id.asc</li>
<li>ID descending = id.dsc</li>
</ul>
<p>Default = id.asc</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">num_elements</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">Number of
elements to return; maximum = 1000, minimum = 1, default = 1000.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">start_element</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">Starting
element (used for paging); default = 0.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">Universal
Pixel ID to filter by.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">Segment
ID to filter by.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__1"><code
class="ph codeph">search</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_ejk_2k2_xwb__entry__3">Search
term.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_gjk_2k2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_gjk_2k2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_gjk_2k2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_gjk_2k2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Array of
Audience objects.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Audience
ID assigned by the API.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Version
ID associated with the audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">ID for
the Universal Pixel to associate audience with.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">ID of
advertiser associated with the Audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Name of
the Audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">user_ttl_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">TTL (Time
To Live) in minutes for a user in this audience; maximum = 259200,
minimum = 0, default = 43200.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Segment
ID to use to target this audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3"><p>Rule
set for the audience. This field is an object and should contain an
array of the rules that must be met to consider a fire of the Universal
Pixel to be a conversion. For example, below rule means the Universal
Pixel fire must be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.</p>
<pre id="universal-pixel-service__pre_hjk_2k2_xwb"
class="pre"><code>&quot;rule&quot;:{&quot;and&quot;:[{&quot;domain&quot;:{&quot;contains&quot;:[&quot;microsoft.com&quot;]}},{&quot;event&quot;:{&quot;equals&quot;:[&quot;Purchase&quot;]}},
{&quot;item_id&quot;:{&quot;equals&quot;:[&quot;123&quot;]}}],&quot;pixel_uuid&quot;:&quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;},</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gjk_2k2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>



<div id="universal-pixel-service__section_vfd_xl2_xwb"
>

## Create a New Audience

**Query Fields**

<table id="universal-pixel-service__table_mkt_bm2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_mkt_bm2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_mkt_bm2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_mkt_bm2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_mkt_bm2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_mkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_mkt_bm2_xwb__entry__3">ID of a
member associated with Audience for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Request Body)**

<table id="universal-pixel-service__table_nkt_bm2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_nkt_bm2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_nkt_bm2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_nkt_bm2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__3">Name of
the Audience. It is a required field.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__3">ID for
the Universal Pixel to associate audience with. It is a required
field.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__1"><code
class="ph codeph">user_ttl_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__3">TTL (Time
To Live) in minutes for a user in this audience; maximum = 259200,
minimum = 0, default = 43200.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_nkt_bm2_xwb__entry__3"><p>Rule
set for the audience. This field is a required field and an object. It
should contain an array of the rules that must be met to consider a fire
of the Universal Pixel to be a conversion. For example, below rule means
the Universal Pixel fire must be on a website that has a domain that
contains <a href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.</p>
<pre id="universal-pixel-service__pre_okt_bm2_xwb"
class="pre"><code>&quot;rule&quot;:{&quot;and&quot;:[{&quot;domain&quot;:{&quot;contains&quot;:[&quot;microsoft.com&quot;]}},
{&quot;event&quot;:{&quot;equals&quot;:[&quot;Purchase&quot;]}},{&quot;item_id&quot;:{&quot;equals&quot;:[&quot;123&quot;]}}],
&quot;pixel_uuid&quot;:&quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;},</code></pre></td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_pkt_bm2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_pkt_bm2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_pkt_bm2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_pkt_bm2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">Audience
ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">Version
ID associated with the audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">ID for
the Universal Pixel associated audience with.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">Name of
the Audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">Segment
ID to use to target this audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">user_ttl_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">TTL (Time
To Live) in minutes for a user in this audience; maximum = 259200,
minimum = 0, default = 43200.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3"><p>Rule
set for the audience. This field is an object and contains an array of
the rules that is met to consider a fire of the Universal Pixel to be a
conversion. For example, below rule means the Universal Pixel fire is on
a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.</p>
<pre id="universal-pixel-service__pre_qkt_bm2_xwb"
class="pre"><code>&quot;rule&quot;:{&quot;and&quot;:[{&quot;domain&quot;:{&quot;contains&quot;:[&quot;microsoft.com&quot;]}},
{&quot;event&quot;:{&quot;equals&quot;:[&quot;Purchase&quot;]}},{&quot;item_id&quot;:{&quot;equals&quot;:[&quot;123&quot;]}}],
&quot;pixel_uuid&quot;:&quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;},</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_pkt_bm2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**View an Audience by ID**

**Query Fields**

<table id="universal-pixel-service__table_afj_cn2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_afj_cn2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_afj_cn2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_afj_cn2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_afj_cn2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_afj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_afj_cn2_xwb__entry__3">ID for
the Audience assigned by the API.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_bfj_cn2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_bfj_cn2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_bfj_cn2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_bfj_cn2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">Audience
ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">Version
ID associated with the audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">ID for
the Universal Pixel to associate audience with.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">ID of
advertiser associated with the Audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">Name of
the Audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">user_ttl_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">TTL (Time
To Live) in minutes for a user in this audience; maximum = 259200,
minimum = 0, default = 43200.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">Segment
ID to use to target this audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3"><p>Rule
set for the audience. This field is an object and contains an array of
the rules that must be met to consider a fire of the Universal Pixel to
be a conversion. For example, below rule means the Universal Pixel fire
must be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.</p>
<pre id="universal-pixel-service__pre_cfj_cn2_xwb"
class="pre"><code>&quot;rule&quot;:{&quot;and&quot;:[{&quot;domain&quot;:{&quot;contains&quot;:[&quot;microsoft.com&quot;]}},
{&quot;event&quot;:{&quot;equals&quot;:[&quot;Purchase&quot;]}},{&quot;item_id&quot;:{&quot;equals&quot;:[&quot;123&quot;]}}],
&quot;pixel_uuid&quot;:&quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;},</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_bfj_cn2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Update an Audience by ID**

**Query Fields**

<table id="universal-pixel-service__table_h4y_nn2_xwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">Field</td>
<td class="entry">Type</td>
<td class="entry">Description</td>
</tr>
<tr class="even row">
<td class="entry"><code class="ph codeph">id</code></td>
<td class="entry">integer</td>
<td class="entry">ID for the Audience assigned by the API.</td>
</tr>
</tbody>
</table>

**JSON Fields (Request Body)**

Any field which needs to be changed from existing value to new one . For
example,

<table id="universal-pixel-service__table_i4y_nn2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_i4y_nn2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_i4y_nn2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_i4y_nn2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__3">Updated
name of the Audience. This is a required field.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__3"><p>Rule
set for the audience. This is a required field and an object. It should
contain an array of the rules that must be met to consider a fire of the
Universal Pixel to be a conversion. For example, below rule means the
Universal Pixel fire must be on a website that has a domain that
contains <a href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.</p>
<pre id="universal-pixel-service__pre_j4y_nn2_xwb"
class="pre"><code>&quot;rule&quot;:{&quot;and&quot;:[{&quot;domain&quot;:{&quot;contains&quot;:[&quot;microsoft.com&quot;]}},
{&quot;event&quot;:{&quot;equals&quot;:[&quot;Purchase&quot;]}},{&quot;item_id&quot;:{&quot;equals&quot;:[&quot;123&quot;]}}],
&quot;pixel_uuid&quot;:&quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;},</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__1"><code
class="ph codeph">user_ttl_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_i4y_nn2_xwb__entry__3">TTL (Time
To Live) in minutes for a user in this audience; maximum = 259200,
minimum = 0, default = 43200.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_k4y_nn2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_k4y_nn2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_k4y_nn2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_k4y_nn2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Audience
ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Version
ID associated with the audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">ID for
the Universal Pixel to associate audience with.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">ID of
advertiser associated with the Audience.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Name of
the Audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">user_ttl_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Minutes
for this audience to exist; maximum = 259200, minimum = 0, default =
43200.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Segment
ID to use to target this audience.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3"><p>Rule
set for the audience. This field is an object and contains an array of
the rules that must be met to consider a fire of the Universal Pixel to
be a conversion. For example, below rule means the Universal Pixel fire
must be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.</p>
<pre id="universal-pixel-service__pre_l4y_nn2_xwb"
class="pre"><code>&quot;rule&quot;:{&quot;and&quot;:[{&quot;domain&quot;:{&quot;contains&quot;:[&quot;microsoft.com&quot;]}},
{&quot;event&quot;:{&quot;equals&quot;:[&quot;Purchase&quot;]}},{&quot;item_id&quot;:{&quot;equals&quot;:[&quot;123&quot;]}}],
&quot;pixel_uuid&quot;:&quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;},</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_k4y_nn2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Delete an Audience by ID**

**Query Fields**

<table id="universal-pixel-service__table_zpg_wn2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_zpg_wn2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_zpg_wn2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_zpg_wn2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_zpg_wn2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_zpg_wn2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_zpg_wn2_xwb__entry__3">ID for
the Audience assigned by the API which would be deleted.</td>
</tr>
</tbody>
</table>



<div id="universal-pixel-service__section_nnw_t42_xwb"
>

## Conversion REST API



<table id="universal-pixel-service__table_krw_v42_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_krw_v42_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="universal-pixel-service__table_krw_v42_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="universal-pixel-service__table_krw_v42_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/conversion" class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/conversion</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__3">View a
list of conversions associated with a member or advertiser.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/conversion" class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/conversion</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__3">Create a
new conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/conversion/CONVERSION_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/conversion/CONVERSION_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__3">View a
conversion by ID.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/conversion/CONVERSION_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/conversion/CONVERSION_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__3">Update a
conversion by ID.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__2"><a
href="https://api.appnexus.com/universal-pixel/conversion/CONVERSION_ID"
class="xref"
target="_blank">https://api.appnexus.com/universal-pixel/conversion/CONVERSION_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_krw_v42_xwb__entry__3">Delete a
conversion by ID.</td>
</tr>
</tbody>
</table>

**View a list of Conversions**



**Query Fields**

<table id="universal-pixel-service__table_a5t_cp2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_a5t_cp2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_a5t_cp2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_a5t_cp2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">ID of a
member associated with conversions for operation.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">ID of an
advertiser associated with conversions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">sort</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3"><p>Sort
by field and direction:</p>
<ul>
<li>ID ascending = id.asc</li>
<li>ID descending = id.dsc</li>
</ul>
<p>Default = id.asc</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">num_elements</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">Number of
elements to return; maximum = 1000, minimum = 1, default = 1000.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">start_element</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">Starting
element (used for paging). Default = 0.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">Universal
Pixel ID to filter by.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">conversion_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">ID of
legacy conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__1"><code
class="ph codeph">search</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_a5t_cp2_xwb__entry__3">Search
term.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_c5t_cp2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_c5t_cp2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_c5t_cp2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_c5t_cp2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">Array of
conversion objects.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">Conversion
ID assigned by the API.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">ID for
the Universal Pixel associated with this conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">Name of
the conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">conversion_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">ID of
legacy conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">conversion_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3"><div
>
ID of the conversion event category. The values of
conversion_category_id are as follows:
<pre id="universal-pixel-service__codeblock_zjq_sp2_xwb"
class="pre codeblock"><code>{ id: 1, title: &#39; Page view&#39;, event: &#39;PageView&#39; },
{ id: 2, title: &#39; Landing page&#39;, event: &#39;LandingPage&#39; },
{ id: 3, title: &#39; Item view&#39;, event: &#39;ItemView&#39; },
{ id: 4, title: &#39; Add to cart&#39;, event: &#39;AddToCart&#39; },
{ id: 5, title: &#39; Initiate checkout&#39;, event: &#39;InitiateCheckout&#39; },
{ id: 6, title: &#39; Add payment info&#39;, event: &#39;AddPaymentInfo&#39; },
{ id: 7, title: &#39; Purchase&#39;, event: &#39;Purchase&#39; },
{ id: 8, title: &#39; Lead&#39;, event: &#39;Lead&#39; },
{ id: null, title: &#39; Other&#39; },</code></pre>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">conversion_category_custom</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3"><p>Label
of the custom conversion event category. This field is set to the string
value of what category to include the conversion in.</p>
<div id="universal-pixel-service__note_yvw_np2_xwb"
class="note note_note">
Note:
<p>This field is only set if conversion_category_id is null.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">count_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">Type of
conversion count - view, click or hybrid.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">min_minutes_per_conversion</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code>(22 days).</p>
<ul>
<li>If set to <code class="ph codeph">0</code>: count all
conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">The value
you attribute to a conversion after a click.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">post_click_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days).If set to <code
class="ph codeph">0</code> or null, the maximum lookback window
applies.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">post_view_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3"><div
>
Rule set for the audience. This field is an object and contains an array
of the rules that must be met to consider a fire of the Universal Pixel
to be a conversion. For example, below rule means the Universal Pixel
fire must be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.
<pre id="universal-pixel-service__codeblock_d2d_rp2_xwb"
class="pre codeblock"><code>&quot;rule&quot;: {
    &quot;and&quot;: [
            {
            &quot;domain&quot;:
            { &quot;contains&quot;: [ &quot;microsoft.com&quot; ] }
            },
            {
            &quot;event&quot;:
            { &quot;equals&quot;: [ &quot;Purchase&quot; ] }
            },
            {
            &quot;item_id&quot;:
            { &quot;equals&quot;: [ &quot;123&quot; ] }
            }
            ],
    &quot;pixel_uuid&quot;: &quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;
    },</code></pre>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_c5t_cp2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Create a new Conversion**

Query Fields

<table id="universal-pixel-service__table_gcx_1q2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_gcx_1q2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_gcx_1q2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_gcx_1q2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gcx_1q2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gcx_1q2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gcx_1q2_xwb__entry__3">ID of a
member associated with Conversion for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Request Body)**

<table id="universal-pixel-service__table_hdt_2q2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_hdt_2q2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_hdt_2q2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_hdt_2q2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">ID for
the universal pixel with which this conversion is associated with. This
is a required field.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">Name of
the conversion. This is a required field.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">conversion_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3"><div
>
ID of the conversion event category. The values of
conversion_category_id are as follows:
<pre id="universal-pixel-service__codeblock_tkf_3q2_xwb"
class="pre codeblock"><code>{ id: 1, title: &#39; Page view&#39;, event: &#39;PageView&#39; },
{ id: 2, title: &#39; Landing page&#39;, event: &#39;LandingPage&#39; },
{ id: 3, title: &#39; Item view&#39;, event: &#39;ItemView&#39; },
{ id: 4, title: &#39; Add to cart&#39;, event: &#39;AddToCart&#39; },
{ id: 5, title: &#39; Initiate checkout&#39;, event: &#39;InitiateCheckout&#39; },
{ id: 6, title: &#39; Add payment info&#39;, event: &#39;AddPaymentInfo&#39; },
{ id: 7, title: &#39; Purchase&#39;, event: &#39;Purchase&#39; },
{ id: 8, title: &#39; Lead&#39;, event: &#39;Lead&#39; },
{ id: null, title: &#39; Other&#39; },</code></pre>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">conversion_category_custom</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3"><p>Label
of the custom conversion event category. This field is set to the string
value of what category to include the conversion in.</p>

<div id="universal-pixel-service__note_svd_mq2_xwb"
class="note note_note">
Note: This field is only set if
conversion_category_id is null.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">count_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">Type of
conversion count - view, click or hybrid. This is a required field.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">min_minutes_per_conversion</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code>(22 days).</p>
<ul>
<li>If set to <code class="ph codeph">0</code>: count all
conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">The value
you attribute to a conversion after a click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">post_click_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days).If set to <code
class="ph codeph">0</code> or null, the maximum lookback window
applies.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">post_view_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_hdt_2q2_xwb__entry__3">Rule set
for the audience. This is a required field and an object. It should
contain an array of the rules that must be met to consider a fire of the
Universal Pixel to be a conversion. For example, below rule means the
Universal Pixel fire must be on a website that has a domain that
contains <a href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.
<pre id="universal-pixel-service__codeblock_e5l_4q2_xwb"
class="pre codeblock"><code>&quot;rule&quot;: {
    &quot;and&quot;: [
            {
            &quot;domain&quot;:
            { &quot;contains&quot;: [ &quot;microsoft.com&quot; ] }
            },
            {
            &quot;event&quot;:
            { &quot;equals&quot;: [ &quot;Purchase&quot; ] }
            },
            {
            &quot;item_id&quot;:
            { &quot;equals&quot;: [ &quot;123&quot; ] }
            }
            ],
    &quot;pixel_uuid&quot;: &quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;
    },</code></pre></td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_adr_rq2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_adr_rq2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_adr_rq2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_adr_rq2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Conversion
ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">ID of a
member associated with conversions for operation.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Version
for this conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">ID for
the Universal Pixel associated with this conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Name of
the conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">conversion_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">ID of
legacy conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">conversion_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">ID of the
conversion event category. The values of conversion_category_id are as
follows:
<pre id="universal-pixel-service__codeblock_hgf_5q2_xwb"
class="pre codeblock"><code>{ id: 1, title: &#39; Page view&#39;, event: &#39;PageView&#39; },
{ id: 2, title: &#39; Landing page&#39;, event: &#39;LandingPage&#39; },
{ id: 3, title: &#39; Item view&#39;, event: &#39;ItemView&#39; },
{ id: 4, title: &#39; Add to cart&#39;, event: &#39;AddToCart&#39; },
{ id: 5, title: &#39; Initiate checkout&#39;, event: &#39;InitiateCheckout&#39; },
{ id: 6, title: &#39; Add payment info&#39;, event: &#39;AddPaymentInfo&#39; },
{ id: 7, title: &#39; Purchase&#39;, event: &#39;Purchase&#39; },
{ id: 8, title: &#39; Lead&#39;, event: &#39;Lead&#39; },
{ id: null, title: &#39; Other&#39; },</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">conversion_category_custom</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3"><p>Label
of the custom conversion event category. This field is set to the string
value of what category to include the conversion in.</p>

<div id="universal-pixel-service__note_xr2_xq2_xwb"
class="note warning note_warning">
Warning: This field is only set if
conversion_category_id is null.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">count_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Type of
conversion count - view, click or hybrid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">min_minutes_per_conversion</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code>(22 days).</p>
<ul>
<li>If set to <code class="ph codeph">0</code>: count all
conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">The value
you attribute to a conversion after a click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">post_click_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days).If set to <code
class="ph codeph">0</code> or null, the maximum look-back window
applies.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">post_view_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Rule set
for the audience. This field is an object and contains an array of the
rules that must be met to consider a fire of the Universal Pixel to be a
conversion. For example, below rule means the Universal Pixel fire must
be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.
<pre id="universal-pixel-service__codeblock_pph_zq2_xwb"
class="pre codeblock"><code>&quot;rule&quot;: {
    &quot;and&quot;: [
            {
            &quot;domain&quot;:
            { &quot;contains&quot;: [ &quot;microsoft.com&quot; ] }
            },
            {
            &quot;event&quot;:
            { &quot;equals&quot;: [ &quot;Purchase&quot; ] }
            },
            {
            &quot;item_id&quot;:
            { &quot;equals&quot;: [ &quot;123&quot; ] }
            }
            ],
    &quot;pixel_uuid&quot;: &quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;
    },</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_adr_rq2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**View a Conversion by ID**

Query Fields

<table id="universal-pixel-service__table_z4m_gr2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_z4m_gr2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_z4m_gr2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_z4m_gr2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_z4m_gr2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_z4m_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_z4m_gr2_xwb__entry__3">ID for
the Universal Pixel assigned by the API for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_apm_gr2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_apm_gr2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_apm_gr2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_apm_gr2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Conversion
ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">ID of a
member associated with conversions for operation.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Version
for this conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">ID for
the Universal Pixel associated with this conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Name of
the conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">conversion_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">ID of
legacy conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">conversion_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">ID of the
conversion event category. The values of conversion_category_id are as
follows:
<pre id="universal-pixel-service__codeblock_rcs_mr2_xwb"
class="pre codeblock"><code>{ id: 1, title: &#39; Page view&#39;, event: &#39;PageView&#39; },
{ id: 2, title: &#39; Landing page&#39;, event: &#39;LandingPage&#39; },
{ id: 3, title: &#39; Item view&#39;, event: &#39;ItemView&#39; },
{ id: 4, title: &#39; Add to cart&#39;, event: &#39;AddToCart&#39; },
{ id: 5, title: &#39; Initiate checkout&#39;, event: &#39;InitiateCheckout&#39; },
{ id: 6, title: &#39; Add payment info&#39;, event: &#39;AddPaymentInfo&#39; },
{ id: 7, title: &#39; Purchase&#39;, event: &#39;Purchase&#39; },
{ id: 8, title: &#39; Lead&#39;, event: &#39;Lead&#39; },
{ id: null, title: &#39; Other&#39; },</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">conversion_category_custom</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3"><p>Label
of the custom conversion event category. This field is set to the string
value of what category to include the conversion in.</p>
<p>Important</p>
<p>This field is only set if conversion_category_id is null.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">count_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Type of
conversion count - view, click or hybrid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">min_minutes_per_conversion</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code>(22 days).</p>
<ul>
<li>If set to <code class="ph codeph">0</code>: count all
conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">The value
you attribute to a conversion after a click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">post_click_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days).If set to <code
class="ph codeph">0</code> or null, the maximum look-back window
applies.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">post_view_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Rule set
for the audience. This field is an object and contains an array of the
rules that must be met to consider a fire of the Universal Pixel to be a
conversion. For example, below rule means the Universal Pixel fire must
be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.
<pre id="universal-pixel-service__codeblock_jmq_pr2_xwb"
class="pre codeblock"><code>&quot;rule&quot;: {
    &quot;and&quot;: [
            {
            &quot;domain&quot;:
            { &quot;contains&quot;: [ &quot;microsoft.com&quot; ] }
            },
            {
            &quot;event&quot;:
            { &quot;equals&quot;: [ &quot;Purchase&quot; ] }
            },
            {
            &quot;item_id&quot;:
            { &quot;equals&quot;: [ &quot;123&quot; ] }
            }
            ],
    &quot;pixel_uuid&quot;: &quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;
    },</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_apm_gr2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Update a Conversion by ID**

**Query Fields**

<table id="universal-pixel-service__table_cfz_xr2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_cfz_xr2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_cfz_xr2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_cfz_xr2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_cfz_xr2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_cfz_xr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_cfz_xr2_xwb__entry__3">ID for
the Conversion assigned by the API for operation.</td>
</tr>
</tbody>
</table>

**JSON Fields (Request Body)**

Any field which needs to be changed from existing value to new one. For
example,

<table id="universal-pixel-service__table_dfz_xr2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_dfz_xr2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_dfz_xr2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_dfz_xr2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">Name of
the conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">conversion_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">ID of the
conversion event category. The values of conversion_category_id are as
follows:
<pre id="universal-pixel-service__codeblock_b5m_cs2_xwb"
class="pre codeblock"><code>{ id: 1, title: &#39; Page view&#39;, event: &#39;PageView&#39; },
{ id: 2, title: &#39; Landing page&#39;, event: &#39;LandingPage&#39; },
{ id: 3, title: &#39; Item view&#39;, event: &#39;ItemView&#39; },
{ id: 4, title: &#39; Add to cart&#39;, event: &#39;AddToCart&#39; },
{ id: 5, title: &#39; Initiate checkout&#39;, event: &#39;InitiateCheckout&#39; },
{ id: 6, title: &#39; Add payment info&#39;, event: &#39;AddPaymentInfo&#39; },
{ id: 7, title: &#39; Purchase&#39;, event: &#39;Purchase&#39; },
{ id: 8, title: &#39; Lead&#39;, event: &#39;Lead&#39; },
{ id: null, title: &#39; Other&#39; },</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">conversion_category_custom</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3"><p>Label
of the custom conversion event category. This field is set to the string
value of what category to include the conversion in.</p>
<div id="universal-pixel-service__note_gq1_rs2_xwb"
class="note warning note_warning">
Warning:
<p>This field is only set if conversion_category_id is <code
class="ph codeph">null</code>.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">count_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">Type of
conversion count - view, click or hybrid. This is a required field.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">min_minutes_per_conversion</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code>(22 days).</p>
<ul>
<li>If set to 0: count all conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">The value
you attribute to a conversion after a click.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">post_click_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days).If set to <code
class="ph codeph">0</code> or null, the maximum look-back window
applies.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">post_view_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_dfz_xr2_xwb__entry__3">Rule set
for the audience. This is a required field and an object. It should
contain an array of the rules that must be met to consider a fire of the
Universal Pixel to be a conversion. For example, below rule means the
Universal Pixel fire must be on a website that has a domain that
contains <a href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.
<pre id="universal-pixel-service__codeblock_z53_5s2_xwb"
class="pre codeblock"><code>&quot;rule&quot;: {
    &quot;and&quot;: [
            {
            &quot;domain&quot;:
            { &quot;contains&quot;: [ &quot;microsoft.com&quot; ] }
            },
            {
            &quot;event&quot;:
            { &quot;equals&quot;: [ &quot;Purchase&quot; ] }
            },
            {
            &quot;item_id&quot;:
            { &quot;equals&quot;: [ &quot;123&quot; ] }
            }
            ],
    &quot;pixel_uuid&quot;: &quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;
    },</code></pre></td>
</tr>
</tbody>
</table>

**JSON Fields (Response Body)**

<table id="universal-pixel-service__table_gtz_1t2_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_gtz_1t2_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_gtz_1t2_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_gtz_1t2_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Conversion
ID assigned by the API.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">ID of a
member associated with conversions for operation.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">version_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Version
for this conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">universal_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">ID for
the Universal Pixel associated with this conversion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Name of
the conversion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">conversion_pixel_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">ID of
legacy conversion pixel.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">conversion_category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">ID of the
conversion event category. The values of conversion_category_id are as
follows:
<pre id="universal-pixel-service__codeblock_ncw_dt2_xwb"
class="pre codeblock"><code>{ id: 1, title: &#39; Page view&#39;, event: &#39;PageView&#39; },
{ id: 2, title: &#39; Landing page&#39;, event: &#39;LandingPage&#39; },
{ id: 3, title: &#39; Item view&#39;, event: &#39;ItemView&#39; },
{ id: 4, title: &#39; Add to cart&#39;, event: &#39;AddToCart&#39; },
{ id: 5, title: &#39; Initiate checkout&#39;, event: &#39;InitiateCheckout&#39; },
{ id: 6, title: &#39; Add payment info&#39;, event: &#39;AddPaymentInfo&#39; },
{ id: 7, title: &#39; Purchase&#39;, event: &#39;Purchase&#39; },
{ id: 8, title: &#39; Lead&#39;, event: &#39;Lead&#39; },
{ id: null, title: &#39; Other&#39; },</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">conversion_category_custom</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3"><p>Label
of the custom conversion event category. This field is set to the string
value of what category to include the conversion in.</p>

<div id="universal-pixel-service__note_sch_ht2_xwb"
class="note warning note_warning">
Warning: This field is only set if
conversion_category_id is <code class="ph codeph">null</code>.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">count_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Type of
conversion count - view, click or hybrid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">min_minutes_per_conversion</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3"><p>The
interval (in minutes) to allow a repeat conversion. Maximum value is
<code class="ph codeph">32767</code>(22 days).</p>
<ul>
<li>If set to <code class="ph codeph">0</code>: count all
conversions.</li>
<li>If set to null (default): Count one per user.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">post_click_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">The value
you attribute to a conversion after a click.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">post_click_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">The
interval (in minutes) from impression time allowed for a view conversion
to be counted as eligible. Maximum value is <code
class="ph codeph">43200</code> (30 days).If set to <code
class="ph codeph">0</code> or null, the maximum look-back window
applies.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">post_view_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">post_view_expire_minutes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">number</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">The value
you attribute to a conversion after a view.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Rule set
for the audience. This field is an object and contains an array of the
rules that must be met to consider a fire of the Universal Pixel to be a
conversion. For example, below rule means the Universal Pixel fire must
be on a website that has a domain that contains <a
href="http://microsoft.com/" class="xref"
target="_blank">microsoft.com</a>, the event for the pixel fire is
Purchase, and item_id is 123.
<pre id="universal-pixel-service__codeblock_r4h_3t2_xwb"
class="pre codeblock"><code>&quot;rule&quot;: {
    &quot;and&quot;: [
            {
            &quot;domain&quot;:
            { &quot;contains&quot;: [ &quot;microsoft.com&quot; ] }
            },
            {
            &quot;event&quot;:
            { &quot;equals&quot;: [ &quot;Purchase&quot; ] }
            },
            {
            &quot;item_id&quot;:
            { &quot;equals&quot;: [ &quot;123&quot; ] }
            }
            ],
    &quot;pixel_uuid&quot;: &quot;0b3758f1-cf0f-46c1-9957-00bd36f19ad0&quot;
    },</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Timestamp
when audience was created. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__1"><code
class="ph codeph">published_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gtz_1t2_xwb__entry__3">Timestamp
when audience was published. Format: <em>YYYY-MM-DD HH:MM:SS</em> e.g.,
2019-03-08 15:34:18.</td>
</tr>
</tbody>
</table>

**Delete a Conversion by ID**

Query Fields

<table id="universal-pixel-service__table_gy1_j52_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="universal-pixel-service__table_gy1_j52_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="universal-pixel-service__table_gy1_j52_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="universal-pixel-service__table_gy1_j52_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gy1_j52_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gy1_j52_xwb__entry__2">integer</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="universal-pixel-service__table_gy1_j52_xwb__entry__3">ID for
the Universal Pixel assigned by the API which would be deleted.</td>
</tr>
</tbody>
</table>



<div id="universal-pixel-service__section_qsm_m52_xwb"
>

## Examples



**Get a list of Universal Pixels**

``` pre
$ curl -b cookies "https://api.appnexus.com/universal-pixel/pixel"
{
    "data": [{
        "id": 0,
        "name": "string",
        "uuid": "string",
        "member_id": 0,
        "advertiser_id": 0,
        "created_on": "2019-04-16T20:43:33.663Z",
        "last_modified": "2019-04-16T20:43:33.663Z"
    }],
    "meta": {
        "count": 0,
        "start_element": 0,
        "num_elements": 0,
        "sort": [
            "string"
        ]
    }
}
```





**Create a new Universal Pixel**

``` pre
$ cat new-universal-pixel.json
 
{
    "name": "string",
    "advertiser_id": 0
}

$ curl -b cookies -d @new-universal-pixel.json -X POST https://api.appnexus.com/universal-pixel/pixel
{
  "id": 0,
  "name": "string",
  "uuid": "string",
  "member_id": 0,
  "advertiser_id": 0,
  "created_on": "2019-04-16T21:23:52.049Z",
  "last_modified": "2019-04-16T21:23:52.049Z"
}
 
```





**View a Universal Pixel by ID**

``` pre
$ curl -b cookies "https://api.appnexus.com/universal-pixel/pixel/3"

response:
{
    "created_on": "2019-04-09T21:27:54.455Z",
    "id": 3,
    "last_modified": "2019-04-09T21:27:54.455Z",
    "member_id": 0,
    "name": "Production Pixel 1",
    "uuid": "b95be84e-d95b-4c88-8242-d9c6c026ed30"
}
```





**Update a Universal Pixel by ID**

``` pre
 {
  "name": "string"
}
```





**View a Universal Pixel by UUID**

``` pre
 $ curl -b cookies "https://api.appnexus.com/universal-pixel/pixel-uuid/239e941-0356-47bd-9f92-f46e46d34d16`
response:
{
    "advertiser_id": 4647027,
    "created_on": "2020-05-26T16:05:12.049Z",
    "id": 2716,
    "last_modified": "2020-05-26T16:05:12.049Z",
    "member_id": 1370,
    "name": "Test",
    "uuid": "7239e941-0356-47bd-9f92-f46e46d34d16"
}
```





**View a list of audiences associated with a member or advertiser**

``` pre
- member: curl -b cookies "https://api.appnexus.com/universal-pixel/audience?member_id=1111"
- advertiser: grab the Universal Pixel ID created under the advertiser and run:
 curl -b  cookies "https://api.appnexus.com/universal-pixel/audience?universal_pixel_id=2716" 
{
  "data": [
    {
      "id": 0,
      "version_id": 0,
      "universal_pixel_id": 0,
      "advertiser_id": 0,
      "name": "string",
      "segment_id": 0,
      "user_ttl_minutes": 0,
      "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },
      "created_on": "2020-04-16T13:15:19.056Z",
      "published_on": "2020-04-16T13:15:19.057Z"
    }
  ],
  "meta": {
    "count": 0,
    "start_element": 0,
    "num_elements": 0,
    "sort": [
      "string"
    ]
  }
```





**Create a new audience**

``` pre
 $ cat new-audience.json
 
{
  "universal_pixel_id": 0,
  "name": "string",
  "user_ttl_minutes": 0,   
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        }
}

$ curl -b cookies -d @new-audience.json -X POST https://api.appnexus.com/universal-pixel/audience
{
  "id": 0,
  "version_id": 0,
  "universal_pixel_id": 0,
  "advertiser_id": 0,
  "name": "string",
  "segment_id": 0,
  "user_ttl_minutes": 0,
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },
  "created_on": "2020-04-16T13:15:48.648Z",
  "published_on": "2020-04-16T13:15:48.648Z"
}
```





**View an audience by ID**

``` pre
$ curl -b cookies "https://api.appnexus.com/universal-pixel/audience/10181"

response:
{
    "advertiser_id": 4443337,
    "created_on": "2020-06-09T15:47:26.578Z",
    "id": 11111,
    "name": "purchase_capture",
    "published_on": "2020-06-09T15:47:27.056Z",     
    "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },     
    "segment_id": 22222227,
    "universal_pixel_id": 2222,
    "user_ttl_minutes": 43200,
    "version_id": 15000
} 
```





**Update an audience by ID**

``` pre
$ cat update-audience.json 
{
  "name": "string",
  "user_ttl_minutes": 0,   
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        }, 
}

$ curl -b cookies -d @new-universal-pixel.json -X POST https://api.appnexus.com/universal-pixel/audience
{
  "id": 0,
  "version_id": 0,
  "universal_pixel_id": 0,
  "advertiser_id": 0,
  "name": "string",
  "segment_id": 0,
  "user_ttl_minutes": 0,
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },
  "created_on": "2020-04-16T13:17:29.915Z",
  "published_on": "2020-04-16T13:17:29.915Z"
}
```





**View a list of conversions associated with a member or advertiser**

``` pre
- member: curl -b cookies "https://api.appnexus.com/universal-pixel/conversion?member_id=2222"
- advertiser: grab the Universal Pixel ID created under the advertiser and run:
 curl -b  cookies "https://api.appnexus.com/universal-pixel/conversion?universal_pixel_id=27777" 
{
  "data": [
    {
      "id": 0,
      "member_id": 0,
      "version_id": 0,
      "universal_pixel_id": 0,
      "name": "string",
      "conversion_pixel_id": 0,
      "conversion_category_id": 7,
      "conversion_category_custom": "string",
      "count_type": "hybrid",
      "min_minutes_per_conv": 0,
      "post_view_value": 0,
      "post_click_value": 0,
      "post_click_expire_minutes": 0,
      "post_view_expire_minutes": 0,       
      "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },
      "published_on": "2020-04-16T13:20:02.601Z",
      "created_on": "2020-04-16T13:20:02.601Z"
    }
  ],
  "meta": {
    "count": 0,
    "start_element": 0,
    "num_elements": 0,
    "sort": [
      "string"
    ]
  }
```





**Create a new conversion**

``` pre
 $ cat new-conversion.json 
{
  "universal_pixel_id": 0,
  "name": "string",
  "conversion_category_id": 2,
  "conversion_category_custom": "string",
  "count_type": "hybrid",
  "min_minutes_per_conv": 0,
  "post_view_value": 0,
  "post_click_value": 0,
  "post_click_expire_minutes": 0,
  "post_view_expire_minutes": 0,   
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        }
 }

$ curl -b cookies -d @new-conversion.json -X POST https://api.appnexus.com/universal-pixel/conversion

{
  "id": 0,
  "member_id": 0,
  "version_id": 0,
  "universal_pixel_id": 0,
  "name": "string",
  "conversion_pixel_id": 0,
  "conversion_category_id": 2,
  "conversion_category_custom": "string",
  "count_type": "hybrid",
  "min_minutes_per_conv": 0,
  "post_view_value": 0,
  "post_click_value": 0,
  "post_click_expire_minutes": 0,
  "post_view_expire_minutes": 0,   
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },
  "published_on": "2020-04-16T13:20:24.931Z",
  "created_on": "2020-04-16T13:20:24.931Z"
}
```





**View a conversion by ID**

``` pre
 $ curl -b cookies "https://api.appnexus.com/universal-pixel/conversion/4444"

response:
{
    "conversion_category_custom": null,
    "conversion_category_id": 7,
    "conversion_pixel_id": 1111111,
    "count_type": "hybrid",
    "created_on": "2020-05-29T21:52:08.388Z",
    "id": 4444,
    "min_minutes_per_conv": 0,
    "name": "Install",
    "post_click_expire_minutes": 20160,
    "post_click_value": null,
    "post_view_expire_minutes": 20160,
    "post_view_value": null,
    "published_on": "2020-05-29T21:52:09.093Z",     
    "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },     
    "universal_pixel_id": 2222,
    "version_id": 4444
}
```





**Update a conversion by ID**

``` pre
 $ cat update-conversion.json 
{
  "name": "string",
  "conversion_category_id": 7,
  "conversion_category_custom": "string",
  "count_type": "hybrid",
  "min_minutes_per_conv": 0,
  "post_view_value": 0,
  "post_click_value": 0,
  "post_click_expire_minutes": 0,
  "post_view_expire_minutes": 0,   
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        } 
}

$ curl -b cookies -d @update-conversion.json -X POST https://api.appnexus.com/universal-pixel/conversion

{
  "id": 0,
  "member_id": 0,
  "version_id": 0,
  "universal_pixel_id": 0,
  "name": "string",
  "conversion_pixel_id": 0,
  "conversion_category_id": 7,
  "conversion_category_custom": "string",
  "count_type": "hybrid",
  "min_minutes_per_conv": 0,
  "post_view_value": 0,
  "post_click_value": 0,
  "post_click_expire_minutes": 0,
  "post_view_expire_minutes": 0,   
  "rule": {
        "and": [
            {
            "domain":
            { "contains": [ "microsoft.com" ] }
            },
            {
            "event":
            { "equals": [ "Purchase" ] }
            },
            {
            "item_id":
            { "equals": [ "123" ] }
            }
            ],
        "pixel_uuid": "0b3758f1-cf0f-46c1-9957-00bd36f19ad0"
        },   
  "published_on": "2020-04-16T13:20:24.937Z",
  "created_on": "2020-04-16T13:20:24.937Z"
}
```








