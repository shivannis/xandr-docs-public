---
title: User UI Service
description: The user UI service allows you to change whether campaign peer approval is required for users.
ms.date: 10/28/2023
ms.custom: digital-platform-api

---


# User UI Service

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.



<b>Note:</b> This service is deprecated as of
late June 2014, as part of the API 1.15 release. Because 1.15 is a
breaking change release, this service will not actually go away until 60
days after the release of 1.15 (likely late August 2014).



The user UI service allows you to change whether campaign peer approval
is required for users.



<b>Note:</b> The User UI settings are not
enforced in the service layer for campaign activation. <u>This API
service does not interact with API logic. The service cannot actually
change user peer approval settings and cannot prevent unapproved
campaign creation by a user in the API.</u> Rather, the User UI
service's purpose is exclusively to maintain the permissions for GUI use
cases around campaign activation, and to assist with workflow management
in .





<b>Note:</b> This service is accessible only
to the following user types:

- member
- advertiser
- member_advertiser





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000044e2__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000044e2__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000044e2__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__2"><a
href="https://api.appnexus.com/campaign-ui" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-ui</a>
<p><br />
(User UI JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__3">Create a new user UI object for a
user</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__2"><a
href="https://api.appnexus.com/campaign-ui?id=CAMPAIGN_UI_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/user-ui?id=ID</a><br />
&#10;<p>(User UI JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__3">Modify settings via a user UI
object</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__2"><a
href="https://api.appnexus.com/campaign-ui" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-ui</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__3">View
settings for all user UI objects</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__2"><a
href="https://api.appnexus.com/campaign-ui?id=CAMPAIGN_UI_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/user-ui?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__3">View
settings for a specific user UI object</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__2"><a
href="https://api.appnexus.com/campaign-ui?id=CAMPAIGN_UI_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/user-ui?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__3">Remove settings for a user UI
object</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__2"><a
href="https://api.appnexus.com/campaign-ui/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-ui/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000044e2__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000044e2__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000044e2__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000044e2__entry__24">The
ID of the corresponding user. Duplicate entries of the same user is not
allowed.
<p><strong>Required On:</strong> <code
class="ph codeph">PUT</code>/<code class="ph codeph">DELETE</code>, in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__22"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__23">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__24"><strong>Read Only.</strong> The ID of
the member this user belongs to.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__22"><code
class="ph codeph">require_campaign_approval</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__23">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000044e2__entry__24">Whether the campaigns created by this
user require approval before they can be made active.
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>





## Examples



**Add campaign approval requirements for a user by creating a new user
UI object**

``` pre
$ cat user-ui.json
{
    "user-ui": {
        "id": "5771",
        "require_campaign_approval": "false"
    }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @user-ui.json 'https://api.appnexus.com/user-ui'
{
   "response" : {
      "user-ui" : {
         "require_campaign_approval" : false,
         "member_id" : 3897,
         "id" : 5771
      },
      "count" : 1,
      "status" : "OK",
      "id" : 5771
  }
}
```



**Modify campaign approval requirements for a user by modifying the user
UI object**

``` pre
$ cat modify-user-ui.json
{
    "user-ui": {
        "id": "5771",
        "require_campaign_approval": "true"
    }
}
```



``` pre
$ curl -b cookies -c cookies -X PUT -d @modify-user-ui.json 'https://api.appnexus.com/user-ui?id=393404'
{
   "response" : {
      "user-ui" : {
         "require_campaign_approval" : true,
         "id" : 5771
      },
      "count" : 1,
      "status" : "OK",
      "id" : "5771"
   }
}
```

**View campaign approval requirements for a specific user**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/user-ui?id=5771'
{
   "response" : {
      "user-ui" : {
         "require_campaign_approval" : true,
         "id" : 5771
      },
      "count" : 1,
      "status" : "OK"
   }
}
```

**Delete a user UI object and the campaign approval requirements
information it contains**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/user-ui?id=393404'
{
   "response" : {
      "status" : "OK"
   }
   }
```






