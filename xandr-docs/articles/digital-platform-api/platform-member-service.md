---
Title : Platform Member Service
Description : This is a read-only service that shows you public information about the
other Xandr platform members that you can buy
from and sell to. It also shows information about data providers.
---


# Platform Member Service



This is a read-only service that shows you public information about the
other Xandr platform members that you can buy
from and sell to. It also shows information about data providers.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002c3a__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002c3a__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002c3a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__2"><a
href="https://api.appnexus.com/platform-member" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/platform-member</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__3">View
all members that have exposed their information</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__2"><a
href="https://api.appnexus.com/platform-member?active=1" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/platform-member?active=1</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__3">View
only active members that have exposed their information</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__2"><a
href="https://api.appnexus.com/platform-member?id=MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/platform-member?id=MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__3">View
a specific member</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002c3a__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002c3a__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002c3a__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">If
true, the member is active.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">bidder</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
ID and name of the bidder that that member uses to buy impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">contact_info</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
contact and additional info for the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">daily_imps_any_audit_status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
number of daily impressions through inventory that has any audit status,
to include: unaudited, Xandr-reviewed,
seller-reviewed, and both Xandr- and
seller-reviewed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">daily_imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_reviewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
number of daily impressions through inventory that has been audited by
Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">daily_imps_</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">_seller_reviewed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
number of daily impressions through inventory that has one of
these three audit statuses: seller-reviewed, <span
class="ph">Xandr-reviewed, and both <span
class="ph">Xandr- and seller-reviewed.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">daily_imps_self_audited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__15"><strong>Deprecated</strong>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">daily_imps_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__15"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">daily_imps_verified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__15"><strong>Deprecated.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">default_discrepancy_pct</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
percent that Xandr deducts from each bid for
certain external supply partners based on past discrepancies between
what Xandr and the supply partner recorded as
won impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
description of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
email address to use to contact the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">has_resold</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">If
true, the member has exposed inventory for resale to other members. You
can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/inventory-resold-service.html"
class="xref" target="_blank">Inventory Resold Service</a> to view
information about the exposed inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
ID of the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">is_iash_compliant</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">If
true, the member is IASH compliant.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
date and time when the member entry was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
name of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">primary_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
type of member, which indicates the primary type of transactions this
member performs with Xandr. Possible values:
"network", "buyer", "seller", or "data_provider".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">platform_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
visibility of the member on the platform. Possible values:
<ul>
<li>"public" - The member name is shown</li>
<li>"private" - Only the member ID is shown</li>
<li>"hidden" - The member is not shown by this service at all</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">seller_member_groups</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
ID, name, display order of the groups of seller members along with date
and time when the entries were created and last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">seller_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
selling relationship between the member and <span
class="ph">Xandr. Possible values:
<ul>
<li>"platform" - Xandr charges the member for
selling inventory based on the member's contract</li>
<li>"partner" - Xandr does not charge the member
for selling but rather charges buyers, based on their contracts when
they buy this member's inventory</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__13"><code
class="ph codeph">visibility_rules</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__14">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__15">The
level of detail included in the member's bid requests if primary_type is
"seller". See <a href="platform-member-service.html#ID-00002c3a__vr"
class="xref">Visibility Rules</a> below for details.</td>
</tr>
</tbody>
</table>

**Visibility Rules**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002c3a__entry__82"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002c3a__entry__83"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002c3a__entry__84"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">expose_publishers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">Not
Used. The seller always sends publisher IDs in bid requests.<br />
<br />
&#10;<p>For select customers only: If false, the seller does not send
publisher IDs in bid requests.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">expose_tags</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">Not
Used.
<p>This field is not available to most customers. Placement IDs are
always passed in your bid requests.</p>
<p>For select customers:  If true, the seller sends placement IDs in bid
requests.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">expose_age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">If
true, the seller sends the age of users in bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">expose_gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">If
true, the seller sends the gender of users in bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">expose_universal_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">Not
Used.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">expose_custom_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">The
visibility of custom content categories in the seller's bid requests.
Possible values:
<ul>
<li>"none" - No custom categories are passed in bid requests</li>
<li>"all" - All custom categories are passed in bid requests</li>
<li>"list" - The custom categories listed in the custom_categories array
are passed in bid requests</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">custom_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">The
custom content categories that the seller passes in bid requests, if
expose_custom_categories is "list".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__82"><code
class="ph codeph">url_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002c3a__entry__83">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002c3a__entry__84">The
visibility of impression urls in the seller's bid requests. Possible
values:
<ul>
<li>"full" - Full URLs are passed in bid requests</li>
<li>"domain" - Only domains of URLs are passed in bid requests</li>
<li>"hidden" - URLs are not passed in bid requests (Note that you may
still receive the seller's default URL, if the seller has one
configured)</li>
</ul></td>
</tr>
</tbody>
</table>





## Examples

**View information about member 74**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/platform-member?id=74'
{
    "response": {
        "status": "OK",
        "platform-member": {
            "id": 74,
            "name": "PubMatic",
            "description": null,
            "primary_type": "seller",
            "platform_exposure": "public",
            "email": null,
            "daily_imps_verified": 200168000,
            "daily_imps_self_audited": 200168000,
            "daily_imps_unaudited": 168582133,
            "daily_imps_any_audit_status": 885677200,
            "daily_imps_appnexus_reviewed": 557187900,
            "daily_imps_appnexus_seller_reviewed": 557187900,
            "is_iash_compliant": false,
            "has_resold": false,
            "visibility_rules": {
                "expose_publishers": true,
                "expose_tags": true,
                "expose_age": true,
                "expose_gender": true,
                "expose_universal_categories": true,
                "url_exposure": "full",
                "expose_custom_categories": "none"
            },
            "bidder": {
                "id": "0",
                "name": "internal bidder"
            },
            "seller_type": "partner",
            "contact_info": [
                {
                    "name": "PubMatic RTB Team",
                    "title": null,
                    "email": "RTB@pubmatic.com",
                    "phone": null,
                    "address": null,
                    "address_2": null,
                    "city": "New York",
                    "country": "USA",
                    "region": "NY",
                    "postal_code": null,
                    "additional_info": "PubMatic can significantly increase the reach of your media buy, increase the efficiency of acquiring new publishers, and strengthen your publisher relationships. Contact us to learn how we can work together.",
                    "website_url": null,
                    "types": [
                        "supply"
                    ]
                }
            ],
            "active": true,
            "last_modified": "2013-06-21 17:48:49",
            "default_discrepancy_pct": 1
        },
        "count": 1,
        "start_element": 0,
        "num_elements": 100
    }
}
```

**View information about all members that have exposed their
information**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/platform-member'
{
    "response": {
        "status": "OK",
        "platform-members": [
            {
                "id": 3,
                "name": "MikeOnAds",
                "description": null,
                "primary_type": "seller",
                "platform_exposure": "public",
                "email": null,
                "daily_imps_verified": 100,
                "daily_imps_self_audited": 100,
                "daily_imps_unaudited": 0,
                "daily_imps_any_audit_status": 2800,
                "daily_imps_appnexus_reviewed": 2600,
                "daily_imps_appnexus_seller_reviewed": 2600,
                "is_iash_compliant": false,
                "has_resold": true,
                "visibility_rules": {
                    "expose_publishers": true,
                    "expose_tags": true,
                    "expose_age": true,
                    "expose_gender": true,
                    "expose_universal_categories": true,
                    "url_exposure": "full",
                    "expose_custom_categories": "none"
                },
                "bidder": {
                    "id": "2",
                    "name": "DisplayWords"
                },
                "seller_type": "partner",
                "active": true,
                "last_modified": "2013-06-18 10:10:51",
                "default_discrepancy_pct": null
            },
            {
                "id": 7,
                "name": "Adify",
                "description": null,
                "primary_type": "network",
                "platform_exposure": "public",
                "email": null,
                "daily_imps_verified": null,
                "daily_imps_self_audited": null,
                "daily_imps_unaudited": null,
                "daily_imps_any_audit_status": null,
                "daily_imps_appnexus_reviewed": null,
                "daily_imps_appnexus_seller_reviewed": null,
                "is_iash_compliant": true,
                "has_resold": true,
                "visibility_rules": {
                    "expose_publishers": true,
                    "expose_tags": true,
                    "expose_age": true,
                    "expose_gender": true,
                    "expose_universal_categories": true,
                    "url_exposure": "full",
                    "expose_custom_categories": "none"
                },
                "bidder": {
                    "id": "0",
                    "name": "internal bidder"
                },
                "seller_type": "partner",
                "active": false,
                "last_modified": "2012-09-13 13:13:39",
                "default_discrepancy_pct": null
            },
            {
                "id": 8,
                "name": "Ning",
                "description": null,
                "primary_type": "network",
                "platform_exposure": "public",
                "email": null,
                "daily_imps_verified": null,
                "daily_imps_self_audited": null,
                "daily_imps_unaudited": null,
                "daily_imps_any_audit_status": null,
                "daily_imps_appnexus_reviewed": null,
                "daily_imps_appnexus_seller_reviewed": null,
                "is_iash_compliant": false,
                "has_resold": true,
                "visibility_rules": {
                    "expose_publishers": true,
                    "expose_tags": true,
                    "expose_age": true,
                    "expose_gender": true,
                    "expose_universal_categories": true,
                    "url_exposure": "full",
                    "expose_custom_categories": "none"
                },
                "bidder": {
                    "id": "0",
                    "name": "internal bidder"
                },
                "seller_type": "platform",
                "active": false,
                "last_modified": "2012-09-13 13:13:39",
                "default_discrepancy_pct": null
            },
            ...
        ],
        "count": 335,
        "start_element": 0,
        "num_elements": 100
    }
}  
```






