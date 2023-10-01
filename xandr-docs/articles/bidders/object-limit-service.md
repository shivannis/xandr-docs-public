---
Title : Object Limit Service
Description : Xandr limits the number of <u>non-expired</u>
creatives that you can have on the platform. In addition,
---


# Object Limit Service



Xandr limits the number of <u>non-expired</u>
creatives that you can have on the platform. In addition,
Xandr limits the number of domains that can be
used in a single domain list and the number of certain targets that can
be used in a single profile. For all object types except creatives, both
active and inactive objects are counted against the limit. For
creatives, only non-expired objects are counted against the limit. A
creative expires when it has neither served nor been modified in over
last 14 days (on the 15th day, it is updated as **Expired**).

The Object Limit Service allows you to view these limits and proactively
monitor your current usage.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000088b5__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000088b5__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000088b5__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__2"><a
href="https://api.adnxs.com/object-limit" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/object-limit</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__3">View
your limits and current usage for all object types</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__2"><a
href="https://api.adnxs.com/object-limit?object_type=OBJECT_TYPE"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/object-limit?object_type=OBJECT_TYPE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__3">View
your limit and current usage for a specific object type

Tip: The following object types are
available: <code class="ph codeph">creative</code>, <code
class="ph codeph">profile</code>, and <code
class="ph codeph">domain_list</code>.
</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000088b5__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000088b5__entry__11"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-000088b5__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__10"><code
class="ph codeph">count_active</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__12">The
current number of active objects. For creatives, this count does not
include expired creatives.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__10"><code
class="ph codeph">count_inactive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__12">The
current number of inactive objects, not including deleted objects. For
creatives, this count does not include expired creatives.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__10"><code
class="ph codeph">count_total</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__12">The
current total number of active and inactive objects. For creatives, this
count does not include expired creatives.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__10"><code
class="ph codeph">limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__12">The
maximum number of objects that the bidder is allowed. For all object
types except "creative", both active and inactive objects are counted
agains the limit. For creatives, only <u>non-expired</u> objects are
counted against the limit.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__10"><code
class="ph codeph">mapping_limits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__11">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__12">This field is populated only for the
"profile" and "domain_list" object types. It lists the limits for
objects within each profile and domain list, for example, the maximum
number of segment targets you can use in a single profile or the maximum
number of domains you can use in a single domain list. See "Mapping
Limits" below for more details.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__10"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__11">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__12">The
type of object. Possible values: "creative", "profile", or
"domain_list".

Note: For "profile" and "domain_list",
the <code class="ph codeph">limit</code>, <code
class="ph codeph">count_active</code>, <code
class="ph codeph">count_inactive</code>, and <code
class="ph codeph">count_total</code> fields will show a value of <code
class="ph codeph">null</code>, as Xandr does not
limit the number of profiles and domain lists that you can have. <span
class="ph">Xandr does limit the number of objects within each
profile or domain list, however. These limits will be shown in the <code
class="ph codeph">mapping_limits</code> field.
</td>
</tr>
</tbody>
</table>

**Mapping Limits**

This part of the JSON response is populated only for the "profile" and
"domain_list" object types. It lists the limits for objects within each
profile and domain list.

**For Profiles**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000088b5__entry__31"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000088b5__entry__32"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-000088b5__entry__33"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">content_category_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of custom content categories that you can target in a
single profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">inventory_source_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__33"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">placement_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of placements that you can target in a single
profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">platform_content_category_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of Xandr-defined content
categories that you can target in a single profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">postal_code_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of postal codes that you can target in a single
profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">publisher_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of publishers that you can target in a single
profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">segment_group_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of segment groups that you can target in a single
profile.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">segment_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of segments that you can target in a single profile.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__31"><code
class="ph codeph">site_targets</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__32">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__33">The
maximum number of sites that you can target in a single profile.</td>
</tr>
</tbody>
</table>

**For Domain Lists**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000088b5__entry__61"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000088b5__entry__62"
class="entry colsep-1 rowsep-1">Type </th>
<th id="ID-000088b5__entry__63"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__61"><code
class="ph codeph">domains</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000088b5__entry__62">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000088b5__entry__63">The
maximum number of domains that you can include or exclude in a single
domain list.</td>
</tr>
</tbody>
</table>





## Examples

**View your limits and current usage for all object types**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/object-limit'
{
    "response": {
        "status": "OK",
        "count": null,
        "start_element": null,
        "num_elements": null,
        "object-limits": [
            {
                "object_type": "profile",
                "limit": null,
                "mapping_limits": {
                    "inventory_source_targets": 500,
                    "content_category_targets": 300,
                    "platform_content_category_targets": 300,
                    "postal_code_targets": 4000,
                    "segment_targets": 400,
                    "publisher_targets": 300,
                    "site_targets": 100,
                    "placement_targets": 250,
                    "segment_group_targets": 400
                },
                "count_active": null,
                "count_inactive": null,
                "count_total": null
            },
            {
                "object_type": "domain_list",
                "limit": null,
                "mapping_limits": {
                    "domains": 30000
                },
                "count_active": null,
                "count_inactive": null,
                "count_total": null
            },
            {
                "object_type": "creative",
                "limit": 16000,
                "mapping_limits": [
                ],
                "count_active": 0,
                "count_inactive": 0,
                "count_total": 0
            }
        ],
        "dbg": {
        ...
        }
    }
}
```

**View your limits and current usage for creatives **

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/object-limit?object_type=creative'
{
    "response": {
        "status": "OK",
        "count": null,
        "start_element": null,
        "num_elements": null,
        "object-limits": [
            {
                "object_type": "creative",
                "limit": 16000,
                "mapping_limits": [
                ],
                "count_active": 0,
                "count_inactive": 0,
                "count_total": 0
            }
        ],
        "dbg": {
            ...
        }
    }
}
```





## FAQs

For a list of frequently asked questions about object limits, see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/object-limits---faq.html"
class="xref" target="_blank">Object Limits - FAQ</a>.





## Deleting Objects

When you approach your limit for domain lists or profile target, you
should remove inactive, unused, or unnecessary objects.

- To remove domains from a domain list, you make a PUT call to the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/domain-list-service.html"
  class="xref" target="_blank">Domain List Service</a> , updating the
  `domains` array.
- For information about removing a target from a profile, see <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/enhanced-bidder-profiles.html"
  class="xref" target="_blank">Enhanced Bidder Profiles.</a>

When you approach your limit for creatives, you should remove
<u>non-expired</u> creatives. Non-expired creatives have the
`is_expired` field set to `false`. Note that removing expired creatives
will not impact your creative count.

- To remove a creative, you make a DELETE call to the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>.






