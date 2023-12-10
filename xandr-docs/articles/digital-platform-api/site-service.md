---
Title : Site Service
Description : A site (also called a placement group) provides a way of grouping <a
ms.date: 10/28/2023
ms.custom: digital-platform-api
href="placement-service.md"
---


# Site Service



A site (also called a placement group) provides a way of grouping <a
href="placement-service.md"
class="xref" target="_blank">placements</a> for management purposes. Ad
quality and inventory categorization can be set at the site level, so it
doesn't have to be duplicated across placements. Each site belongs to a
<a
href="publisher-service.md"
class="xref" target="_blank">publisher</a>, and each placement must
belong to a site.

When you create a publisher, a site is automatically created. You can
then modify that site however you wish or create more sites.


## REST API

<table class="table" style="width:100%;">
<colgroup>
<col style="width: 10%" />
<col style="width: 75%" />
<col style="width: 14%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="site-service__section_pgv_y3q_swb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="site-service__section_pgv_y3q_swb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="site-service__section_pgv_y3q_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><p><a
href="https://api.appnexus.com/site?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/site?publisher_id=PUBLISHER_ID</a></p>
<p>(site JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">Add a site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><p><a
href="https://api.appnexus.com/site?id=SITE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/site?id=SITE_ID&amp;publisher_id=PUBLISHER_ID</a></p>
<p><a href="https://api.appnexus.com/site?id=SITE_ID" class="xref"
target="_blank">https://api.appnexus.com/site?id=SITE_ID</a></p>
<p>(site JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">Modify an existing
site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><p><a
href="https://api.appnexus.com/site?id=SITE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/site?id=SITE_ID&amp;publisher_id=PUBLISHER_ID</a></p>
<p><a
href="https://api.appnexus.com/site?code=SITE_CODE&amp;publisher_code=PUBLISHER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/site?code=SITE_CODE&amp;publisher_code=PUBLISHER_CODE</a></p></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">Delete a
site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><a
href="https://api.appnexus.com/site" class="xref"
target="_blank">https://api.appnexus.com/site</a></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">View all sites for
your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><a
href="https://api.appnexus.com/site?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/site?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">View all of the
sites for one of your publishers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><p><a
href="https://api.appnexus.com/site?id=SITE_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/site?id=SITE_ID&amp;publisher_id=PUBLISHER_ID</a></p>
<p><a href="https://api.appnexus.com/site?id=SITE_ID" class="xref"
target="_blank">https://api.appnexus.com/site?id=SITE_ID</a></p></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">View a specific
site for one of your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__2"><a
href="https://api.appnexus.com/site?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/site?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_pgv_y3q_swb__entry__3">View multiple
sites by ID using a comma-separated list.</td>
</tr>
</tbody>
</table>




<b>Note:</b> `publisher_code` and `code` can
be used interchangeably with `publisher_id` and `id`, respectively.








## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__section_ryd_xjq_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="site-service__section_ryd_xjq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-service__section_ryd_xjq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>Xandr ID
assigned by the API to reference this site.</p>
<p><strong>Required On</strong>: PUT, in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">string (100)</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Optional code for
this site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">string (100)</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>Name associated
with the site.</p>
<p><strong>Required On</strong>: PUT, POST</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>State of this
site. Possible values: <code class="ph codeph">active</code> or <code
class="ph codeph">inactive</code>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">active</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">string (255)</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">URL of this
site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>ID of the
publisher that this site belongs to.</p>
<p><strong>Required On</strong>: POST/PUT, in query string</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">primary_content_category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Users can
optionally specify a primary <a
href="content-category-service.md"
class="xref" target="_blank">content category</a> for a placement (see
example below). This category can be used for targeting and will appear
in reports. Content categories can be set either at the Site level or
the Placement level, but not both.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">The timestamp of
last activity to this placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">placements</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">The IDs of
placements associated with this site. See <a
href="placement-service.md"
class="xref" target="_blank">Placements</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">content_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Users can
optionally specify one or more content categories for a placement. These
categories can be used for targeting, and can be set at both the Site
and Placement level. At most 20 categories can be set on a site. See <a
href="content-category-service.md"
class="xref" target="_blank">Content Categories</a> below for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">intended_audience</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>The intended
audience of the site. Must not be null if 'audited' is true. Possible
values: <code class="ph codeph">children</code>, <code
class="ph codeph">young_adult</code>, <code
class="ph codeph">general</code>, or <code
class="ph codeph">mature</code>.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">inventory_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>The sensitive
attributes contained by the site; if set at the site level,
inventory_attributes will also influence objects at the placement level.
The mapping of IDs to attributes can be found below. The format of the
array is also contained below.</p>
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">audited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Whether the site
has been audited.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">publisher_join</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">publisher_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">string (100)</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Name of the
publisher the site is under</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">supply_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Specifies whether
this is a site viewed on a desktop browser (<code
class="ph codeph">web</code>), a site viewed on a mobile browser (<code
class="ph codeph">mobile_web</code>), or an app run on a mobile device
(<code class="ph codeph">mobile_app</code>). This distinction allows the
buyer to target campaigns to the particular supply type where they want
to advertise, for example, an advertiser may upload creatives optimized
for mobile browsers with mobile landing pages.

<b>Note:</b> As of <strong>February 13th,
2018</strong>, the supply type configured in each auction is detected
automatically by Xandr. As a result, the selection you make here will be
overridden by the supply type detected. This selection will eventually
be removed from the UI.

<p><strong>Deafult</strong>: <code class="ph codeph">web</code></p>

<b>Note:</b> <strong>This note is visible to
Xandr employees only:</strong> Admins can set this to <code
class="ph codeph">facebook_sidebar</code> as well.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">creative_format_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><ul>
<li><code class="ph codeph">exclude</code>: allow all creative formats
to serve on this site except those specified in the <code
class="ph codeph">creative_formats</code> array</li>
<li><code class="ph codeph">include</code>: only all creatives to serve
whose format is included in the list specified in <code
class="ph codeph">creative_formats</code></li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">exclude</code></p>
Some mobile application supply sources do not support all creative
formats available on Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">creative_formats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">array of
strings</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>The creative
formats to be excluded or included in this site.</p>
<p><strong>Default</strong>: text</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">allowed_click_actions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">array of
strings</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>Tells the buyer
what types of click actions on creatives are supported. Mobile web and
apps often allow additional click actions beyond click to a website,
such as click-to-call, click-to-sms, click-to-email, and
click-to-map.</p>
<p><strong>Default</strong>: click-to-web only</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">marketplace_map</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">Informs the buyer
which types of marketplaces are accessible (performance, RTB, deals).
See <a
href="site-service.md#SiteService-MarketplaceMap"
class="xref" target="_blank">Marketplace Map</a> below for internal
field definitions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">mobile_app_instance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">multi-object</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3"><p>The <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance</a> associated with
this site. This field can only be set when <code
class="ph codeph">supply_type</code> is <code
class="ph codeph">mobile_app</code>. See <a
href="site-service.md#SiteService-MobileAppInstance"
class="xref" target="_blank">Mobile App Instance</a> below for the
internal field definitions.</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>,
for sites with a <code class="ph codeph">supply_type</code> of <code
class="ph codeph">mobile_app</code>.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__1"><code
class="ph codeph">mobile_app_instance_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_ryd_xjq_swb__entry__3">The ID of the
mobile app instance associated with this site. This field is only
associated with sites with a <code class="ph codeph">supply_type</code>
of <code class="ph codeph">mobile_app</code>.</td>
</tr>
</tbody>
</table>




## Marketplace Map

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__section_unt_lmq_swb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="site-service__section_unt_lmq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-service__section_unt_lmq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__1"><code
class="ph codeph">an_audit_perf_only</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__3"><p>Read-only.
Whether the site is only eligible for CPA/CPC demand based on our
auditing. If <code class="ph codeph">true</code>, then yes.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__1"><code
class="ph codeph">rtb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__3"><p>Designates
whether the inventory associated with the site (and all of its
placements) is part of the RTB Marketplace (i.e., eligible for CPM
demand).</p>
<ul>
<li>If <code class="ph codeph">true</code>, all inventory associated
with this site's placements is to be resold within the RTB
Marketplace.</li>
<li>The field cannot be set to <code class="ph codeph">true</code> if
any of the placements within the site support the expandable media type.
See the <a
href="placement-service.md"
class="xref" target="_blank">Placement Service</a> for more information
about media types and subtypes fields.</li>
<li>If <code class="ph codeph">false</code>, expandable placements
within the site cannot be moved to a site where the field is <code
class="ph codeph">true</code>.</li>
<li>If set to <code class="ph codeph">false</code> all inventory
associated with this site's placements is only available to direct
campaigns. No inventory associated with this placement group's
placements will be resold.</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__1"><code
class="ph codeph">performance</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__3"><p>Whether the
site is eligible for CPA/CPC demand using the updated performance
marketplace. If true, then yes.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__1"><code
class="ph codeph">deals_allowed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__3"><p>Specifies
whether deals are allowed to serve on this site.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__1"><code
class="ph codeph">rtb_suspended</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__3"><p>Read-only.
Indicates that all inventory associated with this site and its
placements is blocked from participating in the RTB Marketplace.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__1"><code
class="ph codeph">deals_suspended</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_unt_lmq_swb__entry__3"><p>Read-only.
Indicates that all deals are suspended from serving on this site.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>




## **Mobile App Instance**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__section_qdv_ppq_swb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="site-service__section_qdv_ppq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-service__section_qdv_ppq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__3">The unique ID of
this app instance. This field is optional on <code
class="ph codeph">POST</code>; if sent, it will be used to look up the
<code class="ph codeph">bundle_id</code> and <code
class="ph codeph">os_family_id</code>. If this field is not set on a
<code class="ph codeph">PUT</code> or <code
class="ph codeph">POST</code>, you must pass in the <code
class="ph codeph">bundle_id</code> and <code
class="ph codeph">os_family_id</code> fields, and a new mobile app
instance ID will be created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__1"><code
class="ph codeph">bundle_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__3">If no <code
class="ph codeph">id</code> field is passed on <code
class="ph codeph">POST</code>, this field is required. This field
represents the bundle ID of the mobile app instance, and it's used to
look up the mobile app instance ID. If there is no app instance ID
associated with this bundle ID, a new one will be created.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__1"><code
class="ph codeph">os_family_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_qdv_ppq_swb__entry__3">If no <code
class="ph codeph">id</code> field is passed in on <code
class="ph codeph">PUT</code> or <code class="ph codeph">POST</code>,
this field is required. This field represents the unique ID of the
operating system family this app instance is associated with. If there
is no app instance ID associated with this OS family ID, a new one will
be created.</td>
</tr>
</tbody>
</table>




## Placements

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__section_f3j_cqq_swb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="site-service__section_f3j_cqq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-service__section_f3j_cqq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_f3j_cqq_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_f3j_cqq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_f3j_cqq_swb__entry__3">The unique
identifier of the placement. You can use the <a
href="placement-service.md"
class="xref" target="_blank">Placement Service</a> to find placement
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_f3j_cqq_swb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_f3j_cqq_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_f3j_cqq_swb__entry__3">The internal code
for the placement.</td>
</tr>
</tbody>
</table>




## **Content Categories**



<table id="site-service__table_lzh_jqq_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__table_lzh_jqq_swb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="site-service__table_lzh_jqq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-service__table_lzh_jqq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__3">ID of the content
category. You can use the <a
href="category-service.md"
class="xref" target="_blank">Content Category Service</a> to find
category IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__1"><code
class="ph codeph">is_system</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__3">Whether or not the
content category is a system ("universal") category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__2">string (100)</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__3">The name of the
category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__1"><code
class="ph codeph">site</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__3">List of IDs which
fall under this content category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__1"><code
class="ph codeph">primary</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__table_lzh_jqq_swb__entry__3">Whether the category
is the primary category for the site. Only one category can be
primary.</td>
</tr>
</tbody>
</table>






## Inventory Attributes

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__section_jjf_5qq_swb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="site-service__section_jjf_5qq_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="site-service__section_jjf_5qq_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_jjf_5qq_swb__entry__1"><code
class="ph codeph">inventory_attribute_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_jjf_5qq_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_jjf_5qq_swb__entry__3">The ID of the
inventory attribute.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_jjf_5qq_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_jjf_5qq_swb__entry__2">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_jjf_5qq_swb__entry__3"><strong>Read-only.</strong>
The name of the inventory attribute.</td>
</tr>
</tbody>
</table>




## Inventory Attributes ID

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="site-service__section_cpj_fsq_swb__entry__1"
class="entry colsep-1 rowsep-1">Id</th>
<th id="site-service__section_cpj_fsq_swb__entry__2"
class="entry colsep-1 rowsep-1">Attribute Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Political</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Social Media</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">6</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Photo &amp; video
sharing</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">8</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Forums
(moderated)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Forums
(unmoderated)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">12</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Incentivized
clicks</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">14</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Non-English
languages</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">16</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Streaming
Media</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__1"><code
class="ph codeph">17</code></td>
<td class="entry colsep-1 rowsep-1"
headers="site-service__section_cpj_fsq_swb__entry__2">Toolbars, plugins,
or extensions</td>
</tr>
</tbody>
</table>




## Examples

**Adding content categories to a site**

``` pre
$ cat site

{
    "site": {
        "content_categories": [
            {
                "id": 2561,
                "primary": true
            },
            {
                "id": 2558
            }
        ],
        "name": "Site 1"
    }
}

$ curl -b cookies -c cookies -X PUT -d @site 'https://api.appnexus.com/site?id=5822'
```

**Viewing all sites for your publishers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/site'

{
   "response":{
      "status":"OK",
      "sites":[
         {
            "id":2411,
            "code":null,
            "name":"[Default RTB Media Buy] - ROS",
            "state":"active",
            "url":"",
            "primary_content_category_id":null,
            "last_modified":"2010-05-12 22:46:42",
            "intended_audience":"general",
            "inventory_attributes":[
                {
                    "id":2,
                    "name":"Political"
                }
            ]
            "placements":[

            ],
            "content_categories": [
                {
                    "id": 2561,
                    "primary": true
                },
                {
                    "id": 2558
                }
            ],
         },
         {
            "id":2412,
            "code":null,
            "name":"[Weekdays Only] - ROS",
            "state":"active",
            "url":"",
            "media_buy_id":1559,
            "primary_content_category_id": 2561,
            "last_modified":"2010-05-12 23:28:40",
            "placements":[

            ],
            "content_categories":null
         },
         {
            "id":2413,
            "code":null,
            "name":"[Weekends Only] - ROS",
            "state":"active",
            "url":"",
            "media_buy_id":1560,
            "primary_content_category_id":null,
            "last_modified":"2010-05-12 23:28:52",
            "placements":[

            ],
            "content_categories":null
         },
         {
            "id":5775,
            "code":null,
            "name":"[Conversion Test] - ROS",
            "state":"active",
            "url":"",
            "media_buy_id":4732,
            "primary_content_category_id":null,
            "last_modified":"2010-06-15 20:09:38",
            "placements":[
               {
                  "id":"57851"
               }
            ],
            "content_categories":null
         }
      ],
      "count":4,
      "start_element":null,
      "num_elements":null
   }
}        
```

**Create a site with a mobile app supply type**

In this example we create a site designed for mobile app supply ? we'll
use it in our next example as well:

``` pre
$ cat the-site.json
 
{"site":{"name":"One site to rule them all", "supply_type":"mobile_app"}}
 
$ curl -b cookies -X POST -d @the-site.json 'https://api.appnexus.com/site?publisher_id=102306'
 
{
    "response":{,
         "site":{
            "allowed_click_actions":[
                "click-to-web"
            ],
             "creative_formats":[
                "text"
            ],
             "inventory_attributes":null,
             "content_categories":null,
             "placements":null,
             "mobile_app_instance":null,
             "member_id":1309,
             "creative_format_action":"exclude",
             "supply_type":"mobile_app",
             "publisher_name":"RICH'S CRAZY RESELLER",
             "audited":false,
             "intended_audience":null,
             "last_modified":"2014-02-20 20:56:03",
             "primary_content_category_id":null,
             "publisher_id":102306,
             "url":"",
             "state":"active",
             "name":"One site to rule them all",
             "code":null,
             "id":273205
        },
         "num_elements":100,
         "start_element":0,
         "id":273205,
         "count":1,
         "status":"OK"
    }
}
```

**Add a mobile app instance to a site**

In this example, we have a pre-existing site with the required mobile
app supply type. We make a `PUT` call to associate our site with an
existing mobile app instance, and we can see that it worked by viewing
the updated object in the response. For more details on mobile app
instances, see the <a
href="mobile-app-instance-service.md"
class="xref" target="_blank">Mobile App Instance Service</a>.

``` pre
$ cat update.json

{"site":{"supply_type":"mobile_app", "mobile_app_instance":{"id":62}}}
 
$ curl -b cookies -X PUT -d @update.json
 
{
    "response":{
        "site":{
            "allowed_click_actions":[
                "click-to-web"
            ],
            "creative_formats":[
                "text"
            ],
            "inventory_attributes":null,
            "content_categories":null,
            "placements":null,
            "mobile_app_instance":{
                "os_family_id":3,
                "bundle_id":"2342342345566666",
                "id":62
            },
            "member_id":1309,
            "creative_format_action":"exclude",
            "supply_type":"mobile_app",
            "publisher_name":"RICH'S CRAZY RESELLER",
            "audited":false,
            "intended_audience":null,
            "last_modified":"2014-02-20 21:18:15",
            "primary_content_category_id":null,
            "publisher_id":102306,
            "url":"",
            "state":"active",
            "name":"One site to rule them all",
            "code":null,
            "id":273205
        },
        "num_elements":100,
        "start_element":0,
        "id":"273205",
        "count":1,
        "status":"OK"
    }
}
```




## Related Links

- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="mobile-app-instance-service.md"
  class="xref" target="_blank">Mobile App Instance Service</a>
- <a
  href="mobile-app-service.md"
  class="xref" target="_blank">Mobile App Service</a>






