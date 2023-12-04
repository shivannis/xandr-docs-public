---
Title : Header Requests
## Browser and Header Requests
So we now understand the syntax of how web browsers locate resources,
but what good does just locating resources do? (And, BTW, the way that
the request gets physically routed, say from your apartment in Dallas to
a New York Times server in Tampa, is another story.) We also want to be
ms.date : 10/28/2023
ms.custom : industry-reference
---


# Header Requests




## Browser and Header Requests

So we now understand the syntax of how web browsers locate resources,
but what good does just locating resources do? (And, BTW, the way that
the request gets physically routed, say from your apartment in Dallas to
a New York Times server in Tampa, is another story.) We also want to be
able to do things with these resources. The description of what you want
to do with the resource is in your Browser's "header request."

Browser Headers have the following format:



``` pre
Request
Headers
Body of the Message
```



## Actual Browser Request

I wanted to see an actual browser request so I downloaded the Firefox
add-on <a
href="https://addons.mozilla.org/en-US/firefox/addon/http-header-live/versions/"
class="xref" target="_blank">Live HTTP Headers</a> to view the HTTP
headers I was sending. This is an example of a header when I typed in
www.google.com. The request is a GET Request because I want the page
retrieved. And the header lists information and requirements such as
return the content in English, I'm using Mozilla Firefox Version 3.6.6
and others you can read below. As you can see, this Request contains no
Body of the Message.  
![Actual Browser Request](media/actual-browser-request.png)





## Description of Each Element in a Request

**Request:** This is the action that the client wants the server to
perform on the resource, such as "download content from nytimes.com."
The most common possible actions are below.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000014c8__entry__1"
class="entry align-left colsep-1 rowsep-1">METHOD</th>
<th id="ID-000014c8__entry__2"
class="entry align-left colsep-1 rowsep-1">Description</th>
<th id="ID-000014c8__entry__3"
class="entry align-left colsep-1 rowsep-1">New York Times L.A. Article
Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Retrieve the resource</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">If you just wanted to see the article,
the GET command would retrieve the content.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Allow whatever is the body of the
message to be posted as a subordinate to the resource</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">If you want to comment on the article,
the post command would take what you wrote in the Body of the Message
and Post it to the existing content.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Stores the body of the message under the
URL as an updated version</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">If you wanted to edit the comment you
just made, you could use the PUT command.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Requests that the hosting server delete
the resource</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">If you wanted to delete your
comment</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">TRACE</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Repeats the request that the server is
reading, allows you to see what the server is seeing</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">Would allow you to see what the NY Times
server is reading</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">OPTIONS</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Returns the possible actions that a
particular server accepts for a particular resource</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">If you wanted to see what capabilities
the NY Times was giving you. For example, the NY Times might only allow
you to add comments and not delete them, so DELETE would not be returned
as an action you could perform</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__1">CONNECT</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__2">Used to create a secure connection
(https)</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000014c8__entry__3">If you were signing up for the NY Times
online and needed to input your credit card information, this is the
request your browser would make to get a secure connection</td>
</tr>
</tbody>
</table>

**Headers:** Contain the operating parameters of the HTTP Request.
Examples of headers are what kind of language your browser accepts,
content types, character fields, etc. Wikipedia has a pretty
comprehensive list of possible headers here
<a href="http://en.wikipedia.org/wiki/List_of_HTTP_header_fields"
class="xref"
target="_blank">https://en.wikipedia.org/wiki/List_of_HTTP_header_fields</a>.

**An Empty Line**

**Body of the Message:** contains information that is used during a POST
or PUT command.






