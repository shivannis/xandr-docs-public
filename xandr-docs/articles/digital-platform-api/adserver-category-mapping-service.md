---
Title : Ad Server Category Mapping Service
Description : The Ad Server Category Mapping Service returns all or a specific ad
ms.date: 10/28/2023
ms.custom: digital-platform-api
server category mapping. It enables creation, update and deletion of ad
---


# Ad Server Category Mapping Service



The Ad Server Category Mapping Service returns all or a specific ad
server category mapping. It enables creation, update and deletion of ad
server category mappings. These map Xandr content categories to <a
href="https://www.iab.com/guidelines/iab-quality-assurance-guidelines-qag-taxonomy/"
class="xref" target="_blank">IAB subcategory codes</a> for the ad server
category mapping. The IAB subcategory code is part of the
<a href="https://www.iab.com/guidelines/content-taxonomy/" class="xref"
target="_blank">IAB Content Taxonomy</a> that helps buyers understand
seller inventory, and in turn, helps sellers better monetize their
supply.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adserver-category-mapping-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="adserver-category-mapping-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="adserver-category-mapping-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__2"><a
href="https://api.appnexus.com/prebid/adserver-category-mapping"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/adserver-category-mapping</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__3">Get all ad server
category mappings.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__1"><code
class="ph codeph">POST</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__2"><a
href="https://api.appnexus.com/prebid/adserver-category-mapping"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/adserver-category-mapping</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__3">Create a new ad
server category mapping.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__1"><code
class="ph codeph">PUT</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__2"><a
href="https://api.appnexus.com/prebid/adserver-category-mapping/%7Bid"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/adserver-category-mapping/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__3">Update an existing
ad server category mapping.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__2"><a
href="https://api.appnexus.com/prebid/adserver-category-mapping/%7Bid"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/adserver-category-mapping/{id</a>}</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__3">Delete an existing
ad server category mapping.</td>
</tr>
</tbody>
</table>







## GET

Returns all ad server category mappings. To return a specific ad server
category mapping, append the ad server category mapping's id as the last
path component of the URL.

Example call using curl.

``` pre
curl --header "Content-Type: application/json" https://api.appnexus.com/prebid/adserver-category-mapping
```

Example call using curl to return a specific ad server category mapping.

``` pre
curl --header "Content-Type: application/json" https://api.appnexus.com/prebid/adserver-category-mapping/{id}
```

**Response**

A successful response will return a JSON object containing an array of
ad server category mapping objects.

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="adserver-category-mapping-service__entry__16"
class="entry colsep-1 rowsep-1">Property</th>
<th id="adserver-category-mapping-service__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="adserver-category-mapping-service__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__16"><code
class="ph codeph">mappings</code></td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__17">array</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__18">An array of ad
server category mapping objects.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__16"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__17">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__18">The unique
identifier of the caller's member.</td>
</tr>
</tbody>
</table>

**Example response**

``` pre
{
  "mappings": [
    {
      "adserver_category_code": "financial",
      "iab_subcategory_code": "IAB13-4",
      "id": 8
    },
    {
      "adserver_category_code": "movies",
      "iab_subcategory_code": "IAB1-5",
      "id": 5
    },
    {
      "adserver_category_code": "pets",
      "iab_subcategory_code": "IAB16-5",
      "id": 7
    },
    {
      "adserver_category_code": "beauty",
      "iab_subcategory_code": "IAB18-1",
      "id": 3
    },
    {
      "adserver_category_code": "electronics",
      "iab_subcategory_code": "IAB19-8",
      "id": 6
    },
    {
      "adserver_category_code": "travel",
      "iab_subcategory_code": "IAB20-7",
      "id": 11
    },
    {
      "adserver_category_code": "auto",
      "iab_subcategory_code": "IAB2-3",
      "id": 9
    },
    {
      "adserver_category_code": "health",
      "iab_subcategory_code": "IAB7-32",
      "id": 12
    },
    {
      "adserver_category_code": "food",
      "iab_subcategory_code": "IAB8-7",
      "id": 10
    },
    {
      "adserver_category_code": "games",
      "iab_subcategory_code": "IAB9-5",
      "id": 4
    }
  ],
  "member_id": 9325
}
```





## POST

Enables creation of a new ad server category mapping object.

Example call using curl:

``` pre
curl -d @adserver-category-mapping.json -X POST --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver-category-mapping'
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
<th id="adserver-category-mapping-service__entry__25"
class="entry colsep-1 rowsep-1">Name</th>
<th id="adserver-category-mapping-service__entry__26"
class="entry colsep-1 rowsep-1">Type</th>
<th id="adserver-category-mapping-service__entry__27"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="adserver-category-mapping-service__entry__28"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__25"><code
class="ph codeph">adserver_category_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__27">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__28"><p>Which ad
server category that will be associated with the ad server category
mapping.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__25"><code
class="ph codeph">iab_subcategory_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__26">string</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__27">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__28"><p>The <a
href="https://www.iab.com/guidelines/content-taxonomy/" class="xref"
target="_blank">IAB subcategory code</a> for the ad server category
mapping. The IAB subcategory code is part of the <a
href="https://www.iab.com/guidelines/content-taxonomy/" class="xref"
target="_blank">IAB Content Taxonomy</a> that helps buyers understand
seller inventory, and in turn, helps sellers better monetize their
supply.</p></td>
</tr>
</tbody>
</table>

Example JSON file:

``` pre
{
    "adserver_category_code":"bowling shoes"
    "iab_subcategory_code":"IAB9-11000"
}
```

**Response**

On success, the created ad server category mapping object will be
returned.





## PUT

Enables updating of an existing ad server category mapping object.
Append the ad server category mapping id as the last path component of
the URL.

Example call using curl:

``` pre
curl -d @adserver-category-mapping-update.json -X PUT --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver-category-mapping/{id}'
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
<th id="adserver-category-mapping-service__entry__37"
class="entry colsep-1 rowsep-1">Name</th>
<th id="adserver-category-mapping-service__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="adserver-category-mapping-service__entry__39"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="adserver-category-mapping-service__entry__40"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__37"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__38">string</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__39">Required</td>
<td class="entry colsep-1 rowsep-1"
headers="adserver-category-mapping-service__entry__40">The name of the
ad server category mapping.</td>
</tr>
</tbody>
</table>

Example JSON file:

``` pre
{
    "name":"adserver-category-mapping-example-new-name"
}
```

**Response**

On a successful response, the updated ad server category mapping object
will be returned. Append the ad server category mapping id as the last
path component of the URL.





## DELETE

Enables the deletion of an existing ad server category mapping object.

Example call using curl:

``` pre
curl  -X DELETE --header "Content-Type: application/json" 'https://api.appnexus.com/prebid/adserver-category-mapping/{id}'
```

**Response**

A successful deletion notification object.






