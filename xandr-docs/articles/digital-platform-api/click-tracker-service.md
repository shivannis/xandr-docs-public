---
Title : Click Tracker Service
Description : The Click Tracker Service gives you a way to track user clicks on
ms.date: 10/28/2023
ms.custom: digital-platform-api
creatives served by third-party ad servers (versus those served by
Xandr). Here's how it works:
---


# Click Tracker Service



The Click Tracker Service gives you a way to track user clicks on
creatives served by third-party ad servers (versus those served by
Xandr). Here's how it works:

1.  You use the Click Tracker Service to create a click tracker. The
    click tracker specifies the line item and publisher to which the
    click tracker is associated. Generally, it also specifies the target
    landing page url for the creative (see the `redir` parameter below
    for the alternate case). Optionally, it can include the specific
    placement or payment rule to which it is associated.
2.  You create the url to the click tracker and ask the ad server to use
    it as the creative's landing page url. The click tracker url must be
    formatted as
    <a href="https://ib.adnxs.com/clktr?id=12345" class="xref"
    target="_blank"><code
    class="ph codeph">https://ib.adnxs.com/clktr?id=12345</code></a>,
    where 12345 is the click tracker ID.
3.  When the ad server serves the creative and someone clicks on it, the
    call first goes to <a href="http://ib.adnxs.com/" class="xref"
    target="_blank">ib.adnxs.com</a>, where Xandr records the click, and
    is then redirected to the target landing page.

For specific usage examples, see <a
href="click-tracker-service.md#ClickTrackerService-Examples"
class="xref" target="_blank">Examples</a>.

**Query String Parameters**

The following parameters can be passed to Xandr in the query string of
the click tracker url:

<table id="buy-side-service-template__table_gzk_1wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_gzk_1wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Parameter</th>
<th id="buy-side-service-template__table_gzk_1wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gzk_1wm_wwb__entry__1"><code
class="ph codeph">cachebuster</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gzk_1wm_wwb__entry__2">Prevents
the user's browser from caching the click tracker url. This parameter
can be populated by the third-party ad server.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gzk_1wm_wwb__entry__1"><code
class="ph codeph">ancost</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gzk_1wm_wwb__entry__2">The
media cost you paid for the external click. The parameter can be
populated by the third-party ad server. It can pass a maximum value of
"999999.999999"</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gzk_1wm_wwb__entry__1"><code
class="ph codeph">redir</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gzk_1wm_wwb__entry__2">The
redirect URL. If click_url is not set in the click tracker, you must use
this parameter to pass the target landing page url that Xandr will
redirect to once the click has been recorded.</td>
</tr>
</tbody>
</table>

**Example**

``` pre
https://ib.adnxs.com/clktrb?id=1234&cachebuster=[CACHEBUSTER]&ancost=[ANCOST]&redir=https://test-landing-page.com
```

**Reporting**

You can use the `clicktrackers` <a
href="bulk-reporting-feeds.md"
class="xref" target="_blank">Bulk Reporting Feed</a> to view the data
that your external click trackers passed to Xandr, such as click time,
the associated Xandr objects, and the amount paid for the external
click. For an even deeper view of your external clicks, you can use the
`clicktrackers` feed in combination with the <a
href="advertiser-attributed-conversions.md"
class="xref" target="_blank">Advertiser Attributed Conversions</a>
report.

>

## **REST API**

<table id="buy-side-service-template__table_fvr_2wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_fvr_2wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="buy-side-service-template__table_fvr_2wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="buy-side-service-template__table_fvr_2wm_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__2"><a
href="https://api.appnexus.com/clicktracker?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/clicktracker?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__3">Add a
click tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__2"><a
href="https://api.appnexus.com/clicktracker?id=CLICK_TRACKER_ID"
class="xref"
target="_blank">https://api.appnexus.com/clicktracker?id=CLICK_TRACKER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__3">View a
click tracker.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__2"><a
href="https://api.appnexus.com/clicktracker?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/clicktracker?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__3">View
multiple click trackers by ID using a comma-separated list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__2"><a
href="https://api.appnexus.com/clicktracker?id=CLICK_TRACKER_ID"
class="xref"
target="_blank">https://api.appnexus.com/clicktracker?id=CLICK_TRACKER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__3">Modify
a click tracker.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__2"><a
href="https://api.appnexus.com/clicktracker?id=CLICK_TRACKER_ID"
class="xref"
target="_blank">https://api.appnexus.com/clicktracker?id=CLICK_TRACKER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_fvr_2wm_wwb__entry__3">Delete
a click tracker.</td>
</tr>
</tbody>
</table>



>

## JSON Fields

<table id="buy-side-service-template__table_gvr_2wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_gvr_2wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_gvr_2wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="buy-side-service-template__table_gvr_2wm_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
ID of the click tracker.</p>
<ul>
<li><strong>Default:</strong> Auto-incremented number (i.e., 123).</li>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT/DELETE,</code> in query string.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
ID of the member to which the advertiser belongs.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
ID of the advertiser that owns the click tracker.</p>
<ul>
<li><strong>Required On:</strong> <code class="ph codeph">POST,</code>
in query string.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
name for the click tracker.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3">The
custom code for the click tracker.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
state of the click tracker. Possible values: "active" or "inactive".</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">active</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">click_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
target landing page for the creative. Once Xandr has recorded a click on
the creative, this is the page that Xandr will redirect to.</p>

class="note tip note_tip">
<b>Tip:</b> If this field is not set, the
target landing page url must be passed as the "redir" parameter in the
query string of the click tracker url. See <a
href="click-tracker-service.md#ClickTrackerService-QueryStringParameters"
class="xref" target="_blank">Query String Parameters</a> above for more
details.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
publisher to which the click tracker is associated. See <a
href="click-tracker-service.md#ClickTrackerService-Publisher"
class="xref" target="_blank">Publisher</a> below for more details.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">line_item</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
advertiser line item to which the click tracker is associated. See <a
href="click-tracker-service.md#ClickTrackerService-LineItem"
class="xref" target="_blank">Line Item</a> below for more details.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">tag</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3">The
placement to which the click tracker is associated. See <a
href="click-tracker-service.md#ClickTrackerService-Tag"
class="xref" target="_blank">Tag</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">payment_rule</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3">The
payment rule to which the click tracker is associated. See <a
href="click-tracker-service.md#ClickTrackerService-PaymentRule"
class="xref" target="_blank">Payment Rule</a> below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_gvr_2wm_wwb__entry__3"><p>The
date and time when the click tracker was last modified.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Publisher**

You can use the <a
href="publisher-service.md"
class="xref" target="_blank">Publisher Service</a> to get information
about publishers.

<table id="buy-side-service-template__table_nvr_2wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_nvr_2wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_nvr_2wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_nvr_2wm_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nvr_2wm_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nvr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nvr_2wm_wwb__entry__3">The ID
of the publisher to which the click tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nvr_2wm_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nvr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_nvr_2wm_wwb__entry__3"><p>The
name of the publisher to which the click tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Line Item**

You can use the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a> to get information
about line items.

<table id="buy-side-service-template__table_ovr_2wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_ovr_2wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_ovr_2wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_ovr_2wm_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovr_2wm_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovr_2wm_wwb__entry__3">The ID
of the line item to which the click tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovr_2wm_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_ovr_2wm_wwb__entry__3"><p>The
name of the line item to which the click tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Tag**

You can use the <a
href="placement-service.md"
class="xref" target="_blank">Placement Service</a> to get information
about placements.

<table id="buy-side-service-template__table_pvr_2wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_pvr_2wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_pvr_2wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_pvr_2wm_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvr_2wm_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvr_2wm_wwb__entry__3">The ID
of the placement to which the click tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvr_2wm_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_pvr_2wm_wwb__entry__3"><p>The
name of the placement to which the click tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>

**Payment Rule**

You can use the <a
href="payment-rule-service.md"
class="xref" target="_blank">Payment Rule Service</a> to get information
about payment rules.

<table id="buy-side-service-template__table_qvr_2wm_wwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="buy-side-service-template__table_qvr_2wm_wwb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="buy-side-service-template__table_qvr_2wm_wwb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="buy-side-service-template__table_qvr_2wm_wwb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvr_2wm_wwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvr_2wm_wwb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvr_2wm_wwb__entry__3">The ID
of the payment rule to which the click tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvr_2wm_wwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvr_2wm_wwb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table_qvr_2wm_wwb__entry__3"><p>The
name of the payment rule to which the click tracker is associated.</p>
<p><strong>Read Only.</strong></p></td>
</tr>
</tbody>
</table>





## Examples

**Creating a new click tracker**

>

``` pre
$ cat clicktracker

{
    "clicktracker": {
        "name": "Test Click Tracker",
        "click_url": "https://test-landing-page.com",
        "publisher": {
            "id": 44449
        },
        "line_item": {
            "id": 74957
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @clicktracker 'https://api.appnexus.com/clicktracker?advertiser_id=37236'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 1425,
        "start_element": 0,
        "num_elements": 100,
        "clicktracker": {
            "id": 1425,
            "member_id": 958,
            "advertiser_id": 37236,
            "name": "Test Click Tracker",
            "code": null,
            "state": "active",
            "click_url": "https://test-landing-page.com",
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



**Updating a click tracker**

In this example, the PUT request associates a placement to click tracker
1425.

``` pre
$ cat clicktracker_update
{
    "clicktracker": {
        "tag": {
            "id": 474412
        }
    }
}

$ curl -b cookies -c cookies -X PUT -d @clicktracker_update 'https://api.appnexus.com/clicktracker?id=1425'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "1425",
        "start_element": 0,
        "num_elements": 100,
        "clicktracker": {
            "id": 1425,
            "member_id": 958,
            "advertiser_id": 37236,
            "name": "Test Click Tracker",
            "code": null,
            "state": "active",
            "click_url": "https://test-landing-page.com",
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

**Viewing click tracker 582**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/clicktracker?id=582'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "clicktracker": {
            "id": 582,
            "member_id": 1066,
            "advertiser_id": 35081,
            "name": "Test Click Tracker 1",
            "code": null,
            "state": "active",
            "click_url": "https://test-landing-page.com",
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

**Viewing all click trackers for advertiser 35081**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/clicktracker?advertiser_id=35081'

{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "clicktrackers": [
            {
                "id": 582,
                "member_id": 1066,
                "advertiser_id": 35081,
                "name": "Test Click Tracker 1",
                "code": null,
                "state": "active",
                "click_url": "https://test-landing-page.com",
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
                "name": "Test Click Tracker 2",
                "code": null,
                "state": "active",
                "click_url": "https://another-landing-page.com",
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






