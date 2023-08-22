# Segment Billing Category Service

<div class="body">

<div class="p">

The Segment Billing Category Service allows you to **map** your segments
to your Data Marketplace pricing taxonomy. Here's how it works:

1.  You create a mapping record for a segment that you activate in the
    Data Marketplace.
2.  In the mapping record, you specify which pricing category the
    segment should be assigned to.
3.  <span class="ph"></span> clients that you've shared your segment
    with can now target that segment in campaigns and
    <span class="ph">Xandr</span> will clear the cost of usage.

<div class="note">

<span class="notetitle">Note:</span>

- This service allows you to map to existing categories. To create a new
  category, reach out to your <span class="ph">Xandr</span>
  representative.
- When you remove a segment from a mapping record, the member can
  continue to use the segment in a campaign but
  <span class="ph">Xandr</span> will stop tracking the cost of data
  usage. 

</div>

</div>

<div class="section">

## REST API

<div class="tablenoborder">

<table id="ID-00000d20__table-04f2d3d7-30f1-40fa-873f-12e3abba9505"
class="table" data-cellpadding="4"
data-cellspacing="0" data-summary="" data-frame="border" data-border="1"
data-rules="all">
<colgroup>
<col />
<col />
<col />
</colgroup>
<thead class="thead">
<tr class="header ">
<th id="d8375e92" class="entry cellborder"
style="vertical-align: top">HTTP Method</th>
<th id="d8375e95" class="entry cellborder"
style="vertical-align: top">Endpoint</th>
<th id="d8375e98" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d8375e92 ">GET</td>
<td class="entry cellborder"
headers="d8375e95 "><a href="https://api.appnexus.com/data-provider"
class="xref"
target="_blank">https://api.appnexus.com/data-provider</a></td>
<td class="entry cellborder"
headers="d8375e98 ">View all of your pricing taxonomy</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d8375e92 ">GET</td>
<td class="entry cellborder"
headers="d8375e95 "><p> <a
href="https://api.appnexus.com/segment-billing-category" class="xref"
target="_blank">https://api.<span
class="ph">appnexus</span>.com/segment-billing-category</a> </p></td>
<td class="entry cellborder"
headers="d8375e98 ">View all of your mapping records</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d8375e92 ">POST</td>
<td class="entry cellborder"
headers="d8375e95 "><div
id="ID-00000d20__p-f9d7b0d9-3f20-4e48-a87e-672dbe1de493" class="p">
 <a href="https://api.appnexus.com/segment-billing-category"
class="xref" target="_blank">https://api.<span
class="ph">appnexus</span>.com/segment-billing-category</a> (mapping
JSON) -
<div id="ID-00000d20__note-23d2dd6e-480f-432c-ab96-b1c1b3d37255"
class="note">
<span class="notetitle">Note:</span> Only one segment can be mapped at a
time
</div>
</div></td>
<td class="entry cellborder"
headers="d8375e98 ">Add a mapping record</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d8375e92 ">PUT</td>
<td class="entry cellborder"
headers="d8375e95 "><a
href="https://api.appnexus.com/segment-billing-category" class="xref"
target="_blank">https://api.<span
class="ph">appnexus</span>.com/segment-billing-category</a> (mapping
JSON)</td>
<td class="entry cellborder"
headers="d8375e98 ">Modify a mapping record</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d8375e92 ">DELETE</td>
<td class="entry cellborder"
headers="d8375e95 "><a
href="http://api.appnexus.com/segment-billing-category?id=RECORD_ID"
class="xref"
target="_blank">http://api.appnexus.com/segment-billing-category?id=RECORD_ID</a></td>
<td class="entry cellborder"
headers="d8375e98 ">Delete a mapping record</td>
</tr>
</tbody>
</table>

</div>

<div class="note tip">

<span class="tiptitle">Tip:</span> **JSON structure:** When adding or
updating a mapping record, you should structure the JSON as a single
object called "`segment-billing-category`". For exact formatting, see
the examples below.

</div>

<div class="note tip">

<span class="tiptitle">Tip:</span> The Segment Billing Category service
works on BOTH the platform API as well as the impression bus API.
Although
only <a href="https://api.adnxs.com/" class="xref" target="_blank">api.<span
class="ph">adnxs</span>.com</a> is used below, it may be replaced with
<a href="https://api.appnexus.com/" class="xref"
target="_blank">api.<span class="ph">appnexus</span>.com</a> for those
clients who have access to the platform API. Only members who are on
<span class="ph"></span> will have access to the platform API. The
majority of data providers can only access the impression bus API.

</div>

</div>

<div class="section">

## JSON Fields

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d8375e248" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d8375e251" class="entry nocellnoborder"
style="vertical-align: top">Type (Length)</th>
<th id="d8375e254" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d8375e257" class="entry nocellnoborder"
style="vertical-align: top">Default</th>
<th id="d8375e260" class="entry cell-noborder"
style="vertical-align: top">Required On</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8375e248 ">id</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">int</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The unique ID created when a <span
class="ph">Xandr</span> segment ID is mapped to a billing category. It
can be referred as the mapping id per record.</td>
<td class="entry nocellnoborder"
headers="d8375e257 ">Auto-generated number</td>
<td class="entry cell-noborder"
headers="d8375e260 ">PUT (in JSON)
<p>DELETE (in query string)</p></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d8375e248 ">segment_id</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">int</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The <span class="ph">Xandr</span> segment ID that
is being mapped.</td>
<td class="entry nocellnoborder"
headers="d8375e257 "> </td>
<td class="entry cell-noborder"
headers="d8375e260 ">POST/PUT</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8375e248 ">data_provider_id</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">int</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The data provider ID assigned to you by the Data
Marketplace. Note: The POST/CALL call will fail if you submit an ID that
is not owned by your account</td>
<td class="entry nocellnoborder"
headers="d8375e257 "> </td>
<td class="entry cell-noborder"
headers="d8375e260 ">POST/PUT</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d8375e248 ">data_category_id</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">int</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The pricing category ID created on <span
class="ph">Xandr</span>. Note: The POST/PUT calls will fail if you
submit an ID that is not owned by your account</td>
<td class="entry nocellnoborder"
headers="d8375e257 "> </td>
<td class="entry cell-noborder"
headers="d8375e260 ">POST/PUT</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8375e248 ">active</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">boolean</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The status of the mapping record. If set to <code
class="ph codeph">true</code>, mapping record is active.</td>
<td class="entry nocellnoborder"
headers="d8375e257 "> </td>
<td class="entry cell-noborder"
headers="d8375e260 ">POST</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d8375e248 ">member_id</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">int</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">Read-only. Your member ID.</td>
<td class="entry nocellnoborder"
headers="d8375e257 "> </td>
<td class="entry cell-noborder"
headers="d8375e260 "> </td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8375e248 ">is_public</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">boolean</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The setting to mark the segment as public or <span
class="ph uicontrol">private</span>. If set to <code
class="ph codeph">true</code> , then the segment will be shared to all
Data Marketplace buyers immediately.</td>
<td class="entry nocellnoborder"
headers="d8375e257 ">false</td>
<td class="entry cell-noborder"
headers="d8375e260 ">PUT</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d8375e248 ">data_segment_type_id</td>
<td class="entry nocellnoborder"
headers="d8375e251 ">string</td>
<td class="entry nocellnoborder"
headers="d8375e254 ">The type of segment. This makes it easy for buyers
to search for specific types of segments. For Brand Safety and Fraud
Detection segment types, ensure that the <code
class="ph codeph">recommend_include</code> field (see below) is set to
the proper value for the type of segment.
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
<td class="entry nocellnoborder"
headers="d8375e257 ">unassigned</td>
<td class="entry cell-noborder"
headers="d8375e260 "> </td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d8375e248 ">recommend_include</td>
<td class="entry -nocellborder"
headers="d8375e251 ">boolean</td>
<td class="entry -nocellborder"
headers="d8375e254 ">Determines if a segment is intended for inclusion
(<code class="ph codeph">true</code>) or exclusion (<code
class="ph codeph">false</code>). By default, it is set to <code
class="ph codeph">false</code> which is an exclusion; set to <code
class="ph codeph">true</code> if the segment is intended for inclusion.
Ensure that this field is set to the proper value for the type of
segment.</td>
<td class="entry -nocellborder"
headers="d8375e257 ">false</td>
<td class="entry cellborder"
headers="d8375e260 "> </td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Pagination

You can paginate results by specifying `start_element` and
`num_elements` in the query string of the GET request. For example, the
following request would return 25 items starting from element 26:

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/segment-billing-category?start_element=26&num_elements=25'
```

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d8375e537" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d8375e540" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d8375e543" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8375e537 "><pre class="pre codeblock"><code>count</code></pre></td>
<td class="entry nocellnoborder"
headers="d8375e540 ">int</td>
<td class="entry cell-noborder"
headers="d8375e543 ">Total number of results</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d8375e537 "><pre class="pre codeblock"><code>start_element</code></pre></td>
<td class="entry nocellnoborder"
headers="d8375e540 ">int</td>
<td class="entry cell-noborder"
headers="d8375e543 ">Element number at which to start result set</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d8375e537 "><pre class="pre codeblock"><code>num_elements</code></pre></td>
<td class="entry -nocellborder"
headers="d8375e540 ">int</td>
<td class="entry cellborder"
headers="d8375e543 ">Number of elements to return, max = 100, default =
25</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

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

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="data-marketplace-data-partner-overview.html" class="link">Data
Marketplace - Data Partner Overview</a>

</div>

</div>

</div>
