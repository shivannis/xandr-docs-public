---
Title : Enhanced Bidder Profiles
Description : Bidder profiles filter traffic and allow bidders to apply business rules
on objects. This is to ensure specific types of traffic are either
---


# Enhanced Bidder Profiles



Bidder profiles filter traffic and allow bidders to apply business rules
on objects. This is to ensure specific types of traffic are either
received or not received. Xandr will partner
with you, and provide the proper tools to ensure you have a profile that
matches your business needs. 



## High-Level Changes

For an list of changes from legacy to the current enhanced bidder
profiles, please visit the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/changelog-for-enhanced-bidder-profiles.html"
class="xref" target="_blank">changelog.</a>

 

- An impression only needs to meet the requirement of one of the
  profiles in order to pass.
  - There is no longer a parent/child hierarchy
  - For more information about the change in hierarchy, please see
    here: <a
    href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
    class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
    Profiles</a>
- Ad type filtering and targeting have been added.
  - You will now be able to block/target native, banner, video, audio
  - For more information about ad type targeting, please see here: <a
    href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
    class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
    Profiles</a>
- Removal of passthrough percent.
  - You can now set QPS caps per DC. 
  - For more information on how to set a QPS cap, please see
    here: <a href="bidder-instance-service.html" class="xref">Bidder Instance
    Service</a>
- Addition of Exchange targeting
  - We have grouped our inventory in easy-to-understand groups 
  - For more information about exchanges, please see
    here: <a href="exchange-service.html" class="xref">Exchange Service</a>





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__1" class="entry colsep-1 rowsep-1">HTTPS
Method</th>
<th id="ID-00001a2e__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001a2e__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__1">POST </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__2"><a
href="https://api.adnxs.com/bidder-profile/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder-profile/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__3">Add
a new profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__1">PUT </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__2"><a
href="https://api.adnxs.com/bidder-profile/BIDDER_ID/PROFILE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/bidder-profile/BIDDER_ID/PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__3">Modify an existing profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__2"><a
href="https://api.adnxs.com/bidder-profile/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder-profile/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__3">To
see all of the profiles attached to your bidder</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__2"><a
href="https://api.adnxs.com/bidder-profile/BIDDER_ID/PROFILE_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/bidder-profile/BIDDER_ID/PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__3">To
see a specific profile attached to your bidder</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">The
ID of the bidder profile. This is a read-only field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">bidder_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">The
ID of the bidder. This is a read-only field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">The
alternative identifier for the bidder profile, specific to the
bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__18">Description of the bidder profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__18">Indicates whether the profile has been
activated. If false, this profile does not affect traffic sent to the
bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">targeting</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">The
targeting rules for this bidder profile. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__20"
class="xref">Targeting</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">user_not_in_segment_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">If
set to "include": Impressions for all users are sent to the bidder.
<p>If set to "exclude": Only impressions where the user exists in a
segment owned by or shared with the bidder are sent. QPS restrictions
will apply to this field. The bidder doesn't have to explicitly state
the segment in the segment actions.</p>
<figure id="ID-00001a2e__fig_npz_jj5_mwb" class="fig fignone">

Note: This field will be deprecated in
favor of the unknown_users_action

</figure></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">unknown_users_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">If
set to "include": Impressions for all users are sent to the bidder.
<p>If set to "exclude": Only impressions where the user has an in-house
ID mapped in the Xandr cookie are sent. Mapping
occurs when the bidder calls the setuid function.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__16"><code
class="ph codeph">non_audited_url_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__18">If
set to "exclude", all inventory that has not been audited by <span
class="ph">Xandr will be excluded. Otherwise, all inventory will
be included.</td>
</tr>
</tbody>
</table>

**Targeting**

The targeting object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__46"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__47"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__48"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__46"><code
class="ph codeph">exchanges</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__47">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__48">Exchanges and seller members included
or excluded by this profile. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__22"
class="xref">Exchanges</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__46"><code
class="ph codeph">countries</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__47">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__48">Countries included or excluded by this
profile. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__23"
class="xref">Countries</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__46"><code
class="ph codeph">domain_lists</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__47">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__48">Domain lists included or excluded by
this profile. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__25" class="xref">Domain
Lists</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__46"><code
class="ph codeph">ad_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__47">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001a2e__entry__48">Ad
types (e.g., Banner, Video) included or excluded by this profile. For
more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__26" class="xref">Ad
Types</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__46"><code
class="ph codeph">supply_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__47">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__48">Supply types (e.g., Desktop, Mobile
App) included or excluded by this profile. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__27" class="xref">Supply
Types</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__46"><code
class="ph codeph">inventory_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__47">objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__48">Inventory attributes included or
excluded by this profile. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__28"
class="xref">Inventory Attributes</a> below.</td>
</tr>
</tbody>
</table>

**Exchanges**

The exchanges object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__67"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__68"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__69"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__70" class="entry colsep-1 rowsep-1">Possible
Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__67"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__68">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__69">Indicates whether the exchanges in the
targets array (below) are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__70">include, exclude</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__67"><code
class="ph codeph">targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__68">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__69">List of exchanges included or excluded
by the profile.
<p>Refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/exchange-service.html"
class="xref" target="_blank">Exchange Service</a> documentation for more
information about exchanges.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__70">{"id": 1}, {"id": 2}, {"id": 3}</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__67"><code
class="ph codeph">excluded_members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__68">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__69">List of sellers that the bidder wants
to exclude. Refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/platform-member-service.html"
class="xref" target="_blank">Platform Member Service</a> for a list of
targetable members.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__70">{"id": 181}, {"id": 459}</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__67"><code
class="ph codeph">included_members</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__68">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__69">List of sellers that the bidder wants
to include.  Refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/platform-member-service.html"
class="xref" target="_blank">Platform Member Service</a> for a list of
targetable members.
<figure id="ID-00001a2e__fig_tzc_lq5_mwb" class="fig fignone">

Note: Sellers that belong to <span
class="ph">Xandr's direct supply (Exchange 1) cannot be
individually included. See the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/exchange-service.html"
class="xref" target="_blank">Exchange Service</a> documentation for more
information.

</figure></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__70">{"id": 181}, {"id": 459}</td>
</tr>
</tbody>
</table>

**Countries**

The countries object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__87"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__88"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__89"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__90" class="entry colsep-1 rowsep-1">Possible
Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__87"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__88">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__89">Indicates whether the countries in the
targets array (below) are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__90">include, exclude</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__87"><code
class="ph codeph">targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__88">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__89">List of countries included or excluded
by the profile.. Refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/country-service.html"
class="xref" target="_blank">Country Service</a> for a list of
targetable countries.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__90">{"id": 233}, {"id": 80}</td>
</tr>
</tbody>
</table>

**Domain Lists**

The domain lists object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__99"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__100"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__101"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__102"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__99"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__100">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__101">Indicates whether the domain lists in
the targets array (below) are in allowlists or blocklists.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__102">include, exclude</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__99"><code
class="ph codeph">targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__100">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__101">List of domain lists included or
excluded by the profile. The domain list type does not affect how
targeting is applied; use action to configure allowlists or blocklists.
Refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/domain-list-service.html"
class="xref" target="_blank">Domain List Service</a> for a list of
targetable domain lists.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__102">{"id": 12345}, {"id": 34567}</td>
</tr>
</tbody>
</table>

**Ad Types**

The ad types object contains the following fields. For more information
on Ad Types: <a
href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
Profiles</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__111"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__112"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__113"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__111"><code
class="ph codeph">banner</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__112">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__113">Indicates whether banner-eligible
impressions are targeted. Specific ad sizes can be configured. If not
explicitly configured, it is assumed to be included. For more details,
see  <a href="enhanced-bidder-profiles.html#ID-00001a2e__30"
class="xref">Banner</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__111"><code
class="ph codeph">video</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__112">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__113">Indicates whether video-eligible
impressions are targeted. If not explicitly configured, it is assumed to
be included. For more details, see  <a
href="enhanced-bidder-profiles.html#ID-00001a2e__31"
class="xref">Video </a>below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__111"><code
class="ph codeph">native</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__112">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__113">Indicates whether native-eligible
impressions are targeted. If not explicitly configured, it is assumed to
be included. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__32"
class="xref">Native</a> below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__111"><code
class="ph codeph">audio</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__112">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__113">Indicates whether audio-eligible
impressions are targeted. If not explicitly configured, it is assumed to
be included. For more details, see <a
href="enhanced-bidder-profiles.html#ID-00001a2e__33"
class="xref">Audio </a>below.</td>
</tr>
</tbody>
</table>

**Banner**

The banner object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__126"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__127"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__128"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__129"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__126"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__127">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__128">Indicates whether banner-eligible
impressions are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__129">include, exclude</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__126"><code
class="ph codeph">sizes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__127">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__128">List of banner ad sizes included in
targeting. Creative sizes cannot be excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__129">{"width": 300, "height": 250},
{"width": 728, "height": 90}</td>
</tr>
</tbody>
</table>

**Video **

The video object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__138"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__139"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__140"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__141"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__138"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__139">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__140">Indicates whether video-eligible
impressions are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__141">include, exclude</td>
</tr>
</tbody>
</table>

**Native **

The native object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__146"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__147"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__148"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__149"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__146"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__147">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__148">Indicates whether native-eligible
impressions are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__149">include, exclude</td>
</tr>
</tbody>
</table>

**Audio**

The audio object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__154"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__155"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__156"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__157"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__154"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__155">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__156">Indicates whether audio-eligible
impressions are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__157">include, exclude</td>
</tr>
</tbody>
</table>

**Supply Types**

The supply types object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__162"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__163"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__164"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__165"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__162"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__163">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__164">Indicates whether the supply types in
the targets array (below) are included or excluded.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__165">include, exclude</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__162"><code
class="ph codeph">targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__163">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__164">List of supply types included or
excluded by the profile.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__165">"mobile_app", "mobile_web", "web"</td>
</tr>
</tbody>
</table>

**Inventory Attributes**

The inventory attributes object contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001a2e__entry__174"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001a2e__entry__175"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001a2e__entry__176"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-00001a2e__entry__177"
class="entry colsep-1 rowsep-1">Possible Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__174"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__175">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__176">Indicates whether the inventory
attributes in the targets array (below) are included.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__177">include</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__174"><code
class="ph codeph">targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__175">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__176">List of inventory attributes included
or excluded by the profile. Refer to the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/inventory-attribute-service.html"
class="xref" target="_blank">Inventory Attribute Service</a> for a list
of targetable inventory attributes.
<p> Inventory without an assigned inventory attribute is always
targeted.</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001a2e__entry__177">{"id": 2}, {"id: 16}</td>
</tr>
</tbody>
</table>





## Examples

Additional API examples are available here:<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/api-use-cases-for-enhanced-bidder-profiles.html"
class="xref" target="_blank">API Use Cases for Enhanced Bidder Profiles
.</a>Performing a GET call on the API:

 **Exchanges**

``` pre
{
        "response": {
                "status": "OK",
                "count": 1,
                "start_element": 0,
                "num_elements": 100,
                "bidder_profiles": [{
                        "id": 00,
                        "bidder_id": 00,
                        "code": null,
                        "description": null,
                        "targeting": {
                                "exchanges": {
                                        "action": "include",
                                        "targets": [{
                                                "id": 1,
                                                "name": "Direct"
                                        }],
                                        "excluded_members": [{
                                                "id": 5,
                                                "billing_name": "Supply_source"
                                        }],
                                        "included_members": [{
                                                "id": 7,
                                                "billing_name": "Supply_source_two"
                                        }]
                                }
                        },
                        "last_activity": "2018-07-24 17:05:00",
                        "created_on": "2018-07-20 18:16:19",
                        "active": true
                }]
        }
}
```

 **Countries**

``` pre
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 0,
                "code": "my_code",
                "description": "EMEA Profile",
                "targeting": {
                    "countries": {
                        "action": "include",
                        "targets": [
                            {
                                "id": 18,
                                "name": "Australia",
                                "code": "AU",
                                "active": true
                            },
                            {
                                "id": 41,
                                "name": "Canada",
                                "code": "CA",
                                "active": true
                            },
                            {
                                "id": 105,
                                "name": "Ireland",
                                "code": "IE",
                                "active": true
                            },
                            {
                                "id": 173,
                                "name": "New Zealand",
                                "code": "NZ",
                                "active": true
                            },
                            {
                                "id": 80,
                                "name": "United Kingdom",
                                "code": "GB",
                                "active": true
                            },
                            {
                                "id": 233,
                                "name": "United States",
                                "code": "US",
                                "active": true
                            }
                        ]
                    },
                "last_activity": "2018-07-24 19:47:54",
                "created_on": "2018-07-24 19:47:49",
                "active": true,
                "user_not_in_segment_action": "include"
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```

** Domain Lists**

``` pre
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 00,
                "code": null,
                "description": null,
                "targeting": {
                    "domain_lists": {
                        "action": "exclude",
                        "targets": [
                            {
                                "id": 140000,
                                "name": "Additional Block List",
                                "description": "Block list",
                                "type": "black"
                            },
                            {
                                "id": 800000,
                                "name": "Domain list (blocklist)",
                                "description": "Domain list (blocklist)",
                                "type": "black"
                            }
                        ]
                    },
                "last_activity": "2018-07-24 17:05:31",
                "created_on": "2018-07-20 18:21:00",
                "active": true
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```

** Ad Types**

``` pre
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 000,
                "code": "Company_test",
                "description": "Company Parent Test",
                "targeting": {
                    "ad_types": {
                        "banner": {
                            "action": "include",
                            "sizes": [{
                                                                "width": 200,
                                                                "height": 200
                                                        },      {
                                                                "width": 50,
                                                                "height": 50
                            }]
                        },
                        "video": {
                            "action": "exclude"
                                                        "sizes": [{
                                                                "width": 200,
                                                                "height": 200
                                                        },      {
                                                                "width": 50,
                                                                "height": 50
                            }]
                        },                        },
                        "audio": {
                            "action": "exclude"
                        },
                        "native": {
                            "action": "include"
                        }
                    }
                },
                "last_activity": "2018-07-24 19:47:54",
                "created_on": "2018-07-24 19:47:49",
                "active": true,
                        "non_audited_url_action": "include"           
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```

 **Supply Types**

``` pre
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 000,
                "code": "my_code",
                "description": "Company Profile",
                "targeting": {
                    "supply_types": {
                        "action": "include",
                        "targets": [
                            "web",
                            "mobile_web",
                            "mobile_app"
                        ]
                    },
                        }
                    }
                },
                "last_activity": "2018-07-24 19:47:54",
                "created_on": "2018-07-24 19:47:49",
                "active": true,
                "non_audited_url_action": "include"
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```

** Inventory Attributes**

``` pre
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 00,
                "code": null,
                "description": null,
                "targeting": {
                    "inventory_attributes": {
                        "targets": [{
                            {
                                "id": 00,
                                "name": "Streaming Media",
                                "deleted": false
                            }]
                                        }
                                },
                                "last_activity": "2018-07-24 19:47:54",
                "created_on": "2018-07-24 19:47:49",
                "active": true,
                        "non_audited_url_action": "include"           
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```

** Unknown Users Action**

``` pre
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 00,
                "code": null,
                "description": null,
                "targeting": {
                    "inventory_attributes": {
                        "targets": [{
                            {
                                "id": 00,
                                "name": "Streaming Media",
                                "deleted": false
                            }],
                                                        "action": "include"
                                        }
                                },
                                        "last_activity": "2018-07-24 19:47:54",
                "created_on": "2018-07-24 19:47:49",
                "active": true,
                        "unknown_users_action": "include"           
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```

** Non-Audited URL Action**

``` pre
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "bidder_profiles": [
            {
                "id": 00,
                "bidder_id": 00,
                "code": null,
                "description": null,
                "targeting": {
                    "inventory_attributes": {
                        "targets": [{
                                "id": 00,
                                "name": "Streaming Media",
                                "deleted": false
                            }],
                                                        "action": "include"
                                        }
                                },
                                "last_activity": "2018-07-24 19:47:54",
                "created_on": "2018-07-24 19:47:49",
                "active": true,
                        "non_audited_url_action": "include"           
            }
        ],
        "dbg": {
            "warnings": [
            ],
            "version": "1.18.701",
            "output_term": "bidder_profiles"
        }
    }
}
```





##  Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/exchange-service.html"
  class="xref" target="_blank">Exchange Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">Hierarchy and Ad Type Targeting for
  Enhanced Bidder Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/api-use-cases-for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">API Use Cases for Enhanced Bidder
  Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/frequently-asked-questions--faq--for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">Frequently Asked Questions (FAQ) for
  Enhanced Bidder Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/changelog-for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">Changelog for Enhanced Bidder Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-profile-migration-guide.html"
  class="xref" target="_blank">Bidder Profile Migration Guide</a>






