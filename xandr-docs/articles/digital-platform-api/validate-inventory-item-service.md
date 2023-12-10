---
Title : Validate Inventory Item Service
Description : The `inventory-list/validate-inventory-item` service is used to
ms.date: 10/28/2023
ms.custom: digital-platform-api
determine whether the app bundle IDs and/or raw URLs (domains or apps)
you provide in your inventory lists are currently supported by Xandr.
---


# Validate Inventory Item Service



The `inventory-list/validate-inventory-item` service is used to
determine whether the app bundle IDs and/or raw URLs (domains or apps)
you provide in your inventory lists are currently supported by Xandr.
This service will validate whether these URLs and app IDs are properly
formed and supported as well as indicate whether they violate Xandr
policies.



## REST API



<table
id="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/inventory-list/validate-inventory-item"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/validate-inventory-item</a>(inventory
list JSON)</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Validate
a list of inventory items.</td>
</tr>
</tbody>
</table>





>

## JSON Fields



<table
id="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_valid</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Indicates
if the app or domain is properly formed (e.g., uses an HTTP or HTTPS
protocol). If <code class="ph codeph">true</code>, it is properly
formed.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_supported</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Indicates
if the app or domain is currently supported by Xandr (i.e., whether it
has been audited). If <code class="ph codeph">true</code>, it is
supported.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Raw
URL or app bundle ID that you provided for the item (domain or app) to
be validated.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">inventory_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">URL
of the app or domain once it has been validated.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">inventory_url_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
ID assigned to an inventory URL. If <code
class="ph codeph">inventory_url_id</code> has a <code
class="ph codeph">null</code> value, this means the inventory has not
yet been approved.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Current
audit status of the domain or app. Possible values are:</p>
<ul>
<li><code class="ph codeph">audited</code> - The domain or app has
passed the Xandr inventory audit.</li>
<li><code class="ph codeph">rejected</code> - The domain or app has
failed the Xandr inventory audit (due to Xandr policy violations).</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">app_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
name of the mobile application. If the inventory item is a domain, a
<code class="ph codeph">null</code> value appears.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">rejection_reason</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
reason why this domain or app is in violation of Xandr policies (e.g.,
<code class="ph codeph">Violence</code>) if the <code
class="ph codeph">audit_status</code> field is set to <code
class="ph codeph">rejected</code>. If the <code
class="ph codeph">audit_status</code> field is not set to <code
class="ph codeph">rejected</code>, this field will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">is_parent_domain</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="validate-inventory-item-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">Indicates
whether the domain also includes subdomains.</td>
</tr>
</tbody>
</table>





>

## Examples

**Validate a list of inventory items**



In this example, we validate a list of inventory items.

``` pre
$cat validate-inventory-item
 
{ 
    "inventory-items": [{ 
          "url": "yahoo.com"
       },
       { 
          "url": "breitbart.com"
       }
    ]
}
 
curl -b cookies -X POST -d @validate-inventory-item "https://api.appnexus.com/inventory-list/validate-inventory-item"
 
{
  "response": {
    "status": "OK",
    "inventory-items": [
      {
        "is_valid": true,
        "is_supported": true,
        "inventory_url": "yahoo.com",
        "inventory_url_id": 640,
        "app_name": null,
        "audit_status": "audited",
        "rejection_reason": null,
        "is_parent_domain": true,
        "visits": null 
      },
      {
        "is_valid": true,
        "is_supported": true,
        "inventory_url": "breitbart.com",
        "inventory_url_id": 678,
        "app_name": null,
        "audit_status": "rejected",
        "rejection_reason": "Hate Speech",
        "is_parent_domain": false,
        "visits": null 
      }
    ]
  }
}
```





>

## Related Topics



- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="inventory-list-service.md"
  class="xref" target="_blank">Inventory List Service</a>
- <a
  href="inventory-list-item-service.md"
  class="xref" target="_blank">Inventory List Item Service</a>
- <a
  href="line-item-service.md"
  class="xref" target="_blank">Line Item Service</a>
- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>








