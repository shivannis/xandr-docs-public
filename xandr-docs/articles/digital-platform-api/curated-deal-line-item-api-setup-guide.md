---
Title : Curated Deal Line Item API Setup Guide
Description : Setting up an API implementation of a Curated Deal Line Item to target a
ms.date: 10/28/2023
ms.custom: digital-platform-api
deal requires configuring a number of different properties on different
API objects. This guide will explain the process of creating and
---


# Curated Deal Line Item API Setup Guide



Setting up an API implementation of a Curated Deal Line Item to target a
deal requires configuring a number of different properties on different
API objects. This guide will explain the process of creating and
configuring a curated deal line item using our API.



## Overview

Curated deals represent a negotiated agreement between a buyer and a
curator that combines a curator’s proprietary assets
with Xandr Marketplace supply. These proprietary
assets can include audience data, preferred inventory access, specially
negotiated rates, optimization talent, investment strategy, and other
features that enhance the deal supply and create a unique offering. Deal
curators have their own member seat on
the Xandr Platform, which they use to package
supply and their own assets into curated deal IDs for buyers. Any DSP
integrated to the Xandr exchange can buy curated
deals.

Setting up a curated deal line item typically involves making requests
to the following API service endpoints to access or create the
corresponding API objects:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__entry__1" class="entry colsep-1 rowsep-1">API
Endpoint</th>
<th id="ID-000022a6__entry__2" class="entry colsep-1 rowsep-1">API
Object</th>
<th id="ID-000022a6__entry__3" class="entry colsep-1 rowsep-1">Detailed
Reference</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__1"><a
href="https://api.appnexus.com/advertiser" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/advertiser</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__2">advertiser</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__3"><a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__1"><a
href="https://api.appnexus.com/insertion-order" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__2">insertion-order</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__3"><a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__1"><a
href="https://api.appnexus.com/deal" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__2">deal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__3"><a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__1"><a
href="https://api.appnexus.com/profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/profile</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__2">profile</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__3"><a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__2">line-item (ALI)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__3"><a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item - ALI Service</a></td>
</tr>
</tbody>
</table>

This guide uses cURL examples for all requests. You can use other API
request tools (e.g., <a href="https://www.getpostman.com/" class="xref"
target="_blank">Postman</a>), but you’ll then need to adjust the
examples accordingly.

**Prerequisites**

Before beginning this setup, be sure to read <a
href="api-getting-started.md"
class="xref" target="_blank">API Getting Started</a>. It provides
information on testing environments, usage constraints, API semantics
(running commands, filtering, sorting, etc.), and best practices.

**Order of Operations**

API objects often have dependencies on other API objects and there is an
order you must follow in creating or accessing objects when you create a
curated deal line item. For example, you must provide the IDs of the
following API objects: `advertiser`, `insertion-order`, `deal`,
and `profile`. To obtain the IDs for these objects, you'll need to
either create them or already have access to them. The steps in this
guide follow the typical order of operations required to create a
curated deal line item.

**Best Practices**

For a general list of best practices to follow when working with
the API, see <a
href="api-best-practices.md"
class="xref" target="_blank">API Best Practices</a>. The following are
some best practices that are specific to a curated deal line item setup:

- Set the `state` field of the curated deal line item
  to `"inactive"` until the line item is fully configured and ready for
  testing.
- Note the ID of any objects you create. The IDs of objects you create
  are returned in the response body of requests. You'll often need these
  IDs later so copying them when they're returned can reduce the number
  of additional GET requests you have to make to obtain them.

**Setup Procedure**

The following steps will guide you through the process of setting up a
curated deal line item with typical configurations:



- <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__23"
  class="xref">Step 1 - Obtain an authorization token</a>

- <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__24"
  class="xref">Step 2 - Create or access an advertiser</a>

- <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__25"
  class="xref">Step 3 - Create or access an insertion order</a>

- <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__26"
  class="xref">Step 4 - Create a deal</a>

- <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__27"
  class="xref">Step 5 - Create a curated deal line item profile</a>

- <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__30"
  class="xref">Step 6 - Create a curated deal line item</a>







## Authentication

**Step 1 - Obtain an authorization token**

First, you’ll need to obtain an authorization token. You must then
include this authorization token in all subsequent requests (see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
information). To obtain an authorization token, do the following:

1\. Create a JSON file containing your username and password.

``` pre
{
    "auth": {
        "username" : "USERNAME",
        "password" : "PASSWORD"
    }
}
```

2\. Make a POST request to the `/auth` endpoint with this JSON file in
the request body (see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
information). In the cURL request below, the authorization token
returned is stored in the “`cookies`” file.

``` pre
curl -c cookies -X POST -d @authentication.json 'https://api.appnexus.com/auth'
```

3\. Check the response body of your request (see **Example
Response** below). If your request was successful, you’ll get
a "`status`" of “`OK`” and the "`token`" field will be populated with
the authentication token value.  **Example Response**   



``` pre
{
   "response" : {
      "token" : "authn:225692:2d787d1838283:lax1",
      "status" : "OK"      
   }
}
```







## Advertiser

**Step 2 - Create or access an advertiser**

You'll need to create or access an advertiser from which to create a
curated deal line item. You set up advertisers for curated deal line
items the same way you would for augmented line items.

**JSON Fields for Advertiser (Required and Useful Optional Fields)**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__entry__21" class="entry colsep-1 rowsep-1">Required
or Optional</th>
<th id="ID-000022a6__entry__22"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__21">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__22">The
name of the advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__19"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__21">Optional</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__22">The
timezone of the advertiser. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__19"><code
class="ph codeph">use_insertion_orders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__20">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__21">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__22">This field must be set to
<strong>true</strong> in order to create curated deal line items.</td>
</tr>
</tbody>
</table>

  
If you don't already have an advertiser to use, create an advertiser by
doing the following (see <a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a> for more
information):

1.  Create an advertiser JSON:

    ``` pre
    $ cat advertiser.json
    {
        "advertiser": {
            "name": "Curated Deal Line Item Example Advertiser",
            "timezone": "US/Pacific"
        }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/advertiser" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/advertiser</code></a> endpoint with this
    advertiser JSON and an appropriate `member_id`.

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @advertiser.json 'https://api.appnexus.com/advertiser?member_id=2378'
    ```

3.    
    Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.

4.  Note the advertiser ID in the response body so you can use it when
    you create the curated deal line item
    in<a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__30"
    class="xref"> Step 6 - Create a curated deal line item</a>. 





## Insertion Order

**Step 3 - Create or access an insertion order**

You'll need to create or access an insertion order to create a
curated deal line item. Curated deal line items require a seamless
insertion order (see required fields below).

**JSON Fields for Seamless Insertion Order**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__entry__35"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__entry__36"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__entry__37" class="entry colsep-1 rowsep-1">Required
or Optional</th>
<th id="ID-000022a6__entry__38"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__35"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__36">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__37">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__38">In
order for an insertion order created via the API to be seamless, you
must use the <code class="ph codeph">budget_intervals</code> field.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__35"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__36">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__37">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__38">The
name of the advertiser</td>
</tr>
</tbody>
</table>

  
If you don't already have an insertion order to use, create an insertion
order by doing the following (see <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a> for more
information):

1.  Create an insertion order JSON:

    **Example JSON: No End Date, No Budget **

    ``` pre
    $ cat insertion-order-noenddate.json
    {
        "insertion-order": {
            "name": "Curated Deal Line Item Example IO",
            "budget_intervals": [{
                "start_date": "2019-10-10 00:00:00",
                "end_date": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "enable_pacing": true,
                "lifetime_budget": null,
                "lifetime_budget_imps": null,
                "lifetime_pacing": false
            }],
            "budget_type": "impression"
        }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/insertion-order" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/insertion-order</code></a> endpoint with this
    insertion order JSON and an appropriate `advertiser_id`
    and `member_id`.

    **Example Request: No End Date, No Budget**

    

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @insertion-order-noenddate.json 'https://api..com/insertion-order?advertiser_id=2605036&member_id=2378'
    ```

    

3.    
    Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.

4.  Note the insertion order ID in the response body so you can use it
    when you create the curated deal line item in
    <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__30"
    class="xref">Step 6 - Create a curated deal line item</a>. 




## Deal

**Step 4 - Create a deal**

You'll need to create the deal you want to associate with the curated
deal line item.

**JSON Fields for Deal**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__26__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__26__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__26__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-000022a6__26__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__1"><code
class="ph codeph">auction_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__4">The auction type of the deal
(Standard/Fixed/Market). This value must match what's set on the curated
deal line item (via <code class="ph codeph">revenue_type</code>/<code
class="ph codeph">min_revenue_value</code>/<code
class="ph codeph">revenue_value</code>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__1"><code
class="ph codeph">buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__4">The buyer member ID of the deal.
This field cannot be changed after creation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__4">The name of the deal (<b>Note:</b> the
buyer will see this name)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__4">The type of deal. This field must be
set to "5" for curated deals.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__1"><code
class="ph codeph">version</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__26__entry__4">This field must be set to "2" in
order to associate the deal to a curated deal line item.</td>
</tr>
</tbody>
</table>

**Useful Optional JSON Fields**

 JSON Fields for Allowed Creatives  



**Brand (see <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>)**

<table id="ID-000022a6__table_wr5_znf_twb" class="table frame-all"
style="width:100%;">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__table_wr5_znf_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__table_wr5_znf_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__table_wr5_znf_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__1"><code
class="ph codeph">brand_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__3">True: Deal is
restricted only to the listed brands<br />
False: Other brands are allowed to serve</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__1"><code
class="ph codeph">brands</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__3">Array of eligible
brands</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__3">Field within <code
class="ph codeph">brands</code>: ID of the brand that is eligible for
the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__3">Field within <code
class="ph codeph">brands</code>: name of the brand that is eligible for
the deal<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__1"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_wr5_znf_twb__entry__3">Field within <code
class="ph codeph">brands</code>: Set to true to allow a specific brand
to serve for a deal even if the ad quality profile would have blocked
it.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">



**Brand Example**



``` pre
"brand_restrict": true,
            "brands": [
                {
                    "id": 2,
                    "name": "1800Flowers",
                    "override": true
                },
                {
                    "id": 4,
                    "name": "Acura",
                    "override": false
                }
            ] 
```



**Media Type (see <a
href="media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> and <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a>)**



<table id="ID-000022a6__table_o32_dbl_swb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__table_o32_dbl_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__table_o32_dbl_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__table_o32_dbl_swb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__1"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__3">The media subtypes
allowed for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__3">Field within <code
class="ph codeph">allowed_media_subtypes:</code>The ID of the media
subtype allowed for the deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__1"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__2">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__3">The media types
allowed for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__table_o32_dbl_swb__entry__3">Field within <code
class="ph codeph">allowed_media_types:</code>The ID of the media type
allowed for the deal</td>
</tr>
</tbody>
</table>

**Media Type Example**

``` pre
"allowed_media_subtypes": [
                 {
                     "id": 2,
                     "last_modified": "2015-09-17 19:19:21",
                     "media_type": {
                         "id": 2,
                         "media_type_group_id": 2,
                         "name": "Pop",
                         "uses_sizes": "sometimes"
                     },
                     "name": "Popup",
                     "native_assets": null,
                     "permitted_sizes": null
                 }
             ],
 "allowed_media_types": [
                 {
                     "id": 1,
                     "last_modified": "2012-03-16 21:36:10",
                     "media_type_group_id": 1,
                     "name": "Banner",
                     "uses_sizes": "always"
                 },
                 {
                     "id": 4,
                     "last_modified": "2016-08-22 16:23:12",
                     "media_type_group_id": 1,
                     "name": "Video",
                     "uses_sizes": "never"
                 }
             ]
```



To create a deal, do the following
(see <a href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more information):

1.  Create a deal JSON:

    ``` pre
    $ cat deal.json
    {
        "deal": {
            "name": "Curated Deal",
            "buyer": {
                "id": 2379
            },
            "type": {
                "id": 5,
                "name": "Curated"
            },
            "version": 2
        }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/deal" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/deal</code></a> endpoint with this deal JSON
    and an appropriate `member_id`.

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @deal.json 'https://api.appnexus.com/deal?member_id=2378'
    ```

3.    
    Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.

4.  4\. Note the deal ID in the response body so you can use it when you
    create the deal line item in
    <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__30"
    class="xref">Step 6 - Create a curated deal line item</a>. 




## Profile

**Step 5 - Create a curated deal line item profile**

Next, create a curated deal line item profile to use in targeting with
the curated deal line item. Be sure to note the ID for this profile for
later use. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information.



<b>Note:</b> You can target sellers'
publishers, placements, and categories with a curated deal line item by
using following arrays:

- `platform_publisher_targets`
- `platform_placement_targets`
- `platform_content_category_targets`.

You cannot use `placement_targets`, `publisher_targets`, or
`content_category_targets` with a curated deal line item. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information.



**Optional JSON Fields for Deal Line Item Profile**

There are many optional fields available in the curated deal line item
profile for targeting with the curated deal line item. For example, you
can target properties associated with inventory, inventory types,
allowlists, blocklists, device types, and so forth. See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information on
available fields.  

To create a curated deal line item profile, do the following (see <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information):

1.  Create a curated deal line item profile JSON:

    **Example: Profile Creation with Country and View Rate/Completion
    Rate Thresholds**

    ``` pre
    $ cat profile.json
     
    {
            "profile": {
                    "country_action": "include",
                    "country_targets": [{
                            "active": true,
                            "code": "US",
                            "id": 233,
                            "name": "United States"
                    }],
                    "engagement_rate_targets": [{
                                    "engagement_rate_pct": 25,
                                    "engagement_rate_type": "video_completion"
                            },
                            {
                                    "engagement_rate_pct": 50,
                                    "engagement_rate_type": "predicted_iab_video_view_rate"
                            }
                    ],
                    "platform_publisher_targets": [{
                            "action": "include",
                            "deleted": false,
                            "id": 1238721,
                            "name": "test_publisher"
                    }],
                    "platform_placement_targets": [{
                                    "action": "include",
                                    "deleted": false,
                                    "id": 5126395
                            },
                            {
                                    "action": "include",
                                    "deleted": false,
                                    "id": 5301719
                            }
                    ],
                    "platform_content_category_targets": [{
                            "action": "include",
                            "deleted": false,
                            "id": 19062,
                            "is_system": false,
                            "name": "1"
                    }]
            }
    }
    ```

    **Example: Profile Creation without Targeting  
    **

    ``` pre
    > cat profile.json
     
    {
        "profile": {
        }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/profile" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/profile</code></a> endpoint with this curated
    deal profile JSON and an appropriate `advertiser_id`.

    **Example: Profile Creation with Country and View Rate/Completion
    Rate Thresholds**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @profile.json 'https://api.appnexus.com/profile?advertiser_id=3410892&member_id=2378'
    ```

    **Example: Profile Creation without Targeting**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @profile.json 'https://api.appnexus.com/profile?advertiser_id=3410892&member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.

4.  4\. Note the profile ID in the response body so you can use it when
    you create the curated deal line item in
    <a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__30"
    class="xref">Step 6 - Create a curated deal line item</a>. 





## Line Item

**Step 6 - Create a curated deal line item**

Finally, you'll need to create the curated deal line item to associate
the deal ID and the curated deal line item profile you created in
<a href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__27"
class="xref">Step 5 - Create a curated deal line item profile</a>.

**JSON Fields for Curated Deal Line Item**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__entry__104"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__entry__105"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__entry__106"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">insertion_orders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">Array containing the insertion order
ID you want to associate this curated deal line item to</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">Name of the curated deal line item
(<b>Note:</b> the buyer will not see this)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">ad_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">The type of creative used for this
curated deal line item.  Possible values: 
<ul>
<li><code class="ph codeph">"banner"</code></li>
<li><code class="ph codeph">"video"</code> (includes audio types as
well)</li>
<li><code class="ph codeph">"native"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">line_item_subtype</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">The line item subtype. For curated
deal line items, the value for this field must be <code
class="ph codeph">"standard_curated"</code>.

<b>Note:</b> Setting this field to <code
class="ph codeph">"standard_curated"</code> will automatically assign
the following values to these related fields:
<pre class="pre codeblock"><code>&quot;line_item_type&quot;: &quot;standard_v2&quot;,
&quot;bid_object_type&quot;: &quot;deal&quot;,
&quot;delivery_model_type&quot;: &quot;standard&quot;,
&quot;supply_strategies&quot;: {
   &quot;managed&quot;: false,
   &quot;programmatic_guaranteed&quot;: false
 }</code></pre>
<p><code class="ph codeph">The line_item_subtype</code> field (and
associated fields/arrays) cannot be changed after the line item is
created.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">profile_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">Profile ID associated with the
curated deal line item (see <a
href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__4"
class="xref">Step 5 - Create a curated deal line item profile.</a>)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">Always include a start_date. Leave
end_date null for a no end date deal line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">deals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">The <code class="ph codeph">id</code>
field within deals must be the ID of the deal you created in <a
href="curated-deal-line-item-api-setup-guide.md#ID-000022a6__5"
class="xref">Step 4 - Create a deal)</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">supply_strategies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__106">An
object containing several boolean fields used to designate which
inventory supply sources you would like to target.<br />
For a curated deal line item, the <code class="ph codeph">managed</code>
field must be set to <code class="ph codeph">false</code> (this value is
assigned when the "line_item_subtype" is set to "standard_curated")

<b>Note:</b> The <code
class="ph codeph">rtb</code> and/or <code class="ph codeph">deals</code>
fields must be set to <code class="ph codeph">true</code> (these fields
are <strong>not</strong> assigned when "line_item_subtype" is set to
<code class="ph codeph">"standard_curated"</code>), so you will need to
assign these values accordingly.<br />
<strong>Terminology <b>Note:</b></strong>
<ul>
<li><code class="ph codeph">rtb</code> refers to Open Exchange Inventory
Aggregation</li>
<li><code class="ph codeph">deals</code> refers to Rollup Deals</li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">revenue_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105"> enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106"><code class="ph codeph">cpm</code> for
Fixed Price (CPM) deal, <code class="ph codeph">vcpm</code> for Standard
Price (Dynamic CPM) deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">revenue_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105"> double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000022a6__entry__106">If
you set the <code class="ph codeph">revenue_type</code> to <code
class="ph codeph">cpm</code> (Fixed), set the fixed price using <code
class="ph codeph">revenue_value</code>. If you're using Standard, set
this value to null.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">valuation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">For curated deals, use the following
<code class="ph codeph">valuation</code> object fields:
<ul>
<li><code class="ph codeph">min_revenue_value</code> -
<ul>
<li>If you set the <code class="ph codeph">revenue_type</code> to <code
class="ph codeph">vcpm</code> (Standard), set the floor price in <code
class="ph codeph">min_revenue_value</code>.</li>
<li>If you set the <code class="ph codeph">revenue_type</code> to cpm
(Fixed), set the value of <code
class="ph codeph">min_revenue_value</code> to null.</li>
</ul></li>
<li><code class="ph codeph">min_margin_cpm</code> - Set the margin value
in <code class="ph codeph">min_margin_cpm</code> when using CPM as a
margin type.</li>
<li><code class="ph codeph">min_margin_pct</code> - Set the margin value
in <code class="ph codeph">min_margin_pct</code> when using percentage
as a margin type.<br />
</li>
</ul>

<b>Note:</b> The <code
class="ph codeph">min_margin_cpm</code> and <code
class="ph codeph">min_margin_pct</code> fields cannot both be set at the
same time. If one is set, the other must be null. 
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__104"><code
class="ph codeph">auction_event</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__105">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__106">Object for auction event type
properties: The <code
class="ph codeph">kpi_auction_type_id</code>, <code
class="ph codeph">payment_auction_type_id</code>, and r<code
class="ph codeph">evenue_auction_type_id</code> fields of the <code
class="ph codeph">auction_event</code> object must all be set to 1.</td>
</tr>
</tbody>
</table>

**Useful Optional JSON Fields  
**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000022a6__entry__143"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000022a6__entry__144"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000022a6__entry__145"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__143"><code
class="ph codeph">budget_intervals</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__144">array of objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__145">Set a budget on the deal using fields
within <code class="ph codeph">budget_intervals</code> including: <code
class="ph codeph">daily_budget</code>, <code
class="ph codeph">daily_budget_imps</code>, <code
class="ph codeph">lifetime_budget</code>, or <code
class="ph codeph">lifetime_budget_imps</code>. Use the fields with no
imp if the curated deal line item has revenue budget type or the fields
with <code class="ph codeph">_imp</code> at the end if the deal line
item has revenue type impression. You can either have a daily or
lifetime budget, not both. A lifetime budget that sits across flights
ends up being broken out across each flight via the API. Remember that
if your deal has no end date, it can't have a budget. <br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__143"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__144">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000022a6__entry__145">State of the curated deal line item.
Default is <code class="ph codeph">active</code>, so set to <code
class="ph codeph">inactive</code> if you don't want the deal to go live
right away.</td>
</tr>
</tbody>
</table>

To create a curated deal line item, do the following (see <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item Service</a> for more
information):

1.  Create a curated deal line item JSON (you'll need an existing
    advertiser ID, insertion order ID, deal ID, and profile ID).

    **Example JSON: Curated Deal Line Item No Budget  
    **

    ``` pre
    > cat curated_deal_line_item.json
    {
            "line-item": {
                    "ad_types": ["video"],
                    "auction_event": {
                            "kpi_auction_type_id": 1,
                            "payment_auction_type_id": 1,
                            "revenue_auction_type_id": 1
                    },
                    "budget_intervals": [{
                            "start_date": "2019-10-11 12:00:00"
                    }],
                    "deals": [{
                            "id": 628539
                    }],
                    "insertion_orders": [{
                            "id": 1363850
                    }],
                    "line_item_subtype": "standard_curated",
                    "name": "Curated Deal Line Item Example Line Item",
                    "revenue_type": "vcpm",
                    "revenue_value": null,
                    "supply_strategies": {
                            "managed": false,
                            "deals": true,
                            "rtb": false
                    },
                    "profile_id": 113067333,
                    "valuation": {
                            "min_revenue_value": 10
                    }
            }
    }
    ```

    **Example JSON: Curated Deal Line Item Daily Revenue Budget  
    **

    ``` pre
    > cat curated_deal_line_item_daily.json
    {
            "line-item": {
                    "ad_types": ["video"],
                    "auction_event": {
                            "kpi_auction_type_id": 1,
                            "payment_auction_type_id": 1,
                            "revenue_auction_type_id": 1
                    },
                    "budget_intervals": [{
                            "daily_budget_imps": 270,
                            "end_date": "2019-10-18 23:59:59",
                            "start_date": "2019-10-11 12:00:00",
                            "timezone": "US/Pacific"
                    }],
                    "deals": [{
                            "id": 618159
                    }],
                    "insertion_orders": [{
                            "id": 1363850
                    }],
                    "line_item_subtype": "standard_curated",
                    "name": "Curated Deal Line Item Example Line Item",
                    "revenue_type": "vcpm",
                    "revenue_value": null,
                    "supply_strategies": {
                            "managed": true,
                            "deals": true,
                            "rtb": false
                    },
                    "profile_id": 113067333,
                    "valuation": {
                            "min_revenue_value": 10
                    }
            }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/line-item" class="xref"
    target="_blank">https://api.<span
    class="ph">appnexus.com/line-item</a> endpoint using this
    deal line item JSON and an appropriate `advertiser_id`.

    **Example Request: Curated Deal Line Item No Budget**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @curated_deal_line_item.json 'https://api.appnexus.com/line-item?member_id=2378&advertiser_id=3410892'
    ```

    **Example Request: Curated Deal Line Item Daily Revenue Budget**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @curated_deal_line_item_daily.json 'https://api.appnexus.com/line-item?member_id=2378&advertiser_id=3410892'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made. 

4.  Note the line item ID in the response body so you can identify this
    curated deal line item later to change
    its `state` (`active` or `inactive`) or modify it.  




## Related Topics

- <a
  href="api-getting-started.md"
  class="xref" target="_blank">API Getting Started</a>
- <a
  href="api-best-practices.md"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="api-semantics.md"
  class="xref" target="_blank">API Semantics</a>
- <a href="deal-service.md"
  class="xref" target="_blank">Deal Service</a>
- <a
  href="line-item-service---ali.md"
  class="xref" target="_blank">Line Item Service (ALI)</a>
- <a
  href="profile-service.md"
  class="xref" target="_blank">Profile Service</a>






