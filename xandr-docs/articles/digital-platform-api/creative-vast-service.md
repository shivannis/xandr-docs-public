---
Title : Creative VAST Service
Description : You can use the Creative Vast Service to add **video** or **audio**
ms.date: 10/28/2023
ms.custom: digital-platform-api
creatives to Xandr. All creatives must be attached to an advertiser or
---


# Creative VAST Service



You can use the Creative Vast Service to add **video** or **audio**
creatives to Xandr. All creatives must be attached to an advertiser or
publisher.

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



<b>Note:</b> `video_attribute`is always
required on the `creative-vast`endpoint.



>

## Auditing

Xandr works with members who care deeply about brand and reputation. For
this reason, we are careful to ensure that the advertisements
(creatives) that pass through our system are acceptable to all parties.
For quality assurance, all creatives that serve on third-party inventory
must be pre-registered using the Creative Service.

- Creatives are identified by their media_url (either a third-party
  adserver URL or a Content Delivery Network URL for a Flash or video
  file).
- Xandr checks media_urls on a regular basis. If a file disappears, the
  creative will be treated as unaudited.
- Once a creative has passed Xandr audit, certain changes to the
  creative cause it to be resubmitted for audit. For more details, see
  <a
  href="creative-vast-service.md#CreativeVASTService-ChangesThatCauseRe-Audit"
  class="xref" target="_blank">Changes That Cause Re-Audit</a>.
- For more details on auditing, see
  <a href="https://docs.xandr.com/csh?context=23268240" class="xref"
  target="_blank">Creative Standards and Auditing</a>.





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
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-vast?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?advertiser_id=ADVERTISER_ID</a>
(creative JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new hosted video or audio creative to one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-vast?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?publisher_id=PUBLISHER_ID</a>
(creative JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new hosted video or audio creative to one of your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID</a>
(creative JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing hosted video or audio creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-vast" class="xref"
target="_blank">https://api.appnexus.com/creative-vast</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all hosted video or audio creatives.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-vast?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-vast?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?advertiser_code=ADVERTISER_CODE</a></p>
<p><a
href="https://api.appnexus.com/creative-vast?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?publisher_id=PUBLISHER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-vast?publisher_code=PUBLISHER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?publisher_code=PUBLISHER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all hosted video or audio creatives for an advertiser or publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-vast?id=CREATIVE_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?id=CREATIVE_ID</a></p>
<p><a href="https://api.appnexus.com/creative-vast?code=CREATIVE_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?code=CREATIVE_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-vast?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/creative-vast?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple creatives by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-vast?audit_stats=true"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?audit_stats=true</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
creative audit stats.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-vast?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
a creative.</td>
</tr>
</tbody>
</table>





<b>Note:</b> You can filter for creatives
based on when they first and last served. This is particularly useful
when you are approaching your
<a href="https://docs.xandr.com/csh?context=166635497" class="xref"
target="_blank">object limit</a> and need to identify creatives that can
be deleted from the system. For more details, see <a
href="creative-vast-service.md#CreativeVASTService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a>.



class="note tip note_tip">

<b>Tip:</b> The response tells you the number
of creatives with each Xandr, Microsoft, and Google audit status. For
the response format, see the <a
href="creative-vast-service.md#CreativeVASTService-Examples"
class="xref" target="_blank">Examples</a> below.



class="note tip note_tip">

<b>Tip:</b> You cannot delete a creative that
is used as the default creative for a member or placement. Default
creatives can be deleted once they are disassociated from a placement.







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
<ul>
<li><strong>Default:</strong> Auto-generated number.</li>
<li><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query string.</li>
</ul></td>
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
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
name of the creative.</td>
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
<b>Note:</b> Alpha-Beta Notice This field or
feature is part of functionality currently in either Alpha or Beta
phase. It is therefore subject to change.


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
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code>, in query string, if the creative is
attached to an advertiser.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the publisher/media buy to which the creative is attached.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> in query string, if the creative is
attached to an advertiser.</li>
</ul></td>
</tr>
<tr class="even row">
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
the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.</td>
</tr>
<tr class="odd row">
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
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> status </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
status of the creative describing if the creative is ready to serve. For
more details, see <a
href="creative-vast-service.md#CreativeVASTService-Status"
class="xref" target="_blank">Status</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_track_result</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
result of the click track test, a feature only available in the Console
user interface. Possible values: "not_tested", "passed", or
"failed".</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code>, in query string, if the creative is
attached to a publisher.</li>
</ul></td>
</tr>
<tr class="even row">
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
href="creative-vast-service.md#CreativeVASTService-Campaigns"
class="xref" target="_blank">Campaigns</a> below.</p>

class="note tip note_tip">
<b>Tip:</b> This field will only be returned
if an <code class="ph codeph">advertiser_id</code> is specified in the
querystring.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> template </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
creative template (ex.: <code class="ph codeph">template_id </code>6439)
for the creative's format and media type. The template includes code to
control how the creative renders on web pages.</p>
<p>Possible values:</p>
<ul>
<li>Video creatives: <strong>6439</strong></li>
<li>Audio creatives: <strong>38745</strong></li>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> media_url </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
URL of the creative - can be flash, HTML, javascript (see format). URL
must exist and should point to a CDN hosted VAST XML file.</p>
<p><em>This field only applies to third party creatives.</em></p>
<ul>
<li><em><strong>Default:</strong> "not_tested"</em></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
URL of the secure (HTTPS) creative - can be flash, HTML, javascript (see
format) to be served on a secure ad call. URL must exist and should
point to a CDN hosted VAST XML file.</p>
<p><em>This field only applies to third party creatives.</em></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(2000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
(optional) landing page URL for non-3rd party image and flash
creatives.</p>

class="note note_note">
<b>Note:</b> This value must begin with
"http://" or "https://"


<ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST</code>,
if not using content.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">file_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><em>This
field does not apply to hosted video creatives.</em></td>
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
field. Setting it to "pending" will resubmit it for auditing. For
changes that automatically resubmit the creative for auditing, see <a
href="creative-vast-service.md#CreativeVASTService-ChangesThatCauseRe-Audit"
class="xref" target="_blank">Changes That Cause Re-Audit</a>.</li>
</ul>


<p><strong>Required On:</strong> <code class="ph codeph">POST</code>, if
template is for the "image" format.</p></td>
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
<code class="ph codeph">true</code>, the creative will be submitted for
auditing. If false, the creative will not be submitted. Unaudited
creatives can only run on a network's managed inventory.</p>

class="note note_note">
<b>Note:</b>
<ul>
<li>If <code class="ph codeph">audit_status</code> is "no_audit", this
field must be <code class="ph codeph">"false"</code>.</li>
<li>If your member is not yet active, you can add creatives, but they
will not be submitted for audit (<code
class="ph codeph">allow_audit</code> will be false). Once your member
has been activated, if you want these creatives to be audited, you must
update the creatives and set <code class="ph codeph">allow_audit</code>
to <code class="ph codeph">true</code>.</li>
</ul>


<p><strong>Default:</strong> "pending"</p></td>
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
<li><strong>Default:</strong> <code
class="ph codeph">"disabled"</code></li>
</ul>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_ssl_audit</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true</code>, the creative will be submitted for
secure (HTTPS) auditing. If <code class="ph codeph">false</code>, the
creative will not be submitted. If <code class="ph codeph">true</code>,
either media_url_secure or content_secure is required as well.</p>
<ul>
<li><strong>Default:</strong> "disabled"</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> google_audit_status </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong>
Please see <code class="ph codeph">adx_audit</code> instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> google_audit_feedback </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong>
Please see <code class="ph codeph">adx_audit</code> instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> msft_audit_status </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> msft_audit_feedback </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_self_audited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true</code>, the creative is self-audited and
thus will not go through platform (Xandr) audit. The creative can only
serve on inventory that accepts your self-classified creative or on
inventory that accepts unaudited creatives.</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code></li>
</ul></td>
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
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code></li>
<li><strong>Read Only</strong></li>
</ul></td>
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
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code></li>
<li><strong>Read Only</strong></li>
</ul></td>
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
<ul>
<li><strong>Read Only</strong></li>
</ul></td>
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
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<ul>
<li><strong>Default:</strong> false</li>
</ul></td>
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
l


<ul>
<li><strong>Default:</strong> <em>unlimited</em></li>
</ul></td>
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


<ul>
<li><strong>Default:</strong> <em>unlimited</em></li>
</ul></td>
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

<b>Note:</b>
class="note note_note">
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<ul>
<li><strong>Default:</strong> <em>unlimited</em></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true</code>, daily budgeted spend is spread
evenly throughout a day.</p>

class="note note_note">
<b>Note:</b> To include this field in a GET
response, pass attributes=1 in the query string.


<ul>
<li><strong>Default:</strong> unlimited</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">allow_safety_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true</code>, spend per minute is limited to a
maximum of 1% of the lifetime budget and 5% of the daily budget.</p>
<p><strong>Admin Only.</strong></p></td>
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
creating a profile and associating it here.</td>
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
href="creative-folder-service.md"
class="xref" target="_blank">Creative Folder Service</a> and then
associate it here via folder ID or in the Creative Folder service via
creative ID. Output is {"id": "41", "name": "MyFolder"}.</td>
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
href="creative-vast-service.md#CreativeVASTService-LineItems"
class="xref" target="_blank">Line Items</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> is_control </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
is a flag used to mark this creative as part of a control/test group in
A/B testing. For more information, see <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Test and Control Targeting</a> .</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>A
list of segments that a user will be added to upon viewing or clicking
on this creative. For more information, see <a
href="creative-vast-service.md#CreativeVASTService-Segments"
class="xref" target="_blank">Segments</a> below.</p>
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;segments&quot;:[
   {&quot;id&quot;:11111,
    &quot;action&quot;:&quot;add_on_view&quot;
       },
      {&quot;id&quot;:22222,
         &quot;action&quot;:&quot;add_on_click&quot;
    }
]</code></pre></td>
</tr>
<tr class="even row">
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
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the creative was last modified.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_upload_status </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong></td>
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
href="https://docs.xandr.com/csh?context=166635484" class="xref"
target="_blank">Category Service</a>.</p>


<p>Example:</p>
<pre class="pre codeblock"><code>&quot;categories&quot;:[{&quot;id&quot;:&quot;13&quot;,&quot;name&quot;:&quot;Online Games&quot;}]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> adservers </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ad servers that deliver the creative or are called for data collection
purposes during the delivery the creative. <strong><b>Note:</b></strong> To
include adservers in a GET response, pass attributes=1 in the query
string. To retrieve a full list of ad servers, see the <a
href="ad-server-service.md"
class="xref" target="_blank">Ad Server Service</a> .</p>
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;adservers&quot;:[{&quot;id&quot;:&quot;1&quot;,&quot;use_type&quot;:&quot;adserver&quot;,&quot;name&quot;:&quot;24/7 Real Media&quot;}]</code></pre>
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


<p>Example:</p>
<pre class="pre codeblock"><code>&quot;technical_attributes&quot;:[{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;Image&quot;}]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">language</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
language of the creative. To retrieve a full list of languages, see the
<a
href="language-service.md"
class="xref" target="_blank">Language Service</a>.</p>
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;language&quot;:{&quot;id&quot;:&quot;1&quot;,&quot;name&quot;:&quot;English&quot;}</code></pre></td>
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
href="creative-vast-service.md#CreativeVASTService-Brand"
class="xref" target="_blank">Brand</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
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
hours during business hours) by setting this field to 2. For more
details about priority auditing, see <a
href="creative-vast-service.md#"
class="xref" target="_blank">Creative Standards and
Auditing</a>.</p></td>
</tr>
<tr class="odd row">
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
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
code that defines the advertiser's primary currency (for example,
<strong>USD</strong>). For more details about the currency types
available, see <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>.</p>
<ul>
<li><strong>Default:</strong> Member's default currency</li>
<li><strong>Read Only.</strong></li>
</ul></td>
</tr>
<tr class="odd row">
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
href="creative-vast-service.md#CreativeVASTService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
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
href="creative-vast-service.md#CreativeVASTService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">video_attribute</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Attributes
for third-party in-stream (VAST) and hosted video and audio creatives.
See <a
href="creative-vast-service.md#CreativeVASTService-VideoAttribute"
class="xref" target="_blank">Video Attribute</a> below for more
details.</p>
<ul>
<li><strong>Default:</strong> Member's default currency.</li>
<li><strong>Required On:</strong> <code class="ph codeph">POST</code> ,
if template is for "Standard VAST" media subtype.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">competitive_brands</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Creatives
associated with the brands in this array will not serve together in
<code class="ph codeph">/mtj</code> auctions. The classic example of
competing brands is Coke vs. Pepsi. See <a
href="creative-vast-service.md#CreativeVASTService-CompetitiveBrands"
class="xref" target="_blank">Competitive Brands</a> below. For more
information about the brands in our system, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.</p>
<ul>
<li><strong>Default: N/A</strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">competitive_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Creatives
associated with the categories in this array will not serve together in
<code class="ph codeph">/mtj</code> auctions, e.g., "Dating" and
"Education". See <a
href="creative-vast-service.md#CreativeVASTService-CompetitiveCategories"
class="xref" target="_blank">Competitive Categories</a> below. For more
information about the categories we apply to creatives (and brands), see
the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a>.</p>
<ul>
<li><strong>Default: N/A</strong></li>
</ul></td>
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
class="ph codeph">member_id </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
ID of the member that owns the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Used
to associate Xandr hosted files to your creative. This field will be
auto-populate when uploading files via the API.</p>
<p>Example:</p>
<pre class="pre codeblock"><code>&quot;media_assets&quot;:[
      {
        &quot;media_asset_id&quot;:22,
              &quot;creative_field&quot;:null
        }
      ]</code></pre>

class="note note_note">
<b>Note:</b>
<p><code class="ph codeph">creative_field</code> should always be null
for a VAST creative.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">ad_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><div
>
class="note tip note_tip">
<b>Tip:</b>
<p>This field only applies when you are associating creatives to <a
href="line-item-service---ali.md"
class="xref" target="_blank">augmented line items</a>.</p>


<p>The type of creative used. Possible values:</p>
<ul>
<li>"banner"</li>
<li>"video" (includes audio creatives)</li>
<li>"native"</li>
</ul>
<p>This value determines how auction items are tracked for the line
item's buying strategy, paying strategy, optimization options, creative
association, and targeting options.</p>

class="note note_note">
<b>Note:</b> All creatives associated to a
line item must have the same ad type, which should match the <code
class="ph codeph">ad_type</code> selected in the <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item Service - ALI</a>.

</td>
</tr>
</tbody>
</table>



**Audio**

<table id="buy-side-service-template__table_tdt_wlb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_tdt_wlb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_tdt_wlb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_tdt_wlb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tdt_wlb_xwb__entry__1"><code
class="ph codeph">click_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tdt_wlb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tdt_wlb_xwb__entry__3"><p>The
target of the click_action, which is the action that the device should
take when the creative is clicked. Enter a URL that our audit team can
use to verify the brand and attributes of your audio creative. Ensure
that the site the URL points to is in the same language as the audio.
This URL is used only for auditing purposes.</p>

class="note caution note_caution">
CAUTION:
<p>You must provide an auditable URL in order for your creative to pass
auditing.</p>

</td>
</tr>
</tbody>
</table>

**Line Items**

Each object in the `line_items` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item Service - ALI</a> .

<table id="buy-side-service-template__table_lbq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_lbq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_lbq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_lbq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__3"><p>The
name of the line item.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__3"><p>The
state of the creative. Possible values: "active" or "inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__3"><p>The
ID of the line item. Either "id" or "code" is required when updating
line item association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lbq_dmb_xwb__entry__3"><p>The
custom code for the line item. Either "id" or "code" is required when
updating line item association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**Campaigns**

Each object in the `campaigns` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>.

<table id="buy-side-service-template__table_mbq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_mbq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_mbq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_mbq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__3"><p>The
ID of the campaign. Either "id" or "code" is required when updating
campaign association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__1"><code
class="ph codeph">campaign_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__3">The ID
of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__3">The ID
of the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__3"><p>The
name of the campaign.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__3"><p>The
state of the campaign. Possible values: "active", "inactive", or
"parent_inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mbq_dmb_xwb__entry__3"><p>The
custom code for the campaign. Either "id" or "code" is required when
updating line item association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**Status**

<table id="buy-side-service-template__table_nbq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_nbq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_nbq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_nbq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nbq_dmb_xwb__entry__1"><code
class="ph codeph"> user_ready </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nbq_dmb_xwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nbq_dmb_xwb__entry__3"><p>The
status of the creative set by the user describing if the creative is
ready to serve or not. Possible values: "true" or "false".</p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nbq_dmb_xwb__entry__1"><code
class="ph codeph">hosted_assets_association_complete</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nbq_dmb_xwb__entry__2">boolean
/ null</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nbq_dmb_xwb__entry__3"><p>Status
of the creative uploaded by Xandr's internal systems. Possible values:
"true" or "false" for hosted creatives and "null" for third-party
creatives.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Competitive Brands**



class="note tip note_tip">

<b>Tip:</b> For more information about brands,
see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.





<table id="buy-side-service-template__table_obq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_obq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_obq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_obq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_obq_dmb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_obq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_obq_dmb_xwb__entry__3"><p>The
ID of the brand.</p>
<p><strong>Default:</strong> n/a</p>
<p><strong>Required On:</strong> n/a</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_obq_dmb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_obq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_obq_dmb_xwb__entry__3"><p>The
name of the brand.</p>
<p><strong>Default:</strong> n/a</p>
<p><strong>Required On:</strong> n/a</p></td>
</tr>
</tbody>
</table>

**Media-Asset**

`media-asset` object includes the following fields:

<table id="buy-side-service-template__table_pbq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_pbq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_pbq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_pbq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3"><p>ID
of the media asset.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST </code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">parent_media_asset_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">ID of
the parent media asset.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">size_in_bytes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">Size in
bytes.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">cdn_uploaded_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">Date on
which it was uploaded to CDN.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">cdn_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">Non-secure
CDN URL to the media-asset.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">cdn_secure_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">Secure
CDN URL to the media-asset.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">deleted</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">Boolean
indicator that determines if the media-asset was deleted or not.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">mime_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">The
type of asset.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">asset_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3"><p>One
of the following asset types:</p>
<ul>
<li>html5</li>
<li>video</li>
<li>audio</li>
<li>image</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__1"><code
class="ph codeph">duration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pbq_dmb_xwb__entry__3">Duration
of video asset in milliseconds.</td>
</tr>
</tbody>
</table>

**Media_Asset_Status**

`media_asset_status` object includes the following fields:

<table id="buy-side-service-template__table_rbq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_rbq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_rbq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_rbq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rbq_dmb_xwb__entry__1"><code
class="ph codeph">cdn_upload_attempt_count</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rbq_dmb_xwb__entry__3">The
number of attempts made while uploading to CDN.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rbq_dmb_xwb__entry__1"><code
class="ph codeph">status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rbq_dmb_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rbq_dmb_xwb__entry__3">Indicates
the stage of processing the asset is in.</td>
</tr>
</tbody>
</table>

**Template**

`template` object includes the following fields:

<table id="buy-side-service-template__table_sbq_dmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_sbq_dmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_sbq_dmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_sbq_dmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__3">The ID
of creative template.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__3"><p>The
name of the creative template.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__1"><code
class="ph codeph">media_subtype_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__3"><p>The
ID of the media subtype assigned to the template. You can use the <a
href="https://wiki.xandr.com/display/api/Media+Subtype+Service"
class="xref" target="_blank">Media Subtype Service</a> to view all
supported media subtypes.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__1"><code
class="ph codeph">format_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_sbq_dmb_xwb__entry__3"><p>The
name of the format assigned to the template. You can use the <a
href="https://wiki.xandr.com/display/api/Creative+Format+Service"
class="xref" target="_blank">Creative Format Service</a>to view all
supported formats.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Competitive Categories**

class="note tip note_tip">

<b>Tip:</b> For more information about
categories, see the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a>.



<table id="buy-side-service-template__table_fl4_vmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_fl4_vmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_fl4_vmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_fl4_vmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fl4_vmb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fl4_vmb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fl4_vmb_xwb__entry__3"><p>The
ID of the category.</p>
<p><strong>Default:</strong> n/a</p>
<p><strong>Required On:</strong> n/a</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fl4_vmb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fl4_vmb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fl4_vmb_xwb__entry__3"><p>The
name of the category.</p>
<p><strong>Default:</strong> n/a</p>
<p><strong>Required On:</strong> n/a</p></td>
</tr>
</tbody>
</table>

**Video Attribute**

`video_attribute` is required for both audio and video creatives on the
`creative-vast` endpoint. Template ids are:

- 6439 - Video: Standard VAST
- 38745 - Audio: Standard VAST

The `video_attribute` object includes the following fields:

<table id="buy-side-service-template__table_hl4_vmb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_hl4_vmb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_hl4_vmb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_hl4_vmb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__1"><code
class="ph codeph">is_skippable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__3">Deprecated.
Xandr automatically adds a skip tracker to all trafficked VAST
creatives.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__1"><code
class="ph codeph">duration_ms</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__3"><p>The
duration, in milliseconds, of the in-stream (VAST) video or audio
creative. This must be greater than <code
class="ph codeph">0</code>.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST,PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__1"><code
class="ph codeph">wrapper</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__3"><p>The
VAST document wrapper that contains the <code
class="ph codeph">elements</code> array and the <code
class="ph codeph">trackers</code> array. See <a
href="creative-vast-service.md#CreativeVASTService-VideoAttributeWrapper"
class="xref" target="_blank">Video Attribute Wrapper</a> for
details.</p>
<p><strong>Required On:</strong> Either the wrapper or inline object is
required on <code class="ph codeph">POST,PUT.</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__1"><code
class="ph codeph">inline</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hl4_vmb_xwb__entry__3"><p>The
inline VAST document. See <a
href="creative-vast-service.md#CreativeVASTService-VideoAttributeInline"
class="xref" target="_blank">Video Attribute Inline</a> for details.</p>
<p><strong>Required On:</strong> Either the wrapper or inline object is
required on <code class="ph codeph">POST,PUT.</code></p></td>
</tr>
</tbody>
</table>



<b>Note:</b> Either the `wrapper` or
`inline`object can be specified in the creative call. They are mutually
exclusive.





>

## **Video Attribute Wrapper**

The `wrapper` object contains the following fields:

<table id="buy-side-service-template__table_dlq_bnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_dlq_bnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_dlq_bnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_dlq_bnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__3"><p>URL
of the VAST document.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__1"><code
class="ph codeph">secure_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__3">Secure
URL of the VAST document.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__1"><code
class="ph codeph">elements</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dlq_bnb_xwb__entry__3"><p>Elements
of the VAST wrapper.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
</tbody>
</table>



>

## **Video Attribute Wrapper Element**

The `elements` array contains the following fields:



<b>Note:</b> At least one element must be
specified.



<table id="buy-side-service-template__table_mvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_mvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_mvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_mvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__1"><code
class="ph codeph">vast_element_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__3"><p>VAST
element ID. Possible value:</p>
<ul>
<li>1: linear</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__3"><p>Type
of element. Possible value: "linear"</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__1"><code
class="ph codeph">trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__3">VAST
event trackers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__1"><code
class="ph codeph">media_files</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvn_fnb_xwb__entry__3">Media
files in the VAST wrapper.</td>
</tr>
</tbody>
</table>



>

## **Video Wrapper Event Tracker**

You can drop pixels on every event that we track in reporting (see
vast_event_type_id below). Add the pixel(s) as `trackers` on the
creative. The `trackers` array contains the following fields:

<table id="buy-side-service-template__table_ovn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ovn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ovn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_ovn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__3">The
name of the event tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__1"><code
class="ph codeph">vast_event_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__3"><p>The
ID of the VAST event. Possible values:</p>
<ul>
<li>2: start</li>
<li>3: skip</li>
<li>4: error</li>
<li>5: first_quartile</li>
<li>6: midpoint</li>
<li>7: third_quartile</li>
<li>8: completion</li>
<li>9: impression</li>
<li>10: click</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__3">The URL
of the event tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__1"><code
class="ph codeph">secure_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__3">The
secure URL of the event tracker.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__1"><code
class="ph codeph">event_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovn_fnb_xwb__entry__3"><p>The
type of event corresponding to <code
class="ph codeph">vast_event_type_id</code>.</p>
<p><strong>Read Only</strong>.</p></td>
</tr>
</tbody>
</table>

**Video Wrapper Media Files**

<table id="buy-side-service-template__table_qvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_qvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_qvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_qvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__1"><code
class="ph codeph">maintain_aspect_ratio</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__3"><p>The
ratio between a media file's sizes in dif­fer­ent dimen­sions.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__1"><code
class="ph codeph">scalable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__3"><p>Is
the media file scalable.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__1"><code
class="ph codeph">media_asset</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvn_fnb_xwb__entry__3"><p>The
values are derived from the video or audio upload app.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Video Attribute Inline**

<table id="buy-side-service-template__table_rvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_rvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_rvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_rvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__1"><code
class="ph codeph">ad_title</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__3"><p>The
title of the ad.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__1"><code
class="ph codeph">ad_description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__3"><strong>Optional.</strong>
The description of the ad.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__1"><code
class="ph codeph">linear</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__3">Ad that
appears before, after or during a break in content.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__1"><code
class="ph codeph">companion_ads</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rvn_fnb_xwb__entry__3">Companion
banner ads that appear in banner placements in the same page as the
accompanying video or audio (see <a
href="creative-vast-service.md#CreativeVASTService-InlineCompanionAdsObject"
class="xref" target="_blank">Inline Companion Ads Object</a>).</td>
</tr>
</tbody>
</table>

**Inline Linear Object**

<table id="buy-side-service-template__table_svn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_svn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_svn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_svn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__1"><code
class="ph codeph">trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__3">Inline
linear trackers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__1"><code
class="ph codeph">media_files</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__3">The
inline linear media files.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__1"><code
class="ph codeph">skipoffset_seconds</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_svn_fnb_xwb__entry__3"><p>The
number of seconds that is allowed for the video to play, before it can
be skipped. The default value is <code
class="ph codeph">null</code>.</p>

class="note note_note">
<b>Note:</b>
<p>This field can only be used if you are serving ads into a placement
by the same member.</p>

</td>
</tr>
</tbody>
</table>

**Inline Linear Trackers**

<table id="buy-side-service-template__table_tvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_tvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_tvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_tvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__1"><code
class="ph codeph">vast_event_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__3"><p>The
type of tracking event. Possible Values:</p>
<ul>
<li>start</li>
<li>skip</li>
<li>error</li>
<li>first_quartile</li>
<li>completion</li>
<li>impression</li>
<li>click</li>
</ul>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__3">The
name of the tracker.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__3"><p>The
URL of the inline linear event tracker.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__1"><code
class="ph codeph">secure_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tvn_fnb_xwb__entry__3">The
secure URL of the inline linear event tracker.</td>
</tr>
</tbody>
</table>

**Inline Linear Media Files**

<table id="buy-side-service-template__table_vvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_vvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_vvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_vvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__1"><code
class="ph codeph">maintain_aspect_ratio</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__3"><p>The
ratio between a media file's sizes in dif­fer­ent dimen­sions.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__1"><code
class="ph codeph">scalable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__3"><p>Is
the media file scalable.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__1"><code
class="ph codeph">media_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vvn_fnb_xwb__entry__3"><p>The
values are derived from the video upload app.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Inline Companion Ads Object**

<table id="buy-side-service-template__table_wvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_wvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_wvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_wvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wvn_fnb_xwb__entry__1"><code
class="ph codeph">trackers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wvn_fnb_xwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wvn_fnb_xwb__entry__3">Inline
companion ad trackers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wvn_fnb_xwb__entry__1"><code
class="ph codeph">companion_creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wvn_fnb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wvn_fnb_xwb__entry__3">The ID
of the the companion ad.</td>
</tr>
</tbody>
</table>

**Segments**

These fields will be included in the Segments array:

<table id="buy-side-service-template__table_xvn_fnb_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_xvn_fnb_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_xvn_fnb_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_xvn_fnb_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__3"><p>The
ID of the segment.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT </code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__3">The ID
of the segment. This field contains the same information as the <code
class="ph codeph">id</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__3"><p>The
action taken by users that will add them to the segment. Possible
values: "add on view" or "add on click".</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xvn_fnb_xwb__entry__3">The
segment's name.</td>
</tr>
</tbody>
</table>

**Brand**

The `brand` object contains the following fields.



class="note tip note_tip">

<b>Tip:</b> This object is **read-only**. To
set the brand for a creative, use the `brand_id` field outside of this
object.





<table id="buy-side-service-template__table_pt2_14b_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_pt2_14b_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_pt2_14b_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_pt2_14b_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__3"><p>The
ID of the brand of the company advertising the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__3"><p>The
name of the brand of the company advertising the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__1"><code
class="ph codeph">category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__3"><p>The
ID of the category associated with the brand.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__1"><code
class="ph codeph">category_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pt2_14b_xwb__entry__3"><p>The
name of the category associated with the brand.</p>

class="note note_note">
<b>Note:</b>
<p>The <code class="ph codeph">category_name</code> field is returned
only when you pass <code
class="ph codeph">show_category_name=true</code> in the query string of
your call.</p>

</td>
</tr>
</tbody>
</table>



>

## **First Run / Last Run**

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for
creatives based on when they first and last served, as follows:

**Retrieve only creatives that have never served**

Pass `never_run=true` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&never_run=true'
```

class="note tip note_tip">

<b>Tip:</b> You can use `never_run=true` in
combination with other filters, but please note that it will always be
an OR relationship. For example, if you pass both `never_run=true` and
`min_first_run=2012-01-01 00:00:00` in the query string, you will be
looking for creatives that have never served OR line items that first
served on or after 2012-01-01.



**Retrieve only creatives that first served on or after a specific
date**

Pass `min_first_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00'
```

**Retrieve only creatives that first served on or before a specific
date**

Pass`max_first_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only creatives first served within a specific date range**

Pass
`min_first_run=YYYY-MM-DD HH:MM:SS&max_first_run=YYYY-MM-DD HH:MM:SS`in
the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only creatives that last served on or after a specific date**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00'
```

**Retrieve only creatives that last served on or before a specific
date**

Pass `max_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&max_last_run=2012-08-01 00:00:00'
```

**Retrieve only creatives that last served within a specific date
range**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS&max_last_run=YYYY-MM-DD HH:MM:SS`

in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-vast?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00&max_last_run=2012-08-01 00:00:00'
```



>

## Changes That Cause Re-Audit

Once a creative has passed Xandr audit (audit_status is "audited"),
changing any of the following fields causes the creative to be
resubmitted for audit (allow_audit is set to "pending"

- media_url
- click_url
- language
- categories
- technical_attributes
- brand_id
- pixel_url
- video_attribute
- media_assets

Also, if the audit_status is "no_audit", changing allow_audit from
"false" to "true" causes the creative to be resubmitted for Xandr audit.



>

## Examples

**Upload a video or audio creative**

When uploading a creative for hosting with Xandr:

**Step1: Upload the asset to the <a
href="creative-upload-service---file-format.md"
class="xref" target="_blank">creative upload service</a>**

>

``` pre
curl -X POST -H "Authorization: hbapi:139072:5761726637ada:nym2" --form "type=video" --form "file=@./Xandr_30_1280_720_2500k.mp4" "https://api.appnexus.com/creative-upload?member_id=123"
```



The **media_asset_id** is returned.

``` pre
{
    "response": 
        "status": "OK",
        "count": 0,
        "start_element": 0,
        "num_elements": 0,
        "media-asset": [
            {
                "id": 54621,
                "parent_media_asset_id": null,
                "member_id": 123,
                "advertiser_id": null,
                "publisher_id": null,
                "file_name": "Xandr_30_1280_720_2500k.mp4",
                "size_in_bytes": 8358845,
                "cdn_uploaded_on": null,
                "cdn_url": null,
                "cdn_secure_url": null,
                "created_on": "2016-06-15 15:33:17",
                "last_modified": "2016-06-15 15:33:17",
                "deleted": false,
                "media_asset_status": [
                    {
                        "id": 54621,
                        "media_asset_id": 54621,
                        "error_message": null,
                        "local_path": "03/36/2e/66/03362e66-674a-41b3-9477-fcd979cdbf0b/03362e66-674a-41b3-9477-fcd979cdbf0b.mp4",
                        "cdn_upload_attempt_count": 0,
                        "created_on": "2016-06-15 15:33:17",
                        "last_modified": "2016-06-15 15:33:17",
                        "deleted": false,
                        "status": "on_shared_storage"
                    }
                ],
                "media_asset_video": null,
                "media_asset_html5": null,
                "asset_type": "video",
                "mime_type": "video/mp4",
                "duration": "32000"
            }
        ]
    }
```

**Step 2**. **Use the** **`media_asset_id`** **to upload the creative.**

``` pre
$ cat creative_video

{
    "creative-vast": {
        "name": "upload hosted video",
        "media_assets": [
            {
               "media_asset_id": 54621
            }
        ],
        "click_url": "https://appnexus.com",
        "video_attribute": {
            "inline": {
                "ad_title": "hosting test",
                "linear": {
                    "trackers": []
                }
            },
            "is_skippable": true,
            "duration_ms": "57000"
        },
        "template": {
            "id": 6439
        },
        "advertiser_id": 164979,
        "segments": null,
        "allow_audit": true,
        "is_self_audited": false,
        "sla": 0
    }
}

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 12345678,
        "start_element": 0,
        "num_elements": 100,
        "creative-vast": {
            "name": "hosted creative video",
            "brand_id": 1,
            "media_url": "http://appnexus.com",
            "id": 12345678,
            ...
            "track_clicks": true,
            "audit_status": "pending",
            ...
            "media_url_secure": "https://appnexus.com",
            ...
            "is_hosted": true,
            ...
            "language": {
                "id": 1,
                "name": "English"
            },
            ...
            },
            "template": {
                "id": 6439,
                "name": "Standard",
                "media_subtype_id": 64,
                "format_id": 10
            },
            ...
            "video_attribute": {
               "is_skippable": true,
                "duration_ms": 57000,
                "inline": {
                    "ad_title": "hosted video creative",
                    "ad_description": null,
                    "linear": {
                        "trackers": null,
                        "media_files": null
                    }
                },
                "video_frameworks": null
            },
            "media_assets": [
                {
                    "media_asset_id": 54621
                }
            ],
            ...
            "currency": "USD",
            "type": "video"
        },
        ...
    }
}
```

**A `video_attribute` object with wrapper example**

``` pre
{
    "creative-vast": {
        "id": 145,
        ...
        "template_id": 6439,
        "video_attribute": {
            "is_skippable": true,
            "duration_ms": 21000,
            "wrapper": {
                "url": "http://www.doubleclick.net/...",
                "secure_url": "https://www.doubleclick.net/...",
                "elements": [
                    {
                        "vast_element_type_id": 1,
                        "name": "linear",
                        "trackers": [
                            {
                                "name": "startTracker",
                                "vast_event_type": "impression",
                                "url": "http://tracker.com/...",
                                "secure_url": "https://tracker.com/...",
                            }
                            {
                                "name": "completionTracker",
                                "vast_event_type_id": 8,
                                "url": "http://tracker.com/...",
                                "secure_url": "https://tracker.com/...",
                                "event_type": "completion"
                            }
                        ]
                    }
                ]
            }
        }
    }
    }
```

**A `video_attribute` object with inline VAST example**

``` pre
{
    "creative-vast": {
        "name": "John-Doe test",
        "member_id": 1111,
        "advertiser_id": 2474202,
        "template": {
            "id": 6439
        },
        "video_attribute": {
            "duration_ms": 10000,
            "inline": {
                "ad_title": "John-Doe test",
                "linear": {
                    "trackers": []
                }
            }
        },
        "media_assets": [
            {
                "media_asset_id": 5375731,
                "creative_field": null
            }
        ]
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








