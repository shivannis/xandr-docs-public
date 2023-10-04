---
Title : Publisher GDALI API Setup Guide
Description : Setting up an API implementation of a Guaranteed Delivery Augmented Line
Item (GDALI) can seem complicated because it requires configuring a
number of different properties on different API objects. This guide will
---


# Publisher GDALI API Setup Guide



Setting up an API implementation of a Guaranteed Delivery Augmented Line
Item (GDALI) can seem complicated because it requires configuring a
number of different properties on different API objects. This guide will
explain the process of creating and configuring a typical GDALI using
our API.

<div id="ID-0000273d__section_g1v_svh_5wb" >

## Overview

A GDALI provides you with a workflow specifically designed to deliver:

- Budget in full across its flight dates
- Budget evenly across its flight dates
- Guaranteed goals while still (optionally) competing in the auction
  with other demand such as RTB

Setting up a GDALI typically involves making requests to the following
API service endpoints to access or create the corresponding buy-side
objects:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__section_g1v_svh_5wb__entry__1"
class="entry colsep-1 rowsep-1">API Endpoint</th>
<th id="ID-0000273d__section_g1v_svh_5wb__entry__2"
class="entry colsep-1 rowsep-1">Buy-Side Object</th>
<th id="ID-0000273d__section_g1v_svh_5wb__entry__3"
class="entry colsep-1 rowsep-1">Detailed Reference</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__2">insertion-order</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__3"><a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__1"><a
href="https://api.appnexus.com/profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/profile</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__2">profile</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__3"><a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__2">line-item</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_g1v_svh_5wb__entry__3"><a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html"
class="xref" target="_blank">Line Item Service - GDALI</a></td>
</tr>
</tbody>
</table>

This guide uses cURL examples for all requests. You can use other API
request tools (e.g., <a href="https://www.getpostman.com/" class="xref"
target="_blank">Postman</a>), but you’ll then need to adjust the
examples accordingly.



<div id="ID-0000273d__section_e3p_5vh_5wb" >

## Prerequisites

Before beginning this setup, be sure to read <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-getting-started.html"
class="xref" target="_blank">API Getting Started</a>. It provides
information on testing environments, usage constraints, API semantics
(running commands, filtering, sorting, etc.), and best practices.

This guide assumes you have created or can access the following API
objects required to create any GDALI:

- `advertiser` – see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">Advertiser Service</a> for more
  information.
- `insertion-order` – (instructions for creating a seamless insertion
  order included below for convenience) see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a> for more
  information. Note: GDALIs can only be associated with seamless
  insertion orders; legacy/non-seamless insertion orders are not
  supported. 



<div id="ID-0000273d__section_kqx_wvh_5wb" >

## Order of Operations

Xandr API objects often have dependencies on
other objects and there is an order you must follow in creating or
accessing objects when you create a GDALI. For example, to create a
GDALI, you must provide the IDs of the following objects:
`advertiser`, `insertion-order`, and (optionally) `profile`. To obtain
the IDs for these objects, you'll need to either create them or already
have access to them. The steps in this guide follow the typical order of
operations required to create a GDALI.



<div id="ID-0000273d__section_a3p_yvh_5wb" >

## Best Practices

For a general list of best practices to follow when working with
the API, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
class="xref" target="_blank">API Best Practices</a>. The following are
some best practices that are specific to a GDALI setup:

- **Set the `state` field of the GDALI to** `"inactive"` until the line
  item is fully configured and ready for testing.
- **Note the ID of any objects you create**. The IDs of objects you
  create are returned in the response body of requests. You'll often
  need these IDs later so copying them when they're returned can reduce
  the number of additional GET requests you have to make to obtain them.



<div id="ID-0000273d__section_ecb_1wh_5wb" >

## Setup Procedure



The following steps will guide you through the process of setting up a
GDALI with typical configurations:

- <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__11"
  class="xref">Step 1 - Obtain an authorization token</a>
- <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__ID-00002801"
  class="xref">Step 2 - Create a seamless insertion order</a> (if an
  appropriate one is not available under the advertiser)
- <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__12"
  class="xref">Step 3 - Create a profile</a>
- <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__13"
  class="xref">Step 4 - Create a GDALI</a>





<div id="ID-0000273d__section_tv3_cwh_5wb" >

## Authentication

**Step 1 - Obtain an authorization token**

First, you’ll need to obtain an authorization token. You must then
include this authorization token in all subsequent requests (see <a
href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
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
    href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
    class="xref" target="_blank">Authentication Service</a> for more
    information). In the cURL request below, the authorization token
    returned is stored in the “`cookies`” file.

    ``` pre
    curl -c cookies -X POST -d @authentication.json 'https://api.appnexus.com/auth'
    ```

3.  Check the response body of your request (see **Example
    Response** below). If your request was successful, you’ll get
    a "`status`" of “`OK`” and the "`token`" field will be populated
    with the authentication token value.   
      Example Response   

    ``` pre
    {
       "response" : {
          "token" : "authn:225692:2d787d1838283:lax1",
          "status" : "OK"      
       }
    }
    ```



<div id="ID-0000273d__section_tlw_dwh_5wb" >

## Seamless Insertion Order

**Step 2 - Create a seamless insertion order**

Next, create a seamless insertion order. Be sure to note the ID for this
insertion order for later use. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a> for more
information.



Note: For an insertion order to be
associated with a guaranteed delivery augmented line item (GDALI), the
insertion order must:

- Be a <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Seamless Insertion Order</a> (legacy
  insertion orders are not compatible).  
- Have `budget_type` set to `"flexible"` or `"impression"`.
- Not contain more than one `budget_intervals` array.
- Have unlimited budget (set via the `budget_intervals` array).

Insertion orders not matching the above may only be associated to
non-guaranteed line items. Note the above settings are also required for
programmatic guaranteed line items (PGLI). An insertion order with the
above settings may also be associated to non-guaranteed line items.

Associating a `profile_id` (e.g., frequency capping or setting
additional targeting) on the insertion order object may result in
unexpected forecasting or delivery for PGLIs and GDALIs. It is
recommended not to use `profile_id` for insertion orders intended for
the use with GDALIs.



**  
JSON Fields for Publisher Insertion Order**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__section_tlw_dwh_5wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000273d__section_tlw_dwh_5wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000273d__section_tlw_dwh_5wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The name of the
insertion order. (Maximum of 255 characters.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>state</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The state of the
insertion order. Possible values: <code
class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>currency</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The currency
assigned to the insertion order. For a full list of available
currencies, use the read-only <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>. Note: Once the
insertion order has been created, the currency cannot be changed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The budget type of
the insertion order. For GDALI, the value must be set to <code
class="ph codeph">"flexible"</code> or <code
class="ph codeph">"impression"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">Budget intervals
enable date intervals to be attached to an insertion order.

Note:
<ul>
<li>The insertion order must not contain more than one <code
class="ph codeph">budget_intervals</code> array.</li>
<li>The insertion order must have unlimited budget (all budget fields in
the <code class="ph codeph">budget_intervals</code> array must be
omitted or set to <code class="ph codeph">null</code>).</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.start_date</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">timestamp<br />
(obj in array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The start date of
the budget interval. Format must be <code
class="ph codeph">YYYY-MM-DD hh:mm:ss</code> (<strong>Note:</strong>
<code class="ph codeph">hh:mm:ss</code> must be set to <code
class="ph codeph">00</code>). Typically this would be the current
date.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.end_date</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">timestamp<br />
(obj in array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The end date of the
budget interval. This value is optional.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.timezone</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">string<br />
(obj in array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">The timezone by
which budget and spend are counted. For a list of acceptable timezone
values, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>. The default value
is <code class="ph codeph">"EST5EDT"</code> or the advertiser's
timezone.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__1"><pre
class="pre codeblock"><code>profile_id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_tlw_dwh_5wb__entry__3">A profile is a
generic set of rules for targeting inventory.

Warning: Associating a profile_id
(e.g., frequency capping or setting additional targeting) on the
insertion order object may result in unexpected forecasting or delivery
for programmatic guaranteed (PGLI) and guaranteed delivery (GDALI) line
items. It is recommended not to use profile_id for insertion orders
intended for use with GDALIs.
</td>
</tr>
</tbody>
</table>

1.  Create a publisher insertion order JSON:

    ``` pre
    $ cat seamless_io_gdali
    {
    "insertion-order": {
        "name": "Test-Seamless-IO-GDALI",
        "advertiser_id": "3872575",
        "timezone": "UTC",
        "budget_type": "impression",
        "budget_intervals": [
          {
            "start_date": "2020-10-01 00:00:00",
            "timezone": "UTC"
          }
        ],
        "currency": "USD"
      }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/insertion-order" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/insertion-order</code></a> endpoint with this
    publisher insertion order JSON and an appropriate `advertiser_id`.

    ``` pre
    $ curl -b cookies -X POST -d @seamless_io_gdali.json 'https://api.appnexus.com/insertion-order?advertiser_id=3872575'
    ```

3.  Check the response body of your request (see **Example
    Response** below). If your request was successful, you’ll get
    a "`status`" of “`OK`” and you’ll see the updates you made.  
      **Example Response   
    **

    ``` pre
    {
        "response": {
            "status": "OK",
            "count": 1,
            "id": 4971824,
            "start_element": 0,
            "num_elements": 100,
            "insertion-order": {
                "id": 4971824,
                "name": "Test-Seamless-IO-GDALI",
                "code": null,
                "state": "active",
                "advertiser_id": 3872575,
                "profile_id": null,
                "member_id": 958,
                "start_date": null,
                "end_date": null,
                "remaining_days": null,
                "total_days": null,
                "last_modified": "2020-10-01 11:17:21",
                "timezone": "UTC",
                "currency": "USD",
                "comments": null,
                "budget_type": "impression",
                "billing_code": null,
                "viewability_standard_provider": "iab",
                "is_running_political_ads": false,
                "line_items": null,
                "labels": null,
                "broker_fees": null,
                "budget_intervals": [
                    {
                        "id": 9974698,
                        "object_id": 4971824,
                        "object_type": "insertion_order",
                        "start_date": "2020-10-01 00:00:00",
                        "end_date": null,
                        "timezone": "UTC",
                        "code": null,
                        "lifetime_budget": null,
                        "lifetime_budget_imps": null,
                        "daily_budget_imps": null,
                        "daily_budget": null,
                        "enable_pacing": false,
                        "lifetime_pacing": false,
                        "lifetime_pacing_pct": null
                    }
                ],
                "tpas_details": null,
                "political_content": null,
                "lifetime_pacing": null,
                "lifetime_budget": null,
                "lifetime_budget_imps": null,
                "enable_pacing": null,
                "lifetime_pacing_span": null,
                "allow_safety_pacing": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "lifetime_pacing_pct": null
            },
            "dbg_info": {
                "warnings": [
                ],
                "version": "1.0.56",
                "output_term": "insertion-order"
            }
        }
    }
    ```

4.  Note the insertion order ID in the response body so you can use it
    when you create the GDALI
    in <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__13"
    class="xref">Step 4 - Create a GDALI</a>. 



<div id="ID-0000273d__section_yph_fwh_5wb" >

## Profile

**Step 3 - Create a profile**

Next, create a GDALI profile for targeting. This step is optional, but
leaving the "profile_id" as null will result in "run of network"
targeting, which could have implications on forecasting and
reservations. Be sure to note the ID for this profile for later use. 

**JSON Fields for GDALI Profile**

See <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for a full list of
fields and more information.  

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__section_yph_fwh_5wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000273d__section_yph_fwh_5wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000273d__section_yph_fwh_5wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_yph_fwh_5wb__entry__1"><pre
class="pre codeblock"><code>placement_targets</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_yph_fwh_5wb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_yph_fwh_5wb__entry__3">The placement IDs
to be either excluded or included in the profile</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_yph_fwh_5wb__entry__1"><pre
class="pre codeblock"><code>size_targets</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_yph_fwh_5wb__entry__2">array of
objects</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_yph_fwh_5wb__entry__3">List of eligible
sizes to be included in the profile</td>
</tr>
</tbody>
</table>

1.  Create a GDALI profile JSON that includes `300x250` size targets, as
    well as placement targeting:

    ``` pre
    $ cat gdali_profile
    {
            "profile": {
                    "advertiser_id": 3872575,
                    "placement_targets": [{
                                    "id": 1357911,
                                    "action": "include"
                            },
                            {
                                    "id": 246810,
                                    "action": "include"
                            }
                    ],
                    "size_targets": [{
                            "width": 300,
                            "height": 250
                    }]
            }
    }
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/profile" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/profile</code></a> endpoint with this GDALI
    profile JSON and an appropriate `advertiser_id`.

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @gdali_profile 'https://api.appnexus.com/profile?advertiser_id=3872575'
    ```

3.  Check the response body of your request (see **Example
    Response** below). If your request was successful, you’ll get
    a "`status`" of “`OK`” and you’ll see the updates you made.  
       **Example Response   
    **

    ``` pre
    {
        "response": {
            "status": "OK",
            "count": 1,
            "id": 123353104,
            "start_element": 0,
            "num_elements": 100,
            "profile": {
                "id": 123397648,
                "code": null,
                "description": null,
                "country_action": "exclude",
                "region_action": "exclude",
                "city_action": "exclude",
                "browser_action": "exclude",
                "use_inventory_attribute_targets": false,
                "last_modified": "2020-10-02 12:09:22",
                "daypart_timezone": null,
                "dma_action": "exclude",
                "domain_action": "exclude",
                "domain_list_action": "exclude",
                "inventory_action": "exclude",
                "language_action": "exclude",
                "segment_boolean_operator": "and",
                "min_session_imps": null,
                "session_freq_type": "platform",
                "carrier_action": "exclude",
                "supply_type_action": "exclude",
                "device_type_action": "exclude",
                "screen_size_action": "exclude",
                "device_model_action": "exclude",
                "location_target_radius": null,
                "location_target_latitude": null,
                "location_target_longitude": null,
                "querystring_action": "exclude",
                "querystring_boolean_operator": "and",
                "is_expired": false,
                "non_audited_url_action": "include",
                "daypart_bitmap": null,
                "is_archived": false,
                "archived_on": null,
                "advertiser_id": 3872575,
                "publisher_id": null,
                "max_session_imps": null,
                "max_day_imps": null,
                "max_lifetime_imps": null,
                "max_page_imps": null,
                "min_minutes_per_imp": null,
                "venue_action": "exclude",
                "operating_system_action": "exclude",
                "require_cookie_for_freq_cap": true,
                "trust": "seller",
                "allow_unaudited": false,
                "is_template": false,
                "created_on": "2020-10-02 12:09:22",
                "operating_system_family_action": "exclude",
                "use_operating_system_extended_targeting": true,
                "mobile_app_instance_action_include": false,
                "mobile_app_instance_list_action_include": false,
                "inventory_prefer_direct": false,
                "deal_action_include": true,
                "exclude_unknown_seller_member_group": false,
                "ad_slot_position_action_include": false,
                "ad_slot_intro_bumper_action_include": true,
                "ad_slot_outro_bumper_action_include": true,
                "graph_id": null,
                "media_subtype_action_include": false,
                "ads_txt_authorized_only": false,
                "require_transparency_and_consent_framework_string": false,
                "postal_code_action_include": true,
                "inventory_url_whitelist_settings": {
                    "apply_to_rtb": true,
                    "apply_to_managed": true
                },
                "user_group_targets": null,
                "country_targets": null,
                "region_targets": null,
                "city_targets": null,
                "inventory_attribute_targets": null,
                "placement_type_targets": null,
                "age_targets": null,
                "daypart_targets": null,
                "browser_targets": null,
                "dma_targets": null,
                "domain_targets": null,
                "domain_list_targets": null,
                "language_targets": null,
                "size_targets": [
                    {
                        "width": 300,
                        "height": 250
                    }
                ],
                "zip_targets": null,
                "member_targets": null,
                "video_targets": {
                    "allow_unknown_playback_method": false,
                    "allow_unknown_context": false,
                    "allow_unknown_player_size": false
                },
                "engagement_rate_targets": null,
                "segment_group_targets": null,
                "carrier_targets": null,
                "supply_type_targets": null,
                "device_type_targets": null,
                "screen_size_targets": null,
                "device_model_targets": null,
                "querystring_targets": null,
                "gender_targets": null,
                "intended_audience_targets": null,
                "inventory_network_resold_targets": null,
                "operating_system_targets": null,
                "operating_system_family_targets": null,
                "position_targets": null,
                "site_targets": null,
                "venue_targets": null,
                "operating_system_extended_targets": null,
                "postal_code_targets": null,
                "postal_code_list_targets": null,
                "seller_member_group_targets": null,
                "cross_device": null,
                "key_value_targets": null,
                "media_subtype_targets": null,
                "content_category_targets": null,
                "deal_targets": null,
                "placement_targets": [
                    {
                        "id": 1357911,
                        "action": "include",
                        "name": "Placement 1 Name",
                        "deleted": false,
                        "site_id": 123456,
                        "site_name": "Site 1 Name",
                        "publisher_id": 1234567,
                        "publisher_name": "Publisher 1 Name"
                    },
                    {
                        "id": 246810,
                        "action": "include",
                        "name": "Placement 2 Name",
                        "deleted": false,
                        "site_id": 123456,
                        "site_name": "Site 1 Name",
                        "publisher_id": 1234567,
                        "publisher_name": "Publisher 1 Name"
                    }
                ],
                "platform_content_category_targets": null,
                "platform_placement_targets": null,
                "platform_publisher_targets": null,
                "publisher_targets": null,
                "ip_range_list_targets": null,
                "mobile_app_instance_targets": null,
                "mobile_app_instance_list_targets": null,
                "ad_slot_position_targets": null,
                "inventory_url_list_targets": null,
                "deal_list_targets": null,
                "max_hour_imps": null,
                "max_week_imps": null,
                "max_month_imps": null
            },
            "dbg_info": {
                "warnings": [
                ],
                "version": "1.0.56",
                "output_term": "profile"
            }
        }
    }
    ```

4.  Note the profile ID in the response body so you can use it when you
    create the GDALI
    in <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__13"
    class="xref">Step 4 - Create a GDALI</a>. 



<div id="ID-0000273d__section_qps_gwh_5wb" >

## Line Item

**Step 4 - Create a GDALI**

Finally, you'll need to create the GDALI. In the example below, we will
be defining a GDALI with impression delivery goal booking revenue on a
CPM basis.  
  
JSON Fields for GDALI Line Item

See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html"
class="xref" target="_blank">Line Item Service - GDALI</a> for more
information.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__section_qps_gwh_5wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000273d__section_qps_gwh_5wb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000273d__section_qps_gwh_5wb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">Name of the
GDALI.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>state</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">State of the line
item. Possible values: <code class="ph codeph">"active"</code> or <code
class="ph codeph">"inactive"</code>.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>line_item_subtype</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The line item
subtype. For GDALIs, the value for this field must be one of the
following:
<ul>
<li><code class="ph codeph">"gd_buying_imp"</code> - guaranteed delivery
line item with impression delivery goal. Eligible only for transacting
on managed supply.</li>
<li><code class="ph codeph">"gd_buying_exclusive"</code> - guaranteed
delivery line item with exclusive delivery goal (also referred to as
"share of voice" or "SOV"). Eligible only for transacting on managed
supply.</li>
</ul>
<p>See <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html"
class="xref" target="_blank">Line Item Service - GDALI</a> for more
information.</p>

Note: <code
class="ph codeph">The line_item_subtype</code> field (and associated
fields/arrays) cannot be changed after the line item is created.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_scheduling_settings.underspend_catchup_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">enum<br />
(prop in obj)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The <code
class="ph codeph">underspend_catchup_type</code> field dictates how
Xandr's system deals with an underdelivered
daily budget. Use the <code class="ph codeph">"evenly"</code> value if
you'd like the unspent portions of your budget to be spent evenly
throughout the rest of flight, or <code
class="ph codeph">"ASAP"</code> if you'd like the unspent budget to be
spent as soon as possible.
<p>Possible values: <code class="ph codeph">"evenly"</code> or <code
class="ph codeph">"ASAP"</code> (default).</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>priority</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The line item's
priority is used to weight the line item against other direct line items
within your account.

Note: The Monetize UI sets the default
value for guaranteed delivery line item with impression delivery goal to
14, and 19 for <code class="ph codeph">exclusive</code>. The default
value for all line items created via the API is 5.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>ad_types</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">array of
strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The type of
creative used for this line item.  Possible values: 
<ul>
<li>"banner"</li>
<li>"video"  (includes audio types as well)</li>
<li>"native"</li>
</ul>
<p>One or more values are supported. This value determines how auction
items are tracked for the line item's buying strategy, paying strategy,
forecasting, creative association, and targeting options. </p>

Note: All creatives associated to a
line item must have the same ad type, which should match the <code
class="ph codeph">ad_types</code> selected here.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>timezone</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The timezone by
which budget and spend are counted. See <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a> for details and accepted
values.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>currency</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">string (3)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The currency used
for this line item. For a list of supported currencies, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">Currency Service</a>.

Note: Once the line item has been
created, the currency cannot be changed.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>revenue_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The way the
advertiser has agreed to pay you (also called Booked Revenue). Possible
values are:
<ul>
<li><code class="ph codeph">"cpm"</code> - Select this value if you are
being paid flat payment for 1000 impressions (CPM).
<ul>
<li>For Viewable CPM, set <code class="ph codeph">revenue_type</code> to
"cpm", the <code class="ph codeph">revenue_value</code> field to the
Viewable CPM value, the <code
class="ph codeph">revenue_auction_event_type</code> field to <code
class="ph codeph">"view"</code>  the <code
class="ph codeph">revenue_auction_event_type_code</code> field to <code
class="ph codeph">"view_display_50pv1s_an"</code> and <code
class="ph codeph">"revenue_auction_type_id"</code> to <code
class="ph codeph">2</code>. Only measured viewable impressions will be
counted, according to the Xandr viewability
measurement, using the IAB definition.</li>
</ul></li>
<li>"flat_fee" - A flat payment that the advertiser will pay you on a
specified allocation date. That date can be daily or at the end of the
flight. If you pay managed publishers a percentage of your revenue,
their share will be paid out on the allocation date, after which the
line item will no longer be editable. Note that the flat fee will not be
booked on the allocation date unless the line item has served at least
one impression. If you define a <code
class="ph codeph">revenue_type</code> of <code
class="ph codeph">flat_fee</code> you must specify a value for <code
class="ph codeph">flat_fee_type</code>.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>flat_fee_type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">Flat fees can be
paid out daily or on the flight end date. Available values are:
<ul>
<li>one_time: The fee will be paid on the final allocation date. The
associated <code class="ph codeph">revenue_value</code> is the value to
be paid on that date. The flight cannot be longer than one month.</li>
<li>daily: The fee will be paid daily. The associated <code
class="ph codeph">revenue_value</code> is the daily fee, not the fee for
the entire flight.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>revenue_value</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The amount paid to
the network by the advertiser.

Note: Depending on what you set
the <code class="ph codeph">revenue_type</code> field to, this field
must be set to the actual value of that revenue type (e.g. <code
class="ph codeph">flat_fee</code> or <code
class="ph codeph">cpm</code>).
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">Budget intervals
enable date intervals and budgets to be attached to a line items.

Note: The GDALI must not contain more
than one <code class="ph codeph">budget_intervals</code> array.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.timezone</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">string<br />
(obj in array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The timezone by
which budget and spend are counted. For a list of acceptable timezone
values, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref" target="_blank">API Timezones</a>. The default value
is <code class="ph codeph">"EST5EDT"</code> or the advertiser's
timezone.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.start_date</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">timestamp<br />
(obj in array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The start date of
the budget interval. Format must be <code
class="ph codeph">YYYY-MM-DD hh:mm:ss</code> (<strong>Note:</strong>
<code class="ph codeph">hh:mm:ss</code> must be set to <code
class="ph codeph">00</code>). Typically, this would be the current
date.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.end_date</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">timestamp<br />
(obj in array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The end date of the
budget interval. Format must be YYYY-MM-DD hh:mm:ss (hh:mm:ss should be
set to hh:59:59). Must not be <code class="ph codeph">null</code> for
GDALIs. For delivery to work best, your budget intervals should have a
duration of at least 4 hours.<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.lifetime_budget_imps</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">double (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The lifetime budget
in impressions for the budget interval.

Note: When a line item is enabled for
roadblocks, only master creative imps will count against <code
class="ph codeph">lifetime_budget_imps</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.lifetime_pacing</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">boolean (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">If <code
class="ph codeph">true</code>, the line item will attempt to pace the
lifetime budget evenly over the budget interval. GDALIs must be defined
as <code class="ph codeph">true</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>budget_intervals.lifetime_pacing_pct</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">double (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">A double integer
between (and including) 50 and 150, used to set pacing throughout a
budget interval. Possible values can be any double between (and
including) 50 and 150 on the following scale:
<ul>
<li><code class="ph codeph">50</code> - Pace behind schedule</li>
<li><code class="ph codeph">100</code> - Pace evenly</li>
<li><code class="ph codeph">150</code> - Pace ahead of schedule</li>
</ul>

Note: It's recommended to set this
field to <code class="ph codeph">105</code>. By default, the value will
be set to <code class="ph codeph">100</code>.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>delivery_goals</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The <code
class="ph codeph">delivery_goals</code> array contains information about
the delivery goal attached to the GDALI. GDALIs will attempt to deliver
against impression or percentage goals.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>delivery_goals.type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">string (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The type of
delivery goal. Allowed values are:
<ul>
<li><code class="ph codeph">"impressions"</code> : GDALIs with
impression goals will attempt to serve the specified number of
impressions evenly across their flight dates. If the delivery goal <code
class="ph codeph">type</code> is <code
class="ph codeph">"impressions"</code>, lifetime budget must be set at
the line item level.</li>
<li><code class="ph codeph">"percentage"</code> : Currently, the
percentage goal is only available for "exclusive" GDALIs. Note that if
the delivery goal <code class="ph codeph">type</code> is <code
class="ph codeph">"percentage"</code>, the line item cannot have a
budget.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>delivery_goals.percentage</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">int (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">If the type of
delivery goal is <code class="ph codeph">"percentage"</code>, this is
the actual percentage at which the GDALI will serve. Allowed values are
integers 0 &lt;= n &lt;= 100. If the delivery goal <code
class="ph codeph">type</code> is <code
class="ph codeph">"impressions"</code>, this field must be <code
class="ph codeph">null</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>delivery_goals.disallow_non_guaranteed</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">boolean (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">When <code
class="ph codeph">true</code>, this line item will always serve over
non-guaranteed line items participating in the same (managed) auction.

Note: Setting <code
class="ph codeph">disallow_non_guaranteed</code> to <code
class="ph codeph">true</code> may impact competition in the auction,
which could impact yield.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>delivery_goals.reserved</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">boolean (obj in
array)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">When <code
class="ph codeph">true</code>, this line item has inventory "reserved"
for it; in other words, the line item is set to purchase a guaranteed
number or percentage of impressions on a seller's inventory during its
flight. Note that you will not be able to set a GDALI's <code
class="ph codeph">state</code> to <code
class="ph codeph">"active"</code> unless this field is set to <code
class="ph codeph">true</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>roadblock</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The <code
class="ph codeph">roadblock</code> object contains information to enable
the delivery of two or more creatives to the page in unison. Roadblocks
can be applied only for managed inventory and can't be enabled when
you're working with third-party inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>roadblock.type</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The type of
roadblock. For GDALIs, this value must be either:
<ul>
<li><code class="ph codeph">null</code>: (default) There is no
roadblocking set at the line item level.</li>
<li><code class="ph codeph">partial_roadblock</code>: Enables
roadblocking on the line item. The line item serves when at least one
creative of each size fits an eligible ad slot.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>roadblock.master_width</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The width of the
master creative. This value is required when roadblock type equals <code
class="ph codeph">partial_roadblock</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>roadblock.master_height</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">The height of the
master creative. This value is required when roadblock type equals <code
class="ph codeph">partial_roadblock</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__1"><pre
class="pre codeblock"><code>profile_id</code></pre></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000273d__section_qps_gwh_5wb__entry__3">You may associate
an optional <code class="ph codeph">profile_id</code> with this line
item. A profile is a generic set of rules for targeting inventory. See
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> for details.<br />
</td>
</tr>
</tbody>
</table>

1.  Create a GDALI JSON (you'll need an existing advertiser ID and
    insertion order ID from
    <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__ID-00002801"
    class="xref">Step 2 - Create a seamless insertion order</a>.

    ``` pre
    $ cat gdali_imp_cpm
    {
    "line-item": {
        "name": "Test-GDALI",
        "advertiser_id": "3872575",
        "insertion_orders": [{"id": 4971824}],
        "line_item_subtype": "gd_buying_imp",
        "state": "inactive",
        "priority": 14,
        "profile_id": 123397648,
        "ad_types": [
          "banner"
        ],
        "timezone": "UTC",
        "budget_intervals": [
          {
            "start_date": "2020-10-01 00:00:00",
            "end_date": "2020-10-31 23:59:59",
            "timezone": "UTC",
            "lifetime_budget_imps": 150000,
            "lifetime_pacing": true,
            "lifetime_pacing_pct": 105
          }
        ],
        "currency": "USD",
        "revenue_type": "cpm",
        "revenue_value": 1,
        "delivery_goal": {
          "type": "impressions",
          "disallow_non_guaranteed": false,
          "reserved": true
        }
      }
    }   
    ```

2.  Make a POST request to
    the <a href="https://api.appnexus.com/line-item" class="xref"
    target="_blank">https://api.<span
    class="ph">appnexus.com/line-item</a> endpoint using this
    GDALI JSON and an appropriate `advertiser_id`.

    ``` pre
    $ curl -b cookies -X POST -d @gdali_imp_cpm 'https://api.appnexus.com/line-item?advertiser_id=3872575'
    ```

3.  Check the response body of your request (see **Example
    Response** below). If your request was successful, you’ll get
    a "`status`" of “`OK`” and you’ll see the updates you made.  
      **Example Response**   

    ``` pre
    {
        "response": {
            "status": "OK",
            "count": 1,
            "id": 12977272,
            "start_element": 0,
            "num_elements": 100,
            "line-item": {
                "id": 12977272,
                "code": null,
                "name": "Test-GDALI",
                "advertiser_id": 3872575,
                "state": "inactive",
                "start_date": null,
                "end_date": null,
                "timezone": "UTC",
                "discrepancy_pct": 0,
                "publishers_allowed": "all",
                "revenue_value": 1,
                "revenue_type": "cpm",
                "goal_type": "none",
                "goal_value": null,
                "last_modified": "2020-10-05 18:36:18",
                "click_url": null,
                "currency": "USD",
                "require_cookie_for_tracking": true,
                "profile_id": 123397648,
                "member_id": 958,
                "flat_fee_type": null,
                "comments": null,
                "remaining_days": null,
                "total_days": null,
                "manage_creative": true,
                "budget_set_per_flight": true,
                "creative_distribution_type": null,
                "line_item_type": "standard_v2",
                "bid_object_type": "creative",
                "prefer_delivery_over_performance": false,
                "priority": 14,
                "enable_v8": true,
                "viewability_vendor": "appnexus",
                "is_archived": false,
                "archived_on": null,
                "delivery_model_type": "guaranteed",
                "waive_deductions_when_disallowed": false,
                "line_item_subtype": "gd_buying_imp",
                "advertiser": {
                    "id": 3872575,
                    "name": "GDALI Testing Advertiser"
                },
                "flat_fee": null,
                "supply_strategies": {
                    "managed": true,
                    "rtb": false,
                    "deals": false,
                    "programmatic_guaranteed": false
                },
                "deals": null,
                "delivery_goal": {
                    "id": 2247829,
                    "type": "impressions",
                    "disallow_non_guaranteed": false,
                    "percentage": null,
                    "reserved": true,
                    "guaranteed_delivery_version": null
                },
                "labels": null,
                "broker_fees": null,
                "pixels": null,
                "insertion_orders": [
                    {
                        "id": 4971824,
                        "state": "active",
                        "code": null,
                        "name": "Test-Seamless-IO-GDALI",
                        "advertiser_id": 3872575,
                        "start_date": null,
                        "end_date": null,
                        "timezone": "UTC",
                        "last_modified": "2020-10-02 11:17:21",
                        "currency": "USD",
                        "budget_intervals": [
                            {
                                "id": 9974698,
                                "object_id": 4971824,
                                "object_type": "insertion_order",
                                "start_date": "2020-10-01 00:00:00",
                                "end_date": null,
                                "timezone": "UTC",
                                "code": null,
                                "lifetime_budget": null,
                                "lifetime_budget_imps": null,
                                "daily_budget_imps": null,
                                "daily_budget": null,
                                "enable_pacing": false,
                                "lifetime_pacing": false,
                                "lifetime_pacing_pct": null
                            }
                        ],
                        "political_content": null
                    }
                ],
                "goal_pixels": null,
                "imptrackers": null,
                "clicktrackers": null,
                "campaigns": null,
                "valuation": null,
                "creatives": null,
                "budget_intervals": [
                    {
                        "id": 10015349,
                        "object_id": 12977272,
                        "object_type": "campaign_group",
                        "start_date": "2020-10-01 00:00:00",
                        "end_date": "2020-10-31 23:59:59",
                        "timezone": "UTC",
                        "code": null,
                        "parent_interval_id": null,
                        "creatives": null,
                        "lifetime_budget": null,
                        "lifetime_budget_imps": 150000,
                        "lifetime_pacing": true,
                        "enable_pacing": true,
                        "lifetime_pacing_pct": 105
                    }
                ],
                "custom_models": null,
                "inventory_discovery": null,
                "incrementality": null,
                "auction_event": null,
                "custom_optimization_note": null,
                "roadblock": null,
                "budget_scheduling_settings": null,
                "ad_types": [
                    "banner"
                ],
                "user_info": null,
                "partner_fees": null,
                "product": null,
                "in_demo_measurement": null,
                "lifetime_budget": null,
                "lifetime_budget_imps": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "enable_pacing": null,
                "allow_safety_pacing": null,
                "lifetime_pacing": null,
                "lifetime_pacing_span": null,
                "lifetime_pacing_pct": null,
                "inventory_type": "direct"
            },
            "dbg_info": {
                "warnings": [
                ],
                "version": "1.0.56",
                "output_term": "line-item"
            }
        }
    } 
    ```

4.  Note the line item ID in the response body so you can identify this
    GDALI later to change its `state` (`active` or `inactive`) or modify
    it.



<div id="ID-0000273d__section_bbj_3wh_5wb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-getting-started.html"
  class="xref" target="_blank">API Getting Started</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>






