---
Title : Audit Notify Request
Description : An audit notify request will be sent via HTTP POST to the
`audit_notify_uri` (specified with the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
---


# Audit Notify Request



An audit notify request will be sent via HTTP POST to the
`audit_notify_uri` (specified with the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>) for each creative whose
audit status has changed.



## JSON Fields

Information about the creative will be provided in the following JSON
format:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004c36__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004c36__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004c36__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004c36__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">new_brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4">Included if the brand id on the creative
is changed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">old_brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4">Included if the brand id on the creative
is changed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">new_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">all</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("audited", "rejected", "pending","unauditable")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">old_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">all</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("audited", "rejected", "pending","unauditable")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">audit_feedback</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4">Feedback from our platform auditor, such
as why the creative could not be audited.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4">Description of the creative as entered
by the member that uploaded the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">google_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">all</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("approved", "rejected", "pending")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">old_google_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("approved", "rejected", "pending")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">google_audit_feedback</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4">Feedback from our platform auditor about
why the creative may not have been approved to run on Google Ad
Manager.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">msft_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">all</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("approved", "rejected", "pending")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">old_msft_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("approved", "rejected", "pending")</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">msft_audit_feedback</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__4">Feedback from our platform auditor about
why the creative may not have been approved to run on Microsoft
inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">facebook_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("approved", "rejected", "pending")</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__4"><div
class="note note_note">
Note: This field is no longer in use.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">old_facebook_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__3">enum
("approved", "rejected", "pending")</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__4"><div
class="note note_note">
Note: This field is no longer in use.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__1"><code
class="ph codeph">facebook_audit_feedback</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c36__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c36__entry__4"><div
class="note note_note">
Note: This field is no longer in use.
</td>
</tr>
</tbody>
</table>





## Example



For example, you may receive an audit notify request in the following
form:

``` pre
{
   "creative_id":"123",
   "new_audit_status":"audited",
   "old_audit_status":"pending",
   "audit_feedback":"",
   "description":"sample_creative_160x600",
   "google_audit_status":"approved",
   "google_audit_feedback":"",
   "old_google_audit_status":"pending",
   "msft_audit_status":"approved",
   "msft_audit_feedback":"",
   "old_msft_audit_status":"pending",
   "new_brand_id":42
}
```







## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
  class="xref" target="_blank">Bidder Service</a>








