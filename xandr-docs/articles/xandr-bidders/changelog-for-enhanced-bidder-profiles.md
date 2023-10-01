---
Title : Changelog for Enhanced Bidder Profiles
Description : Document to cover all changes between legacy bidder profiles and
Enhanced Bidder Profiles.
---


# Changelog for Enhanced Bidder Profiles



Document to cover all changes between legacy bidder profiles and
Enhanced Bidder Profiles.



## Changes in Targeting

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000024b9__entry__1"
class="entry colsep-1 rowsep-1">Category</th>
<th id="ID-000024b9__entry__2" class="entry colsep-1 rowsep-1">Legacy
Bidder Profile Behavior</th>
<th id="ID-000024b9__entry__3" class="entry colsep-1 rowsep-1">Enhanced
Bidder Profile Behavior</th>
<th id="ID-000024b9__entry__4" class="entry colsep-1 rowsep-1">More
information</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__1"># of
Fields</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">30+
targetable fields</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__3">11
targetable fields</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__4"><a
href="enhanced-bidder-profiles.html" class="xref">Enhanced Bidder
Profiles</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Seller Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">Can
include/exclude individual seller members</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__3"><ul>
<li>Can target "Exchanges"</li>
<li>Can still include/exclude certain members</li>
<li>Can not individually include members who belong to the Direct
Exchange (ID 1)</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__4"><a
href="exchange-service.html" class="xref">Exchange Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Segment Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2"><ul>
<li>Could either AND or OR across targeted segments</li>
<li>Could either include/exclude on individual segments</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__3">Not
available.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__1">Size
Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">Size
targets apply to all ad types</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__3"><ul>
<li>Size targets are specific to banner and video</li>
<li>Size targets for banner/video are set separately</li>
<li>User can not target size 1x1 or 0x0.</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__4"><a
href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
class="xref">Hierarchy and Ad Type Targeting</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__1">Ad
Type Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2"><ul>
<li>No explicit way to target or block ad types</li>
<li>User could target the 1x1 size for native/video creatives</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__3"><ul>
<li>Explicit ad type targeting field</li>
<li>User must explicitly exclude an ad type in the bidder profile to not
receive that type of traffic</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__4"><a
href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
class="xref">Hierarchy and Ad Type Targeting</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Country Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">Can
include/exclude a list of countries</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__3">Behavior remains the same as legacy
profile behavior</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Domain List Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">Can
include/exclude domain lists</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__3">Behavior remains the same as legacy
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Supply Types Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">Can
include/exclude supply types</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__3">Behavior remains the same as legacy
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Inventory Attributes Targeting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">Can
include/exclude inventory attributes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__3">Behavior remains the same as legacy
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Passthrough Percent</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">The
percent (50 = 50%) of bid requests which satisfy your profile targeting
that you receive, set in increments of 0.1.
<p>Requests sent are randomly chosen, although you can choose to always
receive requests for users in segments of members associated with your
bidder.</p>
<p>If set to 0, you will only receive requests for users in your
members' segments.</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__3">Not
available. Bidder should use QPS caps instead.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__4"><a
href="bidder-instance-service.html" class="xref">Bidder Instance
Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__1">Nonaudited Url Action</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__2">If
this is set to "exclude", all inventory that has not been audited by
Xandr will be excluded. Otherwise, all inventory
will be included.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__3">Behavior remains the same as legacy
profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__4"></td>
</tr>
</tbody>
</table>





## Change in Logic

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000024b9__entry__49"
class="entry colsep-1 rowsep-1">Category</th>
<th id="ID-000024b9__entry__50" class="entry colsep-1 rowsep-1">Legacy
Bidder Profile Behavior</th>
<th id="ID-000024b9__entry__51" class="entry colsep-1 rowsep-1">Enhanced
Bidder Profile Behavior</th>
<th id="ID-000024b9__entry__52" class="entry colsep-1 rowsep-1">More
information</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__49">Hierarchy</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__50"><ul>
<li>Uses a parent/child hierarchy</li>
<li>The parent profile must be met along with one of the child profiles
in order to send impression</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__51"><ul>
<li>Flat structure</li>
<li>Impression must meet requirements of a single profile</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__52"><a
href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
Profiles</a></td>
</tr>
</tbody>
</table>





## Changes in Bidder Object

The bidder object in reference is documented here: <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000024b9__entry__57"
class="entry colsep-1 rowsep-1">Category</th>
<th id="ID-000024b9__entry__58" class="entry colsep-1 rowsep-1">Legacy
Bidder Profile Behavior</th>
<th id="ID-000024b9__entry__59" class="entry colsep-1 rowsep-1">Enhanced
Bidder Profile Behavior</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__57">always_send_owned_segments</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__58"><ul>
<li>Overrides the passthrough percent on the bidder profile</li>
<li>Bidder will always receive traffic with a user in an owned or shared
segment</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__59"><ul>
<li>Field is moved over to the profile: "user_not_in_segment_action"
<ul>
<li>If include: Send the impression regardless of whether the user
exists in a segment owned by or shared with the bidder. All other fields
in the bidder profile should be taken into account.</li>
<li>If exclude: Only send impressions where the user exists in a segment
owned by or shared with the bidder. QPS restrictions should apply to
this field. The bidder doesn't have to explicitly state the segment in
the segment actions. Impressions where the user does not exist in a
segment owned by or shared with the bidder should not be sent. All other
fields on the bidder profile will be taken into account.</li>
</ul></li>
<li>The "always_send_owned_segments" field in the bidder object will be
ignored.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__57">Activating Profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__58">Profile must be attached to the bidder
object in either the parent or child profiles field</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__59">Set
active=1 on the profile in order to activate it. No modification is
needed to the bidder object.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__57">override_for_deals</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000024b9__entry__58">Determines whether or not to use the
bidder profile to determine if a bid request should be sent. Deals are
usually negotiated directly between sellers and buyers and are generally
not subject to bidder profile restrictions.
<ul>
<li><code class="ph codeph">true</code>: Ignore the bidder profile and
send bid request regardless of bidder profile</li>
<li><code class="ph codeph">false</code> (default): Use bidder profile
to determine whether the bid request should be sent</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000024b9__entry__59">No
change; behavior is the same as in legacy profile</td>
</tr>
</tbody>
</table>





## Related Topics

- <a href="enhanced-bidder-profiles.html" class="xref">Enhanced Bidder
  Profiles</a>
- <a href="exchange-service.html" class="xref">Exchange Service</a>
- <a
  href="hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
  class="xref">Hierarchy and Ad Type Targeting for Enhanced Bidder
  Profiles</a>
- <a href="api-use-cases-for-enhanced-bidder-profiles.html"
  class="xref">API Use Cases for Enhanced Bidder Profiles</a>
- <a
  href="frequently-asked-questions-faq-for-enhanced-bidder-profiles.html"
  class="xref">Frequently Asked Questions (FAQ) for Enhanced Bidder
  Profiles</a>






