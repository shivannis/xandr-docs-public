---
Title : User Service
Description : Here "user" refers to people or groups using
Xandr's APIs. The User Service will allow you to
---


# User Service



Here "user" refers to people or groups using
Xandr's APIs. The User Service will allow you to
manage who has access to Xandr's APIs. Users are
classified as by a user type of either *bidder* or *member*.

- Bidder users can be created by other bidder users.
- A bidder-user can create and update member-users as well as update its
  own user info.
- A member-user can update its own user info.
- Each new username associated with a particular bidder must be unique.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007104__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00007104__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00007104__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__2"><a
href="https://api.adnxs.com/user" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/user</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__3">View
all the users that you have created.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__2"><a
href="https://api.adnxs.com/user/USER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/user/USER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__3">View
a particular user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__2"><a
href="https://api.adnxs.com/user" class="xref"
target="_blank">https://api.adnxs.com/user</a>
<p>(user JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__3">Add
a user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__2"><a
href="https://api.adnxs.com/user/USER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/user/USER_ID</a>
<p>(user JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__3">Modify an existing user.</td>
</tr>
</tbody>
</table>

To delete an existing user:  
DELETE <a href="https://api.adnxs.com/user/USER_ID" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/user/USER_ID</a>





## JSON structure

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007104__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00007104__entry__17"
class="entry colsep-1 rowsep-1">Required</th>
<th id="ID-00007104__entry__18"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00007104__entry__19"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">id</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__17">yes
(on update)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Internal ID associated with the
user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">active</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">Bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Currently you cannot delete a user. For
now, set to active to "false"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">username</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__17">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string(50)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Name of the user. User names must be
unique.

Note: After a user is created, the
username cannot be changed.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">password</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__17">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Password for the user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">email</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Email of the user. (Note that a user
can be created without an email, but this will cause problems later when
trying to update the user.)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">user_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">enum('bidder','member')</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Type of user being added.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">read_only</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Users with read_only field set to true
can not add, modify, or delete resources.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">entity_id</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__17">yes
(on add)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">ID
of the entity the user belongs to (member or bidder). If the user_type
is "bidder" this is the bidder ID. If the user_type is "member" this is
the member ID.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">entity_name</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Name of the entity the user belongs to
(member or bidder).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">first_name</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">User's first name</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">last_name</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">User's last name</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">phone</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">User's phone contact</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">This field is only used for
Displaywords</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">This field is only used for
Displaywords</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">advertiser_access</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
advertiser(s) that the user can access, if <code
class="ph codeph">user_type</code> is <code
class="ph codeph">"member_advertiser"</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">publisher_access</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
publisher(s) that the user can access, if <code
class="ph codeph">user_type</code> is <code
class="ph codeph">"member_publisher"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">api_login</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">True if the user has access to the API.
Default is False.
<p> This is an admin-only field. If you create a new user who needs API
access, contact customer support to request that this value be set to
True.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">custom_data</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">Any
information relevant to the user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">send_safety_budget_notifications</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">If <code class="ph codeph">true</code>,
the user will receive email notifications when the daily safety budget
threshold is approached. For more details, see the <code
class="ph codeph">daily_budget</code> field on the  <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
class="xref" target="_blank">Member Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">timezone</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
user's timezone.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">entity_reporting_decimal_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19">Whether number values are separated by
a comma or a decimal in reports. If this field is set to <code
class="ph codeph">decimal</code>, the value returned would be formatted
like this: 1234.56. Whereas, if this field is set to <code
class="ph codeph">comma</code>, the value returned would be formatted
like this: 1234.56.
<p>Possible values:</p>
<ul>
<li><code class="ph codeph">decimal</code></li>
<li><code class="ph codeph">comma</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">reporting_decimal_type</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
character used for decimals in reporting. Possible values:
<ul>
<li><code class="ph codeph">"comma"</code></li>
<li><code class="ph codeph">"decimal"</code> (period)</li>
</ul>
<p>This setting can be overridden at the report level (see <code
class="ph codeph">reporting_decimal_type</code>in the  <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/report-service.html"
class="xref" target="_blank">Report Service).</a></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">decimal_mark</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
character used to represent a decimal mark, such as "period" for a value
of 12.7.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">thousand_seperator</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
character used to separate thousands in numeric values, such as "comma"
for the value 1,276.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">last_modified</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
date the any of the user settings were last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">is_developer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__19"><strong>Read-only.</strong> This flag
gives a user rights to access certain developer-focused services such as
the Plugin and Plugin Instance services, which are used by apps. It is
set to true by a Xandr admin on a case-by-case
basis.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">role_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
ID of the role associated with this user.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">password_expires_on</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
date the user password expires.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__16">password_last_changed_on</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__17">no</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00007104__entry__18">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00007104__entry__19">The
date the user's password was last changed.</td>
</tr>
</tbody>
</table>



<div id="ID-00007104__section_gzb_41k_nwb" >

## Examples

**Authentication Token**

Authentication is always the first step when using the API Services. The
authentication token can then be written to our cookie file for future
use. Please see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/authentication-service.html"
class="xref" target="_blank">Authentication Service</a> for more
detailed instructions.

**Create a user profile text file**

To give API access to "TestUser," you will create a text file in JSON
format with the username and password of the user, and the ID of either
a member or bidder to which this user will belong. Below we have used
the "cat" command to output an example user JSON file.

``` pre
$ cat user
{
   "user":{
      "username":"TestUser",
      "password":"2323test",
      "entity_id":7,
          "email": "user1@examplecompany.com",
          "user_type": "bidder"
   }
}
```

**Guidelines for creating your password**

When creating your password, please create a complex password with the
following:

- 10 or more characters
- 64 or fewer characters
- At least one capital letter (A–Z)
- At least one lowercase letter (a–z)
- At least one digit (0–9)
- At least one special character (such as \#, $, ? %, &)

**Add a new user to the Imp Bus cache**

Now we will input the user file. We have used cookies to authenticate
ourselves.

``` pre
$ curl -b cookies -c cookies -X POST --data-binary @user https://api.adnxs.com/user
{
   "response":{
      "status":"OK",
      "id":59
   }
}
```

**Retrieve user information from the Imp Bus cache**

We know from the output of the above command that the user we just added
has been assigned ID \#59 by the Imp Bus. We can use that ID to view
information about this particular user. To see all users that we have
created, we would leave off the user ID.

``` pre
$ curl -b cookies -c cookies https://api.adnxs.com/user/59
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": null,
    "num_elements": null,
    "user": {
      "id": 59,
      "active": true,
      "first_name": null,
      "last_name": null,
      "phone": null,
      "username": "TestUser",
      "email": "user1@examplecompany.com",
      "user_type": "bidder",
      "read_only": false,
      "api_login": false,
      "entity_id": 7,
      "publisher_id": null,
      "advertiser_id": null,
      "custom_data": null,
      "send_safety_budget_notifications": false,
      "entity_name": "Platform Services Test Bidder",
      "timezone": null,
      "entity_reporting_decimal_type": null,
      "reporting_decimal_type": null,
      "decimal_mark": "period",
      "thousand_separator": "comma",
      "last_modified": "2017-02-16 19:06:47",
      "is_developer": false,
      "role_id": null,
      "languages": null,
      "advertiser_access": null,
      "publisher_access": null
    },
    "dbg": {
                ...
    }
  }
}
```

**Request API access**

Notice in the returned code above the
api_login field. This field can only
be changed by a Xandr administrator. The final
step in giving a user access to the API is to contact customer support
and request that the **api_login** flag for the user be set to **true**.
Be sure to include username or ID in the request.



<div id="ID-00007104__section_xbc_41k_nwb" >

## Related Topics

- <a href="api-services.html" class="xref">API Services</a>






