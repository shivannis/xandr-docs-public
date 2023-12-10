---
Title : Email Template Service
Description : Administrators use this service to create and manage templates for
ms.date: 10/28/2023
ms.custom: digital-platform-api
system-generated emails. A template will define an email's content and
---


# Email Template Service



Administrators use this service to create and manage templates for
system-generated emails. A template will define an email's content and
styling. This service was developed to more easily manage Tango emails.
However, the service can be used to manage a template for system emails
of any kind.  



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002281__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002281__entry__2" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002281__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__2"><a
href="https://api.appnexus.com/email-template" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/email-template</a><br />
&#10;<p>(add_template JSON)</p></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__3">Add
a new email template</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__2"><a
href="https://api.appnexus.com/email-template" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/email-template</a><br />
&#10;<p>(modify_template JSON)</p></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__3">Modify an existing email template</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__2"><a
href="https://api.appnexus.com/email-template" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/email-template</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__3">View
all email templates</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__2"><a
href="https://api.appnexus.com/email-template/id=EMAIL_TEMPLATE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/email-template?id=EMAIL_TEMPLATE_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__3">View
a specific email template</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__2"><a
href="https://api.appnexus.com/email-template/id=EMAIL_TEMPLATE_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/email-template?id=EMAIL_TEMPLATE_ID</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__3">Delete an email template</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002281__entry__19"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00002281__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002281__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__21">The
ID of the email template.
<p><strong>Default:</strong> Auto-incremented number.</p>
<p><strong>Required On:</strong> <code class="ph codeph">PUT</code>, in
query string.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__21">The
name of the email template.
<p><strong>Default:</strong>NA</p>
<p><strong>Required On:</strong><code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__19"><code
class="ph codeph">subject</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__21">The
text that should appear in the subject line of the email.
<p><strong>Default:</strong>NA</p>
<p><strong>Required On:</strong><code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__19"><code
class="ph codeph">body</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002281__entry__21">The
text that should appear in the body of the email.
<p><strong>Default:</strong>NA</p>
<p><strong>Required On:</strong><code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002281__entry__21"><strong>Read Only.</strong> The date
the email template was last modified.
<p><strong>Default:</strong>NA</p>
<p><strong>Required On:</strong>NA</p></td>
</tr>
</tbody>
</table>





## Examples



**Add an email template**

``` pre
$ cat add_template

{
 "email_template":
  {     "name" : "Test RMS",
        "subject" : "My email is about this subject",
        "body" : "To whom it may concern, \r We are contacting you today to inform you of this information. \r Thank you for your time, \r -The Team"
  }
}
```



``` pre
$ curl -b cookies -c cookies -X POST -d @add_template.json "https://api.appnexus.com/email-template"
{
  "response": {
    "status": "OK",
    "count": 1,
    "email_template": {
      "id": 35,
      "name": "Test RMS",
      "subject": "My email is about this subject",
      "body": "To whom it may concern, \r We are contacting you today to inform you of this information. \r Thank you for your time, \r -The Team",
      "last_modified": "1970-01-01 00:00:01"
    }
  }
}
```

**Modify an email template**



In this example, the PUT request updates the subject line in email
template 35.

``` pre
$ cat modify_template

{
 "email_template":
  { "id": 35,
    "subject" : "Email subject line"
  }
}
```



``` pre
$ curl -b cookies -c cookies -X PUT -d @modify_template.json "https://api.appnexus.com/email-template"
{
  "response": {
    "status": "OK",
    "count": 1,
    "id": 35,
    "start_element": 0,
    "num_elements": 100,
    "email_template": {
      "id": 35,
      "name": "Test RMS",
      "subject": "Email subject line",
      "body": "To whom it may concern, \r We are contacting you today to inform you of this information. \r Thank you for your time, \r -The Team",
      "last_modified": "2013-11-01 16:22:23"
    }
  }
}
```

**View all email templates**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/email-template"
{
  "response": {
    "status": "OK",
    "count": 12,
    "email_templates": [
      {
        "id": 19,
        "name": "Seller sends proposal (to buyer)",
        "subject": "Tango: New Proposal from %sender_member_billing_name% (sent from )",
        "body": "\n<!DOCTYPE html PUBLIC \"-\/\/W3C\/\/DTD XHTML 1.0 Transitional\/\/EN\" \"http:\/\/www.w3.org\/TR\/xhtml1\/DTD\/xhtml1-transitional.dtd\">\n<html xmlns=\"http:\/\/www.w3.org\/1999\/xhtml\">\n<head>\n\t<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=utf-8\" \/>\n\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" \/>\n\t<title>Tango: New Proposal from %sender_member_billing_name%<\/title>\n\t<style type=\"text\/css\">\n\t@media only screen and (max-width: 600px){\n\t\t\tbody,table,td,a,li,blockquote{\n\t\t\t\t-webkit-text-size-adjust:none !important;\n\t\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttable[class=\"wrapper\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttd[class=\"cell\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t<\/style>\n<\/head>\n\n<body bgcolor=\"#ffffff\" topmargin=\"0\" leftmargin=\"0\" marginheight=\"0\" marginwidth=\"0\" style=\"min-width: 100% !important; background-color:#ffffff; background-image: none; background-repeat: repeat; background-attachment: scroll;\">\n\n<table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td bgcolor=\"#ffffff\" width=\"100%\">\n\t\t\t\t<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" width=\"600\">\n\t\t\t\t\t<tbody>\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"cell\" width=\"600\">\n\t\t\t\t\t\t\t\t<!-- content start -->\n\t\t\t\t\t\t\t\t<table border=\"0\" bgcolor=\"#ffffff\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"100%\">\n\t\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%recipient_member_id%.gif\" alt=\"\" width=\"150\" style=\"border-right:1px solid #ececec;\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-tango-logo.gif\" width=\"67\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"text-align: right; border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-bg.gif\" width=\"208\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%sender_member_id%.gif\" style=\"border:1px solid #ececec; -moz-border-radius:6px; -webkit-border-radius:6px;\" width=\"150\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"font-family: Arial; font-size: 12px; color: #666;\">%sender_member_billing_name% has sent you a new proposal for %partner_relationship_deal_start_date% - %partner_relationship_deal_end_date%.<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"width:100%; -webkit-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); -moz-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); background: #faa23f; border:1px solid #eba249; -moz-border-radius:6px; -webkit-border-radius:6px; text-align: center\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http:\/\/tango.sand.console.appnexus.com\/v2\/partner:%sender_member_id%\/seller?tradeId=%partner_relationship_deal_id%\" style=\"color:#fff; font-family: Arial; font-weight: bold; text-decoration:none; text-shadow: 0px -1px 0px rgba(0, 0, 0, .25); -moz-text-shadow: 0px -1px 1px rgba(150, 150, 150, 1); line-height:40px;\">Review the Proposal<\/a>\n\t\t\t\t\t\t\t\t\t\t\t\t<\/div>\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"text-align: center; font-family: Arial; font-size: 11px; color: #999;\">This is an automatically generated email, please do not reply to this email address.<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t\t\t\t<\/table>\n\t\t\t\t\t\t\t\t<!-- content end -->\n\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t<\/tbody>\n\t\t\t\t<\/table>\n\t\t\t<\/td>\n\t\t<\/tr>\n\t<\/tbody>\n<\/table>\n<custom name=\"opencounter\" type=\"tracking\" \/>\n<\/body>\n<\/html>\n",
        "last_modified": "2013-10-15 21:14:24"
      },
      {
        "id": 20,
        "name": "Seller updates proposal (to buyer)",
        "subject": "Tango: Proposal Updated by %sender_member_billing_name% (sent from )",
        "body": "\n<!DOCTYPE html PUBLIC \"-\/\/W3C\/\/DTD XHTML 1.0 Transitional\/\/EN\" \"http:\/\/www.w3.org\/TR\/xhtml1\/DTD\/xhtml1-transitional.dtd\">\n<html xmlns=\"http:\/\/www.w3.org\/1999\/xhtml\">\n<head>\n\t<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=utf-8\" \/>\n\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" \/>\n\t<title>Tango: Proposal Updated by %sender_member_billing_name%<\/title>\n\t<style type=\"text\/css\">\n\t@media only screen and (max-width: 600px){\n\t\t\tbody,table,td,a,li,blockquote{\n\t\t\t\t-webkit-text-size-adjust:none !important;\n\t\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttable[class=\"wrapper\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttd[class=\"cell\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t<\/style>\n<\/head>\n\n<body bgcolor=\"#ffffff\" topmargin=\"0\" leftmargin=\"0\" marginheight=\"0\" marginwidth=\"0\" style=\"min-width: 100% !important; background-color:#ffffff; background-image: none; background-repeat: repeat; background-attachment: scroll;\">\n\n<table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td bgcolor=\"#ffffff\" width=\"100%\">\n\t\t\t\t<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" width=\"600\">\n\t\t\t\t\t<tbody>\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"cell\" width=\"600\">\n\t\t\t\t\t\t\t\t<!-- content start -->\n\t\t\t\t\t\t\t\t<table border=\"0\" bgcolor=\"#ffffff\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"100%\">\n\t\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%recipient_member_id%.gif\" alt=\"\" width=\"150\" style=\"border-right:1px solid #ececec;\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-tango-logo.gif\" width=\"67\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"text-align: right; border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-bg.gif\" width=\"208\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%sender_member_id%.gif\" style=\"border:1px solid #ececec; -moz-border-radius:6px; -webkit-border-radius:6px;\" width=\"150\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"font-family: Arial; font-size: 12px; color: #666;\">%sender_member_billing_name% has updated a proposal for %partner_relationship_deal_start_date% - %partner_relationship_deal_end_date%.<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"width:100%; -webkit-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); -moz-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); background: #faa23f; border:1px solid #eba249; -moz-border-radius:6px; -webkit-border-radius:6px; text-align: center\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http:\/\/tango.sand.console.appnexus.com\/v2\/partner:%sender_member_id%\/seller?tradeId=%partner_relationship_deal_id%\" style=\"color:#fff; font-family: Arial; font-weight: bold; text-decoration:none; text-shadow: 0px -1px 0px rgba(0, 0, 0, .25); -moz-text-shadow: 0px -1px 1px rgba(150, 150, 150, 1); line-height:40px;\">Review the Proposal<\/a>\n\t\t\t\t\t\t\t\t\t\t\t\t<\/div>\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"text-align: center; font-family: Arial; font-size: 11px; color: #999;\">This is an automatically generated email, please do not reply to this email address.<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t\t\t\t<\/table>\n\t\t\t\t\t\t\t\t<!-- content end -->\n\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t<\/tbody>\n\t\t\t\t<\/table>\n\t\t\t<\/td>\n\t\t<\/tr>\n\t<\/tbody>\n<\/table>\n<custom name=\"opencounter\" type=\"tracking\" \/>\n<\/body>\n<\/html>\n",
        "last_modified": "2013-10-29 17:58:13"
      },
      
...
      {
        "id": 29,
        "name": "Buyer posts AS message (to seller)",
        "subject": "Tango: New Message from %sender_member_billing_name% (sent from )",
        "body": "\n<!DOCTYPE html PUBLIC \"-\/\/W3C\/\/DTD XHTML 1.0 Transitional\/\/EN\" \"http:\/\/www.w3.org\/TR\/xhtml1\/DTD\/xhtml1-transitional.dtd\">\n<html xmlns=\"http:\/\/www.w3.org\/1999\/xhtml\">\n<head>\n\t<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=utf-8\" \/>\n\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" \/>\n\t<title>Tango: New Message from %sender_member_billing_name%<\/title>\n\t<style type=\"text\/css\">\n\t@media only screen and (max-width: 600px){\n\t\t\tbody,table,td,a,li,blockquote{\n\t\t\t\t-webkit-text-size-adjust:none !important;\n\t\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttable[class=\"wrapper\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttd[class=\"cell\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t<\/style>\n<\/head>\n\n<body bgcolor=\"#ffffff\" topmargin=\"0\" leftmargin=\"0\" marginheight=\"0\" marginwidth=\"0\" style=\"min-width: 100% !important; background-color:#ffffff; background-image: none; background-repeat: repeat; background-attachment: scroll;\">\n\n<table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td bgcolor=\"#ffffff\" width=\"100%\">\n\t\t\t\t<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" width=\"600\">\n\t\t\t\t\t<tbody>\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"cell\" width=\"600\">\n\t\t\t\t\t\t\t\t<!-- content start -->\n\t\t\t\t\t\t\t\t<table border=\"0\" bgcolor=\"#ffffff\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"100%\">\n\t\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%recipient_member_id%.gif\" alt=\"\" width=\"150\" style=\"border-right:1px solid #ececec;\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-tango-logo.gif\" width=\"67\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"text-align: right; border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-bg.gif\" width=\"208\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%sender_member_id%.gif\" style=\"border:1px solid #ececec; -moz-border-radius:6px; -webkit-border-radius:6px;\" width=\"150\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"background: #e6f1f6; font-weight: bold; font-family: Arial; font-size: 12px; color: #5c6a75; padding: 5px; border:1px solid #639bc5; -moz-border-radius: 6px; -webkit-border-radius: 6px;\">%sender_member_billing_name% has sent you a message:<\/div>\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"font-family: Arial; font-size: 12px; color: #666;\">%message%<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"width:100%; -webkit-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); -moz-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); background: #faa23f; border:1px solid #eba249; -moz-border-radius:6px; -webkit-border-radius:6px; text-align: center\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http:\/\/tango.sand.console.appnexus.com\/v2\/partner:%sender_member_id%\/buyer\" style=\"color:#fff; font-family: Arial; font-weight: bold; text-decoration:none; text-shadow: 0px -1px 0px rgba(0, 0, 0, .25); -moz-text-shadow: 0px -1px 1px rgba(150, 150, 150, 1); line-height:40px;\">Respond via Tango<\/a>\n\t\t\t\t\t\t\t\t\t\t\t\t<\/div>\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"text-align: center; font-family: Arial; font-size: 11px; color: #999;\">This is an automatically generated email, please do not reply to this email address.<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t\t\t\t<\/table>\n\t\t\t\t\t\t\t\t<!-- content end -->\n\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t<\/tbody>\n\t\t\t\t<\/table>\n\t\t\t<\/td>\n\t\t<\/tr>\n\t<\/tbody>\n<\/table>\n<custom name=\"opencounter\" type=\"tracking\" \/>\n<\/body>\n<\/html>\n",
        "last_modified": "2013-10-15 21:14:12"
      },
      {
        "id": 32,
        "name": "Seller posts AS message (to buyer)",
        "subject": "Tango: New Message from %sender_member_billing_name% (sent from )",
        "body": "\n<!DOCTYPE html PUBLIC \"-\/\/W3C\/\/DTD XHTML 1.0 Transitional\/\/EN\" \"http:\/\/www.w3.org\/TR\/xhtml1\/DTD\/xhtml1-transitional.dtd\">\n<html xmlns=\"http:\/\/www.w3.org\/1999\/xhtml\">\n<head>\n\t<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=utf-8\" \/>\n\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" \/>\n\t<title>Tango: New Message from %sender_member_billing_name%<\/title>\n\t<style type=\"text\/css\">\n\t@media only screen and (max-width: 600px){\n\t\t\tbody,table,td,a,li,blockquote{\n\t\t\t\t-webkit-text-size-adjust:none !important;\n\t\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttable[class=\"wrapper\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t@media only screen and (max-width: 600px) {\n\t\ttd[class=\"cell\"] {\n\t\t\twidth: 100%;\n\t\t}\n\t}\n\t<\/style>\n<\/head>\n\n<body bgcolor=\"#ffffff\" topmargin=\"0\" leftmargin=\"0\" marginheight=\"0\" marginwidth=\"0\" style=\"min-width: 100% !important; background-color:#ffffff; background-image: none; background-repeat: repeat; background-attachment: scroll;\">\n\n<table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td bgcolor=\"#ffffff\" width=\"100%\">\n\t\t\t\t<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" width=\"600\">\n\t\t\t\t\t<tbody>\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"cell\" width=\"600\">\n\t\t\t\t\t\t\t\t<!-- content start -->\n\t\t\t\t\t\t\t\t<table border=\"0\" bgcolor=\"#ffffff\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"100%\">\n\t\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%recipient_member_id%.gif\" alt=\"\" width=\"150\" style=\"border-right:1px solid #ececec;\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-tango-logo.gif\" width=\"67\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"text-align: right; border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/jlenehan.adnxs.net\/images\/tf\/email-bg.gif\" width=\"208\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"150\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/tango.sand.console.appnexus.com\/images\/tf\/pilot-logos\/%sender_member_id%.gif\" style=\"border:1px solid #ececec; -moz-border-radius:6px; -webkit-border-radius:6px;\" width=\"150\"\/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"15\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"15\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"2\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"background: #e6f1f6; font-weight: bold; font-family: Arial; font-size: 12px; color: #5c6a75; padding: 5px; border:1px solid #639bc5; -moz-border-radius: 6px; -webkit-border-radius: 6px;\">%sender_member_billing_name% has sent you a message:<\/div>\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"font-family: Arial; font-size: 12px; color: #666;\">%message%<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr style=\"border-bottom:1px solid #ececec;\">\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"6\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"1\" height=\"20\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\">\n\t\t\t\t\t\t\t\t\t\t\t\t<div style=\"width:100%; -webkit-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); -moz-box-shadow: inset 0px 1px 0px 0px rgba(255,255,255,0.66); background: #faa23f; border:1px solid #eba249; -moz-border-radius:6px; -webkit-border-radius:6px; text-align: center\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http:\/\/tango.sand.console.appnexus.com\/v2\/partner:%sender_member_id%\/seller\" style=\"color:#fff; font-family: Arial; font-weight: bold; text-decoration:none; text-shadow: 0px -1px 0px rgba(0, 0, 0, .25); -moz-text-shadow: 0px -1px 1px rgba(150, 150, 150, 1); line-height:40px;\">Respond via Tango<\/a>\n\t\t\t\t\t\t\t\t\t\t\t\t<\/div>\n\t\t\t\t\t\t\t\t\t\t\t\t<p style=\"text-align: center; font-family: Arial; font-size: 11px; color: #999;\">This is an automatically generated email, please do not reply to this email address.<\/p>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t\t<td style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;\" width=\"20\">\n\t\t\t\t\t\t\t\t\t\t\t\t<img src=\"http:\/\/sand.console.appnexus.com\/images\/no-favicon.gif\" width=\"20\" height=\"1\" alt=\"\" \/>\n\t\t\t\t\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t\t\t\t\t<\/tbody>\n\t\t\t\t\t\t\t\t<\/table>\n\t\t\t\t\t\t\t\t<!-- content end -->\n\t\t\t\t\t\t\t<\/td>\n\t\t\t\t\t\t<\/tr>\n\t\t\t\t\t<\/tbody>\n\t\t\t\t<\/table>\n\t\t\t<\/td>\n\t\t<\/tr>\n\t<\/tbody>\n<\/table>\n<custom name=\"opencounter\" type=\"tracking\" \/>\n<\/body>\n<\/html>\n",
        "last_modified": "2013-10-28 18:16:23"
      }
    ]
  }
}
```

**View a specific email template**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/email-template?id=35"
{
  "response": {
    "status": "OK",
    "count": 1,
    "email_template": {
      "id": 35,
      "name": "Test RMS",
      "subject": "Email subject line",
      "body": "To whom it may concern, \r We are contacting you today to inform you of this information. \r Thank you for your time, \r -The Team",
      "last_modified": "2013-11-01 16:22:23"
    }
  }
}
```

**Delete an email template**

``` pre
$ curl -b cookies -c cookies -X DELETE "https://api.appnexus.com/email-template?id=35"
{
  "response": {
    "status": "OK"
  }
}
```






