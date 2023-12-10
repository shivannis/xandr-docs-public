---
Title : Campaign UI Service
Description : The Campaign UI service includes campaign meta information relating to
ms.date: 10/28/2023
ms.custom: digital-platform-api
campaign peer approval settings, including campaign creator and approver
information. You can use it to determine whether peer approval is
---


# Campaign UI Service



The Campaign UI service includes campaign meta information relating to
campaign peer approval settings, including campaign creator and approver
information. You can use it to determine whether peer approval is
required for campaigns created by a specific user.



<b>Note:</b>

- Campaign UI settings are not enforced in the service layer for
  campaign activation. <u>This API service does not interact with API
  logic. The service cannot actually change campaign settings and cannot
  prevent unapproved campaign creation by a user in the API.</u> Rather,
  the Campaign UI service's purpose is exclusively to maintain the
  permissions for GUI use cases around campaign activation, and to
  assist with workflow management in .
- This service is accessible only to the following user types:
  - member
  - advertiser
  - member_advertiser





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001168__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001168__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001168__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__2"><a
href="https://api.appnexus.com/campaign-ui" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/campaign-ui</a>
<p>(Campaign UI JSON) <br />
</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__3">Create a new campaign UI object</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__2"><a
href="https://api.appnexus.com/campaign-ui?id=CAMPAIGN_UI_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/campaign-ui?id=ID</a><br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__3">Modify user data contained in a campaign
UI object</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__2"><a
href="https://api.appnexus.com/campaign-ui" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/campaign-ui</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__3">View
all campaign UI settings</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__2"><a
href="https://api.appnexus.com/campaign-ui" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/campaign-ui</a><a
href="https://api.appnexus.com/campaign-ui?id=ID" class="xref"
target="_blank">?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__3">View
campaign UI settings for a specific campaign</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001168__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001168__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001168__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__18">The
ID of the corresponding campaign. Duplicate entries of the same campaign
is not allowed.
<p><strong>Required On:</strong><code
class="ph codeph">PUT/DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The ID of
the member this campaign belongs to.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">user_id_creator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__18">The
ID of the user who creates the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">username_creator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The user
name of the user who creates the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">first_name_creator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The first
name of the user who creates the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">last_name_creator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The last
name of the user who creates the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">user_id_approver</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001168__entry__18">The
ID of the user who approves the campaign. This user and the target
campaign must belong the same member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">username_approver</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The user
name of the user who approves the campaign.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">first_name_approver</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The first
name of the user who approves the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__16"><code
class="ph codeph">last_name_approver</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__17">string (50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001168__entry__18"><strong>Read Only.</strong> The last
name of the user who approves the campaign.</td>
</tr>
</tbody>
</table>





## Examples

**Create a campaign UI object associated with a specific campaign and
user**

``` pre
$ cat campaign-ui.json
{
"campaign-ui": {
"id": "393404",
"user_id_creator": "6698"
}
}
$ curl -b cookies -c cookies -X POST -d @campaign-ui.json 'https://api.appnexus.com/campaign-ui'
{
"response" : {
"count" : 1,
"campaign-ui" : {
"username_creator" : "lhuangTestUser2",
"user_id_approver" : null,
"first_name_approver" : null,
"first_name_creator" : "Ling",
"user_id_creator" : 6698,
"username_approver" : null,
"last_name_creator" : "Huang",
"last_name_approver" : null,
"member_id" : 3897,
"id" : 393404
},
"status" : "OK"
}
}
```

**Modify campaign UI information**

``` pre
$ cat campaign-ui.json
{
"campaign-ui": {
"user_id_approver": "5771"
}
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @campaign-ui.json 'https://api.appnexus.com/campaign-ui?id=393404'
{
"response" : {
"count" : 1,
"campaign-ui" : {
"username_creator" : "lhuangTestUser2",
"user_id_approver" : 5771,
"first_name_approver" : "Lingshi",
"first_name_creator" : "Ling",
"user_id_creator" : 6698,
"username_approver" : "lhuang_test_member",
"last_name_creator" : "Huang",
"last_name_approver" : "Huang",
"id" : 393404
},
"status" : "OK"
}
}
```

**View campaign UI information for a specific campaign**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/campaign-ui?id=393404'
{
"response" : {
"count" : 1,
"campaign-ui" : {
"username_creator" : "lhuangTestUser2",
"user_id_approver" : 5771,
"first_name_approver" : "Lingshi",
"first_name_creator" : "Ling",
"user_id_creator" : 6698,
"username_approver" : "lhuang_test_member",
"last_name_creator" : "Huang",
"last_name_approver" : "Huang",
"member_id" : 3897,
"id" : 393404
},
"status" : "OK"
}
}
```

**Delete a campaign UI object**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/campaign-ui?id=393404'
{
"response" : {
"status" : "OK"
}
}
```






