---
Title : Publisher Service
Description : The Publisher Service is used to create and update your managed
ms.date: 10/28/2023
ms.custom: digital-platform-api
publishers.
---


# Publisher Service



The Publisher Service is used to create and update your managed
publishers.

>

## REST API

<table class="table">
<colgroup>
<col style="width: 10%" />
<col style="width: 56%" />
<col style="width: 32%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="publisher-service__section_rqj_kr1_twb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="publisher-service__section_rqj_kr1_twb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="publisher-service__section_rqj_kr1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><p><a
href="https://api.appnexus.com/publisher" class="xref"
target="_blank">https://api.appnexus.com/publisher</a></p>
<p>(publisher JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">Add a new
publisher (with a default site and placement).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><p><a
href="https://api.appnexus.com/publisher?create_default_placement=false"
class="xref"
target="_blank">https://api.appnexus.com/publisher?create_default_placement=false</a></p>
<p>(publisher JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">Add a new
publisher (without a default site and placement).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><p><a
href="https://api.appnexus.com/publisher?id=PUBLISHER_ID" class="xref"
target="_blank">https://api.appnexus.com/publisher?id=PUBLISHER_ID</a></p>
<p>(publisher JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">Update an
existing publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><a
href="https://api.appnexus.com/publisher" class="xref"
target="_blank">https://api.appnexus.com/publisher</a></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">View all
publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><a
href="https://api.appnexus.com/publisher?id=PUBLISHER_ID" class="xref"
target="_blank">https://api.appnexus.com/publisher?id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">View a
specific publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><a
href="https://api.appnexus.com/publisher?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/publisher?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">View multiple
publishers by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><a
href="https://api.appnexus.com/publisher?id=PUBLISHER_ID" class="xref"
target="_blank">https://api.appnexus.com/publisher?id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">Delete a
publisher.
class="note caution note_caution">
CAUTION: Deleting a publisher deletes
all of its child objects as well, including sites, placements, payment
rules, and publisher-level ad quality profiles. The deletions are
permanent and cannot be reverted. Although deleted objects continue to
be available in reporting, you will no longer have visibility into their
specific settings.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__2"><a
href="https://api.appnexus.com/publisher/meta" class="xref"
target="_blank">https://api.appnexus.com/publisher/meta</a></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_rqj_kr1_twb__entry__3">Find out
which fields you can filter and sort by.</td>
</tr>
</tbody>
</table>

If your API call returns an error with "**Request failed due to timeout
or memory issue**", you can append **add_mappings=false** to your query
parameters. Adding this parameter will only return the top-level API
objects, but not their nested children.

For example:

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/publisher?id=2,3,5,8,13,21&add_mappings=false"
```



>

## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-service__section_w4z_mt1_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The ID of
the publisher.</p>
<p><strong>Default</strong>: Auto-incremented number (i.e. 123)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The custom
code for the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(255)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The name
of the publisher.</p>
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The state
of the publisher. Possible values: "active" or "inactive."</p>
<p><strong>Default</strong>: "inactive"</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">expose_domains</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If true,
domains associated with the publisher are exposed to other members of
the platform.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">enable_cookie_tracking_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If true,
users visiting this publisher's inventory will be tracked via our
cookies.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">reselling_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The
publisher's exposure for reselling to other members of the platform.
Possible values: "public" or "private."</p>
<p><strong>Default</strong>: "private"</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">reselling_exposed_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The date
and time when the publisher was exposed for reselling.</p>
<p><strong>Default</strong>: "0000-00-00 00:00:00"</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">reselling_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(255)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The name that
appears in the inventory manager to other members of the platform, if
reselling_exposure is true. If this field is empty, the value in the
name field is used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(255)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The
description that appears in the inventory manager to other members of
the platform, if reselling_exposure is true. If this field is empty, no
description is shown.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">is_rtb</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>All
networks have one publisher object that serves as a so-called "plumbing
link" to real-time inventory. This mock publisher has no ad profile, no
ad quality rules, no visibility profiles, or any of the other trappings
of an actual publisher. All other publishers have <code
class="ph codeph">is_rtb</code> set to <code
class="ph codeph">false</code> by default.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The
timezone for this publisher. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.</p>
<p><strong>Default</strong>: "EST5EDT"</p>
<p>or the member's timezone</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><strong>Read-only.</strong>
The date and time when the publisher was last updated in the our
system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The <code
class="ph codeph">stats</code> object has been deprecated (as of October
17, 2016). Use the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">max_learn_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The maximum %
of the publisher's daily volume that can be used for learn.

<b>Tip:</b> If you want us to automatically
allocate an optimal percent of impressions to learn to keep introducing
new offers as older offers become less profitable, set this field to
null.

<strong>Deafult</strong>: 0</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">learn_bypass_cpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If an
impression selected for learn receives a bid higher than this value from
an external buyer, the bid will be accepted and the impression will not
be used for learn.</p>
<p><strong>Default</strong>: 5</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">ad_quality_advanced_mode_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If true,
multiple ad quality rules can be created for the publisher in the
UI.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_report_on_default_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If true,
publisher users can report on detailed impression and revenue metrics in
the UI, such as imps filled, imps defaulted, total revenue, total
revenue eCPM, filled revenue, filled revenue eCPM, defaulted revenue,
and defaulted revenue eCPM.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">default_site_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The ID of the
publisher's default site. The site is created automatically when the
publisher is added.
class="note caution note_caution">
CAUTION: When adding a publisher, you
can prevent a default site from being created by passing
"create_default_placement=false" in the query string of the POST
request.

<strong>Default</strong>: Auto-incremented number (i.e. 123)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">default_ad_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Most
publishers should use the base ad quality rule associated with the <code
class="ph codeph">base_ad_quality_rule_id</code>. Ad quality rules
provide more control over what is allowed to serve on a publisher's
inventory. If there is no base ad quality rule, the system will use the
ad profile associated with the <code
class="ph codeph">default_ad_profile_id</code>. For more information,
see the <a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profile Service</a>.</p>
<p><strong>Default</strong>: The member's default ad profile
ID.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_dba</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The "Doing
Business As" name to use for billing purposes.</p>
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_address1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The street
information of the billing address.</p>
<p><strong>Required On</strong>: POST/PUT, if <code
class="ph codeph">inventory_relationship</code> is set to <code
class="ph codeph">direct</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_address2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The street
information of the billing address (cont.).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_city</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The city
of the billing address.</p>
<p><strong>Required On</strong>: POST/PUT, if <code
class="ph codeph">inventory_relationship</code> is set to <code
class="ph codeph">direct</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The state
of the billing address.</p>
<p><strong>Required On</strong>: POST/PUT, if <code
class="ph codeph">inventory_relationship</code> is set to <code
class="ph codeph">direct</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_zip</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The zip
code of the billing address.</p>
<p><strong>Required On</strong>: POST/PUT, if <code
class="ph codeph">inventory_relationship</code> is set to <code
class="ph codeph">direct</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string
(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The
country of the billing address.</p>
<p><strong>Required On</strong>: POST/PUT, if <code
class="ph codeph">inventory_relationship</code> is set to <code
class="ph codeph">direct</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">accept_supply_partner_usersync</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">If true, the
publisher accepts usersync pixels from platform supply partners.
(Recommended)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">accept_demand_partner_usersync</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">If true, the
publisher accepts usersync pixels from platform demand partners.
(Recommended)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">accept_data_provider_usersync</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">If true, the
publisher accepts usersync pixels from platform data providers.
(Recommended)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">ym_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The unique
identifier for the yield management profile applied to the
publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_cpm_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If you
allow your managed advertisers' campaigns with a CPM bidding strategy to
serve on this publisher.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_cpm_external</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If you
allow demand partners to purchase inventory on a CPM basis on this
publisher.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_cpa_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If you
allow your managed advertisers' campaigns with a cpa bidding strategy to
buy inventory from this publisher.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_cpa_external</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If you
allow your demand partners to purchase inventory on a CPA basis.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_cpc_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If you
allow your managed advertisers' campaigns with a cpc bidding
strategy.</p>
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">allow_cpc_external</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If you
allow your demand partners to purchase inventory on a CPC basis.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">managed_cpc_bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Risk
Premium: What percent you will bias a CPC bid by when comparing it to a
CPM bid from managed advertisers. This field is the inverse of the value
displayed in the UI, e.g., 20 in the UI is represented as 100 - 20 = 80
in the API.</p>
<p><strong>Default</strong>: 100</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">managed_cpa_bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Risk
Premium: What percent you will bias a CPA bid by when comparing it to a
CPM bid from managed advertisers. This field is the inverse of the value
displayed in the UI, e.g., 20 in the UI is represented as 100 - 20 = 80
in the API.</p>
<p><strong>Default</strong>: 100</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">external_cpc_bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Risk
Premium: What percent you will bias a CPC bid by when comparing it to a
CPM bid from a buyer. This field is the inverse of the value displayed
in the UI, e.g., 20 in the UI is represented as 100 - 20 = 80 in the
API.</p>
<p><strong>Default</strong>: 100</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">external_cpa_bias_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Risk
Premium: What percent you will bias a CPA bid by when comparing it to a
CPM bid from a buyer. This field is the inverse of the value displayed
in the UI, e.g., 20 in the UI is represented as 100 - 20 = 80 in the
API.</p>
<p><strong>Default</strong>: 100</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">is_oo</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>If true,
the publisher is owned and operated by the network, meaning the network
gets 100% of the revenue.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">base_payment_rule_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The unique
identifier for the publisher's catch-all payment rule. Use the <a
href="payment-rule-service.md"
class="xref" target="_blank">Payment Rule Service</a> to find the ID for
the publisher's payment rule you desire.</p>
<p><strong>Default</strong>: Auto-incremented number (i.e. 123)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">base_ad_quality_rule_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The unique
identifier for the publisher's base ad quality rule. This acts as a
"catch-all" ad quality rule in two cases:</p>
<ul>
<li>There are no conditional ad quality rules that match the current
impression.</li>
<li><p>There are no conditional ad quality rules defined.</p>
<p>If the <code class="ph codeph">base_ad_quality_rule_id</code> is not
defined, the system will use the ad profile associated with the <code
class="ph codeph">default_ad_profile_id</code> (defined above). For more
information, see the <a
href="ad-quality-rule-service.md"
class="xref" target="_blank">Ad Quality Rule Service</a>.</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The
publisher's currency.
class="note warning note_warning">
<b>Warning:</b> This field can be set on POST,
but it cannot be updated on PUT.


<b>Tip:</b> As a best practice, align currency
to the billing currency in order to achieve the best possible local
currency experience.

<strong>Default</strong>: Member's default currency or USD</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The ID of the
visibility profile assigned directly to the publisher. For more details
about visibility profiles, see the <a
href="visibility-profile-service.md"
class="xref" target="_blank">Visibility Profile Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">billing_internal_user</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">labels</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The
optional labels assigned to the publisher. Currently, two labels are
available: "Salesperson" and "Account Manager". See <a
href="publisher-service.md#PublisherService-Labels"
class="xref" target="_blank">Labels</a> below for more details.</p>

<b>Note:</b>
<p>You can report on publisher labels with the <a
href="network-analytics.md"
class="xref" target="_blank">Network Analytics</a> report. For example,
if you use the "Salesperson" label to specify the name of the
salesperson responsible for each publisher, you could run the Network
Analytics report filtered by "salesperson_for_publisher" to focus on the
publishers that a particular salesperson is responsible for, or grouped
by "salesperson_for_publisher" to rank the performance of your
salespeople.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">placements</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">The
placements associated with the publisher, including the default
placement that is created with the publisher. When you create additional
placements, or publisher tags, with the <a
href="placement-service.md"
class="xref" target="_blank">Placement Service</a>, you associate them
with a publisher. See <a
href="publisher-service.md#PublisherService-Placements"
class="xref" target="_blank">Placements</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">external_inv_codes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3">Some sellers
use their own codes to break out their inventory more granularly than by
Publisher &gt; Site &gt; Placement. This is done via the External
Inventory Code Service. This field shows the external inventory codes
associated with the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">cpm_reselling_disabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p><strong>Read-only.</strong>
If true, we have detected impression issues on this publisher's
inventory and has therefore set "allow_cpm_external" to false,
preventing the reselling of the publisher's inventory on a CPM
basis.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">cpc_reselling_disabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p><strong>Read-only.</strong>
If true, we have detected click issues on this publisher's inventory and
has therefore set "allow_cpc_external" to false, preventing the
reselling of the publisher's inventory on a CPC basis.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">platform_ops_notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><strong>Read-only.</strong>
Notes about the disabling of CPM/CPC reselling.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">pitbull_segment_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><div
id="publisher-service__note_azv_mhb_twb"
class="note warning note_warning">
<b>Warning:</b> This field has been
deprecated.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">pitbull_segment_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><div
id="publisher-service__note_acs_nhb_twb"
class="note warning note_warning">
<b>Warning:</b> This field has been
deprecated.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">publisher_brand_exceptions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>An array
of brand IDs. Creatives associated with these brand IDs will be allowed
to serve on this publisher's page more than once per <code
class="ph codeph">/mtj</code> call. The brands that you add to this
array will be appended to the array of brands in the <code
class="ph codeph">member_brand_exceptions</code> field of the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>. See <a
href="publisher-service.md#PublisherService-PublisherBrandExceptions"
class="xref" target="_blank">Publisher Brand Exceptions</a> below for
internal field definitions.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">n/a</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">seller_page_cap_enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>This field
<strong>must</strong> be set in order to be able to enable page caps for
this publisher. Page caps keep creatives associated with a given brand
from serving more than once per page load, except for those brand IDs
added to the <code class="ph codeph">publisher_brand_exceptions</code>
array on this service or the <code
class="ph codeph">member_brand_exceptions</code> array on the <a
href="member-service.md"
class="xref" target="_blank">Member Service</a></p>


<b>Note:</b> This setting activates the
function but does not make the setting on the UI visible. To see this
setting in the UI, contact your representative.


<p><strong>Required On</strong>: <code
class="ph codeph">n/a</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">inventory_relationship</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The
relationship of the inventory to the publisher. Possible values:</p>
<ul>
<li><code class="ph codeph">unknown</code></li>
<li><code class="ph codeph">owned_operated</code></li>
<li><code class="ph codeph">direct</code></li>
<li><code class="ph codeph">indirect_single_publisher</code></li>
<li><code class="ph codeph">indirect_multiple_publishers</code></li>
</ul>

<b>Note:</b>
<p>If both <code class="ph codeph">is_oo</code> and <code
class="ph codeph">inventory_relationship</code> are specified, <code
class="ph codeph">inventory_relationship</code> will overwrite <code
class="ph codeph">is_oo</code> with the appropriate value based on the
relationship.</p>

<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">inventory_source</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>The source
of the inventory. Possible values:</p>
<ul>
<li><code class="ph codeph">other</code></li>
<li><code class="ph codeph">rubicon</code></li>
<li><code class="ph codeph">openx</code></li>
<li><code class="ph codeph">pubmatic</code></li>
<li><code class="ph codeph">aol </code></li>
</ul>
<p>If <code class="ph codeph">inventory_source</code> is set to <code
class="ph codeph">other</code>, then <code
class="ph codeph">inventory_source_name</code> must be
completed.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">inventory_source_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Publisher
(source) name for <code
class="ph codeph">indirect_single_publisher.</code></p>
<p><strong>Required On</strong>: POST/PUT for publishers whose <code
class="ph codeph">inventory_relationship</code> is set to <code
class="ph codeph">indirect_single_publisher</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">contact</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>An array
of objects containing contact information for this publisher.</p>
<p><strong>Required On</strong>: POST/PUT</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__1"><code
class="ph codeph">use_anx_auction_logic</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__3"><p>Determines
whether ANX Auction Logic will be enabled for the publisher. When set to
True, we will automatically handle all floors and price reductions.</p>
<p><strong>Default</strong>: False</p></td>
</tr>
</tbody>
</table>



**Contact**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-service__section_w4z_mt1_twb__entry__190"
class="entry colsep-1 rowsep-1">Field</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__191"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__192"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__190"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__191">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__192">The name of
the point of contact for this publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__190"><code
class="ph codeph">phone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__191">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__192">The phone
number for the above point of contact.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__190"><code
class="ph codeph">email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__191">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__192">The email
of the publisher.</td>
</tr>
</tbody>
</table>

**Labels**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-service__section_w4z_mt1_twb__entry__202"
class="entry">Field</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__203"
class="entry">Type (Length)</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__204"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__202"><code
class="ph codeph">id</code></td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__203">int</td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__204">The ID of
the label. Possible values: 2 (Salesperson) or 4 (Account Manager).</td>
</tr>
<tr class="even row">
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__202"><code
class="ph codeph">name</code></td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__203">enum</td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__204"><strong>Read-only.</strong>
The name of the label. Possible values: "Salesperson" or "Account
Manager".</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__202"><code
class="ph codeph">value</code></td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__203">string
(100)</td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__204">The value
assigned to the label. For example, for the "Salesperson" label, this
could be a name such as "Michael Sellers".</td>
</tr>
</tbody>
</table>

**Placements**



<b>Note:</b>

When you add a publisher, a default placement is created automatically
and included in this array. You can prevent a default placement from
being created automatically by passing "create_default_placement=false"
in the query string of the POST request.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-service__section_w4z_mt1_twb__entry__214"
class="entry">Field</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__215"
class="entry">Type</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__216"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__214"><code
class="ph codeph">id</code></td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__215">int</td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__216">The ID of
the placement.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__214"><code
class="ph codeph">code</code></td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__215">string
(100)</td>
<td class="entry"
headers="publisher-service__section_w4z_mt1_twb__entry__216">The custom
code for the placement.</td>
</tr>
</tbody>
</table>

**Publisher Brand Exceptions**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-service__section_w4z_mt1_twb__entry__223"
class="entry colsep-1 rowsep-1">Field</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__224"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-service__section_w4z_mt1_twb__entry__225"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__223"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__224">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-service__section_w4z_mt1_twb__entry__225">The ID of
the brand whose associated creatives you would like to allow to serve
more than once per page load on this publisher's inventory. This setting
will only take effect if you toggle the <code
class="ph codeph">seller_page_cap_enabled</code> field on this service.
For more information about brands, see the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>.</td>
</tr>
</tbody>
</table>

**Stats**

The `stats` object has been deprecated (as of October 17, 2016). Use the
<a
href="report-service.md"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.



>

## Examples

**Add a new publisher**



1.  Create a JSON file with the required fields for a publisher.



<b>Note:</b>

- Replace the placeholders (e.g., "PUBLISHER_NAME") in the below JSON
  example with your own values.
- When you create a new publisher, a publisher id (`"id"` in the
  `"publisher"` object), `"default_site_id"`, default placement id
  (`"id"` in the `"placements"` array), and `"base_payment_rule_id"` are
  automatically generated.





Since the `inventory_relationship` field is required, we’ve set it to
`“direct”`, (but it can be set to other values). We’ve also set `state`
to `“inactive”` for now. Since we don’t provide the other publisher
fields in our request, they will be set to their default values and
display in the response body. For more information, see <a
href="sell-side-setup.md"
class="xref" target="_blank">Sell-Side Setup</a>

``` pre
$ cat publisher

{
    "publisher": {
            "name": "PUBLISHER_NAME",
            "inventory_relationship": "direct",
            "billing_dba": "PUBLISHER_DBA",
            "billing_address1": "PUBLISHER_ADDRESS",
            "billing_city": "PUBLISHER_CITY",
            "billing_state": "PUBLISHER_STATE",
            "billing_zip": "PUBLISHER_ZIP",
            "billing_country": "PUBLISHER_COUNTRY",
            "contact": {
                    "phone": "CONTACT_PHONE",
                    "email": "CONTACT_EMAIL",
                    "name": "CONTACT_NAME"
                }
        }
}

$ curl -b cookies -c cookies -X POST -d @publisher 'https://api.appnexus.com/publisher'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 233,
        "start_element": 0,
        "num_elements": 100,
        "publisher": {
            "id": 233,
            "code": null,
            "reselling_name": null,
            "expose_domains": true,
            "is_rtb": false,
            "reselling_exposure": "private",
            "reselling_exposed_on": "1970-01-01 00:00:01",
            "timezone": "EST5EDT",
            "last_modified": "2015-05-12 23:58:20",
            "max_learn_pct": 0,
            "accept_demand_partner_usersync": null,
            "learn_bypass_cpm": 5,
            "ad_quality_advanced_mode_enabled": true,
            "allow_report_on_default_imps": false,
            "name": "New Publisher",
            "description": "",
            "state": "active",
            "default_site_id": 229,
            "default_ad_profile_id": null,
            "billing_dba": null,
            "billing_address1": null,
            "billing_address2": null,
            "billing_city": null,
            "billing_state": null,
            "billing_zip": null,
            "billing_country": null,
            "accept_supply_partner_usersync": null,
            "accept_data_provider_usersync": null,
            "ym_profile_id": null,
            "allow_cpm_managed": true,
            "allow_cpm_external": true,
            "allow_cpa_managed": true,
            "allow_cpa_external": false,
            "allow_cpc_managed": true,
            "allow_cpc_external": false,
            "managed_cpc_bias_pct": 100,
            "managed_cpa_bias_pct": 100,
            "external_cpc_bias_pct": 100,
            "external_cpa_bias_pct": 100,
            "is_oo": false,
            "base_payment_rule_id": 161,
            "base_ad_quality_rule_id": null,
            "currency": "USD",
            "visibility_profile_id": null,
            "cpm_reselling_disabled": false,
            "cpc_reselling_disabled": false,
            "platform_ops_notes": null,
            "enable_cookie_tracking_default": true,
            "seller_page_cap_enabled": false,
            "billing_internal_user": null,
            "labels": null,
            "placements": [
                {
                    "id": 232,
                    "code": null
                }
            ],
            "external_inv_codes": null,
            "contact_info": null,
            "publisher_brand_exceptions": null
        }
    }
}
```

**View information about publisher 10**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/publisher?id=10'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "publisher": {
            "id": 10,
            "code": null,
            "reselling_name": null,
            "expose_domains": false,
            "state": "inactive",
            "is_rtb": false,
            "reselling_exposure": "private",
            "reselling_exposed_on": "2011-05-04 21:37:52",
            "timezone": "EST5EDT",
            "last_modified": "2011-08-31 15:11:08",
            "max_learn_pct": 5,
            "accept_demand_partner_usersync": null,
            "learn_bypass_cpm": 5,
            "ad_quality_advanced_mode_enabled": true,
            "member_id": 95,
            "name": "test",
            "description": "test",
            "default_site_id": 137,
            "default_ad_profile_id": 256,
            "billing_dba": null,
            "billing_address1": null,
            "billing_address2": null,
            "billing_city": null,
            "billing_state": null,
            "billing_zip": null,
            "billing_country": null,
            "accept_supply_partner_usersync": null,
            "accept_data_provider_usersync": null,
            "ym_profile_id": null,
            "allow_cpm_managed": true,
            "allow_cpm_external": true,
            "allow_cpa_managed": true,
            "allow_cpa_external": false,
            "allow_cpc_managed": true,
            "allow_cpc_external": false,
            "managed_cpc_bias_pct": 100,
            "managed_cpa_bias_pct": 100,
            "external_cpc_bias_pct": 100,
            "external_cpa_bias_pct": 100,
            "is_oo": false,
            "base_payment_rule_id": null,
            "base_ad_quality_rule_id": 1,
            "currency": "USD",
            "redirect_to_rm": true,
            "billing_internal_user": null,
            "labels" [
                {
                    "value: "First Contact",
                    "id": 2,
                    "name": "Salesperson"
                },
                {
                    "value: "Second Contact",
                    "id": 4,
                    "name": "Account Manager"
                },
            "placements": [
                {
                    "id": 1234,
                    "code": null
                },
                {
                    "id": 5678,
                    "code": null
                }
            ]
        }
}
```

**Update a publisher**

Update the `base_ad_quality_rule_id` field of a publisher:

``` pre
$ cat PublisherBaseAdQualityRuleUpdate.json

{
         "publisher" :  {
            "base_ad_quality_rule_id" : 632112
         }
}

$ curl -b cookies -X PUT -d @PublisherBaseAdQualityRuleUpdate.json 'https://api.appnexus.com/publisher?id=100'

{
   "response" : {
      "count" : 1,
      "status" : "OK",
      "start_element" : 0,
      "id" : "100",
      "publisher" : {
         "billing_address1" : "BILLING_ADDRESS",
         "managed_cpa_bias_pct" : 100,
         "inventory_source" : null,
         "external_cpc_bias_pct" : 100,
         "ym_profile_id" : null,
         "currency" : "USD",
         "allow_cpa_managed" : true,
         "inventory_source_name" : null,
         "use_anx_auction_logic" : false,
         "learn_bypass_cpm" : 5,
         "platform_ops_notes" : null,
         "contact" : {
            "phone" : "555-555-1212",
            "email" : "CONTACT_EMAIL@EMAIL.COM",
            "id" : CONTACT_ID,
            "name" : "CONTACT_NAME"
         },
         "allow_cpc_managed" : true,
         "is_rtb" : false,
         "disclosure_status" : "disclosed_pending",
         "visibility_profile_id" : null,
         "billing_dba" : "BILLING_DBA",
         "reselling_exposure" : "private",
         "managed_cpc_bias_pct" : 100,
         "default_placement_id" : 13741957,
         "labels" : null,
         "accept_supply_partner_usersync" : null,
         "expose_domains" : true,
         "reselling_name" : null,
         "billing_internal_user" : null,
         "placements" : [
            {
               "id" : 13741957,
               "code" : null
            },
            {
               "id" : 13847262,
               "code" : null
            }
         ],
         "enable_cookie_tracking_default" : true,
         "external_inv_codes" : null,
         "inventory_relationship" : "direct",
         "pitbull_segment_value" : 0,
         "default_site_id" : 3731466,
         "publisher_brand_exceptions" : null,
         "billing_address2" : null,
         "timezone" : "CET",
         "contact_info" : null,
         "last_modified" : "2018-08-26 22:33:13",
         "code" : null,
         "billing_zip" : "BILLING_ZIP",
         "billing_country" : "US",
         "reselling_exposed_on" : "1970-01-01 00:00:01",
         "is_oo" : false,
         "billing_state" : "BILLING_STATE",
         "ad_quality_advanced_mode_enabled" : true,
         "allow_cpm_external" : true,
         "pitbull_segment_id" : 0,
         "base_ad_quality_rule_id" : 632112,
         "default_ad_profile_id" : null,
         "seller_page_cap_enabled" : false,
         "description" : "",
         "allow_cpa_external" : false,
         "id" : 100,
         "state" : "inactive",
         "billing_city" : "Portland",
         "max_learn_pct" : 0,
         "cpc_reselling_disabled" : false,
         "allow_report_on_default_imps" : false,
         "cpm_reselling_disabled" : false,
         "base_payment_rule_id" : 1570229,
         "name" : "PUBLISHER_NAME",
         "allow_cpm_managed" : true,
         "accept_demand_partner_usersync" : null,
         "accept_data_provider_usersync" : null,
         "external_cpa_bias_pct" : 100,
         "allow_cpc_external" : false
      },
      "num_elements" : 100
   }
}
```






