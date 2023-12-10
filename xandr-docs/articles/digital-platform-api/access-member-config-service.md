---
Title : Access Member Config Service
Description : The access-member-config service allows you to manage which members on
ms.date: 10/28/2023
ms.custom: digital-platform-api
the platform are subject to access control enforcement. This service is
---


# Access Member Config Service



The access-member-config service allows you to manage which members on
the platform are subject to access control enforcement. This service is
available only to Xandr administrators.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000007a8__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000007a8__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000007a8__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__2">https://api.<span
class="ph">appnexus.com/access-member-config?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__3">Enable a member's access control</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__2">https://api.<span
class="ph">appnexus.com/access-member-config?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__3">Modify a member's access control
settings</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__2">https://api.<span
class="ph">appnexus.com/access-member-config?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007a8__entry__3">View
a member's access control settings</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000007a8__entry__13"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000007a8__entry__14" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-000007a8__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__13"><code
class="ph codeph">enable_access_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__15"><p>Defines whether or not the member is
under access control.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__13"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__14">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007a8__entry__15">The
date and time this object was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__13"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__14">bigint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__15"><p>The ID of the member.</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code>and
<code class="ph codeph">PUT</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__13"><code
class="ph codeph">team_object_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__14">bigint</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007a8__entry__15"><p>The maximum number of objects
(advertisers, insertion orders, publishers, placements groups, and
placements) that can be assigned to any one team for this member.</p>
<p><strong>Default</strong>: <code
class="ph codeph">1000</code></p></td>
</tr>
</tbody>
</table>





## Examples

**Retrieve a member's access control settings**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-member-config?member_id=1234'
{
    "response": {
        "status": "OK",
        "access-member-config": [
            {
                "member_id": 1234,
                "enable_access_control": false,
                "team_object_limit": 1000,
                "last_modified": "2016-06-22 15:37:49"
            }
        ]
    }
}
```

**Turn on access control for a member**

``` pre
$ cat access-control.json
{
    "access-member-config":
        {
            "member_id":1234,
            "enable_access_control": true
        }
}
$ curl -b cookies -X POST -d '@access-control.json' 'https://api.appnexus.com/access-member-config?member_id=1234'
```

**Modify the number of objects allowed in a team**

``` pre
$ cat limit.json
{
    "access-member-config":
        {
            "member_id":1234,
            "team_object_limit": 2000
        }
}
$ curl -b cookies -X PUT -d '@limit.json' 'https://api.appnexus.com/access-member-config?member_id=1234'
```





## Related Topics



- <a
  href="working-with-roles-using-the-api.md"
  class="xref" target="_blank">Working with Roles using the API</a>








