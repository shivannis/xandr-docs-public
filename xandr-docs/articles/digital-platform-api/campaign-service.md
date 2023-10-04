---
Title : Campaign Service
Description : A campaign is a way to organize a set of targeting parameters within our
platform in combination with the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
---


# Campaign Service



A campaign is a way to organize a set of targeting parameters within our
platform in combination with the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>. The campaign object
includes parameters such as flight dates and associated creatives
whereas profiles target user and inventory parameters such as geography,
segment, frequency, domain, and category.



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
href="https://api.appnexus.com/campaign?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/campaign?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/campaign?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/campaign?advertiser_code=ADVERTISER_CODE</a></p>
<p>(campaign JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new campaign.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/campaign?id=CAMPAIGN_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/campaign?id=CAMPAIGN_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/campaign?code=CAMPAIGN_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/campaign?code=CAMPAIGN_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p>
<p>(campaign JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing campaign.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/campaign?id=CAMPAIGN_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/campaign?id=CAMPAIGN_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/campaign?code=CAMPAIGN_CODE&amp;advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/campaign?code=CAMPAIGN_CODE&amp;advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific campaign for one of your advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/campaign?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/campaign?advertiser_id=ADVERTISER_ID</a></p>
<p><a
href="https://api.appnexus.com/campaign?advertiser_code=ADVERTISER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/campaign?advertiser_code=ADVERTISER_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all of the campaigns for one of your advertisers.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/campaign?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/campaign?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>View
multiple campaigns by ID using a comma-separated list.</p>

<div id="buy-side-service-template__note_q2c_dyg_wwb"
class="note note_note">
Note: <strong>Helpful Filters</strong>a
<ul>
<li>You can filter for campaigns based on when they first and last
served. This is particularly useful when you are approaching your <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">object limit</a> and need to identify campaigns that can
be deleted from the system. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a>.</li>
</ul>
<ul>
<li>You can filter for campaigns that are not serving due to various
conditions. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Alerts"
class="xref" target="_blank">Alerts</a>.</li>
</ul>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/campaign?search=SEARCH_TERM" class="xref"
target="_blank">https://api.appnexus.com/campaign?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Search
for campaigns with IDs or names containing certain characters.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/campaign?id=CAMPAIGN_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/campaign?id=CAMPAIGN_ID&amp;advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>Delete
a campaign.</p>

<div id="buy-side-service-template__note_kdt_kyg_wwb"
class="note caution note_caution">
CAUTION:
<p>Deletion is permanent and cannot be reverted. Although deleted
campaigns continue to be available in reporting, you will no longer have
visibility into their specific settings (e.g., cost budget and
targeting).</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/campaign/meta" class="xref"
target="_blank">https://api.appnexus.com/campaign/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>







## JSON Fields

**General**



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
ID of the campaign.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT,</code> in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">State</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the campaign. Possible values: "active" or "inactive".</p>
<p><strong>Default:</strong> <code
class="ph codeph">"active"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">parent_inactive</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>If
<code class="ph codeph">true</code>, the campaign is inactive due to the
parent line item being inactive, and the campaign's <code
class="ph codeph">state</code> is overridden (i.e., if <code
class="ph codeph">"parent_inactive": "true"</code> and <code
class="ph codeph">"state": "active"</code>, then the campaign is
inactive).</p>
<p>Note:</p>

<div id="buy-side-service-template__note_wqg_syg_wwb"
class="note note_note">
Note:
<p>To return this field, the <code
class="ph codeph">advertiser_id</code> must be included in the
querystring.</p>


<p><strong>Default:</strong> <code class="ph codeph">false</code></p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">A
custom code for the campaign. The code may only contain alphanumeric
characters, periods, underscores or dashes. The code you enter is not
case-sensitive (upper- and lower-case characters are treated the same).
No 2 objects at the same level (e.g., line items or campaigns) can use
the same code per advertiser. For example, 2 lines items cannot both use
code "XYZ", but a single line item and its child campaign can.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the campaign.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">short_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(50)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
name used by the Imp Bus.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the advertiser to which the campaign belongs.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">You
may associate an optional <code class="ph codeph">profile_id</code> with
this campaign. A profile is a generic set of rules for targeting
inventory. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the line item to which the campaign is associated.</p>

<div id="buy-side-service-template__note_s4b_vyg_wwb"
class="note caution note_caution">
CAUTION:
<p>No more than 500 campaigns can be associated to a single line
item.</p>


<p><strong>Required On:</strong> <code
class="ph codeph">POST </code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">start_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the campaign should start serving. Null corresponds
to "immediately". This value reflects the Advertiser's time zone.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">end_date</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the campaign should stop serving. Null corresponds to
"indefinitely". This value reflects the Advertiser's time zone.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
list of creative IDs or codes associated to the campaign. Update only
requires id or code to be passed in but GET request will include more
creative fields for convenience. Example,</p>
<pre class="pre codeblock"><code>[{&quot;id&quot;: 233,&quot;state&quot;:&quot;active&quot;,&quot;code&quot;:&quot;abc&quot;,&quot;name&quot;:&quot;test&quot;,&quot;width&quot;:200,&quot;height&quot;:200,
&quot;audit_status&quot;:&quot;pending&quot;,&quot;is_expired&quot;:true,
&quot;is_prohibited&quot;:false,&quot;is_self_audited:true,
&quot;format&quot;:&quot;image&quot;,&quot;pop_window_maximize&quot;:false}]</code></pre>
<p>For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Creatives"
class="xref" target="_blank">Creatives</a> below.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_groups</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of IDs</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">You
may wish to bucket a group of creatives and then add them to a campaign
all at once. Create groups through the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
timezone of the campaign. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a> for details and accepted
values. If no timezone is set, this will default to the advertiser's
timezone, which defaults to the member's timezone, which defaults to
EST5EDT. Campaign daily budgets are reset at midnight in the timezone of
the campaign, so this field determines that time.</p>

<div id="buy-side-service-template__note_y1v_bzg_wwb"
class="note note_note">
Note:
<p>Any <code class="ph codeph">PUT</code> calls to the <code
class="ph codeph">advertiser</code> service which include <code
class="ph codeph">set_child_timezone=true</code> in the query string
will cause any timezone settings on the lower level objects (e.g.,
insertion orders, line items, campaigns) to be overridden with the
latest timezone value for that advertiser.</p>


<p><strong>Default:</strong> The advertiser's timezone.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
time of last modification to this campaign.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">supply_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
types of supply targeted by this campaign, as defined by the <code
class="ph codeph">supply_type_targets</code> field in the associated <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">profile</a>. This string can contain one or
more of the following values, separated by commas: web, mobile_web, and
mobile_app.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">supply_type_action</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Whether
the types of supply are "included" or "excluded" from targeting, as
defined by the <code class="ph codeph">supply_type_action</code> field
in the associated <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">profile</a>.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">inventory_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
type of inventory targeted by this campaign. Possible values:
"real_time", "direct", or "both". "Real-time" includes all third-party
inventory not managed by your network that has been enabled for
reselling (including external supply partners such as Microsoft
Advertising Exchange and Google Ad Manager. "Direct" includes only
inventory managed by your network.</p>
<p><strong>Default:</strong> "real_time"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">roadblock_creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Only
serve this campaign if all creatives attached to it, are able to serve
on one page load.</p>

<div id="buy-side-service-template__note_w43_hzg_wwb"
class="note note_note">
Note:
<p>Roadblocking is only enabled for direct inventory. If you attempt to
set <code class="ph codeph">roadblock_creatives</code> to <code
class="ph codeph">true</code> for an <code
class="ph codeph">inventory_type</code> other than <code
class="ph codeph">direct</code>, the API will return an error.</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">roadblock_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>There
are several types of roadblocks available. Allowed values are <code
class="ph codeph">"no_roadblock"</code>, <code
class="ph codeph">"normal_roadblock"</code> (where the number of
creatives is greater than or equal to the number of placements), <code
class="ph codeph">"partial_roadblock"</code> (where the number of
creatives is less than or equal to the number of placements), and <code
class="ph codeph">"exact_roadblock"</code> (where the number of
creatives is equal to the number of available placements).</p>
<p><strong>Default:</strong> <code
class="ph codeph">"no_roadblock"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
<code class="ph codeph">stats</code> object has been deprecated (as of
October 17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">all_stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
<code class="ph codeph">stats</code> object has been deprecated (as of
October 17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">comments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Comments
about the campaign.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
optional labels applied to the campaign. One label is currently
available: "Test/Control". See <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Labels"
class="xref" target="_blank">Labels</a> below for more details.</p>

<div id="buy-side-service-template__note_cnm_kzg_wwb"
class="note tip note_tip">
Tip:
<p>You can report on campaign labels with the <a
href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Network Analytics</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-advertiser-analytics.html"
class="xref" target="_blank">Network Advertiser Analytics</a>, and <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-analytics.html"
class="xref" target="_blank">Advertiser Analytics</a> reports. For
example, if you use the "Test/Control" label to specify the user group
you are targeting (as defined by the user_group_targets field in the
associated <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">profile</a>), you could run the Network
Analytics report filtered by "user_group_for_campaign" to focus on the
campaigns that target a particular user group, or grouped by
"user_group_for_campaign" to rank the performance of your user
groups.</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">broker_fees</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
fees that the network must pay to brokers when serving an ad. These fees
are in addition to the cost of the inventory and are typically for data,
ad serving, or creative hosting. They can either be a percentage of the
media cost or a flat CPM. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-BrokerFees"
class="xref" target="_blank">Broker Fees</a> below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(1000)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
(optional) landing page URL for non-3rd party image and flash
creatives.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">valuation</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">An
object containing several fields relating to performance goals and
minimum margin. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Valuation"
class="xref" target="_blank">Valuation</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">remaining_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number of days between today and the <code
class="ph codeph">end_date</code> for the campaign. Note that this will
be null if the <code class="ph codeph">start_date</code> is in the
future or if either the <code class="ph codeph">start_date</code> or
<code class="ph codeph">end_date</code> is not set.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">total_days</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
number of days between the <code class="ph codeph">start_date</code> and
<code class="ph codeph">end_date</code> for the campaign. Note that this
will be null if either the <code class="ph codeph">start_date</code> or
<code class="ph codeph">end_date</code> is not set.</p>
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
date and time when the campaign first served, refreshed on an hourly
basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they first served,
see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-FirstRun-LastRun"
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
date and time when the campaign last served, refreshed on an hourly
basis. This value reflects the UTC time zone. To include this
information in a GET response, pass <code
class="ph codeph">flight_info=true</code> in the query string. For
details about how to filter line items based on when they last served,
see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-FirstRun-LastRun"
class="xref" target="_blank">First Run / Last Run</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">alerts</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
conditions that are preventing the campaign from serving. There are two
types of alerts: pauses and warnings. Pauses are considered intentional
and user-driven, whereas warnings are considered unintentional. For
example, "State is set to inactive" is considered a pause, whereas "No
creatives are associated with this campaign" is considered a warning. To
retrieve campaigns based on pauses and/or warnings, you must pass
certain query string parameters in the GET request. For more details,
including a complete list of possible pauses and warnings, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Alerts"
class="xref" target="_blank">Alerts</a> below.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creative_distribution_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>When
multiple creatives of the same size are trafficked via a line item, this
field's setting is used to determine the creative rotation strategy that
will be used. Note that creatives must be managed on the campaign in
order to use this field. Allowed values:</p>
<ul>
<li><code class="ph codeph">even</code>: The default. Use our standard
creative optimization algorithm, where each creative's valuation is
computed independently, and the best-valued creative is chosen to
serve.</li>
<li><code class="ph codeph">weighted</code>: Creative rotation is based
on a user-supplied weight.</li>
<li><code class="ph codeph">ctr-optimized</code>: The creative with the
highest CTR delivers the most.</li>
</ul>
<p><strong>Default:</strong> <code
class="ph codeph">"even"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_archived</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Read-only.</strong>
Indicates whether the campaign has been automatically archived due to
not being used. Once set to <code class="ph codeph">true</code>, the
value can't be changed and the only calls that can be made on the
campaign object are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code>.</p>

<div id="buy-side-service-template__note_vqp_rzg_wwb"
class="note note_note">
Note:
<p>If a campaign is automatically archived, its profile will also be
archived. If the campaign's parent line item is automatically archived,
all campaigns (as well as their profiles) under that line item will also
be archived. Once archived, the only calls that may be made on these
objects are <code class="ph codeph">GET</code> and <code
class="ph codeph">DELETE</code> . In addition, once archived, the
campaign may not be associated with any line items.</p>


<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">archived_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Read-only.</strong>
The date and time on which the campaign was archived (i.e., when the
<code class="ph codeph">is_archived</code> field was set to <code
class="ph codeph">true</code>).</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>



**Pricing/Budgeting**

<table id="buy-side-service-template__table_rld_yzg_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_rld_yzg_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_rld_yzg_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_rld_yzg_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">lifetime_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
lifetime budget in dollars (media cost). Null corresponds to
"unlimited".</p>

<div id="buy-side-service-template__note_wcp_b1h_wwb"
class="note caution note_caution">
CAUTION:
<p>If <code class="ph codeph">lifetime_budget</code> is set to <code
class="ph codeph">null</code> (unlimited), and the line item and
insertion order lifetime budgets are also set to <code
class="ph codeph">null</code>, severe overspend can occur.</p>


<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">lifetime_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
lifetime budget in impressions. Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">daily_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
daily budget in dollars (media cost). Null corresponds to
"unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">daily_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
daily budget in impressions. Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">learn_budget</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
lifetime dollar (media cost) budget allocated to learning. Null
corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">learn_budget_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
lifetime impression budget allocated to learning. Null corresponds to
"unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">learn_budget_daily_cap</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
maximum number of dollars (media cost) that can be allocated to learning
per day. Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">learn_budget_daily_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>The
maximum number of impressions that can be allocated to learning per day.
Null corresponds to "unlimited".</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">enable_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>If
true, the campaign's daily budgeted spend is spread out evenly
throughout each day. This is only applicable if <code
class="ph codeph">daily_budget</code> is set. For more details about
even daily pacing, see "Daily Pacing" in the UI documentation (customer
login required).</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">lifetime_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>If
true, the campaign will attempt to spend its overall lifetime budget
evenly over the campaign flight dates. If true, you cannot set a <code
class="ph codeph">daily_budget</code>, you cannot set <code
class="ph codeph">enable_pacing</code> to false, and you must first
establish a <code class="ph codeph">lifetime_budget</code>, a <code
class="ph codeph">start_date</code>, and an <code
class="ph codeph">end_date</code> for the campaign.</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">lifetime_pacing_span</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>In
the event of an underspend event, this indicates the number of days
across which the underspent amount will be distributed. The default
value of <code class="ph codeph">null</code> indicates a value of three
(3) days.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>For
a campaign targeting direct inventory (<code
class="ph codeph">inventory_type</code> is "direct"), since you have
already paid for inventory, there is no need to input a buying strategy.
However, you can set the campaign's priority to weight the campaign
against other direct campaigns within your account. The campaign with
the highest priority will always win, even if a lower priority campaign
bids more. For more information about managing priority, see "Bidding
Priority" in the UI documentation (customer login required).</p>
<p><strong>Default:</strong> 5</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">cadence_modifier_enabled</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>If
true, bids will be adjusted upward and downward based on the frequency
and recency of the user. Typically, bids are increased for low
frequency-recency impressions and decreased for high frequency-recency
users. This feature is based on the idea that the effectiveness of an ad
differs when a user hasn't seen the ad before, hasn't seen it many
times, or hasn't seen it recently. For more details, see "Cadence
Modifier and the Chaos Factor" in the UI documentation (customer login
required).</p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">expected_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>Deprecated.</p>

<div id="buy-side-service-template__note_yhl_21h_wwb"
class="note note_note">
Note:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">total_pacing</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>Deprecated.</p>

<div id="buy-side-service-template__note_aqg_g1h_wwb"
class="note note_note">
Note:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">has_pacing_dollars</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>Deprecated.</p>

<div id="buy-side-service-template__note_c3f_31h_wwb"
class="note note_note">
Note: The <code
class="ph codeph">stats</code> object and Quickstats have been
deprecated (as of October 17, 2016).

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">has_pacing_imps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>Deprecated.</p>

<div id="buy-side-service-template__note_p23_j1h_wwb"
class="note note_note">
Note:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">imps_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>Deprecated.</p>

<div id="buy-side-service-template__note_vcs_k1h_wwb"
class="note note_note">
Note:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__1"><code
class="ph codeph">media_cost_pacing_percent</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_rld_yzg_wwb__entry__3"><p>Deprecated.</p>

<div id="buy-side-service-template__note_emb_n1h_wwb"
class="note note_note">
Note:
<p>The <code class="ph codeph">stats</code> object and Quickstats have
been deprecated (as of October 17, 2016).</p>

</td>
</tr>
</tbody>
</table>

**Bidding Strategies**

<table id="buy-side-service-template__table_jgg_p1h_wwb" class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1">Field</td>
<td class="entry align-left colsep-1 rowsep-1">Type</td>
<td class="entry align-left colsep-1 rowsep-1">Description</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">cpm_bid_type</code></td>
<td class="entry align-left colsep-1 rowsep-1">enum</td>
<td class="entry align-left colsep-1 rowsep-1"><p>Possible values:</p>
<ul>
<li><code class="ph codeph">"base"</code> - Bid a fixed amount.</li>
<li><code class="ph codeph">"average"</code> - Bid Estimated Average
Price (EAP), an estimate of the price that is likely to win about 50% of
the impressions from our platform sellers based on historical bids and
their success or failure. Since off-platform sellers (e.g., Google Ad
Manager, Rubicon, etc.) conduct a secondary auction, bidding EAP does
not necessarily ensure winning half of off-platform impressions.</li>
<li><code class="ph codeph">"clearing"</code> - Bid Estimated Clear
Price (ECP), an estimate of the price that is likely to win most
impressions from our platform sellers based on historical bids and their
success or failure. Since off-platform sellers (e.g., Google Ad Manager,
Rubicon, etc.) conduct a secondary auction, bidding ECP does not
necessarily ensure winning off-platform impressions.</li>
<li><code class="ph codeph">"predicted"</code> - Vary bids based on the
likelihood of a click or conversion for each piece of inventory. For
predicting CPC, use <code class="ph codeph">cpc_goal</code>. For
predicting CPA, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Pixels"
class="xref" target="_blank">Pixels</a> below.</li>
<li><code class="ph codeph">"margin"</code> - Bid a % margin of the
revenue that the advertiser pays you. See <code
class="ph codeph">bid_margin</code>.</li>
<li><p><code class="ph codeph">"custom_model"</code> - Calculate your
bid price based on a custom predictive model. You set which model to use
in the <code class="ph codeph">bid_model</code> object. See <a
href="https://docs.xandr.com/csh?context=72843838" class="xref"
target="_blank">Custom Models</a> for more details (customer login
required).</p>

<div id="buy-side-service-template__note_gbv_51h_wwb"
class="note note_note">
Note: You can set <code
class="ph codeph">cpm_bid_type</code> to <code
class="ph codeph">"custom_model"</code> only when <code
class="ph codeph">inventory_type</code> is <code
class="ph codeph">"rtb"</code>

</li>
<li><code class="ph codeph">"none"</code> - None is available only if
you pay on a per-click or per-conversion basis, and it will result in
not being able to bid CPM.</li>
</ul>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>,
unless <code class="ph codeph">inventory_type</code> is set to <code
class="ph codeph">"direct"</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">base_bid</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>A CPM bid. May be
modified by the <code class="ph codeph">cadence_modifer</code>.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>, if
<code class="ph codeph">cpm_bid_type</code> is <code
class="ph codeph">"base".</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">min_bid</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1">Set a minimum bid that
will apply to variable pricing models (See <code
class="ph codeph">cpm_bid_type</code>).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">max_bid</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1">Set a maximum bid that
will apply to variable pricing models (See <code
class="ph codeph">cpm_bid_type</code>).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">bid_margin</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>The percent margin of
the revenue that the advertiser pays you. For example, if your booked
revenue is $1 CPM, and you set a bidding strategy margin of 25%, your
campaign will bid $0.75. If your booked revenue type is a CPA or CPC
goal, it will apply your desired margin and optimize to that predicted
goal.</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>, if
<code class="ph codeph">cpm_bid_type</code> is <code
class="ph codeph">"margin".</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">cpc_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>You may wish to vary
bids based on the likelihood of some conversion event, either a click or
an acquisition, for that particular inventory, in order to attain a
specific cost per click or cost per acquisition. In this case, our
platform's algorithm determines a bid based on past conversion rates and
based on how much you value a conversion, whether you define it as a
click or an acquisition (registration, purchase, etc.).</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>, if
<code class="ph codeph">cpm_bid_type</code> is <code
class="ph codeph">"predicted"</code> and the <code
class="ph codeph">roi_click_goal</code> and <code
class="ph codeph">roi_view_goal</code> are not set in the <code
class="ph codeph">pixels</code> array.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">max_learn_bid</code></td>
<td class="entry align-left colsep-1 rowsep-1">double</td>
<td class="entry align-left colsep-1 rowsep-1"><p>When using the <code
class="ph codeph">cpm_bid_type</code> "predicted", the optimization
engine submits "learn" bids to learn about new inventory. If necessary,
enter the max CPM dollar amount for these bids.</p>

<div id="buy-side-service-template__note_iv3_x1h_wwb"
class="note note_note">
Note:
<p>When you set both <code class="ph codeph">max_learn_bid</code> for
learn bids and <code class="ph codeph">max_bid</code> for non-learn
bids, the lower of the two will be used for learn.</p>


<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">pixels</code></td>
<td class="entry align-left colsep-1 rowsep-1">array</td>
<td class="entry align-left colsep-1 rowsep-1">If using a CPA Bidding
Strategy, the pixel array is used to associate conversion pixels with
the campaign and set CPA goals and payout values for the pixels. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Pixels"
class="xref" target="_blank">Pixels</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"><code
class="ph codeph">bid_model</code></td>
<td class="entry align-left colsep-1 rowsep-1">object</td>
<td class="entry align-left colsep-1 rowsep-1"><p>If using a custom
predictive model to determine bid prices, this object is used to
associate your custom model with the campaign. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-BidModel"
class="xref" target="_blank">Bid Model</a> below for more details.</p>
<p><strong>Default:</strong> <code class="ph codeph">null</code></p>
<strong>Required On:</strong> <code
class="ph codeph">POST, if cpm_bid_type is "custom_model".</code></td>
</tr>
</tbody>
</table>

**Optimization Levers**

These optional fields give advanced users extra control over optimizing
their campaigns. For detailed information on these fields, see
"Optimization Levers" in the UI documentation (customer login required).

<div id="buy-side-service-template__note_vr5_1bh_wwb"
class="note tip note_tip">

Tip:

If you would like access to optimization levers, a Xandr admin must set
the `expose_optimization_levers`

field to true for your <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">member</a>. Contact your account
representative for more details.



<table id="buy-side-service-template__table_y3v_cbh_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_y3v_cbh_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_y3v_cbh_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_y3v_cbh_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">ecp_learn_divisor</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p><strong>Deprecated.</strong>
This feature is not supported in version 7 of the Optimization engine.
For newer ways to adjust learn bids, see <code
class="ph codeph">learn_override_type</code>.</p>
<p><strong>Default On:</strong> <code
class="ph codeph">null (3)</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">projected_learn_events</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p><strong>Deprecated.</strong>
This feature has been incorporated into the learn algorithm for version
7 of the Optimization engine.</p>
<p><strong>Default On:</strong> <code
class="ph codeph">null (3)</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">learn_threshold</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>The
number of successful events (clicks or conversions) required before
moving from the learn stage to the optimized stage. Possible values: 1 -
100.</p>
<p><strong>Default On:</strong> <code
class="ph codeph">null (3)</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">max_learn_bid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>When
using the <code class="ph codeph">cpm_bid_type</code> "predicted", the
optimization engine submits "learn" bids to learn about new inventory.
If necessary, enter the max CPM dollar amount for these bids.
<strong>Note:</strong> When you set both <code
class="ph codeph">max_learn_bid</code> for learn bids and <code
class="ph codeph">max_bid</code> for non-learn bids, the lower of the
two will be used for learn.</p>
<p><strong>Default On:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">cadence_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>The
level at which the cadence modifier is applied. Possible values:
"advertiser" or "creative".</p>
<p><strong>Default On:</strong> "advertiser"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">defer_to_li_prediction</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>If
true, this campaign will temporarily change the level at which it learns
while maintaining a specified profit margin percentage. See
"Optimization Levers" in the UI documentation for more details (customer
login required).</p>
<p><strong>Default On:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">optimization_lookback</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>Optimization
is based on the last 30 days of data, evenly weighted. You can use this
field to give more weight to certain days within that window. Possible
values for "day": 0 - 29. Possible values for "bias_percent": 0 - 100.
Example:</p>
<pre class="pre codeblock"><code>&quot;optimization_lookback&quot;:[
{
&quot;day&quot;:8,
&quot;bias_percent&quot;:10
},
{
&quot;day&quot;:12,
&quot;bias_percent&quot;:11
}
],</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">optimization_version</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>Indicates
the version of optimization currently in use.</p>
<p><strong>Default On:</strong> v7</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">learn_override_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>If
you want to override our algorithm's learn bid, this is the type of bid
to submit instead. Possible values:</p>
<ul>
<li>"base_cpm_bid" - A flat CPM bid. You specify the CPM value in the
<code class="ph codeph">base_cpm_bid_value</code> field.</li>
<li>"venue_avg_cpm_bid" - The average bid for each venue.</li>
</ul>
<p><strong>Default On:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">base_cpm_bid_value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>The
CPM value to use for learn bids, when <code
class="ph codeph">learn_override_type</code> is "cpm_learn_bid". This
value cannot be greater than 10.0.</p>
<p><strong>Default On:</strong> <code class="ph codeph">null</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT,</code> if <code
class="ph codeph">learn_override_type</code> is "base_cpm_bid".</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">bid_multiplier</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>The
value by which to multiply the learn bid. This can be used for our
algorithm's default learn bid or an override learn bid when <code
class="ph codeph">learn_override_type</code> is <code
class="ph codeph">"venue_average_cpm_bid"</code>. This value cannot be
greater than <code class="ph codeph">10.0</code>.</p>
<p><strong>Default On:</strong> 1.0</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">impression_limit</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>For
a specific venue, the number of impressions after which to stop
overriding our algorithm's learn bid. This value must be greater than
0.</p>
<p><strong>Default On:</strong> 40000</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">campaign_modifiers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>An
array of objects containing the segment modifier-related settings
associated with this campaign (format shown below). For more
information, see "Segment Modifier" in the UI documentation (customer
login required).</p>

<div id="buy-side-service-template__note_a4m_jbh_wwb"
class="note note_note">
Note:
<p>You cannot set both <code class="ph codeph">campaign_modifier</code>
and <code class="ph codeph">bid_modifier_model</code> in a single
campaign.</p>


<pre class="pre codeblock"><code>{
&quot;campaign&quot;:
{
&quot;id&quot;:123,
&quot;name&quot;:&quot;ModifiedCampaign&quot;,
&quot;campaign_modifiers&quot;:[
{
&quot;type&quot;:&quot;segment_modifier_id&quot;,
&quot;value&quot;:456
},
{
&quot;type&quot;:&quot;segment_price_id&quot;,
&quot;value&quot;:789
},
{
&quot;type&quot;:&quot;segment_modifier_weight&quot;,
&quot;value&quot;:1200
}
]
}
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__1"><code
class="ph codeph">bid_modifier_model</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_y3v_cbh_wwb__entry__3"><p>The
custom predictive model to apply multipliers to the campaign's
optimization-derived CPM bid. This type of model is used in conjunction
with our optimization-based buying strategy (when <code
class="ph codeph">cpm_bid_type</code> is <code
class="ph codeph">"predicted"</code> or <code
class="ph codeph">"margin"</code>).</p>
<p>See <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-BidModifierModel"
class="xref" target="_blank">Bid Modifier Model</a> below for more
details.</p>

<div id="buy-side-service-template__note_f4w_nbh_wwb"
class="note note_note">
Note:
<p>You can set <code class="ph codeph">bid_modifier_model</code> only
when <code class="ph codeph">inventory_type</code> is <code
class="ph codeph">"rtb"</code>. Also, you cannot set both <code
class="ph codeph">bid_modifier_model</code> and <code
class="ph codeph">campaign_modifier</code> in a single campaign.</p>


<p><strong>Default On:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>

**Broker Fees**

When a network uses a broker to serve an impression, it pays a fee to
the broker for that service. This value varies between different
networks, different brokers, and different campaigns. Therefore, the
network must specify how much it will pay each broker it uses. This can
also be done at the Line Item level (<a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a>) or at the Insertion
Order level (<a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a>).

To create or edit brokers, refer to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/broker-service.html"
class="xref" target="_blank">Broker Service</a>.

<table id="buy-side-service-template__table_dxk_qbh_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_dxk_qbh_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_dxk_qbh_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_dxk_qbh_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__1"><code
class="ph codeph">broker_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__3">The ID
of the broker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__1"><code
class="ph codeph">broker_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__3"><p>The
name of the broker.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__1"><code
class="ph codeph">payment_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__3">Type of
payment to the broker. Possible values: "cpm" or "revshare".</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__3">The
value of the payment, based on the payment type.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__2">string
(255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_dxk_qbh_wwb__entry__3">The
free-form description of the broker fee entry.</td>
</tr>
</tbody>
</table>

**Add a broker fee**

``` pre
$ cat add-broker-fees.json
{
    "campaign":
        {
    "broker_fees":[
        {
                "broker_id": 145,
                "broker_name": "Test 3",
                "payment_type": "cpm",
                "value": "1.00",
                "description": "JMS fee"
            }]
    }
}

$ curl -b cookies -c cookies -X PUT -d @add-broker-fees.json 'https://api.appnexus.com/campaign?id=376737&advertiser_id=35081'

{
    "response":{
         "status":"OK",
         "id":"376737",
         "count":1,
         "start_element":0,
         "num_elements":100,
        }
}
```

**Modify a broker fee**

``` pre
$ cat modify-broker-fee.json
{
"campaign" :
{ "broker_fees": [
    {
        "broker_id": 145,
        "payment_type": "cpm",
        "value": "3.00",
        "description": "New JMS fee"
        }]
    }
}

$ curl -b cookies -c cookies -X PUT -d @modify-broker-fee.json 'https://api.appnexus.com/campaign?id=376737&advertiser_id=35081'

{
    "response":{
        "status":"OK",
        "id":"376737",
        "count":1,
        "start_element":0,
        "num_elements":100,
        
```

**Creatives**

Each object in the `creatives` array includes the following fields. To
obtain information for "id" or "code" fields, you can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

<table id="buy-side-service-template__table_tm5_1ch_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_tm5_1ch_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_tm5_1ch_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_tm5_1ch_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
ID of the creative. Either "id" or "code" is required when updating
creative association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
custom code for the creative. Either "id" or "code" is required when
updating creative association.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
name of the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
width of the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
height of the creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
state of the creative. Possible values: "active" or "inactive".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
audit status of the creative. Possible values: "no_audit", "pending",
"rejected", "audited", or "unauditable".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">is_expired</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>Whether
the creative is expired. If "false," the creative is active.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3">Whether
the creative falls into a prohibited category on our platform.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">is_self_audited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3">Whether
the creative is self-audited. If true, then yes.<strong>Read
Only.</strong></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">format</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>The
format of the creative file. Possible values: "url-html", "url-js",
"flash", "image", "raw-js", "raw-html", "iframe-html", or "text".</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">weight</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3">A
user-supplied weight that determines the creative rotation strategy for
same-sized creatives managed at the campaign level. To use this field,
the value of <code class="ph codeph">creative_distribution_type</code>
must be <code class="ph codeph">"weighted"</code>. Allowed value: an
integer greater than <code class="ph codeph">0</code> and less than or
equal to <code class="ph codeph">1000</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__1"><code
class="ph codeph">pop_window_maximize</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_tm5_1ch_wwb__entry__3"><p>If
true, the publisher's tag will maximize the window. Only relevant for
creatives with format "url-html" and "url-js". If pop_window_maximize is
set to true, then neither "height" nor "width" should be set on the
creative.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Valuation**

The `valuation` object contains the following fields related to minimum
margin. For more information on minimum margin, see "Using Minimum
Margin to Balance Margin and Delivery" in the UI documentation (customer
login required).

<table id="buy-side-service-template__table_hbg_3ch_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_hbg_3ch_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_hbg_3ch_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_hbg_3ch_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbg_3ch_wwb__entry__1"><code
class="ph codeph">min_margin_rtb_pct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbg_3ch_wwb__entry__2">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbg_3ch_wwb__entry__3"><p>The
minimum margin PCT on RTB inventory. Overrides what is set in the line
item.</p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbg_3ch_wwb__entry__1"><code
class="ph codeph">eap_multiplier </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbg_3ch_wwb__entry__2">decimal</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_hbg_3ch_wwb__entry__3"><p>The
EAP multiplier value. Can only be used on inventory types "real_time" or
"both".</p>
<p><strong>Default:</strong> 1.000000</p></td>
</tr>
</tbody>
</table>

**Stats**

<div id="buy-side-service-template__note_lgb_lch_wwb"
class="note caution note_caution">

CAUTION: The `stats` object has been
deprecated (as of October 17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.



**Labels**

Each object in the `labels` array includes the following fields.

<div id="buy-side-service-template__note_ahp_4ch_wwb"


Note: You can use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/label-service.html"
class="xref" target="_blank">Label Service</a> to view all possible
labels for campaigns, advertisers, insertion orders, line items, and
publishers. This service also allows you to view the labels that have
already been applied to your objects.



<table id="buy-side-service-template__table_x3c_qch_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_x3c_qch_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_x3c_qch_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_x3c_qch_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__3">The ID
of the label. Possible value: 9 (Test/Control).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__3">The
name of the label. This field is read-only. Possible value:
"Test/Control".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__1"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_x3c_qch_wwb__entry__3">The
value assigned to the label. This could be the name of the
user_group_target in the associated <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">profile</a>.</td>
</tr>
</tbody>
</table>

**Pixels**

<div id="buy-side-service-template__note_kcf_tch_wwb"


Note: Before you can associate a pixel
to a campaign, the pixel must already be attached to the parent line
item. Also, if `cpc_bid_type` is "predicted" and cpc_goal is not set,
you must provide a value for either `roi_click_goal` or `roi_view_goal`



<table id="buy-side-service-template__table_kh2_vch_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_kh2_vch_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_kh2_vch_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_kh2_vch_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">The ID
of the conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">The
state of the conversion pixel. Possible values: "active" or
"inactive".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">Read-only.
The name of the conversion pixel.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">roi_click_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">If
paying on a per-impression (CPM) basis and optimizing to a predicted CPA
goal, set this field to the click goal.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">roi_view_goal</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">If
paying on a per-impression (CPM) basis and optimizing to a predicted CPA
goal, set this field to the view goal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">click_payout</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">If
paying on per-conversion (CPA) basis, set this field to the amount to
pay the publisher per click.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__1"><code
class="ph codeph">view_payout</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_kh2_vch_wwb__entry__3">If
paying on a per-conversion (CPA) basis, set this field to the amount to
pay the publisher per view.</td>
</tr>
</tbody>
</table>

**Bid Model**

The `bid_model` object contains the following fields.

<table id="buy-side-service-template__table_szj_ych_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_szj_ych_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_szj_ych_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_szj_ych_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__3">The ID
of the custom model. Only custom models with <code
class="ph codeph">model_output</code> set to <code
class="ph codeph">"Bid"</code> are allowed. Use the <a
href="https://docs.xandr.com/csh?context=72843840" class="xref"
target="_blank">Custom Model Service</a> to retrieve these IDs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__3"><p>The
name of the custom model.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_szj_ych_wwb__entry__3"><p>The
status of the model. Possible values: <code class="ph codeph">1</code>
(true) or 0 (false).</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Bid Modifier Model**

The `bid_modifier_model` object contains the following fields.

<table id="buy-side-service-template__table_mvv_1dh_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_mvv_1dh_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_mvv_1dh_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_mvv_1dh_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__3">The ID
of the custom model. Only customs models with <code
class="ph codeph">model_output</code> set to <code
class="ph codeph">"bid_modifier"</code> are allowed. Use the <a
href="https://docs.xandr.com/csh?context=72843840" class="xref"
target="_blank">Custom Model Service</a> to retrieve these IDs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__3"><p>The
name of the custom model.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_mvv_1dh_wwb__entry__3"><p>The
status of the model. Possible values: <code class="ph codeph">1</code>
(true) or 0 (false).</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**First Run / Last Run**

To include the `first_run` and `last_run` fields in a GET response, pass
`flight_info=true` in the query string. You can also filter for
campaigns based on when they first and last served, as follows:

**Retrieve only campaigns that have never served**

Pass `never_run=true` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&never_run=true'
```

<div id="buy-side-service-template__note_tnw_gdh_wwb"


Note:

You can use `never_run=true` in combination with other filters, but
please note that it will always be an OR relationship. For example, if
you pass both `never_run=true` and `min_first_run=2012-01-01 00:00:00`
in the query string, you will be looking for campaigns that have never
served OR line items that first served on or after 2012-01-01.



**Retrieve only campaigns that first served on or after a specific
date**

Pass `min_first_run=YYYY-MM-DD HH:MM:SS` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&min_first_run=2012-01-01+00:00:00'
```

**Retrieve only campaigns that first served on or before a specific
date**



Pass `max_first_run=YYYY-MM-DD HH:MM:SS`

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&max_first_run=2012-08-01+00:00:00'
```

**Retrieve only campaigns that first served within a specific date
range**



Pass
`min_first_run=YYYY-MM-DD HH:MM:SS&max_first_run=YYYY-MM-DD HH:MM:SS` in
the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&min_first_run=2012-01-01+00:00:00&max_first_run=2012-08-01+00:00:00'
```

**Retrieve only campaigns that last served on or after a specific date**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&min_last_run=2012-01-01+00:00:00'
```

**Retrieve only campaigns that last served on or before a specific
date**

Pass `max_last_run=YYYY-MM-DD HH:MM:SS`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&max_last_run=2012-08-01+00:00:00'
```

**Retrieve only campaigns that last served within a specific date
range**

Pass `min_last_run=YYYY-MM-DD HH:MM:SS&max_last_run=YYYY-MM-DD HH:MM:SS`
in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?advertiser_id=100&flight_info=true&min_last_run=2012-01-01+00:00:00&max_last_run=2012-08-01+00:00:00'
```

**Alerts**

This field notifies you of conditions that are preventing the campaign
from serving. There are two types of alerts: pauses and warnings. Pauses
are considered intentional and user-driven, whereas warnings are
considered unintentional. For example, "State is set to inactive" is
considered a pause, whereas "No creatives are associated with this
campaign" is considered a warning.

To retrieve campaigns based on pauses and/or warnings, you must pass
certain query string parameters in the GET request. See below for use
cases with query string parameters and examples. Note that you can use
these query string parameters both when retrieving all campaigns or
specific campaigns, but the examples below only cover retrieving all
campaigns, as that is where this feature offers the most value.

**Retrieve all campaigns and show alerts**

Pass `show_alerts=true` in the query string. This parameter will add the
`alerts` object to every campaign in the response, whether or not the
campaign has pauses or warnings.

<div id="buy-side-service-template__note_tw3_ngh_wwb"


Note:

For each of the use cases below, you must pass `show_alerts=true`if you
want the `alerts`object to show up in the response.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Parent line item is inactive."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58991,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58992,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Parent line item is inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have at least one pause**

Pass `show_alerts=true&pauses=true`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=true'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 8,
                            "message": "Flight end is in the past."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have no pauses**

Pass `show_alerts=true&pauses=false`in the query string.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=false'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58991,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58992,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 2,
                            "message": "All creatives associated to this campaign are either ineligible to serve (inactive, expired, prohibited) or can serve only on direct inventory and on supply partners who trust your network's self-classification (unaudited)."
                        }
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```



**Retrieve only campaigns that have a specific pause**

Pass `show_alerts=true&pauses=PAUSE_ID` in the query string. For pause
IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Pauses"
class="xref" target="_blank">Pauses</a> table below.

In this example, we use pause ID 4 to retrieve all campaigns with flight
start dates that are in the future.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=4'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 66493,
                "state": "inactive",
                "start_date": "2012-10-01 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 15:01:02"
                }
            },
            {
                "id": 66510,
                "state": "active",
                "start_date": "2012-9-01 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 2,
                            "message": "Parent line item is inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 15:01:02"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have two or more specific pauses**

Pass `show_alerts=true&pauses=SUM_OF_PAUSE_IDS` in the query string. For
pause IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Pauses"
class="xref" target="_blank">Pauses</a> table below.

In this example, we add together pause ID 1 and pause ID 2 to retrieve
all campaigns that are set to inactive and whose line items are also set
to inactive.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=3'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 66493,
                "state": "inactive",
                "start_date": "2012-10-01 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Parent line item is inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 15:01:02"
                }
            },
            {
                "id": 66510,
                "state": "inactive",
                "start_date": "2012-9-01 00:00:00",
                "end_date": null,
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Parent line item is inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 15:01:02"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have at least one warning**

Pass `show_alerts=true&warnings=true`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&warnings=true'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 2,
                            "message": "All creatives associated to this campaign are either ineligible to serve (inactive, expired, prohibited) or can serve only on direct inventory and on supply partners who trust your network's self-classification (unaudited)."
                        },
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have no warnings**

Pass `show_alerts=true&warnings=false`in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&warnings=false'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58991,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58992,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have a specific warning**

Pass `show_alerts=true&warnings=WARNING_ID` in the query string. For
warning IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Warnings"
class="xref" target="_blank">Warnings</a> table below.

In this example, we use warning ID 1 to retrieve all campaigns that have
no associated creatives.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&warnings=1'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have at least one pause AND at least one
warning**

Pass `show_alerts=true&pauses=true&warnings=true` in the query string.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=true&warnings=true'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 2,
                            "message": "Parent line item is inactive."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 58993,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 2,
                            "message": "All creatives associated to this campaign are either ineligible to serve (inactive, expired, prohibited) or can serve only on direct inventory and on supply partners who trust your network's self-classification (unaudited)."
                        }

                    ],
                    "pauses": [
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have a specific pause AND a specific
warning**

Pass `show_alerts=true&pauses=PAUSE_ID&warnings=WARNING_ID` in the query
string. For pause and warning IDs, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Pauses"
class="xref" target="_blank">Pauses</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Warnings"
class="xref" target="_blank">Warnings</a> tables below.

In this example, we retrieve all campaigns that have a flight start date
in the future (pause ID 4) AND that do not have any associated creatives
(warning ID 1).

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=4&warnings=1'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58990,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Retrieve only campaigns that have pauses OR warnings**

You can combine the parameters described above with
`alert_boolean_op=or`to retrieve campaigns that have certain pauses OR
certain warnings. See the examples below. For pause and warning IDs, see
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Pauses"
class="xref" target="_blank">Pauses</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/campaign-service.html#CampaignService-Warnings"
class="xref" target="_blank">Warnings</a> tables below.

<div id="buy-side-service-template__note_y5k_pmh_wwb"


Note: The
`alert_boolean_op=or`parameter can be used only to retrieve campaigns
with pauses OR warnings. It cannot be used to look for OR relationships
between pauses (i.e., pause 1 OR pause 2) or between warnings (i.e.,
warning 1 OR warning 2).



In this example, we retrieve all campaigns that are set to inactive
(pause ID 1) OR that do not have any eligible creatives (warning ID 2).

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=1&warnings=2&alert_boolean_op=or'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58934,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 2,
                            "message": "All creatives associated to this campaign are either ineligible to serve (inactive, expired, prohibited) or can serve only on direct inventory and on supply partners who trust your network's self-classification (unaudited)."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

In this example, we retrieve all campaigns that are set to inactive
(pause ID 1) OR that have no warnings.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=1&warnings=false&alert_boolean_op=or'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58934,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

In this example, we retrieve all campaigns that have no pauses OR that
have no warnings.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=false&warnings=false&alert_boolean_op=or'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58934,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

In this example, we retrieve all campaigns that are set to inactive
(pause ID 1) AND whose parent line item is set to inactive (pause ID 4)
OR that have no associated creatives (warning ID 1).

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?show_alerts=true&pauses=5&warnings=1&alert_boolean_op=or'

{
    "response": {
        "status": "OK",
        "campaigns": [
            {
                "id": 58934,
                "state": "inactive",
                ...
                "alerts": {
                    "warnings": [

                    ],
                    "pauses": [
                        {
                            "id": 1,
                            "message": "State is set to inactive."
                        },
                        {
                            "id": 4,
                            "message": "Flight start is in the future."
                        }
                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            {
                "id": 81287,
                "state": "active",
                ...
                "alerts": {
                    "warnings": [
                        {
                            "id": 1,
                            "message": "No creatives are associated with this campaign."
                        }
                    ],
                    "pauses": [

                    ],
                    "warnings_last_checked": "2012-07-27 14:40:36",
                    "pauses_last_checked": "2012-08-08 13:01:03"
                }
            },
            ...
        ],
        ...
        }
    }
}
```

**Pauses**

<table id="buy-side-service-template__table_e5n_cnh_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_e5n_cnh_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">ID</th>
<th id="buy-side-service-template__table_e5n_cnh_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__1">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__2">State
is set to inactive.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__1">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__2">Parent
line item is inactive.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__1">4</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__2">Flight
start is in the future.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__1">8</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_e5n_cnh_wwb__entry__2">Flight
end is in the past.</td>
</tr>
</tbody>
</table>

**Warnings**

<table id="buy-side-service-template__table_f5n_cnh_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_f5n_cnh_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">ID</th>
<th id="buy-side-service-template__table_f5n_cnh_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_f5n_cnh_wwb__entry__1">1</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_f5n_cnh_wwb__entry__2">No
creatives are associated with this campaign.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_f5n_cnh_wwb__entry__1">2</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_f5n_cnh_wwb__entry__2">All
creatives associated to this campaign are either ineligible to serve
(inactive, expired, prohibited) or can serve only on direct inventory
and on supply partners who trust your network's self-classification
(unaudited).</td>
</tr>
</tbody>
</table>





## Examples

**Viewing campaign 17607 for advertiser 9**

<div id="buy-side-service-template__p-20eb2a6d-1e56-42a6-96ee-f5d79f857f38"
>

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/campaign?id=17607&advertiser_id=11'

{
    "response": {
        "status": "OK",
        "campaign": {
            "id": 167051,
            "state": "inactive",
            "code": null,
            "advertiser_id": 11,
            "line_item_id": 69405,
            "creative_id": 851325,
            "pixel_id": 16688,
            "short_name": null,
            "name": "My example campaign",
            "profile_id": 752909,
            "start_date": "2011-10-31 00:00:00",
            "end_date": null,
            "timezone": "EST5EDT",
            "priority": 5,
            "cadence_modifier_enabled": true,
            "cpc_goal": null,
            "cpm_bid_type": "predicted",
            "base_bid": null,
            "min_bid": null,
            "max_bid": null,
            "bid_margin": 0,
            "roadblock_creatives": false,
            "roadblock_type": "no_roadblock",
            "inventory_type": "real_time",
            "last_modified": "2014-05-28 16:06:01",
            "max_learn_bid": null,
            "cadence_type": "creative",
            "click_url": null,
            "require_cookie_for_tracking": true,
            "allow_unverified_ecp": false,
            "defer_to_li_prediction": false,
            "ecp_learn_divisor": "3.000000",
            "projected_learn_events": "3",
            "learn_threshold": 3,
            "cpc_payout": null,
            "comments": null,
            "optimization_version": "v7",
            "learn_override_type": null,
            "base_cpm_bid_value": null,
            "impression_limit": 40000,
            "bid_multiplier": 1,
            "remaining_days": null,
            "total_days": null,
            "supply_type_action": "include",
            "supply_type": "mobile_web, web",
            "creatives": [
                {
                    "id": 445832,
                    "code": null,
                    "name": "Donate car.jpg",
                    "width": "300",
                    "height": "250",
                    "state": "inactive",
                    "audit_status": "no_audit",
                    "is_expired": true,
                    "is_prohibited": false,
                    "is_self_audited": true,
                    "format": "image",
                    "pop_window_maximize": null
                }
            ],
            "pixels": [
                {
                    "id": 16688,
                    "roi_click_goal": 5,
                    "roi_view_goal": 5,
                    "click_payout": null,
                    "view_payout": null,
                    "code": null,
                    "name": "123",
                    "state": "active",
                    "trigger_type": "hybrid"
                }
            ],
            "optimization_lookback": [
                {
                    "day": "0",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "1",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "2",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "3",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "4",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "5",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "6",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "7",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "8",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "9",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "10",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "11",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "12",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "13",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "14",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "15",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "16",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "17",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "18",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "19",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "20",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "21",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "22",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "23",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "24",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "25",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "26",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "27",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "28",
                    "bias_percent": "50.000000"
                },
                {
                    "day": "29",
                    "bias_percent": "50.000000"
                }
            ],
            "campaign_modifiers": null,
            "labels": [
                {
                    "id": "9",
                    "name": "Test/Control",
                    "value": "Test pattern - Group 1"
                }
            ],
            "broker_fees": null,
            "valuation": null,
            "lifetime_budget": 16000,
            "lifetime_budget_imps": null,
            "daily_budget": 500,
            "daily_budget_imps": null,
            "enable_pacing": true,
            "allow_safety_pacing": true,
            "lifetime_pacing": false,
            "lifetime_pacing_span": null
        },
        "count": 1,
        "start_element": 0,
        "num_elements": 100
    }
}
```



**Creating a direct campaign**

This code represents the minimum information required to create an
inactive campaign for direct inventory with no creatives and no
targeting.

``` pre
$ cat create-campaign.json

{
    "campaign": {
    "state": "inactive",
    "name": "Rich's cool campaign",
    "advertiser_id": 11,
    "line_item_id": 47726,
    "inventory_type": "direct"
    }
}
```

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?advertiser_id=11'
{
  "response": {
    "status": "OK",
    "id": 11,
    "dbg_info": {
      ...
    }
  }
}
        
```



<div id="buy-side-service-template__section_hh4_n13_wwb"
>

## **Related Topics**



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>








