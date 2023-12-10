---
Title : Mediated Bid Service
ms.date: 10/28/2023
ms.custom: digital-platform-api
<b>Note:</b> Only available to Monetize Ad
Server customers.
---


# Mediated Bid Service







<b>Note:</b> Only available to Monetize Ad
Server customers.





This service is used to create and view mediated bids. Mediated bids are
an abstraction over a particular line item, campaign, and creative
combination that we've created to represent demand from mediated
networks in our auction.

Every bid is associated with a mediated network. For more information
about mediated networks, see the <a
href="mediated-network-service.md"
class="xref" target="_blank">Mediated Network Service</a>.

>

## REST API



<table id="mediate-bid-service__table_pcx_kll_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="mediate-bid-service__table_pcx_kll_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="mediate-bid-service__table_pcx_kll_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="mediate-bid-service__table_pcx_kll_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__2"><a
href="https://api.appnexus.com/mediated-bid?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/mediated-bid?member_id=MEMBER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__3">View all of a
member's bids.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__2"><a
href="https://api.appnexus.com/mediated-bid?id=BID_ID" class="xref"
target="_blank">https://api.appnexus.com/mediated-bid?id=BID_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__3">View a
specific bid.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__2"><a
href="https://api.appnexus.com/mediated-bid?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/mediated-bid?member_id=MEMBER_ID</a>
(+ JSON payload)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__3">Create a new
bid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__2"><a
href="https://api.appnexus.com/mediated-bid?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/mediated-bid?member_id=MEMBER_ID</a>
(+ JSON payload)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__3">Modify a
bid.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__2"><a
href="http://api.apnexus.com/mediated-bid?id=BID_ID" class="xref"
target="_blank">http://api.apnexus.com/mediated-bid?id=BID_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pcx_kll_twb__entry__3">Delete a
bid.</td>
</tr>
</tbody>
</table>





>

## JSON Fields



<table id="mediate-bid-service__table_jxc_qll_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="mediate-bid-service__table_jxc_qll_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="mediate-bid-service__table_jxc_qll_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="mediate-bid-service__table_jxc_qll_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">A unique ID
for this bid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><p>The type
of bid. Always <code class="ph codeph">"mobile"</code>.</p>
<p><strong>Default:</strong> <code class="ph codeph">mobile </code></p>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>
only; not applicable in <code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><p>The
user-supplied name of the bid.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><p>Whether
this mediated bid is able to participate in auctions.</p>
<p><strong>Default:</strong> <code class="ph codeph">true</code></p>
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">The unique ID
number of the member associated with this bid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">The unique ID
of the line item associated with this bid.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">campaign_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">The unique ID
of the campaign associated with this bid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">creative_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">The unique ID
of the creative associated with this bid.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">profile_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">The unique ID
of the targeting profile associated with this bid.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">auto_bid_adjustments_enabled</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">If enabled,
Xandr will use an algorithm to determine the best estimate of what the
network will pay and automatically update the bid as conditions
change.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">date
time</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><strong>Read-only.</strong>
The date and time that this bid object was last modified.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">mediated_network</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">Information
about the mediated network to which this bid is associated. For field
definitions, see the <a
href="mediated-network-service.md"
class="xref" target="_blank">Mediated Network Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">mediated_network_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><p>The unique
ID of the mediated network to which this bid is associated. For field
definitions, see the <a
href="mediated-network-service.md"
class="xref" target="_blank">Mediated Network Service</a>.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">campaign</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">Information
about the campaign to which this bid is associated. For field
definitions, see the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">line-item</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><p>Information
about the line item to which this bid is associated. For field
definitions, see the <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a> .</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">profile</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">Information
about the profile to which this bid is associated. For field
definitions, see the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">creative</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">object</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3"><p>Information
about the creative associated with this bid. For field definitions, see
the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>.</p>
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">reporting_macros</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">See the <a
href="mediated-bid-service.md#MediatedBidService-ReportingMacros"
class="xref" target="_blank">Reporting Macros</a> section below.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__1"><code
class="ph codeph">label</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__2">array of
objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_jxc_qll_twb__entry__3">The
user-supplied label attached to this bid. This is an arbitrary string
with no purpose other than sorting in the UI.</td>
</tr>
</tbody>
</table>





>

## Reporting Macros



<table id="mediate-bid-service__table_zwt_wll_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="mediate-bid-service__table_zwt_wll_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="mediate-bid-service__table_zwt_wll_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="mediate-bid-service__table_zwt_wll_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Sort by?</th>
<th id="mediate-bid-service__table_zwt_wll_twb__entry__4"
class="entry align-left colsep-1 rowsep-1">Filter by?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__3">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__4">Yes</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__1"><code
class="ph codeph">template_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__3">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__4">Yes</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__1"><code
class="ph codeph">parameter</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__3">No</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__4">No</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__3">No</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__4">No</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__3">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_zwt_wll_twb__entry__4">Yes</td>
</tr>
</tbody>
</table>

**Label**

<table id="mediate-bid-service__table_pnx_zll_twb" class="table">
<thead class="thead">
<tr class="header row">
<th id="mediate-bid-service__table_pnx_zll_twb__entry__1"
class="entry align-left colsep-1 rowsep-1">Name</th>
<th id="mediate-bid-service__table_pnx_zll_twb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="mediate-bid-service__table_pnx_zll_twb__entry__3"
class="entry align-left colsep-1 rowsep-1">Sort by?</th>
<th id="mediate-bid-service__table_pnx_zll_twb__entry__4"
class="entry align-left colsep-1 rowsep-1">Filter by?</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pnx_zll_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pnx_zll_twb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pnx_zll_twb__entry__3">Yes</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="mediate-bid-service__table_pnx_zll_twb__entry__4">No</td>
</tr>
</tbody>
</table>





>

## Examples



**See all of a member's bids**

``` pre
$ curl -b cookies 'https://api.appnexus.com/mediated-bid?member_id=4371'

{
    "response":{
        "status":"OK",
        "count":8,
        "start_element":0,
        "num_elements":100,
        "mediated-bids":[
            {
                "id":891,
                "type":"mobile",
                "name":"test",
                "active":true,
                "member_id":4371,
                "line_item_id":186586,
                "campaign_id":421866,
                "creative_id":838628,
                "profile_id":358973,
                "suggested_bid_price": 25.4,
                "suggested_bid_price_confidence": 0.6,
                "auto_bid_adjustments_enabled": true,
               Â "last_modified":"2014-05-12 23:18:37",
                "mediated_network":{
                    "id":455,
                    "advertiser_id":111308,
                    "name":"inMobi",
                    "creative_custom_request_partner_id":41,
                    "active":true
                },
                "campaign":{
                    "id":421866,
                    "state":"active",
                    "parent_inactive":false,
                    "code":null,
                    "advertiser_id":111308,
                    "line_item_id":186586,
                    "creative_id":838628,
                    "pixel_id":null,
                    "short_name":null,
                    "name":"",
                    "profile_id":358973,
                    "start_date":"2014-05-12 00:00:00",
                    "end_date":null,
                    "timezone":"EST5EDT",
                    "priority":5,
                    "cadence_modifier_enabled":false,
                    "cpc_goal":null,
                    "cpm_bid_type":"margin",
                    "base_bid":null,
                    "min_bid":null,
                    "max_bid":null,
                    "bid_margin":0,
                    "roadblock_creatives":false,
                    "roadblock_type":"no_roadblock",
                    "inventory_type":"direct",
                    "last_modified":"2014-05-12 20:17:03",
                    "max_learn_bid":null,
                    "cadence_type":"advertiser",
                    "member_id":4371,
                    "click_url":null,
                    "require_cookie_for_tracking":true,
                    "allow_unverified_ecp":false,
                    "defer_to_li_prediction":false,
                    "ecp_learn_divisor":null,
                    "projected_learn_events":null,
                    "confidence_threshold":null,
                    "learn_threshold":3,
                    "cpc_payout":null,
                    "comments":null,
                    "optimization_lever_mode":"automatic",
                    "optimization_version":"v7",
                    "learn_override_type":null,
                    "base_cpm_bid_value":null,
                    "impression_limit":40000,
                    "bid_multiplier":1,
                    "is_malicious":false,
                    "remaining_days":null,
                    "total_days":null,
                    "supply_type":"mobile_app",
                    "creatives":[
                        {
                            "id":838628,
                            "mapping_state":"active",
                            "code":null,
                            "name":null,
                            "width":468,
                            "height":60,
                            "state":"active",
                            "audit_status":"no_audit",
                            "is_expired":false,
                            "is_prohibited":false,
                            "is_self_audited":true,
                            "format":"raw-js",
                            "pop_window_maximize":null
                        }
                    ],
                    "pixels":null,
                    "optimization_lookback":null,
                    "campaign_modifiers":null,
                    "labels":null,
                    "broker_fees":null,
                    "valuation":null,
                    "lifetime_budget":null,
                    "lifetime_budget_imps":null,
                    "daily_budget":null,
                    "daily_budget_imps":null,
                    "enable_pacing":null,
                    "lifetime_pacing":null,
                    "lifetime_pacing_span":null,
                    "allow_safety_pacing":null
                },
                "line-item":{
                    "id":186586,
                    "code":null,
                    "name":"test",
                    "advertiser_id":111308,
                    "state":"active",
                    "start_date":null,
                    "end_date":null,
                    "timezone":"EST5EDT",
                    "discrepancy_pct":0,
                    "publishers_allowed":"all",
                    "revenue_value":2,
                    "revenue_type":"cpm",
                    "goal_type":"none",
                    "goal_value":null,
                    "last_modified":"2014-05-12 23:18:37",
                    "click_url":null,
                    "currency":"USD",
                    "require_cookie_for_tracking":true,
                    "profile_id":null,
                    "member_id":4371,
                    "comments":null,
                    "is_malicious":false,
                    "remaining_days":null,
                    "total_days":null,
                    "manage_creative":false,
                    "advertiser":{
                        "id":111308,
                        "name":"inMobi"
                    },
                    "flat_fee":null,
                    "labels":null,
                    "broker_fees":null,
                    "pixels":null,
                    "insertion_orders":null,
                    "goal_pixels":null,
                    "imptrackers":null,
                    "clicktrackers":null,
                    "campaigns":[
                        {
                            "id":421866,
                            "name":"",
                            "inventory_type":"direct",
                            "state":"active",
                            "cpm_bid_type":"margin"
                        }
                    ],
                    "valuation":null,
                    "creatives":null,
                    "lifetime_budget":null,
                    "lifetime_budget_imps":null,
                    "daily_budget":null,
                    "daily_budget_imps":null,
                    "enable_pacing":null,
                    "lifetime_pacing":null,
                    "lifetime_pacing_span":null,
                    "allow_safety_pacing":null
                },
                "profile":{
                    "id":358973,
                    "code":null,
                    "description":null,
                    "country_action":"exclude",
                    "region_action":"exclude",
                    "city_action":"exclude",
                    "browser_action":"exclude",
                    "use_inventory_attribute_targets":false,
                    "last_modified":"2014-05-12 20:17:03",
                    "daypart_timezone":null,
                    "dma_action":"exclude",
                    "domain_action":"exclude",
                    "domain_list_action":"exclude",
                    "inventory_action":"exclude",
                    "language_action":"exclude",
                    "segment_boolean_operator":"and",
                    "min_session_imps":null,
                    "session_freq_type":"platform",
                    "carrier_action":"exclude",
                    "supply_type_action":"include",
                    "device_type_action":"exclude",
                    "screen_size_action":"exclude",
                    "device_model_action":"exclude",
                    "location_target_radius":null,
                    "location_target_latitude":null,
                    "location_target_longitude":null,
                    "querystring_action":"exclude",
                    "querystring_boolean_operator":"and",
                    "is_expired":false,
                    "non_audited_url_action":"include",
                    "daypart_bitmap":null,
                    "advertiser_id":111308,
                    "publisher_id":null,
                    "max_session_imps":null,
                    "max_day_imps":null,
                    "max_lifetime_imps":null,
                    "max_page_imps":null,
                    "min_minutes_per_imp":null,
                    "venue_action":"exclude",
                    "operating_system_action":"exclude",
                    "require_cookie_for_freq_cap":true,
                    "trust":"seller",
                    "allow_unaudited":true,
                    "is_template":false,
                    "created_on":"2014-05-12 20:17:03",
                    "operating_system_family_action":"exclude",
                    "use_operating_system_extended_targeting":true,
                    "mobile_app_instance_action_include":false,
                    "mobile_app_instance_list_action_include":false,
                    "user_group_targets":null,
                    "country_targets":null,
                    "region_targets":null,
                    "city_targets":null,
                    "inv_class_targets":null,
                    "inventory_source_targets":null,
                    "inventory_attribute_targets":null,
                    "age_targets":null,
                    "daypart_targets":null,
                    "browser_targets":null,
                    "browser_family_targets":null,
                    "dma_targets":null,
                    "domain_targets":null,
                    "domain_list_targets":null,
                    "language_targets":null,
                    "size_targets":null,
                    "postal_code_targets":null,
                    "member_targets":null,
                    "segment_group_targets":null,
                    "carrier_targets":null,
                    "supply_type_targets":[
                        "mobile_app",
                        "mobile_web"
                    ],
                    "device_type_targets":null,
                    "screen_size_targets":null,
                    "device_model_targets":null,
                    "querystring_targets":null,
                    "gender_targets":null,
                    "intended_audience_targets":null,
                    "inventory_group_targets":null,
                    "inventory_network_resold_targets":null,
                    "ip_targets":null,
                    "operating_system_targets":null,
                    "operating_system_family_targets":null,
                    "position_targets":null,
                    "site_targets":null,
                    "venue_targets":null,
                    "operating_system_extended_targets":null,
                    "mobile_app_instance_targets":null,
                    "mobile_app_instance_list_targets":null,
                    "content_category_targets":null,
                    "deal_targets":null,
                    "placement_targets":[
                        {
                            "id":1424815,
                            "action":"include",
                            "name":"Test Placement",
                            "deleted":false,
                            "site_id":281085,
                            "site_name":"Test App",
                            "publisher_id":147771,
                            "publisher_name":"Publisher A"
                        }
                    ],
                    "platform_content_category_targets":null,
                    "platform_placement_targets":null,
                    "platform_publisher_targets":null,
                    "publisher_targets":null,
                    "segment_targets":null,
                    "exelate_targets":null,
                    "ip_range_list_targets":null
                },
                "creative":{
                    "name":null,
                    "brand_id":184949,
                    "media_url":null,
                    "id":838628,
                    "code":null,
                    "code2":null,
                    "member_id":4371,
                    "state":"active",
                    "click_track_result":"not_tested",
                    "advertiser_id":111308,
                    "publisher_id":null,
                    "format":"raw-js",
                    "width":468,
                    "height":60,
                    "click_url":null,
                    "flash_click_variable":null,
                    "no_iframes":false,
                    "content":"document.write(\"\");",
                    "original_content":"no-tag",
                    "file_name":null,
                    "track_clicks":true,
                    "audit_status":"no_audit",
                    "macros":null,
                    "profile_id":null,
                    "audit_feedback":null,
                    "is_prohibited":false,
                    "is_suspicious":false,
                    "created_on":"2014-05-12 20:17:03",
                    "flash_backup_url":null,
                    "last_modified":"2014-05-12 20:17:03",
                    "is_control":false,
                    "allow_audit":false,
                    "is_expired":false,
                    "creative_upload_status":null,
                    "backup_upload_status":null,
                    "use_dynamic_click_url":false,
                    "media_subtypes":[
                        "banner"
                    ],
                    "size_in_bytes":0,
                    "google_audit_status":"no_audit",
                    "google_audit_feedback":null,
                    "msft_audit_status":"no_audit",
                    "msft_audit_feedback":null,
                    "msft_external_audit_status":"no_audit",
                    "msft_external_audit_feedback":null,
                    "is_self_audited":true,
                    "no_adservers":false,
                    "text_title":null,
                    "text_description":null,
                    "text_display_url":null,
                    "click_action":"click-to-web",
                    "click_target":null,
                    "ssl_status":"disabled",
                    "allow_ssl_audit":false,
                    "media_url_secure":null,
                    "content_secure":null,
                    "original_content_secure":null,
                    "flash_backup_url_secure":null,
                    "is_hosted":false,
                    "content_source":"mediation",
                    "landing_page_url":null,
                    "thirdparty_creative_id":null,
                    "thirdparty_campaign_id":null,
                    "facebook_audit_status":null,
                    "facebook_audit_feedback":null,
                    "custom_request_template":{
                        "id":"1",
                        "timeout_ms":"200",
                        "last_modified":"2014-05-12 20:17:03"
                    },
                    "language":{
                        "id":1,
                        "name":"English"
                    },
                    "pop_values":null,
                    "brand":{
                        "id":184949,
                        "name":"InMobi",
                        "category_id":53
                    },
                    "template":{
                        "id":5,
                        "name":"Standard",
                        "media_subtype_id":1,
                        "format_id":5
                    },
                    "thirdparty_page":null,
                    "custom_macros":[
                        {
                            "code":"MK_SITEID",
                            "value":"sdfd"
                        }
                    ],
                    "segments":null,
                    "folder":null,
                    "line_items":null,
                    "competitive_brands":null,
                    "competitive_categories":null,
                    "pixels":null,
                    "mobile":null,
                    "sla":null,
                    "sla_eta":null,
                    "currency":"USD"
                }
            },
            {
                "id":893,
                "type":"mobile",
                "name":"test a",
                "active":true,
                "member_id":4371,
                "line_item_id":186590,
                "campaign_id":421869,
                "creative_id":838631,
                "profile_id":358980,
                "suggested_bid_price": null,
                "suggested_bid_price_confidence": null,
                "auto_bid_adjustments_enabled": false,
               Â "last_modified":"2014-05-12 23:18:37",
                "mediated_network":{
                    "id":456,
                    "advertiser_id":111309,
                    "name":"Jumptap",
                    "creative_custom_request_partner_id":42,
                    "active":true
                },
                "campaign":{
                    "id":421869,
                    "state":"active",
                    "parent_inactive":false,
                    "code":null,
                    "advertiser_id":111309,
                    "line_item_id":186590,
                    "creative_id":838631,
                    "pixel_id":null,
                    "short_name":null,
                    "name":"",
                    "profile_id":358980,
                    "start_date":"2014-05-12 00:00:00",
                    "end_date":null,
                    "timezone":"EST5EDT",
                    "priority":5,
                    "cadence_modifier_enabled":false,
                    "cpc_goal":null,
                    "cpm_bid_type":"margin",
                    "base_bid":null,
                    "min_bid":null,
                    "max_bid":null,
                    "bid_margin":0,
                    "roadblock_creatives":false,
                    "roadblock_type":"no_roadblock",
                    "inventory_type":"direct",
                    "last_modified":"2014-05-12 21:19:59",
                    "max_learn_bid":null,
                    "cadence_type":"advertiser",
                    "member_id":4371,
                    "click_url":null,
                    "require_cookie_for_tracking":true,
                    "allow_unverified_ecp":false,
                    "defer_to_li_prediction":false,
                    "ecp_learn_divisor":null,
                    "projected_learn_events":null,
                    "confidence_threshold":null,
                    "learn_threshold":3,
                    "cpc_payout":null,
                    "comments":null,
                    "optimization_lever_mode":"automatic",
                    "optimization_version":"v7",
                    "learn_override_type":null,
                    "base_cpm_bid_value":null,
                    "impression_limit":40000,
                    "bid_multiplier":1,
                    "is_malicious":false,
                    "remaining_days":null,
                    "total_days":null,
                    "supply_type":"mobile_app",
                    "creatives":[
                        {
                            "id":838631,
                            "mapping_state":"active",
                            "code":null,
                            "name":null,
                            "width":468,
                            "height":60,
                            "state":"active",
                            "audit_status":"no_audit",
                            "is_expired":false,
                            "is_prohibited":false,
                            "is_self_audited":true,
                            "format":"raw-js",
                            "pop_window_maximize":null
                        }
                    ],
                    "pixels":null,
                    "optimization_lookback":null,
                    "campaign_modifiers":null,
                    "labels":null,
                    "broker_fees":null,
                    "valuation":null,
                    "lifetime_budget":null,
                    "lifetime_budget_imps":null,
                    "daily_budget":null,
                    "daily_budget_imps":null,
                    "enable_pacing":null,
                    "lifetime_pacing":null,
                    "lifetime_pacing_span":null,
                    "allow_safety_pacing":null
                },
                "line-item":{
                    "id":186590,
                    "code":null,
                    "name":"test a",
                    "advertiser_id":111309,
                    "state":"active",
                    "start_date":null,
                    "end_date":null,
                    "timezone":"EST5EDT",
                    "discrepancy_pct":0,
                    "publishers_allowed":"all",
                    "revenue_value":1.5,
                    "revenue_type":"cpm",
                    "goal_type":"none",
                    "goal_value":null,
                    "last_modified":"2014-05-12 23:18:37",
                    "click_url":null,
                    "currency":"USD",
                    "require_cookie_for_tracking":true,
                    "profile_id":null,
                    "member_id":4371,
                    "comments":null,
                    "is_malicious":false,
                    "remaining_days":null,
                    "total_days":null,
                    "manage_creative":false,
                    "advertiser":{
                        "id":111309,
                        "name":"Jumptap"
                    },
                    "flat_fee":null,
                    "labels":null,
                    "broker_fees":null,
                    "pixels":null,
                    "insertion_orders":null,
                    "goal_pixels":null,
                    "imptrackers":null,
                    "clicktrackers":null,
                    "campaigns":[
                        {
                            "id":421869,
                            "name":"",
                            "inventory_type":"direct",
                            "state":"active",
                            "cpm_bid_type":"margin"
                        }
                    ],
                    "valuation":null,
                    "creatives":null,
                    "lifetime_budget":null,
                    "lifetime_budget_imps":null,
                    "daily_budget":null,
                    "daily_budget_imps":null,
                    "enable_pacing":null,
                    "lifetime_pacing":null,
                    "lifetime_pacing_span":null,
                    "allow_safety_pacing":null
                },
                "profile":{
                    "id":358980,
                    "code":null,
                    "description":null,
                    "country_action":"exclude",
                    "region_action":"exclude",
                    "city_action":"exclude",
                    "browser_action":"exclude",
                    "use_inventory_attribute_targets":false,
                    "last_modified":"2014-05-12 21:19:59",
                    "daypart_timezone":null,
                    "dma_action":"exclude",
                    "domain_action":"exclude",
                    "domain_list_action":"exclude",
                    "inventory_action":"exclude",
                    "language_action":"exclude",
                    "segment_boolean_operator":"and",
                    "min_session_imps":null,
                    "session_freq_type":"platform",
                    "carrier_action":"exclude",
                    "supply_type_action":"include",
                    "device_type_action":"exclude",
                    "screen_size_action":"exclude",
                    "device_model_action":"exclude",
                    "location_target_radius":null,
                    "location_target_latitude":null,
                    "location_target_longitude":null,
                    "querystring_action":"exclude",
                    "querystring_boolean_operator":"and",
                    "is_expired":false,
                    "non_audited_url_action":"include",
                    "daypart_bitmap":null,
                    "advertiser_id":111309,
                    "publisher_id":null,
                    "max_session_imps":null,
                    "max_day_imps":null,
                    "max_lifetime_imps":null,
                    "max_page_imps":null,
                    "min_minutes_per_imp":null,
                    "venue_action":"exclude",
                    "operating_system_action":"exclude",
                    "require_cookie_for_freq_cap":true,
                    "trust":"seller",
                    "allow_unaudited":true,
                    "is_template":false,
                    "created_on":"2014-05-12 21:19:59",
                    "operating_system_family_action":"exclude",
                    "use_operating_system_extended_targeting":true,
                    "mobile_app_instance_action_include":false,
                    "mobile_app_instance_list_action_include":false,
                    "user_group_targets":null,
                    "country_targets":null,
                    "region_targets":null,
                    "city_targets":null,
                    "inv_class_targets":null,
                    "inventory_source_targets":null,
                    "inventory_attribute_targets":null,
                    "age_targets":null,
                    "daypart_targets":null,
                    "browser_targets":null,
                    "browser_family_targets":null,
                    "dma_targets":null,
                    "domain_targets":null,
                    "domain_list_targets":null,
                    "language_targets":null,
                    "size_targets":null,
                    "zip_targets":null,
                    "member_targets":null,
                    "segment_group_targets":null,
                    "carrier_targets":null,
                    "supply_type_targets":[
                        "mobile_app",
                        "mobile_web"
                    ],
                    "device_type_targets":null,
                    "screen_size_targets":null,
                    "device_model_targets":null,
                    "querystring_targets":null,
                    "gender_targets":null,
                    "intended_audience_targets":null,
                    "inventory_group_targets":null,
                    "inventory_network_resold_targets":null,
                    "ip_targets":null,
                    "operating_system_targets":null,
                    "operating_system_family_targets":null,
                    "position_targets":null,
                    "site_targets":null,
                    "venue_targets":null,
                    "operating_system_extended_targets":null,
                    "mobile_app_instance_targets":null,
                    "mobile_app_instance_list_targets":null,
                    "content_category_targets":null,
                    "deal_targets":null,
                    "placement_targets":[
                        {
                            "id":1424815,
                            "action":"include",
                            "name":"Test Placement",
                            "deleted":false,
                            "site_id":281085,
                            "site_name":"Test App",
                            "publisher_id":147771,
                            "publisher_name":"Publisher A"
                        }
                    ],
                    "platform_content_category_targets":null,
                    "platform_placement_targets":null,
                    "platform_publisher_targets":null,
                    "publisher_targets":null,
                    "segment_targets":null,
                    "exelate_targets":null,
                    "ip_range_list_targets":null
                },
                "creative":{
                    "name":null,
                    "brand_id":184951,
                    "media_url":null,
                    "id":838631,
                    "code":null,
                    "code2":null,
                    "member_id":4371,
                    "state":"active",
                    "click_track_result":"not_tested",
                    "advertiser_id":111309,
                    "publisher_id":null,
                    "format":"raw-js",
                    "width":468,
                    "height":60,
                    "click_url":null,
                    "flash_click_variable":null,
                    "no_iframes":false,
                    "content":"document.write(\"\");",
                    "original_content":"no-tag",
                    "file_name":null,
                    "track_clicks":true,
                    "audit_status":"no_audit",
                    "macros":null,
                    "profile_id":null,
                    "audit_feedback":null,
                    "is_prohibited":false,
                    "is_suspicious":false,
                    "created_on":"2014-05-12 21:19:59",
                    "flash_backup_url":null,
                    "last_modified":"2014-05-12 21:19:59",
                    "is_control":false,
                    "allow_audit":false,
                    "is_expired":false,
                    "creative_upload_status":null,
                    "backup_upload_status":null,
                    "use_dynamic_click_url":false,
                    "media_subtypes":[
                        "banner"
                    ],
                    "size_in_bytes":0,
                    "google_audit_status":"no_audit",
                    "google_audit_feedback":null,
                    "msft_audit_status":"no_audit",
                    "msft_audit_feedback":null,
                    "msft_external_audit_status":"no_audit",
                    "msft_external_audit_feedback":null,
                    "is_self_audited":true,
                    "no_adservers":false,
                    "text_title":null,
                    "text_description":null,
                    "text_display_url":null,
                    "click_action":"click-to-web",
                    "click_target":null,
                    "ssl_status":"disabled",
                    "allow_ssl_audit":false,
                    "media_url_secure":null,
                    "content_secure":null,
                    "original_content_secure":null,
                    "flash_backup_url_secure":null,
                    "is_hosted":false,
                    "content_source":"mediation",
                    "landing_page_url":null,
                    "thirdparty_creative_id":null,
                    "thirdparty_campaign_id":null,
                    "facebook_audit_status":null,
                    "facebook_audit_feedback":null,
                    "custom_request_template":{
                        "id":"4",
                        "timeout_ms":"200",
                        "last_modified":"2014-05-12 21:19:59"
                    },
                    "language":{
                        "id":1,
                        "name":"English"
                    },
                    "pop_values":null,
                    "brand":{
                        "id":184951,
                        "name":"Jumptap",
                        "category_id":53
                    },
                    "template":{
                        "id":5,
                        "name":"Standard",
                        "media_subtype_id":1,
                        "format_id":5
                    },
                    "thirdparty_page":null,
                    "custom_macros":[
                        {
                            "code":"PUB",
                            "value":"sdf"
                        },
                        {
                            "code":"SITE",
                            "value":"sf"
                        },
                        {
                            "code":"SPOT",
                            "value":"sdf"
                        }
                    ],
                    "segments":null,
                    "folder":null,
                    "line_items":null,
                    "competitive_brands":null,
                    "competitive_categories":null,
                    "pixels":null,
                    "mobile":null,
                    "sla":null,
                    "sla_eta":null,
                    "currency":"USD"
                }
            },
            {
                "id":894,
                "type":"mobile",
                "name":"Anybody home?",
                "active":true,
                "member_id":4371,
                "line_item_id":186595,
                "campaign_id":421875,
                "creative_id":838641,
                "profile_id":358987,
                "suggested_bid_price": null,
                "suggested_bid_price_confidence": null,
                "auto_bid_adjustments_enabled": false,
               Â "last_modified":"2014-05-22 18:03:53",
                "mediated_network":{
                    "id":457,
                    "advertiser_id":111313,
                    "name":"Apple iAd",
                    "creative_custom_request_partner_id":34,
                    "active":true
                },
                "campaign":{
                    "id":421875,
                    "state":"active",
                    "parent_inactive":false,
                    "code":null,
                    "advertiser_id":111313,
                    "line_item_id":186595,
                    "creative_id":838641,
                    "pixel_id":null,
                    "short_name":null,
                    "name":"",
                    "profile_id":358987,
                    "start_date":"2014-05-12 00:00:00",
                    "end_date":null,
                    "timezone":"EST5EDT",
                    "priority":5,
                    "cadence_modifier_enabled":false,
                    "cpc_goal":null,
                    "cpm_bid_type":"margin",
                    "base_bid":null,
                    "min_bid":null,
                    "max_bid":null,
                    "bid_margin":0,
                    "roadblock_creatives":false,
                    "roadblock_type":"no_roadblock",
                    "inventory_type":"direct",
                    "last_modified":"2014-05-22 18:03:53",
                    "max_learn_bid":null,
                    "cadence_type":"advertiser",
                    "member_id":4371,
                    "click_url":null,
                    "require_cookie_for_tracking":true,
                    "allow_unverified_ecp":false,
                    "defer_to_li_prediction":false,
                    "ecp_learn_divisor":null,
                    "projected_learn_events":null,
                    "confidence_threshold":null,
                    "learn_threshold":3,
                    "cpc_payout":null,
                    "comments":null,
                    "optimization_lever_mode":"automatic",
                    "optimization_version":"v7",
                    "learn_override_type":null,
                    "base_cpm_bid_value":null,
                    "impression_limit":40000,
                    "bid_multiplier":1,
                    "is_malicious":false,
                    "remaining_days":null,
                    "total_days":null,
                    "supply_type":"mobile_app",
                    "creatives":[
                        {
                            "id":838641,
                            "mapping_state":"active",
                            "code":null,
                            "name":null,
                            "width":320,
                            "height":50,
                            "state":"active",
                            "audit_status":"no_audit",
                            "is_expired":false,
                            "is_prohibited":false,
                            "is_self_audited":true,
                            "format":"raw-js",
                            "pop_window_maximize":null
                        }
                    ],
                    "pixels":null,
                    "optimization_lookback":null,
                    "campaign_modifiers":null,
                    "labels":null,
                    "broker_fees":null,
                    "valuation":null,
                    "lifetime_budget":null,
                    "lifetime_budget_imps":null,
                    "daily_budget":null,
                    "daily_budget_imps":null,
                    "enable_pacing":null,
                    "lifetime_pacing":null,
                    "lifetime_pacing_span":null,
                    "allow_safety_pacing":null
                },
                "line-item":{
                    "id":186595,
                    "code":null,
                    "name":"Anybody home?",
                    "advertiser_id":111313,
                    "state":"active",
                    "start_date":null,
                    "end_date":null,
                    "timezone":"EST5EDT",
                    "discrepancy_pct":0,
                    "publishers_allowed":"all",
                    "revenue_value":1,
                    "revenue_type":"cpm",
                    "goal_type":"none",
                    "goal_value":null,
                    "last_modified":"2014-05-22 18:03:53",
                    "click_url":null,
                    "currency":"USD",
                    "require_cookie_for_tracking":true,
                    "profile_id":null,
                    "member_id":4371,
                    "comments":null,
                    "is_malicious":false,
                    "remaining_days":null,
                    "total_days":null,
                    "manage_creative":false,
                    "advertiser":{
                        "id":111313,
                        "name":"Apple iAd"
                    },
                    "flat_fee":null,
                    "labels":null,
                    "broker_fees":null,
                    "pixels":null,
                    "insertion_orders":null,
                    "goal_pixels":null,
                    "imptrackers":null,
                    "clicktrackers":null,
                    "campaigns":[
                        {
                            "id":421875,
                            "name":"",
                            "inventory_type":"direct",
                            "state":"active",
                            "cpm_bid_type":"margin"
                        }
                    ],
                    "valuation":null,
                    "creatives":null,
                    "lifetime_budget":null,
                    "lifetime_budget_imps":null,
                    "daily_budget":null,
                    "daily_budget_imps":null,
                    "enable_pacing":null,
                    "lifetime_pacing":null,
                    "lifetime_pacing_span":null,
                    "allow_safety_pacing":null
                },
                "profile":{
                    "id":358987,
                    "code":null,
                    "description":null,
                    "country_action":"exclude",
                    "region_action":"exclude",
                    "city_action":"exclude",
                    "browser_action":"exclude",
                    "use_inventory_attribute_targets":false,
                    "last_modified":"2014-05-22 18:03:53",
                    "daypart_timezone":null,
                    "dma_action":"exclude",
                    "domain_action":"exclude",
                    "domain_list_action":"exclude",
                    "inventory_action":"exclude",
                    "language_action":"exclude",
                    "segment_boolean_operator":"and",
                    "min_session_imps":null,
                    "session_freq_type":"platform",
                    "carrier_action":"exclude",
                    "supply_type_action":"include",
                    "device_type_action":"exclude",
                    "screen_size_action":"exclude",
                    "device_model_action":"exclude",
                    "location_target_radius":null,
                    "location_target_latitude":null,
                    "location_target_longitude":null,
                    "querystring_action":"exclude",
                    "querystring_boolean_operator":"and",
                    "is_expired":false,
                    "non_audited_url_action":"include",
                    "daypart_bitmap":null,
                    "advertiser_id":111313,
                    "publisher_id":null,
                    "max_session_imps":null,
                    "max_day_imps":null,
                    "max_lifetime_imps":1,
                    "max_page_imps":null,
                    "min_minutes_per_imp":null,
                    "venue_action":"exclude",
                    "operating_system_action":"exclude",
                    "require_cookie_for_freq_cap":false,
                    "trust":"seller",
                    "allow_unaudited":true,
                    "is_template":false,
                    "created_on":"2014-05-22 18:03:53",
                    "operating_system_family_action":"exclude",
                    "use_operating_system_extended_targeting":true,
                    "mobile_app_instance_action_include":false,
                    "mobile_app_instance_list_action_include":false,
                    "user_group_targets":null,
                    "country_targets":null,
                    "region_targets":null,
                    "city_targets":null,
                    "inv_class_targets":null,
                    "inventory_source_targets":null,
                    "inventory_attribute_targets":null,
                    "age_targets":null,
                    "daypart_targets":null,
                    "browser_targets":null,
                    "browser_family_targets":null,
                    "dma_targets":null,
                    "domain_targets":null,
                    "domain_list_targets":null,
                    "language_targets":null,
                    "size_targets":null,
                    "zip_targets":null,
                    "member_targets":null,
                    "segment_group_targets":null,
                    "carrier_targets":null,
                    "supply_type_targets":[
                        "mobile_app",
                        "mobile_web"
                    ],
                    "device_type_targets":null,
                    "screen_size_targets":null,
                    "device_model_targets":null,
                    "querystring_targets":null,
                    "gender_targets":null,
                    "intended_audience_targets":null,
                    "inventory_group_targets":null,
                    "inventory_network_resold_targets":null,
                    "ip_targets":null,
                    "operating_system_targets":null,
                    "operating_system_family_targets":null,
                    "position_targets":null,
                    "site_targets":null,
                    "venue_targets":null,
                    "operating_system_extended_targets":null,
                    "mobile_app_instance_targets":null,
                    "mobile_app_instance_list_targets":null,
                    "content_category_targets":null,
                    "deal_targets":null,
                    "placement_targets":[
                        {
                            "id":1424815,
                            "action":"include",
                            "name":"Test Placement",
                            "deleted":false,
                            "site_id":281085,
                            "site_name":"Test App",
                            "publisher_id":147771,
                            "publisher_name":"Publisher A"
                        }
                    ],
                    "platform_content_category_targets":null,
                    "platform_placement_targets":null,
                    "platform_publisher_targets":null,
                    "publisher_targets":null,
                    "segment_targets":null,
                    "exelate_targets":null,
                    "ip_range_list_targets":null
                },
                "creative":{
                    "name":null,
                    "brand_id":184948,
                    "media_url":null,
                    "id":838641,
                    "code":null,
                    "code2":null,
                    "member_id":4371,
                    "state":"active",
                    "click_track_result":"not_tested",
                    "advertiser_id":111313,
                    "publisher_id":null,
                    "format":"raw-js",
                    "width":320,
                    "height":50,
                    "click_url":null,
                    "flash_click_variable":null,
                    "no_iframes":false,
                    "content":"document.write(\"\");",
                    "original_content":"no-tag",
                    "file_name":null,
                    "track_clicks":true,
                    "audit_status":"no_audit",
                    "macros":null,
                    "profile_id":null,
                    "audit_feedback":null,
                    "is_prohibited":false,
                    "is_suspicious":false,
                    "created_on":"2014-05-12 21:42:01",
                    "flash_backup_url":null,
                    "last_modified":"2014-05-22 18:03:53",
                    "is_control":false,
                    "allow_audit":false,
                    "is_expired":false,
                    "creative_upload_status":null,
                    "backup_upload_status":null,
                    "use_dynamic_click_url":false,
                    "media_subtypes":[
                        "banner"
                    ],
                    "size_in_bytes":0,
                    "google_audit_status":"no_audit",
                    "google_audit_feedback":null,
                    "msft_audit_status":"no_audit",
                    "msft_audit_feedback":null,
                    "msft_external_audit_status":"no_audit",
                    "msft_external_audit_feedback":null,
                    "is_self_audited":true,
                    "no_adservers":false,
                    "text_title":null,
                    "text_description":null,
                    "text_display_url":null,
                    "click_action":"click-to-web",
                    "click_target":null,
                    "ssl_status":"disabled",
                    "allow_ssl_audit":false,
                    "media_url_secure":null,
                    "content_secure":null,
                    "original_content_secure":null,
                    "flash_backup_url_secure":null,
                    "is_hosted":false,
                    "content_source":"mediation",
                    "landing_page_url":null,
                    "thirdparty_creative_id":null,
                    "thirdparty_campaign_id":null,
                    "facebook_audit_status":null,
                    "facebook_audit_feedback":null,
                    "custom_request_template":{
                        "id":"25",
                        "timeout_ms":"0",
                        "last_modified":"2014-05-12 21:42:01"
                    },
                    "language":{
                        "id":1,
                        "name":"English"
                    },
                    "pop_values":null,
                    "brand":{
                        "id":184948,
                        "name":"iAds",
                        "category_id":53
                    },
                    "template":{
                        "id":5,
                        "name":"Standard",
                        "media_subtype_id":1,
                        "format_id":5
                    },
                    "thirdparty_page":null,
                    "custom_macros":null,
                    "segments":null,
                    "folder":null,
                    "line_items":null,
                    "competitive_brands":null,
                    "competitive_categories":null,
                    "pixels":null,
                    "mobile":null,
                    "sla":null,
                    "sla_eta":null,
                    "currency":"USD"
                }
            }

}
```





**Create a bid**

``` pre
$ cat add-mediated-bid.json

{
    "mediated-bid": {
        "campaign": {},
        "creative": {
            "brand_id": 1,
            "click_url": "http://www.example.org/click",
            "content": "content is usually the third party tag",
            "custom_macros": [
                {
                    "code": "PUB",
                    "value": "sdf"
                }, 
                {
                    "code": "SITE",
                    "value": "sf"
                }, 
                {
                    "code": "SPOT",
                    "value": "sdf"
                }
            ], 
            "custom_request_template": {
                "id": "4",
                "timeout_ms": "200"
            }, 
            "height": 250,
            "media_url": "http://ad.doubleclick.net/ad/N4677.Yahoo/B2353613.54;sz=300x250;ord=timestamp?", 
            "template": {
                "id": 5
            }, 
            "width": 300
        }, 
        "line-item": {
          "name":"9D1aJ56930T43141SFt"
        },
        "mediated_network_id": 319,
        "name": "9D1aJ56930T43141SFt",
        "profile": {},
        "type": "mobile"
    }
}

$ curl -b cookies -X POST -d @add-mediated-bid.json 'https://api.appnexus.com/mediated-bid?member_id=4209&advertiser_id=110466' 

{
    "response":{
        "status":"OK",
        "count":1,
        "id":953,
        "start_element":0,
        "num_elements":100,
        "mediated-bid":{
            "id":953,
            "type":"mobile",
            "name":"9D1aJ56930T43141SFt",
            "active":false,
            "member_id":4209,
            "line_item_id":188540,
            "campaign_id":425871,
            "creative_id":843561,
            "profile_id":363989,
            "last_modified":"2014-06-10 13:56:29",
            "mediated_network":{
                "id":319,
                "advertiser_id":110466,
                "name":"Integration Test TEST1398193369027",
                "creative_custom_request_partner_id":1,
                "active":false
            },
            "campaign":{
                "id":425871,
                "state":"active",
                "parent_inactive":true,
                "code":null,
                "advertiser_id":110466,
                "line_item_id":188540,
                "creative_id":843561,
                "pixel_id":null,
                "short_name":null,
                "name":"",
                "profile_id":363989,
                "start_date":null,
                "end_date":null,
                "timezone":"EST5EDT",
                "priority":5,
                "cadence_modifier_enabled":false,
                "cpc_goal":null,
                "cpm_bid_type":"margin",
                "base_bid":null,
                "min_bid":null,
                "max_bid":null,
                "bid_margin":0,
                "roadblock_creatives":false,
                "roadblock_type":"no_roadblock",
                "inventory_type":"direct",
                "last_modified":"2014-06-10 13:56:29",
                "max_learn_bid":null,
                "cadence_type":"advertiser",
                "member_id":4209,
                "click_url":null,
                "require_cookie_for_tracking":true,
                "allow_unverified_ecp":false,
                "defer_to_li_prediction":false,
                "ecp_learn_divisor":null,
                "projected_learn_events":null,
                "confidence_threshold":null,
                "learn_threshold":3,
                "cpc_payout":null,
                "comments":null,
                "optimization_lever_mode":"automatic",
                "optimization_version":"v7",
                "learn_override_type":null,
                "base_cpm_bid_value":null,
                "impression_limit":40000,
                "bid_multiplier":1,
                "is_malicious":false,
                "remaining_days":null,
                "total_days":null,
                "supply_type":"mobile_app",
                "creatives":[
                    {
                        "id":843561,
                        "mapping_state":"active",
                        "code":null,
                        "name":null,
                        "width":300,
                        "height":250,
                        "state":"active",
                        "audit_status":"no_audit",
                        "is_expired":false,
                        "is_prohibited":false,
                        "is_self_audited":true,
                        "format":"raw-js",
                        "pop_window_maximize":null
                    }
                ],
                "pixels":null,
                "optimization_lookback":null,
                "campaign_modifiers":null,
                "labels":null,
                "broker_fees":null,
                "valuation":null,
                "lifetime_budget":null,
                "lifetime_budget_imps":null,
                "daily_budget":null,
                "daily_budget_imps":null,
                "enable_pacing":null,
                "lifetime_pacing":null,
                "lifetime_pacing_span":null,
                "allow_safety_pacing":null
            },
            "line-item":{
                "id":188540,
                "code":null,
                "name":null,
                "advertiser_id":110466,
                "state":"inactive",
                "start_date":null,
                "end_date":null,
                "timezone":"EST5EDT",
                "discrepancy_pct":0,
                "publishers_allowed":"all",
                "revenue_value":0,
                "revenue_type":"cpm",
                "goal_type":"none",
                "goal_value":null,
                "last_modified":"2014-06-10 13:56:29",
                "click_url":null,
                "currency":"USD",
                "require_cookie_for_tracking":true,
                "profile_id":null,
                "member_id":4209,
                "comments":null,
                "is_malicious":false,
                "remaining_days":null,
                "total_days":null,
                "manage_creative":false,
                "advertiser":{
                    "id":110466,
                    "name":"Integration Test TEST1398193369027"
                },
                "flat_fee":null,
                "labels":null,
                "broker_fees":null,
                "pixels":null,
                "insertion_orders":null,
                "goal_pixels":null,
                "imptrackers":null,
                "clicktrackers":null,
                "campaigns":[
                    {
                        "id":425871,
                        "name":"",
                        "inventory_type":"direct",
                        "state":"parent_inactive",
                        "cpm_bid_type":"margin"
                    }
                ],
                "valuation":null,
                "creatives":null,
                "lifetime_budget":null,
                "lifetime_budget_imps":null,
                "daily_budget":null,
                "daily_budget_imps":null,
                "enable_pacing":null,
                "lifetime_pacing":null,
                "lifetime_pacing_span":null,
                "allow_safety_pacing":null
            },
            "profile":{
                "id":363989,
                "code":null,
                "description":null,
                "country_action":"exclude",
                "region_action":"exclude",
                "city_action":"exclude",
                "browser_action":"exclude",
                "use_inventory_attribute_targets":false,
                "last_modified":"2014-06-10 13:56:29",
                "daypart_timezone":null,
                "dma_action":"exclude",
                "domain_action":"exclude",
                "domain_list_action":"exclude",
                "inventory_action":"exclude",
                "language_action":"exclude",
                "segment_boolean_operator":"and",
                "min_session_imps":null,
                "session_freq_type":"platform",
                "carrier_action":"exclude",
                "supply_type_action":"include",
                "device_type_action":"exclude",
                "screen_size_action":"exclude",
                "device_model_action":"exclude",
                "location_target_radius":null,
                "location_target_latitude":null,
                "location_target_longitude":null,
                "querystring_action":"exclude",
                "querystring_boolean_operator":"and",
                "is_expired":false,
                "non_audited_url_action":"include",
                "daypart_bitmap":null,
                "advertiser_id":110466,
                "publisher_id":null,
                "max_session_imps":null,
                "max_day_imps":null,
                "max_lifetime_imps":null,
                "max_page_imps":null,
                "min_minutes_per_imp":null,
                "venue_action":"exclude",
                "operating_system_action":"exclude",
                "require_cookie_for_freq_cap":false,
                "trust":"seller",
                "allow_unaudited":true,
                "is_template":false,
                "created_on":"2014-06-10 13:56:29",
                "operating_system_family_action":"exclude",
                "use_operating_system_extended_targeting":false,
                "mobile_app_instance_action_include":false,
                "mobile_app_instance_list_action_include":false,
                "user_group_targets":null,
                "country_targets":null,
                "region_targets":null,
                "city_targets":null,
                "inv_class_targets":null,
                "inventory_source_targets":null,
                "inventory_attribute_targets":null,
                "age_targets":null,
                "daypart_targets":null,
                "browser_targets":null,
                "browser_family_targets":null,
                "dma_targets":null,
                "domain_targets":null,
                "domain_list_targets":null,
                "language_targets":null,
                "size_targets":null,
                "zip_targets":null,
                "member_targets":null,
                "segment_group_targets":null,
                "carrier_targets":null,
                "supply_type_targets":[
                    "mobile_app",
                    "mobile_web"
                ],
                "device_type_targets":null,
                "screen_size_targets":null,
                "device_model_targets":null,
                "querystring_targets":null,
                "gender_targets":null,
                "intended_audience_targets":null,
                "inventory_group_targets":null,
                "inventory_network_resold_targets":null,
                "ip_targets":null,
                "operating_system_targets":null,
                "operating_system_family_targets":null,
                "position_targets":null,
                "site_targets":null,
                "venue_targets":null,
                "operating_system_extended_targets":null,
                "mobile_app_instance_targets":null,
                "mobile_app_instance_list_targets":null,
                "content_category_targets":null,
                "deal_targets":null,
                "placement_targets":null,
                "platform_content_category_targets":null,
                "platform_placement_targets":null,
                "platform_publisher_targets":null,
                "publisher_targets":null,
                "segment_targets":null,
                "exelate_targets":null,
                "ip_range_list_targets":null
            },
            "creative":{
                "name":null,
                "brand_id":1,
                "media_url":"http:\/\/ad.doubleclick.net\/ad\/N4677.Yahoo\/B2353613.54;sz=300x250;ord=timestamp?",
                "id":843561,
                "code":null,
                "code2":null,
                "member_id":4209,
                "state":"active",
                "click_track_result":"not_tested",
                "advertiser_id":110466,
                "publisher_id":null,
                "format":"raw-js",
                "width":300,
                "height":250,
                "click_url":"http:\/\/www.example.org\/click",
                "flash_click_variable":null,
                "no_iframes":true,
                "content":"document.write(\"\");",
                "original_content":"no-tag",
                "file_name":null,
                "track_clicks":true,
                "audit_status":"no_audit",
                "macros":null,
                "profile_id":null,
                "audit_feedback":null,
                "is_prohibited":false,
                "is_suspicious":false,
                "created_on":"2014-06-10 13:56:29",
                "flash_backup_url":null,
                "last_modified":"2014-06-10 13:56:29",
                "is_control":false,
                "allow_audit":false,
                "is_expired":false,
                "creative_upload_status":null,
                "backup_upload_status":null,
                "use_dynamic_click_url":false,
                "media_subtypes":[
                    "banner"
                ],
                "size_in_bytes":0,
                "google_audit_status":"no_audit",
                "google_audit_feedback":null,
                "msft_audit_status":"no_audit",
                "msft_audit_feedback":null,
                "msft_external_audit_status":"no_audit",
                "msft_external_audit_feedback":null,
                "is_self_audited":true,
                "no_adservers":false,
                "text_title":null,
                "text_description":null,
                "text_display_url":null,
                "click_action":"click-to-web",
                "click_target":"http:\/\/www.example.org\/click",
                "ssl_status":"disabled",
                "allow_ssl_audit":false,
                "media_url_secure":null,
                "content_secure":null,
                "original_content_secure":null,
                "flash_backup_url_secure":null,
                "is_hosted":false,
                "content_source":"mediation",
                "lifetime_budget_imps":null,
                "daily_budget_imps":null,
                "enable_pacing":null,
                "allow_safety_pacing":null,
                "lifetime_budget":null,
                "daily_budget":null,
                "landing_page_url":null,
                "thirdparty_creative_id":null,
                "thirdparty_campaign_id":null,
                "facebook_audit_status":null,
                "facebook_audit_feedback":null,
                "custom_request_template":{
                    "id":"4",
                    "timeout_ms":"200",
                    "last_modified":"2014-06-10 13:56:29"
                },
                "language":{
                    "id":1,
                    "name":"English"
                },
                "pop_values":null,
                "brand":{
                    "id":1,
                    "name":"Unknown",
                    "category_id":8
                },
                "template":{
                    "id":5,
                    "name":"Standard",
                    "media_subtype_id":1,
                    "format_id":5
                },
                "thirdparty_page":null,
                "custom_macros":[
                    {
                        "code":"PUB",
                        "value":"sdf"
                    },
                    {
                        "code":"SITE",
                        "value":"sf"
                    },
                    {
                        "code":"SPOT",
                        "value":"sdf"
                    }
                ],
                "segments":null,
                "folder":null,
                "campaigns":[
                    {
                        "id":425871,
                        "campaign_id":425871,
                        "creative_id":843561,
                        "name":"",
                        "state":"parent_inactive",
                        "code":null
                    }
                ],
                "line_items":null,
                "competitive_brands":null,
                "competitive_categories":null,
                "pixels":null,
                "mobile":null,
                "sla":null,
                "sla_eta":null,
                "currency":"USD"
            }
        }
    }
}
```





**Update a bid**

``` pre
$ cat edit-mediated-bid.json

{
  "mediated-bid": 
  {
    "id": 953,
    "active": false
  }
}

$ curl -b cookies -X PUT -d @edit-mediated-bid.json 'https://api.appnexus.com/mediated-bid?member_id=4209&advertiser_id=110466'

{
    "response":{
        "status":"OK",
        "count":1,
        "id":953,
        "start_element":0,
        "num_elements":100,
        "mediated-bid":{
            "id":953,
            "type":"mobile",
            "name":"9D1aJ56930T43141SFt",
            "active":false,
            "member_id":4209,
            "line_item_id":188540,
            "campaign_id":425871,
            "creative_id":843561,
            "profile_id":363989,
            "suggested_bid_price": 25.4,
             "suggested_bid_price_confidence": 0.6,
             "auto_bid_adjustments_enabled": true,
             "last_modified":"2014-06-10 14:11:41",
            "mediated_network":{
                "id":319,
                "advertiser_id":110466,
                "name":"Integration Test TEST1398193369027",
                "creative_custom_request_partner_id":1,
                "active":false
            },
            "campaign":{
                "id":425871,
                "state":"active",
                "parent_inactive":true,
                "code":null,
                "advertiser_id":110466,
                "line_item_id":188540,
                "creative_id":843561,
                "pixel_id":null,
                "short_name":null,
                "name":"",
                "profile_id":363989,
                "start_date":null,
                "end_date":null,
                "timezone":"EST5EDT",
                "priority":5,
                "cadence_modifier_enabled":false,
                "cpc_goal":null,
                "cpm_bid_type":"margin",
                "base_bid":null,
                "min_bid":null,
                "max_bid":null,
                "bid_margin":0,
                "roadblock_creatives":false,
                "roadblock_type":"no_roadblock",
                "inventory_type":"direct",
                "last_modified":"2014-06-10 13:56:29",
                "max_learn_bid":null,
                "cadence_type":"advertiser",
                "member_id":4209,
                "click_url":null,
                "require_cookie_for_tracking":true,
                "allow_unverified_ecp":false,
                "defer_to_li_prediction":false,
                "ecp_learn_divisor":null,
                "projected_learn_events":null,
                "confidence_threshold":null,
                "learn_threshold":3,
                "cpc_payout":null,
                "comments":null,
                "optimization_lever_mode":"automatic",
                "optimization_version":"v7",
                "learn_override_type":null,
                "base_cpm_bid_value":null,
                "impression_limit":40000,
                "bid_multiplier":1,
                "is_malicious":false,
                "remaining_days":null,
                "total_days":null,
                "supply_type":"mobile_app",
                "creatives":[
                    {
                        "id":843561,
                        "mapping_state":"active",
                        "code":null,
                        "name":null,
                        "width":300,
                        "height":250,
                        "state":"active",
                        "audit_status":"no_audit",
                        "is_expired":false,
                        "is_prohibited":false,
                        "is_self_audited":true,
                        "format":"raw-js",
                        "pop_window_maximize":null
                    }
                ],
                "pixels":null,
                "optimization_lookback":null,
                "campaign_modifiers":null,
                "labels":null,
                "broker_fees":null,
                "valuation":null,
                "lifetime_budget":null,
                "lifetime_budget_imps":null,
                "daily_budget":null,
                "daily_budget_imps":null,
                "enable_pacing":null,
                "lifetime_pacing":null,
                "lifetime_pacing_span":null,
                "allow_safety_pacing":null
            },
            "line-item":{
                "id":188540,
                "code":null,
                "name":null,
                "advertiser_id":110466,
                "state":"inactive",
                "start_date":null,
                "end_date":null,
                "timezone":"EST5EDT",
                "discrepancy_pct":0,
                "publishers_allowed":"all",
                "revenue_value":0,
                "revenue_type":"cpm",
                "goal_type":"none",
                "goal_value":null,
                "last_modified":"2014-06-10 14:11:41",
                "click_url":null,
                "currency":"USD",
                "require_cookie_for_tracking":true,
                "profile_id":null,
                "member_id":4209,
                "comments":null,
                "is_malicious":false,
                "remaining_days":null,
                "total_days":null,
                "manage_creative":false,
                "advertiser":{
                    "id":110466,
                    "name":"Integration Test TEST1398193369027"
                },
                "flat_fee":null,
                "labels":null,
                "broker_fees":null,
                "pixels":null,
                "insertion_orders":null,
                "goal_pixels":null,
                "imptrackers":null,
                "clicktrackers":null,
                "campaigns":[
                    {
                        "id":425871,
                        "name":"",
                        "inventory_type":"direct",
                        "state":"parent_inactive",
                        "cpm_bid_type":"margin"
                    }
                ],
                "valuation":null,
                "creatives":null,
                "lifetime_budget":null,
                "lifetime_budget_imps":null,
                "daily_budget":null,
                "daily_budget_imps":null,
                "enable_pacing":null,
                "lifetime_pacing":null,
                "lifetime_pacing_span":null,
                "allow_safety_pacing":null
            },
            "profile":{
                "id":363989,
                "code":null,
                "description":null,
                "country_action":"exclude",
                "region_action":"exclude",
                "city_action":"exclude",
                "browser_action":"exclude",
                "use_inventory_attribute_targets":false,
                "last_modified":"2014-06-10 13:56:29",
                "daypart_timezone":null,
                "dma_action":"exclude",
                "domain_action":"exclude",
                "domain_list_action":"exclude",
                "inventory_action":"exclude",
                "language_action":"exclude",
                "segment_boolean_operator":"and",
                "min_session_imps":null,
                "session_freq_type":"platform",
                "carrier_action":"exclude",
                "supply_type_action":"include",
                "device_type_action":"exclude",
                "screen_size_action":"exclude",
                "device_model_action":"exclude",
                "location_target_radius":null,
                "location_target_latitude":null,
                "location_target_longitude":null,
                "querystring_action":"exclude",
                "querystring_boolean_operator":"and",
                "is_expired":false,
                "non_audited_url_action":"include",
                "daypart_bitmap":null,
                "advertiser_id":110466,
                "publisher_id":null,
                "max_session_imps":null,
                "max_day_imps":null,
                "max_lifetime_imps":null,
                "max_page_imps":null,
                "min_minutes_per_imp":null,
                "venue_action":"exclude",
                "operating_system_action":"exclude",
                "require_cookie_for_freq_cap":false,
                "trust":"seller",
                "allow_unaudited":true,
                "is_template":false,
                "created_on":"2014-06-10 13:56:29",
                "operating_system_family_action":"exclude",
                "use_operating_system_extended_targeting":false,
                "mobile_app_instance_action_include":false,
                "mobile_app_instance_list_action_include":false,
                "user_group_targets":null,
                "country_targets":null,
                "region_targets":null,
                "city_targets":null,
                "inv_class_targets":null,
                "inventory_source_targets":null,
                "inventory_attribute_targets":null,
                "age_targets":null,
                "daypart_targets":null,
                "browser_targets":null,
                "browser_family_targets":null,
                "dma_targets":null,
                "domain_targets":null,
                "domain_list_targets":null,
                "language_targets":null,
                "size_targets":null,
                "zip_targets":null,
                "member_targets":null,
                "segment_group_targets":null,
                "carrier_targets":null,
                "supply_type_targets":[
                    "mobile_app",
                    "mobile_web"
                ],
                "device_type_targets":null,
                "screen_size_targets":null,
                "device_model_targets":null,
                "querystring_targets":null,
                "gender_targets":null,
                "intended_audience_targets":null,
                "inventory_group_targets":null,
                "inventory_network_resold_targets":null,
                "ip_targets":null,
                "operating_system_targets":null,
                "operating_system_family_targets":null,
                "position_targets":null,
                "site_targets":null,
                "venue_targets":null,
                "operating_system_extended_targets":null,
                "mobile_app_instance_targets":null,
                "mobile_app_instance_list_targets":null,
                "content_category_targets":null,
                "deal_targets":null,
                "placement_targets":null,
                "platform_content_category_targets":null,
                "platform_placement_targets":null,
                "platform_publisher_targets":null,
                "publisher_targets":null,
                "segment_targets":null,
                "exelate_targets":null,
                "ip_range_list_targets":null
            },
            "creative":{
                "name":null,
                "brand_id":1,
                "media_url":"http:\/\/ad.doubleclick.net\/ad\/N4677.Yahoo\/B2353613.54;sz=300x250;ord=timestamp?",
                "id":843561,
                "code":null,
                "code2":null,
                "member_id":4209,
                "state":"active",
                "click_track_result":"not_tested",
                "advertiser_id":110466,
                "publisher_id":null,
                "format":"raw-js",
                "width":300,
                "height":250,
                "click_url":"http:\/\/www.example.org\/click",
                "flash_click_variable":null,
                "no_iframes":true,
                "content":"document.write(\"\");",
                "original_content":"no-tag",
                "file_name":null,
                "track_clicks":true,
                "audit_status":"no_audit",
                "macros":null,
                "profile_id":null,
                "audit_feedback":null,
                "is_prohibited":false,
                "is_suspicious":false,
                "created_on":"2014-06-10 13:56:29",
                "flash_backup_url":null,
                "last_modified":"2014-06-10 13:56:29",
                "is_control":false,
                "allow_audit":false,
                "is_expired":false,
                "creative_upload_status":null,
                "backup_upload_status":null,
                "use_dynamic_click_url":false,
                "media_subtypes":[
                    "banner"
                ],
                "size_in_bytes":0,
                "google_audit_status":"no_audit",
                "google_audit_feedback":null,
                "msft_audit_status":"no_audit",
                "msft_audit_feedback":null,
                "msft_external_audit_status":"no_audit",
                "msft_external_audit_feedback":null,
                "is_self_audited":true,
                "no_adservers":false,
                "text_title":null,
                "text_description":null,
                "text_display_url":null,
                "click_action":"click-to-web",
                "click_target":"http:\/\/www.example.org\/click",
                "ssl_status":"disabled",
                "allow_ssl_audit":false,
                "media_url_secure":null,
                "content_secure":null,
                "original_content_secure":null,
                "flash_backup_url_secure":null,
                "is_hosted":false,
                "content_source":"mediation",
                "lifetime_budget_imps":null,
                "daily_budget_imps":null,
                "enable_pacing":null,
                "allow_safety_pacing":null,
                "lifetime_budget":null,
                "daily_budget":null,
                "landing_page_url":null,
                "thirdparty_creative_id":null,
                "thirdparty_campaign_id":null,
                "facebook_audit_status":null,
                "facebook_audit_feedback":null,
                "custom_request_template":{
                    "id":"4",
                    "timeout_ms":"200",
                    "last_modified":"2014-06-10 13:56:29"
                },
                "language":{
                    "id":1,
                    "name":"English"
                },
                "pop_values":null,
                "brand":{
                    "id":1,
                    "name":"Unknown",
                    "category_id":8
                },
                "template":{
                    "id":5,
                    "name":"Standard",
                    "media_subtype_id":1,
                    "format_id":5
                },
                "thirdparty_page":null,
                "custom_macros":[
                    {
                        "code":"PUB",
                        "value":"sdf"
                    },
                    {
                        "code":"SITE",
                        "value":"sf"
                    },
                    {
                        "code":"SPOT",
                        "value":"sdf"
                    }
                ],
                "segments":null,
                "folder":null,
                "campaigns":[
                    {
                        "id":425871,
                        "campaign_id":425871,
                        "creative_id":843561,
                        "name":"",
                        "state":"parent_inactive",
                        "code":null
                    }
                ],
                "line_items":null,
                "competitive_brands":null,
                "competitive_categories":null,
                "pixels":null,
                "mobile":null,
                "sla":null,
                "sla_eta":null,
                "currency":"USD"
            }
        }
    }
}
```





**Delete a bid**

``` pre
$ curl -b cookies -X DELETE 'https://api.appnexus.com/mediated-bid?member_id=4371&advertiser_id=111313&id=891' 

{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":null,
        "num_elements":null
    }
}
```





>

## Related Topics



- <a
  href="line-item-service.md"
  class="xref" target="_blank">Line Item Service</a>
- <a
  href="campaign-service.md"
  class="xref" target="_blank">Campaign Service</a>
- <a
  href="creative-service.md"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="mediated-network-service.md"
  class="xref" target="_blank">Mediated Network Service</a>








