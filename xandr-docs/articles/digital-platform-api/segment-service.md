---
Title : Segment Service
Description : The Segment Service lets you create segment IDs, which are then used to
ms.date: 10/28/2023
ms.custom: digital-platform-api
create segment pixels for placement on inventory pages. If you are
---


# Segment Service



The Segment Service lets you create segment IDs, which are then used to
create segment pixels for placement on inventory pages. If you are
working with third-party data providers through the Xandr platform, it
will show you a list of segments for those providers.

- Segments are associated with members and can optionally be associated
  with a particular advertiser.
- All segment data will be stored in the server-side cookie store and
  passed to the bidder associated with the owning member on every bid
  request.
- An advertiser association is for reference and use in our Console user
  interface.





<b>Note:</b> The shared "birthday cookie"
segment has an ID of `1` and is available to all platform members.





class="note tip note_tip">

<b>Tip:</b> Once you have a segment ID, the
basic format of a segment pixel is
`<img src="media/seg?add=123" width="1" height="1"/>`,
where `123`

is the segment ID. For more information about segment pixels, see
"Working with Segments" in the UI documentation.





<b>Note:</b> Be sure to wait approximately 20
minutes before trying to add users to any newly created segments to
allow these segments to be propagated to all servers. As a best
practice, try to minimize the creation of new segments, re-uses existing
segments where possible or use segment `"values"` to further sub-divide
users within existing segments. These practices will ensure successful
user uploads to segments.





## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-justify colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-justify colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-justify colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment?member_id=MEMBER_ID" class="xref"
target="_blank">https://api.appnexus.com/segment?member_id=MEMBER_ID</a><a
href="https://api.appnexus.com/segment" class="xref"
target="_blank">https://api.appnexus.com/segment</a> (segment JSON)</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new segment.</td>
</tr>
<tr class="even row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/segment?advertiser_id=ADVERTISER_ID</a><a
href="https://api.appnexus.com/segment?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/segment?advertiser_code=ADVERTISER_CODE</a>
(segment JSON)</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new advertiser segment.</td>
</tr>
<tr class="odd row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/segment?id=SEGMENT_ID" class="xref"
target="_blank">https://api.appnexus.com/segment?id=SEGMENT_ID</a></p>
<p><a href="https://api.appnexus.com/segment?code=SEGMENT_CODE"
class="xref"
target="_blank">https://api.appnexus.com/segment?code=SEGMENT_CODE</a></p>
<p>(segment JSON)</p></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing segment.</td>
</tr>
<tr class="even row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/segment?id=SEGMENT_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/segment?id=SEGMENT_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/segment?code=SEGMENT_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/segment?code=SEGMENT_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p>

(segment JSON)
class="note tip note_tip">
<b>Tip:</b> To change a segment from
advertiser-owned to network-owned. Make a PUT call, passing the segment
ID and member ID ithe query string and setting <code
class="ph codeph">advertiser_id</code> to <code
class="ph codeph">null</code> in the JSON file. See <a
href="segment-service.md#SegmentService-Examples"
class="xref" target="_blank">Examples</a> for more information.

</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing advertiser segment.</td>
</tr>
<tr class="odd row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment" class="xref"
target="_blank">https://api.appnexus.com/segment</a></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all segments.</td>
</tr>
<tr class="even row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/segment?id=1,2,3</a></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple segments by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/segment?id=SEGMENT_ID" class="xref"
target="_blank">https://api.appnexus.com/segment?id=SEGMENT_ID</a></p>
<p><a href="https://api.appnexus.com/segment?code=SEGMENT_CODE"
class="xref"
target="_blank">https://api.appnexus.com/segment?code=SEGMENT_CODE</a></p></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a particular segment.</td>
</tr>
<tr class="even row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment?include_shared=0" class="xref"
target="_blank">https://api.appnexus.com/segment?include_shared=0</a></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
non-shared first party segments.</td>
</tr>
<tr class="odd row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment?search=SEARCH_TERM" class="xref"
target="_blank">https://api.appnexus.com/segment?search=SEARCH_TERM</a></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Search
for segments with IDs, short names, or codes containing certain
characters.</td>
</tr>
<tr class="even row">
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/segment?id=SEGMENT_ID" class="xref"
target="_blank">https://api.appnexus.com/segment?id=SEGMENT_ID</a></td>
<td class="entry align-justify colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
an existing segment.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code </code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string(50)</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
user-defined code for calling the segment.

class="note note_note">
<b>Note:</b>
<p>The value of the <code class="ph codeph">code</code> field is not
case-sensitive (e.g., <code class="ph codeph">"Test"</code> is the same
as <code class="ph codeph">"test"</code>), so each code must be unique
regardless of case. However, when referring to the code in query string
targeting, case-sensitivity matters (e.g., if the value of the <code
class="ph codeph">code</code> field is <code
class="ph codeph">"Test"</code>, the parameter in a query string
referring to it must also be <code class="ph codeph">"Test"</code>).</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
Xandr ID assigned by the API to reference the segment. When switching a
segment from advertiser-owned to network-owned, you must pass this
information in the query-string.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query-string</p></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the segment. This determines whether the segment can be used.
Possible values: <code class="ph codeph">active</code> or <code
class="ph codeph">inactive</code>.</p>
<p><strong>Default:</strong> <code
class="ph codeph">active</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">short_name</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string(255)</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
short name used to describe the segment.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
optional description for this segment. Maximum 500 characters.
Restricted characters: <code class="ph codeph">'</code> <code
class="ph codeph">\</code></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the member that owns this segment.</p>

class="note note_note">
<b>Note:</b> When switching a segment from
advertiser-owned to network-owned, you must pass this information in the
query string. See this <a
href="segment-service.md#SegmentService-Examples"
class="xref" target="_blank">Examples</a> for more details.

</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">category</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong>
This field is read-only.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">expire_minutes</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number of minutes the user is kept in the segment. Segments with no
expiration time will be expired from the Xandr server-side data store
within 90 days. If you want to add the user to the segment only for the
duration of the ad call, set to <code class="ph codeph">0</code>.
Changing this value does not retroactively affect users already in the
segment. Also, if a user is re-added, the expiration window resets.</p>

class="note note_note">
<b>Note:</b>
<p>To keep users in the segment for the 180-day maximum, set this to
<code class="ph codeph">null</code>.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">enable_rm_piggyback</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">If
true, piggybacking RM pixels is enabled.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">max_usersync_pixels</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
maximum number of third-party user sync pixels to piggyback onto the
segment pixel. Set to <code class="ph codeph">0</code> to block all
third-party user sync pixels. If blank (null), the segment defaults to
<code class="ph codeph">0</code>.</p>

class="note note_note">
<b>Note:</b> Invalid, if <code
class="ph codeph">querystring_mapping_key_value</code> object is also
included.
<p><strong>Default:</strong> <code class="ph codeph">0</code></p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
date and time when the segment was last modified.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">provider_id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the data provider that owns the segment. It is read-only and can
be used for filtering segments.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the advertiser using the segment if the segment should be on the
Advertiser level rather than the Network level. If <code
class="ph codeph">null</code>, the segment will be usable by all
advertisers for that member. This information is for reference in
Console.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">piggyback_pixels</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
URLs of the pixels you want us to fire when the segment pixel fires. See
<a
href="segment-service.md#SegmentService-PiggybackPixels"
class="xref" target="_blank">Piggyback Pixels</a> below for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">price</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Deprecated</strong>.
This field is currently not operational.</p>
<p><strong>Default:</strong> <code class="ph codeph">0</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">parent_segment_id</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the parent segment. If the parent segment is targeted in a <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">profile</a>, the direct child segments are targeted as
well.</p>

class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">parent_segment_id</code> field will be
deprecated on January 1, 2019.</p>



class="note note_note">
<b>Note:</b> The parent-child logic extends
only one level deep. Example: Segment A is the parent of segment B and
segment C, and segment C is the parent of segment D. When segment A is
targeted, segment B and segment C are targeted as well, but segment D is
not.

</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">querystring_mapping</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
query string that allows you to assign a set of parameters and values to
a segment. See <a
href="segment-service.md#SegmentService-AboutQueryStrings"
class="xref" target="_blank">About Query Strings</a> for a general
description of query strings and <a
href="segment-service.md#SegmentService-QueryStringMapping"
class="xref" target="_blank">Query String Mapping</a> for more
details.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">querystring_mapping_key_value</code></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
A query string that allows you to reuse a key and assign a single
key-value pair to a segment. See <a
href="segment-service.md#SegmentService-AboutQueryStrings"
class="xref" target="_blank">About Query Strings</a> for a general
description of query strings and <a
href="segment-service.md#SegmentService-QueryStringMappingKeyValue"
class="xref" target="_blank">Query String Mapping Key Value</a> for more
details.
class="note note_note">
<b>Note:</b>
<ul>
<li>Invalid, if a <code class="ph codeph">querystring_mapping</code>
object is also included.</li>
<li>The value of the <code
class="ph codeph">querystring_mapping_key_value</code> field is
case-insensitive when it is looked up in an auction.</li>
</ul>

</td>
</tr>
</tbody>
</table>



**Piggyback Pixels**

When adding piggyback pixels, please keep the following in mind:

- Image pixels can only piggyback off other image pixels, and JavaScript
  pixels can only piggyback other JavaScript pixels.
- Image pixels can only have one piggyback pixel. If you need to
  piggyback multiple pixels, be sure to use a JavaScript pixel.
- There are no character limits to piggybacked pixels in Xandr, but
  browser/server URL limits may apply.

Each object in the `piggyback_pixels` array contains the following
fields.

<table id="buy-side-service-template__table_bhx_dnq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_bhx_dnq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_bhx_dnq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_bhx_dnq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bhx_dnq_5wb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bhx_dnq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bhx_dnq_5wb__entry__3">The URL
of the pixel to piggyback.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bhx_dnq_5wb__entry__1"><code
class="ph codeph">pixel_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bhx_dnq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bhx_dnq_5wb__entry__3">The
type of pixel to piggyback. Possible values: <code
class="ph codeph">"js"</code> or <code
class="ph codeph">"img"</code>.</td>
</tr>
</tbody>
</table>

**About Query Strings**

Xandr provides two methods of query string mapping to allow publishers
to pass inventory-specific or user-specific information in the query
strings of their placement tags:

- **query string mapping** - in which a set of parameter values assigned
  to the segment.
- **query string mapping key value** - which allows you to assign one
  key/value pair to a segment and then reuse the same key with a
  different value in another segment.

For both types of mapped query strings:

- Whenever an ad call is made with a mapped query string, the associated
  user will automatically be added to the segment.
- You can target the query string in a campaign (via the
  `segment_targets` or `segment_group_targets` fields of the <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>).

Note that you can choose how long the user will be kept in the segment.
If you want to keep the user in the segment for retargeting purposes,
set `expire_minutes` to the correct number of minutes (`null` will set
to system maximum value 180 days). If you want to add the user to the
segment only for the duration of the ad call, set `expire_minutes` to
`0`.

See <a
href="segment-service.md#SegmentService-Examples"
class="xref" target="_blank">Examples</a> below for various scenarios
and formatting.

**Query String Mapping**

Query string mapping allows you to assign a parameter to a segment using
the `querystring_mapping` field. Multiple values can be added to a
parameter. This method is useful in cases where only one value makes
sense for a user. For example, a user's age, salary range, or
experience. If a user is in `beginner` segment but later gains more
experience, the user can be moved to the `advanced` segment and is
automatically removed from the `beginner` segment. See <a
href="segment-service.md#SegmentService-Examples"
class="xref" target="_blank">Examples</a> for more details.

In this type of query string, the parameter can be provided with no
values. For example, `{"param": "car_model", "value_type": "none"}`.
This allows any value for that parameter to be provided.

<table id="buy-side-service-template__table_t2p_lnq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_t2p_lnq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_t2p_lnq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_t2p_lnq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">param</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3">The
query string parameter.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">value_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3">The
type of value accompanying the parameter. Possible values: <code
class="ph codeph">"text"</code>, <code
class="ph codeph">"numeric"</code>, or <code
class="ph codeph">"none"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">values</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3"><p>The
strings that can accompany the parameter when <code
class="ph codeph">value_type</code> is <code
class="ph codeph">"text"</code>. If <code
class="ph codeph">value_type</code> is <code
class="ph codeph">"numeric"</code> or <code
class="ph codeph">"none"</code>, this field cannot be used.</p>

class="note tip note_tip">
<b>Tip:</b>
<p>Need the Value IDs?</p>
<p>If you need the IDs of the values, pass the query string parameters
<code class="ph codeph">show_querystring_ids=true</code>, and <code
class="ph codeph">values</code> will instead be an array of objects with
the keys <code class="ph codeph">"value"</code> (string) and <code
class="ph codeph">"id"</code> (int).</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">allow_empty_text</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3"><p>When
<code class="ph codeph">true</code>, the <code
class="ph codeph">values</code> array may be <code
class="ph codeph">null</code>. May only be used when the <code
class="ph codeph">value_type</code> is <code
class="ph codeph">"text"</code>.</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">publishers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3">The
publishers from which you expect the query string. Users associated with
these publishers' placements will be added to the segment.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">sites</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3">The
placement groups (sites) from which you expect the query string. Users
associated with these placements will be added to the segment. Note,
this field overrides publishers. If you specify a site that doesn't
belong to one of the specified publishers, users associated with the
placements in a placement group will nonetheless be added to the
segment.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">placements</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3">The
placements in which you expect the query string. Users associated with
these placements will be added to the segment. Note, this field
overrides placement groups and publishers. That is, if you specify a
placement that doesn't belong to one of the specified placement groups
or publishers, users associated with the placement will still be added
to the segment.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__1"><code
class="ph codeph">include_shared</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_t2p_lnq_5wb__entry__3">Set
this value to false to avoid retrieving shared segments.</td>
</tr>
</tbody>
</table>

**Query String Mapping Key Value**

Query string key/value mapping allows you to assign a single key-value
pair to a segment using the `querystring_mapping_key_value` object. This
type of query string allows a user to exist in multiple segments and is
useful in cases where more than one value for a parameter makes sense.
For example, a user's musical preferences. If a user is in `rock`
segment but also likes `funk`, he or she can exist in both segments
simultaneously. See <a
href="segment-service.md#SegmentService-Examples"
class="xref" target="_blank">Examples</a> for more details.

In this type of query string, each `qs_key` must have at least one
corresponding `qs_value`.

<table id="buy-side-service-template__table_hzn_5nq_5wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_hzn_5nq_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_hzn_5nq_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_hzn_5nq_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hzn_5nq_5wb__entry__1"><code
class="ph codeph">qs_key</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hzn_5nq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hzn_5nq_5wb__entry__3">The
query string parameter.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hzn_5nq_5wb__entry__1"><code
class="ph codeph">qs_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hzn_5nq_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hzn_5nq_5wb__entry__3">A value
for the query string key. The value can be empty or null. Multiple
values can be added using the same key. A <code
class="ph codeph">qs_value</code> must be provided if a <code
class="ph codeph">qs_key</code> is used.</td>
</tr>
</tbody>
</table>





## Examples

****Create a segment****

>

``` pre
$ cat segment

{
    "segment":{
        "member_id":25,
        "short_name":"remarketing - Warner Media user",
        "code":"WM08"
    }
}

$ curl -b cookies -c cookies -X POST -d @segment 'https://api.appnexus.com/segment?member_id=25'
                                            Or
$ curl -b cookies -c cookies -X POST -d @segment 'https://api.appnexus.com/segment'

{
   "response" : {
      "id" : 102,
      "count" : 1,
      "dbg_info" : {
         ...
      },
      "start_element" : 0,
      "num_elements" : 100,
      "segment" : {
         "object_type" : "default",
         "advertiser_id" : null,
         "enable_rm_piggyback" : true,
         "querystring_mapping_key_value" : null,
         "member_id" : 25,
         "expire_minutes" : null,
         "category" : null,
         "provider" : null,
         "parent_segment_id" : null,
         "querystring_mapping" : null,
         "short_name" : "yuichi-test",
         "max_usersync_pixels" : null,
         "code" : "yuichi-test-seg-02",
         "state" : "active",
         "description" : null,
         "id" : 102,
         "piggyback_pixels" : null,
         "last_modified" : "2019-08-14 17:26:29"
      },
      "status" : "OK"
   }
}
```



**View a segment**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/segment?id=11836'

{
    "response": {
        "status": "OK",
        "segments": [
            {
                "id": 11836,
                "code": null,
                "state": "active",
                "short_name": "March 10",
                "description": null,
                "member_id": 185,
                "category": null,
                "price": "0",
                "expire_minutes": null,
                "enable_rm_piggyback": true,
                "max_usersync_pixels": 0,
                "last_modified": "2010-03-10 23:23:48",
                "provider": null,
                "parent_segment_id": null,
                "advertiser_id": 51,
                "piggyback_pixels": null
            }
        ]
    }
}
```

**View non-shared first party segments**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/segment?include_shared=0'

{
    "response": {
        "status": "OK",
        "segments": [
            {
                "id": 11836,
                "code": null,
                "state": "active",
                "short_name": "March 10",
                "description": null,
                "member_id": 185,
                "category": null,
                "price": "0",
                "expire_minutes": null,
                "enable_rm_piggyback": true,
                "max_usersync_pixels": 0,
                "last_modified": "2010-03-10 23:23:48",
                "provider": null,
                "parent_segment_id": null,
                "advertiser_id": 51,
                "piggyback_pixels": null
            }
        ]
    }
}
```

**Change a segment from advertiser-owned to network-owned**



To change an advertiser-level segment into a network-level segment, you
make a PUT call passing the segment ID and member ID in the query string
and setting `advertiser_id` to `null` in the JSON file.

``` pre
$ cat segment_update

{
    "segment": {
        "advertiser_id": null
    }
}

$ curl -b cookies -c cookies -X PUT -d @segment_update 'https://api.appnexus.com/segment?id=175196&member_id=1066'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "175196",
        "start_element": 0,
        "num_elements": 100,
        "segment": {
            "id": 175196,
            "code": null,
            "state": "active",
            "short_name": "Users who have purchased software",
            "description": null,
            "member_id": 1066,
            "category": null,
            "price": 0,
            "expire_minutes": null,
            "enable_rm_piggyback": true,
            "max_usersync_pixels": null,
            "advertiser_id": null,
            "last_modified": "2013-10-18 20:34:27",
            "provider": null,
            "parent_segment_id": null,
            "piggyback_pixels": null,
            "querystring_mapping": null
        }
    }
}
```



**Add text query string mapping to a segment**

**Scenario**: Publisher 6 tells you to expect one of the following
values in the query string of placement 596411:
"`experience_level=beginner`", "`experience_level=intermediate`", or
"`experience_level=advanced`". When this placement comes in with the
"`experience_level`" parameter, you want to add the associated user to
segment 25 with the ability to distinguish between the values of
beginner, intermediate, and advanced in campaign targeting. In this
case, you would create the following JSON and make a PUT call to update
the segment.

``` pre
$ cat segment_update

 {
    "segments": [
        {
            "id": 25,
            "member_id": 20,
            "querystring_mapping": {
                "param": "experience_level",
                "value_type": "text",
                "values": [
                    "beginner",
                    "intermediate",
                    "advanced"
                ],
                "publishers": [
                    {
                        "id": 6
                    }
                ],
                "placements": [
                    {
                        "id": 596411
                    }
                ]
            }
        }
    ]
}

 $ curl -b cookies -c cookies -X PUT -d @segment_update 'https://api.appnexus.com/segment?id=25'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "25",
        "start_element": null,
        "num_elements": null,
        "segment": {
            "id": 25,
            "code": null,
            "state": "active",
            "short_name": "test",
            "description": null,
            "member_id": 49,
            "category": null,
            "price": 23,
            "expire_minutes": 20,
            "enable_rm_piggyback": true,
            "max_usersync_pixels": null,
            "last_modified": "2012-01-24 20:15:18",
            "provider": null,
            "parent_segment_id": null,
            "advertiser_id": null,
            "piggyback_pixels": null,
            "querystring_mapping": {
                "param": "experience_level",
                "value_type": "text",
                "values": [
                    "beginner",
                    "intermediate",
                    "advanced"
                ],
                "publishers": [
                    {
                        "id": 6,
                        "name": "Publisher 6"
                    }
                ],
                "sites": null,
                "placements": [
                    {
                        "id": 596411,
                        "name": "Placement 596411"
                    }
                ]
            }
        }
    }
}
```

**Add numeric query string mapping to a segment**

**Scenario**: Auto publisher 30 tells you to expect the "`car_year`"
parameter followed by a year in the query strings of its placements.
When a placement from this publisher comes in with "car_year=YYYY" in
its query string, you can add the associated user to segment 26. In this
case, you would create the following JSON and make a PUT call to update
the segment.

``` pre
$ cat segment_update

{
   "segment": {
      "member_id": 20,
      "querystring_mapping": {
         "param": "car_year",
         "value_type": "numeric",
         "publishers": [
            {
               "id": 30
            }
         ]
      }
   }
}

$ curl -b cookies -c cookies -X PUT -d @segment 'https://api.appnexus.com/segment?id=26'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "26",
        "start_element": null,
        "num_elements": null,
        "segment": {
            "id": 26,
            "code": null,
            "state": "active",
            "short_name": "test",
            "description": null,
            "member_id": 20,
            "category": null,
            "price": 23,
            "expire_minutes": 20,
            "enable_rm_piggyback": true,
            "max_usersync_pixels": null,
            "last_modified": "2012-01-24 20:15:18",
            "provider": null,
            "parent_segment_id": null,
            "advertiser_id": null,
            "piggyback_pixels": null,
            "querystring_mapping": {
                "param": "car_year",
                "value_type": "numeric",
                "values": null,
                "publishers": [
                    {
                        "id": 30,
                        "name": "Publisher 30"
                    }
                ],
                "sites": null,
                "placements": null
            }
        }
    }
}
```

**Add query string mapping without values to a segment**

**Scenario**: Both publishers 10 and 30 tell you to expect the parameter
"`car_model`" (without values) in their placements. When a placement
from either of these publishers comes in with "`car_model`" in its query
string, you can add the associated user to segment 2. In this case, you
would create the following JSON and make a PUT call to update the
segment.

``` pre
$ cat segment_update

{
   "segment": {
      "member_id": 20,
      "querystring_mapping": {
         "param": "car_model",
         "value_type": "none",
         "publishers": [
            {
               "id": 10,
               "id": 30
            }
         ]
      }
   }
}

$ curl -b cookies -c cookies -X PUT -d @segment_update 'https://api.appnexus.com/segment?id=2'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "2",
        "start_element": null,
        "num_elements": null,
        "segment": {
            "id": 2,
            "code": null,
            "state": "active",
            "short_name": "test",
            "description": null,
            "member_id": 20,
            "category": null,
            "price": 23,
            "expire_minutes": 20,
            "enable_rm_piggyback": true,
            "max_usersync_pixels": null,
            "last_modified": "2012-01-24 20:15:18",
            "provider": null,
            "parent_segment_id": null,
            "advertiser_id": null,
            "piggyback_pixels": null,
            "querystring_mapping": {
                "param": "car_model",
                "value_type": "none",
                "values": null,
                "publishers": [
                    {
                        "id": 10,
                        "name": "Publisher 10"
                    },
                    {
                        "id": 30
                        "name": "Publisher 30"
                    }
                ],
                "sites": null,
                "placements": null
            }
        }
    }
}
```

**Use query string key-value mapping to reuse a key with multiple
values**

**Scenario**: Publishers want to add users to segments based on their
musical preferences. You want to use the same key, "`music_genre`" and
offer multiple values: "`rock`", "`pop`", "`hard rock`", and "`funk`",
assigning them to different segments and allow users to be placed in one
or more of the segments. This reflects the fact that users may have
diverse musical choices.

In this case, you would create the following JSON and make a PUT call to
update the segments.

``` pre
$ cat segment_update
{
    "segments": [
        {
            "id": 501,
            "querystring_mapping_key_value": {
                "qs_key": "music_genre",
                "qs_value": "rock"
            }
        },
        {
            "id": 502,
            "querystring_mapping_key_value": {
                "qs_key": "music_genre",
                "qs_value": "pop"
            }
        },
        {
            "id": 503,
            "querystring_mapping_key_value": {
                "qs_key": "music_genre",
                "qs_value": "hard rock"
            }
        },
        {
            "id": 504,
            "querystring_mapping_key_value": {
                "qs_key": "music_genre",
                "qs_value": "funk"
            }
        }
    ]
}

$ curl -b cookies -c cookies -X PUT -d @segment_update 'https://api.appnexus.com/segment?member_id=201'

{
    "response": {
        "status": "OK",
        "count": 2,
        "id": [
            501,
            502,
            503,
            504
        ],
        "start_element": 0,
        "num_elements": 100,
        "ids": [
            501,
            502,
            503,
            504
        ],
        "segments": {
            "501": {
                "id": 501,
                "code": null,
                "state": "active",
                "short_name": "rock",
                "description": null,
                "member_id": 201,
                "category": null,
                "price": 0,
                "expire_minutes": null,
                "enable_rm_piggyback": true,
                "max_usersync_pixels": null,
                "advertiser_id": null,
                "last_modified": "2015-06-02 16:39:40",
                "provider": null,
                "parent_segment_id": null,
                "piggyback_pixels": null,
                "querystring_mapping": null,
                "querystring_mapping_key_value": {
                    "qs_key": "music_genre",
                    "qs_value": "rock"
                }
            },
            "502": {
                "id": 502,
                "code": null,
                "state": "active",
                "short_name": "rock",
                "description": null,
                "member_id": 201,
                "category": null,
                "price": 0,
                "expire_minutes": null,
                "enable_rm_piggyback": true,
                "max_usersync_pixels": null,
                "advertiser_id": null,
                "last_modified": "2015-06-02 16:39:40",
                "provider": null,
                "parent_segment_id": null,
                "piggyback_pixels": null,
                "querystring_mapping": null,
                "querystring_mapping_key_value": {
                    "qs_key": "music_genre",
                    "qs_value": "pop"
                }
            },
            "503": {
                "id": 503,
                "code": null,
                "state": "active",
                "short_name": "rock",
                "description": null,
                "member_id": 201,
                "category": null,
                "price": 0,
                "expire_minutes": null,
                "enable_rm_piggyback": true,
                "max_usersync_pixels": null,
                "advertiser_id": null,
                "last_modified": "2015-06-02 16:39:40",
                "provider": null,
                "parent_segment_id": null,
                "piggyback_pixels": null,
                "querystring_mapping": null,
                "querystring_mapping_key_value": {
                    "qs_key": "music_genre",
                    "qs_value": "hard rock"
                }
            },
            "504": {
                "id": 504,
                "code": null,
                "state": "active",
                "short_name": null,
                "description": null,
                "member_id": 958,
                "category": null,
                "price": 0,
                "expire_minutes": null,
                "enable_rm_piggyback": true,
                "max_usersync_pixels": null,
                "advertiser_id": null,
                "last_modified": "2015-06-02 16:39:40",
                "provider": null,
                "parent_segment_id": null,
                "piggyback_pixels": null,
                "querystring_mapping": null,
                "querystring_mapping_key_value": {
                    "qs_key": "music_genre",
                    "qs_value": "funk"
                }
            }
        }
    }
}
```






