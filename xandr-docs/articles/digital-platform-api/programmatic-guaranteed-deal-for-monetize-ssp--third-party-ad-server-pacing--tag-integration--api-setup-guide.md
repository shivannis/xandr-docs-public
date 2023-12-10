---
Title : Programmatic Guaranteed Deal for Monetize SSP (Third-Party Ad Server Pacing, Tag Integration) API Setup Guide
Description : Setting up an API implementation for a programmatic guaranteed (PG) deal
ms.date: 10/28/2023
ms.custom: digital-platform-api
with third-party ad server pacing and tag integration requires
configuring a number of different properties on different API objects.
---


# Programmatic Guaranteed Deal for Monetize SSP (Third-Party Ad Server Pacing, Tag Integration) API Setup Guide



Setting up an API implementation for a programmatic guaranteed (PG) deal
with third-party ad server pacing and tag integration requires
configuring a number of different properties on different API objects.
This guide will explain the process of creating and configuring a PG
deal using our API.


## Overview

PG deals are a powerful feature that allow network and publisher clients
to better support their buyers by providing prepackaged, user-friendly
buying tools for fixed-price deals.

Setting up a PG deal involves making requests to the following API
service endpoints to access or create the corresponding API objects:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_fpm_3cp_swb__entry__1"
class="entry colsep-1 rowsep-1">API Endpoint</th>
<th id="ID-00002da1__section_fpm_3cp_swb__entry__2"
class="entry colsep-1 rowsep-1">API Object</th>
<th id="ID-00002da1__section_fpm_3cp_swb__entry__3"
class="entry colsep-1 rowsep-1">Detailed Reference</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__1"><a
href="https://api.appnexus.com/advertiser" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/advertiser</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__2">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__3"><a
href="advertiser-service.md"
class="xref" target="_blank">Advertiser Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__1"><a
href="https://api.appnexus.com/insertion-order" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__2">insertion-order</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__3"><a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__1"><a
href="https://api.appnexus.com/deal" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/deal</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__2">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__3"><a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__1"><a
href="https://api.appnexus.com/profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/profile</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__2">profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__3"><a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__2">line-item
(ALI)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpm_3cp_swb__entry__3"><a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item - ALI Service</a></td>
</tr>
</tbody>
</table>

This guide uses cURL examples for all requests. You can use other API
request tools (e.g., <a href="https://www.getpostman.com/" class="xref"
target="_blank">Postman</a>), but you’ll then need to adjust the
examples accordingly.




## Prerequisites

Before beginning this setup, be sure to read <a
href="api-getting-started.md"
class="xref" target="_blank">API Getting Started</a>. It provides
information on testing environments, usage constraints, API semantics
(running commands, filtering, sorting, etc.), and best practices.




## Order of Operations

API objects often have dependencies on other API objects and there is an
order you must follow in creating or accessing objects when you create a
PG deal. For example, you must provide the IDs of the following API
objects: `advertiser`, `insertion-order`, `deal`, and `profile`. To
obtain the IDs for these objects, you'll need to either create them or
already have access to them. The steps in this guide follow the typical
order of operations required to create a PG deal.




## Best Practices

For a general list of best practices to follow when working with the
API, see <a
href="api-best-practices.md"
class="xref" target="_blank">API Best Practices</a>. The following are
some best practices that are specific to a deal line item setup:

- Set the `state` field of the deal line item to `"inactive"` until the
  line item is fully configured and ready for testing.
- Note the ID of any objects you create. The IDs of objects you create
  are returned in the response body of requests. You'll often need these
  IDs later so copying them when they're returned can reduce the number
  of additional GET requests you have to make to obtain them.




## Setup Procedure

The following steps will guide you through the process of setting up a
deal line item with typical configurations:

<div class="p h3">

- <a
  href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__34"
  class="xref">Step 1 - Obtain an authorization token</a>

- <a
  href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__35"
  class="xref">Step 2 - Create or access an advertiser</a>

- <a
  href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__36"
  class="xref">Step 3 - Create or access an insertion order for PG</a>

- <a
  href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__38"
  class="xref">Step 4 - Create a PG deal</a>

- <a
  href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__40"
  class="xref">Step 5 - Create a PG deal line item profile</a>

- <a
  href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__41"
  class="xref">Step 6 - Create a PG deal line item</a>






## Authentication

**Step 1 - Obtain an authorization token**

First, you’ll need to obtain an authorization token. You must then
include this authorization token in all subsequent requests (see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for more
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

2.  Make a POST request to the `/auth` endpoint with this JSON file in
    the request body (see <a
    href="authentication-service.md"
    class="xref" target="_blank">Authentication Service</a> for more
    information). In the cURL request below, the authorization token
    returned is stored in the “`cookies`” file.

    ``` pre
    curl -c cookies -X POST -d @authentication.json 'https://api.appnexus.com/auth'
    ```

3.  Check the response body of your request (see **Example Response**
    below). If your request was successful, you’ll get a "`status`" of
    “`OK`” and the "`token`" field will be populated with the
    authentication token value.  
    **Example Response  
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
<th id="ID-00002da1__section_fmc_3gp_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_fmc_3gp_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_fmc_3gp_swb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00002da1__section_fmc_3gp_swb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__4">The name of the
advertiser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__1"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__4">The timezone of the
advertiser. See 7<a
href="api-timezones.md"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__1"><code
class="ph codeph">use_insertion_orders</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fmc_3gp_swb__entry__4">This field must be
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

2.  Make a POST request to the
    <a href="https://api.appnexus.com/advertiser" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/advertiser</code></a> endpoint with this
    advertiser JSON and an appropriate `member_id`.

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @advertiser.json 'https://api.appnexus.com/advertiser?member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.

4.  Note the advertiser ID in the response body so you can use it when
    you create the deal line item in <a
    href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__41"
    class="xref">Step 6 - Create a deal line item</a>.




## Insertion Order

**Step 3 - Create or access an insertion order for PG**

You'll need to create or access an insertion order to create a PG deal.
Deal line items require a seamless insertion order (see required fields
below).

**JSON Fields for Seamless Insertion Order (Required and Useful Optional
Fields)**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_fpw_k3p_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_fpw_k3p_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_fpw_k3p_swb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00002da1__section_fpw_k3p_swb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__4">The name of the
insertion order</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__4">The state of the
insertion order: <code class="ph codeph">active</code> or <code
class="ph codeph">inactive</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__1"><code
class="ph codeph">budget_intervals</code><br />
(Billing Periods)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__4">To create an
insertion order for a PG deal through the API, to be seamless, you must
use the <code class="ph codeph">budget_intervals</code> field. The
following array objects must be set to to the following values:<br />
&#10;<ul>
<li><code class="ph codeph">"end_date</code><code
class="ph codeph">":</code> <code class="ph codeph">null</code></li>
<li><code class="ph codeph">"lifetime_budget":</code> <code
class="ph codeph">null</code></li>
<li><code class="ph codeph">"lifetime_budget_imps":</code> <code
class="ph codeph">null</code></li>
<li><code class="ph codeph">"daily_budget":</code> <code
class="ph codeph">null</code></li>
<li><code class="ph codeph">"daily_budget_imps":</code> <code
class="ph codeph">null</code></li>
<li><code class="ph codeph">"enable_pacing":</code> <code
class="ph codeph">false</code></li>
<li><code class="ph codeph">"lifetime_pacing":</code> <code
class="ph codeph">false</code></li>
<li><code class="ph codeph">"lifetime_pacing_pct":</code> <code
class="ph codeph">null</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__1"><code
class="ph codeph">budget_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_fpw_k3p_swb__entry__4">Budget type will
translate to all deals below the insertion order. For PG deals, the
<code class="ph codeph">budget_type</code> field can be set to either of
the following values: <code class="ph codeph">"impression"</code> or
<code class="ph codeph">"flexible"</code>. If you select an impression
budget type for your insertion order, then you can't have deal line
items with a revenue budget associated to that insertion order. However,
insertion orders with <code class="ph codeph">"flexible"</code> budget
types can have deal line items with either impression or revenue budget
types.<br />
</td>
</tr>
</tbody>
</table>

If you don't already have an insertion order to use, create an insertion
order by doing the following (see <a
href="insertion-order-service.md"
class="xref" target="_blank">Insertion Order Service</a> for more
information):

1.  Create an insertion order JSON (two examples are shown below):  
    **Example JSON: No End Date, Unlimited Budget**

    ``` pre
    $ cat insertion-order-noenddate.json
    {
        "insertion-order": {
            "name": "PG Deal Example IO",
                    "state": "active",
            "budget_intervals": [{
                "start_date": "2022-10-10 00:00:00",
                "end_date": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "enable_pacing": true,
                "lifetime_budget": null,
                "lifetime_budget_imps": null
            }],
            "budget_type": "impression"
        }
        }
    ```

2.  Make a POST request to the
    <a href="https://api.appnexus.com/insertion-order" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/insertion-order</code></a> endpoint with this
    insertion order JSON and an appropriate `advertiser_id` and
    `member_id`.  
      
    **Example Request: No End Date, Unlimited Budget**

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @insertion-order-noenddate.json 'https://api.appnexus.com/insertion-order?advertiser_id=2605036&member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the insertion order ID in the response body so you can use it
    when you create the PG deal line item in <a
    href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__41"
    class="xref">Step 6 - Create a deal line item</a>.




## Deal

**Step 4 - Create a PG deal**

You'll need to create the deal you want to associate with the PG deal
line item.

**JSON Fields for Deal**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_bn2_tjp_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">The name of the
deal (<strong>Note</strong>: the buyer will see this name)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><code
class="ph codeph">active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">The state of the
insertion order: <code class="ph codeph">true</code> or <code
class="ph codeph">false</code>. The default value for this field is
<code class="ph codeph">true</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><pre
class="pre codeblock"><code>buyer_members</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">Your deal buyer's
name and associated code. Example:
<pre class="pre codeblock"><code>&quot;buyer_members&quot;:[
        {
                &quot;name&quot;: &quot;Microsoft Advertising Exchange&quot;,
                &quot;code&quot;: &quot;280&quot;
        }
]</code></pre>

<b>Note:</b> PG deals can only have one buyer.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><pre
class="pre codeblock"><code>version</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">This field must be
set to <code class="ph codeph">"2"</code>.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><pre
class="pre codeblock"><code>auction_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">This object's
fields must be set accordingly for a PG deal:
<ul>
<li><code class="ph codeph">"id":</code> <code
class="ph codeph">3,</code></li>
<li><code class="ph codeph">"name":</code> <code
class="ph codeph">"Fixed Price"</code><br />
</li>
</ul>

<b>Note:</b> This field must be set upon
creation, but it is not used on deal line items. It will not be updated
if the line item is updated and in the auction; only the line item
values are considered.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">This object's
fields must be set accordingly for a PG deal:
<ul>
<li><strong><code class="ph codeph">"id":</code> <code
class="ph codeph">4,</code></strong></li>
<li><strong><code class="ph codeph">"name":</code> <code
class="ph codeph">"Programmatic Guaranteed"</code></strong></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><code
class="ph codeph">ask_price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">This is the price
shown to the buyer. It is the minimum they must bid in order to compete
for the inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><code
class="ph codeph">currency</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">The currency for
the <code class="ph codeph">floor_price</code>. For a full list of
available currencies, use the read-only <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>. The default value for
this field is <code class="ph codeph">"USD"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__1"><code
class="ph codeph">use_deal_floor</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__4">This field must be
set to <code class="ph codeph">true</code>. When this field is set to
<code class="ph codeph">true</code>, the <code
class="ph codeph">floor_price</code> is applied for the deal. When <code
class="ph codeph">use_deal_floor</code> is <code
class="ph codeph">true</code>, the deal's floor price overrides any
other floors you may have, for example, in placements or yield
management profiles.

<b>Note:</b> As of 2017, only ask_price is
used. API POST and PUT calls
referencing floor_price and use_deal_floor will work as follows:
<ul>
<li>If the API call includes ask_price only, this is the value that will
be used.</li>
<li>If the API call includes only a floor_price value, this value will
be converted into the ask_price value.</li>
</ul>
</td>
</tr>
</tbody>
</table>

**Useful Optional JSON Fields**

JSON Fields for Allowed Creatives  

Brand (see <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a>)

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_bn2_tjp_swb__entry__41"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__42"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__43"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__41"><pre
class="pre codeblock"><code>brand_restrict</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__42">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__43"><code
class="ph codeph">true</code>: Deal is restricted only to the listed
brands<br />
<code class="ph codeph">false</code>: Other brands are allowed to
serve</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__41"><pre
class="pre codeblock"><code>brands</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__42">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__43">Array of eligible
brands</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__41"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__42">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__43">Field within <code
class="ph codeph">brands</code>: ID of the brand that is eligible for
the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__41"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__42">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__43">Field within <code
class="ph codeph">brands</code>: name of the brand that is eligible for
the deal<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__41"><pre
class="pre codeblock"><code>override</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__42">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__43">Field within <code
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
class="xref" target="_blank">Language Service</a> )

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_bn2_tjp_swb__entry__59"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__60"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__61"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__59"><pre
class="pre codeblock"><code>language_restrict</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__60">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__61"><code
class="ph codeph">true</code>: Deal is restricted only to the listed
languages<br />
<code class="ph codeph">false</code>: Other languages are allowed to
serve</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__59"><pre
class="pre codeblock"><code>languages</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__60">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__61">Array of eligible
languages</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__59"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__60">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__61">Field within <code
class="ph codeph">languages</code>: ID of the language that is eligible
for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__59"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__60">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__61">Field within <code
class="ph codeph">languages</code>: Name of the language that is
eligible for the deal<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__59"><pre
class="pre codeblock"><code>override</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__60">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__61">Field within <code
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__77"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__78"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__79"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__77"><pre
class="pre codeblock"><code>audit_status_option</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__78">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__79">Specifies how the
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__83"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__84"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__85"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__83"><pre
class="pre codeblock"><code>category_restrict</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__84">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__85">Specifies whether
the deal is restricted only to the categories listed in the categories
object (see <a
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
headers="ID-00002da1__section_bn2_tjp_swb__entry__83"><pre
class="pre codeblock"><code>categories</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__84">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__85">The categories
that describe the creatives that are eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__83"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__84">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__85">Field within <code
class="ph codeph">categories</code>: ID of the category that is eligible
for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__83"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__84">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__85">Field within <code
class="ph codeph">categories</code>: Name of the category that is
eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__83"><pre
class="pre codeblock"><code>override</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__84">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__85">Field within <code
class="ph codeph">categories</code>: Set to <code
class="ph codeph">true</code> to allow a category to serve for a deal
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__101"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__102"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__103"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__101">creatives</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__102">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__103">A list of
creatives that are specifically approved or banned for the deal. This
list overrides any other ad quality setting.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__101"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__102">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__103">Field within
<code class="ph codeph">creatives</code>: ID of the creative that is
approved or banned for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__101"><code
class="ph codeph">status</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__102">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__103">Field within
<code class="ph codeph">creatives</code>: Specifies how this creative
will be handled for this deal.
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__113"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__114"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__115"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__113"><pre
class="pre codeblock"><code>allowed_media_subtypes</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__114">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__115">The media
subtypes allowed for the deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__113"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__114">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__115">Field within
<code class="ph codeph">allowed_media_subtypes:</code> The ID of the
media subtype allowed for the deal</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__113"><pre
class="pre codeblock"><code>allowed_media_types</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__114">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__115">The media types
allowed for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__113"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__114">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__115">Field within
<code class="ph codeph">allowed_media_types:</code>The ID of the media
type allowed for the deal</td>
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__128"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__129"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__130"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__128"><pre
class="pre codeblock"><code>technical_attribute_restrict</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__129">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__130">Specifies whether
the deal is restricted only to the technical attributes listed in the
<code class="ph codeph">technical_attributes</code> object.
<ul>
<li><code class="ph codeph">true</code>: Deal is restricted only to the
listed technical attributes.</li>
<li><code class="ph codeph">false</code>: Other technical attributes are
also allowed to serve.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__128"><pre
class="pre codeblock"><code>technical_attributes</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__129">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__130">The technical
attributes of creatives that are eligible for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__128"><pre
class="pre codeblock"><code>id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__129">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__130">Field within
<code class="ph codeph">technical_attributes:</code>The ID of the
technical attribute that is eligible for the deal</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__128"><pre
class="pre codeblock"><code>override</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__129">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__130">Field within
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



<b>Warning:</b> This beta feature isn't
available for all clients. Please reach out to your account manager to
discuss if you have a use case.



User ID and Device ID

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_bn2_tjp_swb__entry__143"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__144"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__145"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__143"><pre
class="pre codeblock"><code>expose_device_id_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__144">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__145">If <code
class="ph codeph">true</code>, publisher-provided device IDs are passed
in your bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__143"><pre
class="pre codeblock"><code>expose_user_id_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__144">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__145">If true,
publisher-provided user IDs are passed in your bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__143"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__144">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__145">The name of the
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

IP Address

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_bn2_tjp_swb__entry__155"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__156"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__157"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__155"><pre
class="pre codeblock"><code>expose_ip_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__156">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__157">If <code
class="ph codeph">true</code>, publisher-provided IP addresses are
passed in your bid requests.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__155"><pre
class="pre codeblock"><code>ip_exposure_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__156">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__157">The visibility of
IP addresses in your bid requests.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__155"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__156">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__157">The name of the
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__167"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__168"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__169"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__167"><pre
class="pre codeblock"><code>url_exposure_default</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__168">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__169">The visibility of
inventory URLs in your bid requests. Possible values:
<ul>
<li><code class="ph codeph">full</code> - Full URLs are passed in your
bid requests</li>
<li><code class="ph codeph">domain</code> - Only domains of URLs are
passed in your bid requests</li>
<li><code class="ph codeph">hidden</code> - URLs are not passed in your
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
<th id="ID-00002da1__section_bn2_tjp_swb__entry__173"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__174"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_bn2_tjp_swb__entry__175"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__173"><pre
class="pre codeblock"><code>allow_creative_add_on_view</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__174">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__175">Set <code
class="ph codeph">false</code> to disallow buyers from adding users to
segments on view</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__173"><pre
class="pre codeblock"><code>allow_creative_add_on_click</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__174">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_bn2_tjp_swb__entry__175">Set <code
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

To create a deal, do the following (see
<a href="deal-service.md"
class="xref" target="_blank">Deal Service</a> for more information):

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

2.  Make a POST request to the
    <a href="https://api.appnexus.com/deal" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/deal</code></a> endpoint with this deal JSON
    and an appropriate `member_id`.

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @deal.json 'https://api.appnexus.com/deal?member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the deal ID in the response body so you can use it when you
    create the deal line item in <a
    href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__41"
    class="xref">Step 6 - Create a deal line item</a>.




## Profile

**Step 5 - Create a deal line item profile**

Next, create a deal line item profile to use in targeting with the deal
line item. Be sure to note the ID for this profile for later use. See <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information.

**Optional JSON Fields for Deal Line Item Profile**

There are many optional fields available in the deal line item profile
for targeting with the deal line item. For example, you can target
properties associated with inventory, inventory types, allowlists,
blocklists, device types, and so forth. See the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information on
available fields.  

To create a PG deal line item profile, do the following (see <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> for more information):

1.  Create a PG deal line item profile JSON:

    **Example: Profile Creation with Country, Frequency/Recency Caps,
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

2.  Make a POST request to the
    <a href="https://api.appnexus.com/profile" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/profile</code></a> endpoint with this deal
    profile JSON and an appropriate `advertiser_id`.  
      

    **Example: Profile Creation with Country, Frequency/Recency Caps,
    and View Rate/Completion Rate Thresholds**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @profile.json 'https://api.appnexus.com/profile?advertiser_id=3410892&member_id=2378'
    ```

    **Example: Profile Creation without Targeting**

    ``` pre
    > curl -b cookies -c cookies -X POST -d @profile.json 'https://api.appnexus.com/profile?advertiser_id=3410892&member_id=2378'
    ```

3.  Check the response body of your request. If your request was
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the profile ID in the response body so you can use it when you
    create the PG deal line item in <a
    href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__41"
    class="xref">Step 6 - Create a PG deal line item</a>.




## Line Item

**Step 6 - Create a PG deal line item**

Finally, you'll need to create the deal line item to associate the deal
ID and the deal line item profile you created in <a
href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__40"
class="xref">Step 5 - Create a PG deal line item profile.</a>

**JSON Fields for Deal Line Item**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_zxz_tlp_swb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_zxz_tlp_swb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_zxz_tlp_swb__entry__3"
class="entry colsep-1 rowsep-1">Required or Optional</th>
<th id="ID-00002da1__section_zxz_tlp_swb__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">The ID of the
advertiser to which the line item belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>insertion_orders</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Array containing
the insertion order ID you want to associate this deal line item to.

<b>Note:</b> PG deal line items can only use a
single insertion order.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Name of the deal
line item (<b>Note:</b> the buyer won't see this)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">State of the PG
deal line item. Default is <code class="ph codeph">active</code>, so set
to <code class="ph codeph">inactive</code> if you don't want the deal to
go live right away.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>priority</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Set this field's
value to <code class="ph codeph">"5"</code> for a PG deal.<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>ad_types</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">The type of
creative used for this deal line item. Possible values:
<ul>
<li><code class="ph codeph">"banner"</code><br />
</li>
</ul>

<b>Note:</b> Currently, you can only use
banner (display) creatives for PG deals for SSP (third-party ad server
targeting and pacing).
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>line_item_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Must be set to
<code class="ph codeph">"standard_v2"</code> to create a PG deal line
item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>profile_id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Profile ID
associated with the deal line item (<a
href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__40"
class="xref">Step 5 - Create a deal line item profile</a>.)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Always include a
<code class="ph codeph">start_date</code>. To create an endless PG deal
line item, leave <code class="ph codeph">end_date</code> as <code
class="ph codeph">null</code>.
<p>To establish an unlimited impression budget, set <code
class="ph codeph">lifetime_budget_imp</code>s to <code
class="ph codeph">null</code>.<br />
</p>
<p>Example budget_intervals setup:<br />
</p>
<pre class="pre codeblock"><code>&quot;budget_intervals&quot;: [
        {
                &quot;id&quot;: 18770835,
                &quot;object_id&quot;: 18601984,
                &quot;object_type&quot;: &quot;campaign_group&quot;,
                &quot;start_date&quot;: &quot;2022-08-08 00:00:00&quot;,
                &quot;end_date&quot;: &quot;2022-08-17 23:59:59&quot;,
                &quot;timezone&quot;: &quot;Europe/Paris&quot;,
                &quot;code&quot;: null,
                &quot;parent_interval_id&quot;: null,
                &quot;creatives&quot;: null,
                &quot;subflights&quot;: null,
                &quot;lifetime_budget&quot;: null,
                &quot;lifetime_budget_imps&quot;: 100,
                &quot;lifetime_pacing&quot;: false,
                &quot;enable_pacing&quot;: true,
                &quot;lifetime_pacing_pct&quot;: 105,
                &quot;underspend_rollover_state&quot;: false
        }
]</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>deals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">The <code
class="ph codeph">id</code> field within deals must be the ID of the
deal you created in <a
href="programmatic-guaranteed-deal-for-monetize-ssp--third-party-ad-server-pacing--tag-integration--api-setup-guide.md#ID-00002da1__38"
class="xref">Step 4 - Create a deal</a>)

<b>Note:</b> Only one PG deal ID can be
inserted.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>supply_strategies</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">An object
containing several boolean fields used to designate which inventory
supply sources you would like to target. This object must have the
following fields and values set for a PG deal:
<ul>
<li><code class="ph codeph">"managed":</code> <code
class="ph codeph">true,</code></li>
<li><code class="ph codeph">"rtb":</code> <code
class="ph codeph">false,</code></li>
<li><code class="ph codeph">"deals":</code> <code
class="ph codeph">false,</code></li>
<li><code class="ph codeph">"programmatic_guaranteed":</code> <code
class="ph codeph">false</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>revenue_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Set this field to
<code class="ph codeph">"cpm"</code> for a PG deal.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>revenue_value</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Set this field to
<code class="ph codeph">"5"</code> for a PG deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>auction_event</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">For a PG deal,
fields and value for the <code class="ph codeph">auction_event</code>
object for must be set like this:
<pre class="pre codeblock"><code>&quot;auction_event&quot;: {
        &quot;payment_auction_event_type_code&quot;: &quot;impression&quot;,
        &quot;payment_auction_event_type&quot;: &quot;impression&quot;,
        &quot;payment_auction_type_id&quot;: 1,
        &quot;revenue_auction_event_type_code&quot;: &quot;impression&quot;,
        &quot;revenue_auction_event_type&quot;: &quot;impression&quot;,
        &quot;revenue_auction_type_id&quot;: 1,
        &quot;kpi_auction_event_type_code&quot;: &quot;impression&quot;,
        &quot;kpi_auction_event_type&quot;: &quot;impression&quot;,
        &quot;kpi_auction_type_id&quot;: 1,
        &quot;kpi_value_type&quot;: null,
        &quot;kpi_value&quot;: null
}</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><code
class="ph codeph">valuation</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">You must set this
object's <code class="ph codeph">min_revenue_value</code> to <code
class="ph codeph">null</code> for a PG deal.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>bid_object_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Must be set to
<code class="ph codeph">"deal"</code> for a PG deal line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><code
class="ph codeph">delivery_goal</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">For a PG deal, set
this field to <code class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><code
class="ph codeph">delivery_model_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Set this field's
value to <code class="ph codeph">"</code><code
class="ph codeph">guaranteed"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__1"><pre
class="pre codeblock"><code>line_item_subtype</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__3">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__4">Set this field's
value to <code class="ph codeph">"</code><code
class="ph codeph">pg_deal_3p_pacing"</code>.</td>
</tr>
</tbody>
</table>

**Useful Optional JSON Fields  
**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002da1__section_zxz_tlp_swb__entry__81"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002da1__section_zxz_tlp_swb__entry__82"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002da1__section_zxz_tlp_swb__entry__83"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__81"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__82">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002da1__section_zxz_tlp_swb__entry__83">Set a budget on
the deal using fields within <code
class="ph codeph">budget_intervals</code> including: <code
class="ph codeph">daily_budget</code> , <code
class="ph codeph">daily_budget_imps</code> , <code
class="ph codeph">lifetime_budget</code> , or <code
class="ph codeph">lifetime_budget_imps</code> . Use the fields with no
imp if the deal line item has revenue budget type or the fields with
<code class="ph codeph">_imp</code> at the end if the deal line item has
revenue type impression. You can either have a daily or lifetime budget,
not both. A lifetime budget that sits across flights ends up being
broken out across each flight via the API. Remember that if your deal
has no end date, it can't have a budget.<br />
</td>
</tr>
</tbody>
</table>

To create a PG deal line item, do the following (see <a
href="line-item-service---ali.md"
class="xref" target="_blank">Line Item Service</a> for more
information):

1.  Create a deal line item JSON (you'll need an existing advertiser ID,
    insertion order ID, deal ID, and profile ID).

    **Example JSON: PG Deal Line Item with No Budget  
    **

    ``` pre
    > cat deal_line_item.json
    {
        "line-item": {
            "ad_types": ["banner"],
            "auction_event": {
                "kpi_auction_type_id": 1,
                "payment_auction_type_id": 1,
                "revenue_auction_type_id": 1
            },
            "bid_object_type": "deal",
            "budget_intervals": [{
                "start_date": "2022-08-11 12:00:00"
            }],
            "deals": [{
                "id": 618159
            }],
            "insertion_orders": [{
                "id": 1363850
            }],
            "line_item_type": "standard_v2",
            "name": "Deal Line Item Example Line Item",
            "revenue_type": "cpm",
            "revenue_value": "5",
            "supply_strategies": {
                "managed": true,
                            "rtb": false,
                            "programmatic_guaranteed": false
            },
            "profile_id": 112548354,
            "valuation": {
                "min_revenue_value": null
            }
        }
    }
    ```

    **Example JSON: PG Deal Line Item Lifetime Impression Budget  
    **

    ``` pre
    > cat deal_line_item_lifetime.json
    {
        "line-item": {
            "ad_types": ["banner"],
            "auction_event": {
                "kpi_auction_type_id": 1,
                "payment_auction_type_id": 1,
                "revenue_auction_type_id": 1
            },
            "bid_object_type": "deal",
            "budget_intervals": [
                    {
                        "end_date": "2022-10-18 23:59:59",
                        "lifetime_budget_imps": 2586,
                        "start_date": "2022-10-11 12:00:00",
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
            "revenue_type": "cpm",
            "revenue_value": "5",
            "supply_strategies": {
                "managed": true,
                            "rtb": false,
                            "programmatic_guaranteed": false
            },
            "profile_id": 112548354,
            "valuation": {
                "min_revenue_value": null
            }
        }
    }
    ```

2.  Make a POST request to the
    <a href="https://api.appnexus.com/line-item" class="xref"
    target="_blank">https://api.<span
    class="ph">appnexus.com/line-item</a> endpoint using this
    deal line item JSON and an appropriate `advertiser_id` and
    `member_id`.

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
    successful, you’ll get a "`status`" of “`OK`” and you’ll see the
    updates you made.  
      

4.  Note the line item ID in the response body so you can identify this
    deal line item later to change its `state` (`active` or `inactive`)
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






