---
Title : Identity Type Service
Description : <b>Note:</b> This service currently is in
ms.date: 10/28/2023
ms.custom: digital-platform-api
Alpha. It is still under development and may be subject to change
---


# Identity Type Service







<b>Note:</b> This service currently is in
Alpha. It is still under development and may be subject to change
without notice. Contact your Microsoft Account Representative to get it
enabled.







The identity type service in Identity Management Framework can be used
to retrieve, create, update and delete an identifier in the platform.
Additionally this service allows owners to manage permissions for their
identity solutions. Using this service, identity owners can:

- determine the publisher(s) that are permitted to utilize their
  identifier within the bidstream,
- decide the partner(s) on the platform who can incorporate data using
  their identifier,
- choose the external bidder(s) who are eligible to access their
  identifier, and
- select the partner(s) on the platform who are eligible to receive the
  identifier's value in their log level data feeds.





class="note important note_important">

<b>Important:</b> To register or create a new
identifier, contact your Microsoft Account Representative as this
functionality is restricted to Microsoft Admin role.





>

## REST API



<table id="identity-type-service__table_ap3_p4z_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 27%" />
<col style="width: 39%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_ap3_p4z_jyb__entry__1"
class="entry colsep-1 rowsep-1">HTTP Method</th>
<th id="identity-type-service__table_ap3_p4z_jyb__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="identity-type-service__table_ap3_p4z_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td rowspan="6" class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?id=IDENTITY_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?id=IDENTITY_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">View a
specific identifier by its ID. Here, <code
class="ph codeph">IDENTITY_ID1</code> is example of an identifier's
ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?id=IDENTITY_ID1,IDENTITY_ID2,IDENTITY_ID3"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?id=IDENTITY_ID1,IDENTITY_ID2,IDENTITY_ID3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">View
multiple identifiers by their IDs using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?source=SOURCE1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?source=SOURCE1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">View a
specific identifier by a source such as LiveRamp, Warner Media, etc.
Here, <code class="ph codeph">SOURCE1</code> is an example of the source
of an identifier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?source=SOURCE1,SOURCE2"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?source=SOURCE1,SOURCE2</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">View
multiple identifiers by source using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?member_owner_id=OWNERID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?member_owner_id=OWNERID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">View
identifier(s) by the ID of an identity owner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?member_owner_id=OWNERID1,OWNERID2"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?member_owner_id=OWNERID1,OWNERID2</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">View
multiple identifiers by multiple IDs of owners using a comma-separated
list.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?id=IDENTITY_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?id=IDENTITY_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">Update a
specific identifier by its ID.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type" class="xref"
target="_blank">https://api.appnexus.com/identity-type</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">Add an
identifier using payload JSON as shown in the example.
<ul>
<li><strong>Microsoft admin only field</strong>.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__2"><a
href="https://api.appnexus.com/identity-type?id=IDENTITY_ID1&amp;member_id=MEMBER_ID1"
class="xref"
target="_blank">https://api.appnexus.com/identity-type?id=IDENTITY_ID1&amp;member_id=MEMBER_ID1</a></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ap3_p4z_jyb__entry__3">Delete an
existing identifier belong to a member
<ul>
<li><strong>Microsoft admin only field</strong></li>
</ul></td>
</tr>
</tbody>
</table>





>

## JSON Fields

**Registration fields with admin-only control**

<table id="identity-type-service__table_wg2_wpz_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_wg2_wpz_jyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-service__table_wg2_wpz_jyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-service__table_wg2_wpz_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">Microsoft
created ID of the identifier.
<ul>
<li><strong>Read Only</strong></li>
<li><strong>Required On</strong>: PUT and DELETE</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">member_owner_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The member
ID of the identifier owner (typically a publisher).
<ul>
<li><strong>Required On</strong>: POST</li>
<li>Microsoft admin write only field</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">source</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The source
of the identifier. For example, LiveRamp, Warner Media, etc. The source
needs to unique to the identifier.
<ul>
<li><strong>Required On</strong>: POST</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">requires_platform_resolution</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">Is platform
resolution required by an identifier for encoding and decoding.
<ul>
<li><strong>Required On</strong>: POST</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">requires_seat_resolution</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">Is seat
resolution required by identifier for each bidder (RampID).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">identity_resolver_check</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2"></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">is_auction_usage_single_context</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The
identifier context set for relevant privacy usage (CPRA). If the
identifier is used to identify a user on 2 or more domains/websites,
this should be set to false.
<ul>
<li><strong>Required On</strong>: POST</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">is_passthrough</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The master
settings to allow frequency capping and audience segmentation on the
platform.
<ul>
<li><strong>Default</strong>: False</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">requires_rti_partner_match</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The field
required for The Trade Desk related identifiers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">rti_partner</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The field
required for The Trade Desk related identifiers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">is_experimental</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The field
used for FLoC/ Topics. For more information on FLoC, see <a
href="https://privacysandbox.com/proposals/floc/" class="xref"
target="_blank">Federated Learning of Cohorts (FLoC)</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">opt_out_default</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3"><p>When
true, the industry type identifier is opted out by default and <em>vice
versa</em>.</p>
<p>When the identity type is opted in, there is no need to consult the
identity resolver to verify if there is any opt-out. However, when the
identity type is initially opted out by default, the identity resolver
must determine whether the identifier should be opted in or
out.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__1"><code
class="ph codeph">enforce_adx_specification</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_wg2_wpz_jyb__entry__3">The field
specifies if the drive validation ID length in Impression Bus is greater
than 32.</td>
</tr>
</tbody>
</table>

**The master control settings for an identifier owner**

<table id="identity-type-service__table_ssk_vqz_jyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 40%" />
<col style="width: 27%" />
<col style="width: 31%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_ssk_vqz_jyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-service__table_ssk_vqz_jyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-service__table_ssk_vqz_jyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__1"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__3">The status
of the identifier whether its active or inactive.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__1"><code
class="ph codeph">auction_participation_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__3">The master
setting to control whether other publishers can employ this identifier
and specify the ones who are permitted to do so. See Auction
Participation Contols below for more details.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__1"><code
class="ph codeph">audience_segmentation_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__3">The master
setting to control permissions to other members for audience
segmentation using the identifier. This field in request defines list of
members for which segment onboarding is allowed for the registered
identifier.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__1"><code
class="ph codeph">external_bidder_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__3">The master
setting to control if the identifier can be sent to the external bidders
and specify the eligible external bidders. This field defines default
list of bidders who will be receiving the newly registered source and
identifier. By default, member participants can use the bidders defined
at the identifier level or they can override using the identity type
participant API.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__1"><code
class="ph codeph">lld_exposure_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ssk_vqz_jyb__entry__3">The master
setting to regulate if the identifier can be utilized in log-level data
(LLD) and determine the authorized recipients. This field defines the
list of members who will be able see actual ID values in LLD feed for
the newly registered source and identifier. By default, member
participants can use the members defined at the identifier level or they
can override the identity type participant API.</td>
</tr>
</tbody>
</table>



**Auction Participation Control**



The master setting to control whether other publishers can employ this
identifier and specify the ones who are permitted to do so. This field
in request defines list of member for which auction is enabled. Auction
enabled members become the participants for an identifier in the
framework.

<table id="identity-type-service__table_vts_w4r_pyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_vts_w4r_pyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-service__table_vts_w4r_pyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-service__table_vts_w4r_pyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vts_w4r_pyb__entry__1"><code
class="ph codeph">allow_participation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vts_w4r_pyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vts_w4r_pyb__entry__3"><p>Sellers
enabled for auction participation:</p>
<p>Options:</p>
<ul>
<li><code class="ph codeph">"all"</code></li>
<li><code class="ph codeph">"none"</code></li>
<li><code class="ph codeph">“include_subset”</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vts_w4r_pyb__entry__1"><code
class="ph codeph">participant_member_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vts_w4r_pyb__entry__2">array of
integers</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vts_w4r_pyb__entry__3">List of
member_id enabled for: <code
class="ph codeph">“include_subset”</code></td>
</tr>
</tbody>
</table>



**Audience Segmentation Control**

The master setting to control permissions to other members for audience
segmentation using the identifier. This field in request defines list of
members for which segment onboarding is allowed for the registered
identifier.



<table id="identity-type-service__table_ag5_dpr_pyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_ag5_dpr_pyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-service__table_ag5_dpr_pyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-service__table_ag5_dpr_pyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ag5_dpr_pyb__entry__1"><code
class="ph codeph">allow_segmentation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ag5_dpr_pyb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ag5_dpr_pyb__entry__3"><p>Members
enabled for audience segmentation:</p>
<p>Options:</p>
<ul>
<li><code class="ph codeph">"all"</code></li>
<li><code class="ph codeph">"none"</code></li>
<li><code class="ph codeph">“include_subset”</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ag5_dpr_pyb__entry__1"><code
class="ph codeph">segmentation_member_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ag5_dpr_pyb__entry__2">array of
integers</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_ag5_dpr_pyb__entry__3">List of
member_id enabled for: <code
class="ph codeph">“include_subset”</code></td>
</tr>
</tbody>
</table>



**External Bidder Control**



The master setting to control if the identifier can be sent to the
external bidders and specify the eligible external bidders. This field
defines default list of bidders who will be receiving the newly
registered source and identifier. By default, member participants can
use the bidders defined at the identifier level or they can override
using the identity type participant API.

<table id="identity-type-service__table_d1x_jpr_pyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_d1x_jpr_pyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-service__table_d1x_jpr_pyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-service__table_d1x_jpr_pyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_d1x_jpr_pyb__entry__1"><code
class="ph codeph">allow_bidders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_d1x_jpr_pyb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_d1x_jpr_pyb__entry__3"><p>External
bidders Members enabled to recieve the identifier:</p>

Options:
<ul>
<li><code class="ph codeph">"all"</code></li>
<li><code class="ph codeph">"none"</code></li>
<li><code class="ph codeph">“include_subset”</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_d1x_jpr_pyb__entry__1"><code
class="ph codeph">external_bidder_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_d1x_jpr_pyb__entry__2">array of
integers</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_d1x_jpr_pyb__entry__3">List of
member_id enabled for: <code
class="ph codeph">“include_subset”</code></td>
</tr>
</tbody>
</table>



**Log Level Data Exposure Control**

The master setting to regulate if the identifier can be utilized in
log-level data (LLD) and determine the authorized recipients. This field
defines the list of members who will be able see actual ID values in LLD
feed for the newly registered source and identifier. By default, member
participants can use the members defined at the identifier level or they
can override the identity type participant API where publishers have the
option to utilize the participant service to exert additional control
over how the identifier they provide is employed and surfaced by the
platform.



<table id="identity-type-service__table_vyq_lpr_pyb"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="identity-type-service__table_vyq_lpr_pyb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="identity-type-service__table_vyq_lpr_pyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="identity-type-service__table_vyq_lpr_pyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vyq_lpr_pyb__entry__1"><code
class="ph codeph">lld_exposure_allowed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vyq_lpr_pyb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vyq_lpr_pyb__entry__3">Members
enabled to receive identifier values in LLD.

Options:
<ul>
<li><code class="ph codeph">"all"</code></li>
<li><code class="ph codeph">"none"</code></li>
<li><code class="ph codeph">“include_subset”</code></li>
<li><code class="ph codeph">"participant_only"</code></li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vyq_lpr_pyb__entry__1"><code
class="ph codeph">exposure_member_list</code></td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vyq_lpr_pyb__entry__2">array of
integers</td>
<td class="entry colsep-1 rowsep-1"
headers="identity-type-service__table_vyq_lpr_pyb__entry__3">List of
member_id enabled for: <code
class="ph codeph">“include_subset”</code></td>
</tr>
</tbody>
</table>



>

## Example

**Create an identifier**

``` pre
$ cat new_identifier.json
{
  "identity_type": {
      "source": "test.com",
      "member_owner_id": 958,
      "requires_platform_resolution": true,
      "identity_resolver_check": true,
      "is_auction_usage_single_context": true,
      "is_passthrough": true,
      "requires_seat_resolution": false,
      "requires_rti_partner_match": false,
      "rti_partner": "",
      "is_experimental": false,
      "opt_out_default": false,
      "status": "active",
      "enforce_adx_specification": false,
      "auction_participation_control": {
        "allow_participation": "include_subset",
        "participant_member_list": [
          123,
          456
        ]
      },
      "audience_segmentation_control": {
        "allow_segmentation": "include_subset",
        "segmentation_member_list": [
          456
        ]
      },
      "external_bidder_control": {
        "allow_bidders": "all",
        "external_bidder_list": [
          111,
          112
        ]
      },
      "lld_exposure_control": {
        "lld_exposure_allowed": "include_subset",
        "exposure_member_list": [
          311,
          312
        ]
      }
    }
  }
$ curl -b cookie -c cookie -X POST  'https://api.appnexus.com/identity-type'
{
    "response": {
        "status":"OK",
        "id":IDENTITY_ID_001
        }
        }
```



<b>Note:</b> For newly registered sources, IDs
are generated in the incremental order, whereas the rest of the field
values are stored in the database based on the request sent through the
API.



**View the details of a specific identifier**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/identity-type?id=IDENTITY_ID_001'
{
  "response": {
    "status": "OK",
    "identity_type": {
        "id": IDENTITY_ID_001,
        "source": "test.com",
        "member_owner_id": 958,
        "requires_platform_resolution": true,
        "identity_resolver_check": true,
        "is_auction_usage_single_context": true,
        "is_passthrough": true,
        "requires_seat_resolution": false,
        "requires_rti_partner_match": false,
        "rti_partner": "",
        "is_experimental": false,
        "opt_out_default": false,
        "status": "active",
        "enforce_adx_specification": false,
        "auction_participation_control": {
          "allow_participation": "include_subset",
          "participant_member_list": [
            123,
            456
          ]
        },
        "audience_segmentation_control": {
        "allow_segmentation": "include_subset",
        "segmentation_member_list": [
          456
         ]
        },
        "external_bidder_control": {
        "allow_bidders": "all",
        "external_bidder_list": [
          111,
          112
         ]
        },
        "lld_exposure_control": {
        "lld_exposure_allowed": "include_subset",
        "exposure_member_list": [
          311,
          312
        ]
      }
    }
  }
}
```





## Related Topics

- <a href="identity-type-participant-service.md" class="xref">Identity
  Type Participant Service</a>






