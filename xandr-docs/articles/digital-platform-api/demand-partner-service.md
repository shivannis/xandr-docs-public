---
Title : Demand Partner Service
Description : The Demand Partner Service returns all demand partners for the caller's
member. It enables the user to create a new demand partner and update or
---


# Demand Partner Service



The Demand Partner Service returns all demand partners for the caller's
member. It enables the user to create a new demand partner and update or
delete an existing demand partner.

In the context of PSP, demand partners, usually supply-side platforms
(SSPs) like , create adapters for Prebid Server
that receive and interpret header bidding ad requests. Demand partners
hold an auction among their demand sources (usually
demand-side-platforms (DSPs)) to collect bids on those ad requests and
send the bids back to PSP, which holds another auction.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="demand-partner-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="demand-partner-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="demand-partner-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__2"><a
href="https://api.appnexus.com/prebid/demand-partner" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/demand-partner</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__3">Get all demand partners.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__2"><a
href="https://api.appnexus.com/prebid/demand-partner" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/demand-partner</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__3">Create a new demand
partner.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__2"><a
href="https://api.appnexus.com/prebid/demand-partner/%7Bid" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/demand-partner/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__3">Update an existing demand
partner.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__1"><code
class="ph codeph">PATCH</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__2"><a
href="https://api.appnexus.com/prebid/demand-partner/%7Bid" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/demand-partner/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__3">Update a portion of an
existing demand partner.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__2"><a
href="https://api.appnexus.com/prebid/demand-partner/%7Bid" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/demand-partner/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-service__entry__3">Delete a demand partner.</td>
</tr>
</tbody>
</table>







## GET

Get all or a specific demand partner. To retrieve a specific demand
partner, append the demand partner id as last component of the URL path.
Returns a JSON array of demand partner objects.

A successful response will return JSON array of demand partner objects.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="demand-partner-service__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="demand-partner-service__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="demand-partner-service__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">bid_cpm_adjustment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">A multiplier value applied
to the Demand Partner's CPM bid price to adjust how the bids compete in
auction. This does not change the actual bid or revenue payout, only the
ranking of the bid in the auction. The default value is 1.00. In this
case all partners' bids compete equally with no adjustments. The
adjustment can be used to account for partner fees or for optimization.
If you need CPM adjustments at a level more granular than Demand
Partner, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/create-a-bias-rule.html"
class="xref" target="_blank">Create a Bias Rule</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">deleted</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">This indicates that the
demand partner object has been deleted from the system.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">demand_partner_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21"><p>The id of the demand
partner on the Xandr platform.</p>

Note: This now returns null.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">Indicates if the demand
partner is enabled or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">The demand partner id
specific to the caller's member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">The date that the demand
partner object was modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">The member id.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">The name of the demand
partner.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__19"><code
class="ph codeph">pub_id_settings</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__20">object</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__21">The options relevant to the
publisher-provided user ids. See the <a
href="#demand-partner-service__1" class="xref">publisher id settings</a>
table below</td>
</tr>
</tbody>
</table>



**Publisher Provided ID Settings**

<table id="demand-partner-service__1" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="demand-partner-service__1__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="demand-partner-service__1__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="demand-partner-service__1__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__1"><code
class="ph codeph">id_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__3">Unique identifier
representing the source.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__1"><code
class="ph codeph">source</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__3">Unique string representing
the source.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__1"><code
class="ph codeph">source_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__3">Indicates common industry
user identifiers or proprietary publisher user identifiers. Values are
currently "industry" and "publisher".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__1"><code
class="ph codeph">member_owner_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__3">Unique identifier of the
member that owns the source.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__1__entry__3">Indicates if the source is
active.</td>
</tr>
</tbody>
</table>





**Example Response**

``` pre
[
  {
    "bid_cpm_adjustment": 2,
    "deleted": false,
    "demand_partner_id": null,
    "enabled": true,
    "id": 102,
    "last_modified": "2019-09-13T17:39:36Z",
    "member_id": 9325,
    "name": "adform",
    "pub_id_settings": {
            "sources": [
                {            
                    "id_type": 12345,
                    "source": "sourcename",
                    "source_type": "publisher",
                    "member_owner_id": 9325,
                    "active": true
                }
            ]
        }
  },
  {
    "bid_cpm_adjustment": 1,
    "deleted": false,
    "demand_partner_id": 2,
    "enabled": true,
    "id": 65,
    "last_modified": "2018-11-02T15:33:54Z",
    "member_id": 9325,
    "name": "appnexus",
    "pub_id_settings": null
  },
  {
    "bid_cpm_adjustment": 1,
    "deleted": false,
    "demand_partner_id": null,
    "enabled": true,
    "id": 68,
    "last_modified": "2018-11-02T18:32:03Z",
    "member_id": 9325,
    "name": "openx",
    "pub_id_settings": null
  },
  {
    "bid_cpm_adjustment": 1,
    "deleted": false,
    "demand_partner_id": null,
    "enabled": true,
    "id": 69,
    "last_modified": "2018-11-02T18:32:31Z",
    "member_id": 9325,
    "name": "ix",
    "pub_id_settings": null
  },
...
```







## POST

Create a new demand partner.



Example call using curl:

``` pre
curl -d @demand-partner.json -X POST 'https://api.appnexus.com/prebid/demand-partner'
```

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="demand-partner-service__entry__67"
class="entry colsep-1 rowsep-1">Name</th>
<th id="demand-partner-service__entry__68"
class="entry colsep-1 rowsep-1">Type</th>
<th id="demand-partner-service__entry__69"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="demand-partner-service__entry__70"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__67"><code
class="ph codeph">bid_cpm_adjustment</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__68">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__69">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__70">The bid CPM adjustment.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__67"><code
class="ph codeph">enabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__68">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__69">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__70">Indicates if the demand
partner is enabled or disabled.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__67"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__68">string</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__69">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__70">The name of the demand
partner.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__67"><code
class="ph codeph">pub_id_settings</code></td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__68">object</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__69">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="demand-partner-service__entry__70">The options relevant to the
publisher-provided user ids. See the publisher id settings table
below.</td>
</tr>
</tbody>
</table>





**Example JSON**

``` pre
{
    "bid_cpm_adjustment": 1,
    "enabled": true,
    "name": "test-demand-partner"
    "pub_id_settings": {
            "sources": [
                {            
                    "id_type": 12345,
                    "source": "sourcename",
                    "source_type": "publisher",
                    "member_owner_id": 9325,
                    "active": true
                }
            ]
        }
} 
```



**Response**



A successful response will return the new demand partner as a JSON
object.

``` pre
{
    "bid_cpm_adjustment": 1,
    "deleted": false,
    "demand_partner_id": null,
    "enabled": true,
    "id": 999,
    "last_modified": "2020-02-25T18:32:31Z",
    "member_id": 9325,
    "name": "test-demand-partner"
    "pub_id_settings": {
            "sources": [
                {            
                    "id_type": 12345,
                    "source": "sourcename",
                    "source_type": "publisher",
                    "member_owner_id": 9325,
                    "active": true
                }
            ]
        }
}
```







## PUT

Updates an existing Prebid demand partner. Include the id as last
component of the path. Pass the update information as JSON in the body
of the request.



Example call using curl:

``` pre
curl https://api.appnexus.com/prebid/demand-partner/1234
```



**Response**

Returns updated Prebid demand partner object.





## PATCH

Partially update an existing Prebid demand partner. Include the id as
last component of the path. Pass the update information as JSON in the
body of the request.



Example call using curl:

``` pre
curl https://api.appnexus.com/prebid/demand-partner/1234
```



**Response**

Returns the updated Prebid demand partner object.





## DELETE

Delete an existing Prebid demand partner. Include the id as last
component of the path.



Example call using curl:

``` pre
curl https://api.appnexus.com/prebid/demand-partner/1234
```



**Response**

The success response of the Prebid demand partner object is returned as
a JSON object with the deleted property set to true. The Prebid demand
partner will no longer be available in the system. Any sub-objects will
also be deleted.



<div id="demand-partner-service__section_ivv_lc4_xyb"
>

## Managing Identity Sources



<div id="demand-partner-service__note_cyl_mc4_xyb"


Note:

- Each identifier source must have permission at the Microsoft member,
  bidder (Prebid Server Premium, ID 443), and demand partner level in
  order to successfully pass through in requests to demand partners
- For more information on the identifier registration process and
  managing identifiers, review the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/identity-service.html"
  class="xref" target="_blank">Identity Service API</a>
- In the future, the Identity Management UI will allow for holistic
  management of identifier permissions
- This service currently is in Alpha. It is still under development and
  may be subject to change without notice. Contact your Microsoft
  Account Representative to get enabled.









## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/demand-partner-schema-service.html"
  class="xref" target="_blank">Demand Partner Schema Service</a>

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/prebid-demand-partner-params-service.html"
  class="xref" target="_blank">Prebid Demand Partner Params Service</a>

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-demand-partner-integrations.html"
  class="xref" target="_blank">PSP Demand Partner Integrations</a>

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/add-or-edit-a-demand-partner.html"
  class="xref" target="_blank">Add or Edit a Demand Partner</a>

- <a
  href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-identity-and-user-syncing.html"
  class="xref" target="_blank">Prebid Server Premium Identity &amp; User
  Syncing</a>

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/identity-service.html"
  class="xref" target="_blank">Identity Service</a>






