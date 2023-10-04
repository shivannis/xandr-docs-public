---
Title : Package Service
Description : Sellers use this service to create and manage their packages. Packages
---


# Package Service



Sellers use this service to create and manage their packages. Packages
are pre-made combinations of inventory and/or data. Buyers can use the
<a
href="https://docs.xandr.com/bundle/xandr-api/page/package-buyer-access-service.html"
class="xref" target="_blank">Package Buyer Access Service</a> to browse
packages and then use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-from-package-service.html"
class="xref" target="_blank">Deal From Package Service</a> to create
deals from them "off-the-shelf", or they can use packages as a
jumping-off point for deal negotiations.

In cases where packages don't meet a buyer's needs, sellers can use the
<a href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> to create one-off custom
deals.

<div id="package-service__section_pnn_rdl_twb" >

## REST API



<table id="package-service__table_mpj_5dl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_mpj_5dl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="package-service__table_mpj_5dl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="package-service__table_mpj_5dl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__2"><p><a
href="https://api.appnexus.com/package" class="xref"
target="_blank"><code
class="ph codeph">https://api.appnexus.com/package</code></a></p>
<p>(add_package JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__3">Add a new
package.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__2"><p><a
href="https://api.appnexus.com/package?id=PACKAGE_ID" class="xref"
target="_blank"><code
class="ph codeph">https://api.appnexus.com/package?id=PACKAGE_ID</code></a></p>
<p>(modify_package JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__3">Update a
package.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__2"><a
href="https://api.appnexus.com/package" class="xref"
target="_blank"><code
class="ph codeph">https://api.appnexus.com/package</code></a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__3">View all of your
packages.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__2"><a
href="https://api.appnexus.com/package?id=PACKAGE_ID" class="xref"
target="_blank"><code
class="ph codeph">https://api.appnexus.com/package?id=PACKAGE_ID</code></a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__3">View a specific
package.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__2"><a
href="https://api.appnexus.com/package?id=PACKAGE_ID" class="xref"
target="_blank"><code
class="ph codeph">https://api.appnexus.com/package?id=PACKAGE_ID</code></a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__3"><p>Delete a
package.</p>
<div id="package-service__note_v1f_xdl_twb"
class="note caution note_caution">
CAUTION: Deleting a package deletes all
of its associated deals as well. Campaigns targeting these associated
deals will stop serving. The deletions are permanent and cannot be
reverted. Although deleted deals continue to be available in reporting,
you will no longer have visibility into their specific settings.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__2"><a
href="https://api.appnexus.com/package/meta" class="xref"
target="_blank"><code
class="ph codeph">https://api.appnexus.com/package/meta</code></a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_mpj_5dl_twb__entry__3">Find out which
fields you can filter and sort by.</td>
</tr>
</tbody>
</table>





<div id="package-service__section_d3v_xdl_twb" >

## JSON Fields

<table id="package-service__table_tb3_22l_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_tb3_22l_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="package-service__table_tb3_22l_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type (Length)</th>
<th id="package-service__table_tb3_22l_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The ID of the
package.</p>
<p><strong>Default</strong>: Auto-generated number</p>
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>,
<code class="ph codeph">DELETE</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">string (255)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The name of the
package.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">string
(65535)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The description
of the package. You can use this field to provide buyers additional
insight and details about the package.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>If <code
class="ph codeph">true</code>, the package is active. If <code
class="ph codeph">false</code>, buyers cannot generate deals from the
package and all associated deals will stop serving.</p>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The ID of the
profile associated to the package. You can use a profile to specify
publishers, placements, sites, content categories, segments, segment
groups, or sizes that need to be involved in the auction in order for
the deal to be available to the buyer. For more details, see <code
class="ph codeph">publisher_targets</code> , <code
class="ph codeph">placement_targets</code> , <code
class="ph codeph">content_category_targets</code> , <code
class="ph codeph">segment_targets</code> , <code
class="ph codeph">segment_group_targets,</code> <code
class="ph codeph">site_targets</code> , and <code
class="ph codeph">size_targets</code> in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> .</p>
<div id="package-service__note_kqt_32l_twb"
class="note caution note_caution">
CAUTION: Any other targeting settings
in the associated profile will not be respected.

<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">default_ask_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The ask price
that will be applied to all deals generated from the package. When a
buyer generates a deal, the <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> will automatically
calculate the <code class="ph codeph">floor_price</code> by subtracting
the seller revenue share specified in your contract from the value in
this field. This is the price shown to the buyer. It is the minimum they
must bid in order to compete for the inventory.</p>

Note:
<p>You must use the <code class="ph codeph">member_ask_price</code>
field to set pricing when <code class="ph codeph">visibility_type</code>
is set to 2. When <code class="ph codeph">visibility_type</code> is set
to <code class="ph codeph">1</code>, you can use the <code
class="ph codeph">member_ask_price</code> field to set different pricing
for select buyers.</p>

<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">default_currency</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The ask price
currency that will be applied to all deals generated from the package.
For a full list of available currencies, use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a> .</p>
<p><strong>Default</strong>: <code
class="ph codeph">"USD"</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">default_use_deal_floor</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>If <code
class="ph codeph">true</code>, the <code
class="ph codeph">default_ask_price</code> will be applied to deals
generated from the package. The deal's floor price will override any
other floors you may have, i.e., in placements or yield management
profiles.</p>

Note: If <code
class="ph codeph">default_use_deal_floor</code> is false, <code
class="ph codeph">default_ask_price</code> must be set to 0. In this
case, note that although the ask price is shown as 0, no deal floor is
actually applied; if you have any other floors (in placements or yield
management profiles), they will be applied, or if you do not have any
other floors, the standard second-price auction mechanics will apply

<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The day and time
when the package was last modified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">data_protected</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p><strong>Not
yet supported.</strong></p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">allow_creative_add_on_view</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p><strong>Not
yet supported.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">allow_creative_add_on_click</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">true</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p><strong>Not
yet supported.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p><strong>Not
yet supported.</strong></p>
<p><strong>Default:</strong> <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">seller_rank</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The seller's
ranking for the package. This controls where the package will appear in
the seller's full list of packages in the UI. Allowed range: 1 - 65355,
where 1 is the highest ranking.</p>
<p><strong>Default</strong>: <code class="ph codeph">100</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">size_preference</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>Specifies how
this package handles private sizes. Private sizes are placement sizes
(set in the <code class="ph codeph">private_sizes</code> array in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
class="xref" target="_blank">Placement Service</a>) that can be allowed
to serve in a package. There are two options:</p>
<ul>
<li><code class="ph codeph">standard</code>: Private sizes are not
available for this package.</li>
<li><code class="ph codeph">append</code>: Private sizes can be used in
addition to the specified placement size.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">technical_attribute_restrict</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>Specifies
whether the package is restricted only to the technical attributes
listed in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-TechnicalAttributes"
class="xref" target="_blank">Technical Attributes</a> object.</p>
<ul>
<li><code class="ph codeph">true</code>: Package is restricted only to
the listed technical attributes.</li>
<li><code class="ph codeph">false</code>: Other technical attributes are
also allowed to serve.</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">seller</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The name and
ID of the seller who is offering the package. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-Seller"
class="xref" target="_blank">Seller</a> below.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">default_deal_type </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The deal type
that will be applied to all deals generated from the package. For more
details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-DealType"
class="xref" target="_blank">Deal Type</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">visibility_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">Defines if the
package is visible to all buyers or select buyers. For more details, see
<a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-VisibilityType"
class="xref" target="_blank">Visibility Type</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">members</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">If <code
class="ph codeph">visibility_type</code> is set to "<code
class="ph codeph">private"</code>, only the members listed in this field
will be able to view the package. You can also use this field to define
special pricing for select buyers. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-Members"
class="xref" target="_blank">Members</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">setting</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The type of
content included in the package. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-Setting"
class="xref" target="_blank">Setting</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The technical
attributes of creatives that are eligible for the package. For more
details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-TechnicalAttributes"
class="xref" target="_blank">Technical Attributes</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">If the profile
associated with the package has size targets set, you can use this field
to expose the specific sizes to buyers. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-Sizes"
class="xref" target="_blank">Sizes</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">default_deal_priority</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">Int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>The bidding
priority when <code class="ph codeph">id</code> in the default_deal_type
object = 2/Private Auction.</p>
<p>Possible values: 1 - 20, where 20 is the highest priority.</p>
<p><strong>Default</strong>: 5</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The media types
allowed for the package. To learn more, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-AllowedMediaTypes"
class="xref" target="_blank">Allowed Media Types</a> below.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3">The media
subtypes allowed for the package. To learn more, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-AllowedMediaSubtypes"
class="xref" target="_blank">Allowed Media Subtypes</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__1"><code
class="ph codeph">media_preference</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_tb3_22l_twb__entry__3"><p>Specifies how
this package handles media types/subtypes. There are two options:</p>
<ul>
<li><code class="ph codeph">standard</code> = use whatever media types
are already on the auction (based on the placement settings)</li>
<li><code class="ph codeph">append</code> = include the media types on
the auction + any private media types set on the placement</li>
</ul>
<p>If a deal is created from a package, this setting is copied from the
package to the deal.</p></td>
</tr>
</tbody>
</table>

**Seller**

The `seller` object contains the following fields.

<table id="package-service__table_xdb_w2l_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_xdb_w2l_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_xdb_w2l_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_xdb_w2l_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_xdb_w2l_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_xdb_w2l_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_xdb_w2l_twb__entry__3"><p>Read-only. The
member ID of the seller.</p>
<p><strong>Default</strong>: Seller's member ID</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_xdb_w2l_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_xdb_w2l_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_xdb_w2l_twb__entry__3"><p><strong>Read-only.</strong>
The member name of the seller.</p>
<p><strong>Default</strong>: Seller's member name</p></td>
</tr>
</tbody>
</table>

**Default Deal Type**



The `default_deal_type` object contains the following fields. By
default, all packages will generate deals with an open auction deal
type.

<table id="package-service__table_pxq_3fl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_pxq_3fl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_pxq_3fl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_pxq_3fl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_pxq_3fl_twb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_pxq_3fl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_pxq_3fl_twb__entry__3"><p>The ID
representing the type of deal. Possible values: <code
class="ph codeph">1</code> (Open Auction) or <code
class="ph codeph">2</code> (Private Auction). For more information about
open and private auctions, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a>.</p>
<p><strong>Default</strong>: <code class="ph codeph">1</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_pxq_3fl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_pxq_3fl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_pxq_3fl_twb__entry__3"><p><strong>Read-only.</strong>
The name of the type of deal. Possible values: <code
class="ph codeph">"Open Auction"</code> or <code
class="ph codeph">"Private Auction"</code>.</p>
<p><strong>Default</strong>: <code
class="ph codeph">"Open Auction"</code></p></td>
</tr>
</tbody>
</table>

**Visibility Type**



The `visibility_type` object contains the following fields.

<table id="package-service__table_eqx_sfl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_eqx_sfl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_eqx_sfl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_eqx_sfl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_eqx_sfl_twb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_eqx_sfl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_eqx_sfl_twb__entry__3"><p>The ID of the
visibility level for your package. Possible values:</p>
<ul>
<li><p>1 = console</p>
<p>A "console" package is visible to all buyers. Any buyer can create a
deal from the package. Use the <code class="ph codeph">members</code>
array to define special pricing for select buyers. For more information,
see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-Members"
class="xref" target="_blank">Members</a> below.</p></li>
<li><p>2 = private</p>
<p>A "private" package is only visible to the buyers specified in the
<code class="ph codeph">members</code> array. Only those buyers can
create a deal from the package. Use the <code
class="ph codeph">members</code> array to define unique pricing for each
of these buyers. For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-Members"
class="xref" target="_blank">Members</a> below.</p></li>
<li><p>3 = hidden</p>
<p>A "hidden" package is not visible to any buyers.</p>

Note: Hiding a package with associated
deals will not affect the associated deals; however b uyers can not
generate any new deals from the package.
</li>
</ul>
<p><strong>Default</strong>: 1</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_eqx_sfl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_eqx_sfl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_eqx_sfl_twb__entry__3"><strong>Read-only</strong>.
The name of the visibility level for your package. Possible values:
"console", "private", or "hidden".</td>
</tr>
</tbody>
</table>

**Members**

If `visibility_type` is set to `"private"`, only the buyers listed in
this array can view the package. If `visibility_type` is set to
`"console"`, all buyers can view the package but you can define a
different ask price for each of the buyers listed in this array. Each
`member` object in this array contains the following fields.

<table id="package-service__table_o5k_yfl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_o5k_yfl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_o5k_yfl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_o5k_yfl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__3">The member ID of
the buyer.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__3"><p><strong>Read-only</strong>.
The member name of the buyer.</p>
<p><strong>Default</strong>: Buyer's member name</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__1"><code
class="ph codeph">member_use_deal_floor</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__3"><p>If true, the
<code class="ph codeph">member_ask_price</code> will be applied to deals
that the buyer generates from the package. T his value will override any
other floors you may have, i.e., in placements or yield management
profiles.</p>
<div id="package-service__note_uk2_2gl_twb"
class="note caution note_caution">
CAUTION: The <code
class="ph codeph">default_ask_price</code> value will never apply to
buyers in the <code class="ph codeph">members</code> array. You must use
the <code class="ph codeph">member_ask_price</code> field to define an
ask price for buyers listed in the <code
class="ph codeph">members</code> array.

<p><strong>Default</strong>: <code
class="ph codeph">true</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__1"><code
class="ph codeph">member_ask_price</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_o5k_yfl_twb__entry__3"><p>The ask price
that will be applied to deals the buyer generates from the package. When
the buyer generates a deal, the <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-from-package-service.html"
class="xref" target="_blank">Deal From Package Service</a> will
automatically calculate the <code class="ph codeph">floor_price</code>
by subtracting the seller revenue share specified in your contract from
the value in this field. This is the price shown to the buyer. It is the
minimum they must bid in order to compete for the inventory.</p>

Note: If <code
class="ph codeph">member_use_deal_floor</code> is false, this field must
be set to 0. In this case, note that although 0 is shown as the floor
price, no deal floor is actually applied; if you have any other floors
(in placements or yield management profiles), they will be applied, or
if you do not have any other floors, the standard second-price auction
mechanics will apply.
</td>
</tr>
</tbody>
</table>

**Setting**

This information is used to give buyers a general understanding of the
inventory included in the package. The `setting` object contains the
following fields.

<table id="package-service__table_aj3_mgl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_aj3_mgl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_aj3_mgl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_aj3_mgl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__1"><code
class="ph codeph">has_inventory</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__3"><p>Set this field
to <code class="ph codeph">true</code> if the profile associated with
the package has publisher, placement, site, or content category targets
set. For more information, see the <code
class="ph codeph">profile_id</code> field.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__1"><code
class="ph codeph">inventory_description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__3">If <code
class="ph codeph">has_inventory</code> is set to <code
class="ph codeph">true</code>, use this field to provide a description
of the inventory included in the package. Buyers cannot see the specific
targets you have set so it is important to provide them with additional
insight into the package contents.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__1"><code
class="ph codeph">has_segments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__3"><p>Set this field
to <code class="ph codeph">true</code> if the profile associated with
the package has segment or segment group targets set. For more
information, see the <code class="ph codeph">profile_id</code>
field.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__1"><code
class="ph codeph">segments_description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__3">If <code
class="ph codeph">has_segments</code> is set to <code
class="ph codeph">true</code>, use this field to provide a description
of the segments included in the package. Buyers cannot see the specific
targets you have set so it is important to provide them with additional
insight into the package contents.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__1"><code
class="ph codeph">has_sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_aj3_mgl_twb__entry__3"><p>Set this field
to <code class="ph codeph">true</code> if the profile associated with
the package has size targets set. For more information, see the <code
class="ph codeph">profile_id</code> field. If you want buyers to see the
specific sizes you have included, use the <code
class="ph codeph">sizes</code> field.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>

**Sizes**

Each object in the `sizes` array contains the following fields.

<table id="package-service__table_wdn_pgl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_wdn_pgl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_wdn_pgl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_wdn_pgl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_wdn_pgl_twb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_wdn_pgl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_wdn_pgl_twb__entry__3">The width of the
creative.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_wdn_pgl_twb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_wdn_pgl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_wdn_pgl_twb__entry__3">The size of the
creative.</td>
</tr>
</tbody>
</table>

**Technical Attributes**

Each `technical_attribute` object contains the following fields:

<table id="package-service__table_jkn_sgl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_jkn_sgl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_jkn_sgl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_jkn_sgl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__3">The ID of the
technical attribute that is eligible for the package. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/technical-attribute-service.html"
class="xref" target="_blank">Technical Attribute Service</a> to retrieve
technical attribute IDs.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__3">The name of the
technical attribute that is eligible for the package.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__1"><code
class="ph codeph">override</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_jkn_sgl_twb__entry__3"><p>Set to <code
class="ph codeph">true</code> to allow a technical attribute to serve
for a package even if the ad quality profile would have blocked it.</p>
<p><strong>Default</strong>: false</p></td>
</tr>
</tbody>
</table>

**Allowed Media Types**

You can use this array to limit the media type, the general display
style of creatives, that can serve on placements that are part of deals
made from this package.

Each `allowed_media_types` object contains the following fields:

<table id="package-service__table_c2v_vgl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_c2v_vgl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_c2v_vgl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_c2v_vgl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__3">The ID of the
media type.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__3">The name of the
allowed media type, for example <code
class="ph codeph">"Banner"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__1"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__3">The group ID for
the media type.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__1"><code
class="ph codeph">uses_sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__3">Whether the media
type has size specifications. Possible values:
<ul>
<li><code class="ph codeph">always</code></li>
<li><code class="ph codeph">sometimes</code></li>
<li><code class="ph codeph">never</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_c2v_vgl_twb__entry__3">When the <code
class="ph codeph">allowed_media_type</code> object was last
updated.</td>
</tr>
</tbody>
</table>

**Allowed Media Subtypes**

You can use this array to limit the media subtype, the specific display
style of creatives, that can serve on placements that are part of deals
made from this package.

Each `allowed_media_subtypes` object contains the following fields:

<table id="package-service__table_snm_1hl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_snm_1hl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_snm_1hl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_snm_1hl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">permitted_sizes</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3"><p>The permitted
sizes for creatives of the media subtype. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-PermittedSizes"
class="xref" target="_blank">Permitted Sizes</a> below for more
details.</p>

Note:
<p>Not all media subtypes have permitted size requirements.</p>
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">native_assets</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">An array
describing constraints on elements of native ads for this media subtype.
Elements of a native ad can include the title, body content, and more.
The format's constraints could be whether body content is required or
recommended, or how long the text may be. For more information, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/package-service.html#PackageService-NativeAssets"
class="xref" target="_blank">Native Assets</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">The ID of the
<code class="ph codeph">allowed_media_subtype</code>. PUT and POST on
JSON file</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">The name of the
<code class="ph codeph">allowed_media_subtype</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">When the <code
class="ph codeph">allowed_media_subtype</code> array was last
modified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">mediatype_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">The ID of the
<code class="ph codeph">media_type</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">media_type_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">The name of the
<code class="ph codeph">media_type</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__1"><code
class="ph codeph">media_type_group_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_snm_1hl_twb__entry__3">The ID of the
group for the media type.</td>
</tr>
</tbody>
</table>

**Permitted Sizes**

Each `permitted_sizes` object contains the following fields:

<table id="package-service__table_lb5_fhl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_lb5_fhl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_lb5_fhl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_lb5_fhl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">platform_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">The actual
rendering width, in pixels, for creatives of this media subtype. This is
also the width that appears in reporting.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">platform_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">The actual
rendering height, in pixels, for creatives of this media subtype. This
is also the height that appears in reporting.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">validate_image_size</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">If <code
class="ph codeph">true</code>, the image for creatives of this media
subtype will be validated against the requirements defined by the
following fields in this object:<code
class="ph codeph">scaling_permitted</code>, <code
class="ph codeph">aspect_ratio_tolerance</code>, <code
class="ph codeph">min_image_width</code>, <code
class="ph codeph">max_image_width</code>, <code
class="ph codeph">min_image_height</code>, and <code
class="ph codeph">max_image_height</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">scaling_permitted</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3"><p>If <code
class="ph codeph">true</code>, the image for creatives of this media
subtype must have the same aspect ratio as <code
class="ph codeph">platform_width</code> / <code
class="ph codeph">platform_height</code>.</p>
<p>If <code class="ph codeph">false</code>, the image for creatives of
this media subtype must have a width and height exactly matching <code
class="ph codeph">platform_width</code> and <code
class="ph codeph">platform_height</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">aspect_ratio_tolerance</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">If <code
class="ph codeph">validate_image_size</code> and <code
class="ph codeph">scaling_permitted</code> are both <code
class="ph codeph">true</code> , the image can deviate from the aspect
ratio of <code class="ph codeph">platform_width</code> and <code
class="ph codeph">platform_height</code> by this amount. For example,
the aspect ratio for a platform_width and platform_height of 254x133 is
1.19:1. If the <code class="ph codeph">aspect_ratio_tolerance</code> is
0.03, an aspect ratio between 1.16:1 and 1.22:1 would be
acceptable.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">min_image_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code>, the minimum acceptable image width, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">max_image_width</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the maximum acceptable image width, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">min_image_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the minimum acceptable image height, in
pixels, for creatives of this media subtype.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__1"><code
class="ph codeph">max_image_height</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_lb5_fhl_twb__entry__3">If <code
class="ph codeph">validate_image_size</code> is <code
class="ph codeph">true</code> , the maximum acceptable image height, in
pixels, for creatives of this media subtype.</td>
</tr>
</tbody>
</table>

**Native Assets**

Each `native_assets` object contains the following fields:

<table id="package-service__table_vzz_khl_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="package-service__table_vzz_khl_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="package-service__table_vzz_khl_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="package-service__table_vzz_khl_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__1"><code
class="ph codeph">native_asset_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__3">The title of the
ad.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__1"><code
class="ph codeph">min_text_length</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__3">The minimum
length for the text.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__1"><code
class="ph codeph">max_text_length</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__3">The maximum
length for the text.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__1"><code
class="ph codeph">requirement</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="package-service__table_vzz_khl_twb__entry__3"><p>Whether this
asset is required by this particular media subtype. This field can
contain several levels of "requiredness":</p>
<ul>
<li><code class="ph codeph">"required"</code></li>
<li><code class="ph codeph">"recommended"</code></li>
<li><code class="ph codeph">"optional"</code></li>
</ul></td>
</tr>
</tbody>
</table>



<div id="package-service__section_qt3_nhl_twb" >

## Examples



**Create a new package for any buyer**

``` pre
$ cat add_package

{
 "package":
  { "name" : "Package 1",
    "seller" : {
        "id" : 5555
        },
    "profile_id" : 555540,
    "default_ask_price" : "1.00"
  }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @add_package.json "https://api.appnexus.com/package"

{
    "response": {
        "status": "OK",
        "count": 1,
        "package": {
            "id": 109,
            "name": "Package 1",
            "description": null,
            "active": true,
            "profile_id": 555540,
            "default_ask_price": 1,
            "default_currency": "USD",
            "default_use_deal_floor": true,
            "last_modified": "2014-07-16 20:53:03",
            "seller": {
                "id": 5555,
                "name": "Seller 1"
            },
            "default_deal_type": {
                "id": 1,
                "name": "Open Auction"
            },
            "visibility_type": {
                "id": 1,
                "name": "console"
            },
            "members": null,
            "setting": null,
            "technical_attributes": null,
            "sizes": null
        }
    }
}
```

**Create a new package with custom pricing for selected buyers**



In this example, we create a new package that is visible to all buyers
with a price of $3.00. For a few select buyers we set custom pricing
below $3.00.

``` pre
$ cat add_package_custom_pricing

{
 "package":
  { "name" : "Package 2",
    "seller" : {
        "id" : 5555
        },
    "profile_id" : 555540,
    "default_ask_price" : "1.00",
    "members" : [
          {
            "id": 5524,
            "member_use_deal_floor": true,
            "member_ask_price": 2.15,
            "name": "Buyer 1"
          },
          {
            "id": 5561,
            "member_use_deal_floor": true,
            "member_ask_price": 2.25,
            "name": "Buyer 2"
          }
        ]
  }
}
```

``` pre
$ curl -b cookies -c cookies -X POST -d @add_package_custom_pricing.json "https://api.appnexus.com/package"

{
  "response": {
    "status": "OK",
    "count": 1,
    "package": {
      "id": 128,
      "name": "Package 2",
      "description": null,
      "active": true,
      "profile_id": 555540,
      "default_ask_price": 3,
      "default_currency": "USD",
      "default_use_deal_floor": true,
      "last_modified": "2014-08-19 20:55:15",
      "seller": {
        "id": 5555,
        "name": "Seller 1"
      },
      "default_deal_type": {
        "id": 1,
        "name": "Open Auction"
      },
      "visibility_type": {
        "id": 1,
        "name": "console"
      },
      "members": [
        {
          "id": 5524,
          "member_use_deal_floor": true,
          "member_ask_price": 2.15,
          "name": "Buyer 1"
        },
        {
          "id": 5561,
          "member_use_deal_floor": true,
          "member_ask_price": 2.25,
          "name": "Buyer 2"
        }
      ],
      "setting": null,
      "technical_attributes": null,
      "sizes": null
    }
  }
}
```



**Create a new package only visible to selected buyers**



In this example, we create a new package that is only visible to two
buyers. We have set a different ask price for each buyer.

``` pre
$ cat add_package_specific_buyer

{
 "package":
  { "name" : "Package 2",
    "seller" : {
        "id" : 5555
        },
    "profile_id" : 555540,
    "default_ask_price" : "3.00",
    "visibility_type" : {
        "id" : 2
    },
    "members" : [
          {
            "id": 5524,
            "member_use_deal_floor": true,
            "member_ask_price": 2.15,
            "name": "Buyer 1"
          },
          {
            "id": 5561,
            "member_use_deal_floor": true,
            "member_ask_price": 2.25,
            "name": "Buyer 2"
          }
        ]
  }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @add_package_specific_buyer.json "https://api.appnexus.com/package"

{
  "response": {
    "status": "OK",
    "count": 1,
    "package": {
      "id": 128,
      "name": "Package 2",
      "description": null,
      "active": true,
      "profile_id": 555540,
      "default_ask_price": 1,
      "default_currency": "USD",
      "default_use_deal_floor": true,
      "last_modified": "2014-08-19 20:55:15",
      "seller": {
        "id": 5555,
        "name": "Seller 1"
      },
      "default_deal_type": {
        "id": 1,
        "name": "Open Auction"
      },
      "visibility_type": {
        "id": 2,
        "name": "private"
      },
      "members": [
        {
          "id": 5524,
          "member_use_deal_floor": true,
          "member_ask_price": 2.15,
          "name": "Buyer 1"
        },
        {
          "id": 5561,
          "member_use_deal_floor": true,
          "member_ask_price": 2.25,
          "name": "Buyer 2"
        }
      ],
      "setting": null,
      "technical_attributes": null,
      "sizes": null
    }
  }
}
```

**Modify a package**

In this example, we update the name of the package.

``` pre
$ cat modify_package

{
 "package":
  { "name" : "Updated Package 1"
  }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @modify_package.json "https://api.appnexus.com/package?id=109

{
  "response": {
    "status": "OK",
    "count": 1,
    "package": {
      "id": 109,
      "name": "Updated Package 1",
      "description": null,
      "active": true,
      "profile_id": 555540,
      "default_ask_price": 1,
      "default_currency": "USD",
      "default_use_deal_floor": true,
      "last_modified": "2014-07-21 17:14:16",
      "seller": {
        "id": 5555,
        "name": "Tyroo Media Pvt. Ltd."
      },
      "default_deal_type": {
        "id": 1,
        "name": "Open Auction"
      },
      "visibility_type": {
        "id": 1,
        "name": "console"
      },
      "members": null,
      "setting": null,
      "technical_attributes": null,
      "sizes": null
    }
  }
}
```

**View all of your packages**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/package"

{
  "response": {
    "status": "OK",
    "count": 2,
    "packages": [
      {
        "id": 108,
        "name": null,
        "description": null,
        "active": true,
        "profile_id": 555540,
        "default_ask_price": 1,
        "default_currency": "USD",
        "default_use_deal_floor": true,
        "last_modified": "2014-07-16 20:49:30",
        "seller": {
          "id": 5555,
          "name": "Tyroo Media Pvt. Ltd."
        },
        "default_deal_type": {
          "id": 1,
          "name": "Open Auction"
        },
      "visibility_type": {
        "id": 1,
        "name": "console"
      },
      "members": null,
      "setting": null,
      "sizes": null
      },
      {
        "id": 109,
        "name": "Updated Package 1",
        "description": null,
        "active": true,
        "profile_id": 555540,
        "default_ask_price": 1,
        "default_currency": "USD",
        "default_use_deal_floor": true,
        "last_modified": "2014-07-21 17:14:16",
        "seller": {
          "id": 5555,
          "name": "Tyroo Media Pvt. Ltd."
        },
        "default_deal_type": {
          "id": 1,
          "name": "Open Auction"
        },
      "visibility_type": {
        "id": 1,
        "name": "console"
      },
      "members": null,
      "setting": null,
      "technical_attributes": null,
      "sizes": null
      }
    ]
  }
}
```

**View a specific package**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/package?id=109"

{
  "response": {
    "status": "OK",
    "count": 1,
    "package": {
      "id": 109,
      "name": "Updated Package 1",
      "description": null,
      "active": true,
      "profile_id": 555540,
      "default_ask_price": 1,
      "default_currency": "USD",
      "default_use_deal_floor": true,
      "last_modified": "2014-07-21 17:14:16",
      "seller": {
        "id": 5555,
        "name": "Tyroo Media Pvt. Ltd."
      },
      "default_deal_type": {
        "id": 1,
        "name": "Open Auction"
      },
      "visibility_type": {
        "id": 1,
        "name": "console"
      },
      "members": null,
      "setting": null,
      "technical_attributes": null,
      "sizes": null
    }
  }
}
```

**Delete a package**

``` pre
$ curl -b cookies -c cookies -DELETE "https://api.appnexus.com/package?id=109"

{
  "response": {
    "status": "OK",
    "count": 1
  }
}
```






