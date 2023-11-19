---
Title : Legacy Bidder Profile Service
Description : Bidder Profiles are used to create and manage filtering criteria for
ms.date : 10/28/2023
which real-time <a
href="outgoing-bid-request-to-bidders.md"
---


# Legacy Bidder Profile Service



Bidder Profiles are used to create and manage filtering criteria for
which real-time <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Requests</a> you wish to receive.
Profiles allow you to limit resources required to process unwanted bid
requests. See the <a
href="bidder-profile---faq.md"
class="xref" target="_blank">Bidder Profile - FAQ</a>.



## Important Notes

- For a bid request to pass a bidder profile, the bid request must meet
  ALL of the specified filter criteria.
- You may create multiple profiles for your bidder, but **only one**
  parent profile can be **active** for your bidder at any given time.
  Activate a profile by associating it with your bidder, using the <a
  href="bidder-service.md"
  class="xref" target="_blank">Bidder Service.</a>
- Note that your bidder will always receive bid requests for inventory
  that is owned by a member associated with your bidder. Bidder profiles
  are not applied in this case.
- Data Provider bidders can only have one parent profile and no child
  profiles.



<b>Warning:</b> Profiles must be attached to
an active bidder object

After you create a profile, you must attach the profile to your bidder
by specifying "parent_profile_id" via the
<a href="bidder-service.md" class="xref">Bidder Service</a>

Do not use deprecated fields

Do not include any of the fields marked as deprecated below when you are
configuring your profile(s). This will lead to your bidder not receiving
the expected volume of bid requests.

Frequent profile updates may temporarily lock that profile

If you make multiple updates to a bidder profile within 30 minutes, the
profile can potentially get locked as a safety precaution. If a profile
gets locked, traffic matching only this profile will not go through for
approximately 5 minutes.







## Supported Filtering Criteria

The following filtering criteria are currently supported:

- Selling Member
  - Specify whether to require or exclude inventory from members, see
    the
    <a href="platform-member-service.md" class="xref">Platform Member
    Service</a>

<figure id="ID-00001572__fig_kf4_ll1_nwb" class="fig fignone">

<b>Note:</b> Please note that the <span
class="ph">Xandr Direct Seller Member Group is included by
default and cannot be excluded via the API or .
For more information, see <a
href="xandr-monetize-supply-for-external-demand-partners.md"
class="xref" target="_blank"> Supply for
External Demand Partners</a>.

</figure>

- Geography
  - Country
    - Include/exclude requests for a specified set of countries, OR
    - Receive bid requests for any countries EXCEPT a specified set of
      countries
  - Region
    - Include/exclude requests for a specified set of regions, OR
    - Receive bid requests for any regions EXCEPT a specified set of
      regions
  - DMA
    - Include/exclude requests for a specified set of DMAs, OR
    - Receive bid requests for any regions EXCEPT a specified set of
      DMAs
- Inventory
  - Domain List
    - Include/exclude requests for impressions that meet the
      requirements of allowlists or blocklists
  - Inventory Attribute
    - Include/exclude requests for impressions that contain certain
      inventory attributes
  - Audit Status
    - Exclude requests from domains that have not been audited by
      Xandr
- Audience



<b>Warning:</b> As of April 27, 2019,
Xandr no longer supports segments on the
platform for externally integrated DSPs.



- Segment Targeting
  - Include/exclude requests for users that satisfy the segment
    targeting criteria

<!-- -->

- Creative Size
  - Include/exclude bid requests for the specified set of creative sizes
- Supply Type (web / mobile_app / mobile_web)
  - Include/exclude impressions for regular web and mobile apps.





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001572__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001572__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001572__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2"><a
href="https://api.adnxs.com/profile/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/profile/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__3"><strong>View Profiles:</strong> To see
all of the profiles attached to your bidder</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2"><a
href="https://api.adnxs.com/profile/BIDDER_ID/PROFILE_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/profile/BIDDER_ID/PROFILE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__3"><strong>View Profiles:</strong> To see a
specific profile attached to your bidder</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2"><a
href="https://api.adnxs.com/profile/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/profile/BIDDER_ID</a><br />
(profile JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__3">Add
a Profile for your bidder</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1">PUT </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2"><a
href="https://api.adnxs.com/profile/BIDDER_ID/PROFILE_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/profile/BIDDER_ID/PROFILE_ID</a><br />
(profile JSON)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__3">Modify an Existing Profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2"><a
href="https://api.adnxs.com/profile/BIDDER_ID/PROFILE_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/profile/BIDDER_ID/PROFILE_ID</a>

<b>Note:</b> Only inactive profiles can be
deleted; that is profiles that are not associated with the bidder
object.
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__3">Delete an existing profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2">Use
the <a
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a> to set the profile_id
field on the bidder to the id of the desired bidder profile.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__3">Activate a profile for your bidder as
the parent profile</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__1"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001572__entry__2">Use
the <a
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a>  to update the
child_profiles array on the bidder to include id of the desired bidder
profile.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__entry__3">Activate a profile for your bidder as a
child profile</td>
</tr>
</tbody>
</table>




## JSON Fields

<table id="ID-00001572__table_icv_hcp_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001572__table_icv_hcp_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001572__table_icv_hcp_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001572__table_icv_hcp_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">ID</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Unique identifier for
the bidder profile.
<p><strong>Required:</strong> yes, on update.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Alternative
identifier for the bidder profile, specific to the bidder.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Description of the
bidder profile.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">The timestamp of the
last modification to the profile.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Bid
Throttling</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">passthrough_percent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">The percent (50 =
50%) of bid requests which satisfy your profile targeting that you wish
to receive. Requests that are sent to your bidder are randomly chosen,
although you can choose for your bidder to always receive requests for
users in segments of members associated with your bidder. If you set
passthrough_percent to 0, your bidder will only receive requests for
users in at least one of your members' segments. These values take
effect in increments of 0.1.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Member
Filtering</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">member_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of Objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Array of objects that
include the member ids of members. The default action, if no action is
specified, is "include" - meaning the member IDs must be included. This
may be overridden by specifying an "action" in the object, e.g.
"member_targets":[{"id":"100","action": "exclude"}]. See <a
href="platform-member-service.md"
class="xref" target="_blank">Platform Member Service</a> for more
details. 
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Geography
Filtering</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">country_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">If "exclude", only
bid requests for countries NOT in "country_targets" will be sent to the
bidder. If "include", only bid requests for countries in
"country_targets" will be sent to the bidder. Default is exclude.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">country_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of Objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">The country IDs to be
either excluded or included, as defined by the <code
class="ph codeph">country_action</code> field. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a list of
country IDs. See <a
href="legacy-bidder-profile-service.md#ID-00001572__35"
class="xref">Country Targets</a> for more details and format.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">region_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">If "exclude", only
bid requests for regions NOT in "region_targets" will be sent to the
bidder. If "include", only bid requests for regions in "region_targets"
will be sent to the bidder. Default is exclude.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">region_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of Objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">The region/state IDs
to be either excluded or included, as defined by the <code
class="ph codeph">region_action</code> field. You can use the <a
href="region-service.md"
class="xref" target="_blank">Region Service</a> to retrieve a list of
region IDs. See <a
href="legacy-bidder-profile-service.md#ID-00001572__36"
class="xref">Region Targets</a> for more details and format.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">dma_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of Objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Array of objects
specifying the dmas to be targeted (for inclusion or exclusion). E.g.
[{"dma":123}, {"dma":124}]
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">dma_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Defaults to
"exclude". See dma_targets
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">city_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of Objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">The IDs of cities to
be either included or excluded, as defined by the <code
class="ph codeph">city_action</code> field. You can use the <a
href="city-service.md"
class="xref" target="_blank">City Service</a> to retrieve a list of city
IDs. See <a href="legacy-bidder-profile-service.md#ID-00001572__38"
class="xref">City Targets</a> for more details and format.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">city_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">If "exclude", only
bid requests for cities NOT in "city_targets" will be sent to the
bidder. If "include", only bid requests for cities in "city_targets"
will be sent to the bidder. Default is exclude.
<p>Required: no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Inventory</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">inventory_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Deprecated. Please
leave it as "exclude" and don't use this field, as this can reduce the
available inventory sent to your bidder.
<p>Required: no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">use_inventory_attribute_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">If set to "true",
then inventory_attribute_targets will be applied. This flag allows you
to "opt-in" to receive certain inventory attributes, such as toolbars,
if they exist for a piece of inventory. If "false", the bidder will
receive all inventory. 
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">inventory_attribute_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of <a
href="https://wiki.appnexus.com/display/adnexusdocumentation/Inventory%2bAttribute%2bService"
class="xref" target="_blank">inventory attribute</a> objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">An array of objects
for the targets to include, e.g. [{"id":12}]. If
use_inventory_attribute_targets is enabled, we will send bid requests
that contain the selected attributes. We will also send bid requests
that contain no inventory attributes. To exclude a particular inventory
attribute, simply include all the IDs except for the attribute you wish
to exclude.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">non_audited_url_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">If this is set to
"exclude", all inventory that has not been audited by <span
class="ph">Xandr will be excluded. Otherwise, all inventory will
be included.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">domain_list_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Default action to
apply to domain_list_target.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">domain_list_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of objects with
the ID of the <a
href="legacy-bidder-profile-service.md#"
class="xref" target="_blank">domain lists</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Array of objects for
the domain list targets, e.g. []. Only bid requests for inventory that
match the domain_list_action for the enumerated domain lists will be
sent to the bidder.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">domain_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:</strong>
deprecated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">domain_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:</strong>
deprecated.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Audience</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">segment_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of <a
href="legacy-bidder-profile-service.md#"
class="xref" target="_blank">segment</a> targets with the ID and action
for each.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">If
"segment_boolean_operator" is "and", then if "action" for a segment is
set to "exclude", then impressions for users that are in that segment
not be sent to the bidder; if any "action" is set to "include", then
users in the segments being included will be sent to the bidder. If
"segment_boolean_operator" is set to "or", then users that meet any of
the segment_targets criteria will be sent to the bidder.
class="note warning note_warning">
<b>Warning:</b> As of April 27, 2019, <span
class="ph">Xandr will no longer support segments on the platform
for externally integrated DSPs.
<p><strong>Required:</strong> no.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">segment_boolean_operator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "and" or
"or"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Action to apply to
the segment_targets. "And" means all of the criteria must be satisfied.
"Or" means at least one must be met.
class="note warning note_warning">
<b>Warning:</b> As of April 27, 2019, <span
class="ph">Xandr will no longer support segments on the platform
for externally integrated DSPs.
<p><strong>Required:</strong> no.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Supply Type
(web / mobile)</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">supply_type_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of supply type
targets:<br />
"mobile_app" (for mobile app inventory),<br />
"mobile_web" (for mobile web inventory),<br />
"web" (for regular display inventory)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Determines which
supply type targets should be included or excluded pursuant to
supply_type_action.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">supply_type_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Action to apply to
supply_type_targets.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Mobile-Specific</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">carrier_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Not yet
supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:</strong>
no</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">carrier_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Action to apply to
carrier_targets.
<p>Required: no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">handset_make_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Not yet
supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:</strong>
no.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">handset_make_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Action to apply to
handset_make_targets.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">handset_model_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Not yet
supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required</strong>:
no.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">handset_model_action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Enum - "exclude" or
"include"</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Action to apply to
handset_model_targets.
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">location_target_radius</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Not yet
supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:
no.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">location_target_latitude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Not yet
supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:</strong>
no.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">location_target_longitude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Not yet
supported</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"><strong>Required:</strong>
no.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Other</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">size_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2">Array of Objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">Array of widths and
heights, specifying creative sizes that your bidder will bid on. E.g.
[{"width":300,"height":250},{"width":600,"height":160}]
<p><strong>Required:</strong> no.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><strong>Not Currently
Supported</strong></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">language_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">This field is not
currently available.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">postal_code_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">This field is not
currently available.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">age_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">This field is not
currently available.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">daypart_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">This field is not
currently available.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__1"><code
class="ph codeph">browser_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_icv_hcp_nwb__entry__3">This field is not
currently available.</td>
</tr>
</tbody>
</table>



**Country Targets**


Each object in the `country_targets` array contains the following
fields.




<table id="ID-00001572__table_mcv_hcp_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001572__table_mcv_hcp_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001572__table_mcv_hcp_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001572__table_mcv_hcp_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__3">The ID of the
country. You can use the <a
href="country-service.md"
class="xref" target="_blank">Country Service</a> to retrieve a complete
list of country IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The name of the country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_mcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The code for the country.</td>
</tr>
</tbody>
</table>




## Example




``` pre
{
    "profile": {
        "country_action": "include",
        "country_targets": [
            {
                "id": 233,
                "name": "United States",
                "code": "US"
            }
        ]
    }
}
```



**Region Targets**


Each object in the `region_targets` array contains the following fields.




<table id="ID-00001572__table_ocv_hcp_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001572__table_ocv_hcp_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001572__table_ocv_hcp_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001572__table_ocv_hcp_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__3">The ID of the region.
You can use the <a
href="region-service.md"
class="xref" target="_blank">Region Service</a> to retrieve a list of
region IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The name of the region.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__1"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The code for the region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__1"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The name of the country to which the region belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__1"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_ocv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The code for the country to which the region belongs.</td>
</tr>
</tbody>
</table>




## Example




``` pre
{
    "profile": {
        "region_action": "include",
        "region_targets": [
            {
                "id": 1
                                "name": "New York",
                                "code": "NY",
                "country_name": "United States",
                                "country_code": "US"
            }
        ]
    }
}
```



**City Targets**


Each object in the `city_targets` array contains the following fields.




<table id="ID-00001572__table_qcv_hcp_nwb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001572__table_qcv_hcp_nwb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001572__table_qcv_hcp_nwb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001572__table_qcv_hcp_nwb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__3">The ID of the city to
target. You can use the <a
href="city-service.md"
class="xref" target="_blank">City Service</a> to retrieve a list of city
IDs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The name of the city to target.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__1"><code
class="ph codeph">region_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The name of the region to which the city belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__1"><code
class="ph codeph">region_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The code of the region to which the city belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__1"><code
class="ph codeph">country_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The name of the country to which the region belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__1"><code
class="ph codeph">country_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001572__table_qcv_hcp_nwb__entry__3"><strong>Read-only.</strong>
The code of the country to which the region belongs.</td>
</tr>
</tbody>
</table>




## Example




``` pre
{
    "profile": {
        "city_action": "include",
        "city_targets": [
            {
                "id": 123,
                "name": "Queens",
                "region_name": "New York",
                "region_code": "NY",
                "country_code": "US",
                "country_name": "United States",
            }
        ]
    }
}
```




## Authentication Token

Authentication is always the first step when using the API Services. The
authentication token can then be written to our cookie file for future
use. Please see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
detailed instructions.




## Examples

**Add a new profile to bidder 6. The ID of the new profile is 123**




``` pre
$ cat bidder_profile:
    {
    "profile":
        {
        "description": "Only Alberta (NO US can be included)",
        "country_action": "include",
        "country_targets": [{"id": 1},{"ide":2}],
        "region_action": "exclude",
        "region_targets": [{id: 1}],
        "member_targets": [
           {
             "id": "100",
             "action": "exclude"
           },
           {
             "id": "102",
             "action": "exclude",
             "name": "Inventory name 2"
           }
        ],
        "dma_targets": [{"dma":123}, {"dma":124}],
        "dma_action": "exclude",
        "segment_boolean_operator": "and",
        "segment_targets": [
         {
          "id": "16808",
          "name": "Users meeting certain criteria",
          "action": "include",
          "start_minutes": null,
          "expire_minutes": null,
          "other_less": null,
          "other_greater": null,
          "other_equals": null
         },
         {
          "id": "16809",
          "name": "Users that have seen an ad for this campaign and should not be targeted for 2 days",
          "action": "exclude",
          "start_minutes": null,
          "expire_minutes": "2880",
          "other_less": null,
          "other_greater": null,
          "other_equals": null,
         }
        ],
        "size_targets": [{"width":300,"height":250},{"width":600,"height":160}]
        }
    }
    $ curl -b cookies -c cookies -X POST --data-binary @bidder_profile "https://api.adnxs.com/profile/6"
    {
    "response":
       {
         "status":"OK",
         "id":"123"
       }
    }
```

**See all profiles currently associated with bidder 6**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/profile/6"
```

**See profile 123 associated with bidder 6**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/profile/6/123"
```

\- To activate a profile for your bidder, use the <a
href="bidder-service.md"
class="xref" target="_blank">Bidder Service</a> to set the profile_id
field on the bidder to the id of the desired bidder profile.

**To update profile ID 123 on bidder 6**

``` pre
$ cat bidder_profile:
    {
    "profile":
        {
        "id": "123",
        "country_action": "include",
        "country_targets": [{"id": 233}]
        }
    }
    $ curl -b cookies -c cookies -X PUT --data-binary @bidder_profile "https://api.adnxs.com/profile/6/123"
```

**Add a domain list to your bidder profile as a "blocklist"**



<b>Tip:</b> For more information about domain
lists, see the <a
href="domain-list-service.md"
class="xref" target="_blank">Domain List Service.</a>

``` pre
$ cat domain-list-profile
{
   "profile" : {
      "domain_list_targets" : [
         {
            "id" : 9351
         }
      ],
      "domain_list_action" : "exclude",
      "id" : 431739
   }
}
$ curl -b cookies -c cookies -X PUT --data-binary @domain-list-profile 'https://api.adnxs.com/profile/497/431739'
{
   "response" : {
      "count" : 1,
      "num_elements" : null,
      "id" : "431739",
      "profile" : {
         "supply_type_targets" : null,
         "browser_targets" : null,
         "id" : 431739,
         "dma_targets" : null,
         "screen_size_targets" : null,
         "inventory_attribute_targets" : null,
         "device_type_targets" : null,
         "dma_action" : "exclude",
         "operating_system_targets" : null,
         "domain_list_targets" : [
            {
               "id" : 9351,
               "deleted" : false,
               "type" : "black",
               "description" : "Rich's awesome domain list (blocklist)",
               "name" : "Rich's awesome domain list (blocklist)"
            }
         ],
         "session_freq_type" : "platform",
         "operating_system_family_targets" : null,
         "domain_targets" : null,
         "venue_targets" : null,
         "description" : "Ethical Ad Blocker Test Segment",
         "city_targets" : null,
         "age_targets" : null,
         "domain_action" : "exclude",
         "inventory_action" : "exclude",
         "site_targets" : null,
         "size_targets" : [
            {
               "width" : 300,
               "height" : 50
            },
            {
               "width" : 300,
               "height" : 250
            }
         ],
         "location_target_radius" : null,
         "language_action" : "exclude",
         "ip_targets" : null,
         "segment_targets" : [
            {
               "deleted" : false,
               "other_greater" : null,
               "name" : "ethical ad blocker segment 00",
               "code" : "ethical-adblock-00",
               "other_less" : null,
               "expire_minutes" : null,
               "action" : "include",
               "other_in_list" : null,
               "id" : 110944,
               "other_equals" : null,
               "start_minutes" : null
            }
         ],
         "is_expired" : false,
         "region_action" : "exclude",
         "location_target_latitude" : null,
         "code" : "ethical-adblock-00",
         "inventory_group_targets" : null,
         "country_action" : "exclude",
         "querystring_targets" : null,
         "carrier_targets" : null,
         "member_id" : null,
         "passthrough_percent" : 100,
         "segment_boolean_operator" : "or",
         "intended_audience_targets" : null,
         "operating_system_extended_targets" : null,
         "device_model_action" : "exclude",
         "language_targets" : null,
         "gender_targets" : null,
         "non_audited_url_action" : "include",
         "inventory_network_resold_targets" : null,
         "supply_type_action" : "exclude",
         "daypart_targets" : null,
         "daypart_timezone" : null,
         "postal_code_targets" : null,
         "querystring_boolean_operator" : "and",
         "last_activity" : "2015-03-30 21:25:41",
         "member_targets" : [
            {
               "action" : "include",
               "billing_name" : "unexposed",
               "id" : 4782,
               "third_party_auditor_id" : null
            }
         ],
         "browser_family_targets" : null,
         "screen_size_action" : "exclude",
         "min_session_imps" : null,
         "device_model_targets" : null,
         "querystring_action" : "exclude",
         "segment_group_targets" : null,
         "country_targets" : null,
         "city_action" : "exclude",
         "domain_list_action" : "exclude",
         "location_target_longitude" : null,
         "carrier_action" : "exclude",
         "position_targets" : null,
         "use_inventory_attribute_targets" : false,
         "device_type_action" : "exclude",
         "region_targets" : null,
         "browser_action" : "exclude"
      },
      "start_element" : null,
      "status" : "OK"
   }
}
```






## Relate-d Topics




- <a
  href="https://wiki.xandr.com/display/adnexusdocumentation/Bidder%2bProfile%2b-%2bFAQ"
  class="xref" target="_blank">Bidder Profile - FAQ</a>






