---
Title : Package Buyer Access Service
Description : This read-only service lets buyers view information about sellers'
ms.date: 10/28/2023
ms.custom: digital-platform-api
packages. A package is a deal that a seller is prepared to offer to any
---


# Package Buyer Access Service



This read-only service lets buyers view information about sellers'
packages. A package is a deal that a seller is prepared to offer to any
buyer. Buyers browse through available packages and then use the <a
href="deal-from-package-service.md"
class="xref" target="_blank">Deal From Package Service</a> to generate
deals for themselves.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000296a__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000296a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package-buyer-access" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/package-buyer-access</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__3">View
all available packages</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package-buyer-access?member_id=SELLER_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/package-buyer-access?member_id=SELLER_MEMBER_ID</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__3">View
all packages offered by a specific seller</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package-buyer-access?id=PACKAGE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/package-buyer-access?id=PACKAGE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__3">View
a specific package</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package-buyer-access?id=1%2c2%2c3"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/package-buyer-access?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__3"> View multiple packages by ID using a
comma-separated list</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package-buyer-access?sizes=WIDTHxHEIGHT%2cWIDTHxHEIGHT"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/package-buyer-access?sizes=WIDTHxHEIGHT,WIDTHxHEIGHT</a> </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__3">View
all packages including specific sizes</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package-buyer-access?search=PACKAGE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/package-buyer-access?search=PACKAGE_ID</a>
or NAME</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__3">Search for a package by name or ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__2"><a
href="https://api.appnexus.com/package/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/package/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__25"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000296a__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000296a__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
ID of the package.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
name of the package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
description of the package. Sellers generally use this to provide buyers
greater insight into the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">If
<code class="ph codeph">true</code>, the package is active. If <code
class="ph codeph">false</code>, you cannot generate deals from the
package and all associated deals will stop serving.  </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">default_ask_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
ask price that will be applied to all deals generated from the package.
When you generate a deal, the <a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a> will
automatically calculate the <code
class="ph codeph">suggested_min_bid_price</code> by adding the auction
service charge specified in your Xandr contract
to the value in this field. For more information on the <code
class="ph codeph">suggested_min_bid_price</code>, see the <a
href="deal-buyer-access-service.md"
class="xref" target="_blank">Deal Buyer Access Service</a>.

<b>Note:</b>
<p>This field is relevant only if <code
class="ph codeph">default_use_deal_floor</code> is <code
class="ph codeph">true</code>.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">default_currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
ask price currency that will be applied to all deals generated from the
package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">default_use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">If
<code class="ph codeph">true</code>, the <code
class="ph codeph">default_ask_price</code>  will be applied to deals
generated from the package.

<b>Note:</b>
<p>When  <code class="ph codeph">default_use_deal_floor</code> is <code
class="ph codeph">true</code>, the deal's ask price overrides any other
floors the seller may have, i.e., in placements or yield management
profiles.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
day and time when the package was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">data_protected</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__27"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">allow_creative_add_on_view</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__27"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">allow_creative_add_on_click</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">true</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__27"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">visibility_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__27"><strong>Not yet
supported.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">seller_rank</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
seller's ranking for the package. This controls where the package will
appear in the seller's full list of packages in <span
class="ph">. Allowed range: 1 - 65355, where 1 is the highest
ranking.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">size_preference</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__27">Specifies how this package handles
private sizes. Private sizes are placement sizes that the seller can
allow to serve in a package. There are two options:
<ul>
<li><code class="ph codeph">standard</code>: Private sizes are not
available for this package.</li>
<li><code class="ph codeph">append</code>: Private sizes can be used in
addition to the specified placement size.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">technical_attribute_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__27">Specifies whether the package is
restricted only to the technical attributes listed in the <a
href="package-buyer-access-service.md#ID-0000296a__ta"
class="xref">Technical Attributes</a> object.
<ul>
<li><code class="ph codeph">true</code>: Package is restricted only to
the listed technical attributes.</li>
<li><code class="ph codeph">false</code>: Other technical attributes are
also allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">seller</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
name and ID of the seller who is offering the package. For more details,
see <a href="package-buyer-access-service.md#ID-0000296a__sell"
class="xref">Seller</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">default_deal_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
deal type that will be applied to all deals generated from the package.
For more details, see <a
href="package-buyer-access-service.md#ID-0000296a__ddt"
class="xref">Default Deal Type</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">setting</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
type of content included in the package. For more details, see <a
href="package-buyer-access-service.md#ID-0000296a__setting"
class="xref">Setting</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
technical attributes of creatives that are eligible for the package. For
more details, see <a
href="package-buyer-access-service.md#ID-0000296a__ta"
class="xref">Technical Attributes</a>below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__25"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__26">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__27">The
creative sizes included in the package. For more details, see <a
href="package-buyer-access-service.md#ID-0000296a__sizes"
class="xref">Sizes</a> below.</td>
</tr>
</tbody>
</table>

**Seller**

The `seller` object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__88"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000296a__entry__89"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000296a__entry__90"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__88"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__89">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__90">The
member ID of the seller.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__88"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__89">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__90">The
member name of the seller.</td>
</tr>
</tbody>
</table>

**Default Deal Type**

The `default_deal_type` object contains the following fields. By
default, all packages will generate deals with an open auction deal
type.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__97"
class="entry h3 colsep-1 rowsep-1">Field</th>
<th id="ID-0000296a__entry__98"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000296a__entry__99"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__97"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__98">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__99">The
ID representing the type of deal. Possible values: <code
class="ph codeph">1</code> (Open Auction) or <code
class="ph codeph">2</code> (Private Auction). For more information about
open and private auctions, see the <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a>.  </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__97"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__98">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__99">Read-only. The name of the type of
deal. Possible values: <code class="ph codeph">"Open Auction"</code> or
<code class="ph codeph">"Private Auction"</code>.</td>
</tr>
</tbody>
</table>

**Setting**

This information is used to give buyers a general understanding of the
inventory included in the package. The `setting` object contains the
following fields. 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__106"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000296a__entry__107"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000296a__entry__108"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__106"><code
class="ph codeph">has_inventory</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__107">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__108">If
<code class="ph codeph">true</code>, the package includes publisher,
placement, site, or content category targets.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__106"><code
class="ph codeph">inventory_description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__107">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__108">If
<code class="ph codeph">has_inventory</code> is set to <code
class="ph codeph">true</code>, this field provides a description of the
inventory included in the package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__106"><code
class="ph codeph">has_segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__107">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__108">If
<code class="ph codeph">true</code>, the package includes segment
targets.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__106"><code
class="ph codeph">segments_description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__107">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__108">If
<code class="ph codeph">has_segments</code> is set to <code
class="ph codeph">true</code>, this field provides a description of the
segments included in the package.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__106"><code
class="ph codeph">has_sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__107">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000296a__entry__108">If
<code class="ph codeph">true</code>, the package includes size targets.
For the specific sizes included, see the <code
class="ph codeph">sizes</code> array.</td>
</tr>
</tbody>
</table>

**Technical Attributes**

Each `technical_attribute` object contains the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__124"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000296a__entry__125"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000296a__entry__126"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__124"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__125">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__126">The ID of the technical attribute that
is eligible for the package. You can use the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a> to retrieve
technical attribute IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__124"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__125">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__126">The name of the technical attribute
that is eligible for the package.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__124"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__125">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__126"> If set to <code
class="ph codeph">true</code>, a technical attribute can serve for a
package even if the ad quality profile would have blocked it.</td>
</tr>
</tbody>
</table>

**Sizes**

Each object in the `sizes` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000296a__entry__136"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000296a__entry__137"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000296a__entry__138"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__136"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__137">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__138">The width of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__136"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__137">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000296a__entry__138">The height of the creative.</td>
</tr>
</tbody>
</table>





## Examples

**View all available packages**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/package-buyer-access"
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
          "name": "Test University"
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
        "technical_attributes":null,
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
$ curl -b cookies -c cookies "https://sand.api.appnexus.com/package-buyer-access?member_id=55586"
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
        "technical_attributes": null,
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
      "technical_attributes": null,
      "sizes": null     
    }
  }
}
```






