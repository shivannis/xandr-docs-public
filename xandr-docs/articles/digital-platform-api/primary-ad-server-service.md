---
Title : Primary Ad Server Service
Description : The Primary Ad Server Service returns all the primary ad servers for the
caller's member. It enables the creation, updating and deleting of
---


# Primary Ad Server Service



The Primary Ad Server Service returns all the primary ad servers for the
caller's member. It enables the creation, updating and deleting of
primary ad servers.

The primary ad server makes the ultimate decision of what ads will be
shown on the publishers inventory. In the context of PSP, demand
partners, usually supply-side platforms (SSPs) like
, create adapters for Prebid Server that receive
and interpret header bidding ad requests. Demand partners hold an
auction among their demand sources (usually demand-side-platforms
(DSPs)) to collect bids on those ad requests and send the bids back to
PSP, which holds another auction. Xandr holds
another auction across its demand sources, including PSP demand
partner(s)'s bid(s). If Monetize is not the primary ad server, the
results of that auction are passed to the primary (external) ad server.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="primary-ad-server-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="primary-ad-server-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="primary-ad-server-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__2"><a
href="https://api.appnexus.com/prebid/primary-adserver" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/primary-adserver</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__3">Get all the primary ad
servers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__2"><a
href="https://api.appnexus.com/prebid/primary-adserver" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/primary-adserver</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__3">Create a new primary ad
server.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__2"><a
href="https://api.appnexus.com/prebid/primary-adserver/%7Bid"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/primary-adserver/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__3">Update an existing primary
ad server.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__2"><a
href="https://api.appnexus.com/prebid/primary-adserver/%7Bid"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/primary-adserver/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__3">Delete an existing primary
ad server.</td>
</tr>
</tbody>
</table>







## GET

Returns the primary ad servers.



Example call using cURL.

``` pre
curl --header "Content-Type: application/json" https://api.appnexus.com/prebid/primary-adserver
```



**Response**

A successful response will returns a JSON array of ad server objects.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="primary-ad-server-service__entry__16"
class="entry colsep-1 rowsep-1">Property</th>
<th id="primary-ad-server-service__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="primary-ad-server-service__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__16"><code
class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__17">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__18">A unique identifier for
the ad server object.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__18">The name of the ad
server.</td>
</tr>
</tbody>
</table>



**Example response**

``` pre
[
  {
    "id": 1,
    "name": "freewheel"
  },
  {
    "id": 2,
    "name": "google ad manager"
  }
]
```







## POST

Enables creation of a new ad server.

Example call using cURL:

``` pre
curl -d @adserver.json -X POST --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver'
```



**Parameters**

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="primary-ad-server-service__entry__25"
class="entry colsep-1 rowsep-1">Name</th>
<th id="primary-ad-server-service__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="primary-ad-server-service__entry__27"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="primary-ad-server-service__entry__28"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__25"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__27">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__28">The name of the
configuration.</td>
</tr>
</tbody>
</table>

Example JSON file



``` pre
{
    "name":"adserver-example-name"
}
```

**Response**

On success, the created ad server object will be returned.





## PUT

Enables updating of an existing ad server object. Append the ad server
id as the last path component of the URL.

Example call using cURL:

``` pre
curl -d @adserver-update.json -X PUT --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver/{id}'
```

**Parameters**

<table class="table frame-all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="primary-ad-server-service__entry__33"
class="entry colsep-1 rowsep-1">Name</th>
<th id="primary-ad-server-service__entry__34"
class="entry colsep-1 rowsep-1">Type</th>
<th id="primary-ad-server-service__entry__35"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="primary-ad-server-service__entry__36"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__33"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__34">string</td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__35">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="primary-ad-server-service__entry__36">The name of the ad
server.</td>
</tr>
</tbody>
</table>



Example JSON file:

``` pre
{
    "name":"adserver-example-new-name"
}
```



**Response**

On successful response, the updated ad server object will be returned.





## DELETE

Enables deletion of all or an existing ad server object. Append the ad
server id as the last path component of the URL.

Example call using curl to delete all ad server objects:

``` pre
curl  -X DELETE --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver'
```

Example call using curl to delete an existing ad server object:

``` pre
curl  -X DELETE --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver/{id}'
```

**Response**

A successful deletion notification object.






