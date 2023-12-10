---
Title : Access Policy Member Config Service
Description : <b>Note:</b> This service is currently
ms.date: 10/28/2023
ms.custom: digital-platform-api
available to a limited set of clients.
---


# Access Policy Member Config Service





<b>Note:</b> This service is currently
available to a limited set of clients.



The **access-policy-member-config** service is available only to
Xandr administrators. This service allows you to
identify whether a member account has been enabled for access control.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000035f__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000035f__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000035f__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__2">https://api.<span
class="ph">appnexus.com/access-policy-member-config?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000035f__entry__3">View
a customer's access settings</td>
</tr>
</tbody>
</table>





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000035f__entry__7"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000035f__entry__8" class="entry colsep-1 rowsep-1">Type
(Length)</th>
<th id="ID-0000035f__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__7"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000035f__entry__9">The
ID of the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__7"><code
class="ph codeph">enable_access_control</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__8">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__9"><p>Determines whether the member account
is configured for access control.</p>
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__7"><code
class="ph codeph">team_object_limit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__8">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__9"><p>The total number of resources a
member can have assigned to all teams.</p>
<p><strong>Default</strong>: <code
class="ph codeph">1000</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__7"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__8">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000035f__entry__9">The
date and time when the member configuration was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__7"><code
class="ph codeph">enable_2fa</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000035f__entry__8">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000035f__entry__9">If
<code class="ph codeph">true</code>, two factor authentication (2FA) has
been enabled for this member.</td>
</tr>
</tbody>
</table>





## Examples

**View a member's access control status**

``` pre
$ curl -b cookies 'https://api.appnexus.com/access-policy-member-config?member_id=1234'
            {
            "member_id": 1234,
            "enable_access_control": true,
            "team_object_limit": 1000,
            "last_modified": "2016-07-07 18:01:06",
            "enable_2fa": false
            }
```





## Related Topics



- <a
  href="working-with-roles-using-the-api.md"
  class="xref" target="_blank">Working with Roles using the API</a>  
    








