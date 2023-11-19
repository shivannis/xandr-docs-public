---
Title : Package Buyer Access Service
Description : This read-only service lets buyers view information about sellers'
ms.date : 10/28/2023
packages. A package is a deal that a seller is prepared to offer to any
---


# Package Buyer Access Service



This read-only service lets buyers view information about sellers'
packages. A package is a deal that a seller is prepared to offer to any
buyer. Buyers browse through available packages and then use the <a
href="xandr-api/deal-from-package-service.md"
class="xref" target="_blank">Deal From Package Service</a> to generate
deals for themselves.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00005110__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00005110__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package-buyer-access" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/package-buyer-access</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__3">View
all available packages</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package-buyer-access?member_id=SELLER_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/package-buyer-access?member_id=SELLER_MEMBER_ID</a>
  </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__3">View
all packages offered by a specific seller</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package-buyer-access?id=PACKAGE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/package-buyer-access?id=PACKAGE_ID</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__3">View
a specific package</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package-buyer-access?id=1%2c2%2c3"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/package-buyer-access?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__3">View
multiple packages by ID using a comma-separated list</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package-buyer-access?sizes=WIDTHxHEIGHT%2cWIDTHxHEIGHT"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/package-buyer-access?sizes=WIDTHxHEIGHT,WIDTHxHEIGHT</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__3">View
all packages including specific sizes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package-buyer-access?search=PACKAGE_ID%20or%20NAME"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/package-buyer-access?search=PACKAGE_ID or
NAME</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__3">Search for a package by name or ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__2"><a
href="https://api.adnxs.com/package/meta" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/package/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005110__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>




## JSON Fields

<table id="ID-00005110__table_br4_kql_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__table_br4_kql_nwb__entry__1"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00005110__table_br4_kql_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005110__table_br4_kql_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">If <code
class="ph codeph">true</code>, the package is active. If <code
class="ph codeph">false</code>, you cannot generate deals from the
package and all associated deals will stop serving.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">allow_creative_add_on_click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">true</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">allow_creative_add_on_view</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">data_protected</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">default_ask_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The ask price that
will be applied to all deals generated from the package.
<figure id="ID-00005110__fig_aqf_ms2_nwb" class="fig fignone">

<b>Note:</b> This field is relevant only if
<code class="ph codeph">default_use_deal_floor</code> is <code
class="ph codeph">true</code>.

</figure></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">default_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The ask price
currency that will be applied to all deals generated from the
package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">default_deal_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The deal type that
will be applied to all deals generated from the package. For more
details, see <a
href="package-buyer-access-service.md#PackageBuyerAccessService-DefaultDealType"
class="xref" target="_blank">Default Deal Type</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">default_use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">If <code
class="ph codeph">true</code>, the <code
class="ph codeph">default_ask_price</code>  will be applied to deals
generated from the package.

<b>Tip:</b> When  <code
class="ph codeph">default_use_deal_floor</code>  is <code
class="ph codeph">true</code>, the deal's ask price overrides any other
floors the seller may have, i.e., in placements or yield management
profiles.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The description of
the package. Sellers generally use this to provide buyers greater
insight into the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The ID of the
package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The day and time when
the package was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The name of the
package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">seller</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The name and ID of
the seller who is offering the package. For more details, see <a
href="package-buyer-access-service.md#PackageBuyerAccessService-Seller"
class="xref" target="_blank">Seller below.</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">seller_rank</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The seller's ranking
for the package. This controls where the package will appear in the
seller's full list of packages in . Allowed
range: 1 - 65355, where 1 is the highest ranking.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">setting</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The type of content
included in the package. For more details, see <a
href="package-buyer-access-service.md#PackageBuyerAccessService-Setting"
class="xref" target="_blank">Setting below.</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3">The creative sizes
included in the package. For more details, see  <a
href="package-buyer-access-service.md#PackageBuyerAccessService-Sizes"
class="xref" target="_blank">Sizes  below.</a> Sizes  below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__1"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_br4_kql_nwb__entry__3"><strong>Not yet
supported.</strong></td>
</tr>
</tbody>
</table>

**Seller**

The `seller` object contains the following fields.

<table id="ID-00005110__table_dr4_kql_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__table_dr4_kql_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005110__table_dr4_kql_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005110__table_dr4_kql_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_dr4_kql_nwb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_dr4_kql_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_dr4_kql_nwb__entry__3">The member ID of the
seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_dr4_kql_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_dr4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_dr4_kql_nwb__entry__3">The member name of
the seller.</td>
</tr>
</tbody>
</table>

**Default Deal Type**

The `default_deal_type` object contains the following fields. By
default, all packages will generate deals with an open auction deal
type.

<table id="ID-00005110__table_er4_kql_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__table_er4_kql_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005110__table_er4_kql_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005110__table_er4_kql_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_er4_kql_nwb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_er4_kql_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_er4_kql_nwb__entry__3">The ID representing
the type of deal. Possible values: <code class="ph codeph">1</code>
(Open Auction) or <code class="ph codeph">2</code> (Private Auction).
For more information about open and private auctions, see the <a
href="xandr-api/deal-service.md"
class="xref" target="_blank">Deal Service</a>. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_er4_kql_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_er4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_er4_kql_nwb__entry__3">Read-only. The name
of the type of deal. Possible values: <code
class="ph codeph">"Open Auction"</code> or <code
class="ph codeph">"Private Auction"</code>.</td>
</tr>
</tbody>
</table>

**Setting**

This information is used to give buyers a general understanding of the
inventory included in the package. The `setting` object contains the
following fields. 

<table id="ID-00005110__table_fr4_kql_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__table_fr4_kql_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005110__table_fr4_kql_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005110__table_fr4_kql_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__1"><code
class="ph codeph">has_inventory</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__3">If <code
class="ph codeph">true</code>, the package includes publisher,
placement, site, or content category targets.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__1"><code
class="ph codeph">has_segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__3">If <code
class="ph codeph">true</code>, the package includes segment
targets.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__1"><code
class="ph codeph">has_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__3">If <code
class="ph codeph">true</code>, the package includes size targets. For
the specific sizes included, see the <code
class="ph codeph">sizes</code> array.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__1"><code
class="ph codeph">inventory_description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__3">If <code
class="ph codeph">has_inventory</code> is set to <code
class="ph codeph">true</code>, this field provides a description of the
inventory included in the package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__1"><code
class="ph codeph">segments_description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_fr4_kql_nwb__entry__3">If <code
class="ph codeph">has_segments</code> is set to <code
class="ph codeph">true</code>, this field provides a description of the
segments included in the package.</td>
</tr>
</tbody>
</table>

**Technical Attributes**




Each `technical_attribute` object contains the following fields:



<table id="ID-00005110__table_wnv_sql_nwb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__table_wnv_sql_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005110__table_wnv_sql_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005110__table_wnv_sql_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__1"><code
class="ph codeph">id </code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__3">The ID of the
technical attribute that is eligible for the package. You can use the <a
href="xandr-api/technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a> to retrieve
technical attribute IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__3">The name of the
technical attribute that is eligible for the package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__1"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_wnv_sql_nwb__entry__3">If set to <code
class="ph codeph">true</code>, a technical attribute can serve for a
package even if the ad quality profile would have blocked it.</td>
</tr>
</tbody>
</table>



**Sizes**

Each object in the `sizes` array contains the following fields.

<table id="ID-00005110__table_hr4_kql_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005110__table_hr4_kql_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00005110__table_hr4_kql_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005110__table_hr4_kql_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_hr4_kql_nwb__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_hr4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_hr4_kql_nwb__entry__3">The height of the
creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_hr4_kql_nwb__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_hr4_kql_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005110__table_hr4_kql_nwb__entry__3">The width of the
creative.</td>
</tr>
</tbody>
</table>





## Examples

**View all available packages**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/package-buyer-access"
{
  "response": {
    "status": "OK",
    "count": 102,
    "packages": [
      {
        "id": 1,
        "name": "Test Pkg",
        "description": "this is a test package",
        "active": true,
        "default_ask_price": 2.5,
        "default_currency": "USD",
        "default_use_deal_floor": true,
        "last_modified": "2014-05-30 15:02:33",
        "seller_rank": 100,
        "seller": {
          "id": 5581,
          "name": "AppNexus University"
        },
        "default_deal_type": {
          "id": 1,
          "name": "Open Auction"
        },
        "setting": null,
        "sizes": null
      },
      {
        "id": 2,
        "name": "High Performance & Viewability!",
        "description": "This is an artisanal, hand-picked collection of extremely high performing placements that are visible at least 90% of the time. Viewability audit performed daily by our proprietary View-O-Matic technology and verified by a trusted 3rd party.",
        "active": true,
        "default_ask_price": 8.8,
        "default_currency": "USD",
        "default_use_deal_floor": true,
        "last_modified": "2014-06-26 22:12:31",
        "seller_rank": 100,
        "seller": {
          "id": 55570,
          "name": "Seller ABC"
        },
        "default_deal_type": {
          "id": 1,
          "name": "Open Auction"
        },
        "setting": {
          "has_inventory": true,
          "inventory_description: "Description of inventory.",
          "has_segments": true,
          "segment_description": "Description of segments.",
          "has_sizes": true
        },
        "sizes": [
          {
            "width": "120",
            "height": "600"
          },
          {
            "width": "160",
            "height": "600"
          },
          {
            "width": "300",
            "height": "250"
          },
          {
            "width": "468",
            "height": "60"
          },
          {
            "width": "480",
            "height": "80"
          },
          {
            "width": "640",
            "height": "360"
          }
        ]
      },
      ...
    ]
  }
}
```

**View all packages offered by a specific seller**

``` pre
$ curl -b cookies -c cookies "https://sand.api.adnxs.com/package-buyer-access?member_id=55586"
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
        "default_ask_price": 1,
        "default_currency": "USD",
        "default_use_deal_floor": true,
        "last_modified": "2014-07-16 20:49:30",
        "seller_rank": 100,
        "seller": {
          "id": 55586,
          "name": "Tyroo Media Pvt. Ltd."
        },
        "default_deal_type": {
          "id": 1,
          "name": "Open Auction"
        },
        "setting": {
          "has_inventory": true,
          "inventory_description: "Description of inventory.",
          "has_segments": true,
          "segment_description": "Description of segments.",
          "has_sizes": false
        },
        "sizes": null
      }
    ],
    {
        "id": 5,
        "name": "Package of inventory with data",
        "description": "This package includes inventory X and data X.",
        "active": false,
        "default_ask_price": 11.26,
        "default_currency": "USD",
        "default_use_deal_floor": true,
        "last_modified": "2014-06-06 18:10:47",
        "seller_rank": 100,
        "seller": {
          "id": 55586,
          "name": "Tyroo Media Pvt. Ltd."
        },
        "default_deal_type": {
          "id": 1,
          "name": "Open Auction"
        },
        "setting": {
          "has_inventory": true,
          "inventory_description: "Description of inventory.",
          "has_segments": true,
          "segment_description": "Description of segments.",
          "has_sizes": true
        },
        "sizes": [
          {
            "width": "160",
            "height": "600"
          },
          {
            "width": "300",
            "height": "50"
          }
        ]
      },
  }
}
```

**View a specific package**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/package?id=109"
{
  "response": {
    "status": "OK",
    "count": 1,
    "package": {
      "id": 109,
      "name": "Updated Package 1",
      "description": null,
      "active": true,
      "default_ask_price": 1,
      "default_currency": "USD",
      "default_use_deal_floor": true,
      "last_modified": "2014-07-21 17:14:16",
      "seller_rank": 100,
      "seller": {
        "id": 5558,
        "name": "TMP Ltd."
      },
      "default_deal_type": {
        "id": 1,
        "name": "Open Auction"
      },
      "setting": {
        "has_inventory": true,
        "inventory_description: "Description of inventory.",
        "has_segments": true,
        "segment_description": "Description of segments.",
        "has_sizes": false
      },
      "sizes": null
    }
  }
}
```






