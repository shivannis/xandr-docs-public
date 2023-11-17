---
Title : Category Service
Description : The read-only Category Service allows you to view all categories that
are registered in the Xandr system. Categories
---


# Category Service



The read-only Category Service allows you to view all categories that
are registered in the Xandr system. Categories
are assigned to both brands and creatives - you can see what categories
are assigned using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/brand-service.html"
class="xref" target="_blank">Brand Service</a> or the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>. You can then allow or
disallow these categories of brands and creatives using the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/ad-profile-service.html"
class="xref" target="_blank">Ad Profile Service</a>.

Please note that, for site and placement categories, you will use the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/content-category-service.html"
class="xref" target="_blank">Content Category Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007805__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00007805__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00007805__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__2"><a
href="https://api.adnxs.com/category" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/category</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__3">View
all the categories in the Xandr system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__1">GET </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__2"><a
href="https://api.adnxs.com/category/CATEGORY_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/category/CATEGORY_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__3">View
information about a particular category.</td>
</tr>
</tbody>
</table>





## JSON Fields



Note: The fields `countries_and_brands`
and `countries_and_regions` defined below are being used by our system
to allow gambling-related creatives to serve in the countries and
regions where they're legally allowed, putting us in compliance with
applicable laws.

- For more information about our official gambling-related policies, see
  our buy-side and sell-side gambling policies.
- For more information on how allowlisting works by country and region,
  contact <a href="https://support.xandr.com/" class="xref"
  target="_blank">Customer Support</a> .



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007805__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00007805__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007805__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__12">The
ID of the category.
<p><strong>Required On</strong>: PUT, in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__12">The
name of the category.
<p><strong>Required On</strong>: POST</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">is_sensitive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__12">If
<code class="ph codeph">true</code>, the category is listed as
"sensitive", and is often banned by publishers.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__12">The
date and time when the category was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">requires_whitelist_on_external</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__12">Whether brands or creatives in this
category require allowlisting in order to serve on external (i.e. RTB)
inventory.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">requires_whitelist_on_managed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__12">Whether brands or creatives in this
category require allowlisting in order to serve on managed inventory.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">is_brand_eligible</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__12">If
true, then the category is eligible to be associated with brands within
the audit process.
<p><strong>Default</strong>: true</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">requires_whitelist</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__12">Whether brands or creatives in this
category require allowlisting in order to serve.
<p><strong>Default</strong>: false</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__10"><code
class="ph codeph">countries_and_brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__11">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__12">This array contains brand allowlist
settings grouped by country. For more information, see "Countries and
Brands" below.</td>
</tr>
</tbody>
</table>

**Countries and Brands**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007805__entry__40"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00007805__entry__41"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007805__entry__42"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__40"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__41">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__42">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__40"><code
class="ph codeph">brand_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__41">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__42">The
name of the brand.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__40"><code
class="ph codeph">brand</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__41">multi_object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__42">An
object containing information about the brand allowlisted in this
country. For more information, see "Brand" below.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__40"><code
class="ph codeph">country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__41">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__42">A
2-character string referencing the country in which the brand is
allowlisted. For a list of supported codes, see the <a
href="https://en.wikipedia.org/wiki/ISO_3166-1" class="xref"
target="_blank">ISO 3166-1 country codes</a>.</td>
</tr>
</tbody>
</table>

**Regions and Brands**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007805__entry__55"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00007805__entry__56"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007805__entry__57"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__55"><code
class="ph codeph">brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__56">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__57">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__55"><code
class="ph codeph">brand_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__56">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__57">The
name of the brand.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__55"><code
class="ph codeph">brand</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__56">multi_object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__57">An
object containing information about the brand allowlisted in this
region.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__55"><code
class="ph codeph">region</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007805__entry__56">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007805__entry__57">A
string referencing the region in which the brand is allowlisted. For a
list of supported codes, see the <a
href="http://dev.maxmind.com/static/maxmind-region-codes.csv"
class="xref" target="_blank">ISO 3166-2</a>.</td>
</tr>
</tbody>
</table>





## Examples

**View all categories**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/category"
{
  "response": {
    "status": "OK",
    "count": 88,
    "start_element": null,
    "num_elements": null,
    "categories": [
      {
        "id": 1,
        "name": "Airlines",
        "is_sensitive": false,
        "last_modified": "2010-03-19 17:48:36",
        "requires_whitelist_on_external": false,
        "requires_whitelist_on_managed": false,
        "is_brand_eligible": true,
        "requires_whitelist": false,
        "whitelist": {
          "countries_and_brands": [],
          "regions_and_brands": []
        }
      },
      {
        "id": 2,
        "name": "Apparel",
        "is_sensitive": false,
        "last_modified": "2010-03-19 17:48:36",
        "requires_whitelist_on_external": false,
        "requires_whitelist_on_managed": false,
        "is_brand_eligible": true,
        "requires_whitelist": false,
        "whitelist": {
          "countries_and_brands": [],
          "regions_and_brands": []
        }
      },
      {
        "id": 3,
        "name": "Appliances",
        "is_sensitive": false,
        "last_modified": "2010-03-19 17:48:36",
        "requires_whitelist_on_external": false,
        "requires_whitelist_on_managed": false,
        "is_brand_eligible": true,
        "requires_whitelist": false,
        "whitelist": {
          "countries_and_brands": [],
          "regions_and_brands": []
        }
      },
      "dbg": {
      ...
    }
  }
}
```

**View a specific category**

``` pre
$ curl -b cookies -c cookies "https://api.adnxs.com/category/1"
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": null,
    "num_elements": null,
    "category": {
      "id": 1,
      "name": "Airlines",
      "is_sensitive": false,
      "last_modified": "2010-03-19 17:48:36",
      "requires_whitelist_on_external": false,
      "requires_whitelist_on_managed": false,
      "is_brand_eligible": true,
      "requires_whitelist": false,
      "whitelist": {
        "countries_and_brands": [],
        "regions_and_brands": []
      }
    },
    "dbg": {
      ...
    }
  }
}
```






