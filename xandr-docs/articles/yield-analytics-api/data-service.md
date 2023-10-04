---
Title : Data Service
Description : Data Service of Yield Analytics API
## Overview
The Yield Analytics Data API exposes functionality for searching of
available data and configs from within the Yield Analytics environment.
---


# Data Service



Data Service of Yield Analytics API



## Overview

The Yield Analytics Data API exposes functionality for searching of
available data and configs from within the Yield Analytics environment.





## Content Types



The Service REST API is currently designed to support the following
content-type:

- JSON - using content-type; application-json

Selecting the desired content-type is a choice the API developer should
make on a case by case basis. API functionality is symmetrical across
content-type. API developers may specify the desired content-type in the
HTTP GET or POST method parameters or via their AJAX or HTTP client
library.







## Error Checking and Status Codes

API developers should check the HTTP response codes returned from the
service REST API to detect errors propagated from API calls. Successful
calls to the service will result in 200 range response codes. 400 and
500 range http responses denote errors. The specific response codes and
text will likely undergo change during BETA development of the API,
however, the ranges will not.





## Security

The service API exposes application data in a secure manner. Use of API
functionality is restricted to authenticated users and is exposed over
secure transport protocols. Access to the API must take place within the
following context:

- **Example CURL Authentication**

  Authentication occurs by passing credentials via http headers on each
  request.

  

  ``` pre
            - username: curl -H "username:username"
            - password: curl -H "password:password"
            - source: curl -H "source:client_id"
          
  ```

  

- **Example HTTPS Authentication**

  

  ``` pre
            GET /api/v1/rest/
            HTTPS/1.1
            Host: yieldanalytics.xandr.com
            Accept: application/xml, application/json
            Content-Type: application/json
            username: {{username}}
            password: {{password}}
            source: {{client_id}}
          
  ```

  

- **Example POSTMAN Authentication**

  Example of header settings in Postman. (Note: 'Authorization' is set
  to "No Auth", the settings below are to be placed in the 'Headers'
  tab.

  

  

  Note: For a more in depth tutorial of
  using Postman see the tutorial <a
  href="../snippets/../topics/using-postman-with-the-yield-analytics-api.html"
  class="xref" title="How to use Postman with Yield Analytics APIs">Using
  Postman with the Yield Analytics API</a>

  

  

  <img src="../snippets/../images/postman_header_variables.png"
  id="ID-00001487__d7e129" class="image" />





## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## Paths

Get Alias Columns



``` pre
GET /api/v1/rest/data/aliasColumns
```



- **Description**

  Get request to read a collection of alias columns

- 

  **Parameters**
  <table id="ID-00001487__d13e15" class="table frame-all">
  <caption><span class="table--title-label">Table 1. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001487__d13e15__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001487__d13e15__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001487__d13e15__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001487__d13e15__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001487__d13e15__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your username for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your password for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your client source for accessing
  the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 1.
  <span class="title">

  

- 

  **Responses**
  <table id="ID-00001487__d14e15" class="table frame-all"
  style="width:100%;">
  <caption><span class="table--title-label">Table 2. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001487__d14e15__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th id="ID-00001487__d14e15__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001487__d14e15__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d14e15__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d14e15__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d14e15__entry__3"><a
  href="../snippets/../topics/data-service.html#ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195"
  class="xref">AliasColumns</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 2.
  <span class="title">

  

- **Consumes**

  <div id="ID-00001487__p-42552354-7443-45e4-ae60-9dd412916a99"
  >

  - application/json

  

- **Produces**

  <div id="ID-00001487__p-701e5974-0abc-4d19-ac2b-0c6585132cfb"
  >

  - application/xml
  - application/json

  

- **Tags**

  <div id="ID-00001487__p-4cd4db0a-ca34-46f6-a190-06347953df9c"
  >

  - Data Resource

  

<!-- -->

- **Example CURL request**

  <div id="ID-00001487__p-a72ff3bb-e869-425a-98f2-507ab7f59c01"
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/data/aliasColumns' -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 
  'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**

  <div id="ID-00001487__p-30297ef2-62ee-4f89-ac86-8492052e97bf"
  >

  ``` pre
  GET /api/v1/rest/data/aliasColumns HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  <div id="ID-00001487__p-b9916f36-e2f0-4dd5-bb53-ea230ea6ffc0"
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 187

  {
    "aliasColumns" : [ {
      "aliasKey" : "TARGET_OVERLAPPING_PRODUCT",
      "dateSourceType" : "TARGET"
    }, {
      "aliasKey" : "BOOKED_VALUE",
      "dateSourceType" : "ORDER_LINE"
    } ]
  }
  ```

  

Get Alias Functions

<div id="ID-00001487__p-8394b641-45a0-40a3-95be-e37b4a7c19a7" >

``` pre
GET /api/v1/rest/data/aliasFunctions
```



- **Description**

  Get request to read a collection of alias functions

- 

  **Parameters**
  <table id="ID-00001487__d13e15" class="table frame-all">
  <caption><span class="table--title-label">Table 3. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001487__d13e15__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001487__d13e15__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001487__d13e15__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001487__d13e15__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001487__d13e15__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your username for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your password for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your client source for accessing
  the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 3.
  <span class="title">

  

- **Responses**

  <table id="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d__entry__1"
  class="entry"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d__entry__2"
  class="entry"><strong>Description</strong></th>
  <th
  id="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d__entry__3"
  class="entry"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry"
  headers="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d__entry__1">200</td>
  <td class="entry"
  headers="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d__entry__2">OK</td>
  <td class="entry"
  headers="ID-00001487__table-30c4a6a7-01b9-4816-b519-837c64622a0d__entry__3"><a
  href="data-service.html#ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67"
  class="xref">AliasFunctions</a></td>
  </tr>
  </tbody>
  </table>

- **Consumes**

  <div id="ID-00001487__p-17ee7bfe-9631-4f93-add9-d53530bb04b3"
  >

  - application/json

  

- **Produces**

  <div id="ID-00001487__p-b51563f3-8054-4583-9d64-5b5a80cbba53"
  >

  - application/xml
  - application/json

  

- **Tags**

  <div id="ID-00001487__p-496652b8-165c-4ea9-ba04-998a7bc7ba29"
  >

  - Data Resource

  

<!-- -->

- **Example CURL request**

  <div id="ID-00001487__p-42afe663-1e91-4189-9236-6a540d843623"
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/data/aliasColumns' -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 
  'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**

  <div id="ID-00001487__p-17f88290-9949-4056-9ef8-02905826d1be"
  >

  ``` pre
  GET /api/v1/rest/data/aliasColumns HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  <div id="ID-00001487__p-3288cd1c-a144-4282-bd9b-621b6f3d69a4"
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 187

  {
    "aliasColumns" : [ {
      "aliasKey" : "TARGET_OVERLAPPING_PRODUCT",
      "dateSourceType" : "TARGET"
    }, {
      "aliasKey" : "BOOKED_VALUE",
      "dateSourceType" : "ORDER_LINE"
    } ]
  }
  ```

  



Get Consumption Filters

<div id="ID-00001487__p-70fa7445-a538-4fbc-a5db-50915af6b258" >

``` pre
GET /api/v1/rest/data/consumptionFilters
```



- **Description**

  Get request to read a collection of consumption filters

- 

  **Parameters**
  <table id="ID-00001487__d13e15" class="table frame-all">
  <caption><span class="table--title-label">Table 4. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  <col style="width: 20%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001487__d13e15__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001487__d13e15__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001487__d13e15__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001487__d13e15__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001487__d13e15__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your username for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your password for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__3">Your client source for accessing
  the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001487__d13e15__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 4.
  <span class="title">

  

- **Responses**

  <table id="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751__entry__1"
  class="entry"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751__entry__2"
  class="entry"><strong>Description</strong></th>
  <th
  id="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751__entry__3"
  class="entry"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry"
  headers="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751__entry__1">200</td>
  <td class="entry"
  headers="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751__entry__2">OK</td>
  <td class="entry"
  headers="ID-00001487__table-54d412f8-a808-4844-b209-6802ce37d751__entry__3"><a
  href="data-service.html#ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b"
  class="xref">ConsumptionFilters</a></td>
  </tr>
  </tbody>
  </table>

- **Consumes**

  <div id="ID-00001487__p-d3a735fd-229d-490d-8b98-7225639e6a5b"
  >

  - application/json

  

- **Produces**

  <div id="ID-00001487__p-ff7674b2-7110-4a32-92ac-5bfce3912d76"
  >

  - application/xml
  - application/json

  

- **Tags**

  <div id="ID-00001487__p-af9c1267-8552-4421-a887-aa68b81c9b1e"
  >

  - Data Resource

  

<!-- -->

- **Example CURL request**

  <div id="ID-00001487__p-632d76ff-ac9c-4445-b669-1fa58299e33d"
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/data/consumptionFilters' -i -H 'Content-Type: application/json' -H 
  'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**

  <div id="ID-00001487__p-b01dff32-98aa-414b-92e1-7704cb21eb41"
  >

  ``` pre
  GET /api/v1/rest/data/consumptionFilters HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  <div id="ID-00001487__p-f57c7b5f-3c11-4cd2-a60b-5104b3cb3fda"
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 82

  {
    "consumptionFilters" : [ "CONSUMPTION_TYPE", "INVENTORY_CLASS", "PRIORITY" ]
  }
  ```

  



## Definitions

**AliasColumn**



A JSON object to hold the request for AliasColumn.

<table id="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 5. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__1">aliasKey</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__3">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__1">dateSourceType</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde__entry__3">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 5.
<span class="title">



**AliasColumns**

<div id="ID-00001487__p-ad08d2a3-d5f8-4942-94b2-9545b60c1875" >

A JSON object to hold the request for AliasColumns.

<table id="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 6. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195__entry__1">aliasColumns</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-193204b5-4150-403b-ab9b-61fb1f852195__entry__3"><a
href="data-service.html#ID-00001487__table-e3f5a6d6-46f6-4d51-99ee-26ad59285fde"
class="xref">AliasColumn</a> array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 6.
<span class="title">



**AliasFunction**

<div id="ID-00001487__p-b38830e2-6394-49db-90c2-7e7b048119de" >

A JSON object to hold the request for AliasFunction.

<table id="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 7. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__1">inputs</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__3">string
array</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__1">name</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67__entry__3">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 7.
<span class="title">



**AliasFunctions**

<div id="ID-00001487__p-9c09dda7-0a48-48ab-b970-f442fbe90c6c" >

A JSON object to hold the request for AliasFunctions.

<table id="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 8. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95__entry__1">aliasFunctions</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-8015702d-c975-4931-bb40-aa1886302c95__entry__3"><a
href="data-service.html#ID-00001487__table-19d4d758-d515-4961-b6f8-83713b719a67"
class="xref">AliasFunction</a> array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 8.
<span class="title">



**ConsumptionFilters**

<div id="ID-00001487__p-6a277f68-8607-4e79-8dc2-44fc0ad11d62" >

A JSON object to hold the request for ConsumptionFilters.

<table id="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 9. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b__entry__1">consumptionFilters</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b__entry__2">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001487__table-0d5d26c1-a492-4a55-b93e-0120dfe6fa1b__entry__3">string
array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 9.
<span class="title">







## Related Topics



- <a href="yield-analytics-api.html" class="xref">Yield Analytics API</a>







<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../topics/yield-analytics-api.html" class="link">Yield
Analytics API</a>






