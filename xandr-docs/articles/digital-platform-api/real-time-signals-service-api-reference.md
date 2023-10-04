---
Title : Real-Time Signals Service API Reference
Description : <div id="real_time_signals_service_api_reference__note-5441dc2b-4620-4fd8-9193-9d7879d63c5b"
class="note warning note_warning">
Warning: The resources listed on this
page are in Beta status, and are subject to change in the future.
---


# Real-Time Signals Service API Reference





<div id="real_time_signals_service_api_reference__note-5441dc2b-4620-4fd8-9193-9d7879d63c5b"
class="note warning note_warning">

Warning: The resources listed on this
page are in Beta status, and are subject to change in the future.





The Real-Time Signals Service (RTSS) is used to upload ID-to-segment
data or other key:value data used to add segments on bid requests.

<div id="real_time_signals_service_api_reference__section-3fa72a93-d91a-46d1-ab65-34d28bb073c6"
>

## **API Usage**

**Base URL**

<div id="real_time_signals_service_api_reference__p-6f4d6aa9-7dbe-4b93-aae3-5672448ee6aa"
>

The base URL for all RTSS methods is listed below:

``` pre
https://api.appnexus.com/apd-api
```





**Authentication**

Authentication is performed through the <a
href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
class="xref" target="_blank">Digital Platform API authentication
service</a>. The Auth token retrieved from this service must be passed
back to the RTSS service via the `Authorization` header, as outlined on
the Auth Service page.

**HTTP Headers**

The following HTTP headers must be appended to your `apd-api` calls:

<table
id="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58__entry__2"
class="entry"><strong>Required HTTP Headers</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58__entry__2"><code
class="ph codeph">Accept: application/appnexus.apd.vauxhall.v1.0+json</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58__entry__1"><p>POST</p>
<p>DELETE</p></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cec6a47c-1b44-4cb4-915e-21bb90049c58__entry__2"><p><code
class="ph codeph">Accept: application/appnexus.apd.vauxhall.v1.0+json</code></p>
<p><code
class="ph codeph">Content-Type: application/appnexus.apd.vauxhall.v1.0+json</code></p></td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-ca76098e-7383-4e35-ab99-f33b3303b0fa"
>

## **Segment Fields**

The following segment fields are common to the services listed on this
page, and described in the section below:



<table
id="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__1"
class="entry"><strong>Field</strong></th>
<th
id="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__1"><code
class="ph codeph">seg_id</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__2">int</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__3">The
ID of the segment object</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__1"><code
class="ph codeph">seg_val</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__2">int</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__3"><div
id="real_time_signals_service_api_reference__p-9e4e5881-30ab-49bf-8229-045652a247d4"
>
The value associated with the segment for the specified targeting.
Segment values have a number of uses, from targetable features in
campaigns and <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
class="xref" target="_blank">Custom Models</a> to computation inputs for
<a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-smart-leaves.html"
class="xref" target="_blank">Bonsai Smart Leaves</a>. The default value
for targets uploaded without a seg_val is 0.
<div
id="real_time_signals_service_api_reference__note-4fc4f8dd-7336-4363-bd51-752c6944dace"
class="note note_note">
Note: When you specify a <code
class="ph codeph">seg_val</code>, use the format <code
class="ph codeph">seg_id:seg_val:ttl</code>. Failure to do so may result
in an incorrectly set value.

</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__1"><code
class="ph codeph">seg_ttl</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__2">int</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-da7f35b5-2cfc-4ef8-ae03-34814d8cc6af__entry__3"><p>The
"time to live" for the segment association with the specified targeting.
After the TTL duration has passed from the time of upload, the segment
will no longer be associated with the specified targeting. Knowing when
targets will expire can help you avoid uploading unnecessarily large
files. If you need to frequently refresh segments or create new ones,
for example when using OLC movement data derived from mobile app), you
can also use <code class="ph codeph">seg_ttl</code> to specify an
expiration time period and ensure "old" items are deleted after a
specific duration.</p>
<ul>
<li>The default TTL for segments uploaded without a <code
class="ph codeph">seg_ttl</code> value or an <code
class="ph codeph">expiry</code> value is 30 days.</li>
<li>The maximum supported <code class="ph codeph">seg_ttl</code> value
is 365 days.</li>
</ul>
<div
id="real_time_signals_service_api_reference__p-0c65a6a9-807e-471d-a78d-78d9cc1f6fd1"
>
<div
id="real_time_signals_service_api_reference__note-6bbe4a48-f50c-471a-ba6f-6870e9dce24f"
class="note note_note">
Note: seg_ttl versus expiry
<p>The TTL you set does not account for any processing delays. In other
words, your effective TTL is calculated as TTL minus processing delay.
For example, if the file is submitted on 3/1/2022 00:00:00 and
processing starts the day after, then the effective TTL is 29 days and
the segment expires on 3/31 00:00:00. If you need to set segment
expiration with very specific granularity, you should set it using <code
class="ph codeph">expiry</code>. (Note that <code
class="ph codeph">expiry</code> is set for the entire uploaded file, not
at the segment level.)</p>


<p>For the bulk upload format, a <code class="ph codeph">seg_ttl</code>
must be specified as an integer in seconds. For example, 1 day is
represented as <code class="ph codeph">86400</code>.</p>
<p>For individual uploads, use the following syntax to specify segment
TTL durations:</p>
<ul>
<li><code class="ph codeph">"ns", "nano"</code></li>
<li><code class="ph codeph">"us", "µs", "micro"</code></li>
<li><p><code class="ph codeph">"ms", "milli"</code></p></li>
<li><p><code class="ph codeph">"s", "sec"</code></p></li>
<li><p><code class="ph codeph">"m", "min"</code></p></li>
<li><p><code class="ph codeph">"h", "hr", "hour"</code></p></li>
<li><p><code class="ph codeph">"d", "day"</code></p></li>
<li><p><code class="ph codeph">"w", "wk", "week"</code></p></li>
</ul>

Note: Where the segment has a known
<code class="ph codeph">expiry</code> value (inherited from the
file-level <code class="ph codeph">expiry</code> setting) as well as a
<code class="ph codeph">seg_ttl</code> value, RTSS uses whichever value
results in a shorter TTL. In other words, if the explicit TTL value
would result in an earlier expiration, <code
class="ph codeph">seg_ttl</code> will determine the effective TTL.
Otherwise, the <code class="ph codeph">expiry</code> value will take
priority.
<p>For more information about using this parameter, see "Target Expiry"
in <a
href="https://docs.xandr.com/bundle/xandr-api/page/rtss-best-practices.html"
class="xref" target="_blank">RTSS Best Practices</a></p>
</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-287b33f2-dedf-4a41-be12-04f7608fd7c3"
>

## **Geo Targeting**

**REST API
(<a href="http://openlocationcode.com/" class="xref" target="_blank">Open
Location Code</a> - OLC)**



<table
id="real_time_signals_service_api_reference__table-ec1565e1-5c11-4fa5-a2be-01dcad6db3a6"
class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Method</strong></td>
<td class="entry"><strong>Endpoint</strong></td>
<td class="entry"><strong>Description</strong></td>
</tr>
<tr class="even row">
<td class="entry">GET</td>
<td class="entry"><pre
id="real_time_signals_service_api_reference__pre-51e814c9-fec7-4de9-b1c5-533d15eaa9ad"
class="pre"><code>/members/{:member_id}/olcs/{:olc}</code></pre></td>
<td class="entry">Find segment/value pairs associated with an individual
OLC code</td>
</tr>
<tr class="odd row">
<td class="entry">POST</td>
<td class="entry"><pre
id="real_time_signals_service_api_reference__pre-00978247-a24e-4866-b213-da002402f374"
class="pre"><code>/members/{:member_id}/olcs/{:olc}</code></pre></td>
<td class="entry">Add or replace segment/value pair associated with an
individual OLC code</td>
</tr>
<tr class="even row">
<td class="entry">DELETE</td>
<td class="entry"><pre
id="real_time_signals_service_api_reference__pre-b1ebace2-0ab7-4d1d-b03f-06073e592f4a"
class="pre"><code>/members/{:member_id}/olcs/{:olc}</code></pre></td>
<td class="entry">Removes specified segments for a given OLC code</td>
</tr>
</tbody>
</table>

**Parameters**

<table
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__1"><code
class="ph codeph">olc</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__3">OLC
code</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__6"><code
class="ph codeph">58GR22WM+PW</code></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__1"><code
class="ph codeph">segment_list</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__2">array
of ints</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__3">A
list of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__6"><pre
id="real_time_signals_service_api_reference__pre-6bedc257-1cea-4c0e-bd88-a2910af4adc5"
class="pre"><code>[123,456]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__1"><code
class="ph codeph">segval_list</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__5">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-eadb0ce5-6c1f-4b9d-8f8f-b2293709beca__entry__6"><pre
id="real_time_signals_service_api_reference__pre-cd12445d-9275-4820-9e5e-ea141387b847"
class="pre"><code>[{&quot;seg_id&quot;:123,&quot;seg_ttl&quot;:&quot;25s&quot;,&quot;seg_val&quot;:345}]</code></pre></td>
</tr>
</tbody>
</table>

**Response Fields**

<table
id="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-450b9893-bb19-496d-9b33-adc832453e41__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-70391f59-ac35-4aa5-8673-24a9f8a04948"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w&quot;,
      &quot;seg_val&quot;: 5050
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-2c2fa696-5e7c-45d2-a2d0-0b4896ccc6fc__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__note-57ee6dbe-8661-429b-bf99-6c46d6140262"


Note: Although any valid OLC code will
be accepted, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/rtss-best-practices.html"
class="xref" target="_blank">RTSS Best Practices</a> page for more
detailed information.



<div id="real_time_signals_service_api_reference__section-cf7fab9e-b45c-4955-b301-92b435633077"
>

## **Geo Administrative Targeting**

**REST API (Country-Regions)**



<table
id="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4"
class="table">
<colgroup>
<col style="width: 13%" />
<col style="width: 63%" />
<col style="width: 23%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__2"><pre
id="real_time_signals_service_api_reference__pre-f994cee1-9360-49e9-9910-1d045ec272f0"
class="pre"><code>/members/{:member_id}/countries/{:country}/regions/{:region}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__3">Find
segment/value pairs associated with a region of a country</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__2"><pre
id="real_time_signals_service_api_reference__pre-c6bd6ce6-c517-4c7b-a093-885b907ef1a7"
class="pre"><code>/members/{:member_id}/countries/{:country}/regions/{:region}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__3">Add
or replace segment/value pair associated with a region of country</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__2"><pre
id="real_time_signals_service_api_reference__pre-90cc846a-11aa-4bb3-9783-2eb28ccd8b43"
class="pre"><code>/members/{:member_id}/countries/{:country}/regions/{:region}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-d3e98996-13c9-410b-917a-372b60f5d0b4__entry__3">Removes
specified segments for a region of a country</td>
</tr>
</tbody>
</table>

**Parameters**

<table
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__1"><code
class="ph codeph">country</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__3">Unique
country code</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__6"><code
class="ph codeph">US</code></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__1"><code
class="ph codeph">region</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__3">Region
name/code</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__6"><code
class="ph codeph">NJ</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__1"><code
class="ph codeph">segval_list</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__5">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-0c2cc2d1-4d6c-4c29-8705-67cc653ab30e"
class="pre codeblock"><code>[
  {
    &quot;seg_id&quot;: 123,
    &quot;seg_ttl&quot;: &quot;25s&quot;,
    &quot;seg_val&quot;: 345
  }
]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__1"><code
class="ph codeph">segment_list</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__2">Array
of Segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__3">List
of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-03611773-d43c-49bb-bc79-2a1aea70e70d__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-561e95d1-dfbe-40ac-82cc-69b2f33f2d97"
class="pre codeblock"><code>[
  123,
  456
]</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5dbb5cc9-f09f-45bb-a584-00e40016da3f__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-b3a4d6b0-6fb6-470e-82e3-db7db0f90c08"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 666,
      &quot;seg_val&quot;: 0
    } 
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__1"><code
class="ph codeph">200</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__1"><code
class="ph codeph">204</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__1"><code
class="ph codeph">207</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-91b3bd5d-ff68-4481-bb5a-ec21db52d210__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-73d6d6b0-b8eb-4249-bc7c-165062e61ed4"
>

## **REST API (Postal Codes)**

<div id="real_time_signals_service_api_reference__p-c71c273a-4085-4c9b-80fd-1b7360aed37a"
>

<div id="real_time_signals_service_api_reference__note-a2220acf-b804-4658-a230-7b0cdac0630e"


Note: This RTSS functionality is no
longer actively supported and is slated to be deprecated. You may be
able to get the same results from other Xandr products. Please contact
your account manager for assistance.







<table
id="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__2"><pre
id="real_time_signals_service_api_reference__pre-66581c10-a131-43ff-94ac-00fe3b21e2c2"
class="pre"><code>/members/{:member_id}/postal-codes/{:pcode}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__3">Find
segment/value pairs associated with an individual postal code</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__2"><pre
id="real_time_signals_service_api_reference__pre-c4849c5a-097b-4bb3-a01e-05e5f20ab2ad"
class="pre"><code>/members/{:member_id}/postal-codes/{:pcode}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__3">Add
or replace segment/value pair associated with an individual postal
code</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__2"><pre
id="real_time_signals_service_api_reference__pre-83f068ac-6dba-47e7-9ee0-aa7e7d32a43b"
class="pre"><code>/members/{:member_id}/postal-codes/{:pcode}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-b0227b7e-c799-41cc-b90f-ef2b4040df53__entry__3">Removes
specified segments for a given postal code</td>
</tr>
</tbody>
</table>

**Parameters**

<table
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__1"><code
class="ph codeph">pcode</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__3">Postal
Code</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__4">URL
path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__6"><code
class="ph codeph">07302</code></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__1"><code
class="ph codeph">segval_list</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__5">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-91051aee-bf00-4d52-8be5-bedfb229654b"
class="pre codeblock"><code>[
  {
    &quot;seg_id&quot;: 123,
    &quot;seg_ttl&quot;: &quot;25s&quot;,
    &quot;seg_val&quot;: 345
  }
]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__1"><code
class="ph codeph">segment_list</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__2">Array
of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__3">A
list of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7316644c-ea2e-4f19-94a1-1e79ec722f77__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-da34b176-7a8b-45ed-aa03-4f31923a834d"
class="pre codeblock"><code>[
  123,
  456
]</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-ccbe67e1-88c7-4e71-8777-021c66da8d04__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-1d09ad7b-39a0-4e52-a147-389827532523"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 626,
      &quot;seg_ttl&quot;: &quot;2d3h&quot;,
      &quot;seg_val&quot;: 0
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__1"><code
class="ph codeph">200</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__1"><code
class="ph codeph">204</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__1"><code
class="ph codeph">207</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7ac0595a-0cff-47b2-9204-886a48e724ca__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-f6312415-f463-4962-8b21-83a7e68678f1"
>

## **IP Targeting**

**REST API (IP Ranges)**



<table
id="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-1df54062-e9c3-41eb-b124-a9c2fc9071b1"
class="pre codeblock"><code>/members/{:member_id}/ip-ranges/{:ip_begin}/{:ip_end}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__3">Find
segment/value pairs associated with an IP Range</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-e96155fb-1274-44cf-b28d-0bc57015ea10"
class="pre codeblock"><code>/members/{:member_id}/ip-ranges/{:ip_begin}/{:ip_end}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__3">Add
or replace segment/value pair associated with an IP range</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-bcff3653-3e2e-41db-87eb-d7119ac9e503"
class="pre codeblock"><code>/members/{:member_id}/ip-ranges/{:ip_begin}/{:ip_end}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-593773e8-7768-4638-b4c8-8f0773960fd9__entry__3">Removes
specified segments for an IP Range</td>
</tr>
</tbody>
</table>

<div class="bodydiv">

**Parameters**

<table
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__1">member_id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__3">member
id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__6">123</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__1">ip_begin</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__3">The
first IP in a range</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__6">192.168.6.235</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__1">ip_end</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__3">The
last IP in a range</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__6">192.168.6.255</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__1">segval_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__5">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-528f099d-e467-49f1-9f87-23ea57f49b57"
class="pre codeblock"><code>[
  {
    &quot;seg_id&quot;: 123,
    &quot;seg_ttl&quot;: &quot;25s&quot;,
    &quot;seg_val&quot;: 345
  }
]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__1">segment_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__2">Array
of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__3">A
list of Segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-38f9a3d6-899d-4622-9a38-ebda9f7a65d0__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-70080807-6b4d-4d61-b6b5-22c85d4e75e6"
class="pre codeblock"><code>[
  123,
  456
]</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__1">segments</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5cab6351-66a7-4bce-86f5-727f39bd29cc__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-b4eee529-9943-4870-8973-8ee5b7e974be"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w2d&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 626,
      &quot;seg_ttl&quot;: &quot;3w2d30m&quot;,
      &quot;seg_val&quot;: 0
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

<table
id="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-fb933b3c-3c92-4aaa-ab3f-5cf1902aedc4__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>



<div id="real_time_signals_service_api_reference__note-d5f95957-6823-440a-b49e-e15a0a3e3329"


Note: Take care when adding or deleting
large IP ranges. If a large IP range is added, and a subset of that
range is then deleted, the original IP range may not be found in the
system.



<div id="real_time_signals_service_api_reference__section-40fa7e75-5421-4b73-82c4-237a71b9ae0a"
>

## **REST API (IP Address)**

<table
id="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-1645dd6c-816b-4e82-953c-fb801d6f2f5e"
class="pre codeblock"><code>/members/{:member_id}/ips/{:ip}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__3">Find
segment/value pairs associated with an individual IP</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-2477dc4c-b002-4adf-be7b-eed92b0935cd"
class="pre codeblock"><code>/members/{:member_id}/ips/{:ip}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__3">Add
or replace segment/value pair associated with an individual IP</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-eff6ccb1-71a1-4c75-be14-041261765063"
class="pre codeblock"><code>/members/{:member_id}/ips/{:ip}</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-006dbb86-9af1-48be-9c62-25734e8a112f__entry__3">Removes
specified segments for an individual IP</td>
</tr>
</tbody>
</table>



<div class="bodydiv">

**Parameters**

<table
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__1">member_id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__1">ip</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__3">An
individual IP address</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__6"><code
class="ph codeph">192.168.0.20</code></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__1">segval_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__5">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-0a9744a9-1374-4b09-82bb-ddd7c34d4d50"
class="pre codeblock"><code>[
  {
    &quot;seg_id&quot;: 123,
    &quot;seg_ttl&quot;: &quot;25s&quot;,
    &quot;seg_val&quot;: 345
  }
]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__1">segment_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__2">Array
of Segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__3">A
list of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-5f763c32-5796-43f7-9ded-fef94b87689b__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-f20fef97-085e-49d2-b6da-b400c730ef57"
class="pre codeblock"><code>[
  123,
  456
]</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__1"
class="entry">Name</th>
<th
id="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__2"
class="entry">Data Type</th>
<th
id="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__3"
class="entry">Description</th>
<th
id="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__4"
class="entry">Returned On</th>
<th
id="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__5"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__1">segments</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-aa8b13e9-f984-4eb6-be4b-428417ad77aa__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-ff4504a4-7feb-4819-a86e-29a74848c0e5"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 626,
      &quot;seg_ttl&quot;: &quot;1m2d30m&quot;,
      &quot;seg_val&quot;: 0
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

<table
id="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-9aa4c6c2-4375-48e4-aaa8-846a0192f6ac__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-39b8d829-8b11-46a0-9e9e-cd04a718cc0f"
>

## URL Targeting

**REST API (URL Components)**

Target URL components with "OR" logic, with up to 3 paths.

<table
id="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__1"
class="entry">Method</th>
<th
id="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__2"
class="entry">Endpoint</th>
<th
id="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__3"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__2">/members/{:member_id}/urls/components</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__3">Find
segment/value pairs targetable by URL Components</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-0cfbf064-cba7-4aaa-9676-204e974841ec"
class="pre codeblock"><code>/members/{:member_id}/urls/components</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__3">Add
or replace segment/value pair targetable by URL Components</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-054abfc7-a66e-4b68-86e7-238bd96d3d29"
class="pre codeblock"><code>/members/{:member_id}/urls/components</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0239df5d-5524-4f19-b05e-4968a13f875d__entry__3">Removes
specified segments for a URL from the target list of the URL
Components</td>
</tr>
</tbody>
</table>



**Parameters**

<table
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__1"
class="entry">Name</th>
<th
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__2"
class="entry">Data Type</th>
<th
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__3"
class="entry">Description</th>
<th
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__4"
class="entry">Parameter Type</th>
<th
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__5"
class="entry">Required On</th>
<th
id="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__6"
class="entry">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__1">member_id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__5">POST,
DELETE, GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__1">path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__3"><p>Partial
URL</p>
<ul>
<li>A partial URL should contain only secondary and top level domains of
the host section of the authority URL part, and up to 3 segments of the
path URL part.</li>
<li>A partial URL may only contain path components</li>
<li>Partial URLs support "OR" matching on paths</li>
</ul></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__4">Query
string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__5">POST,
DELETE, GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__6"><div
id="real_time_signals_service_api_reference__p-7e8a9b93-7cff-4016-81f6-87e3cff54408"
>
<pre
id="real_time_signals_service_api_reference__codeblock-103e8200-1866-4683-8545-93f1ec2165be"
class="pre codeblock"><code>mysampledomain.
mysampledomain.com
mysampledomain.com/en
mysampledomain.com/en/buyers
mysampledomain.com/en/buyers/mysampledomain-test
/en
/en/buyers
/en/buyers/mysampledomain-test</code></pre>
<a href="http://mysampledomain.com/en" class="xref"
target="_blank"><code class="ph codeph">mysampledomain.com/en</code></a>
will match both:
<ul>
<li><a href="http://mysampledomain.com/en" class="xref"
target="_blank"><code
class="ph codeph">mysampledomain.com/en</code></a></li>
<li><a href="http://mysampledomain.com/en/buyers" class="xref"
target="_blank"><code
class="ph codeph">mysampledomain.com/en/buyers</code></a></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__1">segval_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__5">POST,
DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-f4a939a6-80cd-4deb-b275-089b8c089c8a"
class="pre codeblock"><code>[
  {
    &quot;seg_id&quot;: 123,
    &quot;seg_ttl&quot;: &quot;30m&quot;,
    &quot;seg_val&quot;: 345
  }
]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__1">segment_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__2">Array
of Segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__3">A
list of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-0ca94701-83d4-466f-96ac-a95a48d886b9__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-8dc5171d-96bc-4f42-8efb-c3a7f10ab485"
class="pre codeblock"><code>[
  123,
  456
]</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__1">segments</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-425d3fb6-dec4-49cd-acb1-2a2f4227fc46__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-b099995a-0f6d-42b6-a170-e08edf706b61"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 626,
      &quot;seg_ttl&quot;: &quot;2d20m&quot;,
      &quot;seg_val&quot;: 0
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e0199f03-1534-4429-b048-0cf0c5d1d1fe__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>



<div id="real_time_signals_service_api_reference__section-274578af-3b1c-4ecc-91e0-46f543045dd5"
>

## **REST API (URL Reference)**

Target Full URL with exact matching.



<table
id="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-4fc5e3ab-349d-497a-9c9b-c13bb013e55d"
class="pre codeblock"><code>/members/{:member_id}/urls/reference</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__3">Find
segment/value pairs targetable by URL</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-1c66b842-9707-468b-98d3-a67046007f2c"
class="pre codeblock"><code>/members/{:member_id}/urls/reference</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__3">Add
or replace segment/value pair targetable by URL</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-6da1adeb-9749-46a4-960a-aa4d05556ad0"
class="pre codeblock"><code>/members/{:member_id}/urls/reference</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-7e4cf6c2-2e82-4e2e-b31a-f91231833419__entry__3">Removes
specified segments for a URL from the target list of the URL</td>
</tr>
</tbody>
</table>

**Parameters**

<table
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__1">member_id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__5">POST,
DELETE, GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__1">path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__3"><p>Full
URL</p>
<ul>
<li>URL should contain only secondary and top level domains of the host
section of the authority URL part, and full path that will be matched
exactly</li>
</ul></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__4">Query
Parameter</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__5">POST,
DELETE, GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__6"><pre
id="real_time_signals_service_api_reference__pre-b256adcf-c1c8-4dbd-bed1-970d31144d7b"
class="pre"><code>mysampledomain.com/as/many/paths/as/i/want</code></pre>
<p>URLs will be matched exactly as they have been uploaded.</p></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__1">segval_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__2">array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__4">JSON
body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__5">POST,
DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__6"><pre
id="real_time_signals_service_api_reference__pre-c4de438b-dbf7-413d-919a-138ed1fcdde8"
class="pre"><code>[{&quot;seg_id&quot;:123,&quot;seg_ttl&quot;:&quot;30m&quot;,&quot;seg_val&quot;:345}]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__1">segment_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__2">Array
of Segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__3">A
list of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__5">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6707ecab-781e-4b21-bd46-7c97f838b22a__entry__6"><pre
id="real_time_signals_service_api_reference__pre-ebaaf183-4da7-45b7-9ac5-2015b392a0fa"
class="pre"><code>[123,456]</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__1">segments</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-1c2d1ff3-1fda-45cf-bd67-90f4223dcc20__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-6ba8bcee-2458-4984-a386-bcf6faa79613"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;1w&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 626,
      &quot;seg_ttl&quot;: &quot;2d20m&quot;,
      &quot;seg_val&quot;: 0
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-bddb5ec0-9405-44a9-98cd-29e737759a37__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-31275da7-a54f-4a6b-9940-acb5396b80ba"
>

## **HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__4">X-AuditID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cc435669-9ff3-4c7f-b949-2ef9344a3eea__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__note-e1691873-0ef0-4cb5-b706-2dc4f45144c1"


Note: Uploaded IDs are converted to
lower-case values when stored. Matching is not case-sensitive.





<div id="real_time_signals_service_api_reference__section-81515053-25e7-4195-9196-d8241ede41aa"
>

## **Events - Instantly Activated Segments**

<div id="real_time_signals_service_api_reference__note-bede1539-1145-4f19-bd90-fde1a2f4b9f8"


Note: This RTSS functionality is no
longer actively supported and is slated to be deprecated. You may be
able to get the same results from other Xandr products. Please contact
your account manager for assistance.





<div id="real_time_signals_service_api_reference__p-1647c687-4a5d-41e8-a58f-cf8bf9988e08"
>

Events are segments which could become active instantly across all data
centers, and expire within a specified period. **Events are not
associated with any targeting.**

<div id="real_time_signals_service_api_reference__note-915fe01b-0c6d-4198-a6dc-d1930a4dd54f"


Note: Given the resources required to
enable Events, the following limitations on the service are in place

1.  The Number of simultaneously active events per member is: **200**
2.  Events cannot be bulk loaded, though multiple can be activated per
    single API call
3.  Events must have a TTL
4.  Maximum TTL is: **1 hour**





<div id="real_time_signals_service_api_reference__section-38080a07-0cf3-4e77-a376-7378d36253cd"
>

## **REST API (Events)**

<table
id="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-a6684dc5-f2f8-42dc-a93c-0d0419862f2d"
class="pre codeblock"><code>/members/{:member_id}/events</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__3">Gets
information on active Events</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-d2245119-08f2-4971-9e92-fd8af50f18fe"
class="pre codeblock"><code>/members/{:member_id}/events</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__3">Adds
new or replaces existing segment(s), creating Events with TTL</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__1">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-32d0494f-cb0f-4978-bd3a-fa3f2ad79046"
class="pre codeblock"><code>/members/{:member_id}/events</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-f2b5d23d-6fc9-4523-ab54-a78d7b7917d1__entry__3">Removes
specified segment(s), immediately deactivating Events</td>
</tr>
</tbody>
</table>



**Parameters**

<table
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__1">member_id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__1">segval_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__2">Array
of Objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__3">A
list of segments with associated values</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__4">JSON
Body</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__5">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-eeea0706-4c1c-4e51-aa09-cc388b78524d"
class="pre codeblock"><code>[
  {
    &quot;seg_id&quot;: 123,
    &quot;seg_ttl&quot;: &quot;20m&quot;,
    &quot;seg_val&quot;: 345
  }
]</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__1">segment_list</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__2">Array
of Segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__3">List
of segment IDs</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__4">Query
string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__5">GET,
DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-6300b321-02c5-4b37-a97f-e95c7a6731d1__entry__6"><pre
id="real_time_signals_service_api_reference__codeblock-91692381-d0c3-4e09-8e6b-d5a973b10566"
class="pre codeblock"><code>https://api.appnexus.com/apd-api/members/958/events?segment_list=123,345</code></pre></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__1">segments</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__2">Array
of objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__3">An
array of segments (id:value pairs)</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-cee2fea3-2e4c-4044-82b5-336446c46afe__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-e05077e6-9519-43ea-ae4e-60a5de5c800c"
class="pre codeblock"><code>{
  &quot;segments&quot;: [
    {
      &quot;seg_id&quot;: 555,
      &quot;seg_ttl&quot;: &quot;30m&quot;,
      &quot;seg_val&quot;: 5050
    },
    {
      &quot;seg_id&quot;: 626,
      &quot;seg_ttl&quot;: &quot;1wk&quot;,
      &quot;seg_val&quot;: 0
    }
  ]
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__5">Reference
Audit ID</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__1">204</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__2">DELETE</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__5">Reference
Audit ID</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__1">207</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__2">DELETE,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__3">Partial
with Errors</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-a1490d29-f2e6-400c-9b79-17eba7c7ec18__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__section-a0f68283-b728-48b9-bda1-c1d24514728b"
>

## **Uploads**

**REST API (Bulk Upload)**

<div id="real_time_signals_service_api_reference__p-16b56e1c-599a-4aee-b866-eb3ce315f5a8"
>

The maximum size for a single upload may not exceed 256 MB. Please be
sure to compress your files using GZIP before uploading to RTSS.

<table
id="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__1"
class="entry"><strong>Method</strong></th>
<th
id="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__2"
class="entry"><strong>Endpoint</strong></th>
<th
id="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__3"
class="entry"><strong>Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__1">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-7fffe0c9-80e0-43c9-a3da-985a4ac168ef"
class="pre codeblock"><code>/members/{:member_id}/uploads</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__3">Get
a list of active uploads</td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__1">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__2"><pre
id="real_time_signals_service_api_reference__codeblock-ef4d08fd-7e8d-4a92-9786-9182056c94a1"
class="pre codeblock"><code>/members/{:member_id}/uploads</code></pre></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-73f6e3c6-ef3b-4c10-9762-bd3e2d33155b__entry__3">Upload
a CSV file (can be GZIP compressed)</td>
</tr>
</tbody>
</table>





**Parameters**

<table
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__4"
class="entry"><strong>Parameter Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__5"
class="entry"><strong>Required On</strong></th>
<th
id="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__6"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__1">member_id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__2">long</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__3">Member
ID</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__4">URL
Path</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__5">All
Methods</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__6"><code
class="ph codeph">123</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__1">id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__3">UUID
of Accepted File Job</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__4">Query
string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__5"></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__6"><code
class="ph codeph">102951</code></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__1">Content-Type</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__3">The
Content-Type HTTP Header</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__4">HTTP
Header</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__5"><code
class="ph codeph">POST</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__6"><code
class="ph codeph">'Content-Type: multipart/form-data'</code></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__1">file</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__2">file</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__3">The
data file to be processed. Max file size of 256 MB</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__4">Form
Data</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__5"><code
class="ph codeph">POST</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__6">See
"File Format and Examples" section, below</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__1">expiry</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__2">date</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__3">The
fixed time and date when the segments in the file should expire, taking
into account any processing time required to meet the deadline. For more
information about using this parameter, see "Target Expiry" in <a
href="https://docs.xandr.com/bundle/xandr-api/page/rtss-best-practices.html"
class="xref" target="_blank">RTSS Best Practices</a>.</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__4"><a
href="https://datatracker.ietf.org/doc/html/rfc3339#section-5.6"
class="xref" target="_blank">RFC 339</a></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__5"></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-90a5e4da-78c6-412b-8773-ed4e6de70f0a__entry__6"><code
class="ph codeph">expiry=2022-03-01T17:32:28Z</code></td>
</tr>
</tbody>
</table>

**Response**

<table
id="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__1"
class="entry"><strong>Name</strong></th>
<th
id="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__2"
class="entry"><strong>Data Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__3"
class="entry"><strong>Description</strong></th>
<th
id="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__4"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__5"
class="entry"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__1">uploads</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__2">Array
of Objects</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__3">An
array of upload infos</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__4">GET</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-8f1affc8-60a4-4e02-b15b-7b12693a269c"
class="pre codeblock"><code>{
  &quot;uploads&quot;: [
    {
      &quot;added&quot;: &quot;string&quot;,
      &quot;id&quot;: &quot;string&quot;,
      &quot;member_id&quot;: 0,
      &quot;message&quot;: &quot;string&quot;,
      &quot;rows_failed&quot;: 0,
      &quot;rows_total&quot;: 0,
      &quot;started&quot;: &quot;string&quot;,
      &quot;status&quot;: &quot;string&quot;,
      &quot;stopped&quot;: &quot;string&quot;
    }
  ]
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__1">id</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__3">uuid
of accepted file which will be processed asynchronously</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__4">POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-66e6c691-d7e2-4236-844b-7e1f5af6ef65__entry__5"><pre
id="real_time_signals_service_api_reference__codeblock-be1c8b70-08bc-407a-9dbe-b08a75ddf2b7"
class="pre codeblock"><code>{
  &quot;id&quot;: &quot;a04d88c3-8cc7-11e6-868d-7cd30ab7f6e2&quot;
}</code></pre></td>
</tr>
</tbody>
</table>

**HTTP Status Codes**

<table
id="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__1"
class="entry"><strong>Status Code</strong></th>
<th
id="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__2"
class="entry"><strong>Returned On</strong></th>
<th
id="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__3"
class="entry"><strong>Reason</strong></th>
<th
id="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__4"
class="entry"><strong>Headers</strong></th>
<th
id="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__5"
class="entry"><strong>Header Description</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__1">200</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__2">GET,
POST</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__3">Success</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__4"><code
class="ph codeph">X-AuditID</code></td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-e1d07006-824a-4a39-aaf9-566960cb1fa7__entry__5">Reference
Audit ID</td>
</tr>
</tbody>
</table>

**File Format and Upload Examples**

**File Format**

<table
id="real_time_signals_service_api_reference__table-98236322-e5b9-4ce8-8778-f8c339bbbf73"
class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong><code
class="ph codeph">keytype</code></strong></td>
<td class="entry">separator</td>
<td class="entry"><strong><code
class="ph codeph">key</code></strong></td>
<td class="entry">separator</td>
<td class="entry"><strong><code
class="ph codeph">action</code></strong></td>
<td class="entry">separator</td>
<td class="entry"><strong><code
class="ph codeph">segment</code></strong></td>
<td class="entry">separator</td>
<td class="entry"><strong><code
class="ph codeph">segment</code></strong></td>
</tr>
</tbody>
</table>

- **Columns**: `keytype`, `key`, `action`, `segment`
- **Separators**: comma \``,` or tab `0x09` \``\t`\` (csv or tsv files)
- **Line separator**: `0x0A` \``\n`\`
- Representation of each column must be less or equal to **`32,767`
  byt`` `keytype ``\` and \``key`\` Columns**

<table
id="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1"
class="entry"><strong><code class="ph codeph">keytype</code>
ID</strong></th>
<th
id="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2"
class="entry"><strong>Type</strong></th>
<th
id="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"
class="entry"><strong><code class="ph codeph">key</code>
Examples</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1">0</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"><ul>
<li>IP range: <code class="ph codeph">"127.0.0.1,127.0.0.10"</code></li>
<li>Single IP address: <code class="ph codeph">"127.0.0.1"</code></li>
</ul>
<p><em>Should be quoted.</em></p></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1">1</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"><p>Country:Region</p>
<ul>
<li><code class="ph codeph">"US"</code></li>
<li><code class="ph codeph">"US:KY"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1">2</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"><p>Geo
hashcode in OLC format:</p>
<ul>
<li><a href="http://openlocationcode.com/" class="xref"
target="_blank">OLC spec</a></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1">3</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"><div
id="real_time_signals_service_api_reference__p-9c3b062a-34fb-455f-8de3-8893de5d146e"
>
Postal code
<div
id="real_time_signals_service_api_reference__note-19db303a-cb5b-4bdd-be3b-d747d3890c2c"
class="note note_note">
Note: Postal codes targets will be
deprecated soon


<ul>
<li><code class="ph codeph">"11235"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1">4</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"><p>Partial
URL (up to 3 paths)</p>
<ul>
<li><code class="ph codeph">"</code><a href="http://mysampledomain.com/"
class="xref" target="_blank"><code
class="ph codeph">mysampledomain.com</code></a>"</li>
<li><code class="ph codeph">"</code><a
href="http://mysampledomain.com/en/buyers" class="xref"
target="_blank"><code
class="ph codeph">mysampledomain.com/en/buyers</code></a>"</li>
<li><code class="ph codeph">"</code><a
href="http://mysampledomain.com/en/buyers/page" class="xref"
target="_blank"><code
class="ph codeph">mysampledomain.com/en/buyers/page</code></a>"</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__1">6</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__2">string</td>
<td class="entry"
headers="real_time_signals_service_api_reference__table-166156dc-e380-4d4e-99ef-af250d534a07__entry__3"><p>Full
URL</p>
<ul>
<li><code class="ph codeph">"</code><a
href="http://mysampledomain.com/many/paths/are/supported" class="xref"
target="_blank"><code
class="ph codeph">mysampledomain.com/many/paths/are/supported</code></a><code
class="ph codeph">"</code></li>
</ul></td>
</tr>
</tbody>
</table>

<div class="bodydiv">

**\`action\` Column**

<table
id="real_time_signals_service_api_reference__table-34a0465d-47f9-42c8-a5cd-19dc5f0c1aa6"
class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">0</td>
<td class="entry">Add to segment</td>
</tr>
<tr class="even row">
<td class="entry">1</td>
<td class="entry">Remove from segment</td>
</tr>
</tbody>
</table>

<div id="real_time_signals_service_api_reference__RealTimeSignalsServiceAPIReference--segment-Column"
>

## \`segment\` Column

The segment column can contain:

- `segment_id;segment_id`

- `segment_id:segment_value`

- `segment_id:segment_value:segment_ttl`

When only the `segment_id` is provided, RTSS will assume that segment
value is \``0`\`, and segment a TTL of \`default\` (180 days)

`segment_ttl` must be an integer, indicating TTL duration in **seconds**
only.





**Example CSV file**

<div id="real_time_signals_service_api_reference__p-2d2b4652-a214-4206-b8ac-b4d7fd0116e7"
>

The header row in the sample file below can be excluded. The bulk upload
service will accept files with or without a header.

``` pre
keytype,key,action,segment
0,"63.148.81.22,63.148.81.22",0,1000
1,"US,US:KY",0,1001
1,"US,US:NJ",0,1001:22
2,"8FGQGG00+",0,1002
4,"mysampledomain.",0,1008:10
4,"/en/buyers",0,1004;1005;1006
4,"mysampledomain.com/en",0,1008:25:86400
5,123e4567-e89b-12d3-a456-426655440000,0,1005
6,"mysampledomain.com/many/paths/exact/match",0,1009
```



**Example POST Method**

**POST Request using cURL**

``` pre
curl -X POST --header 'Content-Type: multipart/form-data' \
-F file=@"member-1-test.csv.gz"  'https://api.appnexus.com/apd-api/members/1/uploads'
```

**JSON Response**

Server responds with the job ID

``` pre
{ "id": "a04d88c3-8cc7-11e6-868d-7cd30ab7f6e2" }
```

**Example GET Method**

**GET Request using cURL**

``` pre
curl https://api.appnexus.com/apd-api/members/1/uploads?id=a04d88c3-8cc7-11e6-868d-7cd30ab7f6e2
```

**JSON Response**

<div id="real_time_signals_service_api_reference__RealTimeSignalsServiceAPIReference-JSONResponse"
>

<div id="real_time_signals_service_api_reference__p-40158e83-a9b6-49bb-86b4-f06514679e18"
>

Server responds with information about the job ID specified in the Query
Parameters

``` pre
{
    "uploads": [
        {
            "added": "2016-10-07T19:52:49Z",
            "id": "a04d88c3-8cc7-11e6-868d-7cd30ab7f6e2",
            "member_id": 1,
            "rows_total": 6, // total number of processed lines in the file
            "rows_failed": 1, // total number of failed lines in the file
            "records_total": 8, // total number of processed "segment records" in the file                          
                                // "records_total" > "rows_total" ==> there were several segments on at least one line in the file
            "records_failed": 2, // total number of failed "segment records" in the file (could be many on a single line)
            "message": "5: bad ip range",
            "started": "2016-10-07T19:52:49Z",
            "status": "completed_with_errors",
            "stopped": "2016-10-07T19:52:49Z"
        }
    ]
}
```





<div id="real_time_signals_service_api_reference__p-f814b31e-1c8e-4308-b5e1-740cedffd56f"
>

<div id="real_time_signals_service_api_reference__note-90dfb480-2d32-4b90-b03c-2739c99b1cbe"


Note:

- The \``rows_failed`\` field indicates how many lines failed to
  process.
- The \``message`\` field is an error description for failed lines. It
  returns a maximum of 100 errors.





<div id="real_time_signals_service_api_reference__section-f0795e1f-3b04-4190-ac70-67fdd1285179"
>

## **Best Upload Practices**

Please see <a
href="https://docs.xandr.com/csh?context=166638255&amp;topicname=rtss-best-practices.html#RTSSBestPractices-BulkUploads"
class="xref" target="_blank">RTSS Best Practices</a> for more
information about Bulk Uploads.






