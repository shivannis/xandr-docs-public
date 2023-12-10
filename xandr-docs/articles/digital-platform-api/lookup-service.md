---
Title : Lookup Service
Description : This read-only service allows you to retrieve the ID, name, code, state,
ms.date: 10/28/2023
ms.custom: digital-platform-api
and in some cases, descriptions of the following types of objects in
your account. It also returns hierarchical information about these
---


# Lookup Service



This read-only service allows you to retrieve the ID, name, code, state,
and in some cases, descriptions of the following types of objects in
your account. It also returns hierarchical information about these
objects, for example, publisher ID for a placement or advertiser ID for
a line item. In cases where you have limited information about objects,
this service gives you an easy way to map to other relevant data. <a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feeds</a>, for example,
returns data grouped by object IDs. You can use the Lookup Service to
match these IDs with names, codes, and so on.

- Advertisers
- Insertion Orders
- Line Items
- Campaigns
- Creatives
- Segment Pixels
- Conversion Pixels
- Publishers
- Payment Rules
- Sites
- Placements
- Labels



<b>Note:</b>

- The Lookup Service is different from the <a
  href="search-service.md"
  class="xref" target="_blank">Search Service</a> because it returns all
  objects of a certain type in your account. The Search Service allows
  you to search for objects with a specific name, code, or ID.
- The Lookup Service can return a maximum of 50,000 objects.
- The Lookup Service is based on data that is cached and updated once
  every 8 minutes.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001a9e__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001a9e__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__2">https://api.<span
class="ph">appnexus.com/lookup</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__3">View
information about all objects in your system</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__2">https://api.<span
class="ph">appnexus.com/lookup?type=OBJECT_TYPE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__3">View
information about all objects of a specific type

<b>Note:</b>
<p>You can get information about the following object types: <code
class="ph codeph">advertiser</code>, <code
class="ph codeph">insertion_order</code>, <code
class="ph codeph">line_item</code>, <code
class="ph codeph">campaign</code>, <code
class="ph codeph">budget_splitter</code>, <code
class="ph codeph">creative</code>, <code
class="ph codeph">segment_pixel</code>, <code
class="ph codeph">conversion_pixel</code>, <code
class="ph codeph">publisher</code>, <code
class="ph codeph">payment_rule</code>, <code
class="ph codeph">placement</code>, <code class="ph codeph">site</code>,
and <code class="ph codeph">label</code>.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__2">https://api.<span
class="ph">appnexus.com/lookup?advertiser_id=ADVERTISER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__3">View
information about all objects belonging to a specific advertiser</td>
</tr>
</tbody>
</table>





## JSON Fields

Fields returned for all object types:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__13"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__15">The
custom code for the object (not applicable to all object types).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__15">The
internal ID associated with the object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__15">The
date and time when the object was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__15">The
name of the object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__13"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__14">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__15">The
state of the object. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</td>
</tr>
</tbody>
</table>





## Object- Specific JSON fields

Additional fields returned for specific object types.

**Advertiser**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__31"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__32"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__33"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__31"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__33">The
ID of the member to which the advertiser belongs.</td>
</tr>
</tbody>
</table>

**Insertion Order**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__37"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__39"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__37"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__38">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__39">The
ID of the advertiser to which the insertion order belongs.</td>
</tr>
</tbody>
</table>

**Line Item**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__43"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__44"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__43"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__44">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__45">The
ID of the advertiser to which the line item belongs.</td>
</tr>
</tbody>
</table>

**Campaign**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__49"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__50"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__51"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__49"><code
class="ph codeph">line_item_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__50">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__51">The
ID of the line item to which the campaign belongs.</td>
</tr>
</tbody>
</table>

**Budget Splitter**

<table id="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th
id="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__3">The
ID of the line item to which the budget splits belong.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__3">The
name of the budget split.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__3">The
ID of the budget split.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__3">The
state of the budget split. Permitted values are:
<ul>
<li>active</li>
<li>inactive</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__table-0dac4f2d-4bf0-44a8-8d5d-772ed27996e3__entry__3">The
timestamp when the split was last modified.</td>
</tr>
</tbody>
</table>

**Creative**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__73"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__74"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__75"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__73"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__74">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__75">The
ID of the advertiser to which the creative belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__73"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__74">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__75">The
ID of the brand associated to the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__73"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__74">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__75">The
description of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__73"><code
class="ph codeph">landing_page_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__74">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__75">The
URL of the landing page associated with this creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__73"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__74">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__75">The
ID of the publisher to which the creative is associated.</td>
</tr>
</tbody>
</table>

**Segment Pixel**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__91"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__92"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__93"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__91"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__92">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__93">The
ID of the advertiser to which the segment pixel is associated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__91"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__92">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a9e__entry__93">The
ID of the member to which the segment pixel belongs.</td>
</tr>
</tbody>
</table>

**Conversion Pixel**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__100"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__101"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__102"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__100"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__101">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__102">The ID of the advertiser to which the
conversion pixel belongs.</td>
</tr>
</tbody>
</table>

**Publisher**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__106"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__107"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__108"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__106"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__107">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__108">The ID of the member to which the
publisher belongs.</td>
</tr>
</tbody>
</table>

**Payment Rule**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__112"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__113"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__114"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__112"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__113">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__114">The description of the payment
rule.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__112"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__113">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__114">The ID of the publisher to which the
payment rule belongs.</td>
</tr>
</tbody>
</table>

**Placement**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__121"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__122"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__123"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__121"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__122">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__123">The ID of the publisher to which the
placement belongs.</td>
</tr>
</tbody>
</table>

**Site**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__127"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__128"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__129"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__127"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__128">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__129">The ID of the publisher to which the
site belongs.</td>
</tr>
</tbody>
</table>

**Label**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a9e__entry__133"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a9e__entry__134"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a9e__entry__135"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__133"><code
class="ph codeph">label_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__134">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__135">The ID of the label.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__133"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__134">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__135">The ID of the member to which the
label belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__133"><code
class="ph codeph">object_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__134">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__135">The ID of the object to which the
label can be applied.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__133"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__134">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__135">The type of object to which the label
can be applied. Possible values: <code
class="ph codeph">"advertiser"</code>, <code
class="ph codeph">"insertion_order"</code>, <code
class="ph codeph">"line_item"</code>, <code
class="ph codeph">"campaign"</code>, or <code
class="ph codeph">"publisher"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__133"><code
class="ph codeph">value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__134">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a9e__entry__135">The label text.</td>
</tr>
</tbody>
</table>





## Examples

**Looking up all of your campaigns**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/lookup?type=campaign'
{
    "response": {
        "status": "OK",
        "num_elements": 2,
        "start_element": 0,
        "results": {
            "campaign": {
                "results": [
                    {
                        "id": "58990",
                        "name": "Car Donations",
                        "line_item_id": "31189",
                        "state": "active",
                        "code": "cdon",
                        "last_modified": "2011-10-18 17:25:00"
                    },
                    {
                        "id": "58991",
                        "name": "Bucket Builders",
                        "line_item_id": "31189",
                        "state": "active",
                        "code": "bb",
                        "last_modified": "2011-10-12 22:08:04"
                    }
                ],
                "num_elements": "2"
            }
        }
    }
}
```

**Looking up all objects accessible to this service **

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/lookup'
{
    "response": {
        "status": "OK",
        "num_elements": 24,
        "start_element": 0,
        "results": {
            "advertiser": {
                "results": [
                    {
                        "id": "35081",
                        "name": "Bucketeer",
                        "code": "bucket",
                        "member_id": "1066",
                        "state": "active",
                        "last_modified": "2011-10-18 17:25:00"
                    }
                ],
                "num_elements": "1"
            },
            "insertion_order": {
                "results": null,
                "num_elements": 0
            },
            "line_item": {
                "results": [
                    {
                        "id": "31189",
                        "name": "bucket line 1",
                        "code": "bk1",
                        "advertiser_id": "35081",
                        "state": "active",
                        "last_modified": "2011-10-18 17:25:00"
                    }
                ],
                "num_elements": "1"
            },
            "campaign": {
                "results": [
                    {
                        "id": "58990",
                        "name": "Car Donations",
                        "line_item_id": "31189",
                        "state": "active",
                        "code": "cdon",
                        "last_modified": "2011-10-18 17:25:00"
                    },
                    {
                        "id": "58991",
                        "name": "Bucket Builders",
                        "line_item_id": "31189",
                        "state": "active",
                        "code": "bb",
                        "last_modified": "2011-10-17 13:24:00"
                    }
                ],
                "num_elements": "2"
            },
            "budget_splitter":{
               "results": [
                   {
                         "line_item_id": 1,
                         "name": "Split 1",
                         "id": 1,
                         "state": "active",
                         "last_modified": "2023-04-18 17:25:00"
                    },
                    {
                    "line_item_id": 1,
                    "name": "Split 2",
                    "id": 2,
                    "state": "active",
                    "last_modified": "2023-04-19 17:25:00"
                    },
                ],
                "num_elements": "2"
            },
            "creative": {
                "results": [
                    {
                        "id": "445832",
                        "code": null,
                        "description": "Donate car.png",
                        "advertiser_id": "35081",
                        "publisher_id": "0",
                        "state": "active",
                        "brand_id": 1,
                        "landing_page_url": "www.cardonations.com/donate",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "445833",
                        "code": null,
                        "description": "bucketbuilders.png",
                        "advertiser_id": "35081",
                        "publisher_id": "0",
                        "state": "active",
                        "brand_id": 3,
                        "landing_page_url": "www.buckets.com/build",
                        "last_modified": "2011-10-17 13:24:00"
                    }
                ],
                "num_elements": "2"
            },
            "segment_pixel": {
                "results": null,
                "num_elements": 0
            },
            "payment_rule": {
                "results": [
                    {
                        "id": "91345",
                        "name": "",
                        "publisher_id": "89286",
                        "state": "active",
                        "description": "",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "91346",
                        "name": "Default",
                        "publisher_id": "89287",
                        "state": "active",
                        "description": "",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "91375",
                        "name": "Base Payment Rule",
                        "publisher_id": "89314",
                        "state": "active",
                        "description": "",
                        "last_modified": "2011-10-17 13:24:00"
                    }
                ],
                "num_elements": "3"
            },
            "conversion_pixel": {
                "results": null,
                "num_elements": 0
            },
            "publisher": {
                "results": [
                    {
                        "id": "89286",
                        "name": "Default Real Time",
                        "member_id": "1066",
                        "state": "inactive",
                        "code": "",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "89287",
                        "name": "Wide Road",
                        "member_id": "1066",
                        "state": "active",
                        "code": "bb",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "89314",
                        "name": "Radio Live",
                        "member_id": "1066",
                        "state": "active",
                        "code": "rlive",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    ...
                ],
                "num_elements": "5"
            },
            "placement": {
                "results": [
                    {
                        "id": "594594",
                        "name": "[Default Real Time] - Default",
                        "publisher_id": "89286",
                        "state": "active",
                        "code": "",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "594595",
                        "name": "[Wide Road] - Placement 1",
                        "publisher_id": "89287",
                        "state": "active",
                        "code": "",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "594641",
                        "name": "[Radio Live] - Default",
                        "publisher_id": "89314",
                        "state": "active",
                        "code": "",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    ...
                ],
                "num_elements": "5"
            },
            "site": {
                "results": [
                    {
                        "id": "188039",
                        "code": "",
                        "name": "[Default Real Time] - ROS",
                        "publisher_id": "89286",
                        "state": "active",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "188040",
                        "code": "",
                        "name": "[Wide Road] - ROS",
                        "publisher_id": "89287",
                        "state": "active",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    {
                        "id": "188070",
                        "code": "",
                        "name": "[Radio Live] - ROS",
                        "publisher_id": "89314",
                        "state": "active",
                        "last_modified": "2011-10-17 13:24:00"
                    },
                    ...
                ],
                "num_elements": "5"
            },
        }
    }
}
```






