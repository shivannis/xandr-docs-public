---
Title : Deal Line Item API Setup Guide
Description : Setting up an API implementation of a Deal Line Item to target a deal
ms.date: 10/28/2023
ms.custom: digital-platform-api
requires configuring a number of different properties on different API
objects. This guide will explain the process of creating and configuring
---


# Deal Line Item API Setup Guide



Setting up an API implementation of a Deal Line Item to target a deal
requires configuring a number of different properties on different API
objects. This guide will explain the process of creating and configuring
a deal line item using our API. 


## Overview

Deal line items are a powerful feature that allows network and publisher
clients to better support their buyers by providing prepackaged,
user-friendly buying tools. 

Setting up a deal line item typically involves making requests to the
following API service endpoints to access or create the corresponding
API objects:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_nzr_k4g_twb__entry__1"
class="entry colsep-1 rowsep-1">API Endpoint</th>
<th id="ID-00001af3__section_nzr_k4g_twb__entry__2"
class="entry colsep-1 rowsep-1">API Object</th>
<th id="ID-00001af3__section_nzr_k4g_twb__entry__3"
class="entry colsep-1 rowsep-1">Detailed Reference</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__1"><a
href="https://api.appnexus.com/advertiser" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/advertiser</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__2">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__3"><a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__1"><a
href="https://api.appnexus.com/insertion-order" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__2">insertion-order</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__3"><a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__1"><a
href="https://api.appnexus.com/deal" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__2">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__3"><a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__1"><a
href="https://api.appnexus.com/profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/profile</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__2">profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__3"><a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__2">line-item
(ALI)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_nzr_k4g_twb__entry__3"><a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item - ALI Service</a></td>
</tr>
</tbody>
</table>

This guide uses cURL examples for all requests. You can use other API
request tools (e.g., <a href="https://www.getpostman.com/" class="xref"
target="_blank">Postman</a>), but you’ll then need to adjust the
examples accordingly.




## Prerequisites

Before beginning this setup, be sure to read <a
href="api-getting-started.md"
class="xref" target="_blank">API Getting Started</a>. It provides
information on testing environments, usage constraints, API semantics
(running commands, filtering, sorting, etc.), and best practices.




## Order of Operations

API objects often have dependencies on other API objects and there is an
order you must follow in creating or accessing objects when you create a
deal line item. For example, you must provide the IDs of the following
API objects: `advertiser`, `insertion-order`, `deal`, and `profile`. To
obtain the IDs for these objects, you'll need to either create them or
already have access to them. The steps in this guide follow the typical
order of operations required to create a deal line item.




## Best Practices

For a general list of best practices to follow when working with
the API, see <a
href="api-best-practices.md"
class="xref" target="_blank">API Best Practices</a>. The following are
some best practices that are specific to a deal line item setup:

- Set the `state` field of the deal line item to `"inactive"` until the
  line item is fully configured and ready for testing.
- Note the ID of any objects you create. The IDs of objects you create
  are returned in the response body of requests. You'll often need these
  IDs later so copying them when they're returned can reduce the number
  of additional GET requests you have to make to obtain them.




## Setup Procedure

The following steps will guide you through the process of setting up a
deal line item with typical configurations:



- <a href="deal-line-item-api-setup-guide.md#ID-00001af3__1"
  class="xref">Step 1 - Obtain an authorization token</a>

- <a href="deal-line-item-api-setup-guide.md#ID-00001af3__2"
  class="xref">Step 2 - Create or access an advertiser</a>

- <a href="deal-line-item-api-setup-guide.md#ID-00001af3__3"
  class="xref">Step 3 - Create or access an insertion order</a>

- <a href="deal-line-item-api-setup-guide.md#ID-00001af3__4"
  class="xref">Step 4 - Create a deal</a>

- <a href="deal-line-item-api-setup-guide.md#ID-00001af3__57"
  class="xref">Step 5 - Create a deal line item profile</a>

- <a href="deal-line-item-api-setup-guide.md#ID-00001af3__6"
  class="xref">Step 6 - Create a deal line item</a>






## Authentication

**Step 1 - Obtain an authorization token**

First, you’ll need to obtain an authorization token. You must then
include this authorization token in all subsequent requests (see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
information). To obtain an authorization token, do the following:

1.  Create a JSON file containing your username and password.

    ``` pre
    {
        "auth": {
            "username" : "USERNAME",
            "password" : "PASSWORD"
        }
    }
    ```

2.  Make a POST request to the `/auth` endpoint with this JSON file in
    the request body (see <a
    href="authentication-service.md"
    class="xref" target="_blank">Authentication Service</a> for more
    information). In the cURL request below, the authorization token
    returned is stored in the “`cookies`” file.

    ``` pre
    curl -c cookies -X POST -d @authentication.json 'https://api.appnexus.com/auth'
    ```

3.  Check the response body of your request (see **Example
    Response **below). If your request was successful, you’ll get
    a "`status`" of “`OK`” and the "`token`" field will be populated
    with the authentication token value. ** Example Response   
    **

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
deal line item. For deal line items, advertisers are set up the same way
as augmented line items.

**JSON Fields for Advertiser (Required and Useful Optional Fields)**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_ac3_z4g_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_ac3_z4g_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_ac3_z4g_twb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00001af3__section_ac3_z4g_twb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__4">The name of the
advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__1"><pre
class="pre codeblock"><code>timezone</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__4">The timezone of the
advertiser. See <a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__1"><pre
class="pre codeblock"><code>use_insertion_orders</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_ac3_z4g_twb__entry__4">This field must be
set to <strong>true</strong> in order to create deal line items.</td>
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
            "name": "Deal Line Item Example Advertiser",
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

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
     

4.  Note the advertiser ID in the response body so you can use it when
    you create the deal line item
    in <a href="deal-line-item-api-setup-guide.md#ID-00001af3__6"
    class="xref">Step 6 - Create a deal line item</a>. 




## Insertion Order

**Step 3 - Create or access an insertion order**

You'll need to create or access an insertion order to create a deal line
item. Deal line items require a seamless insertion order (see required
fields below).

**JSON Fields for Seamless Insertion Order (Required and Useful Optional
Fields)**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_hms_1pg_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_hms_1pg_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_hms_1pg_twb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00001af3__section_hms_1pg_twb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">The name of the
advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">In order for an
insertion order created via the API to be seamless, you must use the
<code class="ph codeph">budget_intervals</code> field.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>budget_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">Budget type will
translate to all deals below the IO. For example, if you set up an
Impression Budget Type IO, you can't put deal line items with a Revenue
budget below that IO.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>daily_budget </code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">Field within <code
class="ph codeph">budget_intervals</code> you can use to set daily
budgets at the insertion order level for Revenue <code
class="ph codeph">budget_type</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>lifetime_budget</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">Field within <code
class="ph codeph">budget_intervals</code> you can use to set lifetime
budgets at the insertion order level for Revenue <code
class="ph codeph">budget_type</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>daily_budget_imps</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">Field within <code
class="ph codeph">budget_intervals</code> you can use to set daily
budgets at the IO level for Impression <code
class="ph codeph">budget_type</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__1"><pre
class="pre codeblock"><code>lifetime_budget_imps</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_hms_1pg_twb__entry__4">Field within <code
class="ph codeph">budget_intervals</code> you can use to set lifetime
budgets at the IO level for Impression <code
class="ph codeph">budget_type</code>.</td>
</tr>
</tbody>
</table>

  
If you don't already have an insertion order to use, create an insertion
order by doing the following (see <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a> for more
information):

1.  Create an insertion order JSON (two examples are shown below):  
      Example JSON: No End Date, No Budget 

    ``` pre
    $ cat insertion-order-noenddate.json
    {
        "insertion-order": {
            "name": "Deal Line Item Example IO",
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

      
      **Example JSON: Flights, Impression Budgets   
    **

    ``` pre
    $ cat insertion-order-flights.json
    {
        "insertion-order": {
            "name": "Deal Line Item Example IO",
            "budget_intervals": [
      
                {
                    "start_date": "2019-10-10 00:00:00",
                    "end_date": "2019-10-12 23:59:59",
                    "daily_budget": null,
                    "daily_budget_imps": 10,
                    "enable_pacing": true,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": 980,
                    "lifetime_pacing": false
                },
                {
                    "start_date": "2019-10-13 00:00:00",
                    "end_date": "2019-10-18 23:59:59",
                    "daily_budget": null,
                    "daily_budget_imps": 10,
                    "enable_pacing": true,
                    "lifetime_budget": null,
                    "lifetime_budget_imps": 100,
                    "lifetime_pacing": false
                }
            "budget_type": "impression"
            ]
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
      

    ** Example Request: No End Date, No Budget**

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @insertion-order-noenddate.json 'https://api.appnexus.com/insertion-order?advertiser_id=2605036&member_id=2378'
    ```

    ** Example Request: Flights, Impression Budgets  
    **

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @insertion-order-flights.json 'https://api.appnexus.com/insertion-order?advertiser_id=2605036&member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the insertion order ID in the response body so you can use it
    when you create the deal line item
    in <a href="deal-line-item-api-setup-guide.md#ID-00001af3__6"
    class="xref">Step 6 - Create a deal line item</a>. 




## Deal

**Step 4 - Create a deal**

You'll need to create the deal you want to associate with the deal line
item.

**JSON Fields for Deal**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__4">The name of the
deal (<strong>Note</strong>: the buyer will see this name)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__1"><pre
class="pre codeblock"><code>buyer</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__4">The buying bidder
and member who can target this deal. A deal will only ever use the <code
class="ph codeph">buyer</code> field or the <code
class="ph codeph">buyer_seats</code> field, not both. For more details,
see the "Buyer" section in the <a
href="deal-service.md#DealService-Buyer"
class="xref" target="_blank">Deal Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__1"><pre
class="pre codeblock"><code>buyer_seats</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__3"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__4">The buying bidder
and seat who can target this deal. A deal will only ever use the <code
class="ph codeph">buyer</code> field or the <code
class="ph codeph">buyer_seats</code> field, not both. For more details,
see the "Buyer Seats" section in the <a
href="deal-service.md#DealService-BuyerSeats"
class="xref" target="_blank">Deal Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__1"><pre
class="pre codeblock"><code>version</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__4">This field must be
set to "2" in order to associate the deal to a deal line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__1"><pre
class="pre codeblock"><code>auction_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__4">The auction type of
the deal (Standard/Fixed/Market). This value must match what's set on
the deal line item (via <code
class="ph codeph">revenue_type</code>/<code
class="ph codeph">min_revenue_value</code>/<code
class="ph codeph">revenue_value</code>).<br />
&#10;
<b>Note:</b> This field must be set upon
creation, but it is not used on deal line items. It will not be updated
if the line item is updated and in the auction; only the line item
values are considered.
</td>
</tr>
</tbody>
</table>

Useful Optional JSON Fields

  JSON Fields for Allowed Creatives  

Brand (see <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__25"><pre
class="pre codeblock"><code>brand_restrict</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__27"><code
class="ph codeph">true</code>: Deal is restricted only to the listed
brands<br />
<code class="ph codeph">false</code>: Other brands are allowed to
serve</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__25"><pre
class="pre codeblock"><code>brands</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__26">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__27">Array of eligible
brands</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__25"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__27">Field within <code
class="ph codeph">brands</code>: ID of the brand that is eligible for
the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__25"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__27">Field within <code
class="ph codeph">brands</code>: name of the brand that is eligible for
the deal<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__25"><pre
class="pre codeblock"><code>override</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__27">Field within <code
class="ph codeph">brands</code>: Set to true to allow a specific brand
to serve for a deal even if the ad quality profile would have blocked
it.</td>
</tr>
</tbody>
</table>

 Brand Example  

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

Language (see <a
href="language-service.md"
class="xref" target="_blank">Language Service</a>)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__43"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__44"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__43"><pre
class="pre codeblock"><code>language_restrict</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__44">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__45"><code
class="ph codeph">true</code>: Deal is restricted only to the listed
languages<br />
<code class="ph codeph">false</code>: Other languages are allowed to
serve</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__43"><pre
class="pre codeblock"><code>languages</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__44">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__45">Array of eligible
languages</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__43"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__44">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__45">Field within <code
class="ph codeph">languages</code>: ID of the language that is eligible
for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__43"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__44">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__45">Field within <code
class="ph codeph">languages</code>: Name of the language that is
eligible for the deal<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__43"><pre
class="pre codeblock"><code>override</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__44">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__45">Field within <code
class="ph codeph">languages</code>: Set to true to allow a specific
language to serve for a deal even if the ad quality profile would have
blocked it.</td>
</tr>
</tbody>
</table>

 Language Example

``` pre
"language_restrict": true,
            "languages": [
                {
                    "id": 1,
                    "name": "English",
                    "override": false
                },
                {
                    "id": 2,
                    "name": "Chinese",
                    "override": true
                }
            ]
```

Trust Level

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__61"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__62"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__63"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__61"><pre
class="pre codeblock"><code>audit_status_option</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__62">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__63">Specifies how the
deal handles creatives.
<ul>
<li><code class="ph codeph">max_trust</code>: Maximum - no ad profile
restrictions will be applied to this deal.</li>
<li><code class="ph codeph">provisional</code>: Allow pending creatives
- creatives in "pending" audit status will serve. Once these creatives
are audited, the existing ad quality settings are used.</li>
<li><code class="ph codeph">none</code>: Default - creatives use
existing ad quality settings.</li>
</ul></td>
</tr>
</tbody>
</table>

   Trust Level Example  

``` pre
"audit_status_option": "max_trust" 
```

Creative Category

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__67"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__68"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__69"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__67"><code
class="ph codeph">category_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__68">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__69">Specifies whether
the deal is restricted only to the categories listed in
the categories object (see <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a>).
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed categories.</li>
<li><code class="ph codeph">false</code>: Other categories are also
allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__67"><code
class="ph codeph">categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__68">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__69">The categories
that describe the creatives that are eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__67"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__68">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__69">Field within <code
class="ph codeph">categories</code>: ID of the category that is eligible
for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__67"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__68">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__69">Field within <code
class="ph codeph">categories</code>: Name of the category that is
eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__67"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__68">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__69">Field within <code
class="ph codeph">categories</code>: Set to <code
class="ph codeph">true</code> to allow a category to serve for a deal
even if the ad quality profile would have blocked it.</td>
</tr>
</tbody>
</table>

  Creative Category Example  

``` pre
"categories": [
                 {
                     "id": 1,
                     "name": "Airlines",
                     "override": false
                 },
                 {
                     "id": 2,
                     "name": "Apparel",
                     "override": true
                 }
             ],
             "category_restrict": true
```

Specific Creatives

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__85"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__86"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__87"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__85">creatives</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__86">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__87">A list of
creatives that are specifically approved or banned for the deal. This
list overrides any other ad quality setting. </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__85"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__86">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__87">Field within <code
class="ph codeph">creatives</code>: ID of the creative that is approved
or banned for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__85"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__86">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__87">Field within <code
class="ph codeph">creatives</code>: Specifies how this creative will be
handled for this deal. 
<ul>
<li><code class="ph codeph">approved</code>: This creative can always
serve in this deal, regardless of any other ad quality settings or
overrides.</li>
<li><code class="ph codeph">banned</code>: This creative can never serve
in this deal, regardless of any other ad quality settings or
overrides.</li>
</ul></td>
</tr>
</tbody>
</table>

  Specific Creatives Example  

``` pre
"creatives": [
                {
                    "id": 161501729,
                    "status": "banned"
                },
                {
                    "id": 161501882,
                    "status": "approved"
                }
            ]
```

Media Type (see <a
href="media-subtype-service.md"
class="xref" target="_blank">Media Subtype Service</a> and <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a>)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__97"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__98"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__99"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__97"><code
class="ph codeph">allowed_media_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__98">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__99">The media subtypes
allowed for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__97"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__98">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__99">Field within <code
class="ph codeph">allowed_media_subtypes:</code>The ID of the media
subtype allowed for the deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__97"><code
class="ph codeph">allowed_media_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__98">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__99">The media types
allowed for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__97"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__98">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__99">Field within <code
class="ph codeph">allowed_media_types:</code>The ID of the media type
allowed for the deal</td>
</tr>
</tbody>
</table>

   Media Type Example  

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

Technical Attributes (see <a
href="technical-attribute-service.md"
class="xref" target="_blank">Technical Attribute Service</a>)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__112"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__113"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__114"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__112"><code
class="ph codeph">technical_attribute_restrict</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__113">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__114">Specifies whether
the deal is restricted only to the technical attributes listed in
the <code class="ph codeph">technical_attributes</code> object.
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed technical attributes.</li>
<li><code class="ph codeph">false</code>: Other technical attributes are
also allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__112"><code
class="ph codeph">technical_attributes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__113">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__114">The technical
attributes of creatives that are eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__112"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__113">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__114">Field within
<code class="ph codeph">technical_attributes:</code>The ID of the
technical attribute that is eligible for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__112"><code
class="ph codeph">override</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__113">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__114">Field within
<code class="ph codeph">technical_attributes</code>: Set to true to
allow a technical attribute to serve for a deal even if the ad quality
profile would have blocked it.</td>
</tr>
</tbody>
</table>

  Technical Attributes Example  

``` pre
"technical_attribute_restrict": false,
             "technical_attributes": [
                 {
                     "id": 1,
                     "name": "Image",
                     "override": true
                 }
             ]
```

  JSON Fields for Deal Data Protection (see <a
href="visibility-profile-service.md"
class="xref" target="_blank">Visibility Profile Service</a>)  



<b>Warning:</b> This beta feature is not
available for all clients. Please reach out to your account manager to
discuss if you have a use case.



User ID and Device ID

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__127"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__128"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__129"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__127"><pre
class="pre codeblock"><code>expose_device_id_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__128">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__129">If <code
class="ph codeph">true</code>, publisher-provided device IDs are passed
in your bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__127"><pre
class="pre codeblock"><code>expose_user_id_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__128">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__129">If true,
publisher-provided user IDs are passed in your bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__127"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__128">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__129">The name of the
visibility profile.</td>
</tr>
</tbody>
</table>

 Protect User ID and Device ID Example  

**Step 1: Create a Visibility Profile**

``` pre
> cat visibility_profile.json
{
    "visibility-profile": {
        "expose_device_id_default": false,
        "expose_user_id_default": false,
        "name": "Deal Visibility Profile"
    }
}
 
 
> curl -b cookies -c cookies -X POST -d @visibility_profile.json 'https://api.appnexus.com/visibility-profile?member_id=2378'
```

**Step 2: Associate the Visibility Profile to the Deal and Enable Data
Protection**

``` pre
> cat deal_data_protection.json
{
    "deal": {
        "visibility_profile_id": 29657,
        "data_protected": true
    }
}
 
 
> curl -b cookies -c cookies -X PUT -d @deal_data_protection.json 'https://api.appnexus.com/deal?id=549271'
```

**IP Address**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__139"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__140"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__141"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__139"><pre
class="pre codeblock"><code>expose_ip_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__140">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__141">If <code
class="ph codeph">true</code>, publisher-provided IP addresses are
passed in your bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__139"><pre
class="pre codeblock"><code>ip_exposure_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__140">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__141">The visibility of
IP addresses in your bid requests. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__139"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__140">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__141">The name of the
visibility profile.</td>
</tr>
</tbody>
</table>

 Protect IP Address Example  

**Step 1: Create a Visibility Profile**

``` pre
> cat visibility_profile.json
{
    "visibility-profile": {
        "expose_ip_default": false,
        "ip_exposure_default": "truncated",
        "name": "Deal Visibility Profile - Hidden"
    }
}
 
 
> curl -b cookies -c cookies -X POST -d @visibility_profile.json 'https://api.appnexus.com/visibility-profile?member_id=2378'
```

**Step 2: Associate the Visibility Profile to the Deal and Enable Data
Protection**

``` pre
> cat deal_data_protection.json
{
    "deal": {
        "visibility_profile_id": 29657,
        "data_protected": true
    }
}
 
 
> curl -b cookies -c cookies -X PUT -d @deal_data_protection.json 'https://api.appnexus.com/deal?id=549271'
```

**URL**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__151"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__152"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__153"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__151"><pre
class="pre codeblock"><code>url_exposure_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__152">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__153">The visibility of
inventory URLs in your bid requests. Possible values:
<ul>
<li><code class="ph codeph">full</code> - Full URLs are passed in your
bid requests</li>
<li><code class="ph codeph">domain</code> - Only domains of URLs are
passed in your bid requests</li>
<li><code class="ph codeph">hidden</code> - URLs are not passed in your
bid requests</li>
</ul></td>
</tr>
</tbody>
</table>

 Protect Domain Example  

**Step 1: Create a Visibility Profile**

``` pre
> cat visibility_profile.json
{
    "visibility-profile": {
        "name": "Deal Visibility Profile - Hidden",
        "url_exposure_default": "hidden"
    }
}
 
 
> curl -b cookies -c cookies -X POST -d @visibility_profile.json 'https://api.appnexus.com/visibility-profile?member_id=2378'
```

**Step 2: Associate the Visibility Profile to the Deal and Enable Data
Protection**

``` pre
> cat deal_data_protection.json
{
    "deal": {
        "visibility_profile_id": 29657,
        "data_protected": true
    }
}
 
 
> curl -b cookies -c cookies -X PUT -d @deal_data_protection.json 'https://api.appnexus.com/deal?id=549271'
```

Add to Segment (see
<a href="deal-service.md"
class="xref" target="_blank">Deal Service</a>)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_jwf_cpg_twb__entry__157"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__158"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_jwf_cpg_twb__entry__159"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__157"><pre
class="pre codeblock"><code>allow_creative_add_on_view</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__158">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__159">Set <code
class="ph codeph">false</code> to disallow buyers from adding users to
segments on view</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__157"><pre
class="pre codeblock"><code>allow_creative_add_on_click</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__158">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_jwf_cpg_twb__entry__159">Set <code
class="ph codeph">false</code> to disallow buyers from adding users to
segments on click</td>
</tr>
</tbody>
</table>

Prevent Adding to Segment on Click or View Example  

``` pre
> cat add_segment.json
{
    "deal": {
        "allow_creative_add_on_click": false,
        "allow_creative_add_on_view": false
    }
}
 
 
> curl -b cookies -c cookies -X PUT -d @add_segment.json 'https://api.appnexus.com/deal?id=123456'
```

To create a deal, do the following
(see <a href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more information):

1.  Create a deal JSON:

    ``` pre
    $ cat deal.json
    {
        "deal": {
            "name": "Deal Line Item Example Deal",
            "buyer": {
                "id": 2379
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

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the deal ID in the response body so you can use it when you
    create the deal line item
    in <a href="deal-line-item-api-setup-guide.md#ID-00001af3__6"
    class="xref">Step 6 - Create a deal line item</a>. 




## Profile

**Step 5 - Create a deal line item profile**

Next, create a deal line item profile to use in targeting with the deal
line item. Be sure to note the ID for this profile for later use. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information.

** Optional JSON Fields for Deal Line Item Profile**

There are many optional fields available in the deal line item profile
for targeting with the deal line item. For example, you can target
properties associated with inventory, inventory types, allowlists,
blocklists, device types, and so forth. See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a>  for more information
on available fields.  

To create a deal line item profile, do the following (see <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information):

1.  Create a deal line item profile JSON:

     ** Example: Profile Creation with Country, Frequency/Recency Caps,
    and View Rate/Completion Rate Thresholds**

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
            "max_day_imps": 10,
            "min_minutes_per_imp": 300
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
    class="ph codeph">.com/profile</code></a> endpoint with this deal
    profile JSON and an appropriate `advertiser_id`.  
      
     

    **Example: Profile Creation with Country, Frequency/Recency Caps,
    and View Rate/Completion Rate Thresholds**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @profile.json 'https://api.appnexus.com/profile?advertiser_id=3410892&member_id=2378'
    ```

    ** Example: Profile Creation without Targeting**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @profile.json 'https://api.appnexus.com/profile?advertiser_id=3410892&member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the profile ID in the response body so you can use it when you
    create the deal line item
    in <a href="deal-line-item-api-setup-guide.md#ID-00001af3__6"
    class="xref">Step 6 - Create a deal line item</a>. 




## Line Item

**Step 6 - Create a deal line item**

Finally, you'll need to create the deal line item to associate the deal
ID and the deal line item profile you created
in <a href="deal-line-item-api-setup-guide.md#ID-00001af3__57"
class="xref">Step 5 - Create a deal line item profile.<br />
<br />
</a>

JSON Fields for Deal Line Item

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_y5t_xzg_twb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_y5t_xzg_twb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_y5t_xzg_twb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>insertion_orders</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Array containing
the insertion order ID you want to associate this deal line item to</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Name of the deal
line item (<b>Note:</b> the buyer will not see this)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>ad_types</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">The type of
creative used for this deal line item.  Possible values: 
<ul>
<li><code class="ph codeph">"banner"</code></li>
<li><code class="ph codeph">"video"</code> (includes audio types as
well)</li>
<li><code class="ph codeph">"native"</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>line_item_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Must be set to
<code class="ph codeph">"standard_v2"</code> to create a deal line
item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>profile_id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Profile ID
associated with the deal line item (<a
href="deal-line-item-api-setup-guide.md#ID-00001af3__57"
class="xref">Step 5 - Create a deal line item profile</a>.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Always include a
start_date. Leave end_date null for a no end date deal line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>deals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">The <code
class="ph codeph">id</code> field within deals must be the ID of the
deal you created in <a
href="deal-line-item-api-setup-guide.md#ID-00001af3__4"
class="xref">Step 4 - Create a deal</a>)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>supply_strategies</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">An object
containing several boolean fields used to designate which inventory
supply sources you would like to target.<br />
For a deal line item, the <code class="ph codeph">managed</code> field
must be set to <code class="ph codeph">true</code>. The <code
class="ph codeph">rtb</code>, <code
class="ph codeph">programmatic_guaranteed</code>, and <code
class="ph codeph">deals</code> fields must be set to <code
class="ph codeph">false</code>. </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>revenue_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2"> enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3"><code
class="ph codeph">cpm</code> for Fixed Price (CPM) deal, <code
class="ph codeph">vcpm</code> for Standard Price (Dynamic CPM) and
Market Price deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>revenue_value</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2"> double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">If you set the
<code class="ph codeph">revenue_type</code> to <code
class="ph codeph">cpm</code> (Fixed), set the fixed price using <code
class="ph codeph">revenue_value</code>. If you're using Standard or
Market Price, set this value to null.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>valuation</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">If you set the
<code class="ph codeph">revenue_type</code> to <code
class="ph codeph">vcpm</code> (Standard), set the floor price using
<code class="ph codeph">min_revenue_value</code> in the <code
class="ph codeph">valuation</code> object. If you're using <code
class="ph codeph">cpm</code> (Fixed) or Market Price, set the value of
<code class="ph codeph">min_revenue_value</code> null.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>auction_event</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Object for auction
event type properties: The <code
class="ph codeph">kpi_auction_type_id</code>, <code
class="ph codeph">payment_auction_type_id</code>, and r<code
class="ph codeph">evenue_auction_type_id</code> fields of the <code
class="ph codeph">auction_event</code> object must all be set to 1.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__1"><pre
class="pre codeblock"><code>bid_object_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__3">Must be set to
<code class="ph codeph">"deal"</code> for a deal line item</td>
</tr>
</tbody>
</table>

  Useful Optional JSON Fields  

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001af3__section_y5t_xzg_twb__entry__43"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001af3__section_y5t_xzg_twb__entry__44"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001af3__section_y5t_xzg_twb__entry__45"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__43"><pre
class="pre codeblock"><code>priority</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__44">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__45">Set the priority
of the deal. Any priority below reselling creates an open deal, any
priority above reselling creates a private deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__43"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__44">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__45">Set a budget on
the deal using fields within <code
class="ph codeph">budget_intervals</code> including: <code
class="ph codeph">daily_budget</code>, <code
class="ph codeph">daily_budget_imps</code>, <code
class="ph codeph">lifetime_budget</code>, or <code
class="ph codeph">lifetime_budget_imps</code>. Use the fields with no
imp if the deal line item has revenue budget type or the fields with
<code class="ph codeph">_imp</code> at the end if the deal line item has
revenue type impression. You can either have a daily or lifetime budget,
not both. A lifetime budget that sits across flights ends up being
broken out across each flight via the API. Remember that if your deal
has no end date, it can't have a budget. <br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__43"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__44">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001af3__section_y5t_xzg_twb__entry__45">State of the deal
line item. Default is <code class="ph codeph">active</code>, so set to
<code class="ph codeph">inactive</code> if you don't want the deal to go
live right away.</td>
</tr>
</tbody>
</table>

To create a deal line item, do the following (see <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item Service</a> for more
information):

1.  Create a deal line item JSON (you'll need an existing advertiser ID,
    insertion order ID, deal ID, and profile ID).

    ** Example JSON: Deal Line Item No Budget  
    **

    ``` pre
    > cat deal_line_item.json
    {
        "line-item": {
            "ad_types": ["video"],
            "auction_event": {
                "kpi_auction_type_id": 1,
                "payment_auction_type_id": 1,
                "revenue_auction_type_id": 1
            },
            "bid_object_type": "deal",
            "budget_intervals": [{
                "start_date": "2019-10-11 12:00:00"
            }],
            "deals": [{
                "id": 618159
            }],
            "insertion_orders": [{
                "id": 1363850
            }],
            "line_item_type": "standard_v2",
            "name": "Deal Line Item Example Line Item",
            "revenue_type": "vcpm",
            "revenue_value": null,
            "supply_strategies": {
                "managed": true
            },
            "profile_id": 112548354,
            "valuation": {
                "min_revenue_value": 10
            }
        }
    }
    ```

     **Example JSON: Deal Line Item Lifetime Impression Budget  
    **

    ``` pre
    > cat deal_line_item_lifetime.json
    {
        "line-item": {
            "ad_types": ["video"],
            "auction_event": {
                "kpi_auction_type_id": 1,
                "payment_auction_type_id": 1,
                "revenue_auction_type_id": 1
            },
            "bid_object_type": "deal",
            "budget_intervals": [
                    {
                        "end_date": "2019-10-18 23:59:59",
                        "lifetime_budget_imps": 2586,
                        "start_date": "2019-10-11 12:00:00",
                        "timezone": "US/Pacific"
                    },
                    {
                        "end_date": "2019-10-25 23:59:59",
                        "lifetime_budget_imps": 2414,
                        "start_date": "2019-10-19 00:00:00",
                        "timezone": "US/Pacific"
                    }
                ],
            "deals": [{
                "id": 618159
            }],
            "insertion_orders": [{
                "id": 1363850
            }],
            "line_item_type": "standard_v2",
            "name": "Deal Line Item Example Line Item",
            "revenue_type": "vcpm",
            "revenue_value": null,
            "supply_strategies": {
                "managed": true
            },
            "profile_id": 112548354,
            "valuation": {
                "min_revenue_value": 10
            }
        }
    }
    ```

    ** Example JSON: Deal Line Item Daily Revenue Budget  
    **

    ``` pre
    > cat deal_line_item_daily.json
    {
        "line-item": {
            "ad_types": ["video"],
            "auction_event": {
                "kpi_auction_type_id": 1,
                "payment_auction_type_id": 1,
                "revenue_auction_type_id": 1
            },
            "bid_object_type": "deal",
            "budget_intervals": [
                    {
                        "daily_budget_imps": 270,
                        "end_date": "2019-10-18 23:59:59",
                        "start_date": "2019-10-11 12:00:00",
                        "timezone": "US/Pacific"
                    }
                ],
            "deals": [{
                "id": 618159
            }],
            "insertion_orders": [{
                "id": 1363850
            }],
            "line_item_type": "standard_v2",
            "name": "Deal Line Item Example Line Item",
            "revenue_type": "vcpm",
            "revenue_value": null,
            "supply_strategies": {
                "managed": true
            },
            "profile_id": 112548354,
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
    deal line item JSON and an
    appropriate `advertiser_id` and `member_id`.

     **Example Request: Deal Line Item No Budget**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @deal_line_item.json 'https://api.appnexus.com/line-item?member_id=2378&advertiser_id=3410892'
    ```

     **Example Request: Deal Line Item Lifetime Impression Budget**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @deal_line_item_lifetime.json 'https://api.appnexus.com/line-item?member_id=2378&advertiser_id=3410892'
    ```

     **Example Request: Deal Line Item Daily Revenue Budget**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @deal_line_item_daily.json 'https://api.appnexus.com/line-item?member_id=2378&advertiser_id=3410892'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.   
      

4.  Note the line item ID in the response body so you can identify this
    deal line item later to change its `state` (`active` or `inactive`)
    or modify it.




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






