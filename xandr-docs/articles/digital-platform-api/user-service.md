---
Title : User Service
Description : "User" refers to people or groups able to log in to
ms.date: 10/28/2023
ms.custom: digital-platform-api
or API. Users are classified by a `user_type`,
---


# User Service



"User" refers to people or groups able to log in to
 or API. Users are classified by a `user_type`,
which determines what type of information they have access to. This
service allows member-level users to create other users, as well as
modify and retrieve information about existing users.


## User Types



<b>Note:</b> Once a user has been created, the
`user_type` cannot be changed. To grant someone a new `user_type`, you
must create a new user for that person. Also, if you create a user
through , the `api_login` field is set to
`false` by default (i.e., that user will not have access to the API).
You may only change the value of the `api_login` field for a user via
the API.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003332__user_types__entry__1"
class="entry colsep-1 rowsep-1">User Type</th>
<th id="ID-00003332__user_types__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__1"><code
class="ph codeph">member</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__2">Network-level user with
access to all aspects of the member's account (Advertisers, Publishers,
Apps, etc.).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__1"><code
class="ph codeph">member_advertiser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__2">Somewhat limited
network-level user with access to a subset of advertisers. No API access
by Xandr policy.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__1"><code
class="ph codeph">member_publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__2">Somewhat limited
network-level user with access to a subset of publishers. No API access
by Xandr policy.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__1"><code
class="ph codeph">advertiser</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__2">Very limited user with
access to one advertiser (mainly for reporting, available in both <span
class="ph"> and API). You must specify an <code
class="ph codeph">advertiser_id</code> when you create this user.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__1"><code
class="ph codeph">publisher</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__2">Very limited user with
access to one publisher (mainly for reporting, available in both <span
class="ph"> and API). You must specify a <code
class="ph codeph">publisher_id</code> when you create this user.</td>
</tr>
</tbody>
</table>

**Mapping of UI terms to API terms**

For more information on UI terms, see 
documentation for your application.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003332__user_types__entry__13"
class="entry colsep-1 rowsep-1">UI user role</th>
<th id="ID-00003332__user_types__entry__14"
class="entry colsep-1 rowsep-1">API user_type</th>
<th id="ID-00003332__user_types__entry__15"
class="entry colsep-1 rowsep-1">Read_only</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__13">Network</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__14">member</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__15">false</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__13">Network Observer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__14">member</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__15">true</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__13">Network Advertiser
Manager</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__14">member_advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__15">false</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__13">Network Publisher
Manager</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__14">member_publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__15">false</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__13">Advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__14">advertiser</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__15">false</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__13">Publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__14">publisher</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__user_types__entry__15">false</td>
</tr>
</tbody>
</table>





## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003332__entry__34" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00003332__entry__35"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00003332__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user</a><br />
(user JSON)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__36">Add
a new user</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user?id=user_id" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user?id=user_id</a><br />
(user JSON)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__36">Modify an existing user</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__36">View all users associated with this
member</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user?id=user_id" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user?id=user_id</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__36">View a specific user</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user?id=1%2c2%2c3" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user?id=1,2,3</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__36">View multiple users by ID using a
comma-separated list</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user?current" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user?current</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__36">View the current user</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__34"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__35"><a
href="https://api.appnexus.com/user/meta" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/user/meta</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__36">Find out which fields you can filter
and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003332__entry__58"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00003332__entry__59"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003332__entry__60"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
internal ID associated with the user.
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>, in
query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">state</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
state of the user. Possible values:
<ul>
<li><code class="ph codeph">"active"</code></li>
<li><code class="ph codeph">"inactive"</code></li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">"active"</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">username</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
login name of the user.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code> </p>

<b>Note:</b> The username should not contain
any special characters such as $, #, and ". Additionally, after a user
is created, the username cannot be changed.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">password</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
password used to authenticate the user. Not shown on <code
class="ph codeph">GET</code> requests.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
email address of the user.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">first_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
user's first name.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">last_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
user's last name.
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">custom data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">Any
information relevant to the user can be entered here.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">phone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
user's contact phone number.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">user_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
type of user. Possible values:
<ul>
<li><code class="ph codeph">"member"</code></li>
<li><code class="ph codeph">"bidder"</code></li>
<li><code class="ph codeph">"publisher"</code></li>
<li><code class="ph codeph">"advertiser"</code></li>
<li><code class="ph codeph">"member_advertiser"</code></li>
<li><code class="ph codeph">"member_publisher"</code></li>
</ul>
<p>See <a href="user-service.md#ID-00003332__user_types"
class="xref">User Types</a> table above for more details on each user
type.</p>
<p><strong>Required On</strong>: <code class="ph codeph">POST</code></p>

<b>Note:</b> This field cannot be modified on
<code class="ph codeph">PUT</code>. To change a user's <code
class="ph codeph">user_type</code>, you must add a new user.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">read_only</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">If
<code class="ph codeph">true</code>, the user is not allowed to make
changes via the API.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">api_login</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__60"><strong>Admin-only</strong>. If <code
class="ph codeph">true</code>, the user can access and use the API.
<p><strong>Default</strong>: <code
class="ph codeph">false</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">entity_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
ID of the entity (member or bidder) to which the user belongs. Note that
the <code class="ph codeph">entity_id</code> is the same as the <code
class="ph codeph">member_id</code>, which is used in other services.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> (if
<code class="ph codeph">user_type</code> is "<code
class="ph codeph">member</code>")</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">entity_name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
name of the entity (member or bidder) to which the user belongs.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">publisher_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
ID of the publisher with which the user is associated, if <code
class="ph codeph">user_type</code> is <code
class="ph codeph">"publisher"</code>.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> (if
<code class="ph codeph">user_type</code> is "<code
class="ph codeph">publisher</code>")</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
ID of the advertiser with which the user is associated, if <code
class="ph codeph">user_type</code> is <code
class="ph codeph">"advertiser"</code>.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> (if
<code class="ph codeph">user_type</code> is "<code
class="ph codeph">advertiser</code>")</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">advertiser_access</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
advertiser(s) that the user can access, if <code
class="ph codeph">user_type</code> is <code
class="ph codeph">"member_advertiser"</code>.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> (if
<code class="ph codeph">user_type</code> is "<code
class="ph codeph">member_advertiser</code>")</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">publisher_access</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
publisher(s) that the user can access, if <code
class="ph codeph">user_type</code> is <code
class="ph codeph">"member_publisher"</code>.
<p><strong>Required On</strong>: <code class="ph codeph">POST</code> (if
<code class="ph codeph">user_type</code> is "<code
class="ph codeph">member_advertiser</code>")</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">reporting_decimal_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
character used for decimals in reporting. Possible values:
<ul>
<li><code class="ph codeph">"comma"</code></li>
<li><code class="ph codeph">"decimal"</code> (period)</li>
</ul>
<p>This setting can be overridden at the report level (see <code
class="ph codeph">reporting_decimal_type</code> in the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>).</p>
<p><strong>Default</strong>: <code
class="ph codeph">reporting_decimal_type</code> from <a
href="member-service.md" class="xref">member</a></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">decimal_mark</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
character separating the integer part from the fractional part of a
number. Possible values:
<ul>
<li><code class="ph codeph">"period"</code></li>
<li><code class="ph codeph">"comma"</code></li>
</ul>
<p>This character must be different than the character used for <code
class="ph codeph">thousand_separator</code>.</p>
<p><strong>s</strong>: <code class="ph codeph">"period"</code></p>

<b>Note:</b> This field controls how the user
enters and views numbers in  only. It does not
affect numbers in the API.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">thousand_separator</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
character separating digit groups in a number. Possible values:
<ul>
<li><code class="ph codeph">"comma"</code></li>
<li><code class="ph codeph">"space"</code></li>
<li><code class="ph codeph">"period"</code></li>
</ul>
<p>This character must be different than the character used for <code
class="ph codeph">decimal_mark</code>.</p>
<p><strong>Default</strong>: <code class="ph codeph">"comma"</code> </p>

<b>Note:</b> This setting controls how the
user enters and views digit groups in  only. It
does not affect digit groups in the API.
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">send_safety_budget_notifications</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">If
<code class="ph codeph">true</code>, the user will receive email
notifications when the daily safety budget threshold is approached. For
more details, see the <code class="ph codeph">daily_budget</code> field
on the <a href="member-service.md" class="xref">Member Service</a>.
<p><strong>Default</strong>: <code
class="ph codeph">"false"</code> </p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">is_developer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__60"><strong>Read-only</strong>. This flag
gives a user rights to access certain developer-focused services such as
the Plugin and Plugin Instance services, which are used by apps. It is
set to true by a Xandr admin on a case-by-case
basis.
<p><strong>Default</strong>: <code
class="ph codeph">"false"</code> </p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
date and time when the user was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">timezone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003332__entry__60">The
user's timezone.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">password_expires_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__60">When the user's password expires.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__58"><code
class="ph codeph">entity_reporting_decimal_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__59">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003332__entry__60">Whether number values are separated by
a comma or a decimal in reports. If this field is set to <code
class="ph codeph">decimal</code>, the value returned would be formatted
like this: 1234.56. Whereas, if this field is set to <code
class="ph codeph">comma</code>, the value returned would be formatted
like this: 1234.56.
<p>Possible values:</p>
<ul>
<li><code class="ph codeph">decimal</code></li>
<li><code class="ph codeph">comma</code></li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">"decimal"</code> </p></td>
</tr>
</tbody>
</table>





## Examples

**Add a network user**

``` pre
$ cat user
{
    "user":{
        "username":"testuser",
        "password":"testpassword",
        "user_type":"member",
        "entity_id":123,
        "first_name":"Test",
        "last_name":"User",
        "email":"test@testuser.com"
    }
}
$ curl -b cookies -X POST -d @user 'https://api.appnexus.com/user'
{
    "response":{
        "status":"OK",
        "id":258
    }
}
```

**Add a network observer user**

``` pre
$ cat user
{
    "user":{
        "username":"testuser",
        "password":"testpassword",
        "user_type":"member",
        "entity_id":123,
        "first_name":"Test",
        "last_name":"User",
        "email":"test@testuser.com",
        "read_only": true
    }
}
$ curl -b cookies -X POST -d @user 'https://api.appnexus.com/user'
{
    "response":{
        "status":"OK",
        "id":259
    }
}
```

**Add a publisher user**

``` pre
$ cat user
{
    "user":{
        "username":"testuser",
        "password":"testpassword",
        "user_type":"publisher",
        "publisher_id":1234,
        "first_name":"Test",
        "last_name":"User",
        "email":"test@testuser.com"
    }
}
$ curl -b cookies -X POST -d @user 'https://api.appnexus.com/user'
{
    "response":{
        "status":"OK",
        "id":260
    }
}
```

**Add an advertiser user**

``` pre
$ cat user
{
    "user":{
        "username":"testuser",
        "password":"testpassword",
        "user_type":"advertiser",
        "advertiser_id":1234,
        "first_name":"Test",
        "last_name":"User",
        "email":"test@testuser.com"
    }
}
$ curl -b cookies -X POST -d @user 'https://api.appnexus.com/user'
{
    "response":{
        "status":"OK",
        "id":261
    }
}
```

**View the current user**

``` pre
$ curl -b cookies 'https://api.appnexus.com/user?current'
{
    "response": {
        "status": "OK",
        "count": 1,
        "start_element": 0,
        "num_elements": 100,
        "user": {
            "id": 2513,
            "first_name": "Ron",
            "last_name": "Jacob",
            "phone": "",
            "username": "rjacob",
            "email": "rjacob@example.com",
            "user_type": "member",
            "read_only": false,
            "api_login": true,
            "entity_id": 1446,
            "publisher_id": null,
            "advertiser_id": null,
            "custom_data": null,
            "send_safety_budget_notifications": false,
            "entity_name": "Test Member",
            "timezone": "EST5EDT",
            "entity_reporting_decimal_type": "decimal",
            "reporting_decimal_type": null,
            "decimal_mark": "period",
            "thousand_separator": "comma",
            "last_modified": "2012-06-27 21:53:38",
            "is_developer": false,
            "state": "active",
            "advertiser_access": null,
            "publisher_access": null
        }
    }
}
```






