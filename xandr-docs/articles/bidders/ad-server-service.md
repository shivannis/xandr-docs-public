---
Title : Ad Server Service
Description : This read-only service allows you to view information about ad servers
ms.date : 10/28/2023
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
<th id="ID-0000741c__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000741c__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000741c__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__2"><a
href="https://api.adnexus.com/ad-server" class="xref"
target="_blank">https://api.adnexus.com/ad-server</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__3">To
view all ad servers.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__2"><a
href="https://api.adnexus.com/ad-server?id=ADSERVER_ID" class="xref"
target="_blank">https://api.adnexus.com/ad-server?id=ADSERVER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__3">To
view information about a specific ad server.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000741c__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000741c__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000741c__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__10"><code
class="ph codeph">declare_to_adx</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__11">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__12">If
true, the ad server is identified when bidding on Google Ad Exchange
inventory. Identification is required to be in full compliance with
Google Ad Exchange creative policies.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__10"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__12">The
description of the ad server.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__10"><code
class="ph codeph">hostnames</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__11">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__12">A
comma-separated list of host names that can be associated with the ad
server. This field can be edited only by an administrator.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__12">The
internal ID associated with the ad server.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__10"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__12">The
date and time (in the form YYYY-MM-DD HH:MM:SS) when the ad server
configuration was last updated in Xandr's
system.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000741c__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000741c__entry__12">The
name of the ad server.</td>
</tr>
</tbody>
</table>





## Example

**View all ad servers (output is truncated)**

``` pre
curl -b cookies -c cookies 'https://api.adnexus.com/ad-server'
{
    "response": {
        "status": "OK"
        "adservers": [
            {
                "id": 1,
                "name": "24/7 Real Media",
                "description":"null",
                "declare_to_adx": false,
                "last_modified":"2010-06-20 15:45:00"
            },
            {
                "id": 2,
                "name": "Ad Manager",
                "description":"null",
                "declare_to_adx": false,
                "last_modified":"2010-04-05 21:43:30"
            },
            {
                "id": 3,
                "name": "AdCentric",
                "description":"null",
                "declare_to_adx: false,
                "last_modified":"2011-07-02 19:56:44"
            }
            ...
        ],
        "status": "OK"
    }
}
```






