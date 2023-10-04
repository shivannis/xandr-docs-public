---
Title : Deal Buyer Setting Service
Description : The Deal Buyer Setting Service lets buyers give deals an internal alias
for clarity in the UI and assign a status to deals so buyers have more
control over which deals they’re targeting. Note that these deal
---


# Deal Buyer Setting Service



The Deal Buyer Setting Service lets buyers give deals an internal alias
for clarity in the UI and assign a status to deals so buyers have more
control over which deals they’re targeting. Note that these deal
settings are only available to the buyers who created them and are not
visible to the seller of the deal.

<div id="buy-side-service-template__note_vj2_shc_xwb"


Note: Buyers can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a> to view the
deals available to them and the `deal_targets`field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> to target them. Sellers
can use the
<a href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> to set up and manage
deals.





## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all of your deal settings.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting?id=ID" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting?id=ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific deal setting.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting?deal_id=DEAL_ID"
class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting?deal_id=DEAL_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
the settings for a specific deal.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting?id=1,2,3" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
multiple deal settings by ID using a comma-separated list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting/meta" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Find
out which fields you can filter and sort by.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
settings for a deal.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/deal-buyer-setting?id=ID" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting?id=ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
settings for a deal.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">acceptance_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
status of the deal: <code class="ph codeph">active</code>, <code
class="ph codeph">inactive</code>, <code
class="ph codeph">declined</code>, and <code
class="ph codeph">pending</code>.</p>

<div id="buy-side-service-template__note_j1s_xhc_xwb"
class="note note_note">
Note: <code
class="ph codeph">pending</code> status is not allowed in a PUT request


<ul>
<li><strong>Default:</strong> The default for this field depends on the
value of the <code class="ph codeph">member.default_accept_deals</code>
field (see <a
href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
class="xref" target="_blank">Member Service</a>). If <code
class="ph codeph">member.default_accept_deals</code> is <code
class="ph codeph">true</code>, the default for <code
class="ph codeph">acceptance_status</code> is <code
class="ph codeph">active</code>; if <code
class="ph codeph">member.default_accept_deals</code> is <code
class="ph codeph">false</code>, the default for <code
class="ph codeph">acceptance_status</code> is <code
class="ph codeph">pending</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">buyer_bidder_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
bidder ID of the member. For buyers, this will always be 2.</p>
<ul>
<li><strong>Read Only</strong></li>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the member who can buy the deal. A deal will either be set up with
a buyer member ID or a buyer seat code. This is your Xandr member
ID.</p>
<ul>
<li><strong>Read Only</strong></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">buyer_seat_code</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
code of the buyer seat who can buy the deal. A deal will either be set
up with a buyer member ID or a buyer seat code. This is your Xandr
member ID.</p>
<ul>
<li><strong>Read Only</strong></li>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">comments</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(65534)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p><strong>Not
yet being used by the UI.</strong> The custom comments to display in the
UI for the deal.</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">deal_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the deal to which the settings apply.</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">deal_alias</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string
(254)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
alias of the deal, as it will appear in the UI.</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the deal settings</p>
<ul>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT</code></li>
<li><strong>Default:</strong> auto-incremented number.</li>
</ul></td>
</tr>
</tbody>
</table>







## Examples

**Add deal setting**

If a deal-buyer-setting object has already been created for the deal,
the POST request will return the following error message:
"`The buyer_member_id, deal_id combination was not unique.`" To modify
this deal-buyer-setting, first make a GET
<a href="https://api.appnexus.com/deal-buyer-setting?deal_id=DEAL_ID"
class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting?deal_id=DEAL_ID</a>
request to return the deal-buyer-setting ID. Then use the
deal-buyer-setting ID with a PUT
<a href="https://api.appnexus.com/deal-buyer-setting?id=ID" class="xref"
target="_blank">https://api.appnexus.com/deal-buyer-setting?id=ID</a>
request to modify the deal-buyer-setting.

<div id="buy-side-service-template__p-20eb2a6d-1e56-42a6-96ee-f5d79f857f38"
>

``` pre
$ cat deal_settings.json
 
{
    "deal-buyer-setting": {
        "deal_id": 22896,
        "deal_alias": "This is an alias",
        "comments": "this is a comment on a deal",
        "acceptance_status": "active"
    }
}

$ curl -b cookies -c cookies -X POST -d @deal_settings.json 'https://api.appnexus.com/deal-buyer-setting'

{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "12005",
        "start_element": 0,
        "num_elements": 100,
        "deal-buyer-setting": {
            "id": 12005,
            "deal_id": 22896,
            "deal_alias": "This is an alias",
            "comments": "this is a comment on a deal",
            "buyer_member_id": 546,
            "acceptance_status": "active"
        }
    }
}
```



**Modify deal settings**

``` pre
$ cat deal_settings_update.json
 
{
    "deal-buyer-setting": {
        "deal_alias": "new deal alias"
    }
}

$ curl -b cookies -c cookies -X PUT -d @deal_settings_update.json 'https://api.appnexus.com/deal-buyer-setting?id=11777'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "11777",
        "start_element": 0,
        "num_elements": 100,
        "deal-buyer-setting": {
            "id": 11777,
            "deal_id": 560402,
            "deal_alias": "new deal alias",
            "comments": null,
            "buyer_member_id": 546,
            "acceptance_status": "active"
        }
    }
}
```

**View all of your deal settings**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-setting'
 
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "deal-buyer-settings": [
            {
                "id": 9980,
                "deal_id": 558605,
                "deal_alias": null,
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            },
            {
                "id": 10950,
                "deal_id": 559575,
                "deal_alias": null,
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            },
            {
                "id": 11777,
                "deal_id": 560402,
                "deal_alias": "new deal alias",
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            }, 
            {
                "id": 1802,
                "deal_id": 550427,
                "deal_alias": null,
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            },
            {
                "id": 1937,
                "deal_id": 550562,
                "deal_alias": null,
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            }
        ]
    }
}
```

**View the settings for a specific deal settings ID**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-setting?id=11777'

{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "deal-buyer-settings": [
            {
                "id": 11777,
                "deal_id": 560402,
                "deal_alias": "new deal alias",
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            }
        ]
    }
}
```

**View the settings for a specific deal ID**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-setting?deal_id=560402'

{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "deal-buyer-settings": [
            {
                "id": 11777,
                "deal_id": 560402,
                "deal_alias": "new deal alias",
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            }
        ]
    }
}
```

**View the settings for multiple deal IDs**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/deal-buyer-setting?deal_id=560402,559575,558605'

{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "deal-buyer-settings": [
            {
                "id": 9980,
                "deal_id": 558605,
                "deal_alias": null,
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            },
            {
                "id": 10950,
                "deal_id": 559575,
                "deal_alias": null,
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            },
            {
                "id": 11777,
                "deal_id": 560402,
                "deal_alias": "deal alias",
                "comments": null,
                "buyer_member_id": 546,
                "acceptance_status": "active"
            }
        ]
    }
}
```






