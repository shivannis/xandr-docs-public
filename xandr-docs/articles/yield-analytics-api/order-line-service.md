---
Title : Order Line Service
Description : ## Overview
The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
ms.custom : yield-analytics-api

---


# Order Line Service





## Overview

The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
comfortable to developers experienced with Web 2.0, AJAX, REST, and
service oriented development platforms. Developers should have
familiarity with web based application paradigms including AJAX, XML,
JSON, and the HTTP(S) protocol prior to attempting development with the
Yield Analytics API and services.

The Order Service currently exposes interfaces related to:

- Delivery, Capacity and Contention of Line Items





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

  Example of header settings in Postman. (<b>Note:</b> 'Authorization' is set
  to "No Auth", the settings below are to be placed in the 'Headers'
  tab.

  

  

  <b>Note:</b> For a more in depth tutorial of
  using Postman see the tutorial <a
  href="../snippets/../topics/using-postman-with-the-yield-analytics-api.html"
  class="xref" title="How to use Postman with Yield Analytics APIs">Using
  Postman with the Yield Analytics API</a>

  

  
 ![postman header variables]("media/postman_header_variables.png)
  




## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## Paths

Delete order lines by External IDs



``` pre
DELETE /api/v1/rest/orderLine/delete/{sourceSystem}/{externalOrderLineIds}
```



- **Description**

  Delete (Cancel) orderLine in by source system and comma separated
  external orderLine IDs.

- 

  **Parameters**
  <table id="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262"
  class="table frame-all">
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
  <th
  id="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__2">sourceSystem</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__3">sourceSystem</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__2">externalOrderLineIds</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__3">externalOrderLineIds</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-684de851-1326-4764-997b-1e7e4e88f262__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 1.
  <span class="title">

  

- 

  **Responses**
  <table id="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 2. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-97649bac-c63c-433c-9858-a1da0ad27ad0__entry__3"><a
  href="order-line-service.md#ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943"
  class="xref">StringResponse</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 2.
  <span class="title">

  

- **Consumes**

  

  - application/xml

  - application/json

  

- **Produces**

  >

  - application/xml

  - application/json

  

- **Tags**

  >

  - OrderLine Resource

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/orderLine/delete/XFP/1,2' -i -X 
  DELETE -H 'Content-Type: application/json;charset=UTF-8'
  ```

  

- **Example HTTP request**

  

  ``` pre
  DELETE /api/v1/rest/orderLine/delete/XFP/1,2 HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 35

  {
    "result" : "Deleted/Canceled"
  }
  ```

  

Get Order Line Inventory and Contention By External ID Batch


``` pre
POST /api/v1/rest/orderLine/inventoryandcontention/batch/{aliasFunctions}/{consumptionFilter}
```



- **Description**

  Utilize batch processes to retrieve inventory and contention for an
  order line by referencing the order line’s External ID.

  >

  **Parameters**
  <table id="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802"
  class="table frame-all">
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
  <th
  id="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">batchOrderLineContentionQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">batchOrderLineContentionQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5"><a
  href="order-line-service.md#ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee"
  class="xref">BatchOrderLineContentionQuery</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-c6f6340a-0f25-4a9c-b617-4b2eebbdb802__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 3.
  <span class="title">

  

  >

  **Responses**
  <table id="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 4. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-3efea0eb-3bee-4fd3-8a76-90ba4f49c306__entry__3">Object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 4.
  <span class="title">

  

- **Consumes**

  >

  - application/xml

  - application/json

  

- **Produces**

  >

  - application/xml

  - application/json

  

- **Tags**

  >

  - OrderLine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/orderLine/inventoryandcontention/batch/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED' -i -X POST -H 
  'Content-Type: application/json;charset=UTF-8' -d '{
    "batchOrderLineContentionQuery" : {
      "queryCriteria" : [ {
        "orderLineId" : "16471611",
        "startDate" : "2017-07-01",
        "endDate" : "2017-07-30"
      }, {
        "orderLineId" : "16471610",
        "startDate" : "2017-07-01",
        "endDate" : "2017-07-30"
      } ]
    }
  }'
  ```

  

- **Example HTTP request**

  >

  ``` pre
  POST /api/v1/rest/orderLine/inventoryandcontention/batch/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 286

  {
    "batchOrderLineContentionQuery" : {
      "queryCriteria" : [ {
        "orderLineId" : "16471611",
        "startDate" : "2017-07-01",
        "endDate" : "2017-07-30"
      }, {
        "orderLineId" : "16471610",
        "startDate" : "2017-07-01",
        "endDate" : "2017-07-30"
      } ]
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1652

  {
    "inventoryAndContentionBatchResponse" : {
      "batchResults" : [ {
        "identifier" : "sample identifier",
        "result" : {
          "productDetail" : {
            "active" : true,
            "reporting" : true,
            "sold" : false,
            "productExpression" : "size in ('300x250') and state in ('co')",
            "safeProductExpression" : "size in ('300x250') and state in ('co')",
            "productName" : "API Example Product Name",
            "productClass" : "REPORTING",
            "isReporting" : true,
            "isSold" : false,
            "rateCardCPM" : 0.0,
            "rateCardFloor" : 1.1,
            "exists" : true,
            "isActive" : true,
            "productId" : 12345,
            "externalId" : "54321",
            "state" : "ACTIVE",
            "resolved" : false,
            "targetExists" : false,
            "priority" : 8,
            "rateCardProductId" : 1,
            "baseRateCardPrice" : 12.0
          },
          "summaryData" : {
            "startDate" : "2020-03-19",
            "endDate" : "2020-06-19",
            "capacity" : 100,
            "available" : 100,
            "unmetDemand" : 100,
            "consumptionDetails" : [ {
              "detailName" : "sample name",
              "consumedImpressions" : 1
            } ],
            "exceededForecastWindow" : true,
            "evenAvailability" : false,
            "daysInForecast" : 0,
            "daysOutsideAvailabilityThreshold" : 0
          },
          "contendingData" : {
            "row" : [ {
              "columnData" : [ {
                "name" : "sample name",
                "value" : "sample value"
              } ]
            } ]
          }
        }
      } ]
    }
  }
  ```

  

Retrieve inventory details for an order line by External order line ID


``` pre
GET /api/v1/rest/orderLine/inventoryandcontention/{externalOrderLineId}/{startDate}/{endDate}
```



- **Description**

  Retrieve inventory details for an order line by external order line
  ID.

  >

  **Parameters**
  <table id="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202"
  class="table frame-all">
  <caption><span class="table--title-label">Table 5. <span
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
  <th
  id="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2">externalOrderLineId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3">externalOrderLineId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-4d10a1d4-ec3a-44c5-9a10-e31504848202__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 5.
  <span class="title">

  

  >

  **Responses**
  <table id="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c"
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
  id="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-41953eeb-9449-41f1-af60-faf867773f6c__entry__3">Object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 6.
  <span class="title">

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - /

  

- **Tags**

  >

  - OrderLine Resource

  

Retrieve inventory details for an order line by external order line ID
with Alias Functions and Consumption Filters


``` pre
GET /api/v1/rest/orderLine/inventoryandcontention/{externalOrderLineId}/{startDate}/{endDate}/{aliasFunctions}/{consumptionFilter}
```



- **Description**

  Retrieve inventory details for an order line by external order line ID
  with Alias Functions and Consumption Filters.

  >

  **Parameters**
  <table id="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055"
  class="table frame-all">
  <caption><span class="table--title-label">Table 7. <span
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
  <th
  id="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">externalOrderLineId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">externalOrderLineId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-51873252-5af9-4f5c-a17c-579a88648055__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 7.
  <span class="title">

  

  >

  **Responses**
  <table id="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac"
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
  id="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001484__table-57bde847-e1c8-4378-ad47-3435da2bc1ac__entry__3">Object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 8.
  <span class="title">

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - /

  

- **Tags**

  >

  - OrderLine Resource

  





## Definitions



**BatchOrderLineContentionQuery**

<table id="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee"
class="table frame-all">
<caption><span class="table--title-label">Table 9. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__1">batchOrderLineContentionQuery</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__2"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__4">BatchOrderLineContentionQuery</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__1">queryCriteria</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__2">A
collection of order line contention query criteria</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c75ad5b9-3f24-4789-b345-4c2c116c0aee__entry__4"><a
href="order-line-service.html#ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8"
class="xref">OrderLineContentionQuery</a> array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 9.
<span class="title">



**ColumnData**


A JSON object to hold the results of a column data.

<table id="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553"
class="table frame-all">
<caption><span class="table--title-label">Table 10. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__1">name</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__2">The
name of the column data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__1">value</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__2">The
value object of the column data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 10.
<span class="title">



**ConsumptionDetail**


A JSON object to hold the results of a consumption detail.

<table id="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb"
class="table frame-all">
<caption><span class="table--title-label">Table 11. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__1">consumedImpressions</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__2">The
field contains consumed impressions</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__4">integer
(int64)</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__1">detailName</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__2">The
name of consumption detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 11.
<span class="title">



**InventoryAndContention**

A JSON object to hold the results of an inventory and contention.


<table id="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec"
class="table frame-all">
<caption><span class="table--title-label">Table 12. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__1">contendingData</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__2">The
contending query result data of the inventory and contention</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__4"><a
href="order-line-service.html#ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85"
class="xref">QueryResultData</a></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__1">productDetail</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__2">The
product detail of the inventory and contention</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__4"><a
href="order-line-service.html#ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b"
class="xref">ProductDetail</a></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__1">summaryData</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__2">The
inventory summary data of the inventory and contention</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec__entry__4"><a
href="order-line-service.html#ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf"
class="xref">InventoryData</a></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 12.
<span class="title">



**InventoryAndContentionBatchResponse**


A JSON object to hold the results of an inventory and contention batch
response.

<table id="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3"
class="table frame-all">
<caption><span class="table--title-label">Table 13. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__1">batchResults</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__2">A
collection of inventory and contention batch results</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-94d00768-bab4-45b9-9b28-5c1bf278d7c3__entry__4"><a
href="order-line-service.html#ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d"
class="xref">InventoryAndContentionBatchResult</a> array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 13.
<span class="title">



**InventoryAndContentionBatchResult**


A JSON object to hold the results of an inventory and contention batch
result.

<table id="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d"
class="table frame-all">
<caption><span class="table--title-label">Table 14. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__1">identifier</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__2">The
identifier of the inventory and contention batch result</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__1">result</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__2">The
result of the inventory and contention batch result</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-cdcf2862-5ee2-424d-a675-c1a37d15e74d__entry__4"><a
href="order-line-service.html#ID-00001484__table-c983090f-57e7-4b03-ab5f-c55d630dabec"
class="xref">InventoryAndContention</a></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 14.
<span class="title">



**InventoryData**


A JSON object to hold the results of an inventory data.

<table id="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf"
class="table frame-all">
<caption><span class="table--title-label">Table 15. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">available</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
field contains available</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">integer
(int64)</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">capacity</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
field contains capacity</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">integer
(int64)</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">consumptionDetails</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">A
collection of consumption details</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4"><a
href="order-line-service.html#ID-00001484__table-e35b8a41-1ba7-494a-a5f4-55d349be75fb"
class="xref">ConsumptionDetail</a> array</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">daysInForecast</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
days in forecast of the inventory data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">integer
(int32)</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">daysOutsideAvailabilityThreshold</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
days outside availability threshold of the inventory data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">integer
(int32)</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">endDate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
end date of inventory data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">evenAvailability</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
even availability of the inventory data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">exceededForecastWindow</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
field indicates whether or not the inventory data exceeded forecast
window</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">boolean</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">startDate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
start date of inventory data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__1">unmetDemand</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__2">The
field contains unmet demand</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-64bfd803-7f47-46e2-b7e3-e0662fd3cdcf__entry__4">integer
(int64)</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 15.
<span class="title">



**OrderLineContentionQuery**


A JSON object to hold the results of an order import response.

<table id="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8"
class="table frame-all">
<caption><span class="table--title-label">Table 16. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__1">endDate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__2">The
end date of the order line contention query</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__1">orderLineId</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__2">The
order line id of the order line contention query</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__1">startDate</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__2">The
start date of the order line contention query</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-f038d127-361d-432c-b5ce-20e4ff01d9e8__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 16.
<span class="title">



**ProductDetail**


A JSON object to hold the results of a product search.

<table id="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b"
class="table frame-all">
<caption><span class="table--title-label">Table 17. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">active</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">baseRateCardPrice</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
base rate card price of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">number
(double)</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">exists</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
exists boolean field of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">externalId</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
external product ID of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">isActive</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
is active boolean field of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">isReporting</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
is reporting boolean field of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">isSold</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
is sold boolean field of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">priority</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
priority of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">integer
(int32)</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">productClass</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
product class of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">productExpression</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
product expression of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">productId</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
product ID of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">integer
(int64)</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">productName</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
product name of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">rateCardCPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
rate card cpm of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">number
(double)</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">rateCardFloor</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
rate card floor of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">number
(double)</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">rateCardProductId</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
rate card product id of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">integer
(int64)</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">reporting</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">resolved</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
resolved boolean field of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">safeProductExpression</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
safe product expression of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">sold</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">state</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
state of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__1">targetExists</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__2">The
target exists boolean field of the product detail</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4f7558fd-c2bb-4150-afdb-1a5935619e9b__entry__4">boolean</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 17.
<span class="title">



**QueryResultData**


A JSON object to hold the results of a query result data.

<table id="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85"
class="table frame-all">
<caption><span class="table--title-label">Table 18. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__1">row</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__2">A
collection of row data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-c0ba0201-fe25-4acf-a0c8-6a375223cc85__entry__4"><a
href="order-line-service.html#ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907"
class="xref">RowData</a> array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 18.
<span class="title">



**RowData**


A JSON object to hold the results of a row data.

<table id="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907"
class="table frame-all">
<caption><span class="table--title-label">Table 19. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__1">columnData</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__2">A
collection of column data</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-4d2de5ca-6013-422f-8c89-fd174d3f0907__entry__4"><a
href="order-line-service.html#ID-00001484__table-9c81e8f7-fd99-47e7-ad06-362b674c4553"
class="xref">ColumnData</a> array</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 19.
<span class="title">



**StringResponse**


A JSON object to hold the string results of api queries.

<table id="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943"
class="table frame-all">
<caption><span class="table--title-label">Table 20. <span
class="title"></caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__1">result</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__2">Operation
result</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001484__table-09853c96-0125-4a01-90d0-2a232bb01943__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 20.
<span class="title">







## Related Topics



- <a href="yield-analytics-api.md" class="xref">Yield Analytics API</a>




<a href="yield-analytics-api.md" class="link">Yield
Analytics API</a>






