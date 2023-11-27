---
Title : Segment Billing Category Service
Description : The Segment Billing Category Service allows you to **map** your segments
ms.custom : data-providers
ms.date : 10/28/2023
to your Data Marketplace pricing taxonomy. Here's how it works:
---


# Segment Billing Category Service





The Segment Billing Category Service allows you to **map** your segments
to your Data Marketplace pricing taxonomy. Here's how it works:

1.  You create a mapping record for a segment that you activate in the
    Data Marketplace.
2.  In the mapping record, you specify which pricing category the
    segment should be assigned to.
3.   clients that you've shared your segment
    with can now target that segment in campaigns and
    Xandr will clear the cost of usage.



<b>Note:</b>

- This service allows you to map to existing categories. To create a new
  category, reach out to your Xandr
  representative.
- When you remove a segment from a mapping record, the member can
  continue to use the segment in a campaign but
  Xandr will stop tracking the cost of data
  usage. 







## REST API

<table id="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th
id="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th
id="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__2"><a
href="https://api.appnexus.com/data-provider" class="xref"
target="_blank">https://api.appnexus.com/data-provider</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__3">View
all of your pricing taxonomy</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__2"><p> <a
href="https://api.appnexus.com/segment-billing-category" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/segment-billing-category</a> </p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__3">View
all of your mapping records</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__2"><div
id="ID-00000d20__p-f9d7b0d9-3f20-4e48-a87e-672dbe1de493" >
 <a href="https://api.appnexus.com/segment-billing-category"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/segment-billing-category</a> (mapping
JSON) -
class="note note_note">
<b>Note:</b> Only one segment can be mapped at
a time

</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__3">Add
a mapping record</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__2"><a
href="https://api.appnexus.com/segment-billing-category" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/segment-billing-category</a> (mapping
JSON)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__3">Modify
a mapping record</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__2"><a
href="http://api.appnexus.com/segment-billing-category?id=RECORD_ID"
class="xref"
target="_blank">http://api.appnexus.com/segment-billing-category?id=RECORD_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505__entry__3">Delete
a mapping record</td>
</tr>
</tbody>
</table>



<b>Tip:</b> **JSON structure:** When adding or
updating a mapping record, you should structure the JSON as a single
object called "`segment-billing-category`". For exact formatting, see
the examples below.





<b>Tip:</b> The Segment Billing Category
service works on BOTH the platform API as well as the impression bus
API. Although
only <a href="https://api.adnxs.com/" class="xref" target="_blank">api.<span
class="ph">adnxs.com</a> is used below, it may be replaced with
<a href="https://api.appnexus.com/" class="xref"
target="_blank">api.appnexus.com</a> for those
clients who have access to the platform API. Only members who are on
 will have access to the platform API. The
majority of data providers can only access the impression bus API.







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d20__entry__19" class="entry">Field</th>
<th id="ID-00000d20__entry__20" class="entry">Type (Length)</th>
<th id="ID-00000d20__entry__21" class="entry">Description</th>
<th id="ID-00000d20__entry__22" class="entry">Default</th>
<th id="ID-00000d20__entry__23" class="entry">Required On</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000d20__entry__19">id</td>
<td class="entry" headers="ID-00000d20__entry__20">int</td>
<td class="entry" headers="ID-00000d20__entry__21">The unique ID created
when a Xandr segment ID is mapped to a billing
category. It can be referred as the mapping id per record.</td>
<td class="entry" headers="ID-00000d20__entry__22">Auto-generated
number</td>
<td class="entry" headers="ID-00000d20__entry__23">PUT (in JSON)
<p>DELETE (in query string)</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d20__entry__19">segment_id</td>
<td class="entry" headers="ID-00000d20__entry__20">int</td>
<td class="entry" headers="ID-00000d20__entry__21">The <span
class="ph">Xandr segment ID that is being mapped.</td>
<td class="entry" headers="ID-00000d20__entry__22"></td>
<td class="entry" headers="ID-00000d20__entry__23">POST/PUT</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d20__entry__19">data_provider_id</td>
<td class="entry" headers="ID-00000d20__entry__20">int</td>
<td class="entry" headers="ID-00000d20__entry__21">The data provider ID
assigned to you by the Data Marketplace. <b>Note:</b> The POST/CALL call will
fail if you submit an ID that is not owned by your account</td>
<td class="entry" headers="ID-00000d20__entry__22"></td>
<td class="entry" headers="ID-00000d20__entry__23">POST/PUT</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d20__entry__19">data_category_id</td>
<td class="entry" headers="ID-00000d20__entry__20">int</td>
<td class="entry" headers="ID-00000d20__entry__21">The pricing category
ID created on Xandr. <b>Note:</b> The POST/PUT calls
will fail if you submit an ID that is not owned by your account</td>
<td class="entry" headers="ID-00000d20__entry__22"></td>
<td class="entry" headers="ID-00000d20__entry__23">POST/PUT</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d20__entry__19">active</td>
<td class="entry" headers="ID-00000d20__entry__20">boolean</td>
<td class="entry" headers="ID-00000d20__entry__21">The status of the
mapping record. If set to <code class="ph codeph">true</code>, mapping
record is active.</td>
<td class="entry" headers="ID-00000d20__entry__22"></td>
<td class="entry" headers="ID-00000d20__entry__23">POST</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d20__entry__19">member_id</td>
<td class="entry" headers="ID-00000d20__entry__20">int</td>
<td class="entry" headers="ID-00000d20__entry__21">Read-only. Your
member ID.</td>
<td class="entry" headers="ID-00000d20__entry__22"></td>
<td class="entry" headers="ID-00000d20__entry__23"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d20__entry__19">is_public</td>
<td class="entry" headers="ID-00000d20__entry__20">boolean</td>
<td class="entry" headers="ID-00000d20__entry__21">The setting to mark
the segment as public or private. If
set to <code class="ph codeph">true</code> , then the segment will be
shared to all Data Marketplace buyers immediately.</td>
<td class="entry" headers="ID-00000d20__entry__22">false</td>
<td class="entry" headers="ID-00000d20__entry__23">PUT</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000d20__entry__19">data_segment_type_id</td>
<td class="entry" headers="ID-00000d20__entry__20">string</td>
<td class="entry" headers="ID-00000d20__entry__21">The type of segment.
This makes it easy for buyers to search for specific types of segments.
For Brand Safety and Fraud Detection segment types, ensure that the
<code class="ph codeph">recommend_include</code> field (see below) is
set to the proper value for the type of segment.
<p>Valid options are:</p>
<ul>
<li>unassigned</li>
<li>Audience</li>
<li>Brand Safety</li>
<li>Fraud Detection</li>
<li>Viewability</li>
<li>Contextual</li>
<li>Geolocation</li>
<li>B2B</li>
<li>Purchase</li>
<li>Interest</li>
<li>Demo</li>
<li>In-Market</li>
</ul></td>
<td class="entry" headers="ID-00000d20__entry__22">unassigned</td>
<td class="entry" headers="ID-00000d20__entry__23"></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000d20__entry__19">recommend_include</td>
<td class="entry" headers="ID-00000d20__entry__20">boolean</td>
<td class="entry" headers="ID-00000d20__entry__21">Determines if a
segment is intended for inclusion (<code class="ph codeph">true</code>)
or exclusion (<code class="ph codeph">false</code>). By default, it is
set to <code class="ph codeph">false</code> which is an exclusion; set
to <code class="ph codeph">true</code> if the segment is intended
for inclusion. Ensure that this field is set to the proper value for the
type of segment.</td>
<td class="entry" headers="ID-00000d20__entry__22">false</td>
<td class="entry" headers="ID-00000d20__entry__23"></td>
</tr>
</tbody>
</table>





## Pagination

You can paginate results by specifying `start_element` and
`num_elements` in the query string of the GET request. For example, the
following request would return 25 items starting from element 26:

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/segment-billing-category?start_element=26&num_elements=25'
```

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d20__entry__69" class="entry">Field</th>
<th id="ID-00000d20__entry__70" class="entry">Type</th>
<th id="ID-00000d20__entry__71" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000d20__entry__69"><pre
class="pre codeblock"><code>count</code></pre></td>
<td class="entry" headers="ID-00000d20__entry__70">int</td>
<td class="entry" headers="ID-00000d20__entry__71">Total number of
results</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d20__entry__69"><pre
class="pre codeblock"><code>start_element</code></pre></td>
<td class="entry" headers="ID-00000d20__entry__70">int</td>
<td class="entry" headers="ID-00000d20__entry__71">Element number at
which to start result set</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d20__entry__69"><pre
class="pre codeblock"><code>num_elements</code></pre></td>
<td class="entry" headers="ID-00000d20__entry__70">int</td>
<td class="entry" headers="ID-00000d20__entry__71">Number of elements to
return, max = 100, default = 25</td>
</tr>
</tbody>
</table>





## Examples

**View your pricing taxonomy**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/data-provider'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 25,
    "dbg_info": {
      "instance": "01.data-clearing-api.prod.nym2",
      "db": "",
      "warnings": [],
      "start_microtime": 1459912197.525,
      "time": 14,
      "version": "",
      "output_term": "data-providers"
    },
    "data-providers": [
      {
        "id": 1,
        "node_name": "Sample Data Provider Name",
        "member_id": 958,
        "data_revshare_pct": 0.01,
        "active": true,
        "data_publishers": [
          {
            "id": 1,
            "node_name": "Sample Data Publisher Name",
            "level_index": 0,
            "data_provider_id": 958,
            "active": true,
            "member_id": 958,
            "data_categories": [
              {
                "id": 1001,
                "node_name": "Sample Data Category Name",
                "level_index": 0,
                "data_publisher_id": 1,
                "data_provider_id": 958,
                "active": true,
                "member_id": 958
              }
            ]
          }
        ]
      }
    ]
  }
}
```

**Create a mapping record**

``` pre
$ cat create_segment_mapping
{
        "segment-billing-category": {
                "active": true, 
                "data_provider_id": 958,
                "data_category_id": 1001,
                "segment_id": 111111,
                "is_public": true,
                "data_segment_type_id": "Audience"
        }
}
$ curl -b cookies -c cookies -X POST -d @create_segment_mapping 'https://api.appnexus.com/segment-billing-category?member_id=958'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 25,
    "segment_billing_categories": [
      {
        "id": 22286,
        "segment_id": 111111,
        "data_provider_id": 958,
        "data_category_id": 1001,
        "active": true,
        "member_id": 958,
                "is_public": true,
                "data_segment_type_id" : "Audience"
      }
    ]
  }
}
```

 **Update a mapping record**

``` pre
$ cat update_segment_mapping
{
        "segment-billing-category": {
                "id": 22286,
                "active": false,
                "is_public": true,
                "data_provider_id": 958,
        "data_category_id": 1001,
                "data_segment_type_id": "Contextual"
        }
}
$ curl -b cookies -c cookies -X PUT -d @update_segment_mapping 'https://api.appnexus.com/segment-billing-category?member_id=958'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 25,
    "segment_billing_categories": [
      {
        "id": 22286,
        "segment_id": 111111,
        "data_provider_id": 958,
        "data_category_id": 1001,
        "active": false,
        "member_id": 958,
                "is_public": true,
                "data_segment_type_id": "Contextual"
      }
    ]
  }
}
```

**Remove a mapping record**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/segment-billing-category?member_id=958&id=22286'
{
  "response": {
    "status": "OK",
    "count": 0,
    "start_element": 0,
    "num_elements": 0,
    "segment_billing_category": null
  }
}
```

**View all of your mapping records**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/segment-billing-category'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 25,
    "segment_billing_categories": [
      {
        "id": 22286,
        "segment_id": 111111,
        "data_provider_id": 958,
        "data_category_id": 1001,
        "active": true,
        "member_id": 958,
                "is_public": true,
                "data_segment_type_id": "Contextual"
      }
    ]
  }
}
```






