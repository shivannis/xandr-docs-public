---
Title : Change Log Services
Description : ## Overview
ms.date: 10/28/2023
ms.custom: digital-platform-api
The read-only Change Log and Change Log Detail Services are used in
conjunction with other services (listed below) to retrieve information
about changes that have been made to a set of objects. This page
---


# Change Log Services





## Overview

The read-only Change Log and Change Log Detail Services are used in
conjunction with other services (listed below) to retrieve information
about changes that have been made to a set of objects. This page
describes the use of these two services to retrieve a list of the logged
changes in which you are interested. The Change Log service is only
available to users with the `"member"`, `"advertiser"`, or
`"member_advertiser"` user type.



<b>Note:</b> The Change Log service has some
minor differences from other Xandr API services
as mentioned below:

- the `min_last_modified` option used for date filtering is replaced by
  `min_timestamp`.
- the `last_modified` option is not supported. Use `created_on` instead.







## REST API for retrieving the ID of a change

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000036f6__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000036f6__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__2"><a
href="https://api.appnexus.com/change-log?service=SERVICE&amp;resource_id=ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/change-log?service=SERVICE&amp;resource_id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__3">Retrieve ID of a change incurred to a
resource</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__2"><a
href="https://api.appnexus.com/change-log" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/change-log</a>
<p>(Change log JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__3">Posting an ID of change for a
resource</td>
</tr>
</tbody>
</table>





## JSON Fields



<b>Note:</b>

- The Change Log service is read-only; however, some fields can be used
  in a `POST` call to filter the response. However, all the fields are
  not used in `POST` calls, so `GET` is recommended.
- The Change Log service contains at least 6 months of data, if not
  more, for every service.



**Fields accepted as inputs to the endpoint**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000036f6__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000036f6__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__10"><code
class="ph codeph">service</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__12">The
service used to make the change. Below are few of the examples of
possible values:
<ul>
<li><code class="ph codeph">insertion-order</code></li>
<li><code class="ph codeph">line-item</code></li>
<li><code class="ph codeph">campaign</code></li>
<li><code class="ph codeph">profile</code></li>
</ul>

<b>Note:</b> Currently, <code
class="ph codeph">budget-splitter</code> service is in block-list.
<p><strong>Required</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__10"><code
class="ph codeph">resource_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__12">The
ID of the object used to make the change.
<p><strong>Required</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__10"><code
class="ph codeph">additional_fields</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__11">string
<ul>
<li>For <code class="ph codeph">GET</code> requests, this is a group of
comma separated strings. For example, <code
class="ph codeph">additional_fields = request_source, user_id, object_json</code></li>
<li>For <code class="ph codeph">POST</code> requests, this is a string
array. For example, <code
class="ph codeph">"additional_fields" :  ["request_source","user_id","object_json”]</code></li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__12">This field allows the users to
add additional data in the response. The  <code
class="ph codeph">additional_fields</code> can include additional return
fields. Examples of accepted values are:
<ul>
<li><code class="ph codeph">request_source</code></li>
<li><code class="ph codeph">user_id</code></li>
<li><code class="ph codeph">object_json</code></li>
</ul>
<p><strong>Required</strong>: No  </p>
<p><strong>Filter</strong>: No</p></td>
</tr>
</tbody>
</table>

**Fields returned in the response from the endpoint**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000036f6__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000036f6__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">min_timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
date and time of the earliest modification to the object, in <code
class="ph codeph">YYYY-MM-DD</code> or <code
class="ph codeph">YYYY-MM-DD HH:MM:SS</code> format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">max_timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
date and time of last modification to the object, in <code
class="ph codeph">YYYY-MM-DD</code> or <code
class="ph codeph">YYYY-MM-DD HH:MM:SS</code> format.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">start_element</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">By
default, the <code class="ph codeph">change-log</code> service will
return 100 transactions or less. If there are more transactions, use
<code class="ph codeph">start_element</code> to set the offset. Enter in
the query string. Can be included in both <code
class="ph codeph">GET</code> and <code class="ph codeph">POST</code>
requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">num_elements</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">By
default, the <code class="ph codeph">change-log</code> service will
return 100 transactions or less. If there are more transactions, use
<code class="ph codeph">num_elements</code> to retrieve the specified
number of transactions. Enter in the query string. Can be included in
both <code class="ph codeph">GET</code> and <code
class="ph codeph">POST</code> requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">service</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
service used to make the change.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">resource_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
ID of the object used to make the change.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">additional_fields</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__24">This field returns additional data in
the response as specified in the input.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">transaction_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
ID of the change transaction accepted as input to the endpoint.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">resource_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
ID of the object used to make the change.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">The
date and time of the modification to the object in <code
class="ph codeph">YYYY-MM-DD HH:MM:SS</code> format.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">sort</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__24">A
string of the format, “FIELD.[asc|desc]”. For example, <code
class="ph codeph">created_on.asc</code> for ascending sort on <code
class="ph codeph">created_on</code>. Currently, only sorting on <code
class="ph codeph">created_on</code> is permitted.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">modified_by_admin</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__24">Filter by items that are modified by
the administrators only.

<b>Note:</b> This request parameter is only
usable in <code class="ph codeph">GET</code> requests.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">modified_by_plugin</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__24">Filter by items that are modified by
the plugins only.

<b>Note:</b> This request parameter is only
usable in <code class="ph codeph">GET</code> requests.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__22"><code
class="ph codeph">transactions_with_changes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__24">Filter by items that have changes.</td>
</tr>
</tbody>
</table>





## REST API for retrieving the details of a change 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__67" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000036f6__entry__68"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000036f6__entry__69"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__67"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__68"><a
href="https://api.appnexus.com/change-log-detail?service=SERVICE&amp;resource_id=ID&amp;transaction_id=ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/change-log-detail?service=SERVICE&amp;resource_id=ID&amp;transaction_id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__69">Fetch the details of a change to
resource</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__67"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__68"><a
href="https://api.appnexus.com/change-log-detail" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/change-log-detail</a>
<p>(Change log detail JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__69">Post the details of a change to a
resource </td>
</tr>
</tbody>
</table>





## JSON Fields



<b>Note:</b> The Change Log Details service is
read-only; however, some fields can be used in a `POST` call to filter
the response.



**Fields accepted as inputs to the endpoint**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__76"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000036f6__entry__77"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000036f6__entry__78"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__76"><code
class="ph codeph">service</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__77">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__78">The
service used to make the change.
<p><strong>Required</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__76"><code
class="ph codeph">transaction_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__77">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__78">The
ID of the change transaction accepted as input to the endpoint.
<p><strong>Required</strong>: Yes</p>
<p><strong>Filter</strong>: Yes</p></td>
</tr>
</tbody>
</table>

**Fields returned in the response from the endpoint**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__85"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000036f6__entry__86"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000036f6__entry__87"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
date and time of the modification to the object in <code
class="ph codeph">YYYY-MM-DD HH:MM:SS</code> format.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
ID of the user who made the modification.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">method</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
API method used to make the change. Possible values are:
<ul>
<li><code class="ph codeph">"put"</code></li>
<li><code class="ph codeph">"post"</code></li>
<li><code class="ph codeph">"delete"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
URL of the original request.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">changes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87">Details about the changes made to the
object returned. Each object in the <code
class="ph codeph">changes</code> array contains the following :

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__103"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000036f6__entry__104"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000036f6__entry__105"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__103"><code
class="ph codeph">field_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__104">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__105"><strong>Read-only.</strong> The name
of the field changed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__103"><code
class="ph codeph">old_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__104">Any (int/string/boolean/timestamp
etc.)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__105"><strong>Read-only.</strong> The old
value of the field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__103"><code
class="ph codeph">new_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__104">Any (int/string/boolean/timestamp
etc.)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__105"><strong>Read-only.</strong> The new
value of the field. Data type of <code
class="ph codeph">new_value</code> is same as <code
class="ph codeph">old_value</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__103"><code
class="ph codeph">changed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__104">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__105"><strong>Read-only.</strong> If <code
class="ph codeph">true</code>, it implies that the value of the field is
change Log Services#Changed.</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">plugin_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
ID of the plugin that made the modification. If <code
class="ph codeph">null</code>, a plugin did not make the modification
(and a user did). For more information on a plugin, see the <a
href="plugin-service.md" class="xref">Plugin Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">transaction_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
ID of the change transaction accepted as input to the endpoint.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
ID of the member who initiated the change.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">num_of_changes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
number of fields changes made to the object. It corresponds to number of
<code class="ph codeph">"changes"</code> fields where the value of <code
class="ph codeph">"changed"</code> is <code
class="ph codeph">true.</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">modified_by_admin</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87">Specifies if the changes are initiated
by an administrator.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">admin_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
ID of the administrator who initiated the change.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">user_full_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
name of the user who made the modification. It corresponds to the "<code
class="ph codeph">user_id"</code> field returned in the response.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">resource_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000036f6__entry__87">The
ID of the object used to make the change.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">raw_json</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87"><strong>Read-only</strong>. The full
data object JSON before the change transaction. The <code
class="ph codeph">raw_json</code> value for this transaction is compared
to the value for the last transaction to deduce what has changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">session_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87"><strong>Read-only</strong>. The
authentication token of the user used to access the API.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">internal_txn</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87"><strong>Read-only</strong>. If <code
class="ph codeph">true</code>, this is an internal transaction (i.e.,
the API call was triggered by another internal API call).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">request_source</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87"><strong>Read-only</strong>.Where the
API request originated. Possible values:
<ul>
<li><code class="ph codeph">"hbui"</code> - indicates the request is
from UI</li>
<li><code class="ph codeph">"direct"</code> - indicates the request is
from direct API calls</li>
<li><code class="ph codeph">"LIAA-allocation"</code> - indicates that
the update was done in the line item edit form</li>
<li><code class="ph codeph">"bmwBulkEdit"</code> and "<code
class="ph codeph">LIAA-blkupld"</code> - indicates that the updates were
done in bulk edits and bulk import respectively</li>
<li><code class="ph codeph">"bmwInlineEdit"</code> - indicates that the
user clicked on the pencil icon in the details page that allows to edit
individual sections</li>
<li><code class="ph codeph">"LIAA-dup"</code> - indicates that it was
through the duplication process. Note that this value will show only in
POST calls</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">client_ip</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87"><strong>Read-only</strong>. The IP
address of the client.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__85"><code
class="ph codeph">ip_info</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__86">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__87"><strong>Read-only</strong>. The chain
of IP addresses if the request is from proxies.</td>
</tr>
</tbody>
</table>





## Examples

**Retrieve Change Log Details Using `GET`**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__160"
class="entry colsep-1 rowsep-1">Steps</th>
<th id="ID-000036f6__entry__161"
class="entry colsep-1 rowsep-1">Details</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__160">Step 1. Call <code
class="ph codeph">/change-log</code> to get transactions for a desired
<code class="ph codeph">resource_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__161"><code class="ph codeph">GET </code>to
<code class="ph codeph">/change-log</code>
<pre class="pre codeblock"><code>$ curl -b cookies &#39;https://api.appnexus.com/change-log?service=line-item&amp;resource_id=13984849&#39;
{
    &quot;response&quot;: {
        &quot;change_logs&quot;: [
            {
                &quot;transaction_id&quot;: &quot;4ba6d032-68ef-544e-9f01-49aa6b36b0b4&quot;,
                &quot;created_on&quot;: &quot;2021-02-12 15:24:27&quot;,
                &quot;resource_id&quot;: 13984849
            },
            {
                &quot;transaction_id&quot;: &quot;0ee74310-f580-5001-8007-2f71f84a5454&quot;,
                &quot;created_on&quot;: &quot;2021-02-12 15:14:50&quot;,
                &quot;resource_id&quot;: 13984849
            }
        ],
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;count&quot;: 2,
        &quot;status&quot;: &quot;OK&quot;
    }
}</code></pre>
<p><code class="ph codeph">GET </code>to <code
class="ph codeph">/change-log</code> with  <code
class="ph codeph">additional_fields"</code>parameter</p>
<pre class="pre codeblock"><code>$ curl -b cookies &#39;https://api.appnexus.com/change-log?service=line-item&amp;resource_id=13984849&amp;additional_fields=request_source,user_id,object_json&#39;
{
    &quot;response&quot;: {
        &quot;change_logs&quot;: [
            {
                &quot;transaction_id&quot;: &quot;2b11b163-c8a6-5c8b-b3d2-6e580d41d929&quot;,
                &quot;object_json&quot;: &quot;{\&quot;id\&quot;:13984849,\&quot;code\&quot;:null,...}&quot;,
                &quot;created_on&quot;: &quot;2021-03-03 17:05:53&quot;,
                &quot;user_id&quot;: [redacted],
                &quot;resource_id&quot;: 13984849,
                &quot;request_source&quot;: &quot;LIAA-blkupld&quot;
            },
            ...
        ],
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 1,
        &quot;count&quot;: 1,
        &quot;status&quot;: &quot;OK&quot;
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__160">Step 2. Call <code
class="ph codeph">/change-log-detail</code> with the <code
class="ph codeph">transaction_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__161"> <code class="ph codeph">GET </code>to
<code class="ph codeph">/change-log-detail</code>
<pre class="pre codeblock"><code>$ curl -b cookies &#39;https://api.appnexus.com/change-log-detail?service=line-item&amp;transaction_id=0ee74310-f580-5001-8007-2f71f84a5454&#39;
{
  &quot;response&quot;: {
    &quot;change_log_details&quot;: [
      {
        &quot;transaction_id&quot;: &quot;0ee74310-f580-5001-8007-2f71f84a5454&quot;,
        &quot;member_id&quot;: 364,
        &quot;raw_json&quot;: &quot;{\&quot;line-item\&quot;:{\&quot;advertiser_id\&quot;:4143132,\&quot;currency\&quot;:\&quot;GBP\&quot;,...}&quot;,
        &quot;plugin_id&quot;: &quot;&quot;,
        &quot;method&quot;: &quot;PUT&quot;,
        &quot;changes&quot;: [
          {
            &quot;field_name&quot;: &quot;advertiser_id&quot;,
            &quot;old_value&quot;: 4143132,
            &quot;new_value&quot;: 4143132,
            &quot;changed&quot;: false
          },
          ...
        ],
        &quot;session_id&quot;: &quot;authn:234473:42824ee8a5453:nym2&quot;,
        &quot;internal_txn&quot;: false,
        &quot;url&quot;: &quot;https://hbapi-proxy-production/line-item?id=13984849&amp;advertiser_id=4143132&quot;,
        &quot;request_source&quot;: &quot;LIAA-blkupld&quot;,
        &quot;num_of_changes&quot;: 2,
        &quot;created_on&quot;: &quot;2021-03-03 17:05:53&quot;,
        &quot;user_id&quot;: [redacted int value],
        &quot;modified_by_admin&quot;: true,
        &quot;admin_id&quot;: 0,
        &quot;user_full_name&quot;: &quot;Test User&quot;,
        &quot;resource_id&quot;: 13984849,
        &quot;client_ip&quot;: &quot;[redacted]&quot;,
        &quot;ip_info&quot;: &quot;[redacted]&quot;
      }
    ],
    &quot;start_element&quot;: 0,
    &quot;num_elements&quot;: 1,
    &quot;count&quot;: 1,
    &quot;status&quot;: &quot;OK&quot;
  }
}</code></pre></td>
</tr>
</tbody>
</table>

**Retrieve Change Log Details Using `POST`**



<b>Note:</b> The code samples in the steps
below show how a user retrieves changes made to advertiser 5260730
between 17:00:00 on March 3, 2021 and 18:00:00 on March 3, 2021.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000036f6__entry__166"
class="entry colsep-1 rowsep-1">Steps</th>
<th id="ID-000036f6__entry__167"
class="entry colsep-1 rowsep-1">Details</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__166">Step 1. Create a JSON-formatted change
log request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__167">The JSON file should include the <code
class="ph codeph">service</code> and <code
class="ph codeph">resource_id</code> of the change logs you want to
view, as well as the <code
class="ph codeph">min_timestamp</code> and <code
class="ph codeph">max_timestamp</code> to limit change logs to a
specific time period. You can also use <code
class="ph codeph">start_element</code> or <code
class="ph codeph">num_elements</code> in the query string.
<p> Create <code class="ph codeph">change-log </code>JSON</p>
<pre class="pre codeblock"><code>$ cat change-log.json
{
    &quot;change-log&quot; : {
        &quot;service&quot; : &quot;advertiser&quot;,
        &quot;resource_id&quot;: &quot;5260730&quot;,
        &quot;min_timestamp&quot; : &quot;2021-03-03 17:00:00&quot;,
        &quot;max_timestamp&quot; : &quot;2021-03-03 18:00:00&quot;    
        }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__166">Step 2. <code
class="ph codeph">POST</code> the request to the Change Log Service</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__167"><code class="ph codeph">Post</code>
the JSON request to get back basic change log information, including
the <code class="ph codeph">transaction_id</code>.
<p><code class="ph codeph">POST </code>to <code
class="ph codeph">/change-log</code></p>
<pre class="pre codeblock"><code>$ curl -b cookies -X POST -d @change-log.json &#39;https://api.appnexus.com/change-log&#39;
{
    &quot;response&quot;: {
        &quot;change_logs&quot;: [
            {
                &quot;transaction_id&quot;: &quot;016ac252-aa30-5d10-a7a0-b5b3d88df832&quot;,
                &quot;created_on&quot;: &quot;2021-03-03 17:16:07&quot;,
                &quot;resource_id&quot;: 5260730
            }
        ],
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 100,
        &quot;count&quot;: 1,
        &quot;status&quot;: &quot;OK&quot;
    }
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__166">Step 3. Create a JSON-formatted change
log detail request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__167">The JSON file should include the <code
class="ph codeph">service </code>and <code
class="ph codeph">transaction_id</code> of the change log for which
details you want to view.
<p>Create <code class="ph codeph">change-log-detail </code>JSON</p>
<pre class="pre codeblock"><code>$ cat change-log-detail.json
{
    &quot;change-log-detail&quot; : {
        &quot;service&quot; : &quot;advertiser&quot;,
        &quot;transaction_id&quot;: &quot;016ac252-aa30-5d10-a7a0-b5b3d88df832&quot;
    }
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__166">Step 4. <code
class="ph codeph">POST</code> the request to the Change Log Detail
Service </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000036f6__entry__167"><code class="ph codeph">Post</code>
the JSON request to get back a detailed change log for the change
corresponding to the <code class="ph codeph">transaction_id</code>.
<p><code class="ph codeph">POST</code> to <code
class="ph codeph">/change-log-detail</code></p>
<pre class="pre codeblock"><code>$ curl -b cookies -X POST -d @change-log-detail.json &#39;https://api.appnexus.com/change-log-detail&#39;
{
    &quot;response&quot;: {
        &quot;change_log_details&quot;: [
            {
                &quot;transaction_id&quot;: &quot;016ac252-aa30-5d10-a7a0-b5b3d88df832&quot;,
                &quot;member_id&quot;: 7823,
                &quot;raw_json&quot;:&quot;{\&quot;advertiser\&quot;:{\&quot;id\&quot;:0,\&quot;code\&quot;:\&quot;0080459398\&quot;,...}&quot;,
                &quot;plugin_id&quot;: &quot;&quot;,
                &quot;method&quot;: &quot;POST&quot;,
                &quot;changes&quot;: [
                    {
                        &quot;field_name&quot;: &quot;allow_safety_pacing&quot;,
                        &quot;old_value&quot;: null,
                        &quot;new_value&quot;: null,
                        &quot;changed&quot;: false
                    },
                    {
                        &quot;field_name&quot;: &quot;billing_address1&quot;,
                        &quot;old_value&quot;: null,
                        &quot;new_value&quot;: &quot;New Address&quot;,
                        &quot;changed&quot;: true
                    },
                    ...
                ],
                &quot;session_id&quot;: &quot;authn:206221:8d1c33b7fadc3:ams3&quot;,
                &quot;internal_txn&quot;: false,
                &quot;url&quot;: &quot;https://api.appnexus.com/advertiser&quot;,
                &quot;request_source&quot;: &quot;direct&quot;,
                &quot;num_of_changes&quot;: 25,
                &quot;created_on&quot;: &quot;2021-03-03 17:16:07&quot;,
                &quot;user_id&quot;: [redacted],
                &quot;modified_by_admin&quot;: true,
                &quot;admin_id&quot;: 0,
                &quot;user_full_name&quot;: &quot;Test&quot;,
                &quot;resource_id&quot;: 5260730,
                &quot;client_ip&quot;: &quot;[redacted]&quot;,
                &quot;ip_info&quot;: &quot;[redacted]&quot;
            }
        ],
        &quot;start_element&quot;: 0,
        &quot;num_elements&quot;: 1,
        &quot;count&quot;: 1,
        &quot;status&quot;: &quot;OK&quot;
    }
}</code></pre></td>
</tr>
</tbody>
</table>






