---
title: User DRT Service
description: The User DRT service was created to allow the DRT (the central user store owned & maintained by Corp-IT ) to control access for users.
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# User DRT Service

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.

The User DRT service was created to allow the DRT (the central user
store owned & maintained by Corp-IT ) to control access for users.
Eventually, roles and permissions will be governed via the DRT service.

The central id used by DRT is the `account_id`, which stores mapping
data between the user ID and the account ID.



<b>Note:</b> This service is accessible only
to the following types of users:

- Read access: All admins.
- Write access: Only certain users specified in the config.





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00004388__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00004388__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00004388__entry__3"
class="entry colsep-1 rowsep-1">Decsription</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"><a
href="https://api.appnexus.com/user-DRT" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT</a>
<p>(User DRT JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__3">Create a new user DRT object for a
user</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"><a
href="https://api.appnexus.com/user-DRT?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT?id=ID</a>
<p>(User DRT JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__3">Modify a user DRT object</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"><a
href="https://api.appnexus.com/user-DRT" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__3">View
DRT info for all users</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"><a
href="https://api.appnexus.com/user-DRT?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__3">View
DRT info for a specific user</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"><a
href="https://api.appnexus.com/user-DRT?account_id=ACCOUNT_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT?account_id=ACCOUNT_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__3">View
DRT info for all users under a specific DRT account</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"> <a
href="https://api.appnexus.com/user-DRT?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT?id=ID</a> </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__3">Remove DRT info for a user</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__2"><a
href="https://api.appnexus.com/user-DRT/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-DRT/meta</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004388__entry__25"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004388__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004388__entry__27"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__27">The
ID of the corresponding user. Duplicate entries of the same user are not
allowed.
<p><strong>Required On:</strong><code class="ph codeph">PUT</code>/<code
class="ph codeph">DELETE</code>, in query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">account_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004388__entry__27">The
account ID in DRT table. This must be greater than 0.
<p><strong>Default:</strong><code class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">username</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27"><strong>Read Only.</strong> The login
name of the user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">first_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27"><strong>Read Only.</strong> The user's
first name.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">last_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27"><strong>Read Only.</strong> The user's
last name.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27">Read-only . The email address of the
user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">user_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27"><strong>Read Only.</strong> The type of
user. Possible values: <code class="ph codeph">"member"</code>, <code
class="ph codeph">"bidder"</code>, <code
class="ph codeph">"publisher"</code>, <code
class="ph codeph">"advertiser"</code>, <code
class="ph codeph">"member_advertiser"</code>, <code
class="ph codeph">"member_publisher"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">entity_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27"><strong>Read Only.</strong> The ID of
the entity (member or bidder) to which the user belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__25"><code
class="ph codeph">read_only</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__26">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004388__entry__27"><strong>Read Only.</strong> If <code
class="ph codeph">true</code>, the user is not allowed to make changes
via the API. </td>
</tr>
</tbody>
</table>





## Examples



**Create a new user DRT object**

``` pre
$ cat user-DRT.json
{
    "user-DRT": {
        "id": "11",
        "account_id": "123"
    }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @user-DRT.json 'https://api.appnexus.com/user-DRT'
{
   "response" : {
      "count" : 1,
      "status" : "OK",
      "num_elements" : 100,
      "user-DRT" : {
         "user_type" : "member",
         "last_name" : null,
         "username" : "dwm6",
         "account_id" : 123,
         "email" : null,
         "entity_id" : "6",
         "read_only" : "0",
         "id" : 11,
         "first_name" : null
      },
      "id" : 11,
      "start_element" : 0
   }
}
```

**Modify DRT info for a user**

``` pre
$ cat modify-user-DRT.json
{
    "user-DRT": {
        "account_id": "321"
    }
}
```

``` pre
$ curl -b cookies -c cookies -X PUT -d @modify-user-DRT.json 'https://api.appnexus.com/user-DRT?id=11'
{
   "response" : {
      "count" : 1,
      "status" : "OK",
      "num_elements" : 100,
      "user-DRT" : {
         "user_type" : "member",
         "last_name" : null,
         "username" : "dwm6",
         "account_id" : 223,
         "email" : null,
         "entity_id" : "6",
         "read_only" : "0",
         "id" : 11,
         "first_name" : null
      },
      "id" : "11",
      "start_element" : 0
   }
}
```

**View DRT info for a specific user**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/user-DRT?id=11'
{
   "response" : {
      "count" : 1,
      "status" : "OK",
      "num_elements" : 100,
      "user-DRT" : {
         "user_type" : "member",
         "last_name" : null,
         "username" : "dwm6",
         "account_id" : 223,
         "email" : null,
         "entity_id" : "6",
         "read_only" : "0",
         "id" : 11,
         "first_name" : null
      },
      "start_element" : 0
   }
}
```

**View DRT info for all user under a specific account**

``` pre
$ curl -b cookies -c cookies -X GET 'https://api.appnexus.com/user-DRT?account_id=123'
{
   "response" : {
      "count" : 2,
      "status" : "OK",
      "num_elements" : 100,
      "user-DRTs" : [
         {
            "user_type" : "member",
            "last_name" : null,
            "username" : "data-provider",
            "account_id" : 123,
            "email" : null,
            "entity_id" : "3",
            "read_only" : "0",
            "id" : 6,
            "first_name" : null
         },
         {
            "user_type" : "member",
            "last_name" : null,
            "username" : "dwm273",
            "account_id" : 123,
            "email" : null,
            "entity_id" : "273",
            "read_only" : "0",
            "id" : 12,
            "first_name" : null
         }
      ],
      "start_element" : 0
   }
}
```

**Delete a user DRT object and the campaign approval requirements
information it contains**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/user-DRT?id=11'
{
   "response" : {
      "status" : "OK",
      "dbg_info" : {
         "warnings" : [],
         "db" : "master",
         "version" : "trunk",
         "time" : 89.476108551025,
         "start_microtime" : 1396626820.4141,
         "awesomesauce_cache_used" : false,
         "count_cache_used" : false,
         "instance" : "localhost",
         "output_term" : "not_found",
         "slave_hit" : false
      }
   }
}
```






