---
Title : Deal From Package Service
Description : A package is a deal that a seller is prepared to offer to any buyer.
---


# Deal From Package Service



A package is a deal that a seller is prepared to offer to any buyer.
Buyer members use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/package-buyer-access-service.html"
class="xref" target="_blank">Package Buyer Access Service</a> to browse
available packages and find one that meets their needs. Then buyers use
the Deal From Package service to generate a deal between themselves and
the seller. 

Once you have generated a deal, you can view deal details including
description and deal pricing using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005390__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00005390__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00005390__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005390__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005390__entry__2"><a
href="https://api.adnxs.com/deal-from-package?buyer_member_id=BUYER_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/deal-from-package?buyer_member_id=BUYER_MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005390__entry__3"><strong>Create a new deal based on a
package.</strong>

Note: Bidder and admin users must
specify the buyer member ID in the URI; for member users, the deal
record is generated with the member set as the buyer.<br />
&#10;</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00005390__entry__7" class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00005390__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00005390__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005390__entry__7"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005390__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005390__entry__9">The
ID of the deal creation record.
<ul>
<li><strong>Default</strong>: auto-generated number.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00005390__entry__7"><code
class="ph codeph">package_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00005390__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00005390__entry__9">The
ID of the package from which you are generating a deal. You can use the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/package-buyer-access-service.html"
class="xref" target="_blank">Package Buyer Access Service</a> to get
package IDs.
<ul>
<li><strong>Required On</strong>: POST.</li>
</ul></td>
</tr>
</tbody>
</table>





## Example

**Create a deal from a package**

``` pre
$ cat create_deal
{
    "deal-from-package": {
        "package_id": 1234
    }
}
$ curl -b cookies -c cookies -X POST -d @create_deal.json "https://api.adnxs.com/deal-from-package?buyer_member_id=234"
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "id": 4321,
        "deal-from-package": {
            "id": 4321,
            "package_id": 1234
        }
    }
}
```






