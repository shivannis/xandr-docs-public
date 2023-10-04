---
Title : Developer Service
Description : This service contains the address and billing information for each
developer as reference information. While developers can modify or
---


# Developer Service



This service contains the address and billing information for each
developer as reference information. While developers can modify or
delete their entries, only administrative users can create a new
developer with this service. For help creating a developer entry,
contact your Xandr representative.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d90__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000d90__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000d90__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__2"><a
href="https://api.appnexus.com/developer" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/developer</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__3">View
all developers</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__2"><a
href="https://api.appnexus.com/developer?id=15" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/developer?id=15</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__3">View
a specific developer</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__2"><a
href="https://api.appnexus.com/developer" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/developer</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__3">Add
a developer: (Xandr admin only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__2"><a
href="https://api.appnexus.com/developer?id=19" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/developer?id=19</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__3">Modify a developer</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__2"><a
href="https://api.appnexus.com/developer?id=19" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/developer?id=19</a></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__3">Delete an developer</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000d90__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000d90__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000d90__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">billing_address_1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
first line of the developer address.<strong>Required on</strong>: <code
class="ph codeph">POST</code></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">billing_address_2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
second line of the developer address.
<p><strong>Default</strong>: <code
class="ph codeph">null</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">billing_city</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
city in which the developer resides.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">billing_country</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
country in which the developer lives.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">billing_region</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
region in which the developer resides.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">billing_postal_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
developer ZIP code.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">email</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
developer email address.
<p><strong>Required on</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">date</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
date and time on which this information was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__19"><code
class="ph codeph">phone</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000d90__entry__20">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000d90__entry__21">The
developer contact phone number.<strong>Required on</strong>: <code
class="ph codeph">POST</code></td>
</tr>
</tbody>
</table>





## Examples

**Add a developer**

``` pre
$ cat add-developer.json
{
    "developer":
        {
        "id": 3535,
        "name": "John Smith" ,
        "entity_id": 32 ,
        "phone": "914-555-1212" ,
        "email": "JSmith@aol.com" ,
        "billing_address_1": "1 No Way" ,
        "billing_city": "New York" ,
        "billing_region": "Northeast" ,
        "billing_postal_code": "10010" ,
        "billing_country": "United States"
        }
}
$ curl -b cookies -c cookies -X POST -d @add-developer.json 'https://api.appnexus.com/developer'
{
    "response":{
        "status":"OK",
        "count":1,
        "id":19,
        "start_element":0,
        "num_elements":100,
        "developer":{
            "id":19,
            "name":"John Smith",
            "entity_id":32,
            "phone":"914-555-1212",
            "email":"JSmith@aol.com",
            "billing_address_1":"1 No Way",
            "billing_address_2":null,
            "billing_city":"New York",
            "billing_region":"Northeast",
            "billing_postal_code":"10010",
            "billing_country":"United States",
            "last_modified":"2013-05-03 17:58:02"
        },
        "dbg_info":{
            ...
        }
    }
}
```

**Modify a developer**

``` pre
$ cat update-developer.json
{
    "developer":
        {
        "name": "John Smith" ,
        "phone": "914-555-2222"
        }
}
$ curl -b cookies -c cookies -X PUT -d @update-developer.json 'https://api.appnexus.com/developer?id=19'
{
    "response":{
        "status":"OK",
        "count":1,
        "id":"19",
        "start_element":0,
        "num_elements":100,
        "developer":{
            "id":19,
            "name":"John Smith",
            "entity_id":32,
            "phone":"914-555-2222",
            "email":"JSmith@aol.com",
            "billing_address_1":"1 No Way",
            "billing_address_2":null,
            "billing_city":"New York",
            "billing_region":"Northeast",
            "billing_postal_code":"10010",
            "billing_country":"United States",
            "last_modified":"2013-05-03 18:04:03"
        },
        "dbg_info":{
            ...
        }
    }
}
```

**View all developers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/developer'                                             
{
    "response":{
        "status":"OK",
        "count":17,
        "start_element":0,
        "num_elements":100,
        "developers":[
            {
                "id":1,
                "name":"AppNexus,
                 Inc.",
                "entity_id":null,
                "phone":null,
                "email":null,
                "billing_address_1":null,
                "billing_address_2":null,
                "billing_city":null,
                "billing_region":null,
                "billing_postal_code":null,
                "billing_country":null,
                "last_modified":"2011-09-16 15:38:16"
            },
            {
                "id":3,
                "name":"eXelate",
                "entity_id":246,
                "phone":null,
                "email":"jhackett@exelate.com",
                "billing_address_1":null,
                "billing_address_2":null,
                "billing_city":null,
                "billing_region":null,
                "billing_postal_code":null,
                "billing_country":null,
                "last_modified":"2012-05-22 15:20:58"
            },
        ],
        "dbg_info":{
            ...
        }
    }
}
```

**View a specific developer**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/developer?id=15'
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "developer":{
            "id":15,
            "name":"FlxOne",
            "entity_id":null,
            "phone":null,
            "email":null,
            "billing_address_1":null,
            "billing_address_2":null,
            "billing_city":null,
            "billing_region":null,
            "billing_postal_code":null,
            "billing_country":null,
            "last_modified":"2013-03-08 15:03:06"
        },
        "dbg_info":{
            ...
        }
    }
}
```

**Delete a developer**

``` pre
$ curl -b cookies -c cookies -X DELETE 'https://api.appnexus.com/developer?id=19'
{
    "response":{
        "status":"OK",
        "count":1,
        "start_element":0,
        "num_elements":100,
        "dbg_info":{
            ...
        }
    }
}
```





## Related topics

- <a href="app-installation-service.html" class="xref">App Installation
  Service</a>






