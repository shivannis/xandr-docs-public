---
Title : Bulk Product Creation Service
Description : ## Overview
The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
---


# Bulk Product Creation Service





## Overview

The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
comfortable to developers experienced with Web 2.0, AJAX, REST, and
service oriented development platforms. Developers should have
familiarity with web based application paradigms including AJAX, XML,
JSON, and the HTTP(S) protocol prior to attempting development with the
Yield Analytics API and services.

The Bulk Product Creation API currently exposes interfaces related to:

- Bulk Product Creation

- Bulk Product Creation Status





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
  id="ID-00001486__d7e129" class="image" />





## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## End Points

POST: Bulk Product Creation



``` pre
POST /api/products/bulk/create
```



- **Description**

  Uniqueness of records is defined by productId and externalId. If
  neither of those is present then the row will result in a NEW product
  record (possibly with a new \[generated\] product name).

  If productId is provided then it MUST correspond to a product id in
  our system; otherwise an error is returned.

  In this scenario we will UPDATE the designated product.

  

  

  Note: We do not check the externalId,
  we simply update this record. This means if an externalId was provided
  in the request but does not match the product found by this productId,
  we will update the externalId on this product with the new value
  provided. If externalId conflicts with a pre-existing externalId from
  another product this update will fail and an error message will be
  generated.

  

  

  - If productId is NOT provided then we will check for externalId.

  - If externalId is provided and a product with that externalId exists
    in our system then that product will be UPDATED.

  - If externalId is provided and a product with that externalId does
    NOT exist in our system, the product will be CREATED.

  - If neither productId nor externalId is provided then we will create
    a new product

  

  

  Note: Product Name is not required to
  be unique when creating or updating products, but a post-process will
  run that renames products which overlap. Any product name which
  conflicts with another product in the system is renamed to
  productName-{productId} (our internal product id); thereby creating a
  unique name for that product.

  

  

  - For each uploaded set of products our system will generate a hash
    based on the contents of the file (and/or post-body) (using MD5
    algorithm) and stored with the product data. This protects against
    duplicate uploads of the exact same data (or file). Duplicate posts
    will result in an error message that the request is a duplicate.

- 

  **Parameters**
  <table id="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__1"
  class="entry colsep-1 rowsep-1">Type</th>
  <th
  id="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__2"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__3"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__4"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__5"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__2">bulkProductCreation</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__3">bulkProductCreation</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-eae73767-76dc-478d-9f3e-d5522e5437ff__entry__5"><a
  href="bulk-product-creation-service.html#ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade"
  class="xref">BulkProductCreation</a></td>
  </tr>
  </tbody>
  </table>

  

- **Responses**
  <table id="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__1"
  class="entry colsep-1 rowsep-1">HTTP Code</th>
  <th
  id="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__3"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__3"><a
  href="bulk-product-creation-service.html#ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5"
  class="xref">BulkProductCreationResponse</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__1">201</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__2">Created</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__3"></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__1">401</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__2">Unauthorized</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__3"></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__1">403</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__2">Forbidden</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__3"></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__1">404</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__2">Not
  Found</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-7ed6b4d5-cd33-419c-8294-ddace7f9c437__entry__3"></td>
  </tr>
  </tbody>
  </table>

- **Consumes**
  <div id="ID-00001486__p-fa7d4707-de33-41a2-8afb-79e833ee6e0d"
  >

  - application/json

  

- **Produces**
  

  - application/json

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://api-host/api/v1/rest/product/bulk/create' -i -X POST -H 'Content-Type: application/json;charset=UTF-8' -d
  '{"bulkProductCreation":{
       "products": [
      {
           "productName": "Test Product New",
           "state": "ACTIVE",
           "externalId": "1",
           "rateCardCPM": "1.0",
           "productClass": "RATE_CARD",
           "productGroupNames": ["Test Product Group 1"],
           "originatingTarget": "ad_server in ('TEST') and size in ('size') and placement in ('placement') and 
  segment in ('true') and segment2 in ('true')",
           "userGroupNames": ["User Group Name 1", "User Group Name 2"]
       },
      {
           "productName": "",
           "state": "ACTIVE",
           "externalId": "2",
           "rateCardCPM": "1.0",
           "productClass": "RATE_CARD",
           "productGroupNames": ["Test Product Group 1", "Test Product Group 2"],
           "originatingTarget": "ad_server in ('TEST') and size in ('size') and placement in ('placement') and 
  segment in ('true') and segment2 in ('true')"
       }]
   }}'
  ```

  

- **Example HTTP request**

  <div id="ID-00001486__p-a007d2c8-84e4-4151-9734-872143608b44"
  >

  ``` pre
  POST /api/v1/rest/product/bulk/create HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://api-host
  Content-Length: 184

  {"bulkProductCreation":{
      "products": [
     {
          "productName": "Test Product New",
          "state": "ACTIVE",
          "externalId": "1",
          "rateCardCPM": "1.0",
          "productClass": "RATE_CARD",
          "productGroupNames": ["Test Product Group 1"],
          "originatingTarget": "ad_server in ('TEST') and size in ('size') and placement in ('placement') and 
  segment in ('true') and segment2 in ('true')",
          "userGroupNames": ["User Group Name 1", "User Group Name 2"]
      },
     {
          "productName": "",
          "state": "ACTIVE",
          "externalId": "2",
          "rateCardCPM": "1.0",
          "productClass": "RATE_CARD",
          "productGroupNames": ["Test Product Group 1", "Test Product Group 2"],
          "originatingTarget": "ad_server in ('TEST') and size in ('size') and placement in ('placement') and 
  segment in ('true') and segment2 in ('true')"
      }]
  }}
  ```

  

- **Example HTTP response**

  <div id="ID-00001486__p-daaba659-8c2c-4c20-bd85-184630a06415"
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 236

  {"bulkProductCreationResponse":{"products":[
     {"productName":"Test Product New", "externalId": "1", productId:"", status:"PENDING"},
     {"productName":"A second product", "externalId": "2", productId:"3364", status:"CREATED"},
     {"productName":"", "externalId": "3", productId:"", status:"ERRORS": "errors":[
        {"field":"name", "error":"productName field is required"},
        {"field":"originatingTarget", "error":"Invalid targeting string: unmatched ')'"},
     ]}
  ]}
  ```

  

GET: Bulk Product Creation By Date



``` pre
GET /api/products/bulk/create/{date}
```



- **Description**

  Send a GET request to obtain the status of products pending creation
  or having been created. Date is optional. If not specified we return
  the current set of PENDING products.

- 

  **Parameters**
  <table id="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__1"
  class="entry colsep-1 rowsep-1">Type</th>
  <th
  id="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__2"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__3"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__4"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__5"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__2">date</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__3">date</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-12fb6701-9945-479b-9eb5-e0a7ed98fdc4__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

- **Responses**
  <table id="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd__entry__3"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd__entry__2">date</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-5dcbd661-c0da-42da-9577-63f342294fdd__entry__3">string</td>
  </tr>
  </tbody>
  </table>

- **Consumes**
  <div id="ID-00001486__p-6cd99016-4210-40ab-bb6d-663205ef517b"
  >

  - application/json

  

- **Produces**
  <div id="ID-00001486__p-386e64d8-fe5a-481d-8ce0-82479eabaf27"
  >

  - application/json

  

- **Example CURL request**

  <div id="ID-00001486__p-4d95fb87-1be8-4650-adf4-b7e8220e343c"
  >

  ``` pre
  $ curl 'https://api-host/api/v1/rest/product/bulk/create/2017-01-01' -i -H 'Content-Type: application/json;charset=UTF-8'
  ```

  

- **Example HTTP request**

  <div id="ID-00001486__p-650f7d6c-3aec-4a11-9d72-f3e22eb76d0d"
  >

  ``` pre
  GET /api/v1/rest/product/bulk/create/2017-01-01 HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://api-host
  ```

  

- **Example HTTP response**

  <div id="ID-00001486__p-4043990d-c765-4c6d-9859-ddcd5e5276ad"
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 111

  {"bulkProductCreationResponse":{"products":[
     {"productName":"Test Product New", "externalId": "1", productId:"", status:"PENDING"},
     {"productName":"A second product", "externalId": "2", productId:"3364", status:"CREATED"}
  ]}
  ```

  





## Types



- 

  **BulkProductCreation**
  <table id="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__1">bulkProductCreation</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__2"></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__4">BulkProductCreation</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__1">products</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__2">A
  collection of product creation data types holding the relevant data for
  each product to be added to the system</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-20fb4e54-9f87-44b4-9824-02c598dfdade__entry__4"><a
  href="bulk-product-creation-service.html#ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6"
  class="xref">ProductCreation</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **ProductCreation**

  A JSON object to hold the request for Product Creation.

  <table id="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">externalId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2"><p>rim
  then: not empty and length &lt; 200</p>
  <p>If productId exist and found in system, check for existence of
  externalId. If externalId also exist violates uniqueness of external
  ids. raise error: "Unable to update an existing product with product id:
  XXX that changes externalId to one: XXX that already exist"</p></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">originatingTarget</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">trim
  then: length &gt; 0, parsable, and attributes and values exist in our
  system</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">productClass</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">CUSTOM
  or RATE_CARD or REPORTING or SEASONAL_MODEL</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">productGroupNames</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">Comma
  separated list of user group names. User groups must exist or an error
  will be generated, new user groups are not created.</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">productId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">If
  present must be Long and must correspond to a product in our
  system.</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">productName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">check
  for null, trim then: not empty and length &lt; 4000</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">rateCardCPM</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">if
  present must be double - If omitted default value of 0 will be
  used.</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">number
  (double)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">state</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">ACTIVE
  or INACTIVE</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__1">userGroupNames</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__2">Comma
  separated list of user group names. User groups must exist or an error
  will be generated, new user groups are not created.</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-be1ec23b-6fc5-41e3-9094-fb1da80f42a6__entry__4">string
  array</td>
  </tr>
  </tbody>
  </table>

- **BulkProductCreationResponse**

  A JSON object to hold the request for Bulk Product Creation Response.

  <table id="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__1">products</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__2">A
  collection of product creation detail of the bulk product creation
  response</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-77bd48ee-4c8c-477a-9409-cd77515b79f5__entry__4"><a
  href="bulk-product-creation-service.html#ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7"
  class="xref">ProductCreationDetail</a> array</td>
  </tr>
  </tbody>
  </table>

- **ProductCreationDetail**

  A JSON object to hold the results for Product Creation.

  <table id="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__1">errors</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__2">The
  a collection of validation constraints that were not met during creation
  scheduling</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__4"><a
  href="bulk-product-creation-service.html#ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4"
  class="xref">ProductCreationError</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__1">externalId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__2">The
  ID of the product from it’s system of record</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__1">productId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__2">The
  ID of the product within the Yield Analytics platform</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__1">productName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__2">The
  name of the product within the Yield Analytics platform</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__1">status</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__2">The
  status of the product creation job: PENDING, COMPLETED, FAILED</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-2e4b196c-3202-4e5d-9329-b10092532ce7__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **ProductCreationError**

  A JSON object to hold the error for product creation.

  <table id="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__1">error</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__2">The
  error msg of the product creation field</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__1">field</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__2">The
  field of the product creation</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001486__table-699c3e1e-17c3-4105-9455-840ddbe99cc4__entry__4">string</td>
  </tr>
  </tbody>
  </table>







## Related Topics



- <a href="yield-analytics-api.html" class="xref">Yield Analytics API</a>







<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../topics/yield-analytics-api.html" class="link">Yield
Analytics API</a>






