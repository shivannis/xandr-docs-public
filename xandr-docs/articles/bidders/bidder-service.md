---
Title : Bidder Service
Description : The Bidder Service connects a bidder to
ms.date : 10/28/2023
Xandr's impression bus and allows the bidder and
the impression bus to begin communication. Your
---


# Bidder Service



The Bidder Service connects a bidder to
Xandr's impression bus and allows the bidder and
the impression bus to begin communication. Your
Xandr representative will create the bidder in
the system, and you will use the Bidder Service to make modifications or
retrieve your bidder ID.

You may need your bidder ID for some of the Services. To find out what
your bidder ID is, run the "see all bidders" command described below.

Some bidder functions are accessible only to certain users, as they are
based upon contractual obligations:

- Modifying the data provider fields (via `PUT`) - requires a data
  access agreement with each provider

In bidder sandbox environments, all functionality is available for
integration purposes.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000105c__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000105c__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000105c__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__2"><a
href="https://api.adnxs.com/bidder/" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder/</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__3">View
the bidder that your user has permissions to. It won't show other users'
bidders.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__2"><a
href="https://api.adnxs.com/bidder/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__3">View
a particular bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__2"><a
href="https://api.adnxs.com/bidder" class="xref"
target="_blank">https://api.adnxs.com/bidder</a>
<p>(bidder JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__3">Add
a new bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__2"><a
href="https://api.adnxs.com/bidder/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder/BIDDER_ID</a>
<p>(bidder JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__3">Modify an existing bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__2"><a
href="https://api.adnxs.com/bidder/BIDDER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/bidder/BIDDER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__3">Delete an existing bidder.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000105c__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000105c__entry__20"
class="entry colsep-1 rowsep-1">Required</th>
<th id="ID-0000105c__entry__21"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000105c__entry__22"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">yes, on update</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
ID of the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">short_name</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">An
optional short name for the bidder. While not technically required, this
field is necessary for metrics, so it should be considered required. 

<b>Note:</b> Only alphanumeric characters
(A-Z, 0-9) and underscores are allowed. Please do not use spaces,
special characters, periods, or other punctuation marks.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Name associated with the bidder.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">no,
default is true</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Whether the bidder will receive
requests or not.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">bid_uri</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
URI for bid requests (for example, <code
class="ph codeph">/bid</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">notify_uri</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string (255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
URI for notification requests (for example, /<code
class="ph codeph">notify</code>). Use null, not an empty string, to set
this to blank.

<b>Note:</b>
<ul>
<li>The <code class="ph codeph">notify_uri</code> must be a relative
URI. Xandr does not currently support putting
the <code class="ph codeph">bid_uri</code> and <code
class="ph codeph">notify_uri</code> on separate hosts.</li>
<li>If null, the bidder does not receive notify requests.<br />
</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">click_uri</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
URI for click requests (for example, <code
class="ph codeph">/click</code>). Use null, not an empty string, to set
this to blank. See <a
href="click-request.md"
class="xref" target="_blank">Click Request</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">pixel_uri</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
URI for pixel requests (for example, <code
class="ph codeph">/pixel</code>). Use null, not an empty string, to set
this to blank. See <a
href="https://wiki.xandr.com/display/adnexusdocumentation/Pixel%2bRequest"
class="xref" target="_blank">Pixel Request</a> (login required).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">ready_uri</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string(50)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
URI for a <a
href="bidder-instance-service.md"
class="xref" target="_blank">Bidder Instance</a> status check (for
example, <code class="ph codeph">/ready</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">audit_notify_uri</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string(255)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
URI for passing creative auditing updates (eg
https://send.mycompany.com/auditnotifyrequests)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">parent_profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
ID of the parent bidder profile. Bidder profiles can be used to filter
bid request traffic that reaches a bidder. See <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a> and <a
href="bidder-profile---faq.md"
class="xref" target="_blank">Bidder Profile - FAQ</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">child_profiles</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Array of objects with the ID of the <a
href="legacy-bidder-profile-service.md" class="xref">bidder
profiles</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Array of objects specifying the child
profiles to be used. For example: <code
class="ph codeph">[{"id":123}, {"id":124}]</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">dongle</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">A
password that protects a bidder's debug output in a debug impression.
See <code class="ph codeph">debug_text</code> in the <a
href="incoming-bid-response-from-bidders.md"
class="xref" target="_blank">Bid Response</a>. <strong>Available to
users of type "bidder" only</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">notify_full_auction</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Setting this to "true" means that the
impression bus will include <code class="ph codeph">full_tag_info</code>
and <code class="ph codeph">bid_info</code> in the <a
href="notify-request.md"
class="xref" target="_blank">Notify Request</a>. Post-pending notifies
(<code class="ph codeph">post_pending</code> set to <code
class="ph codeph">true</code> in the Notify Request) do not include
these tags because the bid acceptance callback has not yet been
received.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">notify_lost</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">no,
default is <code class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Indicates whether the bidder is
notified about all lost bids at the URI specified in the <code
class="ph codeph">notify_uri</code> field. If no URI is provided, no
notifications are sent.
<ul>
<li>If <code class="ph codeph">true</code>, the bidder is notified about
all lost bids.</li>
<li>If <code class="ph codeph">false</code>, the bidder is only notified
about lost bids with <a
href="bid-error-codes.md"
class="xref" target="_blank">Notify Request error code IDs</a> above
100. We don't log errors or send lost notifies if the error id is less
than 100 for OpenRTB bidders.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">notify_pending</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">no,
default is <code class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Indicates whether the bidder is
notified about pending bids at the URI specified in the <code
class="ph codeph">notify_uri</code> field. If no URI is provided, no
notifications are sent.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">notify_no_bid</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">no,
default is <code class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Indicates whether the bidder is
notified when the bidder has no bid for a request. The notification is
sent to the URI specified in the <code
class="ph codeph">notify_uri</code> field. If no URI is provided, no
notifications are sent.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">exclude_unowned</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Exclude inventory not owned by a member
associated with this bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">send_unaudited</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__20">no,
default is <code class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">This flag determines whether or not
your bidder will be sent unaudited traffic.

<b>Warning:</b> Strictly speaking, this field
is deprecated, but it should ALWAYS be set to <code
class="ph codeph">true</code>. If this field is set to <code
class="ph codeph">false</code>, your bidder will not receive any <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Requests</a>.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">bid_percent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
percent (50 = 50%) of total platform traffic that you wish to receive.
Requests that are sent to your bidder are randomly chosen, although you
can choose for your bidder to always receive requests for users in
segments of members associated with your bidder. If you set bid_percent
to 0, your bidder will only receive requests for users in at least one
of your members' segments. This filter is applied to traffic that makes
it through the <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">always_send_owned_segments</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Determines whether impressions for
users in segments owned by or shared with the Bidder should bypass
passthrough_percent on <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Bidder Profiles</a>.

<b>Note:</b> This only overrides the
passthrough_percent on the bidder profile; all other restrictions such
as country, member, size, or domain filters would still be taken into
consideration when deciding whether an impression will be sent to the
bidder. 
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">object_limit_notify_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Xandr limits
the number of objects each bidder can create and use on the platform.
This limit includes inactive and unused objects. This field contains the
email addresses that will be notified when you hit the 85%, 95%, and
100% threshold for object limits.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">protocol_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22"><strong>Read-only</strong>. This
describes the protocol associated with this bidder, which describes the
type of bidder it is. For example, a <code
class="ph codeph">protocol_id</code> of <code class="ph codeph">6</code>
means that this bidder uses the OpenRTB 2.0 specification for its
integration with Xandr. The default integration
value for a newly created bidder is <code
class="ph codeph">1, </code><code class="ph codeph">none</code>. This is
the default protocol as defined in <a
href="outgoing-bid-request-to-bidders.md"
class="xref" target="_blank">Bid Request</a> and <a
href="incoming-bid-response-from-bidders.md"
class="xref" target="_blank">Bid Response</a>. Bidders with a <code
class="ph codeph">protocol_id</code> of 6 integrate according to the <a
href="http://www.iab.net/media/file/OpenRTB_API_Specification_Version2.0_FINAL.PDF"
class="xref" target="_blank">OpenRTB 2.0 Spec (PDF)</a>.
<p><a
href="bidding-protocol.md"
class="xref" target="_blank">Spec for OpenRTB 2.4</a>, protocol_id
:10</p>
<p>The following values are supported (each ID is followed by the <code
class="ph codeph">protocol_name</code> associated with that ID):</p>
<ul>
<li>1: <code class="ph codeph">none</code></li>
<li>2: <code class="ph codeph">wp7</code></li>
<li>3: <code class="ph codeph">contentads</code></li>
<li>4: <code class="ph codeph">admarket</code></li>
<li>5: <code class="ph codeph">adexpert</code></li>
<li>6: <code class="ph codeph">openrtb2.0</code></li>
<li><code class="ph codeph">10: openrtb2.4</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">protocol_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22"><strong>Read-only</strong>. The name of
the protocol associated with this bidder. See the definition of <code
class="ph codeph">protocol_id</code>   above for all of the the accepted
values of   <code class="ph codeph">protocol_id</code>   and their
mappings to names.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000105c__entry__22">The
timestamp of last modification to this bidder instance.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">max_seats</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Bidders bidding with custom buyer seat
IDs will have this field include a value greater than 0. This is the
maximum number of seats allowed to be registered under a bidder.

<b>Note:</b> This feature is currently in
Closed Beta. If you are interested in participating, please reach out to
your Xandr representative.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__19"><code
class="ph codeph">default_member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__20">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__21">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000105c__entry__22">Bidders using buyer seat ID bidding
will have a default member designated in this field. Note the default
member will be the main billing member for the bidder and is also used
as the member ID for creative registration.

<b>Note:</b> This feature is currently in
Closed Beta. If you are interested in participating, please reach out to
your Xandr representative.
</td>
</tr>
</tbody>
</table>



<b>Note:</b> Use Bidder Profile Service to
Filter and Throttle.



To filter the traffic your bidder will receive, please use the <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a>. A few
filtering and throttling fields still exist in the Bidder Service, but
they will be migrated to the Bidder Profile Service soon. Class filters
are available in both; we recommend using the Bidder Profile Service for
these.





## Deprecated fields

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">send_class_2</code></td>
<td class="entry colsep-1 rowsep-1">no, default is <code
class="ph codeph">true</code></td>
<td class="entry colsep-1 rowsep-1">Boolean</td>
<td class="entry colsep-1 rowsep-1">This flag determines whether or not
your bidder will be sent Class 2 traffic. Please note that throttling by
inventory class is also possible via the <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">send_class_3</code></td>
<td class="entry colsep-1 rowsep-1">no, default is <code
class="ph codeph">true</code></td>
<td class="entry colsep-1 rowsep-1">Boolean</td>
<td class="entry colsep-1 rowsep-1">This flag determines whether or not
your bidder will be sent Class 3 traffic. Please note that throttling by
inventory class is also possible via the <a
href="legacy-bidder-profile-service.md"
class="xref" target="_blank">Legacy Bidder Profile Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">send_unaudited</code></td>
<td class="entry colsep-1 rowsep-1">no, default is <code
class="ph codeph">false</code></td>
<td class="entry colsep-1 rowsep-1">Boolean</td>
<td class="entry colsep-1 rowsep-1">This flag determines whether or not
your bidder will be sent unaudited traffic.

<b>Note:</b> Throttling by inventory class is
also possible via the <a href="legacy-bidder-profile-service.md"
class="xref">Legacy Bidder Profile Service</a>.


<b>Warning:</b> You must set this field in
order to see bid requests
<p>You <strong>must</strong> set <code
class="ph codeph">send_unaudited</code> to <code
class="ph codeph">true</code> in order for your bidder to receive bid
requests. For more information, see <a
href="integrate-a-bidder.md"
class="xref" target="_blank">Integrate a Bidder</a>.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">send_owned_blacklist</code></td>
<td class="entry colsep-1 rowsep-1">no</td>
<td class="entry colsep-1 rowsep-1">Boolean</td>
<td class="entry colsep-1 rowsep-1">Send blocklist inventory if owned by
a member associated with this bidder.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">userdata_entity_id</code></td>
<td class="entry colsep-1 rowsep-1">no</td>
<td class="entry colsep-1 rowsep-1">int</td>
<td class="entry colsep-1 rowsep-1">This field is deprecated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">userdata_javascript</code></td>
<td class="entry colsep-1 rowsep-1">no</td>
<td class="entry colsep-1 rowsep-1">string</td>
<td class="entry colsep-1 rowsep-1">Custom JavaScript functions that can
be called when a bidder updates a user's cookie data.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">setuid_function</code></td>
<td class="entry colsep-1 rowsep-1">no</td>
<td class="entry colsep-1 rowsep-1">string</td>
<td class="entry colsep-1 rowsep-1">The name of the JavaScript function
to be used on <em>SetUID</em> calls.</td>
</tr>
</tbody>
</table>





## Examples

**Authentication Token**

Authentication is always the first step when using the API Services. The
authentication token can then be written to our cookie file for future
use. Please see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
detailed instructions.

**View bidder information**

If Xandr has already added your bidder for you,
you will already have some bidder information, like your bidder ID, in
JSON format. You can view this information with the below command.

``` pre
S curl -b cookies -c cookies "https://api.adnxs.com/bidder"
{
   "response":{
      "status":"OK",
      "bidder":{
         "id":4,
         "name":"Test Bidder",
         "short_name":"TestBidder",
         "active":true,
         "parent_profile_id": 12345,
         "child_profiles":[{"id":1000},{"id":2000},{"id":3000}],
         "bid_uri":"/bid",
         "notify_uri":"/notify",
         "click_uri":null,
         "ready_uri":null,
         "pixel_uri":"/pixel",
         "audit_notify_uri":null,
         "last_activity":"2009-01-07 22:07:08"
      }
   }
```

**Modify a bidder**

Now that you know your bidder ID, you can use a text file in JSON format
to modify your bidder. Below is an example JSON that will change the
ready URI parameter. (Note that only these included fields will be
updated. All other fields will be unchanged.)

``` pre
$ cat bidder
{
      "bidder":{
         "id":4,
         "ready_uri":"/ready"
      }
   }
```

Then you use the PUT command to update this data in the impression bus
cache.

``` pre
$ curl -b cookies -c cookies -X PUT --data-binary @bidder 'https://api.adnxs.com/bidder/4'
{
   "response":{
      "status":"OK",
      "id":4
   }
}
```

Now when you view Bidder 4, you get:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/bidder/4'
{
   "response":{
      "status":"OK",
      "bidder":{
         "id":4,
         "name":"Test Bidder",
         "short_name":"TestBidder",
         "active":true,
         "parent_profile_id": 12345,
         "child_profiles":[{"id":1000},{"id":2000},{"id":3000}],      
         "bid_uri":"/bid",
         "notify_uri":"/notify",
         "click_uri":null,
         "ready_uri":"/ready",
         "ready_string":"Ready:1"
         "pixel_uri":"/pixel",
         "audit_notify_uri":null,
         "last_activity":"2009-01-07 22:07:08"
      }
      }
```





## Related Topics

- <a href="legacy-bidder-profile-service.md" class="xref">Legacy Bidder
  Profile Service</a>
- <a
  href="bidder-profile---faq.md"
  class="xref" target="_blank">Bidder Profile - FAQ</a>
- <a href="bidder-instance-service.md" class="xref">Bidder Instance
  Service</a>
- <a
  href="integrate-a-bidder.md"
  class="xref" target="_blank">Integrate a Bidder</a>






