---
Title : Category Service
Description : The read-only Category Service allows you to view all buy-side
ms.date: 10/28/2023
ms.custom: digital-platform-api
categories that are registered in our system. Categories are applied to
---


# Category Service



The read-only Category Service allows you to view all buy-side
categories that are registered in our system. Categories are applied to
both brands and creatives - you can see what categories are assigned to
a brand or creative using the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> or the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a>. Sellers can then
allow or disallow these categories of brands and creatives using the <a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profile Service</a>. When looking at a
creative in , you will see "Sensitive
categories" and "Offer category" - both of these pull from the Category
Service. Sensitive categories will have the is_sensitive field set to
true.

Sellers will categorize sites and placements using the <a
href="content-category-service.md"
class="xref" target="_blank">Content Category Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005f8__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000005f8__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000005f8__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__2"><a
href="https://api.appnexus.com/category" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/category</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__3">View
all categories</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__2"><a
href="https://api.appnexus.com/category?id=CATEGORY_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/category?id=CATEGORY_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__3">View
a particular category</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__2"><a
href="https://api.appnexus.com/category/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/category/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields



<b>Note:</b>

The fields `countries_and_brands` and `countries_and_regions` defined
below are being used by our system to allow gambling-related creatives
to serve in the countries and regions where they're legally allowed,
putting us in compliance with applicable laws.

- For more information about our official gambling-related policies, see
  our
  <a href="https://wiki.xandr.com/display/policies/Policies+for+Buying"
  class="xref" target="_blank">buy-side</a> (login required) and
  <a href="https://wiki.xandr.com/display/policies/Policies+for+Selling"
  class="xref" target="_blank">sell-side</a> (login required) gambling
  policies.
- For more information on how allowlisting works by country and region,
  contact <a href="https://help.xandr.com/s/login/" class="xref"
  target="_blank">Customer Support</a>.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005f8__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000005f8__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000005f8__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__15">The
ID of the category.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__15">The
name of the category.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">is_sensitive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">bool</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__15">If
<code class="ph codeph">true</code>, the category is listed as
"sensitive", and is often banned by publishers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">requires_whitelist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__15">Whether brands or creatives in this
category require allowlisting in order to serve.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">requires_whitelist_on_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__15">Whether brands or creatives in this
category require allowlisting in order to serve on managed
inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">requires_whitelist_on_external</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__15">Whether brands or creatives in this
category require allowlisting in order to serve on external (i.e., RTB)
inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__15">The
date and time when the category was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">is_brand_eligible</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__15">If
true, Xandr's audit team may associate the
category with brands.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__13"><code
class="ph codeph">countries_and_brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__14">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__15">This array contains brand allowlist
settings grouped by country. For more information, see <a
href="category-service.md#ID-000005f8__countries"
class="xref">Countries and Brands</a> below.</td>
</tr>
</tbody>
</table>

**Countries and Brands**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005f8__entry__43"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000005f8__entry__44"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000005f8__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__43"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__44">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__45">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__43"><code
class="ph codeph">brand_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__44">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__45">The
name of the brand.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__43"><code
class="ph codeph">brand</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__44">multi_object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__45">An
object containing information about the brand allowlisted in this
country. For more information, see <a
href="category-service.md#ID-000005f8__brand" class="xref">Brand</a>
below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__43"><code
class="ph codeph">country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__44">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__45">A
2-character string referencing the country in which the brand is
allowlisted. For a list of supported codes, see the <a
href="https://en.wikipedia.org/wiki/ISO_3166-1" class="xref"
target="_blank">ISO 3166-1 country codes</a>.</td>
</tr>
</tbody>
</table>

  
  
**Brand**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000005f8__entry__58"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000005f8__entry__59"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000005f8__entry__60"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__58"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__59">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__60">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__58"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000005f8__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000005f8__entry__60">The
name of the brand.</td>
</tr>
</tbody>
</table>





## Examples

**View a single category**

``` pre
{code}
$ curl -b cookies "https://api.appnexus.com/category?id=1"
{
  "response": {
    
    "category": {
      "whitelist": {
        "countries_and_brands": [
        ],
        "countries": [
        ]
      },
      "requires_whitelist": false,
      "is_brand_eligible": true,
      "requires_whitelist_on_managed": false,
      "requires_whitelist_on_external": false,
      "last_modified": "2010-03-19 17:48:36",
      "is_sensitive": false,
      "name": "Airlines",
      "id": 1
    },
    "num_elements": null,
    "start_element": null,
    "count": 1,
    "status": "OK"
  }
}
{code}
```

**View all categories**

``` pre
{code}
$ curl -b cookies "https://api.appnexus.com/category"
{
  "response": {
    
    "categories": [
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Airlines",
        "id": 1
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Apparel",
        "id": 2
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Appliances",
        "id": 3
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Automotive and Vehicles",
        "id": 4
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Computers and Electronics",
        "id": 5
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-06-01 20:41:02",
        "is_sensitive": true,
        "name": "Context Link Providers",
        "id": 6
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-07-01 20:23:31",
        "is_sensitive": false,
        "name": "Cosmetics and Hygiene",
        "id": 7
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-06-02 19:23:05",
        "is_sensitive": true,
        "name": "Dating",
        "id": 8
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Education",
        "id": 9
      },
      {
        "whitelist": {
          "countries_and_brands": [
          ],
          "countries": [
          ]
        },
        "requires_whitelist": false,
        "is_brand_eligible": true,
        "requires_whitelist_on_managed": false,
        "requires_whitelist_on_external": false,
        "last_modified": "2010-03-19 17:48:36",
        "is_sensitive": false,
        "name": "Employment",
        "id": 10
      },
      ...
    ],
    "num_elements": null,
    "start_element": null,
    "count": 78,
    "status": "OK"
  }
}
{code}
```





## Related Topics

- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>






