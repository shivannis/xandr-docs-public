---
Title : Ad Profile Service
Description : A network may want to create "ad approval profiles" to define what kinds
ms.date: 10/28/2023
ms.custom: digital-platform-api
of brands and creatives can and cannot run on their publishers' pages.
---


# Ad Profile Service



A network may want to create "ad approval profiles" to define what kinds
of brands and creatives can and cannot run on their publishers' pages.
The Ad Profile Service lets you create your ad approval profiles at the
member level or the publisher level. To create them at the publisher
level, include a publisher ID. If no publisher ID is included, it will
be a network-level profile available for use with all publishers.

Ad profiles consist of several elements: members, brands, creatives,
language, technical attributes, categories, and ad servers. When
creating an ad profile, you can approve or ban each creative in the
system individually, but you may prefer to save time by approving or
banning entire brands or members.

- A member should be trusted if you believe their ads will always be
  acceptable. For instance, you may "trust" Network A to run quality
  ads, so you can mitigate the need to audit each of their creatives.
- A brand should be trusted if you believe that ads of this brand
  will almost always be acceptable. However you will always have the
  ability to ban a specific creative even if it is part of a "trusted"
  brand. If the specific creative is not banned, it will run by default.
- A brand should be banned if you believe that ads of this brand
  will never be acceptable. You will still have the ability to approve a
  specific creative assigned a "banned" brand, unless the member is
  banned.
- The default profile (blank or ID set to 0) will ban unaudited ads from
  other members (i.e. where the `member_id` of the creative is different
  than the `member_id` of the TinyTag).



<b>Note:</b> A brand can have a Parent Brand,
as a way of gathering brands by parent company/ child company. If a
seller blocks/approves a parent brand, all child brands without an
\*explicit \*approve/block setting will match the parent brand setting.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000009f2__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000009f2__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__3">View
all ad profiles for a member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?id=AD_PROFILE_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?id=AD_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__3">View
a particular ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__3">View
all ad profiles for a specific publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile</a>
<p>(ad_profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__3">Add
a new ad profile at the member level.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?publisher_id=PUBLISHER_ID</a>
<p>(ad_profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__3">Add
a new ad profile at the publisher level.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?id=AD_PROFILE_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?id=AD_PROFILE_ID</a>
<p>(ad_profile JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__3">Modify an existing ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?id=AD_PROFILE_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?id=AD_PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__3">Delete an existing ad profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?sort=description" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?sort=description</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__3">Sort
ad profiles alphabetically by description.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__2"><a
href="https://api.appnexus.com/ad-profile?search=text_of_description"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ad-profile?search=text_of_description</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__3">Search for an ad profile by its
description.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__31"
class="entry colsep-1 rowsep-1">Fields</th>
<th id="ID-000009f2__entry__32"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__33"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Xandr ID
assigned by the API to reference this ad_profile.
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>, in
query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
state of the ad profile. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.
<p><strong>Default</strong>: <code
class="ph codeph">"active"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
member ID that owns this ad_profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Optional description.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_member_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
member status to be used by default when no explicit selection is made.
Possible values:
<ul>
<li><code class="ph codeph">"case-by-case"</code> - This member's
creatives must pass all brand, language, technical attribute, category,
and ad server filtering defined on the ad profile</li>
<li><code class="ph codeph">"banned"</code> - None of this member's
creatives are allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_brand_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
brand status to be used by default when no explicit selection is made.
Possible values: <code class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_language_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
language status to be used by default when no explicit selection is
made. Possible values: <code class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_ad_server_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
ad server status to be used by default when no explicit selection is
made. Possible values: <code class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_category_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
category status to be used by default when no explicit selection is
made. Possible values: <code class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_technical_attribute_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
technical attribute status to be used by default when no explicit
selection is made. Possible values: <code
class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">default_audit_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
audit status to be used by default when no explicit selection is made.
Possible values:
<ul>
<li><code class="ph codeph">"platform"</code> - Creatives must have
undergone the Xandr platform audit.</li>
<li><code class="ph codeph">"platform_or_self"</code> - Creatives must
have been self-audited by the member, or undergone <span
class="ph">Xandr audit.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of members with their status. See
<a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-members"
class="xref">Members</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of brands (Parent brands and
Child brands) with their status. See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-brands"
class="xref">Brands</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of creatives with their status.
See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-creatives"
class="xref">Creatives</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">languages</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of languages with their status.
See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-languages"
class="xref">Languages</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">ad_servers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of ad servers with their status.
See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-ad-servers"
class="xref">Ad Servers</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of categories with their status.
See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-categories"
class="xref">Categories</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of technical attributes with
their status. See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-technical-attributes"
class="xref">Technical Attributes</a> below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">frequency_caps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Array of frequency/recency caps. See <a
href="ad-profile-service.md#ID-000009f2__ad-profile-service-frequency-caps"
class="xref">Frequency Caps</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">total_creative_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Number of creatives.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">approved_creative_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Number of approved creatives.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">banned_creative_count</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Number of banned creatives.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">creatives_approved_percent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Percentage of total creatives which are
approved.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">creatives_unreviewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Number of creatives pending
review.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">brands_unreviewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
number of brands pending review.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">exclude_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Whether or not to exclude creatives
that have not been audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">exclude_unaudited_direct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Whether or not to exclude creatives
that have not been audited for direct advertisers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">audit_type_direct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">check_attributes_direct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">excluded_landing_page_urls</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">array of URLs</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">Not
available. Bans for competitive exclusions should be effected through
brand exclusions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">notes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Optional notes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__33">The
ID of the publisher to associate with the ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33"><strong>Read Only.</strong> The
timestamp of last modification to this ad profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__31"><code
class="ph codeph">require_seller_audit_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__32">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__33">Whether or not seller audit is
required.
<p><strong>Default</strong>: false</p></td>
</tr>
</tbody>
</table>

**Members**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__136"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__137"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__138"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__136"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__137">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__138">The ID of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__136"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__137">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__138">Whether the member can or cannot run
creatives on your publishers' pages. Allowed values:
<ul>
<li><code class="ph codeph">"trusted"</code> - Any of this member's
creatives may serve.</li>
<li><code class="ph codeph">"case-by-case"</code> - This member's
creatives must pass all brand, language, technical attribute, category,
and ad server filtering defined on the ad profile</li>
<li><code class="ph codeph">"banned"</code> - None of this member's
creatives are allowed to serve.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__136"><code
class="ph codeph">audit_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__137">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__138">The type of audit you will require in
order to serve creatives from this member. Allowed values:
<ul>
<li><code class="ph codeph">"platform"</code> - Creatives must have
undergone Xandr platform audit.</li>
<li><code class="ph codeph">"platform_or_self"</code> - Creatives must
have been self-audited by the member, or undergone <span
class="ph">Xandr audit.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__136"><code
class="ph codeph">exclude_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__137">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__138">If
<code class="ph codeph">true</code>, unaudited creatives are excluded
from this member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__136"><code
class="ph codeph">require_seller_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__137">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__138">Whether the member can require its own
audit for creatives from a given buyer:
<ul>
<li>"<code class="ph codeph">always</code>" - This member can always
require audit for creatives from a given buyer</li>
<li>"<code class="ph codeph">never</code>" - This member can never
require audit for creatives from a given buyer</li>
<li>"<code class="ph codeph">case-by-case</code>" - Fall back to <code
class="ph codeph">ad_profile.require_seller_audit_default</code> for
audit required status</li>
</ul></td>
</tr>
</tbody>
</table>



<b>Tip:</b> The combination of the Member
`status`, `audit_type`, and `exclude_unaudited` fields determines the
buyer trust level shown in the Network Ad Quality profile in
.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__154"
class="entry colsep-1 rowsep-1"><strong><code
class="ph codeph">status</code></strong></th>
<th id="ID-000009f2__entry__155"
class="entry colsep-1 rowsep-1"><strong><code
class="ph codeph">audit_type</code></strong></th>
<th id="ID-000009f2__entry__156"
class="entry colsep-1 rowsep-1"><strong><code
class="ph codeph">exclude_unaudited</code></strong></th>
<th id="ID-000009f2__entry__157" class="entry colsep-1 rowsep-1">Trust
Level in UI</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__154"><code
class="ph codeph">banned</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__155">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__156">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__157">Banned</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__154"><code
class="ph codeph">case-by-case</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__155"><code
class="ph codeph">platform</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__156"><code
class="ph codeph">true</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__157">Standard</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__154"><code
class="ph codeph">case-by-case</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__155"><code
class="ph codeph">platform_or_self</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__156"><code
class="ph codeph">true</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__157">Medium</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__154"><code
class="ph codeph">trusted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__155"><code
class="ph codeph">platform</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__156"><code
class="ph codeph">true</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__157">High</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__154"><code
class="ph codeph">trusted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__155"><code
class="ph codeph">platform</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__156"><code
class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__157">Maximum</td>
</tr>
</tbody>
</table>



**Brands**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__178"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__179"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__180"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__178"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__179">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__180">The ID of the brand. You can use the
<a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> to retrieve brand
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__178"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__179">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__180">Whether creatives of this brand can or
cannot run on your publishers' pages. Possible values: <code
class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.

<b>Note:</b> If a brand is marked as Eligible,
creatives associated with this brand will serve even if the brand's
category is Banned. For example, if you mark the brand "1 and 1 Internet
(17310)" as Eligible it will serve even if you ban its overall category,
"Telecommunications (27)".
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__178"><code
class="ph codeph">parent_brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__179">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__180">When a brand has a parent brand, the
default value is set to null. </td>
</tr>
</tbody>
</table>

**Creatives**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__190"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__191"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__192"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__190"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__191">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__192">The ID of the creative. You can use
the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> to retrieve creative
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__190"><code
class="ph codeph">approved</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__191">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__192">If
<code class="ph codeph">true</code>, the creative can run on your
publishers' pages.</td>
</tr>
</tbody>
</table>

**Languages**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__199"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__200"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__201"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__199"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__200">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__201">The ID of the language. You can use
the <a
href="language-service.md"
class="xref" target="_blank">Language Service</a> to retrieve language
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__199"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__200">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__201">Whether creatives of this language can
or cannot run creatives on your publishers' pages. Possible values:
<code class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
</tbody>
</table>

**Ad Servers**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__208"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__209"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__210"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__208"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__209">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__210">The ID of the ad server. You can use
the <a
href="ad-server-service.md"
class="xref" target="_blank">Ad Server Service</a> to retrieve ad server
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__208"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__209">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__210">Whether the ad server can or cannot
run creatives on your publishers' pages. Possible values: <code
class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
</tbody>
</table>

**Categories**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__217"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__218"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__219"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__217"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__218">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__219">The ID of the category. You can use
the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a> to retrieve category
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__217"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__218">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__219">Whether creatives with this category
can or cannot run on your publishers' pages. Possible values: <code
class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
</tbody>
</table>

**Technical Attributes**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__226"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__227"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__228"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__226"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__227">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__228">The ID of the technical attribute. You
can use the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a> to retrieve
technical attribute IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__226"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__227">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__228">Whether creatives with this technical
attribute can or cannot run on your publishers' pages. Possible values:
<code class="ph codeph">"trusted"</code> or <code
class="ph codeph">"banned"</code>.</td>
</tr>
</tbody>
</table>

**Frequency Caps**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000009f2__entry__235"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000009f2__entry__236"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000009f2__entry__237"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237"><strong>Read Only.</strong> The ID of
the frequency cap definition.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237"><strong>Read Only.</strong> The ID of
the member that owns the ad profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">max_session_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237">The maximum number of impressions per
person per session for creatives with the specified <code
class="ph codeph">technical_attributes</code> or <code
class="ph codeph">categories</code>. If set, this value must be between
<code class="ph codeph">0</code> and <code
class="ph codeph">255</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">max_day_imps</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237">The maximum number of impressions per
person per day for creatives with the specified <code
class="ph codeph">technical_attributes</code> or <code
class="ph codeph">categories</code>. If set, this value must be between
<code class="ph codeph">0</code> and <code
class="ph codeph">255</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">min_minutes_per_imp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237">The minimum number of minutes between
impressions per user for creatives with the specified <code
class="ph codeph">technical_attributes</code> or <code
class="ph codeph">categories</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">cap_users_without_cookie</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000009f2__entry__237">If
<code class="ph codeph">true</code>, users without cookies will never be
shown creatives with the specified <code
class="ph codeph">technical_attributes</code> or <code
class="ph codeph">categories</code>. They will be treated as if they've
reached the frequency cap.
<p>If <code class="ph codeph">false</code>, no frequency cap for the
specific <code class="ph codeph">technical_attributes</code> or <code
class="ph codeph">categories</code> will apply to users without cookies.
It will be possible for them to see an unlimited number of creatives
with the specified <code class="ph codeph">technical_attributes</code>
or <code class="ph codeph">categories</code>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237">The IDs of the technical attributes
that you are limiting. You can use the <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a> to get a
complete list of technical attributes. The <code
class="ph codeph">technical_attributes</code> and <code
class="ph codeph">categories</code> fields have an OR-relationship.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__235"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__236">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000009f2__entry__237">The IDs of the categories that you are
limiting. You can use the <a
href="category-service.md"
class="xref" target="_blank">Category Service</a> to get a complete list
of categories. The <code class="ph codeph">technical_attributes</code>
and <code class="ph codeph">categories</code> fields have an
OR-relationship.</td>
</tr>
</tbody>
</table>





## Examples



<b>Warning:</b> **Append on PUT**

You will overwrite existing data with the contents of your `PUT` request
unless you add the query string parameters `append=true` to the request.
For more information, see <a
href="api-semantics.md"
class="xref" target="_blank">API Semantics</a> and the example **Update
an existing ad profile** below.



**Create a new ad profile**

Below we have used the "cat" command to output an example ad profile
JSON file.



<b>Note:</b> This is a fairly complex profile.



``` pre
$ cat ad_profile
{
    "ad-profile": {
        "description": "Network Level ad profile",
        "member_id": 326,
        "brands": [
            {
                "id": "168",
                "status": "banned"
            },
            {
                "id": "255",
                "status": "banned"
            },
            {
                "id": "1072",
                "status": "trusted"
            },
            {
                "id": "1090",
                "status": "trusted"
            }
        ],
        "creatives": [
            {
                "id": "5",
                "approved": true
            }
        ],
        "notes": "This is a great ad profile",
        "default_language_status": "banned",
        "default_ad_server_status": "trusted",
        "default_category_status": "trusted",
        "default_technical_attribute_status": "trusted",
        "excluded_landing_page_urls": ["https://www.netflix.com","https://www.blockbuster.com"],
        "languages": [
            {
                "id": 1,
                "status": "trusted"
            }
        ],
        "ad_servers": null,
        "categories": [
            {
                "id": 41,
                "status": "banned"
            },
            {
                "id": 43,
                "status": "trusted"
            }
        ]
    }
}
```

**Update an existing ad profile**

Given the ad profile JSON in the first example, let's say you want to
update the `categories` array to include another item. In a real-world
use case there might be 47 categories in the array. The semantics of
`PUT` mean that in order to add another category to the array, you'll
need to pass in all 47 of the existing categories plus the new one.

You can avoid this extra work by adding the query string parameters
`append=true` to your request as shown in the example below. (For
backwards compatibility reasons the parameters `append_only=true` will
also work.)

``` pre
$ cat ad-profile-update.json
{
  "ad-profiles":
  [
    {
      "id": 984276,
      "categories" : [
        {
          "id" : 42,
          "status" : "banned"
        }
      ]
    }
  ]
}
$ curl -b cookies -X PUT -d '@/tmp/ad-profile-update.json' \
'https://api.appnexus.com/ad-profile?id=984276&member_id=1282&append=true'
{
   "response" : {
      "id" : 984276,
      "ad-profile" : {
         "id" : 984276,
         "description" : "Rich's Crazy Reseller - Network Ad Profile",
         "categories" : [
            {
               "id" : 41,
               "status" : "banned"
            },
            {
               "id" : 42,
               "status" : "banned"
            },
            {
               "id" : 43,
               "status" : "trusted"
            }
         ],
         // many other fields...
         "default_category_status" : "trusted"
      },
      "status" : "OK",
      "count" : 1,
      "start_element" : 0,
      "num_elements" : 100,
   }
}
```

**Add an ad profile to your member**

``` pre
$ curl -b cookies -c cookies -X POST -d @ad_profile  "https://api.appnexus.com/ad-profile"
{
    "response": {
        "status": "OK",
        "id": "1317"
    }
}
```

**View an ad profile**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/ad-profile?id=1317"
{
  "response": {
    "status": "OK",
    "ad-profile": {
      "id": 1317,
      "state": "active",
      "description": "Network Level ad profile",
      "member_id": 326,
      "default_brand_status": "trusted",
      "members": null,
      "brands": [
        {
          "id": "168",
          "status": "banned"
        },
        {
          "id": "255",
          "status": "banned"
        },
        {
          "id": "1072",
          "status": "trusted"
        },
        {
          "id": "1090",
          "status": "trusted"
        }
      ],
      "creatives": [
        {
          "id": "5",
          "approved": true
        }
      ],
      "total_creative_count": 8369,
      "approved_creative_count": 1,
      "banned_creative_count": 8368,
      "creatives_approved_percent": 0.011948858883977,
      "creatives_unreviewed": 8367,
      "brands_unreviewed": null,
      "exclude_unaudited": true,
      "exclude_unaudited_direct": false,
      "notes": "This is a great ad profile.",
      "publisher_id": null,
      "last_modified": "2010-07-23 16:15:49",
      "default_language_status": "banned",
      "default_ad_server_status": "trusted",
      "default_category_status": "trusted",
      "excluded_landing_page_urls": ["https://www.netflix.com","https://www.blockbuster.com"],
      "default_technical_attribute_status": "trusted",
      "languages": [
        {
          "id": 1,
          "status": "trusted"
        }
      ],
      "ad_servers": null,
      "categories": [
        {
          "id": 41,
          "status": "banned"
        },
        {
          "id": 43,
          "status": "trusted"
        }
      ],
      "technical_attributes": null
    }
  }
}
```

**Creative Attribute Frequency Capping Examples**

**Add a frequency cap rule to an ad profile**

The {{"frequency_caps"}} field will be {{null}} at first:

``` pre
$ curl -b cookies -c cookies -X GET "https://sand.api.appnexus.com/ad-profile?id=199943"
{
  "response": {
    "status": "OK",
    "ad-profile": {
      "id": 199943,
      "state": "active",
      "description": null,
      "member_id": 941,
      ...
      "frequency_caps": null
    }
}
```

**Add a frequency cap rule**

``` pre
$ cat add_freq_cap_rule.json
{
   "ad-profile": {
      "id": 199943,
      "frequency_caps": [
        {
          "max_day_imps": 5,
          "min_minutes_per_imp": 120,
          "technical_attributes": [ {"id":4},{"id":6} ],
          "categories": [ {"id":59},{"id":37} ]
        }
      ]
   }
}
$ curl -b cookies -c cookies -X PUT --data-binary @add_freq_cap_rule.json "https://sand.api.appnexus.com/ad-profile?id=199943"
{
  "response": {
    "status": "OK",
    "id": "199943"
  }
}
```

**The ad profile will now have the frequency cap rule:**

``` pre
$ curl -b cookies -c cookies -X GET "https://sand.api.appnexus.com/ad-profile?id=199943"
{
  "response": {
    "status": "OK",
    "ad-profile": {
      "id": 199943,
      "state": "active",
      "description": null,
      "member_id": 941,
      ...
      "frequency_caps": [
        {
          "id": 64,
          "max_session_imps": null,
          "max_day_imps": 5,
          "min_minutes_per_imp": 120,
          "member_id": 941,
          "technical_attributes": [
            {
              "id": 4,
              "name": "Video"
            },
            {
              "id": 6,
              "name": "Expandable"
            }
          ],
          "categories": [
            {
              "id": 37,
              "name": "Politics"
            },
            {
              "id": 59,
              "name": "Get Rich Quick"
            }
          ]
        }
      ]
      ...
```

**Modify a frequency cap rule**

Use the {{PUT}} command on the {{ad-profile}} service. The frequency
cap's ID must be specified in the update JSON. If the frequency cap ID
is not specified, the existing rule will be deleted, and a new rule will
be created.

``` pre
{code}
$ cat update_freq_cap_rule.json
{
   "ad-profile": {
      "id": 199943,
      "frequency_caps": [
        {
          "id": 64,
          "technical_attributes": [ {"id":4} ],
          "categories": [ ],
          "max_day_imps": 20
        }
      ]
   }
}
$ curl -b cookies -c cookies -X PUT --data-binary @update_freq_cap_rule.json "https://sand.api.appnexus.com/ad-profile?id=199943"
{
  "response": {
    "status": "OK",
    "id": "199943"
  }
}
{code}
```

**Check the ad profile to see the updated rule:**

``` pre
$ curl -b cookies -c cookies -X GET "https://sand.api.appnexus.com/ad-profile?id=199943"
{
  "response": {
    "status": "OK",
    "ad-profile": {
      "id": 199943,
      "state": "active",
      "description": null,
      "member_id": 941,
      ...
      "frequency_caps": [
        {
          "id": 64,
          "max_session_imps": null,
          "max_day_imps": 20,
          "min_minutes_per_imp": 120,
          "member_id": 941,
          "technical_attributes": [
            {
              "id": 4,
              "name": "Video"
            }
          ],
          "categories": null
        }
      ]
      ...
```






