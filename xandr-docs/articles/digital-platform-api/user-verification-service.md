---
Title : User Verification Service
Description : App providers can use the User Verification service to confirm that the
correct (paying) customer is signing in to the App. This confirmation
---


# User Verification Service



App providers can use the User Verification service to confirm that the
correct (paying) customer is signing in to the App. This confirmation
takes place via two steps:

1.  The API makes a <span class="keyword apiname">POST call to
    generate a verification token when the user launches an app within
    . Verification tokens expire after two
    minutes for security purposes.
2.  The app makes a <span class="keyword apiname">GET call using
    the verification token that is sent by Xandr
    when the app is launched to retrieve the user's ID. Once the
    verification token has been used to return a user ID the token will
    be deleted for security purposes.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000007e0__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000007e0__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000007e0__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__1"><span
class="keyword apiname">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007e0__entry__2"><a
href="https://api.appnexus.com/user-verification" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user-verification</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__3">Create a new verification token.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__1"><span
class="keyword apiname">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007e0__entry__2"><a
href="https://api.appnexus.com/user-verification?user_token=USER_TOKEN"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/user-verification?user_token=USER_TOKEN</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__3">Retrieve the user ID associated with a
verification token.</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000007e0__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000007e0__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000007e0__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__10"><span
class="keyword apiname">user_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007e0__entry__12">The
ID of the user that generated the <code
class="ph codeph">user_token</code> on POST.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__10"><span
class="keyword apiname">user_token</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000007e0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000007e0__entry__12">The
authentication token that can be used to retrieve a user's ID.</td>
</tr>
</tbody>
</table>





## Examples

**Create a new verification token**

``` pre
$ curl -b cookies -c cookies -X POST 'https://api.adnxs.com/user-verification'
{
  "response": {
    "status": "OK",
    "user_token": "3e3088b48c901a6b26dc95e530bc5a8c96b8f7e4d6ba46cf"
  }
}
```

**Retrieve the user ID associated with a token**

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/user-verification?user_token=3e3088b48c901a6b26dc95e530bc5a8c96b8f7e4d6ba46cf'
{
  "response": {
    "status": "OK",
    "user_id": 110,
  }
}
```






