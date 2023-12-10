---
Title : Creative Service
Description : You can use the Creative Service to add creatives to our system. All
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Creative Service



You can use the Creative Service to add creatives to our system. All
creatives must be attached to an advertiser or publisher.

- You can view your advertiser ID by calling the <a
  href="advertiser-service.md"
  class="xref" target="_blank">Advertiser Service</a>.
- You can view your publisher ID by calling the <a
  href="publisher-service.md"
  class="xref" target="_blank">Publisher Service</a>.
- You can attach a creative to a publisher for use as a default creative
  for a placement. You would then attach the creative to a placement via
  its ID using the <a
  href="placement-service.md"
  class="xref" target="_blank">Placement Service</a>.



<b>Note:</b> Hosted and third-party Video and
Audio services can only be accessed using the <a
href="creative-vast-service.md"
class="xref" target="_blank">Creative Vast Service</a>. Hosted and
third-party HTML creatives can only be accessed using the <a
href="creative-html-service.md"
class="xref" target="_blank">Creative HTML Service</a>.



>

## Auditing

Xandr works with members who care deeply about brand and reputation. For
this reason, we are careful to ensure that the advertisements
(creatives) that pass through our system are acceptable to all parties.
For quality assurance, all creatives that serve on third-party inventory
must be pre-registered using the Creative Service.

- Creatives are identified by their media_url (either a third-party
  adserver URL or a Content Delivery Network URL for a Flash, image, or
  video file).
- Xandr checks media_urls on a regular basis. If a file disappears, the
  creative will be treated as unaudited.
- Once a creative has passed Xandr's audit, certain changes to the
  creative cause it to be resubmitted for audit. For more details, see
  <a
  href="creative-service.md#CreativeService-ChangesThatCauseRe-Audit"
  class="xref" target="_blank">Changes That Cause Re-Audit</a>.





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
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?advertiser_id=ADVERTISER_ID</a></p>
<p>(creative JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new creative to one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?publisher_id=PUBLISHER_ID</a></p>
<p>(creative JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new creative to one of your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID</a></p>
<p>(creative JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative" class="xref"
target="_blank">https://api.appnexus.com/creative</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all creatives.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative?advertiser_code=ADVERTISER_CODE</a></p>
<p><a href="https://api.appnexus.com/creative?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?publisher_id=PUBLISHER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative?publisher_code=PUBLISHER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative?publisher_code=PUBLISHER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>View
all creatives for an advertiser or publisher.</p>

class="note note_note">
<b>Note:</b>
<p>You can filter for creatives based on when they first and last
served. This is particularly useful when you are approaching your <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">object limit</a> and need to identify creatives that can
be deleted from the system. For more details, see <a
href="creative-service.md#CreativeService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a>.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative?id=CREATIVE_ID" class="xref"
target="_blank">https://api.appnexus.com/creative?id=CREATIVE_ID</a> <a
href="https://api.appnexus.com/creative?code=CREATIVE_CODE" class="xref"
target="_blank">https://api.appnexus.com/creative?code=CREATIVE_CODE</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/creative?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple creatives by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative?audit_stats=true" class="xref"
target="_blank">https://api.appnexus.com/creative?audit_stats=true</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>View
creative audit stats.</p>

class="note note_note">
<b>Note:</b>
<p>The response tells you the number of creatives with each Xandr,
Microsoft, and Google audit status. For the response format, see the <a
href="creative-service.md#CreativeService-Examples"
class="xref" target="_blank">Examples</a> below.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a>
<a
href="https://api.appnexus.com/creative?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>Delete
a creative.</p>

class="note note_note">
<b>Note:</b> You cannot delete a creative that
is used as the default creative for a member or placement. Default
creatives can be deleted once they are disassociated from a placement.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative/meta" class="xref"
target="_blank">https://api.appnexus.com/creative/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Find
out which fields you can filter and sort by.</td>
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
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
internal ID associated with the creative.</p>
<p><strong>Default:</strong> Auto-generated number.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT,</code> in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
custom code for the creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
additional custom code for the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(400)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
name for the creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
type of creative. Possible values:</p>
<ul>
<li><code class="ph codeph">"standard"</code></li>
<li><code class="ph codeph">"html"</code></li>
<li><code class="ph codeph">"video"</code></li>
</ul>

class="note note_note">
<b>Note:</b>
<p>Alpha-Beta Notice</p>
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>


<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the advertiser to which the creative is attached.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> in query string, if the creative is
attached to an advertiser.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">political</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Read
only. If this creative is "political" and will serve in the US, this
object is populated with the elements required for US political
creatives. For more information, see the description of the <a
href="creative-service.md#CreativeService-Political"
class="xref" target="_blank">Political</a> object below.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the publisher/media buy to which the creative is attached.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> in query string, if the creative is
attached to a publisher.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">brand_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
ID of the brand of the company advertising the creative. If included, it
will be verified by the Xandr auditing team. If not included, it will be
assigned by the auditing team. To retrieve a full list of brands, see
the <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Brand Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> state </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the creative. Possible values: "active" or "inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> status </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
status of the creative describing if the creative is ready to serve. For
more details, see <a
href="creative-service.md#CreativeService-Status"
class="xref" target="_blank">Status</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_track_result</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
result of the click track test, a feature only available in the user
interface. Possible values: "not_tested", "passed", or "failed".</p>
<p><strong>Default:</strong> "not_tested"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">campaigns</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
list of campaigns to which the creative is associated. For more details,
see <a
href="creative-service.md#CreativeService-Campaigns"
class="xref" target="_blank">Campaigns</a> below.</p>

class="note note_note">
<b>Note:</b> This field will only be returned
if an <code class="ph codeph">advertiser_id</code> is specified in the
query string.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">template</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
creative template (ex.: <code class="ph codeph">template_id 6</code>)
for the creative's format and media type (i.e., flash and expandable).
The template includes code to control how the creative renders on web
pages. For more details, see <a
href="creative-service.md#CreativeService-CreativeTemplate"
class="xref" target="_blank">Creative Template</a> below.</p>

class="note note_note">
<b>Note:</b> When using a template for the
"raw-html" format (HTML that will not be served in an iFrame),
everything in the <code class="ph codeph">content</code> field must be
<code class="ph codeph">escaped</code> (quotes, slashes, etc.,) and
wrapped in a <code class="ph codeph">document.write();</code> statement.
This is necessary to deliver the content to the page.


<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">thirdparty_page</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
class="note note_note">
<b>Note:</b> This field is no longer in use.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">custom_macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
values for custom macros used in the creative template. For more
details, see <a
href="creative-service.md#CreativeService-CustomMacros"
class="xref" target="_blank">Custom Macros</a> below.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template includes required custom macros.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
width of the creative; the string should contain an int.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template is for the "Banner" or "Expandable" media type.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Required
On:</strong> <code class="ph codeph">POST,</code> if template is for the
"Banner" or "Expandable" media type.</p>
<p>The height of the creative; the string should contain an int. If the
creative's template has a Pop media type, then either the creative's
height must be set OR pop_window_maximize (in the pop_values field) must
be true (but not both).</p>

class="note note_note">
<b>Note:</b> You can only submit pop creatives
of accepted sizes for Xandr audit. If <code
class="ph codeph">media_subtype_id</code> within the <code
class="ph codeph">template</code> array is 4 (popunder) and <code
class="ph codeph">audit_status</code> is "pending", <code
class="ph codeph">height</code> must be set to 300 and <code
class="ph codeph">width</code> to 720. If <code
class="ph codeph">media_subtype_id</code> within the <code
class="ph codeph">template</code> array is 2 (popup) and <code
class="ph codeph">audit_status</code> is "pending", <code
class="ph codeph">width</code> and <code class="ph codeph">height</code>
must be one of the following: 250x250, 300x250, 550x480.


<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template is for the "Banner" or "Expandable" media type.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
URL of the creative - can be image, flash, HTML, javascript (see
format). URL must exist and should be on a CDN or equivalent.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
not using content.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
URL of the secure (HTTPS) creative - can be image, flash, HTML,
javascript (see format) to be served on a secure ad call. URL must exist
and should be on a CDN or equivalent.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(2000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>click_url
is being deprecated in favor of click_target.</p>

class="note note_note">
<b>Note:</b>
<p>This value must begin with "http://" or "https://"</p>


<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template is for the "image" format.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">file_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
file name and extension for a hosted creative. Allowed file types: jpg,
gif, png, swf, flv, mp4, wmv, f4v, avi, m4v, mov, and mpg.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
adding a hosted creative.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">flash_click_variable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ClickTag variable in a Flash creative. Xandr can execute and track user
clicks on a Flash creative only if you provide the exact variable in the
file (clickTAG, ClickTag, Clicktag, etc). You can use the <a
href="creative-service.md#"
class="xref" target="_blank">ClickTags Service</a> to identify this
variable. If you need to specify more than one ClickTag variable for a
single creative, please contact support.</p>

class="note note_note">
<b>Note:</b> This field may only be updated
(via <code class="ph codeph">POST</code> or <code
class="ph codeph">PUT</code>) for Flash creatives.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Javascript
or HTML content when "format" is "raw-js" or "iframe-html". For a hosted
creative, the content of the file must be base64-encoded and submitted
as a string within the content field.</p>

class="note tip note_tip">
<b>Tip:</b> When using a template (ex.: <code
class="ph codeph">template_id 6</code>) for the "raw-html" format (HTML
that will not be served in an iFrame), everything in the <code
class="ph codeph">content</code> field must be <code
class="ph codeph">escaped</code> (quotes, slashes, etc.,) and wrapped in
a <code class="ph codeph">document.write();</code> statement. This is
necessary to deliver the content to the page.



class="note tip note_tip">
<b>Tip:</b> There is a maximum length in the
content field of 65535 characters.


<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
not using media_url.</p>
<p><strong>Default:</strong> 3rd party tag holder.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Javascript
or HTML content when "format" is "raw-js" or "iframe-html" served on a
secure ad call.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">original_content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
value you pass into the "content" field through the UI will be returned
in this field unchanged. The "content" field will contain the content
modified by Xandr to properly serve. This field can also be uploaded
directly through the API. In this case, the value uploaded to this field
will be referenced in the content section of the UI (Creative Content
&gt; Tag field).</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST </code>when submitting as type <code
class="ph codeph">raw-html.</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">original_content_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">See
original_content. This is the secure version of this content.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
API pulls out macros and puts them in this field so that the bidder
knows which macros to expect.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
audit status of the creative. Possible values: "no_audit", "pending",
"rejected", or "audited".</p>

class="note note_note">
<b>Note:</b>
<ul>
<li>If <code class="ph codeph">allow_audit</code> is false, this field
must be "no_audit".</li>
<li>If a creative is expired, you can reanimate it by changing this
field. Setting it to "pending" will resubmit it for auditing. The
<strong>user_ready</strong> field also needs to set to true in order to
reactivate a expired creative. For changes that automatically resubmit
the creative for auditing, see <a
href="creative-service.md#CreativeService-ChangesThatCauseRe-Audit"
class="xref" target="_blank">Changes That Cause Re-Audit</a>.</li>
<li>You can only submit pop creatives of accepted sizes for Xandr audit.
If <code class="ph codeph">media_subtype_id</code> within the <code
class="ph codeph">template</code> array is 4 (popunder), <code
class="ph codeph">audit_status</code> can not be set to "pending" unless
<code class="ph codeph">width</code> is 720 and <code
class="ph codeph">height</code> is 300. If <code
class="ph codeph">media_subtype_id</code> within the <code
class="ph codeph">template</code> array is 2 (popup), <code
class="ph codeph">audit_status</code> can not be set to pending unless
<code class="ph codeph">width</code> and <code
class="ph codeph">height</code> are one of the following: 250x250,
300x250, 550x480.</li>
</ul>


<p><strong>Default:</strong> "pending"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">audit_feedback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
creative auditing team can pass messages about a creative in this
field.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_audit</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the creative will be submitted for
auditing. If <code class="ph codeph">false,</code> the creative will not
be submitted. Unaudited creatives can only run on a network's managed
inventory.</p>

<b>Note:</b>
class="note note_note">
<b>Note:</b>
<ul>
<li>If <code class="ph codeph">audit_status</code> is "no_audit", this
field must be "false".</li>
<li>If your member is not yet active, you can add creatives, but they
will not be submitted for audit (<code
class="ph codeph">allow_audit</code> will be false). Once your member
has been activated, if you want these creatives to be audited, you must
update the creatives and set <code class="ph codeph">allow_audit</code>
to true.</li>
<li>You can only submit pop creatives of accepted sizes for Xandr audit.
If <code class="ph codeph">media_subtype_id</code> within the <code
class="ph codeph">template</code> array is 4 (popunder), <code
class="ph codeph">allow_audit</code> can not be set to 1 unless <code
class="ph codeph">width</code> is 720 and <code
class="ph codeph">height</code> is 300. If <code
class="ph codeph">media_subtype_id</code> within the <code
class="ph codeph">template</code> array is 2 (popup), <code
class="ph codeph">allow_audit</code> can not be set to 1 unless <code
class="ph codeph">width</code> and <code class="ph codeph">height</code>
are one of the following: 250x250, 300x250, 550x480.</li>
</ul>


<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">ssl_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ssl (HTTPS) status of the creative. Only creatives with ssl_status =
approved will be eligible to serve on secure inventory.</p>

<b>Note:</b>
class="note note_note">
<b>Note:</b>
<p>If a creative fails the ssl Sherlock audit, you can submit it for a
retest (once you've fixed the downstream non-secure content) by changing
this field to "pending". Allowed values:</p>
<ul>
<li><code class="ph codeph">"disabled"</code></li>
<li><code class="ph codeph">"pending"</code></li>
<li><code class="ph codeph">"approved"</code></li>
<li><code class="ph codeph">"failed"</code></li>
</ul>


<p><strong>Default:</strong> <code
class="ph codeph">"disabled"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_ssl_audit</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the creative will be submitted for
secure (HTTPS) auditing. If <code class="ph codeph">false,</code> the
creative will not be submitted. If <code class="ph codeph">true,</code>
either media_url_secure or content_secure is required as well.</p>
<p><strong>Default:</strong> <code class="ph codeph">true,</code> if
<code class="ph codeph">media_url_secure</code> or <code
class="ph codeph">content_secure</code> is provided. Otherwise, <code
class="ph codeph">false</code> will be the default.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">msft_audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">msft_audit_feedback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">facebook_audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
class="note note_note">
<b>Note:</b> This field is no longer in use.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">facebook_audit_feedback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
class="note note_note">
<b>Note:</b> This field is no longer in use.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_self_audited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the creative is self-audited and
thus will not go through Xandr platform audit. The creative can only
serve on inventory that accepts your self-classified creative or on
inventory that accepts unaudited creatives.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_expired</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
your creative (1) has not run and (2) has not been modified in 45 days,
then it will be automatically marked expired and will not serve on any
inventory.</p>
<ul>
<li>Expired creatives must be reaudited to run on third-party inventory.
To unexpire a creative for third-party inventory, set audit_status to
"pending".</li>
<li>Expired creatives do not need to be reaudited to run on direct
inventory. To unexpire a creative for direct inventory, set audit_status
to "no_audit".</li>
</ul>
<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
Sherlock flags the creative for having malware or loading blocked
domains, this is set to true to prevent the creative from serving.</p>
<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_hosted</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
true, the creative is hosted by Xandr.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
lifetime budget in dollars.</p>

class="note note_note">
<b>Note:</b> To include this field in a GET
response, pass attributes=1 in the query string.


<p><strong>Default:</strong> unlimited</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
lifetime limit for number of impressions.</p>

class="note note_note">
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<p><strong>Default:</strong> unlimited</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
daily budget in dollars.</p>

class="note note_note">
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<p><strong>Default:</strong> unlimited</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
daily limit for number of impressions.</p>

class="note note_note">
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<p><strong>Default:</strong> unlimited</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
If <code class="ph codeph">true</code>, daily budgeted spend is spread
evenly throughout a day.
class="note note_note">
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_safety_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Admin-only.
If <code class="ph codeph">true</code>, spend per minute is limited to a
maximum of 1% of the lifetime budget and 5% of the daily budget.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">You
can attach targeting such as gender and geography to a creative by
creating a <a
href="profile-service.md"
class="xref" target="_blank">profile</a> and associating it here.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">folder</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">To
arrange your creatives in folders for convenience (usually in the UI)
you will create a folder using the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Folder Service</a> and then associate it here
via folder ID or in the Creative Folder service via creative ID. Output
is {"id": "41", "name": "MyFolder"}.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_items</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
line items that are associated with the creative. See <a
href="creative-service.md#CreativeService-LineItems"
class="xref" target="_blank">Line Items</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
pixels to serve with the creative. They can be for external impression
tracking, external click tracking, or other purposes, such as adding the
AdChoices icon to a creative. See <a
href="creative-service.md#CreativeService-Pixels"
class="xref" target="_blank">Pixels</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixel_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.
Please use the pixels array instead. The URL of an impression pixel to
serve with the media URL or content.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixel_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.
Please use the pixels array instead. The URL of a secure (HTTPS)
impression pixel to serve with the media URL content on a secure ad
call.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pixel_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.
Please use the pixels array instead. The type of impression pixel. This
field must be set if pixel_url is used. Possible values: "javascript" or
"image".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">no_iframes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Deprecated.
If true, the bidder will not serve this creative when an iframe is
detected in the ad call.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">track_clicks</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Deprecated.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">flash_backup_content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>For
a flash creative, this is the content of the backup creative that will
be served if a user's browser does not support flash. For an in-banner
video creative, this is the content of the poster image that will
display before users click play and after the video has finished
playing. This field must be used in combination with
flash_backup_file_name.</p>
<p>Once the backup creative has been uploaded, the content will be
stored on the CDN, and the location will be set in the flash_backup_url
field. Neither flash_backup_content nor flash_backup_file_name can be
retrieved on GET.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> if using flash_backup_file_name.</p>
<p><strong>Write Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">flash_backup_file_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
field must be used in combination with flash_backup_content. This is the
file name and extension of the backup creative.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> if using flash_backup_content.</p>
<p><strong>Write Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">flash_backup_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">For
a flash creative, this is the URL of a 3rd-party creative that will be
served if the user's browser does not support flash. For an in-banner
video creative, this is the URL of the poster image that will display
before users click play and after the video has finished playing.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_control</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
is a flag used to mark this creative as part of a control/test group in
A/B testing.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
list of segments that a user will be added to upon viewing or clicking
on this creative. For more information, see <a
href="creative-service.md#CreativeService-Segments"
class="xref" target="_blank">Segments</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when this creative was created. If it was created before
January 2010, this will be zero.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_activity</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the creative was last modified. Timezone is UTC.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_subtypes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_upload_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">backup_upload_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">use_dynamic_click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true,</code> the (optional) landing page URL for
non-3rd party image and flash creatives is set at the campaign or line
item level.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">size_in_bytes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
size of an uploaded creative (in bytes).</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">text_title</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(25)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
top line of text displayed in a text creative.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template is for the "text" format.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">text_description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(70)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
lower line of text displayed in a text creative.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template is for the "text" format.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">text_display_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(35)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
readable URL displayed in a text creative.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST,</code> if
template is for the "text" format.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_action</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
action that the device should take when the creative is clicked.
Currently, this field will be set to the only supported click action,
"click-to-web".</p>
<p><strong>Default:</strong> "click-to-web"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(2000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
target of the click_action. For click-to-web, this is the click_url of
the creative.</p>
<p>click_url will eventually be deprecated in favor of this field. In
the meantime, setting click_url or click_target will have the same
effect.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
categories that describe the creative and offer type.</p>

class="note note_note">
<b>Note:</b>
<p>To include categories in a GET response, pass attributes=1 in the
query string. To retrieve a full list of categories, see the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Category Service</a>.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">adservers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ad servers that deliver the creative or are called for data collection
purposes during the delivery of the creative.</p>

class="note note_note">
<b>Note:</b> To include adservers in a GET
response, pass <code class="ph codeph">attributes=1</code> in the query
string. To retrieve a full list of ad servers, see the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Ad Server Service</a> .


<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
attributes that describe technical characteristics of the creative, such
as "Expandable" or "Video".</p>

class="note note_note">
<b>Note:</b>
<p>To include technical attributes in a GET response, pass attributes=1
in the query string. To retrieve a full list of technical attributes,
see the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a>.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">language</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
language of the creative. To retrieve a full list of languages, see the
<a
href="language-service.md"
class="xref" target="_blank">Language Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">brand</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
brand of the company advertising the creative and the category
associated with the brand. For more details, see <a
href="creative-service.md#CreativeService-Brand"
class="xref" target="_blank">Brand</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">pop_values</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">sla</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Creatives
set to "0" will be submitted for audit with a standard SLA.</p>
class="note caution note_caution">
CAUTION: Creatives submitted with any
number other than 0 will result in a priority audit (when enabled) and
resulting fees.

<p>If you have a supplemental services agreement with Xandr for priority
audits, you can submit a creative for priority audit (auditing within 2
hours during business hours) by setting this field to 2.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">sla_eta</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
estimate time of completion for a priority audit.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Read-only.
The code that defines the advertiser's primary currency (for example,
USD). For more details about the currency types available, see <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Currency Service</a>.</p>
<p><strong>Default:</strong> Member's default currency.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">first_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the creative first served, refreshed on an hourly
basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter creatives based on when they first served,
see <a
href="creative-service.md#CreativeService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_run</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the creative last served, refreshed on an hourly
basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to creatives based on when they last served, see <a
href="creative-service.md#CreativeService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">mobile</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Information
needed for mobile creatives to pass the creative audit. See <a
href="creative-service.md#CreativeService-Mobile"
class="xref" target="_blank">Mobile</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">video_attribute</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Attributes
for third-party in-stream (VAST) and hosted video creatives.</p>

<b>Note:</b>
class="note note_note">
<b>Note:</b>
<p>To add &amp; update vast creatives, use the <code
class="ph codeph">/creative-vast</code> service. See <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Vast Service</a> for details.</p>


<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
<code class="ph codeph">stats</code> object has been deprecated (as of
October 17, 2016). Use the <a
href="creative-service.md#"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">content_source</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
source of this creative's content.</p>
<p><strong>Default:</strong> <code
class="ph codeph">"standard"</code></p>
<p>Allowed values:</p>
<ul>
<li><code class="ph codeph">"standard"</code>: This creative consists of
content hosted on an ad server, that will generally be retrieved with a
single HTTP request.</li>
<li><p><code class="ph codeph">"mediation"</code>: This creative is a
container that is used to fetch content from another ad server for the
purposes of mediation. Due to the way mediation is performed, this can
involve making multiple HTTP requests in sequence. For more information,
see the <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Custom Request Template Service</a>.</p>

class="note note_note">
<b>Note:</b> If this field is set to <code
class="ph codeph">"mediation"</code>, the following actions will occur:
<ul>
<li>A "mediation" technical attribute will be added to the creative's
<code class="ph codeph">technical_attributes</code> array.</li>
</ul>
<p>In addition, the following validations will be performed:</p>
<ul>
<li><code class="ph codeph">audit_status</code>" cannot be set to <code
class="ph codeph">"pending"</code>; instead it will always be set to
<code class="ph codeph">"no_audit"</code>.</li>
<li><code class="ph codeph">allow_audit</code> cannot be set to <code
class="ph codeph">true</code>; instead it will always be set to <code
class="ph codeph">false</code>.</li>
<li>The<code class="ph codeph">custom_request_template</code>
multi-object must be defined for the creative.</li>
<li>The <code class="ph codeph">custom_macros</code> array must be
populated with macros defined by the template parameters associated with
the <a
href="creative-service.md#CreativeService-CustomRequestTemplate"
class="xref" target="_blank">Custom Request Template</a>.</li>
<li>The following fields will no longer be required:
<ul>
<li><code class="ph codeph">content</code></li>
<li><code class="ph codeph">media_url</code></li>
<li><code class="ph codeph">template</code></li>
</ul></li>
</ul>

</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">custom_request_template</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">multi-object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
the value of this creative's <code
class="ph codeph">content_source</code> field is set to <code
class="ph codeph">"mediation"</code>, this object describes the
association between this creative and a custom request template which is
used to populate the creative with content. For more information, see <a
href="creative-service.md#CreativeService-CustomRequestTemplate"
class="xref" target="_blank">Custom Request Template</a>.</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, if
<code class="ph codeph">content_source</code> is set to <code
class="ph codeph">"mediation".</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">competitive_brands</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Creatives
associated with the brands in this array will not serve together in
<code class="ph codeph">/mtj</code> auctions. The classic example of
competing brands is Coke vs. Pepsi. See <a
href="creative-service.md#CreativeService-CompetitiveBrands"
class="xref" target="_blank">Competitive Brands</a> below. For more
information about the brands in our system, see the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Brand Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">competitive_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Creatives
associated with the categories in this array will not serve together in
<code class="ph codeph">/mtj</code> auctions, e.g., "Dating" and
"Education". See <a
href="creative-service.md#CreativeService-CompetitiveCategories"
class="xref" target="_blank">Competitive Categories</a> below. For more
information about the categories we apply to creatives (and brands), see
the <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Category Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">thirdparty_pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>An
array of third-party pixels associated with the creative. You can
automatically attach these pixels to all creatives owned by an
advertiser or member using the <a
href="third-party-pixel-service.md"
class="xref" target="_blank">Third-party Pixel service</a> or attach
them individually at the creative level using the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">native</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Deprecated.
If this creative is a native ad, this object is populated with the
elements required for native ads. For more information, see the
description of the <a
href="creative-service.md#CreativeService-Native"
class="xref" target="_blank">Native</a> object below.</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> Required on <code
class="ph codeph">POST</code> and <code class="ph codeph">PUT</code> for
native ads. Technically, native ads are identified by our system as
those creatives that have a <code class="ph codeph">template</code> with
a <code class="ph codeph">creative_format_id</code> of <code
class="ph codeph">12</code> that identifies them as <code
class="ph codeph">native</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> native_attribute </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
is the new native object which contains elements required for native
ads. For more information, see the description of the <a
href="creative-service.md#CreativeService-NativeAttribute"
class="xref" target="_blank">Native Attribute</a> object below.</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> Required for native ad with template
39461.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
list of third-party click tracking URLs intended to be used with native
creatives. For more information, see <a
href="creative-service.md#CreativeService-ClickTrackers"
class="xref" target="_blank">Click Trackers</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">impression_trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
list of third-party impression tracking URLs intended to be used with
native creatives. For more information, see <a
href="creative-service.md#CreativeService-ImpressionTrackers"
class="xref" target="_blank">Impression Trackers</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">adx_audit</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
object contains information about the status and feedback related to the
Google AdExchange audit of the creative. Information about whether or
not a creative has been approved is returned in the <code
class="ph codeph">audit_status</code> field.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">flash_backup_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">This
is the secure version of <code
class="ph codeph">flash_backup_url</code>, which is served on a secure
ad call.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">msft_external_audit_feedback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">msft_external_audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
ID of the member that owns the creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
asset id of the original file and a field describing what the asset must
be used for. It is used to associate Xandr hosted files to your
creative. This array will auto-populate when uploading files via the
API. For more information, see <a
href="creative-service.md#CreativeService-MediaAssets"
class="xref" target="_blank">Media Assets</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">ad_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
class="note tip note_tip">
<b>Tip:</b> This field only applies when you
are associating creatives to <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">augmented line items</a>.


<p>The type of creative used. Possible values:</p>
<ul>
<li><code class="ph codeph">banner</code></li>
<li><code class="ph codeph">video</code> (includes audio types)</li>
<li><code class="ph codeph">native</code></li>
</ul>
<p>This value determines how auction items are tracked for the line
item's buying strategy, paying strategy, optimization options, creative
association, and targeting options.</p>

class="note note_note">
<b>Note:</b> All creatives associated to a
line item must have the same ad type, which should match the <code
class="ph codeph">ad_type</code> selected in the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Line Item Service - ALI</a>.

</td>
</tr>
</tbody>
</table>



**Brand**

The `brand` object contains the following fields.



<b>Note:</b>

This object is read-only. To set the brand for a creative, use the
`brand_id`field outside of this object.



<table id="buy-side-service-template__table_mdv_4g3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_mdv_4g3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_mdv_4g3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_mdv_4g3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__3"><p>The
ID of the brand of the company advertising the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__3"><p>The
name of the brand of the company advertising the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__1"><code
class="ph codeph">category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__3"><p>The
ID of the category associated with the brand.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__1"><code
class="ph codeph">category_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mdv_4g3_wwb__entry__3"><p>The
name of the category associated with the brand.</p>

class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">category_name</code> field is returned
only when you pass <code
class="ph codeph">show_category_name=true</code> in the query string of
your call.</p>


<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Campaigns**

Each object in the `campaigns` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>.

<table id="buy-side-service-template__table_rfy_sg3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_rfy_sg3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_rfy_sg3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_rfy_sg3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__3"><p>The
ID of the campaign. Either "id" or "code" is required when updating
campaign association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__1"><code
class="ph codeph">campaign_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__3">The ID
of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__3">The ID
of the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__3"><p>The
name of the campaign.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__3"><p>The
state of the campaign. Possible values: "active", "inactive", or
"parent_inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rfy_sg3_wwb__entry__3"><p>The
custom code for the campaign. Either "id" or "code" is required when
updating line item association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**Competitive Brands**



<b>Note:</b> For more information about
brands, see the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Brand Service</a>.



<table id="buy-side-service-template__table_fxq_xg3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_fxq_xg3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_fxq_xg3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_fxq_xg3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fxq_xg3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fxq_xg3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fxq_xg3_wwb__entry__3">The ID
of the brand.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fxq_xg3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fxq_xg3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fxq_xg3_wwb__entry__3">The
name of the brand.</td>
</tr>
</tbody>
</table>

**Competitive Categories**



<b>Note:</b> For more information about
categories, see the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Category Service</a>.



<table id="buy-side-service-template__table_kbx_1h3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_kbx_1h3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_kbx_1h3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_kbx_1h3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kbx_1h3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kbx_1h3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kbx_1h3_wwb__entry__3">The ID
of the category.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kbx_1h3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kbx_1h3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kbx_1h3_wwb__entry__3">The
name of the category.</td>
</tr>
</tbody>
</table>

**Creative Template**

You can use the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Template Service</a> to view all rendering
templates that can be assigned to creatives.

<table id="buy-side-service-template__table_omv_ch3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_omv_ch3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_omv_ch3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_omv_ch3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__3">The ID
of creative template.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__3"><p>The
name of the creative template.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__1"><code
class="ph codeph">media_subtype_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__3"><p>The
ID of the media subtype assigned to the template. You can use the <a
href="media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> to view all
supported media subtypes.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__1"><code
class="ph codeph">format_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_omv_ch3_wwb__entry__3"><p>The
name of the format assigned to the template. You can use the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Format Service</a> to view all supported
formats.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>



>

## **Frequently Used Creative Templates**

For more information, see <a
href="selecting-the-correct-template-for-your-creative.md"
class="xref" target="_blank">Selecting the Correct Template for Your
Creative</a>.

<table id="buy-side-service-template__table_sfs_2h3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_sfs_2h3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Template ID</th>
<th id="buy-side-service-template__table_sfs_2h3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Creative Type</th>
<th id="buy-side-service-template__table_sfs_2h3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Requirements</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__1"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__2">Single
URL that points to a piece of html code.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__3">You
will need to pass the URL in the media_url field and set an id of 1 in
the template object.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__1"><code
class="ph codeph">2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__2">Single
URL that points to a piece of Javascript code.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__3">You
will need to pass the URL in the media_url field and set an id of 2 in
the template object.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__1"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__2">Creative
that starts and ends with Javascript components, even if the Javascript
code writes HTML.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__3">You
will need to pass the Javascript code in the content field and set an id
of 5 in the template object.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__1"><code
class="ph codeph">6</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__2">Creative
that starts and ends with HTML components, even if these HTML components
are &lt;script&gt; tags.</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sfs_2h3_wwb__entry__3">You
will need to pass the html code in the content field and set an id of 6
in the template object.</td>
</tr>
</tbody>
</table>

**Custom Macros**

If the creative template provides default values for a macro, passing
the codes and values here is optional. If the template defines a custom
macro as required, however, you must pass the code and value for the
macro.

<table id="buy-side-service-template__table_tfs_2h3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_tfs_2h3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_tfs_2h3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_tfs_2h3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tfs_2h3_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tfs_2h3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tfs_2h3_wwb__entry__3">The
exact name of the macro, as it is used in the code of the creative
template, for example, "BORDER_COLOR".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tfs_2h3_wwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tfs_2h3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tfs_2h3_wwb__entry__3">The
value for the macro. Note that this value must match the type of the
macro, as defined in the template. For example, if a macro is of the
type "integer", the value must be an integer. The possible macro types
are "true/false", "string", "url", "integer", "decimal", and
"select_from_list".</td>
</tr>
</tbody>
</table>

See the *Adding a creative that uses a custom rendering template*
example in the <a
href="creative-service.md#CreativeService-Examples"
class="xref" target="_blank">Examples</a> below for further insight.

**Custom Request Template**

<table id="buy-side-service-template__table_vkv_gh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_vkv_gh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_vkv_gh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_vkv_gh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__3">The
creative custom request template associated with this creative, if its
<code class="ph codeph">content_source</code> is set to <code
class="ph codeph">"mediation"</code>. For more information, see the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Custom Request Template Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__1"><code
class="ph codeph">timeout_ms</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__3">If this
is a "mediation" creative, it will make at least one HTTP request to an
external ad server, which may in turn make one or more additional
requests. This is the time beyond which we will not wait any longer for
this creative to be populated with content. For more information, see
the <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Creative Custom Request Template Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__1"><code
class="ph codeph">last_activity</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vkv_gh3_wwb__entry__3">The
date and time when the creative was last modified. Timezone is UTC.
<strong>Read Only.</strong></td>
</tr>
</tbody>
</table>

**Line Items**

Each object in the `line_items` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a>.

<table id="buy-side-service-template__table_wkv_gh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_wkv_gh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_wkv_gh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_wkv_gh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__3"><p>The
name of the line item.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__3"><p>The
state of the creative. Possible values: "active" or "inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__3"><p>The
ID of the line item. Either "id" or "code" is required when updating
line item association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wkv_gh3_wwb__entry__3"><p>The
custom code for the line item. Either "id" or "code" is required when
updating line item association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**Media Assets**

The `media_assets` array of objects contain the following fields:

<table id="buy-side-service-template__table_xkv_gh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_xkv_gh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_xkv_gh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_xkv_gh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xkv_gh3_wwb__entry__1"><code
class="ph codeph">media_asset_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xkv_gh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xkv_gh3_wwb__entry__3">The
unique ID of the creative asset.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xkv_gh3_wwb__entry__1"><code
class="ph codeph">creative_field</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xkv_gh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xkv_gh3_wwb__entry__3"><p>This
field denotes what that particular creative asset must be used for.
Possible valid values are:</p>
<ul>
<li>null (if asset is VAST or HTML5)</li>
<li>media_url</li>
<li>flash_backup_url</li>
<li>native_icon_img_url</li>
<li>native_main_media</li>
<li>macro_CODE_FOR_MACRO - this is dynamically generated based on the
macros for the selected template.</li>
</ul></td>
</tr>
</tbody>
</table>

For each `media_assets` array, the following rules apply:

- Each field value can only be used once per creative. For example, you
  cannot have two 'flash_backup_url' assets.
- The value must be one of the valid values.
- VAST / HTML5 creatives must have one, and only one, asset.
- All other creatives can have 0 or more media assets.

**Example**:

``` pre
"media_assets": [
    {
        "media_asset_id": 22,
        "creative_field": "media_url"
    }, 
    {
        "media_asset_id": 23,
        "creative_field": "flash_backup_url"
    }
]
```

**Mobile**

<table id="buy-side-service-template__table_n4l_nh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_n4l_nh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_n4l_nh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_n4l_nh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_n4l_nh3_wwb__entry__1"><code
class="ph codeph">alternative_landing_page_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_n4l_nh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_n4l_nh3_wwb__entry__3">An
alternative landing page URL that can be viewed in a desktop browser for
creatives that have a landing page targeted to a specific device,
operating system, or carrier. You must provide an auditable URL in order
for your creative to pass auditing.</td>
</tr>
</tbody>
</table>

**Native Attribute**

The native_attribute object contains the following fields. For more
information, see Adding a native creative in the <a
href="creative-service.md#CreativeServices-Examples"
class="xref" target="_blank">Examples</a> below.

<table id="buy-side-service-template__table_o4l_nh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_o4l_nh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_o4l_nh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_o4l_nh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">link</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">URLs
associated with the native creative. See <a
href="creative-service.md#CreativeServices-Link"
class="xref" target="_blank">Link</a> below for details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">image_trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">A list
of third-party impression tracking URLs intended to be used with native
creatives.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">javascript_trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">A list
of third-party impression tracking URLs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">data_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">Attributes
of the native creative. See <a
href="creative-service.md#CreativeServices-DataAsset"
class="xref" target="_blank">Data Asset</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">image_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">Attributes
of each individual image. See <a
href="creative-service.md#CreativeServices-ImageAsset"
class="xref" target="_blank">Image Asset</a> for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">privacy_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">If
support was indicated in the request, URL of a page informing the user
about the buyer's targeting activity. Xandr does not provide a default
privacy link.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__1"><code
class="ph codeph">video_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4l_nh3_wwb__entry__3">A list
of video_asset objects. See Video Assets for more details.</td>
</tr>
</tbody>
</table>

**Link**

The link object contains the landing page URL, fallback URL and Trackers
associated with the native creative. The link object is required for
native attribute.

The link object includes the following fields:

<table id="buy-side-service-template__table_d4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_d4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_d4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_d4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__3"><p>The
landing page of the native creative.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT, POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__1"><code
class="ph codeph">fallback_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__3">A
backup url if the main deeplink url is not supported.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__1"><code
class="ph codeph">trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_d4g_sh3_wwb__entry__3">A list
of third-party tracking URLs intended to be used with native
creatives.</td>
</tr>
</tbody>
</table>

<table id="buy-side-service-template__table_e4g_sh3_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><p>All native creatives are submitted for secure
auditing by default.</p>
<ul>
<li>If the secure url has not been specified for any tracker (image
trackers, javascript trackers, and creative image asset trackers),
secure audit is disabled for that creative.</li>
<li>If the secure URL has not been specified, but URL is prefixed with
`https`, the creative will be submitted for secure audit.</li>
</ul></td>
</tr>
</tbody>
</table>

**Link Tracker**

The link_tracker object includes the following fields:

<table id="buy-side-service-template__table_g4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_g4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_g4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_g4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_g4g_sh3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_g4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_g4g_sh3_wwb__entry__3">A
third-party tracking URL.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_g4g_sh3_wwb__entry__1"><code
class="ph codeph">url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_g4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_g4g_sh3_wwb__entry__3">(optional)
A secure third-party tracking URL.</td>
</tr>
</tbody>
</table>

**Image Tracker**

The image_tracker object includes the following fields:

<table id="buy-side-service-template__table_h4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_h4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_h4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_h4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h4g_sh3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h4g_sh3_wwb__entry__3">A
third-party impression tracking URL.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h4g_sh3_wwb__entry__1"><code
class="ph codeph">url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_h4g_sh3_wwb__entry__3">A
third-party impression tracking URL (that uses SSL).</td>
</tr>
</tbody>
</table>

**Javascript Tracker**

The javascript_tracker object includes the following fields:

<table id="buy-side-service-template__table_i4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_i4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_i4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_i4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4g_sh3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4g_sh3_wwb__entry__3">A
third-party javascript tracking URL.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4g_sh3_wwb__entry__1"><code
class="ph codeph">url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_i4g_sh3_wwb__entry__3">A
third-party javascript tracking URL (that uses SSL).</td>
</tr>
</tbody>
</table>

**Data Asset**

Each data_asset represents a text component of the native creative. The
data_assets object includes the following fields:

<table id="buy-side-service-template__table_j4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_j4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_j4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_j4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4g_sh3_wwb__entry__1"><code
class="ph codeph">data_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4g_sh3_wwb__entry__3"><p>The
asset type for the native creative. Possible values:</p>
<ul>
<li>title</li>
<li>description</li>
<li>sponsored_by</li>
<li>call_to_action</li>
<li>display_url</li>
<li>price</li>
<li>sale_price</li>
<li>rating</li>
<li>likes</li>
<li>downloads</li>
<li>phone</li>
<li>address</li>
<li>additional_description</li>
<li>custom_title_1 - custom_title_5</li>
<li>custom_body_1 - custom_body_5</li>
<li>custom_call_to_action_1 - custom_call_to_action_5</li>
<li>custom_social_url_1 - custom_social_url_5</li>
<li><p>custom_display_url_1 - custom_display_url_5</p></li>
</ul>

<table id="buy-side-service-template__table_l4g_sh3_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">The data_type string should have double quotation
marks around it.</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4g_sh3_wwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_j4g_sh3_wwb__entry__3"><p>The
content of the data_type asset that you have specified. Possible values
include:</p>
<ul>
<li>title: title of the creative.</li>
<li>description: description of the product or service being
advertised.</li>
<li>sponsored_by: brand name of the sponsor.</li>
<li>call_to_action: suggested action for next step.</li>
<li>display_url: the URL you would like displayed.</li>
<li>price: price for product / app / in-app purchase.</li>
<li>sale_price: sale price that can be used together with price to
indicate a discounted price.</li>
<li>rating: rating of the product being offered.</li>
<li>likes: social media likes.</li>
<li>downloads: number downloads/installs of this product.</li>
<li>phone: phone number</li>
<li>address: address</li>
<li>additional_description: the longer version of your ad's
description.</li>
<li>custom_title_1 - custom_title_5: additional titles that will appear
on the native creative.</li>
<li>custom_body_1 - custom_body_5: additional body text that will appear
on the native creative.</li>
<li>custom_call_to_action_1 - custom_call_to_action_5: additional
calls-to-action that will encourage the user to take the necessary
action after viewing the native creative (e.g., signing for the mailing
list).</li>
<li>custom_social_url_1 - custom_social_url_5: social URLs that will
take the user to the corresponding social media platforms.</li>
<li><p>custom_display_url_1 - custom_display_url_5: additional public
URLs that may be visible and/or automatically redirect the user to a web
page that is connected to the landing page's domain.</p></li>
</ul>

<table id="buy-side-service-template__table_n4g_sh3_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">The value string should have double quotation marks
around it.</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

**Image Asset**

Each image_asset represents an image component of the native creative.
The image_asset object includes the following fields:

<table id="buy-side-service-template__table_o4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_o4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_o4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_o4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__1"><code
class="ph codeph">image_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__3"><p>The
format of the image. Possible values include:</p>
<ul>
<li>main_image: primary image that will appear when the native creative
is rendered.</li>
<li>icon_image: primary icon that will appear when the native creative
is rendered.</li>
<li>custom_image_1 - custom_image_5: additional images that will appear
when the native creative is rendered.</li>
<li>custom_icon_1 - custom_Icon_5: additional icons that will appear
when the native creative is rendered.</li>
<li>custom_social_icon_1 - custom_social_icon_5: corresponding social
media icons that will appear when native creative is rendered.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__1"><code
class="ph codeph">media_asset_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__3"><p>The
id of the media asset. Required for hosted native creatives.</p>

<table id="buy-side-service-template__table_q4g_sh3_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">if media_asset_id can be retrieved, the
creative_asset_image object will be populated automatically.</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__1"><code
class="ph codeph">creative_asset_image</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__3">The
object containing details of the creative asset. Required for
third-party native creatives. See details in <a
href="creative-service.md#CreativeServices-CreativeAssetImage"
class="xref" target="_blank">Creative Asset Image</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__1"><code
class="ph codeph">image_resize_setting</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_o4g_sh3_wwb__entry__3">The
object containing the image resize settings. See details in <a
href="creative-service.md#CreativeServices-ImageResizeSetting"
class="xref" target="_blank">Image Resize Setting</a> below.</td>
</tr>
</tbody>
</table>

**Creative Asset Image**

The creative_asset_image object includes the following fields:

<table id="buy-side-service-template__table_r4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_r4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_r4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_r4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__3">The
landing page url of the image.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__1"><code
class="ph codeph">url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__3">The
secure landing page url of the image.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__3">The
width of the image. Value must be &gt; 0.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_r4g_sh3_wwb__entry__3">The
height of the image. Value must be &gt; 0.</td>
</tr>
</tbody>
</table>

**Image Resize Setting**

The image_resize_setting object includes the following fields:

<table id="buy-side-service-template__table_s4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_s4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_s4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_s4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__1"><code
class="ph codeph">resize_enabled</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__3"><p>Indicates
whether the creative should be resized. Possible values include:</p>
<ul>
<li>True</li>
<li>False</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__1"><code
class="ph codeph">crop_enabled</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__3"><p>Indicates
whether the creative should be cropped to fill placement. Possible
values include:</p>
<ul>
<li>True</li>
<li>False</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__1"><code
class="ph codeph">aspect_ratio_upper_bound</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__3">The
maximum aspect ratio allowed for the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__1"><code
class="ph codeph">aspect_ratio_lower_bound</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__3">The
minimum aspect ratio allowed for the creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__1"><code
class="ph codeph">max_scale_factor</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_s4g_sh3_wwb__entry__3">The
maximum value that the creative's width and height can be scaled.</td>
</tr>
</tbody>
</table>

**Video Asset**

Each video \_asset represents a video component of the native creative.
The video_asset  object includes the following fields:

<table id="buy-side-service-template__table_v4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_v4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_v4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_v4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__1"><code
class="ph codeph">media_asset_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__3"><p>The
id of the hosted video media asset.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT, POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__1"><code
class="ph codeph">vast_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__3"><p>URL
to a VAST document. Must be secure.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT, POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__1"><code
class="ph codeph">trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__3">Optional
VAST event trackers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__1"><code
class="ph codeph">media_files</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__3"><p>Array
of available media files. See Media File for more details.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__1"><code
class="ph codeph">duration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__3"><p>Duration
(in milliseconds) of the video extracted from video media asset or VAST
document.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__1"><code
class="ph codeph">minimum_vast_version</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_v4g_sh3_wwb__entry__3"><p>The
minimum VAST version required to play the video. Possible Values:</p>
<ul>
<li>2.0</li>
<li>3.0</li>
<li>4.0</li>
</ul>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

Only one of { media_asset_id , vast_url } should be populated per
request.

**Vast Tracker**

The vast_tracker object includes the following fields:

<table id="buy-side-service-template__table_x4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_x4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_x4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_x4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x4g_sh3_wwb__entry__1"><code
class="ph codeph">vast_event_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x4g_sh3_wwb__entry__3"><p>The
type of tracking event. Possible values include:</p>
<ul>
<li>service</li>
<li>start</li>
<li>skip</li>
<li>error</li>
<li>first_quartile</li>
<li>completion</li>
<li>impression</li>
<li>click</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x4g_sh3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x4g_sh3_wwb__entry__3">URL to
a VAST document. Must be secure.</td>
</tr>
</tbody>
</table>

**Media File**

The media_file object includes the following fields:

<table id="buy-side-service-template__table_z4g_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_z4g_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_z4g_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_z4g_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__1"><code
class="ph codeph">bitrate_kbps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__3">Bitrate
of the media file.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__1"><code
class="ph codeph">mime_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__3">MIME
type of the media file.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__3">Width
of the media file.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_z4g_sh3_wwb__entry__3">Height
of the media file.</td>
</tr>
</tbody>
</table>

**Native**

The `native` object used to contain the following fields, which have all
been deprecated.

<table id="buy-side-service-template__table_apg_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_apg_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_apg_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_apg_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">title</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">text</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">text</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">full_text</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">text</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">context</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">icon_img_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">main_media</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">sponsored</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">cta</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">rating</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">click_fallback_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__1"><code
class="ph codeph">custom_key_values</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_apg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
</tbody>
</table>

**Main Media**

<table id="buy-side-service-template__table_bpg_sh3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_bpg_sh3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_bpg_sh3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_bpg_sh3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__1"><code
class="ph codeph"> width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__1"><code
class="ph codeph"> height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__1"><code
class="ph codeph"> media_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__1"><code
class="ph codeph"> media_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_bpg_sh3_wwb__entry__3">Deprecated.</td>
</tr>
</tbody>
</table>



<b>Note:</b> There can only be one main_media
object associated with a native creative.



**Custom Key Values**

<table id="buy-side-service-template__table_oxv_tm3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_oxv_tm3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_oxv_tm3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_oxv_tm3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_oxv_tm3_wwb__entry__1"><code
class="ph codeph"> custom_key</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_oxv_tm3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_oxv_tm3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_oxv_tm3_wwb__entry__1"><code
class="ph codeph"> custom_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_oxv_tm3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_oxv_tm3_wwb__entry__3">Deprecated.</td>
</tr>
</tbody>
</table>

**Click Trackers**

<table id="buy-side-service-template__table_pxv_tm3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_pxv_tm3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_pxv_tm3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_pxv_tm3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pxv_tm3_wwb__entry__1"><code
class="ph codeph"> click_tracker_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pxv_tm3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pxv_tm3_wwb__entry__3">Deprecated.</td>
</tr>
</tbody>
</table>

**Impression Trackers**

<table id="buy-side-service-template__table_qxv_tm3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_qxv_tm3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_qxv_tm3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_qxv_tm3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qxv_tm3_wwb__entry__1"><code
class="ph codeph"> impression_tracker_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qxv_tm3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qxv_tm3_wwb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qxv_tm3_wwb__entry__1"><code
class="ph codeph"> impression_tracker_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qxv_tm3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qxv_tm3_wwb__entry__3">Deprecated.</td>
</tr>
</tbody>
</table>

**Pixels**

You use this array to add Xandr-approved and custom pixels to a
creative. You can add up to five pixels for a creative.

Xandr-approved pixels are from trusted, commonly-used providers. Most of
them do not cause the creative to be resubmitted for audit. To add a
Xandr-approved pixel to a creative, you need to pass only the
pixel_template_id and the number of params that the pixel requires. See
the *Adding a Xandr-approved pixel to a creative* example in <a
href="creative-service.md#CreativeService-Examples"
class="xref" target="_blank">Examples</a> below for further guidance.
Note that you can use the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Pixel Template Service</a> to get information about
these pixels, including whether or not they trigger re-audit.

Custom pixels are defined by you and do cause the creative to be
resubmitted for audit. To add a custom pixel, you need to pass only the
format and, depending on the format, the content or url. See the *Adding
a custom pixel to a creative* example in <a
href="creative-service.md#CreativeService-Examples"
class="xref" target="_blank">Examples</a> below for further guidance.

class="note caution note_caution">

CAUTION: When you make a PUT call to
update the pixels array, the array is completely overwritten with the
information in the JSON-formatted file. Therefore, if the array already
includes pixels, be sure to include those pixels in the JSON-formatted
file as well.



<table id="buy-side-service-template__table_jtk_fn3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_jtk_fn3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_jtk_fn3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_jtk_fn3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3"><p>The
Xandr-assigned ID of the pixel array. You will associate pixels via the
pixel_template_id, content, or URL fields listed below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">pixel_template_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">The ID
of the Xandr-approved pixel. You can use the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Pixel Template Service</a> to get this ID.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">param_1</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">For
Xandr-approved pixel: The value for the first parameter in the pixel
content or URL. To find out how many parameters are required for a
Xandr-approved pixel, use the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Pixel Template Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">param_2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">For
Xandr-approved pixel: The value for the second parameter in the pixel
content or URL.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">param_3</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">For
Xandr-approved pixel: The value for the third parameter in the pixel
content or URL.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">param_4</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">For
Xandr-approved pixel: The value for the fourth parameter in the pixel
content or URL.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">param_5</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">For
Xandr-approved pixel: The value for the fifth parameter in the pixel
content or URL.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">The
format of the pixel. Possible values: "raw-js", "url-html", "url-js", or
"url-image".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">If the
pixel format is "raw-js", the HTML or JavaScript content to serve with
the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">secure_content</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">If the
pixel format is "raw-js", the HTML or JavaScript content to serve with
the creative on a secure (HTTPS) ad call.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">If the
pixel format is "url-html", "url-js", "url-image", or "raw-url", the URL
of the HTML, JavaScript, or Image pixel to serve with the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__1"><code
class="ph codeph">secure_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_jtk_fn3_wwb__entry__3">If the
pixel format is "url-html", "url-js", "url-image", or "raw-url", the URL
of the HTML, JavaScript, or Image pixel to serve with the creative on a
secure (HTTPS) call.</td>
</tr>
</tbody>
</table>

**Political**

The "political" object used to contain the following fields:

<table id="buy-side-service-template__table_ktk_fn3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ktk_fn3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ktk_fn3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_ktk_fn3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ktk_fn3_wwb__entry__1"><code
class="ph codeph">in_scope</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ktk_fn3_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ktk_fn3_wwb__entry__3">Determines
if the US political creative is in scope to be regulated. If yes, then
all required political buyer information must be provided at the
insertion level. For additional information, see the Create an Insertion
Order documentation via our UI (login is required).</td>
</tr>
</tbody>
</table>

**Pop Values**



<b>Note:</b>

The pop_values fields are deprecated and ignored/not used by our
systems.



These fields should be included in a "pop_values" array within the
creative JSON. Please see below for an example.

<table id="buy-side-service-template__table_ovs_mn3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ovs_mn3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ovs_mn3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_ovs_mn3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_window_maximize</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> the publisher's tag should maximize
the window. Only relevant for creatives with format "url-html" and
"url-js". If pop_window_maximize is set to true, then neither "height"
nor "width" should be set on the creative.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_is_tag_initiated</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> the creative's tag will initiate
the pop. If false, then the impression bus will initiate the pop.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_window_title</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>The
title of the popped window. Only applies to pops with
pop_is_tag_initiated set to false. Not guaranteed to be supported in all
browsers.</p>
<p><strong>Default:</strong> Network name</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_statusbar</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> a status bar is shown in the popped
window. Only applies to pops with pop_is_tag_initiated set to false. Not
guaranteed to be supported in all browsers.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_menubar</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> a menu bar is shown in the popped
window. Only applies to pops with pop_is_tag_initiated set to false. Not
guaranteed to be supported in all browsers.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_resizable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> the popped window is resizable.
Only applies to pops with pop_is_tag_initiated set to false. Not
guaranteed to be supported in all browsers.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_scrollbars</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> scroll bars are shown in the popped
window. Only applies to pops with pop_is_tag_initiated set to false. Not
guaranteed to be supported in all browsers.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_toolbar</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> a toolbar is shown in the popped
window. Only applies to pops with pop_is_tag_initiated set to false. Not
guaranteed to be supported in all browsers.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__1"><code
class="ph codeph">pop_addressbar</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovs_mn3_wwb__entry__3"><p>If
<code class="ph codeph">true,</code> an address bar is shown in the
popped window. Only applies to pops with pop_is_tag_initiated set to
false. Not guaranteed to be supported in all browsers.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
</tbody>
</table>

**Segments**

These fields will be included in the Segments array:

<table id="buy-side-service-template__table_pvs_mn3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_pvs_mn3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_pvs_mn3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_pvs_mn3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__3"><p>The
ID of the segment.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__3">The ID
of the segment. This field contains the same information as the <code
class="ph codeph">id</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__3"><p>The
action taken by users that will add them to the segment. Possible
values: "add on view" or "add on click".</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvs_mn3_wwb__entry__3">The
segment's name.</td>
</tr>
</tbody>
</table>

**Status**

<table id="buy-side-service-template__table_qvs_mn3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_qvs_mn3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_qvs_mn3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_qvs_mn3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvs_mn3_wwb__entry__1"><code
class="ph codeph">user_ready</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvs_mn3_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvs_mn3_wwb__entry__3"><p>The
status of the creative set by the user describing if the creative is
ready to serve or not. Possible values: "true" or "false". The value of
<strong>user_ready</strong> needs to be <strong>true</strong> in order
to reactivate an expired creative along with its audit_status.</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvs_mn3_wwb__entry__1"><code
class="ph codeph">hosted_assets_association_complete</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvs_mn3_wwb__entry__2">boolean
/ null</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvs_mn3_wwb__entry__3"><p>Status
of the creative uploaded by Xandr's internal systems. Possible values:
"true" or "false" for hosted creatives and "null" for third-party
creatives.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Third-party Pixels**

The thirdparty_pixels array contains the fields in the table below.
These fields, except for `id`, are read-only. Use this service to update
the `id` of a third-party pixel or attach third-party pixels to
individual creatives.

<table id="buy-side-service-template__table_rvs_mn3_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_rvs_mn3_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_rvs_mn3_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_rvs_mn3_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__3"><p>The
pixel's ID.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__3"><p>The
full name of the pixel.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__3"><p>The
current status of the pixel (true = active).</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvs_mn3_wwb__entry__3"><p>Audit
status of the pixel.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>



<b>Note:</b> To update or create a third-party
pixel and/or attach third-party pixels to all creatives owned by the
advertiser or network member, use the <a
href="third-party-pixel-service.md"
class="xref" target="_blank">Third-party Pixel service</a>.



**First Run / Last Run**

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for
creatives based on when they first and last served, as follows:

**Retrieve only creatives that have never served**

Pass `never_run=true`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&never_run=true'
```



<b>Note:</b> You can use `never_run=true`in
combination with other filters, but please note that it will always be
an OR relationship. For example, if you pass both `never_run=true`and
`min_first_run=2012-01-01 00:00:00` in the query string, you will be
looking for creatives that have never served OR line items that first
served on or after 2012-01-01.



**Retrieve only creatives that first served on or after a specific
date**

Pass `min_first_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00'
```

**Retrieve only creatives that first served on or before a specific
date**

Pass `max_first_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only creatives first served within a specific date range**

Pass
`min_first_run=YYYY-MM-DD HH:MM:SS&max_first_run=YYYY-MM-DD HH:MM:SS`in
the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only creatives that last served on or after a specific date**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00'
```

**Retrieve only creatives that last served on or before a specific
date**

Pass `max_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&max_last_run=2012-08-01 00:00:00'
```

**Retrieve only creatives that last served within a specific date
range**

Pass
`min_last_run=YYYY-MM-DD HH:MM:SS&max_last_run=YYYY-MM-DD HH:MM:SS`in
the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00&max_last_run=2012-08-01 00:00:00'
```

**Stats**



<b>Note:</b>

The `stats`object has been deprecated (as of October 17, 2016). Use the
<a
href="creative-service.md#"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.





>

## **Changes That Cause Re-Audit**

Once a creative has passed Xandr audit (audit_status is "audited"),
changing any of the following fields causes the creative to be
resubmitted for audit (allow_audit is set to "pending"):

- width
- height
- content
- media_url
- click_url
- template
- custom_macros
- media_subtypes
- language
- categories
- technical_attributes
- brand_id
- pixel_url
- pixels (if adding or removing a custom pixel or a Xandr-approved
  pixel)
- text_title (if text creative)
- text_description (if text creative)
- text_display_url (if text creative)
- pop_window_maximize (if pop creative)
- pop_is_tag_initiated (if pop creative and changing from false to true)
- video_attribute
- media_assets
- brand_url (not applicable to API users)
- alternative_landing_page_url
- native_attribute

Also, if the audit_status is "no_audit", changing allow_audit from
"false" to "true" causes the creative to be resubmitted for Xandr audit.



>

## Creative Macros

Xandr has predefined some macros that can be used within the creative's
`media_url`, `content`, `click_url`, and `pixel_url` fields.

**Click Tracking Example**

``` pre
"media_url": "https://ad.doubleclick.net/adi/N5364.Ivillage.com/B2965815.5;sz=728x90;click0=$
{CLICK_URL};ord=${CACHEBUSTER}?"
        
```





## Examples

class="note caution note_caution">

CAUTION: Exclude `audit_status`and
`no_audit`in **PUT** calls to avoid errors.



**Adding a banner image creative (hosted)**

When uploading a standard banner image creative for hosting with Xandr:

Once the creative has been registered, the content will be stored on the
CDN, and the creative will be given a media_url such as <a
href="https://cdn.adnxs.com/p/29/23/21/a0/292321a0bea05427598914c8bb626032.png"
class="xref"
target="_blank">https://cdn.adnxs.com/p/29/23/21/a0/292321a0bea05427598914c8bb626032.jpg</a>.

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat creative

{
   "creative": {
      "template": {"id":4},
      "width": 300,
      "height": 250,
      "click_url": "https://www.gothere.com",
      "click_target": "https://www.gothere.com",
      "file_name": "gothere.png",
      "content": "/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
                 AIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
                 Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8f
                 ...
                 nwj3HrP+oer6/wDPa/tKsOz/AEf8CnxP82z3fTu9VDboP//Z"
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=2'

{
   "response": {
      "status": "OK",
      "id": 10,
      ...
      "template": {
          "id": 4,
          "name": "Standard",
          "media_subtype_id": 1,
          "format_id": 4
      },
      "width": 300,
      "height": 250,
      ...
      "click_url": "https://www.gothere.com",
      "click_target": "https://www.gothere.com",
      "media_url": "https://cdn.adnxs.com/p/29/23/21/a0/gothere.png"
      ...
      "audit_status": "pending",
      ...
   }
}
```

**Add a mobile banner image creative (hosted)**

In order for mobile creatives to pass Xandr platform audit, you need to
pass the `mobile` object with an alternative URL that will display
correctly in a desktop browser when the creative is clicked.

>

``` pre
$ cat creative
 
{
    "creative": {
        "content": "\/9j\/4AAQSkZJRgABAQEASABIAAD\/7QCEUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAGccAVoAAxsl...",
        "mobile": {
            "alternative_landing_page_url": "https:\/\/example.com"
        },
        "file_name": "SWEET.png",
        "click_url": "https:\/\/example.com",
        "click_target": "https:\/\/example.com",
        "height": 250,
        "width": 300,
        "template": {
            "id": 4
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=3141'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 700864,
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https:\/\/cdn.sand-08.adnxs.net\/s\/d3\/d6\/1c\/61\/d3d61c611fd6f98becc8ad6d45c43875.png",
            "id": 700864,
            "code": null,
            "code2": null,
            "member_id": 1309,
            "state": "inactive",
            "click_track_result": "not_tested",
            "advertiser_id": 41798,
            "publisher_id": null,
            "format": null,
            "width": 300,
            "height": 250,
            "click_url": "https:\/\/example.com",
            "click_target": "https:\/\/example.com",
            "flash_click_variable": null,
            "no_iframes": false,
            "content": null,
            "original_content": null,
            "file_name": "OH_YEAH.png",
            "track_clicks": true,
            "audit_status": "pending",
            "macros": null,
            "profile_id": null,
            "audit_feedback": null,
            "is_prohibited": false,
            "is_suspicious": false,
            "created_on": "2013-10-18 15:57:03",
            "flash_backup_url": null,
            "last_modified": "2013-10-18 15:57:03",
            "is_control": false,
            "allow_audit": true,
            "is_expired": false,
            "creative_upload_status": "pending",
            "backup_upload_status": null,
            "use_dynamic_click_url": false,
            "media_subtypes": [
                "banner"
            ],
            "size_in_bytes": 15171,
            "msft_audit_status": "pending",
            "msft_audit_feedback": null,
            "msft_external_audit_status": "pending",
            "msft_external_audit_feedback": null,
            "is_self_audited": false,
            "no_adservers": false,
            "text_title": null,
            "text_description": null,
            "text_display_url": null,
            "click_action": "click-to-web",
            "ssl_status": "disabled",
            "allow_ssl_audit": false,
            "media_url_secure":"https:\/\/a248.e.akamai.net\/appnexus.download.akamai.com\/89298\/sandbox\/s\/d3\/d6\/1c\/61\/d3d61c611fd6f98becc8ad6d45c43875.png",
            "content_secure": null,
            "original_content_secure": null,
            "flash_backup_url_secure": null,
            "is_hosted": true,
            "content_source": "standard",
            "lifetime_budget_imps": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "allow_safety_pacing": null,
            "lifetime_budget": null,
            "daily_budget": null,
            "landing_page_url": null,
            "thirdparty_creative_id": null,
            "thirdparty_campaign_id": null,
            "custom_request_template": null,
            "language": {
                "id": 1,
                "name": "English"
            },
            "pop_values": null,
            "brand": {
                "id": 1,
                "name": "Unknown",
                "category_id": 8
            },
            "template": {
                "id": 4,
                "name": "Standard",
                "media_subtype_id": 1,
                "format_id": 4
            },
            "thirdparty_page": null,
            "custom_macros": null,
            "segments": null,
            "folder": null,
            "campaigns": null,
            "competitive_brands": null,
            "competitive_categories": null,
            "pixels": null,
            "mobile": {
                "alternative_landing_page_url":"https:\/\/example.com"
            },
            "sla": null,
            "sla_eta": null,
            "currency": "USD"
        },
        "dbg_info": {
            ...
        }
    }
}
```



**Adding a banner flash creative (hosted)**

When uploading a standard banner flash creative for hosting with Xandr:

Once the creative has been registered, the content will be stored on the
CDN, and the creative will be given a media_url such as <a
href="https://cdn.adnxs.com/p/29/23/21/a0/292321a0bea05427598914c8bb626032.png"
class="xref"
target="_blank">https://cdn.adnxs.com/p/29/23/21/a0/292321a0bea05427598914c8bb626032.jpg</a>.

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat creative

{
   "creative": {
      "template": {"id":3},
      "width": 300,
      "height": 250,
      "click_url": "https://www.gothere.com",
      "click_target": "htpps://www.gothere.com",
      "file_name": "gothere.swf",
      "flash_click_variable": "ClickTag",
      "content": "/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
                 AIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
                 Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8f
                 ...
                 nwj3HrP+oer6/wDPa/tKsOz/AEf8CnxP82z3fTu9VDboP//Z",
      "flash_backup_content": "AcndgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
                 AIQABgQEBAUEBgUFBgkGBQYJCwgGcdkDCADBdcdDDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
                 Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx6smd34
                 ...
                 nwj3HrP+oer6/wDPa/tKsOz/AEf8Cnnd30cddaxcio244adc",
      "flash_backup_file_name": "flash_backup.png"
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=2'

{
   "response": {
      "status": "OK",
      "id": 11,
      ...
      "template": {
          "id": 3,
          "name": "Standard",
          "media_subtype_id": 1,
          "format_id": 3
      },
      "width": 300,
      "height": 250,
      ...
      "click_url": "https://www.gothere.com",
      "click_target": "https://www.gothere.com",
      "media_url": "https://cdn.adnxs.com/p/29/23/21/a0/gothere.swf"
      "flash_backup_url": "https://cdn.adnxs.com/c/54/f2/d1/v3/flash_backup.png"
      ...
      "audit_status": "pending",
      ...
   }
}
```

**Adding a banner flash creative (third-party URL)**

When adding a third-party URL for a banner flash creative:

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat creative

{
   "creative": {
      "media_url": "https://creative.com/300x250",
      "flash_backup_url": "https://creative.com/backupimage/300x250",
      "template": {"id":2},
      "width": 300,
      "height": 250,
      "campaigns": [
         {"id":58990},
         {"id":58991}
      ]
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=35'

{
   "response": {
      "status": "OK",
      "id":12,
      ...
      "media_url": "https://creative.com/300x250",
      "flash_backup_url": "https://creative.com/backupimage/300x250",
      ...
      "template": {
          "id": 2,
          "name": "Standard",
          "media_subtype_id": 1,
          "format_id": 2
      },
      ...
      "audit_status": "pending",
      ...
   }
}
```

**Adding a MediaMind expandable creative (third-party URL)**

In this example, note that the media_url field provides the third-party
URL for the expandable creative, and the template array specifies
template 108, which is the Xandr standard template for creatives of the
"MediaMind Expandable" media subtype and the "url-js" format.

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat creative

{
   "creative": {
      "media_url": "https://bs.serving-sys.com/BurstingPipe/adServer.bs?ncu=$$${CLICK_URL_ENC}$$&cn=rsb&c=28&
          pli=2980019&PluID=0&w=300&h=250&ord=${CACHEBUSTER}&ucm=true",
      "template": {"id":108},
      "width": 300,
      "height": 250,
      "campaigns":[
          {"id": 58990},
          {"id": 58991}
      ]
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=35'

{
   "response":{
      "status":"OK",
      "id":12,
      ...
      "media_url":"https://bs.serving-sys.com/BurstingPipe/adServer.bs?ncu=$$${CLICK_URL_ENC}$$&cn=rsb&c=28&
          pli=2980019&PluID=0&w=300&h=250&ord=${CACHEBUSTER}&ucm=true",
      ...
      "template": {
          "id": 108,
          "name": "Standard",
          "media_subtype_id": 11,
          "format_id": 2
      },
      ...
      "audit_status": "pending",
      ...
   }
}
```

**Adding a Pointroll expandable creative (third-party HTML tag)**

In this example, note that the content field provides the JavaScript tag
for the expandable creative, and the template array specifies template
159, which is the Xandr standard template for creatives of the
"Pointroll Expandable" media subtype and the "raw-html" format.

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat creative

{
   "creative": {
      "content":<script type=\"text/javascript\">function pr_swfver(){var osf,osfd,i,axo=1,v=0,nv=navigator;
       if(nv.plugins&&nv.mimeTypes.length){osf=nv.plugins[\"ShockwaveFlash\"];if(osf&&osf.description)
       {osfd=osf.description;v=parseInt(osfd.substring(osfd.indexOf(\".\")-2))}}else{try{for(i=5;axo!=null;i++)
       {axo=new ActiveXObject(\"ShockwaveFlash.ShockwaveFlash.\"+i);v=i}}catch(e){}}return v;}var pr_d=new Date
       ();pr_d=pr_d.getDay()+\"|\"+pr_d.getHours()+\": \"+pr_d.getMinutes()+\"|\"+-pr_d.getTimezoneOffset()/60;
       var pr_postal=\"\";var pr_data=\"\";var pr_redir=\"$CTURL$\";var pr_nua=navigator.userAgent.toLowerCase();
       </script>,
      "template": {"id":159},
      "width": 300,
      "height": 250,
      "campaigns": [
         {"id": 58990},
         {"id": 58991}
      ]
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=35'

{
   "response": {
      "status": "OK",
      "id": 12
      ...
      "content":"var click = '${CLICK_URL}'; var t = (new Date()).getTime(); var s = document.createElement('script');
                s.setAttribute('src', 'https://pointroll.adserver.org/showad?size=300x250;click=' + click + ';ord=' + t);
                document.getElementsByTagName('body').appendChild(s);https://creative.com/300x250",
      ...
      "template": {
         "id": 159,
         "name": "Standard",
         "media_subtype_id": 12,
         "format_id": 6
      },
      ...
      "audit_status":"pending",
      ...
   }
}
```

**Adding a popup image creative (third-party URL)**

In this example, note that the media_url field provides the third-party
URL for the popup image creative, and the template array specifies
template 10, which is the standard Xandr rendering template for the
"Popup" media subtype and the "url-js" format. If you don't specify a
template in the request, you must pass format as "image" and
media_subtype as "popup".

``` pre
{
   "creative":
   {
     "media_url": "https://dummyimage.com/728x90",
     "click_url": "https://www.google.com",
     "click_target": "https://www.google.com",
     "template": {"id":10},
     "pop_values": {
       "pop_is_tag_initiated": false,
       "pop_window_maximize": false,
       "pop_window_title": null,
       "pop_statusbar": false,
       "pop_resizable": false,
       "pop_scrollbars": false,
       "pop_toolbar": false,
       "pop_addressbar": false
       },
      "width": 728,
      "height": 90
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=2'

{
   "response": {
      "status": "OK",
      "id": 14,
      ...
      "template": {
          "id": 10,
          "name": "Standard",
          "media_subtype_id": 2,
          "format_id": 2
      },
      "width": 728,
      "height": 90,
      ...
      "audit_status": "pending",
      ...
   }
}
```

**Adding a popunder image creative (third-party URL)**

In this example, note that the media_url field provides the third-party
URL for the popunder image creative, and the template array specifies
template 17, which is the standard Xandr rendering template for the
"Popunder" media subtype and the "url-js" format. If you don't include a
template in the request, you must pass format as "image" and
media_subtype as "popunder".

``` pre
{
   "creative" :
   {
     "media_url": "https://dummyimage.com/728x90",
     "click_url": "https://www.google.com",
     "click_target": "https://www.google.com",
     "template": {"id":17},
     "pop_values": {
       "pop_is_tag_initiated": false,
       "pop_window_maximize": false,
       "pop_window_title": null,
       "pop_statusbar": false,
       "pop_resizable": false,
       "pop_scrollbars": false,
       "pop_toolbar": false,
       "pop_addressbar": false
       },
      "width": 728,
      "height": 90
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=2'

{
   "response": {
      "status": "OK",
      "id":14,
      ...
      "template": {
          "id": 17,
          "name": "Standard",
          "media_subtype_id": 2,
          "format_id": 2
      },
      "width": 728,
      "height": 90,
      ...
      "audit_status": "pending",
      ...
   }
}
```

**Adding an in-banner video (third-party video file)**

When adding a third-party in-banner video file:

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat inbanner

{
   "creative": {
      "media_url": "https://example.com/inbanner.flv",
      "template": {"id":219},
      "click_url": "https://www.example.com",
      "click_target": "https://www.example.com",
      "width": 300,
      "height": 250,
      "flash_backup_url": "https://www.example.com/poster_image.png"
      "custom_macros": [
          {
              "code": "FLV_URL",
              "value": "https:www.example.com/inbanner.flv"
          },
          {
              "code": "MP4_URL",
              "value": "https:www.example.com/inbanner.mp4"
          },
          {
              "code": "WEBM_URL",
              "value": "https:www.example.com/inbanner.webm"
          }
      ],
   }
}


$ curl -b cookies -c cookies -X POST -d @inbanner 'https://api.appnexus.com/creative?advertiser_id=2'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 510242,
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://example.com/inbanner.flv",
            "id": 510244,
            "code": null,
            "code2": null,
            "state": "inactive",
            "click_track_result": "not_tested",
            "advertiser_id": 2,
            "publisher_id": null,
            "format": null,
            "width": 300,
            "height": 250,
            "click_url": "https://www.example.com",
            "flash_click_variable": null,
            "pixel_url": null,
            "pixel_type": "image",
            "no_iframes": false,
            "content": null,
            "original_content": null,
            "file_name": "inbanner.flv",
            "track_clicks": true,
            "audit_status": "pending",
            "macros": null,
            "profile_id": null,
            "audit_feedback": null,
            "is_prohibited": false,
            "created_on": "2012-04-13 14:47:46",
            "flash_backup_url": "https://example.com/poster_image.png",
            "last_modified": "2012-04-13 14:47:46",
            "is_control": false,
            "allow_audit": true,
            "is_expired": false,
            "creative_upload_status": "pending",
            "backup_upload_status": null,
            "use_dynamic_click_url": false,
            "media_subtypes": [
                "banner"
            ],
            "size_in_bytes": 0,
            "msft_audit_status": "pending",
            "msft_audit_feedback": null,
            "msft_external_audit_status": "pending",
            "msft_external_audit_feedback": null,
            "is_self_audited": false,
            "no_adservers": false,
            "text_title": null,
            "text_description": null,
            "text_display_url": null,
            "click_action": "click-to-web",
            "click_target": "https://www.example.com",
            "ssl_status": "disabled",
            "allow_ssl_audit": false,
            "media_url_secure": "https://example.com/inbanner.flv",
            "content_secure": null,
            "original_content_secure": null,
            "pixel_url_secure": null,
            "flash_backup_url_secure": null,
            "is_hosted": true,
            "lifetime_budget_imps": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "lifetime_budget": null,
            "daily_budget": null,
            "language": {
                "id": 1,
                "name": "English"
            },
            "pop_values": null,
            "brand": {
                "id": 1,
                "name": "Unknown",
                "category_id": 8
            },
            "template": {
                "id": 219,
                "name": "Standard",
                "media_subtype_id": 3,
                "format_id": 11
            },
            "custom_macros": [
                {
                    "code": "AUTOPLAY",
                    "value": "0"
                },
                {
                    "code": "CONTROLS",
                    "value": "1"
                },
               {
                    "code": "FLV_URL",
                    "value": "https:www.example.com/inbanner.flv"
                },
                {
                    "code": "MP4_URL",
                    "value": "https:www.example.com/inbanner.mp4"
                },
                {
                    "code": "WEBM_URL",
                    "value": "https:www.example.com/inbanner.webm"
                }
            ],
            "segments": null,
            "folder": null,
            "campaigns": null,
            "competitive_brands": null,
            "competitive_categories": null,
            "pixels": null,
            "sla": null,
            "sla_eta": null,
            "currency": "USD"
        },
        "dbg_info": {
            ... 
        }
    }
}
```

**Adding an in-banner video (third-party XML file)**

When adding a third-party in-banner XML file:

Auditing: By default, the creative will be submitted for auditing by
Xandr. If you don't want the creative to be audited, you must include
allow_audit and set it to false. Alternately, if you want to audit the
creative yourself, you must include is_self_audited and set it to true.

``` pre
$ cat inbanner

{
   "creative": {
      "media_url": "https://example.com/inbanner.xml",
      "template": {"id":8},
      "click_url": "https://www.example.com",
      "click_target": "https://www.example.com",
      "width": 300,
      "height": 250,
      "flash_backup_url": "https://example.com/poster_image.png"
   }
}


$ curl -b cookies -c cookies -X POST -d @inbanner 'https://api.appnexus.com/creative?advertiser_id=2'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 510242,
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://example.com/inbanner.xml",
            "id": 510245,
            "code": null,
            "code2": null,
            "state": "inactive",
            "click_track_result": "not_tested",
            "advertiser_id": 2,
            "publisher_id": null,
            "format": null,
            "width": 300,
            "height": 250,
            "click_url": "https://www.example.com",
            "flash_click_variable": null,
            "pixel_url": null,
            "pixel_type": "image",
            "no_iframes": false,
            "content": null,
            "original_content": null,
            "file_name": "inbanner.xml",
            "track_clicks": true,
            "audit_status": "pending",
            "macros": null,
            "profile_id": null,
            "audit_feedback": null,
            "is_prohibited": false,
            "created_on": "2012-04-13 14:47:46",
            "flash_backup_url": "https://example.com/poster_image.png",
            "last_modified": "2012-04-13 14:47:46",
            "is_control": false,
            "allow_audit": true,
            "is_expired": false,
            "creative_upload_status": "pending",
            "backup_upload_status": null,
            "use_dynamic_click_url": false,
            "media_subtypes": [
                "banner"
            ],
            "size_in_bytes": 0,
            "msft_audit_status": "pending",
            "msft_audit_feedback": null,
            "msft_external_audit_status": "pending",
            "msft_external_audit_feedback": null,
            "is_self_audited": false,
            "no_adservers": false,
            "text_title": null,
            "text_description": null,
            "text_display_url": null,
            "click_action": "click-to-web",
            "click_target": "https://www.example.com",
            "ssl_status": "disabled",
            "allow_ssl_audit": false,
            "media_url_secure": "https://example.com/inbanner.xml",
            "content_secure": null,
            "original_content_secure": null,
            "pixel_url_secure": null,
            "flash_backup_url_secure": null,
            "is_hosted": true,
            "lifetime_budget_imps": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "lifetime_budget": null,
            "daily_budget": null,
            "language": {
                "id": 1,
                "name": "English"
            },
            "pop_values": null,
            "brand": {
                "id": 1,
                "name": "Unknown",
                "category_id": 8
            },
            "template": {
                "id": 8,
                "name": "Standard",
                "media_subtype_id": 3,
                "format_id": 10
            },
            "custom_macros": null,
            "segments": null,
            "folder": null,
            "campaigns": null,
            "competitive_brands": null,
            "competitive_categories": null,
            "pixels": null,
            "sla": null,
            "sla_eta": null,
            "currency": "USD"
        },
        "dbg_info": {
           ...
        }
    }
}
```

**Adding a creative that uses a custom rendering template**

In this example, the POST request adds a hosted flash banner creative to
Xandr. The creative uses a custom creative template, which is designed
to render the creative with a border when it is served. Custom macros in
the template allow the trafficker to specify the HTML color code and
size (in pixels) or the border.

``` pre
$ cat creative

{
   "creative": {
      "template": {"id":252},
      "width": 300,
      "height": 250,
      "custom_macros": [
         {
            "code": "BORDER_COLOR",
            "value": "#000000"
         },
         {
            "code": "BORDER_SIZE",
            "value": 1
         }
      ],
      "click_url": "https://www.gothere.com",
      "click_target": "https://www.gothere.com",
      "file_name": "gothere.swf",
      "flash_click_variable": "ClickTag",
      "content": "/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
                 AIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
                 Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8f
                 ...
                 nwj3HrP+oer6/wDPa/tKsOz/AEf8CnxP82z3fTu9VDboP//Z",
      "flash_backup_content": "AcndgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
                 AIQABgQEBAUEBgUFBgkGBQYJCwgGcdkDCADBdcdDDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
                 Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx6smd34
                 ...
                 nwj3HrP+oer6/wDPa/tKsOz/AEf8Cnnd30cddaxcio244adc",
      "flash_backup_file_name": "flash_backup.png"
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=2'

{
   "response": {
      "status": "OK",
      "id": 11,
      ...
      "template": {
          "id": 252,
          "name": "Flash Banner with Border",
          "media_subtype_id": 1,
          "format_id": 3
      },
      "width": 300,
      "height": 250,
      ...
      "click_url": "https://www.gothere.com",
      "click_target": "https://www.gothere.com",
      "media_url": "https://cdn.adnxs.com/p/29/23/21/a0/gothere.swf"
      "flash_backup_url": "https://cdn.adnxs.com/c/54/f2/d1/v3/flash_backup.png"
      ...
      "audit_status": "pending",
      ...
      "custom_macros": [
         {
            "code": "BORDER_COLOR",
            "value": "#000000"
         },
         {
            "code": "BORDER_SIZE",
            "value": 1
         }
      ],
      ...
   }
}
```

**Adding a secure creative**

When uploading a non-secure creative, you can also upload a version to
serve on SSL inventory as follows:



<b>Note:</b> You can check the ssl audit
status of a creative by making a simple GET request. The ssl_status
field in the response tells you the audit status. The creative will be
eligible to serve on secure inventory only once it passes the audit and
the ssl_status is "approved". A third-party creative will pass our audit
only if all calls in the ad chain go through secure servers. If the
creative fails the ssl audit, you can resubmit it for ssl auditing by
changing the ssl_status field to "pending".



``` pre
$ cat creative

{
   "creative": {
      "media_url": "https://creative.com/123",
      "media_url_secure": "https://creative.com/123",
      "template": {"id":2},
      "allow_ssl_audit": true
      "format": "image",
      "width": 300,
      "height": 250,
      "campaigns": [
         {"id":58990},
         {"id":58991}
      ]
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=35'

{
   "response": {
      "status":"OK",
      "id":13
      ...
      "audit_status":"pending",
      ...
      "ssl_status":"pending",
      ...
   }
}
```

**Submitting a creative for priority audit**

If you have a supplemental services agreement with Xandr for priority
audits, you can submit a creative for priority audit (auditing within 2
hours during business hours) by setting the sla field to 2. The sla_eta
field in the response will provide an estimated finish time for the
audit.

``` pre
$ cat creative

{
   "creative": {
      "media_url": "https://creative.com/456",
      "template": {"id":2},
      "width": 300,
      "height": 250,
      "campaigns": [
         {"id":58990},
         {"id":58991}
      ],
      "sla": 2
   }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=35'

{
   "response": {
      "status": "OK",
      "id": 469340,
      ...
      "audit_status": "pending",
      ...
      "sla": "2",
      "sla_eta": "2012-01-13 22:43:33",
      ...
   }
}
```

**Canceling a creative audit**

If you have submitted a creative for Xandr audit, and the audit_status
is "pending", you can cancel the audit and not be charged the auditing
fee by making a PUT request with allow_audit set to false. The
audit_status field will be "no_audit" in the response.

``` pre
$ cat creative

{
   "creative": {
      "allow_audit":false
   }
}

$ curl -b cookies -c cookies -X PUT -d @creative 'https://api.appnexus.com/creative?id=469340&advertiser_id=35'

{
   "response": {
      "status": "OK",
      "id": 469340,
      ...
      "audit_status":"no_audit",
      ...
   }
}
```

**Viewing audit stats for all creatives**

In this example, "audit_stats=true" is passed in the query string of the
GET call. This returns the number of creatives with each Xandr,
Microsoft, and Google audit status.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative?audit_stats=true'

{
    "response": {
        "status": "OK",
        "count": 30,
        "start_element": 0,
        "num_elements": 100,
        "creatives": [
            {
                "total": 30,
                "appnexus_audit": {
                    "no_audit": 10,
                    "pending": 18,
                    "approved": 0,
                    "rejected": 1
                },
                "microsoft_audit": {
                    "no_audit": 10,
                    "pending": 18,
                    "approved": 1,
                    "rejected": 1
                }
            }
        ],
        "dbg_info": {
            ...
        }
    }
}
```

**Adding a Xandr-approved pixel to a creative**

This example walks you through the process of adding the Xandr-approved
Evidon AdChoices Icon pixel to a creative.

1\. First, you need to find out the pixel_template_id and the number of
parameters you must define for the pixel. You use the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Pixel Template Service</a> to get this information.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/pixel-template'

{
    "response": {
        "status": "OK",
        "count": 3,
        "start_element": 0,
        "num_elements": 100,
        "pixel-templates": [
            {
                "id": 1,
                "name": "Evidon AdChoices Icon",
                "format": "raw-js",
                "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' + ((\"https:\"
                 == document.location.protocol) ? \"https://c.betrad.com\" : \"https://c.betrad.com\") +
                 '/surly.js?;ad_wxh=${CREATIVE_SIZE};coid=${P1};nid=${P2};${P3}\"></scr'+'ipt>');}());",
                "num_required_params": 2,
                "require_reaudit": false
            },
            {
                "id": 2,
                "name": "Brilig Impression Tracker",
                "format": "url-image",
                "num_required_params": 1,
                "require_reaudit": false,
                "url": "https://p.brilig.com/contact/bct?pid=${P1}&_ct=pixel&adid=${CP_ID}&action=1"
            },
            ...
        ],
        "dbg_info": {
            ...
        }
    }
}
```

2\. The Evidon AdChoices Icon pixel is the first in the response. You
note that id is 1. You also note that num_required_params is 2. This
means that, when adding the pixel to your creative, you must provide
values for {P1} and {P2} in the pixel content.

3\. You create the JSON-formatted file for adding the pixel to the
creative. In the file, you set pixel_template_id to 2, and you set
param_1 and param_2 to the values for {P1} and {P2} in the pixel
content.

class="note caution note_caution">

CAUTION: The pixels array will be
completely overwritten with your JSON. Therefore, if the pixels array on
the creative already includes any pixels, be sure to specify them in
your JSON array as well. See <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for more details.



``` pre
$ cat creative_update

{
    "creative": {
        "pixels": [
            {
                "pixel_template_id": 1,
                "param_1":"12",
                "param_2":"34"
            }
        ]
    }
}
```

4\. Finally, you make a PUT call to update the creative. The pixels
array in the response then shows that the pixel has been added. The two
parameters are defined and have been populated in the pixel content.
Note that, because the Evidon AdChoices Icon pixel does not cause the
creative to require re-auditing, audit_status has not be reverted to
"pending".

``` pre
$ curl -b cookies -c cookies -X PUT -d @creative_update 'https://api.appnexus.com/creative?id=503577&advertiser_id=35081'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            "code": null,
            "code2": null,
            "state": "active",
            "click_track_result": "not_tested",
            "advertiser_id": 35081,
            ...
            "audit_status": "audited",
            ...
            "pixels": [
                {
                    "id": 163,
                    "pixel_template_id": 1,
                    "param_1": "12",
                    "param_2": "34",
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-image",
                    "content": "(function() {document.write('<sc'+'ript type=\"text/javascript\"' +
                     ((\"https:\" == document.location.protocol) ? \"https://c.betrad.com\" :
                     \"https://c.betrad.com\") + '/surly.js?;ad_wxh=${CREATIVE_SIZE};coid=12;nid=34;
                     \"></scr'+'ipt>');}());"
                }
            ],
            ...
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Adding a custom pixel to a creative**

In this example, the PUT request adds a custom url-js pixel to creative
503577. In the JSON-formatted file, the format is set to "url-js", and
the url is set to the location of the JavaScript that you want to serve
with the creative. Note in the response that audit_status is "pending";
this is because adding a custom pixel to a creative causes the creative
to be resubmitted for audit.

class="note caution note_caution">

CAUTION: The pixels array will be
completely overwritten with the information in this file. Therefore, if
the creative already includes any pixels, be sure to specify them in the
file as well.



``` pre
$ cat creative_update

{
    "creative": {
        "pixels": [
            {
                "format": "url-js",
                "url": "https://50.16.221.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}&ref=${REFERER_URL}
                 &campaign_id=147"
            }
        ]
    }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @creative_update 'https://api.appnexus.com/creative?id=503577&advertiser_id=35081'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            "code": null,
            "code2": null,
            "state": "active",
            "click_track_result": "not_tested",
            "advertiser_id": 35081,
            ...
            "audit_status": "pending",
            ...
            "pixels": [
                {
                    "id": 196,
                    "pixel_template_id": null,
                    "param_1": null,
                    "param_2": null,
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-js",
                    "url": "https://50.16.221.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}
                     &ref=${REFERER_URL}&campaign_id=147"
                }
            ],
            ...
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Adding a third-party pixel to a creative**

In this example, the PUT request adds 2 third-party pixels to creative
"503577". Note in the response that audit_status is "pending"; this is
because adding a third party pixel to a creative causes the creative to
be resubmitted for audit.

``` pre
$ cat creative_update

{
    "creative": {
        "thirdparty_pixels": [
          {
            "id": 145
          },
          {
            "id": 314
          }
        ]
    }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @creative_update 'https://api.appnexus.com/creative?id=503577&advertiser_id=35081'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            "code": null,
            "code2": null,
            "state": "active",
            "click_track_result": "not_tested",
            "advertiser_id": 35081,
            ...
            "audit_status": "pending",  ??remove this, confirm with UTSAV
            ...
            "thirdparty_pixels": [

                {
                  "id": 145,
                  "name": "sample pixel",
                  "audit_status": "pending",
                  "active": true
                },
                {
                  "id": 314,
                  "name": "another sample pixel",
                  "audit_status": "pending",
                  "active": true
                }
            ],
            ...
        },
        "dbg_info": {
            ...
        }
    }
}
```

**Adding a creative (third-party HTML tag)**

When the format field is set to "raw-html", content from the
`content`field must be wrapped in `document.write()`and also `escaped.`

``` pre
$ cat creative 
{
    "creative": {
        "adservers": [
            {
                "id": 79,
                "use_type": "adserver"
            }
        ],
        "name": "Test Creative",
        "original_content": "<script language=\"javascript\"src=\"https://track.adform.net/adfscript/?bn=2342059;click=${CLICK_URL}\"></script><noscript><a href=\"{CLICK_URL}https://track.adform.net/C/?bn=2342059;C=0\"  target=\"_blank\"><img  src=\"https://track.adform.net/adfserve/?bn=2342059;srctype=4;ord=${CACHEBUSTER}\"  border=\"0\"  width=\"300\"  height=\"250\"  alt=\"\"/></a></noscript>",
        "track_clicks": "true",
        "width": 300,
        "height": 250,
        "is_self_audited": "false",
        "content": "document.write('<scr' + 'ipt language=\\\"javascript\\\"src=\\\"https://track.adform.net/adfscript/?bn=2342059;click=${CLICK_URL}\\\"></scr' + 'ipt><noscript><a href=\\\"{CLICK_URL}https://track.adform.net/C/?bn=2342059;C=0\\\"  target=\\\"_blank\\\"><img  src=\\\"https://track.adform.net/adfserve/?bn=2342059;srctype=4;ord=${CACHEBUSTER}\\\"  border=\\\"0\\\"  width=\\\"300\\\"  height=\\\"250\\\"  alt=\\\"\\\"/></a></noscript>');",
        "template": {
            "id": "6"
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @creative 'https://api.appnexus.com/creative?advertiser_id=1'

{
   "response": {
      "status": "OK",
      "id": 20,
      ...
      "template": {
          "id": 6,
          "name": "Standard"
      },
      "width": 300,
      "height": 250,
      "audit_status": "pending",
   }
}
```

**Adding a native creative**

This is the new native attribute. When adding a native creative with the
new attribute, use template id 39461.

Step 1. Upload the asset to the <a
href="creative-upload-service---file-format.md"
class="xref" target="_blank">creative upload service</a>.

``` pre
curl -X POST -H 'Authorization:hbapi:21816:58f909dfa3405:nym2' --form "type=image" --form "file=@./NATIVE.JPG" 'https://api.appnexus.com/creative-upload?member_id=123'
```

The `media_asset_id`is returned.

``` pre
{  
   "response": {  
      "status": "OK",
      "count": 0,
      "start_element": 0,
      "num_elements": 0,
      "dbg_info": {  
         "instance": "05.media-asset-pipeline.prod.nym2",
         "db":"",
         "warnings": [  
         ],
         "start_microtime": 1492716035.805,
         "time": 5,
         "version": "",
         "output_term": "media-asset"
      },
      "media-asset":[  
         {  
            "id": 1536691,
            "parent_media_asset_id": null,
            "member_id": 123,
            "advertiser_id": null,
            "publisher_id": null,
            "file_name": "NATIVE.JPG",
            "size_in_bytes": 79400,
            "cdn_uploaded_on": null,
            "cdn_url": "https://vcdn.adnxs.com/p/creative-image/1b/ee/3d/95/1bee3d95-7042-4e10-b0bf-7f43e2e4322a.JPG",
            "cdn_secure_url": "https://vcdn.adnxs.com/p/creative-image/1b/ee/3d/95/1bee3d95-7042-4e10-b0bf-7f43e2e4322a.JPG",
            "created_on": "2017-04-20 19:20:35",
            "last_modified": "2017-04-20 19:20:35",
            "deleted": false,
            "media_asset_status": [  
               {  
                  "id": 1536687,
                  "media_asset_id": 1536691,
                  "error_message": null,
                  "local_path": "1b/ee/3d/95/1bee3d95-7042-4e10-b0bf-7f43e2e4322a.JPG",
                  "cdn_upload_attempt_count": 0,
                  "created_on": "2017-04-20 19:20:35",
                  "last_modified": "2017-04-20 19:20:35",
                  "deleted": false,
                  "status": "on_shared_storage"
               }
            ],
            "media_asset_image": {  
               "id": 1005450,
               "media_asset_id": 1536691,
               "height": 480,
               "width": 640,
               "created_on": "2017-04-20 19:20:35",
               "last_activity": "2017-04-20 19:20:35",
               "deleted": false
-            },
            "media_asset_video": null,
            "media_asset_html5": null,
            "asset_type": "image",
            "mime_type": "image/jpeg"
         }
      ]
   }
}
```

Step 2. Use the `media_asset_id`to upload the creative.

``` pre
cat native
{
    "creative": {
        "name": null,
        "brand_id": 1,
        "media_url": "https://mediaurl.com",
        "code": "test",
        "code2": null,
        "member_id": 4,
        "state": "active",
        "advertiser_id": 7,
        "publisher_id": null,
    "template": {
        "id": 39461
    },
        "native_attribute": {
            "link": {
                "url": "https://url.com",
                "fallback_url": "https://fallback.com",
                "trackers": [
                    {
                        "url": "http://url.com",
                        "url_secure": "https://secureurl.com"
                    }
                ]
            },
            "data_assets": [
                {
                    "data_type": "sponsored_by",
                    "value": "a value"
                },
                {
                    "data_type": "rating",
                    "value": "8"
                }
            ],
            "image_assets": [
                {
                    "image_type": "main_image",
                    "media_asset_id": 1536691,
                    "image_resize_setting": {
                        "resize_enabled": true,
                        "crop_enabled": true,
                        "aspect_ratio_upper_bound": 1.2,
                        "aspect_ratio_lower_bound": 0.8,
                        "max_scale_factor": 1.41
                    }
                }
            ],
            "image_trackers": [
                {
                    "url": "http://url.com",
                    "url_secure": "https://secureurl.com"
                }
            ],
            "javascript_trackers": [
                {
                    "url": "http://url.com",
                    "url_secure": "https://secureurl.com"
                }
            ]
        },
        "thirdparty_viewability_providers": null,
        "status": {
            "user_ready": true
        },
        "sla_eta": null,
        "currency": "USD",
        "type": "native"
    }
}
 
```

``` pre
$ curl -b cookies -c cookies -X POST -d @native 'https://api.appnexus.com/creative/1751'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 411,
        "start_element": 0,
        "num_elements": 100,
        "dbg_info": {
            ...
            },
            "proxy": true
        },
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://mediaurl.com",
            "id": 411,
            "code": "test",
            "code2": null,
            "member_id": 4,
            "state": "active",
            "click_track_result": "not_tested",
            "advertiser_id": 3,
            "publisher_id": null,
            "format": "url-file",
            "width": null,
            "height": null,
            "click_url": null,
            "flash_click_variable": null,
            "no_iframes": false,
            "content": null,
            "original_content": null,
            "file_name": null,
            "track_clicks": true,
            "audit_status": "pending",
            "macros": null,
            "profile_id": null,
            "audit_feedback": null,
            "is_prohibited": false,
            "is_suspicious": false,
            "created_on": "2017-03-09 21:54:11",
            "flash_backup_url": null,
            "last_modified": "2017-03-09 21:54:11",
            "is_control": false,
            "allow_audit": true,
            "is_expired": false,
            "creative_upload_status": null,
            "backup_upload_status": null,
            "use_dynamic_click_url": false,
            "media_subtypes": [
                "popunder",
                "popup",
                "banner"
            ],
            "size_in_bytes": 0,
            "is_self_audited": false,
            "no_adservers": false,
            "text_title": null,
            "text_description": null,
            "text_display_url": null,
            "click_action": "click-to-web",
            "click_target": null,
            "ssl_status": "pending",
            "allow_ssl_audit": true,
            "media_url_secure": "https://MEDIAURL.appnexus.com",
            "content_secure": "document.write(\\\"\\\")",
            "original_content_secure": null,
            "flash_backup_url_secure": null,
            "is_hosted": false,
            "content_source": "standard",
            "lifetime_budget": null,
            "lifetime_budget_imps": null,
            "daily_budget": null,
            "daily_budget_imps": null,
            "enable_pacing": null,
            "allow_safety_pacing": null,
            "landing_page_url": null,
            "thirdparty_creative_id": null,
            "thirdparty_campaign_id": null,
            "facebook_audit_status": null,
            "facebook_audit_feedback": null,
            "custom_request_template": null,
            "language": {
                "id": 1,
                "name": "English"
            },
            "pop_values": null,
            "brand": {
                "id": 1,
                "name": "Unknown",
                "category_id": null
            },
            "template": {
                "id": 39461,
                "name": "native ad",
                "media_subtype_id": 17,
                "format_id": 11
            },
            "ios_ssl_audit": null,
            "adx_audit": null,
            "thirdparty_page": null,
            "custom_macros": null,
            "segments": null,
            "folder": null,
            "campaigns": null,
            "line_items": null,
            "competitive_brands": null,
            "competitive_categories": null,
            "pixels": null,
            "mobile": null,
            "video_attribute": null,
            "media_assets": null,
            "sla": null,
            "thirdparty_pixels": null,
            "native": null,
            "native_attribute": {
                "link": {
                    "url": "https://url.com",
                    "fallback_url": "https://fallback.com",
                    "trackers": [
                        {
                            "url": "http://url.com",
                            "url_secure": "https://secureurl.com"
                        }
                    ]
                },
                "data_assets": [
                    {
                        "data_type": "sponsored_by",
                        "value": "a value"
                    },
                    {
                        "data_type": "rating",
                        "value": "8"
                    }
                ],
                "image_assets": [
                    {
                        "image_type": "main_image",
                        "media_asset_id": 1536691,
                        "creative_asset_image": {
                            "url": "http://url.com",
                            "url_secure": "https://secureurl.com",
                            "height": 12,
                            "width": 34
                        }
                        "image_resize_setting": {
                            "resize_enabled": true,
                            "crop_enabled": true,
                            "aspect_ratio_upper_bound": 1.2,
                            "aspect_ratio_lower_bound": 0.8,
                            "max_scale_factor": 1.41
                        }
                    }
                ],
                "image_trackers": [
                    {
                        "url": "http://url.com",
                        "url_secure": "https://secureurl.com"
                    }
                ],
                "javascript_trackers": [
                    {
                        "url": "http://url.com",
                        "url_secure": "https://secureurl.com"
                    }
                ]
            },
            "thirdparty_viewability_providers": null,
            "status": {
                "user_ready": true
            },
            "sla_eta": null,
            "currency": "USD",
            "type": "standard"
        }
    }
    }
```



>

## **Related Topics**



- <a
  href="creative-upload-service---file-format.md"
  class="xref" target="_blank">Creative Upload Service - File Format</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>








