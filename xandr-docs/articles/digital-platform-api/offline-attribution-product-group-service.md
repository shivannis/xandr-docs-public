---
Title : Offline Attribution Product Group Service
Description : The Offline Attribution Product Group Service is used to discover and
ms.date: 10/28/2023
ms.custom: digital-platform-api
locate product group information (IDs) from the
Xandr product catalog. If your line item has
---


# Offline Attribution Product Group Service



The Offline Attribution Product Group Service is used to discover and
locate product group information (IDs) from the
Xandr product catalog. If your line item has
Offline Attribution enabled, this catalog is used to track your line
item's offline sales performance against a product category, brand
product, product line, or specific product.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002601__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002601__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002601__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__2"> <a
href="https://api.appnexus.com/offline-attribution-product-group"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/offline-attribution-product-group</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__3">View
all product groups</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__2"> <a
href="https://api.appnexus.com/offline-attribution-product-group?search=STRING"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/offline-attribution-product-group?search=STRING</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__3">Search for a product group by <code
class="ph codeph">string</code></td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002601__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002601__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002601__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
ID for a certain product group</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">offline_attribution_provider_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
ID of the entity providing information for the offline attribution
catalog.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">provider_member_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
name of the entity providing information for the offline attribution
catalog</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">vendor_product_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
vendor-provided code for the product to report on</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">offline_attribution_category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
respective ID of an offline attribution category. This ID is returned to
the user in their service responses.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">category_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
name used for a certain product category (<strong>example</strong>: SOFT
DRINKS).
<p>Category names are used to search for a product group's ID.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">brand_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
name used for a certain brand (<strong>example</strong>: COCA-COLA
COMPANY).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">product_high_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
name of a specific product line (<strong>example</strong>:
COCA-COLA).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__10"><code
class="ph codeph">product_low_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002601__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002601__entry__12">The
name of a specific product name (<strong>example</strong>: DIET
COKE).</td>
</tr>
</tbody>
</table>





## Examples

**ID Request for an offline attribution product group**



**Request**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/offline-attribution-product-group'
```



**Response**

``` pre
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "offline-attribution-product-groups": [
            {
                "id": 3449,
                "offline_attribution_provider_member_id": 12515,
                "provider_member_name": "NCS",
                "vendor_product_code": "2968042",
                "offline_attribution_category_id": 3446,
                "category_name": "ADULT INCONTINENCE",
                "offline_attribution_brand_id": 3430,
                "brand_name": "BUTTERFLY HEALTH, INC.",
                "offline_attribution_product_high_id": 3421,
                "product_high_name": "BUTTERFLY",
                "offline_attribution_product_low_id": null,
                "product_low_name": "null",
                "last_modified": "2021-02-22 18:04:45",
                "created_on": "2020-02-22 18:04:45",
                "deleted": 0
            }
        ],
        "count": 1,
        "dbg_info": {
            "warnings": [],
            "version": "local",
            "output_term": "offline-attribution-product-groups"
        }
    }
}
```

**Search Query with Response**



**Request**

``` pre
// The search term needs to be URL-encoded:
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/offline-attribution-product-group?search=BRICK%20RIVER%20CIDER%20CO'
```



**Response**

``` pre
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "offline-attribution-product-groups": [
            {
                "id": 3496,
                "offline_attribution_provider_member_id": 12515,
                "provider_member_name": "NCS",
                "vendor_product_code": "5559739",
                "offline_attribution_category_id": 3506,
                "category_name": "ALCOHOLIC CIDER",
                "offline_attribution_brand_id": 3499,
                "brand_name": "BRICK RIVER CIDER CO",
                "offline_attribution_product_high_id": 3486,
                "product_high_name": "BRICK RIVER CIDER CO",
                "offline_attribution_product_low_id": null,
                "product_low_name": "null",
                "last_modified": "2021-02-22 18:05:09",
                "created_on": "2021-02-22 18:05:09",
                "deleted": 0
            }
        ],
        "count": 1,
        "dbg_info": {
            "warnings": [],
            "version": "local",
            "output_term": "offline-attribution-product-groups"
        }
    }
    }
```





## Related Topics

- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="line-item-service---ali.md"
  class="xref" target="_blank">Line Item (ALI) Service</a>
- <a
  href="insertion-order-service.md"
  class="xref" target="_blank">Insertion Order Service</a>






