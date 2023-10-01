---
Title : Ad Server Service
Description : This read-only service allows you to view information about ad servers
that can deliver third-party creatives or that can be called for data
collection purposes during the delivery of
Xandr-hosted or third-party creatives.
---


# Ad Server Service



This read-only service allows you to view information about ad servers
that can deliver third-party creatives or that can be called for data
collection purposes during the delivery of
Xandr-hosted or third-party creatives.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000125__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000125__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000125__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__2"><a
href="https://api.appnexus.com/adserver" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/adserver</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__3">View
all ad servers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__2"><a
href="https://api.appnexus.com/adserver?id=ADSERVER_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/adserver?id=ADSERVER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__3">View
information about a specific ad server</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000125__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000125__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000125__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__10"><code
class="ph codeph">declare_to_adx</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__12">If
true, the ad server is identified when bidding on Google Ad Manager
inventory. Identification is required to be in full compliance with
Google Ad Manager creative policies (<a
href="https://support.google.com/adwordspolicy/answer/94230?hl=en&amp;rd=1"
class="xref"
target="_blank">https://support.google.com/adwordspolicy/answer/94230?hl=en&amp;rd=1</a>).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__10"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__12">The
description of the ad server.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__10"><code
class="ph codeph">hostnames</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__11">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__12">A
list of host names that can be associated with the ad server. This field
can be edited only by an administrator.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__12">The
internal ID associated with the ad server.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__12">The
date and time (in the form YYYY-MM-DD HH:MM:SS) when the ad server
configuration was last updated in our system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000125__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000125__entry__12">The
name of the ad server.</td>
</tr>
</tbody>
</table>





## Example

**View all ad servers (output is truncated)**

``` pre
curl -b cookies -c cookies 'https://api.appnexus.com/adserver'
{
    "response": {
        "status": "OK",
        "adservers": [
            {
                "id": 0,
                "name": "Other/Unlisted",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2011-07-14 13:54:01",
                "is_hidden": false,
                "hostnames": null
            },
            {
                "id": 1,
                "name": "24/7 Real Media",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2010-04-15 21:43:30",
                "is_hidden": false,
                "hostnames": null
            },
            {
                "id": 2,
                "name": "Ad Manager",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2010-04-01 19:56:43",
                "is_hidden": false,
                "hostnames": null
            },
            {
                "id": 3,
                "name": "AdCentric",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2010-05-20 18:33:47",
                "is_hidden": false,
                "hostnames": null
            },
            {
                "id": 4,
                "name": "Adconian",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2010-04-01 19:56:43",
                "is_hidden": false,
                "hostnames": null
            },
            {
                "id": 5,
                "name": "AdDynamix",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2010-04-01 19:56:43",
                "is_hidden": false,
                "hostnames": null
            },
            {
                "id": 6,
                "name": "AdECN",
                "description": null,
                "type": "adserver",
                "is_appnexus_approved": false,
                "declare_to_adx": false,
                "last_modified": "2010-04-01 19:56:43",
                "is_hidden": false,
                "hostnames": "hostname1.com","hostname2.net"
            },
            ...
        ],
        "count": 202,
        "start_element": null,
        "num_elements": null,
        "dbg_info": {
            ...
        }
    }
}
```

**View information about ad server 5**

``` pre
curl -b cookies -c cookies 'https://api.appnexus.com/adserver?id=5'
{
    "response": {
        "status": "OK",
        "adserver": {
            "id": 5,
            "name": "AdDynamix",
            "description": null,
            "type": "adserver",
            "is_appnexus_approved": false,
            "declare_to_adx": false,
            "last_modified": "2010-04-01 19:56:43",
            "is_hidden": false,
            "hostnames": null
        },
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "dbg_info": {
            ...
        }
    }
}
```






