---
Title : Placement Service
Description : The Placement Service enables you to create placement ad tags as well as
modify and view them. You will use placements for managed publishers or
---


# Placement Service



The Placement Service enables you to create placement ad tags as well as
modify and view them. You will use placements for managed publishers or
for direct media buys.

- Placement IDs and their associated information are stored server-side
  with Xandr and are easy to modify.
- When you create a placement, you specify the types of creatives that
  are allowed to serve on it (see `supported_media_types` and
  `supported_media_subtypes` below).

<div id="placement-service__note_dfd_kv2_twb"


Note: Targeting of advertisers, line
items, or campaigns via this service will override any targeting defined
by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/payment-rule-service.html"
class="xref" target="_blank">Payment Rule Service</a>.



<div id="placement-service__section_ksg_lv2_twb"
>

## Tag Format

Once you have the placement ID, you format the placement tag as follows
and hand it to the publisher you represent or with whom you have a
guaranteed buy.

<div id="placement-service__note_c3x_mv2_twb"


Note: "id" is the placement ID.



<div id="placement-service__note-5f489e6c-ce04-4046-ad71-8424c17244f7"
class="note tip note_tip">

Tip: You can include placeholders to
pass in additional query string parameters to our platform during the ad
call.



<div id="placement-service__note-6325e62d-03c9-4d15-a772-8259c25522b0"
class="note important note_important">

Important: When serving your placement
tags on secure inventory (SSL), you should alter the below tags to use
the host: "https://secure.adnxs.com/..."



**IFRAME**

``` pre
<!-- BEGIN IFRAME TAG < - DO NOT MODIFY -->
<IFRAME SRC="https://ib.adnxs.com/tt?id=2704"
    FRAMEBORDER="0"
    SCROLLING="no"
    MARGINHEIGHT="0"
    MARGINWIDTH="0"
    TOPMARGIN="0"
    LEFTMARGIN="0"
    ALLOWTRANSPARENCY="true"
    WIDTH="120"
    HEIGHT="600"></IFRAME>
<!-- END TAG -->
```

**JavaScript**

``` pre
<!-- BEGIN JS TAG < - DO NOT MODIFY -->
<SCRIPT SRC="https://ib.adnxs.com/ttj?id=2704" TYPE="text/javascript"></SCRIPT>
<!-- END TAG -->
```



<div id="placement-service__section_mh5_41g_twb"
>

## REST API



<div id="placement-service__note_sxv_r1g_twb"


Note: The code, placement_code,
site_code, and publisher_code can be used in place of the corresponding
IDs in the calls below.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_mh5_41g_twb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="placement-service__section_mh5_41g_twb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="placement-service__section_mh5_41g_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__2"><p><a
href="https://api.appnexus.com/placement?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement?publisher_id=PUBLISHER_ID</a></p>
<p><a href="https://api.appnexus.com/placement?site_id=SITE_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement?site_id=SITE_ID</a></p>
<p>(placement JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__3">Add a
placement (NETWORK).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__2"><p><a
href="https://api.appnexus.com/placement?id=PLACEMENT_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement?id=PLACEMENT_ID&amp;publisher_id=PUBLISHER_ID</a></p>
<p><a
href="https://api.appnexus.com/placement?code=PLACEMENT_ID&amp;site_id=SITE_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement?code=PLACEMENT_ID&amp;site_id=SITE_ID</a></p>
<p>(placement JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__3">Modify an
existing placement (NETWORK).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__2"><p><a
href="https://api.appnexus.com/placement?id=PLACEMENT_ID&amp;publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement?id=PLACEMENT_ID&amp;publisher_id=PUBLISHER_ID</a></p>
<p><a
href="https://api.appnexus.com/placement?code=PLACEMENT_CODE&amp;publisher_code=PUBLISHER_CODE"
class="xref"
target="_blank">https://api.appnexus.com/placement?code=PLACEMENT_CODE&amp;publisher_code=PUBLISHER_CODE</a></p></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__3">Delete an
existing placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__2"><a
href="https://api.appnexus.com/placement?publisher_id=PUBLISHER_ID"
class="xref"
target="_blank">https://api.appnexus.com/placement?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__3">View all of
the placements for one of your publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__2"><a
href="https://api.appnexus.com/placement?id=PLACEMENT_ID" class="xref"
target="_blank">https://api.appnexus.com/placement?id=PLACEMENT_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__3">View a
specific placement for one of your publishers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__2"><a
href="https://api.appnexus.com/placement?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/placement?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="placement-service__section_mh5_41g_twb__entry__3">View all
placements for a site.</td>
</tr>
</tbody>
</table>





<div id="placement-service__section_zgc_lbg_twb"
>

## JSON Fields



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The ID of
the placement.</p>
<p><strong>Default:</strong> Auto-incremented number (i.e. 123)</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT,</code> in
query string</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The name
of the placement.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The custom
code for the placement.

Note:
<p>Codes must be alphanumeric and cannot contain spaces. The following
characters are also permitted:</p>
<ul>
<li>period (".")</li>
<li>underscore ("_")</li>
<li>hyphen ("-")</li>
<li>percent ("%")</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">code2</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The second
custom code for the placement.

Note:
<p>Codes must be alphanumeric and cannot contain spaces. The following
characters are also permitted:</p>
<ul>
<li>period (".")</li>
<li>underscore ("_")</li>
<li>hyphen ("-")</li>
<li>percent ("%")</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">code3</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The third
custom code for the placement.

Note:
<p>Codes must be alphanumeric and cannot contain spaces. The following
characters are also permitted:</p>
<ul>
<li>period (".")</li>
<li>underscore ("_")</li>
<li>hyphen ("-")</li>
<li>percent ("%")</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The state
of the placement. Possible values: "active" or "inactive".</p>
<p><strong>Default:</strong> "active"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The width of
the placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The height of
the placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">is_resizable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>If the
placement uses a friendly iFrame and you want the placement to resize to
fit smaller or larger creatives, set this field to true.</p>
<p><strong>Default:</strong> false</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">default_position</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The
default position of the placement on the page. Possible values: "above"
(above the fold), "below" (below the fold), or "unknown".</p>
<p><strong>Default:</strong> "unknown"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">publisher_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The ID of
the publisher associated with the placement.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">publisher_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The name of
the publisher associated with the placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">site_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The ID of
this placement's parent site. Each placement must belong to a site.</p>
<p><strong>Default:</strong> Site of publisher</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">site_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(100)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The name of
the site on which the placement is used.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">inventory_source_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">ad_profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The ID of the
ad profile associated with the placement.

Note: The preferred way to "assign" an
ad profile to a placement is as follows: Create an Ad Quality Rule with
a targeting profile (the profile "targets" the placement). Link the Ad
Profile to the Ad Quality Rule. Assign the Ad Quality Rule to the
publisher. That way you can enjoy a greater flexibility using the
targeting profile.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">supported_media_types</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The media
types that are allowed to serve on the placement. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-SupportedMediaTypes"
class="xref" target="_blank">Supported Media Types</a> below for more
details.
<div id="placement-service__note_t5c_12g_twb"
class="note attention note_attention">
Attention: If you do not specify either
<code class="ph codeph">supported_media_types</code> or <code
class="ph codeph">supported_media_subtypes</code>, the "Banner" media
type and all of its subtypes will be allowed by default.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">supported_media_subtypes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The media
subtypes that are allowed to serve on the placement. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-SupportedMediaSubtypes"
class="xref" target="_blank">Supported Media Subtypes</a> below for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">pop_values</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">Deprecated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">default_creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><strong>Deprecated.</strong>
Please use default_creatives instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">default_creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The default
creatives that will be displayed instead of a PSA when there is no
auction winner. For each default creative, the reserve price is set with
the "price" field in the array. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-DefaultCreatives"
class="xref" target="_blank">Default Creatives</a> below for more
details.

Note: The placement will not pop if the
reserve price is not met, except in the case of a prepop.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">reserve_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The reserve
price for each of the placement's default creatives is set in the
default_creatives array (see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-DefaultCreatives"
class="xref" target="_blank">Default Creatives</a> below). If the
placement does not have default creatives, a reserve price can be set
here for the placement; this is not best practice, however, as the
reserve price may cause the display of a PSA.
<div id="placement-service__note_e1z_42g_twb"
class="note important note_important">
Important: A Yield Management Profile
will supersede any reserve price settings at the Placement level. If you
have such a profile, you must set your desired reserve price via a hard
floor.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">hide_referer</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">If true, the
referrer will not be reported.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">default_referrer_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">If a <a
href="https://docs.xandr.com/bundle/xandr-api/page/visibility-profile-service.html"
class="xref" target="_blank">Visibility Profile</a> is set to hide
inventory URLs in your bid requests, you can set this field to pass a
vanity URL instead. This is particularly useful in cases where
publishers do not want to share actual domains but nonetheless want
buyers to be able to identify them by domain.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The ID of the
visibility profile assigned directly to the placement. For more details
about visibility profiles, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/visibility-profile-service.html"
class="xref" target="_blank">Visibility Profile Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">exclusive</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p><strong>Read-only.</strong></p>
<p>To designate whether a placement's inventory is to be made available
for resale, use the <code class="ph codeph">rtb</code> field in the
<code class="ph codeph">marketplace_map</code> object of the placement's
site. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
class="xref" target="_blank">Site Service</a> for a description of this
field. All inventory made available for resale is part of the RTB
Marketplace.</p>
<p><strong>Default:</strong> False</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">pixel_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Piggyback
call upon user loading placement.</p>
<p><strong>Default:</strong> null</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">pixel_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Identifies
the type of pixel. Possible values are "javascript" or "image".</p>
<p><strong>Default:</strong> image</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">content_categories</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">A list of
Content Categories associated with this placement. At most 20 categories
can be specified for a placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">filtered_advertisers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">A list of
advertisers that are allowed to target the placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">filtered_line_items</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">A list of
line items that are allowed to target the placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">filtered_campaigns</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">A list of
campaigns that are allowed to target the placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">segments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">A list of
segments that users will be added to upon viewing this placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">estimated_clear_prices</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The bid
amount that has historically won the majority (95%) of the 3rd party
auctions in which it participates. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-EstimatedClearPrices"
class="xref" target="_blank">Estimated Clear Prices</a> below for more
details.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">media_subtypes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><strong>Deprecated.</strong>
Please use <code class="ph codeph">supported_media_types</code> and
<code class="ph codeph">supported_media_subtypes</code> instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">intended_audience</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">Values for
self-auditing only. Possible values: "general", "children",
"young_adult", or "mature".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">inventory_attributes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The
sensitive attributes contained by the placement.</p>

Tip: The inventory_attributes can also
be applied at the site level, and in this case will influence objects at
the placement level, as well. This is an array of objects with IDs.
Please see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/inventory-attribute-service.html"
class="xref" target="_blank">Inventory Attribute Service</a> for a list
of IDs.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">audited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>If true,
the placement has been self-audited by the owner.</p>
<p><strong>Default:</strong> false</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">audit_level</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Values for
self-auditing only.</p>

Note: The self-audits at the site level
can be overridden at the placement level. Possible values:
<ul>
<li>"site" - Use this value if the audited field is set to false in the
placement but true in the site.</li>
<li>"placement" - Use this value if the audited field is set to true in
the placement.</li>
</ul>

<p><strong>Default:</strong> "site"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">default_calculation_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>This
determines the bid price threshold below which a default creative will
be served. You can choose whether this threshold is the network's gross
revenue or the publisher's net revenue. If there are no additional
eligible campaigns, nor any default creatives available, a PSA is
served. Possible values: "gross" or "net".</p>
<p><strong>Default:</strong> "gross"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">apply_floor_to_direct</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><strong>Removed.</strong>
Please use <code class="ph codeph">floor_application_target</code>
instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">demand_filter_action</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Indicates
demand sources which can be included or excluded.</p>
<p><strong>Default:</strong> default</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">floor_application_target</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The type
of bids to which the reserve price is applied. Possible values:</p>
<ul>
<li>"external_only" - The reserve price is applied only to external bids
(buying member and selling member are different). Use this option if you
would rather serve an available managed learn impression than serve a
default, even if this means exceeding the maximum % of daily volume for
learn (max_learn_pct field in <a
href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
class="xref" target="_blank">Publisher Service</a>).</li>
<li>"external_non_preferred" - The reserve price is applied to external
bids (buying member and selling member are different) or when the
impression is an available managed learn impression that exceeds the
maximum % of daily volume for learn. Use this option if you would rather
serve a default than serve an available managed learn impression that
would exceed the maximum % of daily volume for learn.</li>
<li>"all" - The reserve price is applied to all bids except managed
learn impressions within the maximum % of daily volume for learn.</li>
</ul>
<p><strong>Default:</strong> "all"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">pixel_url_secure</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Secure
piggyback call upon user loading placement.</p>
<p><strong>Default:</strong> null</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">site_audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Indicates
how the site has decided to perform creative audits. Possible values are
"self" or "unaudited".</p>
<p><strong>Default:</strong> unaudited</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">toolbar</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">Sellers must
declare all toolbar and browser-plugin inventory. If a seller assigns
the "toolbar" inventory attribute, this additional meta data must also
be included.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">acb_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string
(32)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">tag_data</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">cost_cpm</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>If a value
exists, it will be used as the payment information for the placement.
This will override any payment rules associated with the publisher.</p>
<p><strong>Default:</strong> null</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">is_prohibited</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p><strong>Read-only.</strong>
If true, the placement has been prohibited due to violation of Xandr
content policies. Direct and third-party auctions will not be run for a
prohibited placement.</p>
<p><strong>Default:</strong> false</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><strong>Read-only.</strong>
The date and time when the placement was last modified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">stats</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The <code
class="ph codeph">stats</code> object has been deprecated (as of October
17, 2016). Use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">content_retrieval_timeout_ms</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The
timeout this placement will set on content retrieved from "mediated"
creatives, i.e., creatives whose <code
class="ph codeph">content_source</code> is set to <code
class="ph codeph">"mediation"</code>. For more information, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.</p>
<ul>
<li>If set to <code class="ph codeph">0</code>, the ad server will use
the value from the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a></li>
<li>Defaults to <code class="ph codeph">0</code> if not provided to the
API on <code class="ph codeph">PUT</code> or <code
class="ph codeph">POST</code> calls</li>
<li>If ad server reads a <code class="ph codeph">0</code> in this field,
it will perform a member lookup and use the default timeout defined by
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a> (assuming it's also
non-zero).</li>
<li>When creating a placement, no values will be copied into this field
from the member's default settings. You must explicitly specify them in
your calls to <code class="ph codeph">POST</code>. For more information,
see the <code
class="ph codeph">default_content_retrieval_timeout_ms</code> field of
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a>.</li>
</ul>
<p><strong>Default:</strong> <code class="ph codeph">0</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">enable_for_mediation</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>This will
be the source of truth for whether a placement should accept mediated
content. Unless set on <code class="ph codeph">PUT</code> or <code
class="ph codeph">POST</code>, this field will inherit its default value
from the member. If the default value is changed on the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a>, that action will not
retroactively impact placements created previously; they will continue
to be set to the old default value. In other words, the value of this
field cannot be updated retroactively by setting the member default. For
more information, see the <code
class="ph codeph">default_enable_for_mediation</code> field of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a>.</p>
<p><strong>Default:</strong> Inherited from <code
class="ph codeph">default_enable_for_mediation</code> field of the <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">private_sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3">The list of
placement sizes that may be allowed to serve in deals and packages. See
<a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-PrivateSizes"
class="xref" target="_blank">Private Sizes</a> below for more
details.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">video</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The media
subtype allowed to serve on the placement. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-VideoSettings"
class="xref" target="_blank">Video Settings</a> below for more
details.</p>
<p><strong>Default:</strong> null</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">ad_types</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Contains
information relating to placement types, including the ad type ID and
information about the renderer. For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-AdTypes"
class="xref" target="_blank">Ad Types</a> below.</p>
<p><strong>Default:</strong> null</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">use_detected_domain</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p><strong>Read-only.</strong>
Whether to use the detected domain versus the reported domain. Defaults
to true for all clients.</p>
<p><strong>Default:</strong> true</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">mime_types</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>The list
of mime types to include or exclude on the placement. <code
class="ph codeph">supported_mime_types_action_include</code> below is
used to specify whether to include or exclude those mime types. For a
list of the strings used to identify each mime types, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-SupportedMimeTypes"
class="xref" target="_blank">Supported Mime Types</a>.</p>
<p><strong>Default:</strong> empty</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">supported_mime_types_action_include</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>If true,
the mime types listed in the <code class="ph codeph">mime_types</code>
array will be included.</p>
<p><strong>Default:</strong> false</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">handles_mixed_media</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>This tells
our platform whether the video player can support a VAST file with
different mime types.</p>
<p><strong>Default:</strong> true</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__1"><code
class="ph codeph">tinytag_renderer_asset_floor_prices</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__3"><p>Associates
floor prices to native creatives that have been assigned to the
placement. For additional information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-TinytagRendererAssetFloorPrices"
class="xref" target="_blank">Tinytag Renderer Asset Floor
Prices</a>.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
</tbody>
</table>



**Supported Media Types**



Creatives are categorized by media type and media subtype. Media type
defines the general display style of the creative, for example,
"Banner", and media subtype defines the specific display style of
creatives, for example, "Standard Banner" or "In-Banner Video". You can
use this array to limit the media type, the general display style of
creatives, that can serve on a placement. To limit the media subtype,
the specific display style of creatives, use the
supported_media_subtypes array (see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-SupportedMediaSubtypes"
class="xref" target="_blank">Supported Media Subtypes</a> below).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__190"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__191"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__192"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__190"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__191">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__192"><p>The ID
of the allowed media type. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a> to view all media
types.</p>
<p><strong>Default:</strong> 1</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__190"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__191">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__192"><p>The name
of the allowed media type.</p>
<p><strong>Default:</strong> "Banner"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__190"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__191">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__192">The group
ID for the media type.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__190"><code
class="ph codeph">uses_sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__191">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__192">Whether the
media type has size specifications. Possible values: "always",
"sometimes", "never".</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__190"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__191">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__192">When the
<code class="ph codeph">allowed_media_type</code> object was last
updated.</td>
</tr>
</tbody>
</table>



**Supported Media Subtypes**

Creatives are categorized by media type and media subtype. Media type
defines the general display style of the creative, for example,
"Banner", and media subtype defines the specific display style of
creatives, for example, "Standard Banner" or "In-Banner Video". You can
use this array to limit the media subtype, the specific display style of
creatives, that can serve on a placement. To limit the media type, the
general display style of creatives, use the supported_media_types array
(see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-SupportedMediaTypes"
class="xref" target="_blank">Supported Media Types</a> above).

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__208"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__209"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__210"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__208"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__209">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__210"><p>The ID
of the allowed media subtype. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a> to view all media
subtypes.</p>
<p><strong>Default:</strong> null</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__208"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__209">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__210">The name of
the allowed media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__208"><code
class="ph codeph">is_private</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__209">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__210">Whether the
media subtype is set to private. If <code class="ph codeph">true</code>
then yes.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__208"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__209">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__210">The group
ID for the media type.</td>
</tr>
</tbody>
</table>

<div id="placement-service__note_pqx_dch_twb"


Note: **Notes on Supported Media Types
and Media Subtypes**

- If you do not specify either supported media types or supported media
  subtypes, the "Banner" media type and all of its subtypes will be
  allowed by default.
- You can combine the "Banner" and "Text" media types, and any
  combination of their media subtypes, on a single placement, but you
  cannot combine any of the other media types and media subtypes. This
  limitation ensures that only appropriate creatives are served on a
  placement. For example, a placement that allows creatives of the media
  type "Video" is intended to be fed to a video player; it would not
  make sense to allow creatives of any other media type, such as
  "Interstitial", to serve on the placement.
- You can set a placement to allow the "Expandable" media type or any of
  its subtypes for direct inventory. If you want to support expandable
  creatives for placements that are available for reselling to other
  platform members, please provide the placement's ID to
  <a href="https://help.xandr.com/" class="xref"
  target="_blank">support</a> for verification.



**Supported Mime Types**



The `mime_types` array of objects supports the mime types shown in the
following table. If no mime types are specified, all mime types will be
accepted. The Placement API uses the string in the **Name** column. If
you need to pass this information in a tag, use the ID.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__223"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="placement-service__section_zgc_lbg_twb__entry__224"
class="entry align-left colsep-1 rowsep-1">Id</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph">application/x-shockwave-flash </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">1</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/x-flv </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">2</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/mp4 </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">3</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/webm </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">4</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> application/javascript </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">5</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> application/octet-stream </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">6</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> image/jpeg </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">7</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> image/gif </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">8</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> image/png </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">9</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> application/zip </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">10</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> application/</code><a href="http://vnd.ms/"
class="xref" target="_blank"><code
class="ph codeph">vnd.ms</code></a><code
class="ph codeph">-asf </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">11</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/x-ms-wmv </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">12</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/ogg </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">13</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/x-msvideo </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">14</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/mpeg </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">15</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/quicktime </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">16</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/3gpp </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">17</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/3gpp2 </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">18</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> video/x-m4v </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">19</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> audio/ogg </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">20</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> audio/x-pn-realaudio </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">21</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> audio/mpeg </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">22</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> text/css </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">23</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> text/html </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">24</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> text/plain </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">25</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__223"><code
class="ph codeph"> audio/mp4 </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__224">26</td>
</tr>
</tbody>
</table>



**Video Settings**

If the `supported_media_type` is "video" or the
`supported_media_subtypes` is "Standard VAST", these fields should be
included in the `video` object. Please see <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#PlacementService-Examples"
class="xref" target="_blank">Examples</a> below.

<div id="placement-service__note_sgc_qch_twb"


Note: The following settings affect
auction outcomes: for Outstream player settings, which determine the
ultimate behavior of the Outstream video player, see "Outstream Video
Player Settings" in our UI documentation.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__277"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__278"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__279"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The ID of
the video creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The width
of the video creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">max_duration_secs</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>The
maximum duration of a video ad that is allowed to be played on the
placement.</p>
<p>If maximum_number_ads is &gt; 1, then the max duration applies to the
entire length of an ad pod (a linear grouping of more than one ad
designed to fill a single placement).</p>

Note: This field must be set in order
to enable ad pods.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">maximum_ad_duration_secs</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The maximum
video ad duration in seconds of any single ad that can be played on the
placement. This only applies to ad pods.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">maximum_number_ads</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The maximum
number of ads that are allowed to be played on the placement. If
maximum_number_ads is &gt; 1, then the placement can be an ad pod (a
linear grouping of more than one ad designed to fill a single
placement).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">start_delay_secs</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>The
start delay in seconds for the placement. If the start delay value is
&gt; 0, then the position of the placement is "mid-roll".</p>

Note: This field must be set if the
context is "mid-roll".
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">skipoffset_seconds</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>The
number of seconds that is allowed for the video to play, before it can
be skipped.</p>
<p>The default value is <code class="ph codeph">null</code>.</p>
<div id="placement-service__note_mdk_ych_twb"
class="note caution note_caution">
CAUTION: If you set this value to
anything but <code class="ph codeph">null</code>, the <code
class="ph codeph">supports_skippable</code> field must be set to <code
class="ph codeph">true</code>. (See below).
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">supports_skippable</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>The ad
slot is skippable.</p>
<p>Possible values: "true" or "false"</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">context</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>Roll
position of the video creative.</p>
<p>Possible Values: "pre-roll", "mid-roll", "post-roll".</p>

<div id="placement-service__note_tqv_1dh_twb"
class="note important note_important">
Important: This field must be set in
order to enable ad pods.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">layback_method</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>The
different playback methods are:</p>
<ul>
<li>Auto-play, sound-on</li>
<li>Auto-play, sound-off</li>
<li>Click-to-play</li>
<li>Mouse-over</li>
<li>Auto-play, sound unknown</li>
</ul>
<p>Possible values: "auto_play_sound_on", "auto_play_sound_off",
"click_to_play", "mouse_over", "auto_play_sound_unknown", null</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">frameworks</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">array of
strings</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>The
framework of the placement. Options include:</p>
<ul>
<li>VPAID 1.0</li>
<li>VPAID 2.0</li>
<li>MRAID-1</li>
<li>ORMMA</li>
<li>MRAID-2</li>
</ul>
<p>Possible values: "vpaid_1_0", "vpaid_2_0", "mraid_1", "ormma" and
"mraid_2"</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">video_bumpers</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The bumpers
that can be associated with the ad pod. Bumper duration is not included
in the overall duration of the ad pod. See video bumpers object.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">player_vast_version</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279"><p>This
field specifies the highest vast version the placement supports, and
should be set to highest value that your player supports. Creatives that
require a vast version higher than your player version will not be
eligible to serve in your placement.</p>
<p>Possible values:</p>
<ul>
<li>2.0</li>
<li>3.0</li>
<li>4.0</li>
</ul>

<div id="placement-service__note_tjx_2dh_twb"
class="note caution note_caution">
CAUTION: Specifying a value higher than
your player supports may cause errors when unsupported creatives are
rendered.

</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">vmin_ad_duration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The minimum
creative duration allowed, in seconds.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">minbitrate</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The minimum
bitrate in kbps.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">mf_min_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The minimum
width of the video creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">mf_min_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The minimum
height of the video creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__277"><code
class="ph codeph">aspect ratios</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__278">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__279">The
creative aspect ratio that can serve for a video placement. The array
contains ratio_width and ratio_height.</td>
</tr>
</tbody>
</table>

**Video Bumpers**



This array of objects contains information relating to the bumpers on an
ad pod.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__334"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__335"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__336"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__334"><code
class="ph codeph">video_bumper_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__335">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__336"><p>The type
of bumper. Options include:</p>
<ul>
<li>intro</li>
<li>outro</li>
</ul>
<p><strong>Default:</strong> null</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__334"><code
class="ph codeph">max_duration_secs</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__335">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__336"><p>The max
duration of the bumper.</p>
<p><strong>Default:</strong> null</p></td>
</tr>
</tbody>
</table>



**Aspect Ratios**



This array of objects contains information about creative aspect ratio
that can serve for a video placement.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__343"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__344"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__345"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__343"><code
class="ph codeph">ratio_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__344">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__345">The width
of the aspect ratio</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__343"><code
class="ph codeph">ratio_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__344">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__345">The height
of the aspect ratio</td>
</tr>
</tbody>
</table>



**Ad Types**



This array of objects contains information relating to placement types,
including the ad type ID and information about the renderer.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__352"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__353"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__section_zgc_lbg_twb__entry__354"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__352"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__353">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__354"><p>The ID
of the <code class="ph codeph">ad_type</code>.</p>
<p>Possible values:</p>
<ul>
<li>1 = Banner</li>
<li>2 = Video</li>
<li>3 = Native</li>
</ul>
<p><strong>Default:</strong> null</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__352"><code
class="ph codeph">renderer_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__353">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__354"><p>The ID
of the renderer.</p>
<p>Possible values:</p>
<ul>
<li>1 = outstream banner</li>
<li>2 = outstream video</li>
</ul>
<p><strong>Default:</strong> null</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__352"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__353">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__354">The name of
the ad_type in all lowercase letters for example <code
class="ph codeph">video</code> or <code
class="ph codeph">banner</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__352"><code
class="ph codeph">display_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__353">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__354">The display
name of the ad_type, shown as the ad type with initial caps, for example
<code class="ph codeph">Video</code> or <code
class="ph codeph">Banner.</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__352"><code
class="ph codeph">renderer</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__353">multi
object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__354"><p>An
object consisting of the <code class="ph codeph">id</code> and <code
class="ph codeph">display_name</code> of the renderer.</p>
<p><strong>Default:</strong> null</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
</tbody>
</table>



**Tinytag Renderer Asset Floor Prices**



This array of objects is used to associate floor prices to native
creatives that have been assigned to the placement.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__section_zgc_lbg_twb__entry__370"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__section_zgc_lbg_twb__entry__371"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="placement-service__section_zgc_lbg_twb__entry__372"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__370"><code
class="ph codeph">renderer_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__371">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__372"><p>The ID
of the renderer.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__370"><code
class="ph codeph">ad_type_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__371">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__372"><p>The ID
of the <code class="ph codeph">ad_type</code>. This will always be <code
class="ph codeph">3</code> since you can only associate floor prices
with native creatives.</p>
<p><strong>Default:</strong> 3</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__370"><code
class="ph codeph">asset_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__371">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__372"><p>The
asset type.</p>
<p>Possible values include:</p>
<ul>
<li>main_image</li>
<li>video</li>
</ul>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__370"><code
class="ph codeph">floor_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__371">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__section_zgc_lbg_twb__entry__372"><p>The
preferred bid amount in exchange for the native asset's impressions.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST/PUT</code></p></td>
</tr>
</tbody>
</table>



**Default Creatives**

You use this array to assign default creatives to the placement. Please
note the following requirements:

- A default creative must not be expired. See the is_expired field in
  the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a> for more
  information.

- A default creative must be assigned to a creative template that
  matches the supported_media_types and supported_media_subtypes of the
  placement. For example, if the placement allows creatives of the
  "Banner" media type, you would not be able to associate default
  creatives that use a creative template for the "Interstitial" media
  type. See the template field in the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a> for more
  information.

- If the placement is sized (the "width" and "height" fields are defined
  for the placement), this array should contain only one creative with
  the matching dimensions.

<table id="placement-service__table_w2f_vzk_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__table_w2f_vzk_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__table_w2f_vzk_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__table_w2f_vzk_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__3">The ID of the
default creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__3">The width of
the default creative.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__3">The height of
the default creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__1"><code
class="ph codeph">price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__3">The reserve
price for the default creative. A winning bid must be above this
price.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_w2f_vzk_twb__entry__3"><strong>Read-only.</strong>
The name of the default creative.</td>
</tr>
</tbody>
</table>

**Pop Values**

If the `supported_media_type` is "Pop", or the
`supported_media_subtypes` is "Popup" or "Popunder", these fields should
be included in the `pop_values` array. Please see below for an example.

<table id="placement-service__table_x2f_vzk_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__table_x2f_vzk_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__table_x2f_vzk_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__table_x2f_vzk_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__1"><code
class="ph codeph">pop_freq_times</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__3"><p>Number of
times that the tag can be popped to a unique user ID in <code
class="ph codeph">pop_frequency_duration</code> seconds. Has no effect
when pop_is_prepop is set to true.</p>
<p><strong>Default:</strong> No frequency cap</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__1"><code
class="ph codeph">pop_freq_duration</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__3"><p>See
pop_freq_times.</p>
<p><strong>Default:</strong> No frequency cap</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__1"><code
class="ph codeph">pop_is_prepop</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__3"><p>If true, the
tag is a prepop tag and will serve into a window that the publisher page
has already popped.</p>
<p><strong>Default:</strong> false</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__1"><code
class="ph codeph">pop_max_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__3"><p>If
pop_max_width is specified, any creative shown by the tag must have a
width equal to or smaller than pop_max_width</p>
<p><strong>Default:</strong> no max width</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__1"><code
class="ph codeph">pop_max_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_x2f_vzk_twb__entry__3"><p>The max
height of the creative. If pop_max_height is specified, any creative
shown by the tag must have a height equal to or smaller than
pop_max_height</p>
<p><strong>Default:</strong> no max height</p></td>
</tr>
</tbody>
</table>

**Estimated Clear Prices**

<table id="placement-service__table_y2f_vzk_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__table_y2f_vzk_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__table_y2f_vzk_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__table_y2f_vzk_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__1"><code
class="ph codeph">clear_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__3">The bid amount
that has historically won the majority (95%) of the 3rd party auctions
in which it participates for this placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__1"><code
class="ph codeph">average_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__3">This is the
average of all bids submitted for this placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__3">When exporting
sizeless placement tags to be served, this determines the width of the
placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__3">When exporting
sizeless placement tags to be served, this determines the height of the
placement.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__1"><code
class="ph codeph">verified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__3">Indicates
whether the creative has been verified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__1"><code
class="ph codeph">geo_country</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_y2f_vzk_twb__entry__3">The country
code for the geographical location associated with the impression.</td>
</tr>
</tbody>
</table>

**Private Sizes**

This array determines the specific placement sizes that are allowed to
serve for a custom deal or in a package. The `override_size_preference`
in the
<a href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> or <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html"
class="xref" target="_blank">Package Service</a> must be set to `append`
for these private sizes to serve along with the standard placement
sizes.

<table id="placement-service__table_z2f_vzk_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__table_z2f_vzk_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="placement-service__table_z2f_vzk_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__table_z2f_vzk_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_z2f_vzk_twb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_z2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_z2f_vzk_twb__entry__3">The width of
the placement.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_z2f_vzk_twb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_z2f_vzk_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_z2f_vzk_twb__entry__3">The height of
the placement.</td>
</tr>
</tbody>
</table>

**Stats**

The `stats` object has been deprecated (as of October 17, 2016). Use the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> to obtain statistical
information instead.

Toolbar & Browser Plug-in Declaration

According to <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html#"
class="xref" target="_blank">platform policy</a>, sellers must identify
all toolbar/browser plug-in inventory and segregate it from other
inventory on its own placements. To identify toolbar inventory, sellers
must:

- Set the inventory_attribute appropriately

- Send the required information in the toolbar array, described here:

<table id="placement-service__table_bff_vzk_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="placement-service__table_bff_vzk_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Parameter</th>
<th id="placement-service__table_bff_vzk_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="placement-service__table_bff_vzk_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__3">The common
trade name of the toolbar.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__1"><code
class="ph codeph">company</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__3">The developer
of the toolbar. Please identify the legal business entity, not a trade
name.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__1"><code
class="ph codeph">tos_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__3">A link to a web
page where our auditors can find complete terms of service.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__1"><code
class="ph codeph">install_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="placement-service__table_bff_vzk_twb__entry__3">A link to a web
page where our auditors can install the toolbar.</td>
</tr>
</tbody>
</table>



<div id="placement-service__section_g1w_1bl_twb"
>

## Examples



**Viewing all placements for one of your publishers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/placement?publisher_id=88888'

{
    "response": {
        "status": "OK",
        "count": 4,
        "start_element": 0,
        "num_elements": 100,
        "placements": [
            {
                "id": 594595,
                "name": "Test Placement 1",
                "code": null,
                "code2": null,
                "code3": null,
                "state": "active",
                "cost_cpm": null,
                "publisher_id": 88888,
                "site_id": 188040,
                "reserve_price": null,
                "width": 300,
                "height": 250,
                "default_position": "unknown",
                "default_creative_id": null,
                "ad_profile_id": null,
                "acb_code": null,
                "tag_data": null,
                "hide_referer": false,
                "inventory_source_id": null,
                "pixel_url": "",
                "pixel_type": "image",
                "last_modified": "2011-10-24 19:45:31",
                "media_subtypes": [
                    "banner"
                ],
                "intended_audience": "general",
                "audited": true,
                "audit_level": "placement",
                "default_calculation_type": "gross",
                "publisher_name": "National Public Radio",
                "site_name": "[Test Publisher 1] - ROS",
                "site_audit_status": "unaudited",
                "demand_filter_action": "include",
                "is_resizable": true,
                "pixel_url_secure": "",
                "floor_application_target": "all",
                "pop_values": null,
                "inventory_attributes": [
                    {
                        "id": 2,
                        "name": "Political opinion"
                    },
                    {
                        "id": 16,
                        "name": "Blogs"
                    }
                ],
                "supported_media_types": [
                    {
                        "name": "Banner",
                        "id": 1
                    }
                ],
                "supported_media_subtypes": null,
                "content_categories": [
                    {
                        "id": 7,
                        "name": "Arts & Entertainment",
                        "is_system": true
                    },
                    {
                        "id": 17,
                        "name": "News",
                        "is_system": true
                    },
                    {
                        "id": 25,
                        "name": "Society",
                        "is_system": true
                    },
                    {
                        "id": 11445,
                        "name": "Books & Literature",
                        "is_system": true
                    }
                ],
                "segments": null,
                "estimated_clear_prices": [
                    {
                        "clear_price": 1,
                        "average_price": 0.5,
                        "width": 0,
                        "height": 0,
                        "verified": true
                    }
                ],
                "filtered_advertisers": [
                    {
                        "id": 35081,
                        "name": "Test Advertiser 1"
                    }
                ],
                "filtered_line_items": null,
                "filtered_campaigns": null,
                "default_creatives": null
            },
            {
                "id": 605055,
                "name": "Test Placement 2",
                "code": null,
                "code2": null,
                "code3": null,
                "state": "active",
                "cost_cpm": null,
                "publisher_id": 88888,
                "site_id": 188040,
                "reserve_price": null,
                "width": null,
                "height": null,
                "default_position": "unknown",
                "default_creative_id": null,
                "ad_profile_id": null,
                "acb_code": null,
                "tag_data": null,
                "hide_referer": false,
                "inventory_source_id": null,
                "pixel_url": null,
                "pixel_type": "image",
                "last_modified": "2012-03-08 00:49:50",
                "media_subtypes": null,
                "intended_audience": null,
                "audited": false,
                "audit_level": "site",
                "default_calculation_type": "gross",
                "publisher_name": "Test Publisher 1",
                "site_name": "[Test Publisher 1] - ROS",
                "site_audit_status": "unaudited",
                "demand_filter_action": "default",
                "is_resizable": false,
                "pixel_url_secure": null,
                "floor_application_target": "all",
                "pop_values": null,
                "inventory_attributes": null,
                "supported_media_types": [
                    {
                        "id": 1,
                        "name": "Banner"
                    },
                    {
                        "id": 5,
                        "name": "Text"
                    }
                ],
                "supported_media_subtypes": null,
                "content_categories": null,
                "segments": null,
                "estimated_clear_prices": [
                    {
                        "clear_price": 1,
                        "average_price": 0.5,
                        "width": 0,
                        "height": 0,
                        "verified": true
                    }
                ],
                "filtered_advertisers": null,
                "filtered_line_items": null,
                "filtered_campaigns": null,
                "default_creatives": null
            },
            {
                "id": 605056,
                "name": "Test Placement 3",
                "code": null,
                "code2": null,
                "code3": null,
                "state": "active",
                "cost_cpm": null,
                "publisher_id": 88888,
                "site_id": 188040,
                "reserve_price": null,
                "width": null,
                "height": null,
                "default_position": "unknown",
                "default_creative_id": null,
                "ad_profile_id": null,
                "acb_code": null,
                "tag_data": null,
                "hide_referer": false,
                "inventory_source_id": null,
                "pixel_url": null,
                "pixel_type": "image",
                "last_modified": "2012-03-08 00:54:37",
                "media_subtypes": null,
                "intended_audience": null,
                "audited": false,
                "audit_level": "site",
                "default_calculation_type": "gross",
                "publisher_name": "Test Publisher 1",
                "site_name": "[Test Publisher 1] - ROS",
                "site_audit_status": "unaudited",
                "demand_filter_action": "default",
                "is_resizable": false,
                "pixel_url_secure": null,
                "floor_application_target": "all",
                "pop_values": null,
                "inventory_attributes": null,
                "supported_media_types": null,
                "supported_media_subtypes": [
                    {
                        "id": 3,
                        "name": "In-Banner Video",
                        "media_type": {
                            "id": 1
                        }
                    }
                ],
                "content_categories": null,
                "segments": null,
                "estimated_clear_prices": [
                    {
                        "clear_price": 1,
                        "average_price": 0.5,
                        "width": 0,
                        "height": 0,
                        "verified": true
                    }
                ],
                "filtered_advertisers": null,
                "filtered_line_items": null,
                "filtered_campaigns": null,
                "default_creatives": null
            },
            {
                "id": 605057,
                "name": "Test Placement 4",
                "code": null,
                "code2": null,
                "code3": null,
                "state": "active",
                "cost_cpm": null,
                "publisher_id": 88888,
                "site_id": 188040,
                "reserve_price": null,
                "width": 1,
                "height": 1,
                "default_position": "unknown",
                "default_creative_id": null,
                "ad_profile_id": null,
                "acb_code": null,
                "tag_data": null,
                "hide_referer": false,
                "inventory_source_id": null,
                "pixel_url": null,
                "pixel_type": "image",
                "last_modified": "2012-03-08 01:07:47",
                "media_subtypes": null,
                "intended_audience": null,
                "audited": false,
                "audit_level": "site",
                "default_calculation_type": "gross",
                "publisher_name": "Test Publisher 1",
                "site_name": "[Test Publisher 1] - ROS",
                "site_audit_status": "unaudited",
                "demand_filter_action": "default",
                "is_resizable": false,
                "pixel_url_secure": null,
                "floor_application_target": "all",
                "pop_values": null,
                "inventory_attributes": null,
                "supported_media_types": [
                    {
                        "id": 3,
                        "name": "Interstitial"
                    }
                ],
                "supported_media_subtypes": null,
                "content_categories": null,
                "segments": null,
                "estimated_clear_prices": [
                    {
                        "clear_price": 1,
                        "average_price": 0.5,
                        "width": 0,
                        "height": 0,
                        "verified": true
                    }
                ],
                "filtered_advertisers": null,
                "filtered_line_items": null,
                "filtered_campaigns": null,
                "default_creatives": null
            }
        ]
    }
}
```





**Viewing a specific placement**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/placement?id=605057'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "placement": {
            "id": 605057,
            "name": "Test Placement 4",
            "code": null,
            "code2": null,
            "code3": null,
            "state": "active",
            "cost_cpm": null,
            "publisher_id": 88888,
            "site_id": 188040,
            "reserve_price": null,
            "width": 1,
            "height": 1,
            "default_position": "unknown",
            "default_creative_id": null,
            "ad_profile_id": null,
            "acb_code": null,
            "tag_data": null,
            "hide_referer": false,
            "inventory_source_id": null,
            "pixel_url": null,
            "pixel_type": "image",
            "last_modified": "2012-03-08 01:07:47",
            "media_subtypes": null,
            "intended_audience": null,
            "audited": false,
            "audit_level": "site",
            "default_calculation_type": "gross",
            "publisher_name": "Test Publisher 1",
            "site_name": "[Test Publisher 1] - ROS",
            "site_audit_status": "unaudited",
            "demand_filter_action": "default",
            "is_resizable": false,
            "pixel_url_secure": null,
            "floor_application_target": "all",
            "pop_values": null,
            "inventory_attributes": null,
            "supported_media_types": [
                {
                    "id": 3,
                    "name": "Interstitial"
                }
            ],
            "supported_media_subtypes": null,
            "content_categories": null,
            "segments": null,
            "estimated_clear_prices": [
                {
                    "clear_price": 1,
                    "average_price": 0.5,
                    "width": 0,
                    "height": 0,
                    "verified": true
                }
            ],
            "filtered_advertisers": null,
            "filtered_line_items": null,
            "filtered_campaigns": null,
            "default_creatives": null
        }
    }
}
```





**Adding a placement that allows only creatives with the "Interstitial"
media type**

``` pre
$ cat placement

{
    "placement": {
        "name": "Placement for Interstitials",
        "publisher_id": 88888,
        "supported_media_types": [
            {
                "id": 3
            }
        ],
        "video": 10,
        "supports_skippable": true,
        "player_vast_version" "3.0"
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @placement 'https://api.appnexus.com/placement'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 605058,
        "start_element": 0,
        "num_elements": 100,
        "placement": {
            "id": 605058,
            "name": "Placement for Interstitials",
            "code": null,
            "code2": null,
            "code3": null,
            "state": "active",
            "cost_cpm": null,
            "publisher_id": 88888,
            "site_id": 188040,
            "reserve_price": null,
            "width": 1,
            "height": 1,
            "default_position": "unknown",
            "default_creative_id": null,
            "ad_profile_id": null,
            "acb_code": null,
            "tag_data": null,
            "hide_referer": false,
            "inventory_source_id": null,
            "pixel_url": null,
            "pixel_type": "image",
            "last_modified": "2012-03-08 01:41:52",
            "media_subtypes": null,
            "intended_audience": null,
            "audited": false,
            "audit_level": "site",
            "default_calculation_type": "gross",
            "publisher_name": "Test Publisher 1",
            "site_name": "[Test Publisher 1] - ROS",
            "site_audit_status": "unaudited",
            "demand_filter_action": "default",
            "is_resizable": false,
            "pixel_url_secure": null,
            "floor_application_target": "all",
            "pop_values": null,
            "inventory_attributes": null,
            "supported_media_types": [
                {
                    "id": 3,
                    "name": "Interstitial"
                }
            ],
            "supported_media_subtypes": null,
            "content_categories": null,
            "segments": null,
            "estimated_clear_prices": [
                {
                    "clear_price": 1,
                    "average_price": 0.5,
                    "width": 0,
                    "height": 0,
                    "verified": true
                }
            ],
            "filtered_advertisers": null,
            "filtered_line_items": null,
            "filtered_campaigns": null,
            "default_creatives": null
        }
    }
}
```





**Adding a placement that allows only creatives with the "In-Banner
Video" media subtype**

``` pre
$ cat placement

{
    "placement": {
        "name": "Placement for In-Banner Video",
        "publisher_id": 88888,
        "supported_media_subtypes": [
            {
                "id": 3
            }
        ],
        "video": 10,
        "supports_skippable": true,
        "player_vast_version" "3.0"
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @placement 'https://api.appnexus.com/placement'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 605059,
        "start_element": 0,
        "num_elements": 100,
        "placement": {
            "id": 605059,
            "name": "Placement for In-Banner Video",
            "code": null,
            "code2": null,
            "code3": null,
            "state": "active",
            "cost_cpm": null,
            "publisher_id": 88888,
            "site_id": 188040,
            "reserve_price": null,
            "width": null,
            "height": null,
            "default_position": "unknown",
            "default_creative_id": null,
            "ad_profile_id": null,
            "acb_code": null,
            "tag_data": null,
            "hide_referer": false,
            "inventory_source_id": null,
            "pixel_url": null,
            "pixel_type": "image",
            "last_modified": "2012-03-08 01:46:43",
            "media_subtypes": null,
            "intended_audience": null,
            "audited": false,
            "audit_level": "site",
            "default_calculation_type": "gross",
            "publisher_name": "Test Publisher 1",
            "site_name": "[Test Publisher 1] - ROS",
            "site_audit_status": "unaudited",
            "demand_filter_action": "default",
            "is_resizable": false,
            "pixel_url_secure": null,
            "floor_application_target": "all",
            "pop_values": null,
            "inventory_attributes": null,
            "supported_media_types": null,
            "supported_media_subtypes": [
                {
                    "id": 3,
                    "name": "In-Banner Video",
                    "media_type": {
                        "id": 1
                    }
                }
            ],
            "content_categories": null,
            "segments": null,
            "estimated_clear_prices": [
                {
                    "clear_price": 1,
                    "average_price": 0.5,
                    "width": 0,
                    "height": 0,
                    "verified": true
                }
            ],
            "filtered_advertisers": null,
            "filtered_line_items": null,
            "filtered_campaigns": null,
            "default_creatives": null
        }
    }
}
```





**Adding a placement that allows only creatives with the "Popup" media
subtype**

``` pre
$ cat placement

{
    "placement": {
        "name": "Placement for Popups",
        "publisher_id": 88888,
        "supported_media_subtypes": [
            {
                "id": 2
            }
        ],
        "pop_values":{
            "pop_is_prepop":false,
            "pop_freq_times":4,
            "pop_freq_duration":1440,
            "pop_max_width":500,
            "pop_max_height":100
        }
    }
}

$ curl -b cookies -c cookies -X POST -d @placement 'https://api.appnexus.com/placement?publisher_id=88888'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 605076,
        "start_element": 0,
        "num_elements": 100,
        "placement": {
            "id": 605076,
            "name": "Placement for Popups",
            "code": null,
            "code2": null,
            "code3": null,
            "state": "active",
            "cost_cpm": null,
            "publisher_id": 88888,
            "site_id": 188040,
            "reserve_price": null,
            "width": null,
            "height": null,
            "default_position": "unknown",
            "default_creative_id": null,
            "ad_profile_id": null,
            "acb_code": null,
            "tag_data": null,
            "hide_referer": false,
            "inventory_source_id": null,
            "pixel_url": null,
            "pixel_type": "image",
            "last_modified": "2012-03-08 15:56:05",
            "media_subtypes": null,
            "intended_audience": null,
            "audited": false,
            "audit_level": "site",
            "default_calculation_type": "gross",
            "publisher_name": "National Public Radio",
            "site_name": "[National Public Radio] - ROS",
            "site_audit_status": "unaudited",
            "demand_filter_action": "default",
            "is_resizable": false,
            "pixel_url_secure": null,
            "floor_application_target": "all",
            "pop_values": {
                "pop_freq_times": 4,
                "pop_freq_duration": 1440,
                "pop_is_prepop": false,
                "pop_max_width": 500,
                "pop_max_height": 100
            },
            "inventory_attributes": null,
            "supported_media_types": null,
            "supported_media_subtypes": [
                {
                    "id": 2,
                    "name": "Popup",
                    "media_type": {
                        "id": 2
                    }
                }
            ],
            "content_categories": null,
            "segments": null,
            "estimated_clear_prices": [
                {
                    "clear_price": 1,
                    "average_price": 0.5,
                    "width": 0,
                    "height": 0,
                    "verified": true
                }
            ],
            "filtered_advertisers": null,
            "filtered_line_items": null,
            "filtered_campaigns": null,
            "default_creatives": null
        }
    }
}
```





**Adding a placement that allows only creatives with the "Video Standard
VAST" media subtype**

``` pre
$ cat placement
{
    "placement": {
        "name": "Placement for Standard VAST Video",
        "publisher_id": 585173,
        "supported_media_subtypes": [
            {
                "id": 64
            }
        ],
        "video": {
        "id": 5,
        "width": 750,
        "max_duration_secs": 30,
        "supports_skippable": true,
        "player_vast_version": "3.0",
        "context": "pre-roll",
        "playback_method": null,
        "frameworks": [
          "vpaid_1_0",
          "vpaid_2_0",
          "mraid_1",
          "ormma",
          "mraid_2"
          ]
      }
    }
}
 
$ curl -b cookies -c cookies -X POST -d @placement 'https://api.appnexus.com/placement?publisher_id=585173'
 
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 5078562,
    "start_element": 0,
    "num_elements": 100,
    "placement": {
      "id": 5078562,
      "name": "Placement for Standard VAST Video",
      "code": null,
      "code2": null,
      "code3": null,
      "state": "active",
      "cost_cpm": null,
      "publisher_id": 585173,
      "content_retrieval_timeout_ms": 0,
      "enable_for_mediation": true,
      "is_prohibited": false,
      "site_id": 1275896,
      "default_referrer_url": null,
      "reserve_price": null,
      "width": 1,
      "height": 1,
      "default_position": "unknown",
      "default_creative_id": null,
      "ad_profile_id": null,
      "acb_code": null,
      "tag_data": null,
      "hide_referer": false,
      "inventory_source_id": null,
      "pixel_url": null,
      "pixel_type": "image",
      "last_modified": "2015-07-07 20:44:42",
      "media_subtypes": null,
      "intended_audience": null,
      "audited": false,
      "audit_level": "site",
      "default_calculation_type": "gross",
      "publisher_name": "National Public Radio",
      "site_name": "[National Public Radio] - ROS",
      "site_audit_status": "unaudited",
      "member_id": 958,
      "demand_filter_action": "default",
      "visibility_profile_id": null,
      "is_resizable": false,
      "pixel_url_secure": null,
      "floor_application_target": "all",
      "client_js_tracking_pct": 0,
      "use_detected_domain": true,
      "pop_values": null,
      "toolbar": null,
      "inventory_attributes": null,
      "supported_media_types": null,
      "supported_media_subtypes": [
        {
          "id": 64,
          "name": "Standard VAST",
          "media_type": {
            "id": 4
          }
        }
      ],
      "content_categories": null,
      "segments": null,
      "estimated_clear_prices": [
        {
          "clear_price": 1,
          "average_price": 0.5,
          "width": 0,
          "height": 0,
          "verified": true
        }
      ],
      "filtered_advertisers": null,
      "filtered_line_items": null,
      "filtered_campaigns": null,
      "default_creatives": null,
      "private_sizes": null,
      "video": {
        "id": 9,
        "width": 750,
        "max_duration_secs": 30,
        "supports_skippable": true,
        "context": "pre-roll",
        "playback_method": null,
        "frameworks": [
          "vpaid_1_0",
          "vpaid_2_0",
          "mraid_1",
          "ormma",
          "mraid_2"
        ]
      }
    }
  }
}
```





**Adding an ad pod placement that allows an intro bumper**

``` pre
$ cat placement
{
    "placement": {
        "video": {
            "supports_skippable": false,
            "player_vast_version": "3.0",
            "playback_method": null,
            "max_duration_sec": 200,
            "maximum_number_ads": 20,
            "context": "mid-roll",
            "start_delay_secs": 30,
            "frameworks": [
                "vpaid_2_0"
            ],
            "video_bumpers": [
                {
                    "video_bumper_type": "outro",
                    "max_duration_secs": 30
                }
            ]
        }
    }
}
 
$ curl -b cookies -c cookies -X POST -d @placement 'https://api.appnexus.com/placement?publisher_id=626425'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "11323022",
        "start_element": 0,
        "num_elements": 100,
        "placement": {
            "id": 11323022,
            "name": "Ad Pod Placement",
            "code": null,
            "code2": null,
            "code3": null,
            "state": "active",
            "cost_cpm": null,
            "publisher_id": 626425,
            "content_retrieval_timeout_ms": 0,
            "enable_for_mediation": true,
            "is_prohibited": false,
            "site_id": 1433875,
            "default_referrer_url": null,
            "reserve_price": null,
            "width": 1,
            "height": 1,
            "default_position": "unknown",
            "default_creative_id": null,
            "ad_profile_id": null,
            "acb_code": null,
            "tag_data": null,
            "hide_referer": false,
            "exclusive": false,
            "pixel_url": null,
            "pixel_type": "image",
            "last_modified": "2017-05-23 15:27:18",
            "media_subtypes": null,
            "intended_audience": null,
            "audited": false,
            "audit_level": "site",
            "default_calculation_type": "gross",
            "publisher_name": "New_Publisher",
            "site_name": "[New_Publisher] - ROS",
            "site_audit_status": "unaudited",
            "member_id": 958,
            "demand_filter_action": "default",
            "visibility_profile_id": null,
            "is_resizable": false,
            "pixel_url_secure": null,
            "floor_application_target": "all",
            "client_js_tracking_pct": 0,
            "use_detected_domain": true,
            "auction_timeout_ms": null,
            "pop_values": null,
            "toolbar": null,
            "inventory_attributes": null,
            "supported_media_types": null,
            "supported_media_subtypes": [
                {
                    "id": 64,
                    "is_private": false,
                    "name": "Standard VAST",
                    "media_type": {
                        "id": 4
                    }
                }
            ],
            "content_categories": null,
            "segments": null,
            "estimated_clear_prices": [
                {
                    "clear_price": 1,
                    "average_price": 0.5,
                    "width": 0,
                    "height": 0,
                    "verified": true,
                    "geo_country": ""
                }
            ],
            "filtered_advertisers": null,
            "filtered_line_items": null,
            "filtered_campaigns": null,
            "default_creatives": null,
            "private_sizes": null,
            "video": {
                "id": 282568,
                "width": null,
                "max_duration_secs": null,
                "supports_skippable": false,
                "context": "mid-roll",
                "playback_method": null,
                "maximum_number_ads": 20,
                "maximum_ad_duration_secs": null,
                "start_delay_secs": 30,
                "frameworks": [
                    "vpaid_2_0"
                ],
                "video_bumpers": [
                    {
                        "video_bumper_type": "outro",
                        "max_duration_secs": 30
                    }
                ]
            },
            "ad_types": null
        }
    }
}
```





**Adding a placement with the skipoffset feature enabled**

``` pre
{
        "placement": {
            "id": 11633087,
            ...
            "video": {
                "id": 336328,
                "width": null,
                "max_duration_secs": 60,
                "supports_skippable": true,
                "player_vast_version": "3.0",
                "context": "pre-roll",
                "playback_method": null,
                "maximum_number_ads": 3,
                "maximum_ad_duration_secs": null,
                "start_delay_secs": null,
                "use_server_side_trackers": false,
                "frameworks": null,
                "video_bumpers": [
                    {
                        "video_bumper_type": "outro",
                        "max_duration_secs": 15
                    }
                ],
                "skipoffset_seconds": 10
            }
        }
}
```








