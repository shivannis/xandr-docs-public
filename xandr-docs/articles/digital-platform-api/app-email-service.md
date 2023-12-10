---
Title : App Email Service
Description : The app email service is an admin-only service that manages automatic
ms.date: 10/28/2023
ms.custom: digital-platform-api
email notifications sent to admin users when apps are installed,
modified, or deleted. This is also the service used to change the
---


# App Email Service



The app email service is an admin-only service that manages automatic
email notifications sent to admin users when apps are installed,
modified, or deleted. This is also the service used to change the
content of email notifications on app install, modification, or
deletion. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000bcd__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000bcd__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000bcd__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__2"><a
href="https://api.appnexus.com/app-email" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-email</a>
<p>(new_email JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__3">Add
an app email</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__2"><a
href="https://api.appnexus.com/app-email?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-email?id=ID</a> 
<p>(update_email JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__3">Modify an existing app email</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__2"><a
href="https://api.appnexus.com/app-email" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-email</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__3">View
all app emails</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__2"><a
href="https://api.appnexus.com/app-email?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-email?id=ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__3">View
a specific app email</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__2"><a
href="https://api.appnexus.com/app-email?id=ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/app-email?id=ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__3">Delete an app email</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000bcd__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000bcd__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000bcd__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__21"><strong>Read Only.</strong> The
auto-generated ID of the email being sent through the app_email service.
<p><strong>Required On</strong>: <code class="ph codeph">PUT</code>,
<code class="ph codeph">DELETE</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code
class="ph codeph">recipient</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
name of the person, people, team, or teams receiving the email. Name(s)
may contain up to 225 characters.
<p><strong>Required On</strong>; <code
class="ph codeph">POST (JSON)</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
type field is used to assign a category to the email - for example "data
team" or "services bugs". It may contain up to 225 characters.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code
class="ph codeph">action</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
event that trigger the notification email. Possible values are "put,"
"post," or "delete."
<p><strong>Default</strong>: <code class="ph codeph">POST</code></p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST (JSON)</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code
class="ph codeph">recipient_emails</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
email addresses of the people who should receive the notification. Can
contain specific email addresses separated by commas and/or a variable
that pulls specific emails from the database to populate the
field.<br />
<br />
Examples:
<ul>
<li>name1@appnexus.com </li>
<li>name1@appnexus.com,<a
href="mailto:name2@appnexus.com" class="xref"
target="_blank">name2@appnexus.com</a></li>
<li> %developer_email%,name1@appnexus.com</li>
<li>%developer_email%,%installer_email%</li>
</ul>
<p><strong>Required On</strong>: <code
class="ph codeph">POST (JSON)</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code
class="ph codeph">subject</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
text that will appear in the subject field of the email.
<p><strong>Required On</strong>: <code
class="ph codeph">POST (JSON)</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code
class="ph codeph">body</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
body of the email. Does not have a character limit.
<p><strong>Required On</strong>: <code
class="ph codeph">POST (JSON)</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__19"><code class="ph codeph">bcc</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000bcd__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000bcd__entry__21">The
email addresses of the people who should receive the notification as bcc
recipients. Can contain specific email addresses separated by commas
and/or a variable that pulls specific emails from the database to
populate the field.<br />
<br />
Examples:<br />
&#10;<ul>
<li><a href="mailto:name1@appnexus.com" class="xref"
target="_blank">name1@appnexus.com</a> </li>
<li><a href="mailto:name1@appnexus.com" class="xref"
target="_blank">name1@appnexus.com</a>,<a
href="mailto:name2@appnexus.com" class="xref"
target="_blank">name2@appnexus.com</a></li>
<li> %developer_email%,name1@appnexus.com</li>
<li>%developer_email%,%installer_email%</li>
</ul>
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
</tbody>
</table>





## Examples

**Add a new app email**

``` pre
$ cat new_email.json
                      {
                      "app-email": {
                      "recipient": "Jane User",
                      "action": "put",
                      "recipient_emails": "juser@email.com",
                      "subject": "App Added",
                      "body": "Hello world!"
                      }
                      }
                      $ curl -b cookies -c cookies -X POST -d @new_email.json 'https://api.appnexus.com/app-email'
                      {
                      "response": {
                      "status": "OK"
                      "count": 1
                      "id": 54
                      "start_element": 0
                      "num_elements": 100
                      "app-email": {
                      "id": 54
                      "recipient": "Jane User"
                      "type": null
                      "action": "put"
                      "recipient_emails": "juser@email.com"
                      "subject": "App Added"
                      "body": "Hello world!"
                      "bcc": null
                      }
                      }
                      }
```

**Update an existing app email**

``` pre
$ cat update_email.json
                      {
                      "app-email":
                      {
                      "body": "Goodbye world!"
                      }
                      }
                      $ curl -b cookies -c cookies -X PUT -d @update_email 'https://api.appnexus.com/app-email?id=30'
                      {
                      "response": {
                      "status": "OK"
                      "count": 1
                      "id": "30"
                      "start_element": 0
                      "num_elements": 100
                      "app-email": {
                      "id": 30
                      "recipient": "DataTeam"
                      "type": "LogLevelData"
                      "action": "delete"
                      "recipient_emails": "psung@appnexus.com"
                      "subject": "Log Level Data consuming app %app_name% (%app_id%) has been uninstalled"
                      "body": "Goodbye world!"
                      "bcc": null
                      }
                      }
                      }
```

**View all app emails**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/app-email'
                      
                      {
                      "response": {
                      "status": "OK"
                      "count": 3
                      "start_element": 0
                      "num_elements": 100
                      "app-emails": [
                      {
                      "id": 29
                      "recipient": "SalesOps"
                      "type": "LogLevelData"
                      "action": "post"
                      "recipient_emails": "psung@appnexus.com"
                      "subject": "Log Level Data consuming app %app_name% (%app_id%) has been installed"
                      "body": "<p>Hi SalesOps, </p> <p>%subscriber_entity_name% (%subscriber_entity_id%) has installed %app_name% (%app_id%) on %installed_on%. Since %app_name% consumes LLD, please make the appropriate updates in SFDC. </p> <p>Thanks, <br /> The Apps Team</p>"
                      "bcc": null
                      },
                      {
                      "id": 32
                      "recipient" "AppDeveloper"
                      "type": null
                      "action": "delete"
                      "recipient_emails": "%developer_email%"
                      "subject": "%subscriber_entity_name% has uninstalled %app_name%"
                      "body": "<p>Hi %app_name%, </p> <p>%subscriber_entity_name% (%subscriber_entity_id%) has uninstalled your app on AppNexus. They uninstalled on %uninstalled_on%. This email is for your records.</p> <p>Thanks, <br /> The Apps Team<br /> </p>"
                      "bcc": "auser@appnexus.com"
                      },
                      {
                      "id": 34
                      "recipient": "AppSubscriber"
                      "type": null
                      "action": "delete"
                      "recipient_emails": "%installer_email%"
                      "subject": "You have uninstalled %app_name%"
                      "body": "<p>Hi %subscriber_entity_name%,</p> <p>You have uninstalled %app_name% (%app_id%) at %uninstalled_on%. This                           email is for your records. </p> <p>Thanks, <br /> The Apps Team</p>"
                      "bcc": null
                      }
                      ]
                      }
                      }
```

**View a specific app email**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/app-email?id=54'
                      
                      {
                      "response": {
                      "status": "OK"
                      "count": 1
                      "start_element": 0
                      "num_elements": 100
                      "app-email": {
                      "id": 54
                      "recipient": "Jane User"
                      "type": null
                      "action": "put"
                      "recipient_emails": "juser@email.com"
                      "subject": "App Added"
                      "body": "Hello world!"
                      "bcc": null
                      }
                      }
                      }
```

**Delete an app email**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/app-email?id=54
                      {
                      "response": {
                      "status": "OK"
                      }
                      }
```






