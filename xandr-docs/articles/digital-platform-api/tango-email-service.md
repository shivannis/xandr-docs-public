---
title: Tango Email Service
description: This service, used in combination with the <a href="xandr-api-internal/email-template-service.md" enables team to manage the sending of system emails for Tango.
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Tango Email Service

> [!NOTE]
> This service is currently available to a limited set of clients and Microsoft employees only.

This service, used in combination with the <a
href="xandr-api-internal/email-template-service.md"
class="xref" target="_blank">Email Template Service</a>, enables
team to manage the sending of system emails for
Tango. Allowing  team to manage system emails
rather than the API team provides the Tango team the ability to more
quickly iterate and deploy system email changes.



<b>Note:</b> While this service is visible to
all members, it should only be used by Xandr
employees. Therefore, this documentation will only be visible to
Xandr employees until further notice. 





## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00003fcc__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00003fcc__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00003fcc__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__2">https://api.<span
class="ph">appnexus.com/tango-email
<p>(send_email JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__3">Send
a system email</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003fcc__entry__7" class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00003fcc__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003fcc__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">The
ID of the email message that is sent.
<p><strong>Default:</strong> Auto-incremented number.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">email_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">The
ID of the template that was used to populate and format the email. You
can use the <a
href="xandr-api-internal/email-template-service.md"
class="xref" target="_blank">Email Template Service</a> to see the list
of available email templates and their IDs.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">sender_user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__9"><strong>Read Only.</strong> The ID of
the user that sent the email (POSTed to this service). Administrators
can set the value for this field to define an email sender other than
themselves.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">sender_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__9"><strong>Read Only.</strong> The ID of
the member that is associated with the user that sent the email (POSTed
to this service) . Administrators can set the value for this field to
define an email sender other than themselves.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">recipient_user_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">The
ID of the user that should receive the email.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">recipient_member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">The
ID of the member that is associated with the user that should receive
the email.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">partner_relationship_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">The
ID of the partner relationship that the email message is associated
with.
<p><strong>Required On:</strong> <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">partner_relationship_deal_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">The
ID of the trade that the email message is associated with.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">additional_fields</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">array of objects</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">You
can use this array to define a value for any additional macros that may
exist in the email template you have defined in the <code
class="ph codeph">email_id</code> field. For example, if your email
template includes a %deal_name% data placeholder you can include <code
class="ph codeph">deal_name</code> = "My Favorite Deal" in this array to
provide the deal name that should display within the email text.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__7"><code
class="ph codeph">recipient_is_buyer</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003fcc__entry__8">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00003fcc__entry__9">If
true, the recipient of the email is the buyer in the partner
relationship. This field is not currently being used.
<p><strong>Default:</strong> <code
class="ph codeph">false</code></p></td>
</tr>
</tbody>
</table>





## Examples



**Send a system email**

``` pre
$ cat send_email
{
 "tango_email":
  {     "email_id" : 19,
        "recipient_member_id" : 3837,
        "partner_relationship_id" : 175
  }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @send_email.json "https://api.appnexus.com/tango-email"
{
  "response": {
    "status": "OK",
    "id": 0,
    "count": 1
  }
}
```






