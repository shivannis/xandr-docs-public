---
Title : Platform Member Service
Description : Public information about members is available to other members on the
platform through the Platform Member service.
---


# Platform Member Service



Public information about members is available to other members on the
platform through the Platform Member service.

Any entity that has a financial relationship with the
Xandr platform (usually a buyer or seller) needs
to be added to the Xandr system as a "member"
before they can conduct transactions. Members can be registered with the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
class="xref" target="_blank">Member Service</a> either by a bidder or by
Xandr personnel.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008b8c__entry__1" class="entry colsep-1 rowsep-1">HTTP
method</th>
<th id="ID-00008b8c__entry__2" class="entry colsep-1 rowsep-1">End
point</th>
<th id="ID-00008b8c__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__2"><a
href="https://api.adnxs.com/platform-member" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/platform-member</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__3">To
see all the members that have exposed their information</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__2"><a
href="https://api.adnxs.com/platform-member/MEMBER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/platform-member/MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__3">To
see a particular member</td>
</tr>
</tbody>
</table>





## JSON structure

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008b8c__entry__10" class="entry colsep-1 rowsep-1">JSON
variable</th>
<th id="ID-00008b8c__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008b8c__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
ID of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
name of the member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">primary_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">"network", "buyer", "seller",
"data_provider"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
type of member. This indicates the primary type of transactions this
member performs with Xandr.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">platform_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">"hidden", "private", "public"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
visibility of the member on the platform. Hidden members should not
appear.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">contact_email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
email address to use to contact the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">daily_imps_verified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
number of daily impressions through inventory that have been verified by
Xandr.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">daily_imps_self_audited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
number of daily impressions through inventory that have been audited by
the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">daily_imps_unaudited</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
number of daily impression through inventory that have not been
audited.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">is_iash_compliant</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__12">Whether or not the member is IASH
compliant.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">visibility_rules</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
visibility rules associated with that member</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__10"><code
class="ph codeph">bidder</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__11">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__12">The
bidder that that member uses to buy</td>
</tr>
</tbody>
</table>





## Visibility Rules

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008b8c__entry__46" class="entry colsep-1 rowsep-1">JSON
variable</th>
<th id="ID-00008b8c__entry__47"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008b8c__entry__48"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">expose_publishers</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__48"><strong>Not Used.<br />
<br />
</strong> For select customers: Whether or not the seller sends
publisher_id in the bid request </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">expose_tags</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__48"><strong>Not Used.</strong>
<p>For select customers: Whether or not the seller sends the id of the
tag in the bid request</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">expose_age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__48">Whether or not the seller sends the age
of the user in the bid request</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">expose_gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__48">Whether or not the seller sends the
gender of the user in the bid request</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">expose_universal_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__48"><strong>Not Used.</strong></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">expose_custom_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">"none", "all", "list"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__48">If
the seller sends no custom categories, all custom categories, or only
those custom categories listed in the custom_categories array.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">custom_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__48">The
custom content categories that the seller sends in the bid request, if
expose_custom_categories is "list".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__46"><code
class="ph codeph">url_exposure</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__47">"full", "domain", "hidden"</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__48">If
the seller sends the full url of impression, the domain only, or the url
is completely hidden. If the url_exposure is "hidden", you may still
receive the seller's default URL if the seller has one configured for
that impression.</td>
</tr>
</tbody>
</table>





## Bidder

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00008b8c__entry__73" class="entry colsep-1 rowsep-1">JSON
variable</th>
<th id="ID-00008b8c__entry__74"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00008b8c__entry__75"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__73"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__74">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__75">The
ID of the bidder that the member uses to buy impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__73"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00008b8c__entry__74">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00008b8c__entry__75">The
name of the bidder that the member uses to buy impressions</td>
</tr>
</tbody>
</table>



<div id="ID-00008b8c__section_ufl_5vl_nwb" >

## Example

**Authentication Token**

Authentication is always the first step when using the API Services. The
authentication token can then be written to our cookie file for future
use. Please see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/authentication-service.html"
class="xref" target="_blank">Authentication Service</a> for more
detailed instructions.

**View information about the member**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/platform-member/1'
{
   "response":{
      "status":"OK",
      "platform_members": [
       {
         "id": 1,
         "name": "My Company",
         "primary_type": "network",
         "platform_exposure": "public",
         "email": "admin@mycompany.com",
         "daily_imps_verified": null,
         "daily_imps_self_audited": null,
         "daily_imps_unaudited": null,
         "is_iash_compliant": false,
         "visibility_rules": {
           "expose_publishers": true,
           "expose_tags": true,
           "expose_age": true,
           "expose_gender": true,
           "expose_universal_categories": true,
           "url_exposure": "full"
         },
         "bidder": {
           "id": "2",
           "name": "DisplayWords"
         }
      }]
   }
}
```



<div id="ID-00008b8c__section_chl_5vl_nwb" >

## Related Topics

- <a href="member-service.html" class="xref">Member Service</a>
- <a href="read-only-services.html" class="xref">Read-Only Services</a>
- <a href="api-services.html" class="xref">API Services</a>






