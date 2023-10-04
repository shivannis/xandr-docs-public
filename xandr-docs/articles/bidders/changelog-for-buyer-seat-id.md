---
Title : Changelog for Buyer Seat ID
Description : This documents all of the changes between member id integration and
buyer seat id integration.
---


# Changelog for Buyer Seat ID



This documents all of the changes between member id integration and
buyer seat id integration.



## Changes in Bidder Integration

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273c__entry__1"
class="entry colsep-1 rowsep-1">Category</th>
<th id="ID-0000273c__entry__2" class="entry colsep-1 rowsep-1">Legacy
Member ID Integration Behavior</th>
<th id="ID-0000273c__entry__3" class="entry colsep-1 rowsep-1">Buyer
Seat ID Integration Behavior</th>
<th id="ID-0000273c__entry__4" class="entry colsep-1 rowsep-1">More
Information</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__1">Bidder Object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__2">Existing Settings Managed in bidder
Object:
<ul>
<li>21+ fields that manage bidder settings</li>
</ul></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__3">Additional New Fields added:
<ul>
<li>max_seats</li>
<li>default_member_id</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__4"><a
href="bidder-service.html" class="xref">Bidder Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__1">Creative Registration</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__2">Creatives must be uploaded to the <span
class="ph">Xandr Member ID that will be used to bid with the
creative</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__3">All
creatives can be registered with the bidder's default_member_id set on
the bidder object
<p>Any bidder seat can bid using creatives registered with the default
member id</p>
<p>Existing creatives will continue to be associated with the member
ids</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__4">Creative Service</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__1">Seat
Object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__2">Not
applicable to member id integration</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__3">New
API Service created to register bidder seat ids into <span
class="ph">Xandr Systems</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__4">Seat
Service</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__1">Reporting</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__2">All
Bidder reports can break out a bidder spend by the member ID entity.
This includes transaction reporting as well as bid error reporting</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__3">Bidders can access reporting on a buyer
member id level and buyer seat id level</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__4">Bidder UI Report Screen
<p>Report Service</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__1">Bid
Request</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__2">Eligible buyers for an impression are
indicated in the request.wseat field of the bid request
<p>deal.wseat field will include the Xandr
member ID eligible to bid on the deal</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__3">request.wseat field will not be included
in the bid request
<p>deal.wseat field will include the Xandr
member ID on legacy deals</p>
<p>deal.wseat field will include the buyer seat id on new seat id
deals</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__4"><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">ortb bid request to bidders</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__1">Bid
Response</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__2">seatbid.seat field should include the
Xandr member id bidding on the impression</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__3">seatbid.seat field should include the
buyer seat id</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__4"><a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">ortb bid response from bidder</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__1">Deals</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__2">Xandr publishers
can set up deals with bidder buyer members</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__3">Xandr publishers
can set up deals with bidder buyer seats</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000273c__entry__4"><a
href="deal-buyer-access-service.html" class="xref">Deal Buyer Access
Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__1">Virtual Marketplace - Transparency
Feed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__2">Bidder requests a new member id for
virtual marketplace buyer and set up user access for data from this
member.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__3">Bidder shares seat ID(s) to be used by
virtual marketplace buyers. Xandr will create
member IDs that will correspond to these seats and set up mappings.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273c__entry__4"></td>
</tr>
</tbody>
</table>






