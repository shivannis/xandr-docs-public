---
Title : Inventory List Item Service
Description : The Inventory List Item Service lets you add app bundle IDs and raw URLs
(domain or app) to an existing inventory list. For example:
---


# Inventory List Item Service



The Inventory List Item Service lets you add app bundle IDs and raw URLs
(domain or app) to an existing inventory list. For example:

- app bundle IDs:
  - *617263396*
  - *com.magmamobile.game.Elements*
- raw URL (domain):
  *<a href="http://yahoo.com/" class="xref" target="_blank">yahoo.com</a>*
- raw URL (app): *<a
  href="https://itunes.apple.com/us/app/funny-pics-lol!-daily-laughs/id617263396"
  class="xref"
  target="_blank">https://itunes.apple.com/us/app/funny-pics-lol!-daily-laughs/id617263396</a>*

<div id="inventory-list-item-service__section_rxt_cwy_5wb"
>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="inventory-list-item-service__section_rxt_cwy_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="inventory-list-item-service__section_rxt_cwy_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="inventory-list-item-service__section_rxt_cwy_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__3">View
all items (domains/apps) in a specific inventory list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item?search=SEARCH_TERM</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__3">Search
for domains or apps containing certain characters.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__3"><p>Add
new domains/apps to an inventory list.</p>
<div id="inventory-list-item-service__note_mjj_nwy_5wb"
class="note note_note">
Note: 1000 items (domains/apps) is the
maximum number of items you can add to an inventory list for each POST
request.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item/%5BINVENTORY_LIST_ITEM_ID%5D"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item/%5BINVENTORY_LIST_ITEM_ID%5D</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__3"><p>Update
an inventory list item.</p>

<div id="inventory-list-item-service__note_nbm_mwy_5wb"
class="note note_note">
Note: The <code
class="ph codeph">include_children</code> field is the only field in an
inventory list item that you can update with a PUT request.

</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item?id=1,2,3"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/%5BLIST_ID%5D/item?id=1,2,3</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_rxt_cwy_5wb__entry__3">Delete
items (domains/apps) from an inventory list.</td>
</tr>
</tbody>
</table>



<div id="inventory-list-item-service__section_vnj_pwy_5wb"
>

## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="inventory-list-item-service__section_vnj_pwy_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="inventory-list-item-service__section_vnj_pwy_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">app_name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3">Name
of the app item (<code class="ph codeph">null</code> if a domain).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">audit_status</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3"><p>Current
status of the domain or app. Possible values are:</p>
<ul>
<li><code class="ph codeph">audited</code> - The domain or app has
passed the Xandr inventory audit.</li>
<li><p><code class="ph codeph">rejected</code> - The domain or app has
failed the Xandr inventory audit (due to Xandr policy
violations).</p></li>
<li><p><code class="ph codeph">unaudited</code> - the domain or app was
not audited.</p></li>
<li><p><code class="ph codeph">unauditable</code> - the domain or app
was not audited.</p></li>
<li><p><code class="ph codeph">pending</code> - the domain or app was
not audited (default value).</p></li>
<li><p><code class="ph codeph">masked</code> - the actual URL of the
domain or app was not exposed by the seller for targeting or reporting,
but was still audited and passed the Xandr inventory audit.</p></li>
<li><p><code class="ph codeph">is_adserver</code> - the domain or app
was not audited and was detected as an ad server domain.</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3"><p>ID
associated with the app or domain you are adding. Auto-generated on
POST.</p>
<ul>
<li><strong>Read Only</strong></li>
<li><strong>Required on:</strong> <code
class="ph codeph">PUT</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">is_supported</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3">Indicates
whether the app or domain is currently supported by Xandr (e.g., whether
it has been audited). If <code class="ph codeph">true</code>, it is
supported.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">inventory_url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3">URL
of the app or domain once it has been validated. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/validate-inventory-item-service.html"
class="xref" target="_blank">Validate Inventory Item service</a> for
details on how validation is performed.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">include_children</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3">Indicates
whether subdomains and subpaths of the parent domain should be included.
If <code class="ph codeph">true</code>, subdomains will be
included.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">rejection_reason</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3">The
reason why this domain or app is in violation of Xandr policy (e.g.,
<code class="ph codeph">Violence, Hate Speech</code>) if the <code
class="ph codeph">audit_status</code> field is set to <code
class="ph codeph">rejected</code>. If the <code
class="ph codeph">audit_status</code> field is not set to <code
class="ph codeph">rejected</code>, this field will be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__1"><code
class="ph codeph">url</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-item-service__section_vnj_pwy_5wb__entry__3"><ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul>
<p>Raw URL or app bundle ID that you provide for the item (domain or
app) to be added.</p></td>
</tr>
</tbody>
</table>



<div id="inventory-list-item-service__section_clv_vwy_5wb"
>

## Examples

**Add domains and apps (items) to an Inventory List**



In this example, we add domains and apps (items) to an inventory list.

``` pre
$ cat inventory-list-item
 
{
    "inventory-list-items": [
        {
            "url": "bad-domain.com",
            "include_children": false
        }, 
        {
            "url": "app_id"
        }, 
        ...
    ]
}
 
curl -b cookies -X POST -d @inventory-list-item "https://api.appnexus.com/inventory-list/3452/item"
 
{ 
    "response": { 
        "status": "OK",
        "inventory-list-items": [
            {
                "audit_status": "rejected",
                "inventory_url": "bad-domain.com",
                "include_children": false,
                "is_supported": true, 
                "rejection_reason": "Violence"
            }, 
            {
                "audit_status": "audited",
                "inventory_url": "app_url.com",
                "include_children": false,
                "is_supported": true, 
                "rejection_reason": null
            }, 
            ...
        ]
    }
}
```



**View all domains/apps (items) in a specific Inventory List**



In this example, we view domains and apps (items) in an inventory list.

``` pre
$ curl -b cookies -X GET "https://api.appnexus.com/inventory-list/3452/item" 

{ 
    "response": { 
        "status": "OK",
        "inventory-list-items": [
            {
                "id": 1, 
                "audit_status": "rejected",
                "app_name": null, 
                "inventory_url": "bad-domain.com",
                "include_children": false,
                "is_supported": true, 
                "rejection_reason": "Violence"
            }, 
            {
                "id": 2, 
                "audit_status": "audited",
                "app_name": "Name of the app", 
                "inventory_url": "app_url.com",
                "include_children": false,
                "is_supported": true, 
                "rejection_reason": null
            }, 
            ...
        ]
    }
}
```



**Update an inventory list item in an inventory list**



In this example, we update an inventory list item in an inventory list.

``` pre
$ cat inventory-list-item

{
    "inventory-list-item": {
        "include_children": true
    }
}

curl -b cookies -X PUT -d @nventory-list-item 'https://api.appnexus.com/inventory-list/3452/item/2'

{
    "response": {
        "inventory-list-item": {
            "id": 2,
            "include_children": true,
            "audit_status": "audited",
            "app_name": "Name of the app",
            "inventory_url": "app_url.com"
        },
        "status": "OK",
        "num_elements": 1,
        "start_element": 0,
        "count": 1
    }
}
```





<div id="inventory-list-item-service__section_t2d_2xy_5wb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/inventory-list-service.html"
  class="xref" target="_blank">Inventory List Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/validate-inventory-item-service.html"
  class="xref" target="_blank">Validate Inventory Item Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
  class="xref" target="_blank">Line Item Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a>








