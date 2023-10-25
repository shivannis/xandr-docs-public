---
Title : Data Buyer Provider Service
Description : ## Data Buyer Provider Service
The Data Buyer Provider Service allows you to view all activated buyers
on the Data Marketplace that have access to your data and have activated
data clearing with you. Any segment that you’ve mapped using the
---


# Data Buyer Provider Service





## Data Buyer Provider Service

The Data Buyer Provider Service allows you to view all activated buyers
on the Data Marketplace that have access to your data and have activated
data clearing with you. Any segment that you’ve mapped using the
existing <a
href="https://docs.xandr.com/bundle/data-providers/page/segment-billing-category-service.html"
class="xref" target="_blank">Segment Billing Category Service</a> will
automatically be cleared for these buyers.  
  





## REST API

**View all current buyers:  
**

GET
https://api.appnexus.com/data-buyer-provider 





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000a94__entry__1" class="entry">Field</th>
<th id="ID-00000a94__entry__2" class="entry">Type (Length)</th>
<th id="ID-00000a94__entry__3" class="entry">Description</th>
<th id="ID-00000a94__entry__4" class="entry">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry" headers="ID-00000a94__entry__2">int</td>
<td class="entry" headers="ID-00000a94__entry__3">ID of the sharing
record</td>
<td class="entry" headers="ID-00000a94__entry__4">Auto-generated
number</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry" headers="ID-00000a94__entry__2">date</td>
<td class="entry" headers="ID-00000a94__entry__3">When the <code
class="ph codeph">data_buyer_provider</code> record was last
modified</td>
<td class="entry" headers="ID-00000a94__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry" headers="ID-00000a94__entry__2">boolean</td>
<td class="entry" headers="ID-00000a94__entry__3">View whether the
record is active or inactive</td>
<td class="entry" headers="ID-00000a94__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">data_provider_member_id</code></td>
<td class="entry" headers="ID-00000a94__entry__2">int</td>
<td class="entry" headers="ID-00000a94__entry__3">ID of data provider
member assigned to you by the Data Marketplace</td>
<td class="entry" headers="ID-00000a94__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">buyer_member_id</code></td>
<td class="entry" headers="ID-00000a94__entry__2">int</td>
<td class="entry" headers="ID-00000a94__entry__3">Member ID of the
buyer</td>
<td class="entry" headers="ID-00000a94__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">data_revshare_pct</code></td>
<td class="entry" headers="ID-00000a94__entry__2">double</td>
<td class="entry" headers="ID-00000a94__entry__3">Data revenue share of
the total cost (inherited from data provider member), e.g., 20% = <code
class="ph codeph">20</code></td>
<td class="entry" headers="ID-00000a94__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000a94__entry__1"><code
class="ph codeph">data_cost_type</code></td>
<td class="entry" headers="ID-00000a94__entry__2">string</td>
<td class="entry" headers="ID-00000a94__entry__3"><p>Set cost type
(inherited from data provider member)</p>
<ul>
<li>1: CPM</li>
<li>2: %MediaCost</li>
</ul></td>
<td class="entry" headers="ID-00000a94__entry__4"></td>
</tr>
</tbody>
</table>





## Example

**View all current buyers activated for data clearing**

``` pre
curl -b cookies -c cookies "https://api.appnexus.com/data-buyer-provider?member_id=958&data_provider_member_id=958"
{
        "response": {
                "count": 1,
                "data_buyer_providers": [
                        {
                                "active": true,
                                "buyer_member_id": 1370,
                                "data_cost_type": "cpm",
                                "data_provider_member_id": 958,
                                "data_revshare_pct": 20,
                                "id": 2605,
                                "last_modified": "2017-10-05 20:57:21"
                        }
                ],
                "dbg_info":
                {
                        "output_term": "data_buyer_providers",
                        "version": "1.18.888",
                        "warnings": []
                },
                "num_elements": 100,
                "start_element": 0,
                "status": "OK"
        }
}
```






