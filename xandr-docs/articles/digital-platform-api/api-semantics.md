---
Title : API Semantics
Description : This page explains the semantics of our REST API. It includes
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# API Semantics



This page explains the semantics of our REST API. It includes
information on:

- How to ask a service about itself: what fields it supports, which
  fields are filterable
- How to get only the information you want by filtering and sorting
- The "shape" of our
  <a href="http://json.org/" class="xref" target="_blank">JSON</a>
  responses in different scenarios

This document assumes you have completed the <a
href="api-onboarding-process.md"
class="xref" target="_blank">API Onboarding Process</a> .



## HTTP Protocol

The Digital Platform API supports HTTP Protocol version 1.1 or later.
While some calls may work with the deprecated 1.0 version, this is not
guaranteed. Please ensure that your client communicates using at least
version 1.1.





## API Endpoints

The URL for the production API endpoint is:
<a href="https://api.appnexus.com/" class="xref"
target="_blank">https://api.appnexus.com</a>.
(Xandr products are powered by
AppNexus technology.) Please note that
non-secure access to the product API (HTTP) is not available.

Changes made with this API affect the production environment. Only
authorized users should alter information or settings in this
environment.





## REST Semantics

Our API services are RESTful. REST (Representational State Transfer) is
a type of software architecture in which requests model the
communication from a web browser to a web server. Below are the central
REST methods used in our API services, and their uses:

<table class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1">Create</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1">Read</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1">Update</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1">Delete</td>
</tr>
</tbody>
</table>

When making a `POST` or `PUT` request, you must include a
<a href="http://json.org/" class="xref" target="_blank">JSON</a> file
with the data to create or update.



<b>Warning:</b> PUT overwrites arrays unless
'append=true' is added to query string

For `PUT` requests, only the fields included in the
<a href="http://json.org/" class="xref" target="_blank">JSON</a> file
will be updated, **except in the case of arrays**. When updating an
array using `PUT`, all fields in the array are **overwritten with the
contents of the new array** you upload, unless you append the following
to your request query string: `"append=true"`.

**Example "legacy" `PUT` request for updating an array**

This example walks you through the process of properly updating the
`pixels` array of creative ID 503577 using the "legacy" method; in other
words, with the "overwrite arrays on `PUT`" behavior that occurs unless
you append the string `"append=true"` to the query string of your
request.

First, let's look at the creative. Note that the `pixels` array already
includes one pixel.

``` pre
$ curl -b cookies 'https://api.appnexus.com/creative?id=503577'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            ...
            "pixels": [
                {
                    "id": 196,
                    "pixel_template_id": null,
                    "param_1": null,
                    "param_2": null,
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-js",
                    "url": "https://50.16.221.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}"
                }
            ],
            ...
        }
    }
}
```

Next, we create the
<a href="http://json.org/" class="xref" target="_blank">JSON</a> file
for adding a new pixel to the creative. In the file, we include both the
new pixel that we want to **add** and the pixel that was already
attached to the creative.

If we don't include the existing pixel in the
<a href="http://json.org/" class="xref" target="_blank">JSON</a> file,
our update will delete that pixel from the creative.

``` pre
$ cat creative_update
{
    "creative": {
        "pixels": [
            {
                "format": "url-js",
                "url":"https://12.19.232.312/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}&ref=${REFERER_URL}"
            },
            {
                "id": 196,
                "format": "url-js",
                "url": "https://50.18.232.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}"
            }
        ]
    }
}
```

Then we make a `PUT` call to update the creative with the information in
the <a href="http://json.org/" class="xref" target="_blank">JSON</a>
file. Note that the `pixels` array in the response includes both the new
and old pixels.

``` pre
$ curl -b cookies -X PUT -d @creative_update 'https://api.appnexus.com/creative?id=503577'
{
    "response": {
        "status": "OK",
        "count": 1,
        "id": "503577",
        "start_element": 0,
        "num_elements": 100,
        "creative": {
            "name": null,
            "brand_id": 1,
            "media_url": "https://creative.com/300x250",
            "id": 503577,
            ...
            "pixels": [
                {
                    "id": 196,
                    "pixel_template_id": null,
                    "param_1": null,
                    "param_2": null,
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-js",
                    "url": "https://50.16.221.228/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}
                     &ref=${REFERER_URL}&campaign_id=147"
                },
                {
                    "id": 197,
                    "pixel_template_id": null,
                    "param_1": null,
                    "param_2": null,
                    "param_3": null,
                    "param_4": null,
                    "param_5": null,
                    "format": "url-js",
                    "url":"https://12.13.234.312/render_js?cb=${CACHEBUSTER}&uid=${USER_ID}&ref=${REFERER_URL}"
                }
            ],
            ...
        }
    }
}
```







## Using cURL

In our documentation we use
<a href="http://us2.php.net/curl" class="xref" target="_blank">curl</a>
to make HTTP requests. Curl is a command-line tool for transferring
files with URL syntax, supporting FTP, FTPS, HTTP, HTTPS, SCP, SFTP,
TFTP, TELNET, DICT, LDAP, LDAPS, and more. Example scripts have been
provided on each API wiki page to illustrate the structure of the `curl`
commands you will need to run Xandr API
services. In addition, an example of how to a make a generic `POST`
request is shown below. This example uses the <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a>:

``` pre
$ curl -b cookies -c cookies -X POST -d @auth.json 'https://api.appnexus.com/auth'
```

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000000d2__entry__9" class="entry colsep-1 rowsep-1">Chunk of
Request</th>
<th id="ID-000000d2__entry__10" class="entry colsep-1 rowsep-1">What it
Means</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__9"><code
class="ph codeph">-c cookies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__10">Creates a text file called "cookies"
and stores your session token (assigned by the <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a>). This is not a
required argument to <code class="ph codeph">curl</code> after the
initial authentication, but it doesn't affect subsequent calls if it is
included.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__9"><code
class="ph codeph">-b cookies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__10">Retrieves the authentication token that
you previously stored in the "cookies" text file.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__9"><code class="ph codeph">-X</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__10">Indicates that you are going to make a
certain type of request, in this case "POST".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__9"><code class="ph codeph">-d</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__10">Indicates that you are going to upload
a file, in this case "auth.json".</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__9"><code
class="ph codeph">'https://api.</code><code
class="ph codeph">appnexus</code><code
class="ph codeph">.com/auth'</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__10">The
URL of the service you are making the request to. Use quotes in case you
have any special characters in your URL.</td>
</tr>
</tbody>
</table>



<b>Tip:</b> Use Single Quotes Around Your
Request URL Some requests require single quotes around your request URL,
as in the above `curl` request. If you get an error message from your
UNIX shell, make sure your request URL has single quotes before
troubleshooting further. For more information on how UNIX shell quotes
and escaping work, see
<a href="http://wiki.bash-hackers.org/syntax/quoting" class="xref"
target="_blank">this documentation on quotes and escaping in shells</a>.







## Filtering and Sorting

Most API Services support filtering and sorting. Filtering allows you to
specify a subset of objects to be returned. Sorting allows you to
control the order of the objects returned. 



<b>Tip:</b> Please also see the <a
href="search-service.md"
class="xref" target="_blank">Search Service</a> and <a
href="lookup-service.md"
class="xref" target="_blank">Lookup Service</a> for ways of looking up
objects across your member.





<b>Note:</b> When filtering by fields, the
filter "may" only be respected if the fields used for filtering are
passed in the fields query string parameter.



**Get Multiple Objects by ID**

You can get multiple specific objects by ID by passing a comma-separated
list of IDs. The result object will contain an array holding just those
specific objects. In the example below, we ask the <a
href="campaign-service.md"
class="xref" target="_blank">Campaign Service</a> for just the campaigns
with IDs 1, 2, and 3.

``` pre
$ curl -bc -cc 'https://api.appnexus.com/campaign?id=1,2,3
{ 
  "response" : {
     "count" : 3,
     "status" : "OK",
     "campaigns" : [ ... ]
  }
}
      
```

**Filter by IDs**

Pass a query string parameter for the field with a comma-separated list
of IDs.

**Example:** Request all campaigns for certain line items.

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?advertiser_id=40&line_item_id=1,2,3' 
```

**Example:** Request certain advertisers

``` pre
$ curl -b cookies 'https://api.appnexus.com/advertiser?id=3'
```



<b>Tip:</b> Only 100 objects will be returned
per request

The maximum number of objects that can be returned, regardless of
pagination, is 100. If you request over 100 objects, we will only return
the first 100 and will not provide an error message. For more
information on how to paginate API results, see
<a href="api-semantics.md#ID-000000d2__45" class="xref">Paging</a>.



**Filter by Min and Max Values**

Fields that are of the type `int`, `double`, `date`, or `money` can be
filtered by `min` and `max`. For example:

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?min_id=47'
$ curl -b cookies 'https://api.appnexus.com/campaign?min_advertiser_id=20'
```

Fields of the type `date` can be filtered by `nmin` and `nmax` as well.
The `nmin` filter lets you find dates that are either `null` or after
the specified date, and the `nmax` filter lets you find dates that are
either `null` or before the specified date. For example:

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?nmax_start_date=2012-12-20+00:00:00'
$ curl -b cookies 'https://api.appnexus.com/campaign?nmin_end_date=2013-01-01+00:00:00'
```

Note the required date/time syntax in the preceding
example: YYYY-MM-DD+HH:MM:SS

Another option for filtering by date is to use the `min_last_modified`
filter:

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?min_last_modified=2017-10-27+21:00:00'
```

**  
Filter by Field Names**

To limit the response to specific fields of an object, pass the `fields`
query string parameter with a comma-separated list of field names. For
example:

``` pre
$ curl -b cookies "https://api.appnexus.com/user?current&fields=username,user_type,id"
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
$ curl -b cookies 'https://api.appnexus.com/placement?like_[fieldName]=partialValue'
```





## Search

Some services support `search` as a query string parameter to look for
ID or name. For example:

``` pre
$ curl -b cookies 'https://api.appnexus.com/placement?search=17'
```





## Sorting

To sort use the `sort` query string parameter and pass in a list of
fields you'd like to sort by and whether you want them ascending (`asc`)
or descending (`desc`). For example:

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?advertiser_id=1&sort=id.desc'
```





## Paging

To page, use the `start_element` and `num_elements` parameters. If
`num_elements` is not supplied, it defaults to 100 (which is also the
maximum value).

``` pre
$ curl -b cookies 'https://api.appnexus.com/campaign?start_element=20&num_elements=10'
```





## Append on `PUT`

By including `append=true` in the query string of a `PUT` call, a user
can update only a particular child object instead of replacing all child
objects. In other words, rather than overwriting an entire array with a
new one on a `PUT` call, you can use `append=true` on the query string
to add a single element to a long array.

In this example, we'll use `append=true` on a `PUT` call to toggle the
`is_available` flag of an object in the `member_availabilities` array of
the <a
href="plugin-service.md"
class="xref" target="_blank">Plugin Service</a>. Without the
`append=true` flag on the query string, the new item would replace the
entire array. In this example, it's only added.

First let's look at the object we'll be modifying (these examples use
<a href="https://github.com/stedolan/jq/issues" class="xref"
target="_blank">jq</a> to slice and dice the
<a href="http://json.org/" class="xref" target="_blank">JSON</a>). Both
of the availabilities are set to `true`:

We'll send the following
<a href="http://json.org/" class="xref" target="_blank">JSON</a> to turn
off the `is_available` flag on one of the `member_availability` objects:

``` pre
$ cat plugin-update.json
{
    "plugin" : {
        "developer" : {
            "id" : 1
        },
         "member_availabilities" : [
            {
                "is_available" : false,
                 "id" : 4
            }
        ],
         "name" : "ccc"
    }
}
```

Normally, sending the
<a href="http://json.org/" class="xref" target="_blank">JSON</a> above
on a `PUT` call would overwrite the whole `member_availabilities` array.
However, this time we'll add `"append=true"` to the query string of the
call. This tells the API to change just the object whose `id` is `4`. We
can verify that it's done so by inspecting the output.

``` pre
$ curl -bc -X PUT -d @plugin-update.json 'https://api.appnexus.com/plugin?id=13&append=true' | jq '.response.plugin.member_availabilities'
[
  {
    "is_available": false,
    "id": 4
  },
  {
    "is_available": true,
    "id": 7
  }
]
```





##  JSON Basic Structure

Below are the syntax of the components of a
<a href="http://json.org/" class="xref" target="_blank">JSON</a> object
and what they mean.

An object:

``` pre
{. . . }
```

An array:

``` pre
[. . . ]
```

A string:

``` pre
". . ."
```

Associate a key with an alphanumeric string value:

``` pre
"key":"string"
```

Associate a key with a numeric value:

``` pre
"key":int
```

An example that puts them together:

``` pre
{
    "campaign": {
        "name": "my campaign",
        "id": 1434,
        "creatives": [
                {
                    "id": 4162,
                    "state": "active"
                }
            ],
}
}
```





## JSON Field Types

`POST` and `PUT` requests require
<a href="http://json.org/" class="xref" target="_blank">JSON</a> data.
For `PUT` requests, only the
<a href="http://json.org/" class="xref" target="_blank">JSON</a> fields
included in a request will be updated. All other fields will be
unchanged.

Different fields require different types of values. The table of types
below extends those defined in the
<a href="http://json.org" class="xref" target="_blank">JSON standard</a>.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000000d2__entry__21"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000000d2__entry__22"
class="entry colsep-1 rowsep-1">Description</th>
<th id="ID-000000d2__entry__23"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__22">True or false.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code
class="ph codeph">true</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">string(100)</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
string of 100 characters or less.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code
class="ph codeph">"Homepage Pixel"</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">An
integer.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code class="ph codeph">87</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">decimal</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
generic decimal number.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code class="ph codeph">3.0</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
floating-point number with 32-bit precision.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code
class="ph codeph">3.14</code>...</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
floating-point number with 64-bit precision.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code
class="ph codeph">3.14</code>...</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">One
of a number of predetermined values.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code class="ph codeph">"male"</code>
or <code class="ph codeph">"female"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">money</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
floating-point numeric value used to represent money.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code
class="ph codeph">19.23</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
date and time string in the form YYYY-MM-DD HH:MM:SS. All timezones are
in UTC unless otherwise noted.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><code
class="ph codeph">"2009-01-14 05:41:04"</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">See
<code class="ph codeph">timestamp</code> above.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">object</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
wrapper for any sub-fields under the current field. In the example that
follows, the field <code class="ph codeph">"brand"</code> is a
multi-object.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><pre class="pre codeblock"><code>&quot;brand&quot;: { 
   &quot;id&quot;: 466, 
   &quot;name&quot;: &quot;PKR&quot; 
} </code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__21">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__22">A
list containing one or more values. In our API, arrays most often
contain lists of objects, integers, or strings.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__23"><pre class="pre codeblock"><code>&quot;members&quot; : [
   {
      &quot;id&quot;: 1234,
      &quot;member_use_deal_floor&quot;: true,
      &quot;member_ask_price&quot;: 2.15,
      &quot;name&quot;: &quot;Buyer 1&quot;
   },
   {
      &quot;id&quot;: 5561,
      &quot;member_use_deal_floor&quot;: true,
      &quot;member_ask_price&quot;: 2.25,
      &quot;name&quot;: &quot;Buyer 2&quot;
   }
]</code></pre></td>
</tr>
</tbody>
</table>





## How and Why Reporting APIs are Different

The reporting APIs available via the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> work differently than
our other APIs. They have their own multi-step request and response
flow. This is required because they process large amounts of data; this
processing needs to be performed asynchronously.

For instructions on how to retrieve reports, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

For a tutorial that explains how to use our reporting APIs effectively,
see <a
href="report-pagination.md"
class="xref" target="_blank">Report Pagination</a>.





## A Note on Underscores and Hyphens

JSON fields and values use underscores, e.g., `audit_type_direct`.

API service names in URLs are hyphenated, e.g.,
`https://api.``appnexus``.com/insertion-order`.





## Response Codes

All API Services return
<a href="http://json.org/" class="xref" target="_blank">JSON</a> data.
When Service calls are successful, the
<a href="http://json.org/" class="xref" target="_blank">JSON</a>
response will include a `"status"` field set to `"OK"`. The response to
`POST` and `PUT` calls will also include the ID of the relevant object,
as well as any relevant attributes of that object. Every response
includes a `"dbg_info"` object that conveys information about the API
call and response that is for Xandr internal use
only and may be requested during a support inquiry.





## Error Messages

When invalid input is sent to the API (for example, an incorrect
password), a
<a href="http://json.org/" class="xref" target="_blank">JSON</a>
response will be returned with `"error"` and `"error_id"` fields.

``` pre
$ cat auth
{
  "auth": {
     "username":"user1",
     "password":"Wr0ngP@ss"
  }
}
$ curl -b cookies -c cookies -X POST -d @auth 'https://api.appnexus.com/auth'
{
    "response": {
        "error_id": "NOAUTH"
        "error": "No match found for user\/pass",
        "dbg_info": {
            ...
        }
    }
}
```

The `"error"` field is useful for debugging purposes, as it contains a
verbose description of the error. The `"error_id"` field can be used
programmatically as described in the table below.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000000d2__entry__60"
class="entry colsep-1 rowsep-1">Error_ID</th>
<th id="ID-000000d2__entry__61"
class="entry colsep-1 rowsep-1">Meaning</th>
<th id="ID-000000d2__entry__62" class="entry colsep-1 rowsep-1">How to
Respond</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">INTEGRITY</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">A
client request is inconsistent; for example, a request attempts to
delete a default creative attached to an active placement.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__62">Check the request logic for
consistency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">LIMIT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">The
user has reached the maximum number of allowed objects of a certain
type.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__62">Delete unnecessary objects to get under
the limit. If you cannot delete any object, please contact your <span
class="ph">Xandr representative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">NOAUTH</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">The
user is not logged in, or the login credentials are invalid.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__62">Use
the <a
href="authentication-service.md"
class="xref" target="_blank">Authentication Service</a> to get a token,
or check the username and password in your request.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">NOAUTH_DISABLED</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">The
user's account has been deactivated.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__62">Login with a different user, or create
a user account specifically for API access.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">NOAUTH_EXPIRED</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">The
user's password has expired and needs to be reset.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__62">Use
the <a
href="https://wiki.xandr.com/display/api/Authentication%2bService"
class="xref" target="_blank">Authentication Service</a> to get a new
token.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">SYNTAX</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">The
syntax of the request is incorrect.</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__62">Use
the <code class="ph codeph">"error"</code> message to identify the issue
and fix the code.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">SYSTEM</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">A
system error has occurred.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__62">Contact your <span
class="ph">Xandr representative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__60"><code
class="ph codeph">UNAUTH</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000000d2__entry__61">The
user is not authorized to take the requested action.</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000000d2__entry__62">Check the <code
class="ph codeph">"error"</code> message and make sure the logic in your
code is correct.</td>
</tr>
</tbody>
</table>




## Related Topics

- <a href="api-usage-constraints.md" class="xref">API Usage
  Constraints</a>
- <a href="api-best-practices.md" class="xref">API Best Practices</a>






