---
Title : Impression Tracker Service
Description : The Impression Tracker Service gives you a way to track impressions for
creatives served by third-party ad servers (rather than by AppNexus).
---


# Impression Tracker Service



The Impression Tracker Service gives you a way to track impressions for
creatives served by third-party ad servers (rather than by AppNexus).

Here's how it works:

1.  You use the Impression Tracker Service to create an impression
    tracker. The impression tracker specifies the line item and
    publisher to which it is associated. Optionally, it can include the
    specific placement or payment rule to which it is associated.
2.  You create an image or JavaScript tag with the url to the impression
    tracker and ask the ad server to use it as a piggyback pixel for the
    creative. The impression tracker url must be formatted as
    <a href="https://ib.adnxs.com/imptr?id=12345" class="xref"
    target="_blank">https://ib.adnxs.com/imptr?id=12345</a><u>&t=2</u>,
    where 12345 is the impression tracker ID and "t" represents the
    pixel type (where t=1 is for javascript and t=2 is for image).
3.  When the ad server serves the creative, the tracker calls
    <a href="https://ib.adnxs.com/" class="xref"
    target="_blank">ib.adnxs.com</a>, and AppNexus records the
    impression.

**Query String Parameters**

The following parameters can be passed to AppNexus in the query string
of the impression tracker url:

<table id="buy-side-service-template__table_lsh_51n_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_lsh_51n_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Parameter</th>
<th id="buy-side-service-template__table_lsh_51n_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lsh_51n_wwb__entry__1"><code
class="ph codeph">cachebuster</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lsh_51n_wwb__entry__2">Prevents
the user's browser from caching the impression tracker url. This
parameter can be populated by the third-party ad server.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lsh_51n_wwb__entry__1"><code
class="ph codeph">ancost</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lsh_51n_wwb__entry__2">The
media cost you paid for the impression. The parameter can be populated
by the third-party ad server.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lsh_51n_wwb__entry__1"><code
class="ph codeph">redir</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_lsh_51n_wwb__entry__2">The
redirect URL that AppNexus will redirect to once the impression has been
recorded.</td>
</tr>
</tbody>
</table>

**Image Tag Example**

``` pre
<!-- Imp Tracker - Test Impression Tracker - DO NOT MODIFY -->
<img src="https://ib.adnxs.net/imptr?id=531&cachebuster=[CACHEBUSTER]&ancost=[ANCOST]" width="1" height="1" />
<!-- End of Imp Tracker -->
```

**JavaScript Tag Example**

``` pre
<!-- Imp Tracker - Test Impression Tracker - DO NOT MODIFY -->
<script src="https://ib.adnxs.net/imptr?id=531&cachebuster=[CACHEBUSTER]&ancost=[ANCOST]" type="text/javascript"></script>
<!-- End of Imp Tracker -->
```

**Reporting**

You can report on your external impressions using the
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Network Analytics</a>, <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-publisher-analytics.html"
class="xref" target="_blank">Network Publisher Analytics</a>, and
<a href="https://docs.xandr.com/csh?context" class="xref"
target="_blank">Publisher Analytics</a> reports.



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
href="https://api.appnexus.com/imptracker?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/imptracker?advertiser_id=ADVERTISER_ID</a>(imptracker
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/imptracker?id=IMP_TRACKER_ID"
class="xref"
target="_blank">https://api.appnexus.com/imptracker?id=IMP_TRACKER_ID</a>(imptracker
JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an impression tracker.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/imptracker?id=IMP_TRACKER_ID"
class="xref"
target="_blank">https://api.appnexus.com/imptracker?id=IMP_TRACKER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
an impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/imptracker?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/imptracker?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple impression trackers by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/imptracker?id=IMP_TRACKER_ID"
class="xref"
target="_blank">https://api.appnexus.com/imptracker?id=IMP_TRACKER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
an impression tracker.</td>
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
ID of the impression tracker.</p>
<ul>
<li><strong>Default:</strong> Auto-incremented number (i.e., 123).</li>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE,</code> in query string.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the member to which the advertiser belongs.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the advertiser that owns the impression tracker.</p>
<ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST,</code>
in query string.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name for the impression tracker.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
custom code for the impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
state of the impression tracker. Possible values: "active" or
"inactive".</p>
<ul>
<li><strong>Default</strong> - <code
class="ph codeph">"active"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
publisher to which the impression tracker is associated. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html#ImpressionTrackerService-Publisher"
class="xref" target="_blank">Publisher</a> below for more details.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">tag</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
placement to which the impression tracker is associated. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html#ImpressionTrackerService-Tag"
class="xref" target="_blank">Tag</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">payment_rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
payment rule to which the impression tracker is associated. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html#ImpressionTrackerService-PaymentRule"
class="xref" target="_blank">Payment Rule</a> below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">line_item</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
advertiser line item to which the impression tracker is associated. See
<a
href="https://docs.xandr.com/bundle/xandr-api/page/impression-tracker-service.html#ImpressionTrackerService-LineItem"
class="xref" target="_blank">Line Item</a> below for more details.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">clicktracker</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Not
currently in use.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
date and time when the impression tracker was last modified.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>



**Publisher**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
class="xref" target="_blank">Publisher Service</a> to get information
about publishers.

<table id="buy-side-service-template__table_vx2_hbn_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_vx2_hbn_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_vx2_hbn_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_vx2_hbn_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vx2_hbn_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vx2_hbn_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vx2_hbn_wwb__entry__3">The ID
of the publisher to which the impression tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vx2_hbn_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vx2_hbn_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_vx2_hbn_wwb__entry__3"><p>The
name of the publisher to which the impression tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Tag**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a> to get information
about placements.

<table id="buy-side-service-template__table_wx2_hbn_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_wx2_hbn_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_wx2_hbn_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_wx2_hbn_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wx2_hbn_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wx2_hbn_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wx2_hbn_wwb__entry__3">The ID
of the placement to which the impression tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wx2_hbn_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wx2_hbn_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_wx2_hbn_wwb__entry__3"><p>The
name of the placement to which the impression tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Payment Rule**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html"
class="xref" target="_blank">Payment Rule Service</a> to get information
about payment rules.

<table id="buy-side-service-template__table_xx2_hbn_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_xx2_hbn_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_xx2_hbn_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_xx2_hbn_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xx2_hbn_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xx2_hbn_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xx2_hbn_wwb__entry__3">The ID
of the payment rule to which the impression tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xx2_hbn_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xx2_hbn_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_xx2_hbn_wwb__entry__3"><p>The
name of the payment rule to which the impression tracker is
associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Line Item**

You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a> to get information
about line items.

<table id="buy-side-service-template__table_yx2_hbn_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_yx2_hbn_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_yx2_hbn_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_yx2_hbn_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_yx2_hbn_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_yx2_hbn_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_yx2_hbn_wwb__entry__3">The ID
of the line item to which the impression tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_yx2_hbn_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_yx2_hbn_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_yx2_hbn_wwb__entry__3"><p>The
name of the line item to which the impression tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>





## Examples

**Creating a new impression tracker**

<div id="buy-side-service-template__p-20eb2a6d-1e56-42a6-96ee-f5d79f857f38"
>

``` pre
$ cat imptracker

{
    "imptracker": {
        "name": "Test Impression Tracker",
        "publisher": {
            "id": 44449
        },
        "line_item": {
            "id": 74957
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @imptracker 'https://api.appnexus.com/imptracker?advertiser_id=37236'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1425,
        "start_element": 0,
        "num_elements": 100,
        "imptracker": {
            "id": 1425,
            "member_id": 958,
            "advertiser_id": 37236,
            "name": "Test Impression Tracker",
            "code": null,
            "state": "active",
            "last_modified": "2012-01-10 16:02:15",
            "publisher": {
                "id": 44449,
                "name": "November Publisher"
            },
            "tag": null,
            "payment_rule": null,
            "line_item": {
                "id": 74957,
                "name": "Test Line Item"
            }
        }
    }
}
```



**Updating an impression tracker**

In this example, the PUT request associates a placement to impression
tracker 1425.

``` pre
$ cat imptracker_update
{
    "imptracker": {
        "tag": {
            "id": 474412
        }
    }
}

$ curl -b cookies -c cookies -X PUT -d @imptracker_update 'https://api.appnexus.com/imptracker?id=1425'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "1425",
        "start_element": 0,
        "num_elements": 100,
        "imptracker": {
            "id": 1425,
            "member_id": 958,
            "advertiser_id": 37236,
            "name": "Test Impression Tracker",
            "code": null,
            "state": "active",
            "last_modified": "2012-01-10 16:10:12",
            "publisher": {
                "id": 44449,
                "name": "November Publisher"
            },
            "tag": {
                "id": 474412,
                "name": "[Demo Publisher] - Default"
            },
            "payment_rule": null,
            "line_item": {
                "id": 74957,
                "name": "Test Line Item"
            }
        }
    }
}
```

**Viewing impression tracker 582**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/imptracker?id=582'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "imptracker": {
            "id": 582,
            "member_id": 1066,
            "advertiser_id": 35081,
            "name": "Test Impression Tracker 1",
            "code": null,
            "state": "active",
            "last_modified": "2012-02-28 19:06:01",
            "publisher": {
                "id": 89287,
                "name": "Test Publisher 1"
            },
            "tag": null,
            "payment_rule": null,
            "line_item": {
                "id": 31189,
                "name": "Test Line Item 1"
            }
        }
    }
}
```

**Viewing all impression trackers for advertiser 35081**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/imptracker?advertiser_id=35081'

{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "imptrackers": [
            {
                "id": 582,
                "member_id": 1066,
                "advertiser_id": 35081,
                "name": "Test Impression Tracker 1",
                "code": null,
                "state": "active",
                "last_modified": "2012-02-28 19:06:01",
                "publisher": {
                    "id": 89287,
                    "name": "Test Publisher 1"
                },
                "tag": null,
                "payment_rule": null,
                "line_item": {
                    "id": 31189,
                    "name": "Test Line Item 1"
                }
            },
            {
                "id": 584,
                "member_id": 1066,
                "advertiser_id": 35081,
                "name": "Test Impression Tracker 2",
                "code": null,
                "state": "active",
                "last_modified": "2012-02-28 19:40:48",
                "publisher": {
                    "id": 89288,
                    "name": "Test Publisher 2"
                },
                "tag": null,
                "payment_rule": null,
                "line_item": {
                    "id": 31190,
                    "name": "Test Line Item 2"
                }
            }
        ]
    }
}
```






