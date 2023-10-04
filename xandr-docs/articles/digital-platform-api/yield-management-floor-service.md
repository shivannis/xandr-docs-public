---
Title : Yield Management Floor Service
Description : The Yield Management Floor Service is used to create and update floors
within an existing
<a href="yield-management-profile-service.html" class="xref">Yield
---


# Yield Management Floor Service



The Yield Management Floor Service is used to create and update floors
within an existing
<a href="yield-management-profile-service.html" class="xref">Yield
Management Profile</a>.

A floor can be thought of as the minimum price a network or publisher
would like to receive for a creative. There are subtleties, however.



Warning: Floor settings supersede any
reserve prices set via the <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a>.

Example: You have a soft floor setting, but no hard floor, and you've
set a reserve price at the <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement</a> level. Since you're using
<a href="yield-management-profile-service.html" class="xref">Yield
Management</a> tools, however, your reserve price setting will be
ignored. You must set it here via a hard floor.





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="yield-management-floor-service__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="yield-management-floor-service__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="yield-management-floor-service__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><a
href="https://api.appnexus.com/ym-floor?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?member_id=MEMBER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">View all floors
associated with a given member.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><p><a
href="https://api.appnexus.com/ym-floor?ym_profile_id=YM_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?ym_profile_id=YM_PROFILE_ID</a></p>
<p><a
href="https://api.appnexus.com/ym-floor?ym_profile_code=YM_PROFILE_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?ym_profile_code=YM_PROFILE_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">View all floors
associated with a given <a href="yield-management-profile-service.html"
class="xref">Yield Management Profile</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><a
href="https://api.appnexus.com/ym-floor?id=YM_FLOOR_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-floor?id=YM_FLOOR_ID</a>
<p><a href="https://api.appnexus.com/ym-floor?code=YM_FLOOR_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?code=YM_FLOOR_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">View a specific
floor.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><a
href="https://api.appnexus.com/ym-floor?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/ym-floor?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">View multiple yield
management floors by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><a
href="https://api.appnexus.com/ym-floor?ym_profile_id=YM_PROFILE_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?ym_profile_id=YM_PROFILE_ID</a>
<p><a
href="https://api.appnexus.com/ym-floor?ym_profile_code=YM_PROFILE_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?ym_profile_code=YM_PROFILE_CODE</a></p>
<p>(ym-floor JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">Add a new floor.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><a
href="https://api.appnexus.com/ym-floor?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?member_id=MEMBER_ID</a>
<p><a href="https://api.appnexus.com/ym-floor?code=YM_FLOOR_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?code=YM_FLOOR_CODE</a></p>
<p>(ym-floor JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">Modify an existing
floor.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__2"><a
href="https://api.appnexus.com/ym-floor?id=YM_FLOOR_ID" class="xref"
target="_blank">https://api.appnexus.com/ym-floor?id=YM_FLOOR_ID</a>
<p><a href="https://api.appnexus.com/ym-floor?code=YM_FLOOR_CODE"
class="xref"
target="_blank">https://api.appnexus.com/ym-floor?code=YM_FLOOR_CODE</a></p></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__entry__3">Delete an existing
floor.

Note: You cannot delete a floor that is
used as the base floor for one or more Yield Management Profiles.
</td>
</tr>
</tbody>
</table>





<div id="yield-management-floor-service__json_fields_yield_management_floor_service"
>

## JSON Fields



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"
class="entry align-center colsep-1 rowsep-1">Field</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2"
class="entry align-center colsep-1 rowsep-1">Type</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
unique identifier for the member with which the floor is associated.
<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>, in
querystring</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
unique identifier for a yield management floor.
<p><strong>Default</strong>: Auto-incremented Number (i.e. 123)</p>
<p><strong>Required On</strong>: <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
name used to describe a yield management floor.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
optional custom code used to reference a yield management floor.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
optional description of how the yield management floor is being used.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">hard_floor</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
CPM floor used as the hard reserve price to be applied.
<p><strong>Default</strong>: <code class="ph codeph">None</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">soft_floor</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
CPM floor used as the soft reserve, defined as the lowest price at which
price reduction will occur. This must be greater than or equal to the
hard floor if set. This value is ignored if <code
class="ph codeph"> floor_optimization_enabled</code> is <code
class="ph codeph">true</code>.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">default_calculation_type</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">Whether
the floor should be applied to the gross or net bid. Possible values:
<code class="ph codeph">gross</code> or <code
class="ph codeph">net</code>. A <code
class="ph codeph">default_calculation_type</code> of <code
class="ph codeph">net</code> is a floor applied to the media cost paid
out to the publisher.
<p><strong>Default</strong>: <code
class="ph codeph">gross</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">An
optional <code class="ph codeph">profile_id</code> is used to determine
when to apply a floor. A profile is a generic set of rules for targeting
inventory, and certain floors may only apply to certain slices of
inventory. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">priority</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
priority field (optional) is used to create a hierarchy of how the floor
should to be applied. Value may be between 1-10, where priority 10 is
treated as the highest priority value.
<p><strong>Default</strong>: <code class="ph codeph">5</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">ym_profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
ID of the yield management profile that the yield management floor is
associated with. See the <a href="yield-management-profile-service.html"
class="xref">Yield Management Profile Service</a> for details.

Note: This ID cannot be changed once it
is set.

<p><strong>Default</strong>: <code class="ph codeph">NULL</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">floor_application_target</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
type of bids to which the price floor is applied. Possible values:
<ul>
<li><code class="ph codeph">external_only</code>: The price floor is
applied only to external bids (buying member and selling member are
different). Use this option if you would rather serve an available
managed learn impression than serve a default, even if this means
exceeding the maximum % of daily volume for learn (<code
class="ph codeph">max_learn_pct</code> field in <a
href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
class="xref" target="_blank">Publisher Service</a>).</li>
<li><code class="ph codeph">external_non_preferred</code>: The price
floor is applied to external bids (buying member and selling member are
different) or when the impression is an available managed learn
impression that exceeds the maximum % of daily volume for learn. Use
this option if you would rather serve a default than serve an available
managed learn impression that would exceed the maximum % of daily volume
for learn.</li>
<li><code class="ph codeph">all</code>: The price floor is applied to
all bids except managed learn impressions within the maximum % of daily
volume for learn.</li>
</ul>
<p><strong>Default</strong>: <code class="ph codeph">all</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">apply_floor_to_direct</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3"><strong>Removed.</strong>
Please use <code class="ph codeph">floor_application_target</code>
instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">allow_tag_reserve_override</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">If
<code class="ph codeph">true</code>, allow a reserve price sent in via
the ad tag query string to override the existing hard floor. The floor
will only be overridden if the tag-supplied reserve price is greater
than the floor price.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">floor_optimization_enabled</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">If
<code class="ph codeph">true</code>, soft floors are ignored and floors
to move up and and down depending on market conditions, but never allow
the amount to go below the hard floor.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">members</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
members to which the yield management floor should be applied. If left
set to NULL, the floor will apply to all members. See <a
href="yield-management-floor-service.html#yield-management-floor-service__members_yield_management_floor_service"
class="xref">Members</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">brands</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
brands to which the yield management floor should be applied. See <a
href="yield-management-floor-service.html#yield-management-floor-service__brands_yield_management_floor_service"
class="xref">Brands</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">categories</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
brands or creative categories to which this yield management floor
should be applied. See <a
href="yield-management-floor-service.html#yield-management-floor-service__categories_yield_management_floor_service"
class="xref">Categories</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
media types to which this yield management floor should be applied. See
<a
href="yield-management-floor-service.html#yield-management-floor-service__media_types_yield_management_floor_service"
class="xref">Media Types</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__1"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__2">array</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__3">The
media subtypes to which this yield management floor should be applied.
See See <a
href="yield-management-floor-service.html#yield-management-floor-service__media_subtypes_yield_management_floor_service"
class="xref">Media Subtypes</a> below for more details.
<p><strong>Default</strong>: <code
class="ph codeph">NULL</code></p></td>
</tr>
</tbody>
</table>



**Members**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__64"
class="entry colsep-1 rowsep-1">Field</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__65"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__66"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__64"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__65">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__66">The
id of the buyer member (as found in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/platform-member-service.html"
class="xref" target="_blank">Platform Member Service</a>) for which the
floor should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> /
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__64"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__65">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__66">The
name of the buyer member.This field is read-only.</td>
</tr>
</tbody>
</table>

**Brands**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__73"
class="entry colsep-1 rowsep-1">Field</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__74"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__75"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__73"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__74">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__75">The
ID of the brand of the creative (as found in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-service.html"
class="xref" target="_blank">Brand Service</a>) for which the floor
should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> /
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__73"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__74">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__75">The
name of the brand. This field is read-only.</td>
</tr>
</tbody>
</table>

**Categories**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__82"
class="entry colsep-1 rowsep-1">Field</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__83"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__84"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__82"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__83">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__84">The
ID of the brand or creative category (as described in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/category-service.html"
class="xref" target="_blank">Category Service</a>) to which this floor
should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> /
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__82"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__83">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__84">The
name of the brand or creative category. This field is read-only.</td>
</tr>
</tbody>
</table>

**Media Types**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__91"
class="entry colsep-1 rowsep-1">Field</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__92"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__93"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__91"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__92">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__93">The
ID of the media type (as described in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a>) to which this floor
should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> /
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__91"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__92">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__93">The
name of the media type. This field is read-only.</td>
</tr>
</tbody>
</table>

**Media Subtypes**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__100"
class="entry colsep-1 rowsep-1">Field</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__101"
class="entry colsep-1 rowsep-1">Type</th>
<th
id="yield-management-floor-service__json_fields_yield_management_floor_service__entry__102"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__100"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__101">int</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__102">The
ID of the media subtype (as described in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a>) to which this
floor should be applied.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> /
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__100"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__101">string</td>
<td class="entry colsep-1 rowsep-1"
headers="yield-management-floor-service__json_fields_yield_management_floor_service__entry__102">The
name of the media subtype. This field is read-only.</td>
</tr>
</tbody>
</table>





## Examples

**View a specific floor**



``` pre
$ curl -b cookies -c cookies  "https://api.appnexus.com/ym-floor?id=1234"
{
    "ym-floor": {
        "member_id": 3,
        "id": 1234,
        "name": "Germany Floor",
        "description": "This rule will used to set the floor for a set of demand attributes across Germany inventory.",
        "hard_floor": 1.20,
        "soft_floor": null,
        "default_calculation_type": "gross",
        "apply_floor_to_direct": true,
        "floor_application_target": "all",
        "profile_id": 1542,
        "priority": 6,
        "ym_profile_id": 1234,
        "members": [{
            "id": 100,
            "name": "eBay"
        }, {
            "id": 256,
            "name": "MiG"
        }],
        "brands": [{
            "id": 102,
            "name": "Netflix"
        }, {
            "id": 256,
            "name": "Blockbuster"
        }],
        "categories": [{
            "id": 2,
            "name": "Apparel"
        }, {
            "id": 8,
            "name": "Dating"
        }],
        "allowed_media_types": [{
            "id": 1,
            "name": "Banner"
        }, {
            "id": 4,
            "name": "Video"
        }],
        "allowed_media_subtypes": [{
            "id": 1,
            "name": "Standard Banner"
        }, {
            "id": 8,
            "name": "30-second VAST"
        }]
    }
}
```



**See all floors associated with a
<a href="yield-management-profile-service.html" class="xref">Yield
Management Profile</a>**

Notice that the following floors target by optional `{{profile_id}}`
rather than via the `{{members}}` array. (See <a
href="yield-management-floor-service.html#yield-management-floor-service__json_fields_yield_management_floor_service"
class="xref">JSON Fields</a> above for details.)

``` pre
$ curl -b cookies "https://api.appnexus.com/ym-floor?ym_profile_id=9999"
{
    "response": {
        "start_element": null,
        "count": 2,
        "ym-floors": [{
            "priority": 5,
            "last_modified": "2011-11-03 23:04:24",
            "soft_floor": 0.23999999999999999,
            "member_id": 123,
            "name": "Placement 60 + Size 300x250 Floor",
            "floor_application_target": "all",
            "default_calculation_type": "gross",
            "brands": null,
            "ym_profile_id": 9999,
            "code": "Tattooed Bikers Galore",
            "hard_floor": 0,
            "id": 555,
            "description": null,
            "profile_id": 23,
            "members": null,
            "categories": null,
            "allowed_media_types": null,
            "allowed_media_subtypes": null
        }, {
            "priority": 5,
            "last_modified": "2011-11-04 01:18:35",
            "soft_floor": 0.050000000000000003,
            "member_id": 1,
            "name": "Placement+Size 728x90 Floor",
            "floor_application_target": "all",
            "default_calculation_type": "gross",
            "brands": null,
            "ym_profile_id": 9999,
            "code": "Tattooed Bikers Knit and Sew",
            "hard_floor": 0,
            "id": 4,
            "description": null,
            "profile_id": 9,
            "members": null,
            "categories": null,
            "allowed_media_types": null,
            "allowed_media_subtypes": null
        }],
        "status": "OK",
        "num_elements": null
    }
}
```






