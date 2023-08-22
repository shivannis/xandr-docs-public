# Data Buyer Provider Service

<div class="body">

<div class="section">

## Data Buyer Provider Service

The Data Buyer Provider Service allows you to view all activated buyers
on the Data Marketplace that have access to your data and have activated
data clearing with you. Any segment that you’ve mapped using the
existing <a
href="https://docs.xandr.com/bundle/data-providers/page/segment-billing-category-service.html"
class="xref" target="_blank">Segment Billing Category Service</a> will
automatically be cleared for these buyers.  

</div>

<div class="section">

## REST API

**View all current buyers: **

GET
https://api.<span class="ph">appnexus</span>.com/data-buyer-provider 

</div>

<div class="section">

## JSON Fields

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d12983e75" class="entry nocellnoborder"
style="vertical-align: top">Field</th>
<th id="d12983e78" class="entry nocellnoborder"
style="vertical-align: top">Type (Length)</th>
<th id="d12983e81" class="entry nocellnoborder"
style="vertical-align: top">Description</th>
<th id="d12983e84" class="entry cell-noborder"
style="vertical-align: top">Default</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12983e75 "><code class="ph codeph">id</code></td>
<td class="entry nocellnoborder"
headers="d12983e78 ">int</td>
<td class="entry nocellnoborder"
headers="d12983e81 ">ID of the sharing record</td>
<td class="entry cell-noborder"
headers="d12983e84 ">Auto-generated number</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12983e75 "><code class="ph codeph">last_modified</code></td>
<td class="entry nocellnoborder"
headers="d12983e78 ">date</td>
<td class="entry nocellnoborder"
headers="d12983e81 ">When the <code
class="ph codeph">data_buyer_provider</code> record was last
modified</td>
<td class="entry cell-noborder"
headers="d12983e84 "> </td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12983e75 "><code class="ph codeph">active</code></td>
<td class="entry nocellnoborder"
headers="d12983e78 ">boolean</td>
<td class="entry nocellnoborder"
headers="d12983e81 ">View whether the record is active or inactive</td>
<td class="entry cell-noborder"
headers="d12983e84 "> </td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12983e75 "><code
class="ph codeph">data_provider_member_id</code></td>
<td class="entry nocellnoborder"
headers="d12983e78 ">int</td>
<td class="entry nocellnoborder"
headers="d12983e81 ">ID of data provider member assigned to you by the
Data Marketplace</td>
<td class="entry cell-noborder"
headers="d12983e84 "> </td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d12983e75 "><code class="ph codeph">buyer_member_id</code></td>
<td class="entry nocellnoborder"
headers="d12983e78 ">int</td>
<td class="entry nocellnoborder"
headers="d12983e81 ">Member ID of the buyer</td>
<td class="entry cell-noborder"
headers="d12983e84 "> </td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d12983e75 "><code
class="ph codeph">data_revshare_pct</code></td>
<td class="entry nocellnoborder"
headers="d12983e78 ">double</td>
<td class="entry nocellnoborder"
headers="d12983e81 ">Data revenue share of the total cost (inherited
from data provider member), e.g., 20% = <code
class="ph codeph">20</code></td>
<td class="entry cell-noborder"
headers="d12983e84 "> </td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d12983e75 "><code class="ph codeph">data_cost_type</code></td>
<td class="entry -nocellborder"
headers="d12983e78 ">string</td>
<td class="entry -nocellborder"
headers="d12983e81 "><p>Set cost type (inherited from data provider
member)</p>
<ul>
<li>1: CPM</li>
<li>2: %MediaCost</li>
</ul></td>
<td class="entry cellborder"
headers="d12983e84 "> </td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

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

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="data-marketplace-data-partner-overview.html" class="link">Data
Marketplace - Data Partner Overview</a>

</div>

</div>

</div>
