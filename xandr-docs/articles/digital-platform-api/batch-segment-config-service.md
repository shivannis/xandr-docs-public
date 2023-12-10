---
Title : Batch Segment Config Service
Description : <b>Note:</b> This is an internal, admin-only
ms.date: 10/28/2023
ms.custom: digital-platform-api
service. It is not available to clients, and this page is visible only
---


# Batch Segment Config Service





<b>Note:</b> This is an internal, admin-only
service. It is not available to clients, and this page is visible only
to Xandr employees.





<b>Warning:</b> If you need to make any
changes to the `num_line` or `byte` limits of a member's batch segment
configuration, please file a ticket under EPIC: DMP-376, following the
directions in the info section of the page. You will need to receive
approval from Ewa Maciukiewicz in order to proceed with the changes.



  
The Batch Segment Config Service is an internal, admin-only API used to
add and modify per-client settings related to their use of the <a
href="batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>. You can
configure the client's preferred file format as well as the strictness
of our error checking against that format. You can also set usage limits
and define which other members' segment data the client has access to. 



<b>Note:</b> For more information about the
specifics of the file format, see <a
href="xandr-bidders/initial-bss-account-setup.md"
class="xref" target="_blank">Initial BSS Account Setup</a>.





## Client Access to Other Members' Data

A client who wants access to another member's data will have to ask that
member to file a support request via
<a href="https://help.xandr.com/s/login/" class="xref"
target="_blank">https://help.xandr.com/s/login/</a>. For example, if
client A wants access to client B's data, client B must send in a
support request authorizing client A's access.





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000dac__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000dac__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000dac__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">member_segment_access</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
member IDs whose segments the client has access to. (Use this if you're
adding users to segments on behalf of someone). For more information,
see <a
href="batch-segment-config-service.md#ID-00000dac__member_segment_access_array"
class="xref">The Member Segment Access Array</a>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> No</p>
<p><strong>Sort by:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
member ID of the client whose configuration you're editing.
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>,
<code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
unique identifier of this object.
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">hourly_byte_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
maximum number of bytes per hour the client may upload.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">daily_byte_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
maximum number of bytes per day the client may upload. General guide:
10G (roughly 280M lines gzipped with verbose format)<br />
&#10;
<b>Note:</b> Clients who want to raise this
should confirm that they are using their data limits properly, i.e. they
are sending us a diff file instead of a complete database dump every
day. Clients who do not use data smartly must refactor their upload
process to minimize data send.

<strong>Required On:</strong> <code class="ph codeph">POST</code>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">hourly_num_lines_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
maximum number of lines per hour the client may upload. <strong>Required
On:</strong> <code class="ph codeph">POST</code>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">daily_num_lines_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
maximum number of lines per day the client may upload.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">max_concurrent_uploads</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
maximum number of uploads the client may perform at once. General guide:
1
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">num_error_log_lines</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
number of lines that will show in the error log. General guide: less
than 200
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">num_invalid_before_error</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
number of invalid lines to accept before signalling an error. When this
limit is reached, the job is killed, but everything added before the
first error will go in. General guide: 50% of a client's file. When in
doubt, set this very high.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">separator_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">A
character or string of characters used as a separator by the <a
href="xandr-bidders/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">separator_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">A
character or string of characters used as a separator by the <a
href="xandr-bidders/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">separator_3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">A
character or string of characters used as a separator by the <a
href="xandr-bidders/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">separator_4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">A
character or string of characters used as a separator by the <a
href="xandr-bidders/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">separator_5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">A
character or string of characters used as a separator by the <a
href="xandr-bidders/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">default_domain</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
internal database domain to add the user ID to. The default is set to
'userdata'. Usually not used, since almost all clients are in one domain
at this time.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">use_specific_geo</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">Set
to <code class="ph codeph">NULL</code> by default.<br />
<br />
This field is no longer needed to do improvements made to Batch Segment
in 2013. The system will check all geos. If the user is in multiple
geos, they will be added to the appropriate segments in each geo they
exist in.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">segment_fields</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">A
list of segments correlated to the <code class="ph codeph">SEG</code>
block of the file format. For more information, see <a
href="xandr-bidders/batch-segment-service.md"
class="xref" target="_blank">Batch Segment Service</a>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
time at which this object was last modified.
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
time at which this object was created.
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">default_expiration</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">The
amount of time, in minutes, after which this client would like their
segments to expire. This is overridden by any expiration settings in the
segment data file. A value of <code class="ph codeph">0</code> denotes
that the segment should never expire; <code class="ph codeph">-1</code>
denotes that this user will be removed from this segment.

<b>Note:</b> For whatever reason <code
class="ph codeph">POST</code> requests are rejecting 0 as a valid input,
in this case <code class="ph codeph">POST</code> with a non-zero value
and then <code class="ph codeph">PUT</code> the same file again with 0
as the value and it should work.

<strong>Required On:</strong> <code class="ph codeph">POST</code>
<p><strong>Filter by:</strong> Yes</p>
<strong>Sort by:</strong> Yes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">use_external_uids</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__3">Whether the client would like to use
external user IDs for mapping from one name to another. Set this field
to <code class="ph codeph">true</code> in order to use a <code
class="ph codeph">external_member_uid</code>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__1"><code
class="ph codeph">external_member_uid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__3">If
"use_external_uids" is <code class="ph codeph">true</code>, then
indicate the member ID whose user IDs the client will be using. A value
of <code class="ph codeph">null</code> means to use the client's own
<code class="ph codeph">member_id</code>. Only valid for members using
mapUID usersyncing (HINT: Very few clients use this).
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p><strong>Filter by:</strong> Yes</p>
<p><strong>Sort by:</strong> Yes</p></td>
</tr>
</tbody>
</table>

**The Member Segment Access Array**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000dac__entry__73"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000dac__entry__74"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000dac__entry__75"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__73"><code
class="ph codeph">segment_owner_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000dac__entry__74">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000dac__entry__75">The
member ID of the segment owner.
<p><strong>Filter by:</strong> No</p>
<p><strong>Sort by:</strong> No</p></td>
</tr>
</tbody>
</table>





## Examples

**See the configuration for a given member**

``` pre
$ curl -b cookies "https://api.appnexus.com/batch-segment-config?member_id=1226"
{
  "response": {
    "status": "OK",
    "count": null,
    "start_element": 0,
    "num_elements": 100,
    "batch_segment_upload_config": {
      "member_id": 1226,
      "id": 2,
      "hourly_byte_limit": 3500000000,
      "daily_byte_limit": 3500000000,
      "max_concurrent_uploads": 1,
      "num_error_log_lines": 50,
      "num_invalid_before_error": 1000000000,
      "separator_1": ";",
      "separator_2": ",",
      "separator_3": ":",
      "separator_4": "\t",
      "separator_5": "^",
      "default_domain": "userdata",
      "use_specific_geo": null,
      "segment_fields": "[SEG_ID,EXPIRATION,VALUE]",
      "last_modified": "2012-06-01 15:10:20",
      "created_on": "0000-00-00 00:00:00",
      "default_expiration": 0,
      "use_external_uids": false,
      "external_member_uid": null,
      "member_segment_access": [
        {
          "segment_owner_member_id": 23
        }
      ]
    }
  }
  }
```






