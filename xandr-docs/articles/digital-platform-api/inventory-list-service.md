---
Title : Inventory List Service
Description : The Inventory List Service is used to create inventory lists that
ms.date: 10/28/2023
ms.custom: digital-platform-api
contain the domains and apps you wish to target. These inventory lists
---


# Inventory List Service



The Inventory List Service is used to create inventory lists that
contain the domains and apps you wish to target. These inventory lists
can then be associated with line items for targeting. Use the Inventory
List Service to create, view, and update inventory lists. You can then
add domains and apps (or app bundle IDs) to the inventory list via the
<a
href="inventory-list-item-service.md"
class="xref" target="_blank">Inventory List Item Service</a>.

>

## REST API



<b>Note:</b>

To edit an inventory list in the API based on the ID of the inventory
list in the UI (login required), you must first obtain the `id` of the
list via the API using the following `GET` call:

``` pre
GEThttps://api.appnexus.com/inventory-list?inventory_url_list_id=[CONSOLE_UI_LIST_ID]
```

Use the value of the `id` field returned for all subsequent API calls to
edit the desired inventory list.



<table id="inventory-list-service__table_w5n_zyy_5wb"
class="table frame-all">
<thead class="thead">
<tr class="header row">
<th id="inventory-list-service__table_w5n_zyy_5wb__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="inventory-list-service__table_w5n_zyy_5wb__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="inventory-list-service__table_w5n_zyy_5wb__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list" class="xref"
target="_blank">https://api.appnexus.com/inventory-list</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__3">View all
inventory lists.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list?search=SEARCH_TERM"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list?search=SEARCH_TERM</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__3">Search for
inventory lists with domains or apps containing certain characters.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__1">POST</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list" class="xref"
target="_blank">https://api.appnexus.com/inventory-list</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__3">Add a new
inventory list.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__1">PUT</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list/%5BINVENTORY_LIST_ID%5D"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list/%5BINVENTORY_LIST_ID%5D</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__3">Update an
inventory list.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__1">DELETE</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list?id=INVENTORY_LIST_ID"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list?id=INVENTORY_LIST_ID</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_w5n_zyy_5wb__entry__3">Delete an
inventory list.</td>
</tr>
</tbody>
</table>



<b>Note:</b> **Helpful Query String Filters:**



For general information on query string filters available to most
services, see <a
href="api-semantics.md"
class="xref" target="_blank">API Semantics</a> (e.g., `num_elements`,
`start elements`, `search`, `sort`). The `has_apps` and `has_domains`
query string filters are unique to `inventory-list` service.

<table id="inventory-list-service__table_hv1_lbz_5wb"
class="table frame-all">
<thead class="thead">
<tr class="header row">
<th id="inventory-list-service__table_hv1_lbz_5wb__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="inventory-list-service__table_hv1_lbz_5wb__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="inventory-list-service__table_hv1_lbz_5wb__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list?has_apps=true&amp;has_domains=true"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list?has_apps=true&amp;has_domains=true</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__3">Returns
all lists that contains apps and domains.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list?has_apps=false&amp;has_domains=true"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list?has_apps=false&amp;has_domains=true</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__3">Returns
all lists that contain only domains.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__1">GET</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__2"><a
href="https://api.appnexus.com/inventory-list?has_apps=true&amp;has_domains=false"
class="xref"
target="_blank">https://api.appnexus.com/inventory-list?has_apps=true&amp;has_domains=false</a></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="inventory-list-service__table_hv1_lbz_5wb__entry__3">Returns
all lists that contain only apps.</td>
</tr>
</tbody>
</table>







>

## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="inventory-list-service__section_f2t_5bz_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="inventory-list-service__section_f2t_5bz_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="inventory-list-service__section_f2t_5bz_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><p>The
ID of the specific advertiser this inventory list is associated
with.</p>
<p>If <code class="ph codeph">null</code><code
class="ph codeph">,</code> the inventory list is available to all of the
member's advertisers.</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">null.</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3">Timestamp
when inventory list was created.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3">Description
of the inventory list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><p>ID of
the inventory list (auto-generated on <code
class="ph codeph">POST</code>).</p>
<ul>
<li><strong>Read Only</strong></li>
<li><strong>Required On:</strong> <code
class="ph codeph">PUT</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul>
<p>Name of the inventory list.</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">insertion_order_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3">The ID
of the insertion order under which the inventory list was created.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">inventory_list_type</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">enum</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><ul>
<li><strong>Required On:</strong> <code
class="ph codeph">POST</code></li>
</ul>
<p>Type of inventory list. Possible values:</p>

class="note note_note">
<b>Note:</b> The "whitelist" and "blacklist"
terminology is being changed to "allowlist" and "blocklist",
respectively, for our APIs in the future. This is a part of an ongoing
effort to evaluate our current terminology usage and usher in more
inclusive terminology for Xandr platforms.


<ul>
<li><code class="ph codeph">whitelist</code></li>
<li><code class="ph codeph">blacklist</code></li>
</ul>
class="note note_note">
<b>Note:</b> The value of this field cannot be
edited on <code class="ph codeph">PUT</code> calls.
</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">inventory_url_list_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3">ID of
the inventory list as it appears in the UI.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3">Timestamp
when inventory list was last updated.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">line_item_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3">The ID
of the line item using this list for domain/app targeting.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">num_apps</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><p>Total
number of apps in the inventory list.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">num_domains</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><p>Total
number of domain in the inventory list.</p>
<p><strong>Read Only</strong></p></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__1"><code
class="ph codeph">required_for_all</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__2">Boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="inventory-list-service__section_f2t_5bz_5wb__entry__3"><p>If
<code class="ph codeph">true</code>, the inventory list will be applied
to all line items under the advertiser (see <code
class="ph codeph">advertiser_id</code>).</p>
<ul>
<li><strong>Default:</strong> <code class="ph codeph">false</code>.</li>
</ul></td>
</tr>
</tbody>
</table>



>

## Examples

**Create an Inventory List**



In this example, we create a new inventory list.

``` pre
$ cat inventory-list-create
 
{
    "inventory-list": {
        "name": "XYZ Allowlist",
        "description": "A list of domains that Company XYZ wants to target",
        "inventory_list_type": "allowlist"
    }
}
 
$ curl -b cookies -X POST -d @inventory-list-create 'https://api.appnexus.com/inventory-list'
 
{
    "response": {
        "status": "OK",
        "inventory-list": {
           "id": 3901,
           "name": "XYZ Allowlist"
           ....
         }
    }
}
```



**Update an Inventory List**



In this example, we update an inventory list.

``` pre
$ cat inventory-list-update
 
{
    "inventory-list": {
        "description": "Updated Description"
    }
}
 
$ curl -b cookies -X PUT -d @inventory-list-update 'https://api.appnexus.com/inventory-list/3901'
 
{
    "response": {
        "status": "OK",
        "inventory-list": {
           "id": 3901,
           "name": "XYZ Allowlist"
           "description": "Updated Description",
           ....
         }
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
  href="inventory-list-item-service.md"
  class="xref" target="_blank">Inventory List Item Service</a>
- <a
  href="validate-inventory-item-service.md"
  class="xref" target="_blank">Validate Inventory Item Service</a>
- <a
  href="line-item-service.md"
  class="xref" target="_blank">Line Item Service</a>
- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>








