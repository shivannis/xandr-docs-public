---
Title : API Semantics
Description : This page explains how to work with our impression bus REST API. It
ms.date : 10/28/2023
---


# API Semantics



This page explains how to work with our impression bus REST API. It
includes information on:

- How to authenticate
- How to ask a service about itself: what fields it supports, which can
  be used to filter
- Response codes and errors



<b>Note:</b> For more information about how to
work with specific API services, see the links at <a
href="api-services.md"
class="xref" target="_blank">API Services</a>.





## HTTP Protocol

Xandr's impression bus API supports HTTP
Protocol version 1.1 or later. While some calls may work with the
deprecated 1.0 version, this is not guaranteed. Please ensure that your
client communicates using at least version 1.1.





## API Endpoints

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000010b__entry__1"
class="entry colsep-1 rowsep-1">Environment</th>
<th id="ID-0000010b__entry__2" class="entry colsep-1 rowsep-1">URL</th>
<th id="ID-0000010b__entry__3"
class="entry colsep-1 rowsep-1">Notes</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__1">Production</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__2"><code
class="ph codeph">https://api.</code><code
class="ph codeph">adnxs</code><code
class="ph codeph">.com</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__3">We
require using a secure endpoint (<code
class="ph codeph">https://</code>) for our production API to ensure the
privacy of your data. Non-secure access to the product API (HTTP) is not
available.</td>
</tr>
</tbody>
</table>





## REST

Xandr API services are "RESTful." REST
(Representational State Transfer) is a type of software architecture in
which requests model the communication from a web browser to a web
server. Below are the central REST methods used in
Xandr's API Services and their uses:

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">POST</td>
<td class="entry colsep-1 rowsep-1">create/add</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">GET</td>
<td class="entry colsep-1 rowsep-1">read/retrieve</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1">PUT</td>
<td class="entry colsep-1 rowsep-1">update/modify</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1">DELETE</td>
<td class="entry colsep-1 rowsep-1">delete</td>
</tr>
</tbody>
</table>

In our documentation we use
<a href="http://us2.php.net/curl" class="xref" target="_blank">curl</a>
to make REST requests. Curl is a command line tool for transferring
files with URL syntax, supporting FTP, FTPS, HTTP, HTTPS, SCP, SFTP,
TFTP, TELNET, DICT, LDAP, LDAPS and FILE. The example scripts on each
API wiki page will make clear the structure of the curl commands you
will need to run Xandr's API Services.





## Append on PUT

For `PUT` requests, only the fields included in the
<a href="http://json.org/" class="xref" target="_blank">JSON</a> file
will be updated, **except in the case of arrays**.

When updating an array using `PUT`, all fields in the array are
overwritten with the contents of the new array you upload, unless you
add this to your request's query string: `"append=true"`.





## Meta calls

All Bidder Services support meta calls, which will return the service's
fields and the value type. Meta calls look like this:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/SERVICE/meta'
```

  
For example (partial output of a meta call):

``` pre
            "bidder_id": {
                "type": "int"
            },
            "agent_id": {
                "type": "int"
            },
            "code": {
                "type": "string"
            },
            "active": {
                "type": "boolean"
```





## Limiting GET Request Records

Adding this string to the end of any GET request to the API will limit
the number of records retrieved:

``` pre
?start_element=N&num_elements=N
```

  
**Examples**

``` pre
segment/1?start_element=0&num_elements=1000
member?start_element=0&num_elements=100
creative/1?start_element=0&num_elements=200
```



<b>Note:</b> The maximum number of elements
that can be returned regardless of your request is 100.



- The first element is element 0.
- All GET responses will have a "count" property showing the total
  number of elements matching that GET request.
- This will also apply to non-reporting services, such as the creative
  search service, that are requested with methods other than GETs.





## Filtering and Sorting

Most API Services support filtering and sorting. Filtering allows you to
specify a subset of objects to be returned. Sorting allows you to
control the order of the objects returned.

**Get multiple objects by ID**

You can get multiple specific objects by ID by passing a comma-separated
list of IDs. The result object will contain an array holding just those
specific objects. In the example below, we ask the <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for just the creatives
with IDs 1, 2, and 3.

``` pre
$ curl -bc -cc 'https://api.adnxs.com/creative?id=1,2,3
{ 
  "response" : {
     "count" : 3,
     "status" : "OK",
     "creatives" : [ ... ]
  }
}
      
```

**Filter by IDs**

Pass a query string parameter for the field with a comma-separated list
of IDs.

Example: Request all creatives for certain members.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative?member_id=123,987' 
```



<b>Note:</b> Only 100 objects will be returned
per request

The maximum number of objects that can be returned, regardless of
pagination, is 100. If you request over 100 objects, we will only return
the first 100 and will not provide an error message.



**Filter by Min and Max Values**

Fields that are of the type `int`, `double`, `date`, or `money` can be
filtered by `min` and `max`. For example:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative?min_id=47'
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative?min_brand_id=20'
```

Fields of the type `date` can be filtered using
the `min_last_modified` filter. Note the required date/time
syntax: YYYY-MM-DD+HH:MM:SS

``` pre
$ curl -b cookies 'https://api.adnxs.com/creative/114?min_last_activity=2017-10-27+21:00:00'
```

**Filter by field names**

To limit the response to specific fields of an object, pass the `fields`
query string parameter with a comma-separated list of field names. For
example:

``` pre
$ curl -b cookies "https://api.adnxs.com/user/current&fields=username,user_type,id"
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "user":{
            "id":14311,
             "username":"rloveland",
             "user_type":"admin"
        }
    }
}
 
    
```

**Misc Filters on Field**

We support the following additional field-based filters on API
responses:

- `not_*`
- `like_*`
- `min_*`
- `max_*`
- `nmin_*`
- `nmax_*`
- `having_*`
- `having_min_*`
- `having_max_*`

Example:

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/creative?like_[fieldName]=partialValue'
```





## JSON Field Values

POST and PUT requests require JSON-formatted data. POST request
generally create objects in the database, and thus require all of the
information about that object (unless it is subsequently modified by a
PUT request). For PUT requests, only the JSON fields included in a
request will be updated. All other fields will be unchanged.

Different fields require different types of values.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000010b__entry__15"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000010b__entry__16"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-0000010b__entry__17"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">True/False</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">True</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">String(100)</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">String of 100 characters or less</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">male_26_likes_cheese</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">Integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">87</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Unsigned</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">Positive integers only</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">745</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">Floating point number</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">3.12</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Double</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">Floating point number with twice the
bit space of a float.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">3.12</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__16">One
element from an array of preassigned values only</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">male/female</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">Date and time string in the form
YYYY-MM-DD HH:MM:SS</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">2009-01-14 05:41:04</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__15">Array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__16">More than one value allowed</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__17">[87,45]</td>
</tr>
</tbody>
</table>





## Authentication

Before you can use the APIs, you must authenticate yourself with your
username and password. Please see <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> for details.





## Response Codes

All API Services return JSON-formatted data. When Service calls are
successful, the JSON response will include a "status" field set to "OK".
The response to POST and PUT calls will also include the ID of the
relevant object, such as bidder, member, tag, or creative, as well as
any relevant attributes of that object. (In the example below we are
using cookies to store our authentication token and adding the file
"tag" to the Tiny Tag Service.)

``` pre
$ curl -b cookies -c cookies -X POST --data-binary @tag https://api.adnxs.com/tt/32/
{
    "response": {
        "status": "OK",
        "id": "242"
    }
}
```





## Errors

When invalid input is sent to the API - for example, an incorrect
password - a JSON response will be returned with "error" and "error_id"
fields. For some error conditions you may also see the optional
"error_description" and "error_code" fields.

``` pre
$ curl -b cookies -c cookies 'https://api.adnxs.com/api/auth?username=admin&password=Wr0ngP@ss'
{
    "response": {
        "error": "No match found for user\/pass",
        "error_id": "NOAUTH"
    }
}
```

The "error" field is useful for debugging purposes, as it contains a
verbose description of the error. The "error_id" field can be used
programmatically as follows.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000010b__entry__45"
class="entry colsep-1 rowsep-1">Error_ID</th>
<th id="ID-0000010b__entry__46"
class="entry colsep-1 rowsep-1">Meaning</th>
<th id="ID-0000010b__entry__47"
class="entry colsep-1 rowsep-1">Logic</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__45">NOAUTH</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__46">Authentication information is either
missing or invalid</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__47">Use
/auth to get a valid token</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__45">UNAUTH</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__46">The
user is not authorized to take the requested action</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__47">Check 'error' message and make sure
logic is correct in code</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__45">SYNTAX</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__46">The
syntax of the request is incorrect</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__47">Use
the 'error' message to identify the issue and fix the code</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__45">SYSTEM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__46">A
system error has occurred</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__47">Contact <span
class="ph">Xandr</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__45">INTEGRITY</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000010b__entry__46">A
client request is inconsistent; for example, an attempt to delete a
default creative attached to an active TinyTag</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000010b__entry__47">Check the request for integrity</td>
</tr>
</tbody>
</table>





## Related Topics

- <a href="api-services.md" class="xref">API Services</a>
- <a href="bidder-api-services.md" class="xref">Bidder API Services</a>






