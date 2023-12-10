---
Title : Creative HTML Service
Description : You can use the Creative HTML Service to add HTML5 creatives to
ms.date: 10/28/2023
ms.custom: digital-platform-api
AppNexus. All creatives must be attached to an advertiser or publisher.
---


# Creative HTML Service



You can use the Creative HTML Service to add HTML5 creatives to
AppNexus. All creatives must be attached to an advertiser or publisher.

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



<b>Note:</b> `media_asset_id`is required in
order to upload a hosted HTML5 creative. For more details, see the <a
href="creative-html-service.md#CreativeHTMLService-Examples"
class="xref" target="_blank">Examples</a> section below.



>

## Auditing

AppNexus works with members who care deeply about brand and reputation.
For this reason, we are careful to ensure that the advertisements
(creatives) that pass through our system are acceptable to all parties.
For quality assurance, all creatives that serve on third-party inventory
must be pre-registered using the Creative Service.

- Creatives are identified by their media_url (either a third-party
  adserver URL or a Content Delivery Network URL for a Flash or video
  file).
- AppNexus checks media_urls on a regular basis. If a file disappears,
  the creative will be treated as unaudited.
- Once a creative has passed AppNexus audit, certain changes to the
  creative cause it to be resubmitted for audit. For more details, see
  <a
  href="creative-html-service.md#CreativeHTMLService-ChangesThatCauseRe-Audit"
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
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-html?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?advertiser_id=ADVERTISER_ID</a></p>
<p>(creative JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new hosted HTML5 creative to one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-html?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?publisher_id=PUBLISHER_ID</a></p>
<p>(creative JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new HTML5 creative to one of your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing hosted HTML5 creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-html" class="xref"
target="_blank">https://api.appnexus.com/creative-html</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all hosted HTML5 creatives.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-html?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-html?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?advertiser_code=ADVERTISER_CODE</a></p>
<p><a
href="https://api.appnexus.com/creative-html?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?publisher_id=PUBLISHER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-html?publisher_code=PUBLISHER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?publisher_code=PUBLISHER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>View
all hosted HTML5 creatives for an advertiser or publisher.</p>

class="note note_note">
<b>Note:</b>
<p>You can filter for creatives based on when they first and last
served. This is particularly useful when you are approaching your <a
href="https://docs.xandr.com/csh?context=166635497" class="xref"
target="_blank">object limit</a> and need to identify creatives that can
be deleted from the system. For more details, see <a
href="creative-html-service.md#CreativeHTMLService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a>.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-html?id=CREATIVE_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?id=CREATIVE_ID</a></p>
<p><a href="https://api.appnexus.com/creative-html?code=CREATIVE_CODE"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?code=CREATIVE_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-html?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/creative-html?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple creatives by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-html?audit_stats=true"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?audit_stats=true</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>View
creative audit stats.</p>

class="note note_note">
<b>Note:</b>
<p>The response tells you the number of creatives with each AppNexus,
Microsoft, and Google audit status. For the response format, see <a
href="creative-html-service.md#CreativeHTMLService-Examples"
class="xref" target="_blank">Examples</a> below.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-html?id=CREATIVE_ID&amp;publisher_id=PUBLISHER_ID</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>Delete
a creative.</p>

class="note note_note">
<b>Note:</b>
<p>You cannot delete a creative that is used as the default creative for
a member or placement. Default creatives can be deleted once they are
disassociated from a placement.</p>

</td>
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
<p><strong>Default</strong>: Auto-generated number.</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT, </code>in
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
additional custom code for the creative.Each object in the <code
class="ph codeph">line_items</code> arr</td>
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
<li><code class="ph codeph">"html"</code></li>
</ul>

class="note note_note">
<b>Note:</b>
<p>Alpha-Beta Notice. This field or feature is part of functionality
currently in either Alpha or Beta phase. It is therefore subject to
change.</p>


<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Size
of the creative in height.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">size
of the creative in width.</td>
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
<p><strong>Required On</strong>: <code
class="ph codeph">POST/PUT,</code> in query string, if the creative is
attached to an advertiser.</p></td>
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
<p><strong>Required On</strong>: <code
class="ph codeph">POST/PUT,</code> in query string, if the creative is
attached to a publisher.</p></td>
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
will be verified by the AppNexus auditing team. If not included, it will
be assigned by the auditing team. To retrieve a full list of brands, see
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
class="ph codeph">status </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
status of the creative describing if the creative is ready to serve. For
more details, see <a
href="creative-html-service.md#CreativeHTMLService-Status"
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
<p><strong>Default</strong>: "not_tested"</p></td>
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
href="creative-html-service.md#CreativeHTMLService-Campaigns"
class="xref" target="_blank">Campaigns</a> below.</p>

class="note note_note">
<b>Note:</b>
<p>This field will only be returned if an <code
class="ph codeph">advertiser_id</code> is specified in the
querystring.</p>

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
<li>HTML Multi Asset - Standard: <strong>8606</strong></li>
<li>HTML Multi Asset - Interstitial: <strong>8607</strong></li>
<li><p>HTML Multi Asset - Expandable: <strong>8608</strong></p></li>
</ul>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code></p>
<p>For more details, see <a
href="creative-html-service.md#CreativeHTMLService-Examples"
class="xref" target="_blank">Examples</a> below.</p></td>
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
URL of the creative - can be flash, HTML, javascript (see format).</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST,</code> if
not using content.</p>
<p><em>This field only applies to third party creatives. Leave blank for
HTML5 creatives.</em></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> media_url_secure </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
URL of the secure (HTTPS) creative - can be flash, HTML, javascript (see
format) to be served on a secure ad call.</p>
<p><em>This field only applies to third party creatives.</em> <em>Leave
blank for HTML5 creatives.</em></p></td>
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
<b>Note:</b>
<p>This value must begin with "http://" or "https://"</p>


<p><strong>Required On</strong>: <code class="ph codeph">POST,</code> if
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
href="creative-html-service.md#CreativeHTMLService-ChangesThatCauseRe-Audit"
class="xref" target="_blank">Changes That Cause Re-Audit</a>.</li>
</ul>


<p><strong>Default</strong>: "pending"</p></td>
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
</ul>


<p><strong>Default</strong>: <code
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


<p><strong>Default</strong><code
class="ph codeph">: "disabled"</code></p></td>
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
creative will not be submitted. If true, either media_url_secure or
content_secure is required as well.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
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
<code class="ph codeph">true,</code> the creative is self-audited and
thus will not go through platform (AppNexus) audit. The creative can
only serve on inventory that accepts your self-classified creative or on
inventory that accepts unaudited creatives.</p>
<p><strong>Default</strong>: <code
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
domains, this is set true to prevent the creative from serving.</p>
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
true, the creative is hosted by AppNexus.</p>
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
<b>Note:</b>
<p>To include this field in a GET response, pass attributes=1 in the
query string.</p>


<p><strong>Default</strong>: unlimited</p></td>
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


<p><strong>Default</strong>: unlimited</p></td>
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


<p><strong>Default</strong>: unlimited</p></td>
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


<p><strong>Default</strong>: unlimited</p></td>
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


<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
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
href="creative-html-service.md#CreativeHTMLService-LineItems"
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
target="_blank">Test and Control Targeting</a>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>A
list of <a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">segments</a> that a user will be added to upon viewing
or clicking on this creative. For more information, see <a
href="creative-html-service.md#CreativeHTMLService-Segments"
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
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph"> adservers </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ad servers that deliver the creative or are called for data collection
purposes during the delivery the creative.</p>

<b>Note:</b>
class="note note_note">
<b>Note:</b>
<p>To include adservers in a GET response, pass attributes=1 in the
query string. To retrieve a full list of ad servers, see the <a
href="ad-server-service.md"
class="xref" target="_blank">Ad Server Service</a> .</p>


<p>Example:</p>
<pre class="pre codeblock"><code>&quot;adservers&quot;:[{&quot;id&quot;:&quot;1&quot;,&quot;use_type&quot;:&quot;adserver&quot;,&quot;name&quot;:&quot;24/7 Real Media&quot;}]</code></pre>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
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
<tr class="odd row">
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
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">brand</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
brand of the company advertising the creative and the category
associated with the brand. For more details, see <a
href="creative-html-service.md#CreativeHTMLService-Brand"
class="xref" target="_blank">Brand</a> below.</p>
<p><strong>Read Only.</strong></p></td>
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

<p>If you have a supplemental services agreement with AppNexus for
priority audits, you can submit a creative for priority audit (auditing
within 2 hours during business hours) by setting this field to 2. For
more details about priority auditing, see <a
href="https://docs.xandr.com/csh?context=23268240" class="xref"
target="_blank">Creative Standards and Auditing</a>.</p></td>
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
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
code that defines the advertiser's primary currency (for example,
<strong>USD</strong>). For more details about the currency types
available, see <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>.</p>
<p><strong>Default:</strong> Member's default currency.</p>
<p><strong>Read Only.</strong></p></td>
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
href="creative-html-service.md#CreativeHTMLService-FirstRun-LastRun"
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
href="creative-html-service.md#CreativeHTMLService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
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
href="creative-html-service.md#CreativeHTMLService-CompetitiveBrands"
class="xref" target="_blank">Competitive Brands</a> below. For more
information about the brands in our system, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.</td>
</tr>
<tr class="odd row">
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
href="creative-html-service.md#CreativeHTMLService-CompetitiveCategories"
class="xref" target="_blank">Competitive Categories</a> below. For more
information about the categories we apply to creatives (and brands), see
the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a>.</td>
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
Google Ad Exchange audit of the creative. Information about whether or
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
class="ph codeph">custom_macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">HTML5
creatives will have the <code class="ph codeph">HTML5_INDEX_FILE</code>
custom macro which is set by the API.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">media_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>It
is used to associate AppNexus hosted files to your creative. This field
will be auto-populate when uploading files via the API.</p>
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
for an HTML5 creative.</p>

</td>
</tr>
</tbody>
</table>



**Line Items**

Each object in the `line_items` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item Service - ALI</a>.

<table id="buy-side-service-template__table_ygd_bpc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ygd_bpc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ygd_bpc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_ygd_bpc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__3"><p>The
name of the line item.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__3"><p>The
state of the creative. Possible values: "active" or "inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__3"><p>The
ID of the line item. Either "id" or "code" is required when updating
line item association.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ygd_bpc_xwb__entry__3"><p>The
custom code for the line item. Either "id" or "code" is required when
updating line item association.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**Campaigns**

Each object in the `campaigns` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>.

<table id="buy-side-service-template__table_zgd_bpc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_zgd_bpc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_zgd_bpc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_zgd_bpc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__3"><p>The
ID of the campaign. Either "id" or "code" is required when updating
campaign association.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__1"><code
class="ph codeph">campaign_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__3">The ID
of the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__3">The ID
of the creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__3"><p>The
name of the campaign.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__3"><p>The
state of the campaign. Possible values: "active", "inactive", or
"parent_inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_zgd_bpc_xwb__entry__3"><p>The
custom code for the campaign. Either "id" or "code" is required when
updating line item association.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>

**Status**

<table id="buy-side-service-template__table_ahd_bpc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ahd_bpc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_ahd_bpc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_ahd_bpc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ahd_bpc_xwb__entry__1"><code
class="ph codeph">user_ready</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ahd_bpc_xwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ahd_bpc_xwb__entry__3"><p>The
status of the creative set by the user describing if the creative is
ready to serve or not. Possible values: "true" or "false"</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ahd_bpc_xwb__entry__1"><code
class="ph codeph">hosted_assets_association_complete</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ahd_bpc_xwb__entry__2">boolean
/ null</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ahd_bpc_xwb__entry__3"><p>Status
of the creative uploaded by AppNexus' internal systems. Possible values:
"true" or "false" for hosted creatives and "null" for third-party
creatives.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Competitive Brands**



<b>Note:</b> For more information about
brands, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.



<table id="buy-side-service-template__table_y1k_3pc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_y1k_3pc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_y1k_3pc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_y1k_3pc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y1k_3pc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y1k_3pc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y1k_3pc_xwb__entry__3"><p>The
ID of the brand.</p>
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: N/A</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y1k_3pc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y1k_3pc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y1k_3pc_xwb__entry__3"><p>The
name of the brand.</p>
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: N/A</p></td>
</tr>
</tbody>
</table>

**Competitive Categories**



<b>Note:</b> For more information about
categories, see the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a>.



<table id="buy-side-service-template__table_b1c_mpc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_b1c_mpc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="buy-side-service-template__table_b1c_mpc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_b1c_mpc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_b1c_mpc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_b1c_mpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_b1c_mpc_xwb__entry__3"><p>The
ID of the category.</p>
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: N/A</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_b1c_mpc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_b1c_mpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_b1c_mpc_xwb__entry__3"><p>The
name of the category.</p>
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: N/A</p></td>
</tr>
</tbody>
</table>

**Segments**

These fields will be included in the Segments array:

<table id="buy-side-service-template__table_c1c_mpc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_c1c_mpc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_c1c_mpc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_c1c_mpc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__3"><p>The
ID of the segment.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__1"><code
class="ph codeph">segment_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__3">The ID
of the segment. This field contains the same information as the <code
class="ph codeph">id</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__1"><code
class="ph codeph">action</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__3"><p>The
action taken by users that will add them to the segment. Possible
values: "add on view" or "add on click".</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST, PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_c1c_mpc_xwb__entry__3">The
segment's name.</td>
</tr>
</tbody>
</table>

**Brand**

The `brand` object contains the following fields.



<b>Note:</b> This object is **read-only**. To
set the brand for a creative, use the `brand_id`

field outside of this object.



<table id="buy-side-service-template__table_xc3_tpc_xwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_xc3_tpc_xwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_xc3_tpc_xwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_xc3_tpc_xwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__3"><p>The
ID of the brand of the company advertising the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__3"><p>The
name of the brand of the company advertising the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__1"><code
class="ph codeph">category_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__3"><p>The
ID of the category associated with the brand.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__1"><code
class="ph codeph">category_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xc3_tpc_xwb__entry__3"><p>The
name of the category associated with the brand.</p>

class="note note_note">
<b>Note:</b> The <code
class="ph codeph">category_name</code> field is returned only when you
pass<code class="ph codeph">show_category_name=true</code> in the query
string of your call.


<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**First Run / Last Run**

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for
creatives based on when they first and last served, as follows:

**Retrieve only creatives that have never served**

Pass `never_run=true`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&never_run=true'
```



<b>Note:</b> You can use `never_run=true`in
combination with other filters, but please note that it will always be
an OR relationship. For example, if you pass both `never_run=true` and
`min_first_run=2012-01-01 00:00:00`in the query string, you will be
looking for creatives that have never served OR line items that first
served on or after 2012-01-01.



**Retrieve only creatives that first served on or after a specific
date**

Pass `min_first_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00'
```

**Retrieve only creatives that first served on or before a specific
date**

Pass `max_first_run=YYYY-MM-DD HH:MM:SS` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only creatives first served within a specific date range**

Pass
`min_first_run=YYYY-MM-DD HH:MM:SS&max_first_run=YYYY-MM-DD HH:MM:SS` in
the query string.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&min_first_run=2012-01-01 00:00:00&max_first_run=2012-08-01 00:00:00'
```

**Retrieve only creatives that last served on or after a specific date**



Pass `min_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00'
```

**Retrieve only creatives that last served on or before a specific
date**

Pass `max_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&max_last_run=2012-08-01 00:00:00'
```

**Retrieve only creatives that last served within a specific date
range**

Pass
`min_last_run=YYYY-MM-DD HH:MM:SS&max_last_run=YYYY-MM-DD HH:MM:SS`in
the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-html?advertiser_id=100&flight_info=true&min_last_run=2012-01-01 00:00:00&max_last_run=2012-08-01 00:00:00'
```



>

## Changes That Cause Re-Audit

Once a creative has passed AppNexus audit (audit_status is "audited"),
changing any of the following fields causes the creative to be
resubmitted for audit (allow_audit is set to "pending"):

- media_url
- click_url
- language
- categories
- technical_attributes
- brand_id
- pixel_url
- video_attribute
- media_asset

Also, if the audit_status is "no_audit", changing allow_audit from
"false" to "true" causes the creative to be resubmitted for AppNexus
audit.





## Examples

**Upload an HTML5 creative**

When uploading a creative for hosting with AppNexus:

**Step 1.** Upload the asset to the <a
href="creative-upload-service---file-format.md"
class="xref" target="_blank">creative upload service</a>.

>

``` pre
curl -X POST -H "Authorization: hbapi:139072:5761726637ada:nym2" --form "type=html" --form "file=@./AppNexus_30_1280_720_2500k.zip" "https://api.appnexus.com/creative-upload?member_id=123"
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
                "file_name": "AppNexus_30_1280_720_2500k.zip",
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
                        "local_path": "03/36/2e/66/03362e66-674a-41b3-9477-fcd979cdbf0b/03362e66-674a-41b3-9477-fcd979cdbf0b.zip",
                        "cdn_upload_attempt_count": 0,
                        "created_on": "2016-06-15 15:33:17",
                        "last_modified": "2016-06-15 15:33:17",
                        "deleted": false,
                        "status": "on_shared_storage"
                    }
                ],
                "media_asset_video": null,
                "media_asset_html5": null,
                "asset_type": "html",
                "mime_type": "zip" 
            }
        ]
    }
```

**Step 2**. Use the **`media_asset_id`** to upload the creative.

``` pre
$ cat creative_html

{
    "creative-html": {
        "name": "upload_hosted_html5.zip",
        "template":{
            "id":8606
            },
        "media_assets": 
           [{
               "media_asset_id": 54621
            }
        ],
        "width":120
        "height":600
        "click_url": "https://appnexus.com",
        "advertiser_id": 164979,
        "segments": null,
        "allow_audit": true,
        "is_self_audited": false,
        "sla": 0
    }
}
```

``` pre
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 12345678,
        "start_element": 0,
        "num_elements": 100,
        "creative-html": {
            "name": "upload_hosted_html5.zip",
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
                "id": 8606,
                "name": "HTML Multi Asset - Standard",
            },
            ...
            "media_assets": [
                {
                    "media_asset_id": 54621
                }
            ],
            ...
            "currency": "USD",
            "type": "html"
        },
        ...
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






