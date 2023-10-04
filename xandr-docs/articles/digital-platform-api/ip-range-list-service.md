---
Title : IP Range List Service
Description : The IP Range List Service is used to manage lists of IP ranges that can
be used for targeting by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
---


# IP Range List Service



The IP Range List Service is used to manage lists of IP ranges that can
be used for targeting by the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>. The functionality
provided by this service is similar to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/domain-list-service.html"
class="xref" target="_blank">Domain List Service</a>.

<div id="ip-range-list-service__section_lss_jdz_5wb"
>

## Intended Use Case

The intended use case for this service is for mobile buyers who would
like to serve ads to users where direct client billing is enabled, i.e.,
purchases are charged to the carrier and added to the mobile bill. In
this scenario, campaigns target the IP ranges of gateways for cell
towers that allow direct carrier billing.

To actually target the IP range lists you create and manage here, add
them to the `ip_range_list_targets` field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.

<div id="ip-range-list-service__note_txq_4dz_5wb"


Note: Not Designed for Blocking
Inventory (Blocklists)

This service isn't designed for blocking IPs (like blocklists). See the
<a
href="ip-range-list-service.html#ip-range-list-service__ip-range-list-service-limitations"
class="xref">Limitations</a> below for more details.





<div id="ip-range-list-service__section_cwk_5dz_5wb"
>

## Limitations

The following limitations exist for the IP Range List Service:

- You can create up to 100 IP range lists.
- A single "include" IP range list (`include` set to `true`) cannot
  contain more than 3500 ranges.
- A single "exclude" IP range list (`include` set to `false`) cannot
  contain more than 10 ranges.

In addition, the following limitations exist on the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a> when targeting IP Range
Lists:

- Per profile, you can target up to 10 "include" IP range lists
  (`include` set to `true`) and no more than 1 "exclude" IP range list
  (`include` set to `false`). The excluded IP ranges must be a subset of
  the included IP ranges.



<div id="ip-range-list-service__section_qmt_52z_5wb"
>

## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ip-range-list-service__section_qmt_52z_5wb__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th id="ip-range-list-service__section_qmt_52z_5wb__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th id="ip-range-list-service__section_qmt_52z_5wb__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__2"><a
href="https://api.appnexus.com/ip-range-list" class="xref"
target="_blank">https://api.appnexus.com/ip-range-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__3">View all
of your IP range lists.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__2"><a
href="https://api.appnexus.com/ip-range-list?id=LIST_ID" class="xref"
target="_blank">https://api.appnexus.com/ip-range-list?id=LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__3">View a
specific IP range list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__2"><a
href="https://api.appnexus.com/ip-range-list/meta" class="xref"
target="_blank">https://api.appnexus.com/ip-range-list/meta</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__3">Find out
which fields you can filter and sort by.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__2"><a
href="https://api.appnexus.com/ip-range-list" class="xref"
target="_blank">https://api.appnexus.com/ip-range-list</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__3">Add a new
IP range list.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__2"><a
href="https://api.appnexus.com/ip-range-list?id=LIST_ID" class="xref"
target="_blank">https://api.appnexus.com/ip-range-list?id=LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__3">Modify an
existing IP range list.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__2"><a
href="https://api.appnexus.com/ip-range-list?id=LIST_ID" class="xref"
target="_blank">https://api.appnexus.com/ip-range-list?id=LIST_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_qmt_52z_5wb__entry__3">Delete an
IP range list.</td>
</tr>
</tbody>
</table>



<div id="ip-range-list-service__section_tll_1fz_5wb"
>

## JSON Fields



<table
id="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">description</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>An
optional description of this IP range list.</p>
<strong>Default:</strong> <code class="ph codeph">null</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
unique ID of this IP range list.</p>
<strong>Required On:</strong> <code class="ph codeph">PUT</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">include</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">boolean</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>Whether
to include the IP ranges in this list in campaign targeting using the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.</p>
<strong>Default:</strong> <code class="ph codeph">false</code></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">ip_ranges</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>This
array holds ranges of IP addresses. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/ip-range-list-service.html#IPRangeListService-IPRanges"
class="xref" target="_blank">IP Ranges</a> table below for details on
the object fields.</p>
<strong>Required On:</strong> <code
class="ph codeph">POST and PUT</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">date</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>When
this object was last updated.</p>
<strong>Read Only</strong></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
name of the IP range list.</p>
<strong>Required On:</strong> <code
class="ph codeph">POST and PUT</code></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">num_ip_ranges</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
current number of IP ranges in this list.</p>
<strong>Read Only</strong></td>
</tr>
</tbody>
</table>

**IP Ranges**





Each object in the `ip_ranges` array contains the following fields.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ip-range-list-service__section_tll_1fz_5wb__entry__25"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th id="ip-range-list-service__section_tll_1fz_5wb__entry__26"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th id="ip-range-list-service__section_tll_1fz_5wb__entry__27"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_tll_1fz_5wb__entry__25"><code
class="ph codeph">from_ip</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_tll_1fz_5wb__entry__26">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_tll_1fz_5wb__entry__27"><p>The
starting IP address. If no following <code
class="ph codeph">to_ip</code> field is included, this is treated as the
only address to include or exclude. This string must be in valid IPV4
address format, i.e., "198.2.1.1".</p>
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_tll_1fz_5wb__entry__25"><code
class="ph codeph">to_ip</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_tll_1fz_5wb__entry__26">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ip-range-list-service__section_tll_1fz_5wb__entry__27">The
(optional) ending IP address. If this field is not included, the IP
address in the <code class="ph codeph">from_ip</code> field will be used
alone. If this field is included, the addresses between the fields form
a range. Ranges must be listed in <strong>ascending</strong> order,
e.g., <code
class="ph codeph">{"from_ip":"192.168.2.1", "to_ip":"192.168.2.100"}.</code></td>
</tr>
</tbody>
</table>





<div id="ip-range-list-service__section_fbl_yfz_5wb"
>

## Examples



**View an IP range list**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/ip-range-list?id=2'

{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "ip-range-list": {
            "id": 2,
            "name": "Sky IPs 1",
            "description": "Targeted Sky IP Addresses",
            "include": true,
            "last_modified": "2014-02-19 15:04:36",
            "ip_ranges": [
        {
            "from_ip": "2.120.0.0",
                    "to_ip": "2.120.0.0"
            },
            {
                "from_ip": "2.216.0.0",
                    "to_ip": "2.216.0.0"
            },
                {
                    "from_ip": "5.64.0.0",
                    "to_ip": "5.64.0.0"
            },
                {
                    "from_ip": "90.192.0.0",
                    "to_ip": "90.192.0.0"
            },
                {
                    "from_ip": "94.0.0.0",
                    "to_ip": "94.0.0.0"
                },
                {
                    "from_ip": "151.224.0.0",
                    "to_ip": "151.224.0.0"
                },
                {
                    "from_ip": "176.24.0.0",
                    "to_ip": "176.24.0.0"
                },
                {
                    "from_ip": "176.248.0.0",
                    "to_ip": "176.248.0.0"
                }
            ],
            "num_ip_ranges": 8
    }
}
```





**Create an IP range list**

``` pre
$ cat ip-range-list.json

{
    "ip-range-list": {
        "ip_ranges": [
            {
                "to_ip": "168.100.1.105",
                "from_ip": "168.100.1.100"
            },
            {
                "from_ip": "168.109.109.100"
            }
        ],
        "include": true,
        "description": "Yet another nice little IP range list for testing.",
        "name": "Rich's Second Ever IP range list"
    }
}
 
$ curl -b cookies -X POST -d @ip-range-list.json 'https://api.appnexus.com/ip-range-list'
 
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": 3,
        "start_element": 0,
        "num_elements": 100,
        "ip-range-list": {
            "id": 3,
            "name": "Rich's Second Ever IP range list",
            "description": "Yet another nice little IP range list for testing.",
            "include": true,
            "last_modified": "2014-02-25 20:21:12",
            "ip_ranges": [
            {
                    "from_ip": "168.100.1.100",
                    "to_ip": "168.100.1.105"
            },
            {
                    "from_ip": "168.109.109.100",
                    "to_ip": "168.109.109.100"
            }
            ],
            "num_ip_ranges": 2
        }
    }
}
```





**Update an IP range list**

``` pre
$ cat update-ip-range-list.json

{
    "ip-range-list": {
        "ip_ranges": [
            {
                "to_ip": "168.100.1.105",
                "from_ip": "168.100.1.100"
            },
            {
                "to_ip": "192.168.1.100",
                "from_ip": "192.168.1.1"
            },
            {
                "from_ip": "168.109.109.100"
            }
        ]
}
 
$ curl -b cookies -X PUT -d @update-ip-range-list.json 'https://api.appnexus.com/ip-range-list?id=3'
 
{
  "response": 
    "status": "OK",
    "count": 1,
    "id": "3",
    "start_element": 0,
    "num_elements": 100,
    "ip-range-list": {
      "id": 3,
      "name": "Rich's First IP range list, now with updates!",
      "description": "Just a nice little IP range list for testing. Recently updated.",
      "include": true,
      "last_modified": "2014-12-10 18:49:00",
      "ip_ranges": [
        {
          "from_ip": "168.100.1.100",
          "to_ip": "168.100.1.105"
        },
        {
          "from_ip": "168.109.109.100",
          "to_ip": "168.109.109.100"
        },
        {
          "from_ip": "192.168.1.1",
          "to_ip": "192.168.1.100"
        }
      ],
      "num_ip_ranges": 3
    }
  }
}
```





**Add an IP range list to your profile**

``` pre
$ cat profile-update.json
 
{
    "profile": {
        "ip_range_list_targets": [
            {
                "id":5
            }
        ]
    }
}
 
$ curl -b cookies -X PUT -d @profile-update.json 'https://api.appnexus.com/profile?id=294641&advertiser_id=41884'
 
{
    "response":{
         "num_elements":100,
         "start_element":0,
         "id":"294641",
         "count":1,
         "status":"OK"
         "profile":{
             "exelate_targets":null,
             "segment_targets":null,
             "publisher_targets":null,
             "platform_publisher_targets":null,
             "platform_placement_targets":null,
             "platform_content_category_targets":null,
             "placement_targets":null,
             "deal_targets":null,
             "content_category_targets":null,
             "mobile_app_instance_list_targets":null,
             "mobile_app_instance_targets":null,
             "ip_range_list_targets": [
                {
                    "id": 5
                    "include": false,
                    "description": "Test IP range list",
                    "name": "Test IP range list",
                }
            ],
             "operating_system_extended_targets":null,
             "venue_targets":null,
             "site_targets":null,
             "position_targets":null,
             "operating_system_family_targets":null,
             "operating_system_targets":null,
             "ip_targets":null,
             "inventory_network_resold_targets":null,
             "inventory_group_targets":null,
             "intended_audience_targets":null,
             "gender_targets":null,
             "querystring_targets":null,
             "device_model_targets":null,
             "screen_size_targets":null,
             "device_type_targets":null,
             "supply_type_targets":null,
             "carrier_targets":null,
             "segment_group_targets":null,
             "member_targets":null,
             "postal_code_targets":null,
             "size_targets":null,
             "language_targets":null,
             "domain_list_targets":null,
             "domain_targets":null,
             "dma_targets":null,
             "browser_family_targets":null,
             "browser_targets":null,
             "daypart_targets":null,
             "age_targets":null,
             "inventory_attribute_targets":null,
             "inventory_source_targets":null,
             "inv_class_targets":null,
             "city_targets":null,
             "region_targets":null,
             "country_targets":null,
             "user_group_targets":null,
             "mobile_app_instance_list_action_include":false,
             "mobile_app_instance_action_include":false,
             "use_operating_system_extended_targeting":false,
             "operating_system_family_action":"exclude",
             "created_on":"2013-09-16 17:22:30",
             "is_template":false,
             "allow_unaudited":false,
             "trust":"seller",
             "require_cookie_for_freq_cap":true,
             "operating_system_action":"exclude",
             "venue_action":"exclude",
             "min_minutes_per_imp":null,
             "max_page_imps":null,
             "max_lifetime_imps":null,
             "max_day_imps":null,
             "max_session_imps":null,
             "publisher_id":null,
             "advertiser_id":41884,
             "daypart_bitmap":null,
             "non_audited_url_action":"include",
             "is_expired":false,
             "querystring_boolean_operator":"and",
             "querystring_action":"exclude",
             "location_target_longitude":null,
             "location_target_latitude":null,
             "location_target_radius":null,
             "device_model_action":"exclude",
             "screen_size_action":"exclude",
             "device_type_action":"exclude",
             "supply_type_action":"exclude",
             "carrier_action":"exclude",
             "session_freq_type":"platform",
             "min_session_imps":null,
             "segment_boolean_operator":"and",
             "language_action":"exclude",
             "inventory_action":"exclude",
             "domain_list_action":"exclude",
             "domain_action":"exclude",
             "dma_action":"exclude",
             "daypart_timezone":null,
             "last_modified":"2014-02-05 19:52:32",
             "use_inventory_attribute_targets":false,
             "browser_action":"exclude",
             "city_action":"exclude",
             "region_action":"exclude",
             "country_action":"exclude",
             "description":null,
             "code":null,
             "id":294641
        }
    }
}
```





<div id="ip-range-list-service__section_btc_ggz_5wb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>








