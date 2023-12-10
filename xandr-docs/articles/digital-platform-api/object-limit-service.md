---
Title : Object Limit Service
Description : Xandr limits the number of line items,
ms.date: 10/28/2023
ms.custom: digital-platform-api
campaigns, creatives, publishers, sites, placements, packages, deals,
mediated networks, and mediated bids that you can have on the platform.
---


# Object Limit Service



Xandr limits the number of line items,
campaigns, creatives, publishers, sites, placements, packages, deals,
mediated networks, and mediated bids that you can have on the platform.
In addition, Xandr limits the number of domains
that can be used in a single domain list, the number of certain targets
that can be used in a single profile, and the number of content
categories that can be assigned to a single placement. For all object
types except creatives, both active and inactive objects are counted
against the limit. For creatives, only non-expired objects are counted
against the limit.

The Object Limit Service allows you to view these limits and proactively
monitor your current usage.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002480__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002480__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002480__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__2"><a
href="https://api.appnexus.com/object-limit" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/object-limit</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__3">View
your limits and current usage for all object types</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__2"><a
href="https://api.appnexus.com/object-limit?object_type=OBJECT_TYPE"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/object-limit?object_type=OBJECT_TYPE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__3">View
your limit and current usage for a specific object type

<b>Note:</b>
<p>The following object types are available: <code
class="ph codeph">campaign</code>, <code
class="ph codeph">profile</code>, <code
class="ph codeph">domain_list</code>, <code
class="ph codeph">creative</code>, <code
class="ph codeph">publisher</code>, <code class="ph codeph">site</code>,
<code class="ph codeph">placement</code>, <code
class="ph codeph">package</code>, <code class="ph codeph">deal</code>,
<code class="ph codeph">mediated_network</code>, <code
class="ph codeph">mediated_bid</code>. Note that to retrieve your limit
for line items, you must use <code
class="ph codeph">campaign_group</code>.</p>
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002480__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002480__entry__11"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-00002480__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__10"><code
class="ph codeph">count_active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__12">The
current number of active objects. For creatives, this count does not
include expired objects.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__10"><code
class="ph codeph">count_inactive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__12">The
current number of inactive objects, not including deleted objects. For
creatives, this count does not include expired objects.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__10"><code
class="ph codeph">count_total</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__12">The
current total number of active and inactive objects. For creatives, this
count does not include expired objects.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__10"><code
class="ph codeph">limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__12">The
maximum number of objects that the member is allowed. For all object
types except "creative", both active and inactive objects are counted
agains the limit. For creatives, only <u>non-expired</u> objects are
counted against the limit.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__10"><code
class="ph codeph">mapping_limits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__11">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__12">This field is populated only for the
"profile", "domain_list", and "placement" object types. It lists the
limits for objects within each profile and domain list, for example, the
maximum number of segment targets you can use in a single profile or the
maximum number of domains you can use in a single domain list. For
placements, it lists the maximum number of content categories that can
be applied to a placement See <a
href="object-limit-service.md#ID-00002480__mapping"
class="xref">Mapping Limits</a> below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__10"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__entry__11">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002480__entry__12">The
type of object. Possible values: "line_item", "campaign", "profile",
"domain_list", "creative, "publisher", "site", "placement", "package",
"deal", "mediated_network", "mediated bid".<br />
&#10;
<b>Note:</b>
<p>For "profile" and "domain_list", the <code
class="ph codeph">limit</code>, <code
class="ph codeph">count_active</code>, <code
class="ph codeph">count_inactive</code>, and <code
class="ph codeph">count_total</code> fields will show a value of null,
as Xandr does not limit the number of profiles
and domain lists that you can have. Xandr does
limit the number of objects within each profile or domain list, however.
These limits will be shown in the <code
class="ph codeph">mapping_limits</code> field.</p>
</td>
</tr>
</tbody>
</table>




## Mapping Limits

This part of the JSON response is populated only for the "profile",
"domain_list", and "placement" object types. 

**For Profiles**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002480__mapping__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002480__mapping__entry__2"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-00002480__mapping__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">content_category_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of custom
content categories that you can target in a single profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">inventory_source_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3"><strong>Deprecated</strong>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">placement_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of
placements that you can target in a single profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">platform_content_category_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of
platform-defined content categories that you can target in a single
profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">postal_code_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of postal
codes that you can target in a single profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">publisher_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of
publishers that you can target in a single profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">segment_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of segments
that you can target in a single profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">segment_group_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of segment
groups that you can target in a single profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__1"><code
class="ph codeph">site_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__3">The maximum number of sites
that you can target in a single profile.</td>
</tr>
</tbody>
</table>

**For Domain Lists**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002480__mapping__entry__31"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002480__mapping__entry__32"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-00002480__mapping__entry__33"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__31"><code
class="ph codeph">domains</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__33">The maximum number of domains
that you can include or exclude in a single domain list.</td>
</tr>
</tbody>
</table>

**For Placements**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002480__mapping__entry__37"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002480__mapping__entry__38"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-00002480__mapping__entry__39"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__37"><code
class="ph codeph">content_categories</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__38">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002480__mapping__entry__39">The maximum number of content
categories that you can apply to a single placement.</td>
</tr>
</tbody>
</table>





## Examples

**View your limits and current usage for all object types**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/object-limit'
{
    "response": {
        "status": "OK",
        "count": 21,
        "start_element": 0,
        "num_elements": 100,
        "object-limits": [
            {
                "object_type": "site",
                "limit": 10000,
                "mappings": [
                ],
                "count_active": 8,
                "count_inactive": 0,
                "count_total": 8
            },
            {
                "object_type": "publisher",
                "limit": 3000,
                "mappings": [
                ],
                "count_active": 8,
                "count_inactive": 0,
                "count_total": 8
            },
            {
                "object_type": "profile",
                "limit": null,
                "mappings": {
                    "site_targets": 100,
                    "publisher_targets": 300,
                    "inventory_source_targets": 500,
                    "content_category_targets": 300,
                    "placement_targets": 250,
                    "segment_targets": 400
                },
                "count_active": null,
                "count_inactive": null,
                "count_total": null
            },
            {
                "object_type": "placement",
                "limit": 20000,
                "mappings": [
                ],
                "count_active": 21,
                "count_inactive": 0,
                "count_total": 21
            },
            {
                "object_type": "line_item",
                "limit": 3000,
                "mappings": [
                ],
                "count_active": 4,
                "count_inactive": 1,
                "count_total": 5
            },
            {
                "object_type": "domain_list",
                "limit": null,
                "mappings": {
                    "domain": 30000
                },
                "count_active": null,
                "count_inactive": null,
                "count_total": null
            },
            {
                "object_type": "creative",
                "limit": 10000,
                "mappings": [
                ],
                "count_active": 32,
                "count_inactive": 0,
                "count_total": 32
            },
            {
                "object_type": "campaign",
                "limit": 10000,
                "mappings": [
                ],
                "count_active": 6,
                "count_inactive": 6,
                "count_total": 12
            }
        ]
    }
}
```

**View your limits and current usage for creatives**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/object-limit?object_type=creative'
{
    "response": {
        "status": "OK",
        "count": 2,
        "start_element": 0,
        "num_elements": 100,
        "object-limits": [
            {
                "object_type": "creative",
                "limit": 10000,
                "mappings": [
                ],
                "count_active": 32,
                "count_inactive": 0,
                "count_total": 32
            }
        ]
    }
}
```

**Default Limits**

For a list of default object limits and frequently asked questions, see
<a
href="api-usage-constraints.md"
class="xref" target="_blank">API Usage Constraints</a>.

**Deleting Objects**

When you approach or reach your limit for line items, campaigns,
publishers, sites, or placements, you can use reports such as <a
href="network-advertiser-analytics.md"
class="xref" target="_blank">Network Advertiser Analytics</a> and <a
href="network-publisher-analytics.md"
class="xref" target="_blank">Network Publisher Analytics</a> to identify
objects that have, for example, not been modified or used in the last 30
days, and then delete those objects manually. For line items and
campaigns, you can also use a query string filter to find objects based
on when they first or last had impressions. See <a
href="line-item-service.md"
class="xref" target="_blank">Line Item Service</a> and <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a> for more information.

When you approach or reach your limit for creatives, you should delete
non-expired creatives. Non-expired creatives have the `is_expired` field
set to `false`. Note that removing expired creatives will not impact
your creative count.






