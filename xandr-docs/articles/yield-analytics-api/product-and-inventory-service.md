---
Title : Product and Inventory Service
Description : Product and Inventory Service of Yield Analytics API
ms.custom : yield-analytics-api
## Overview
The Yield Analytics Product and Inventory API exposes functionality for
discovery of products from within the Yield Analytics environment and
retrieval of product inventory and consumption data. When interacting
---


# Product and Inventory Service



Product and Inventory Service of Yield Analytics API



## Overview

The Yield Analytics Product and Inventory API exposes functionality for
discovery of products from within the Yield Analytics environment and
retrieval of product inventory and consumption data. When interacting
with Product related API functionality developers should understand that
products may be either static or dynamic. These two types of products
differ in the following ways:

- Static products exist in the Yield Analytics system when they have
  been imported in relation to order lines flowing into the Yield
  Analytics system, or have been created as rate card/reporting products
  in the system. Static products are always accessible throughout the
  Yield Analytics user interface and may be configured with rate card
  information and other metadata. They are persistent and may be viewed
  throughout the Yield Analytics UI.

- Dynamic products are ad-hoc in nature. Ad-hoc products result from
  inventory queries and there is currently no exact match product for
  the targeting criteria in the Yield Analytics system. Dynamic products
  may not have rate cards configured, do not have a names, are not
  persistent, and are not visible in the Yield Analytics UI (with the
  exception of Product Creation where non-persisted products may be
  viewed).

Yield Analytics REST API functionality treats these two classes of
products symmetrically whenever possible, however, there are certain API
calls which apply strictly to static products. These static product only
API calls are limited to interfaces requiring the use of either a Yield
Analytics internal product ID or external product ID where the mapping
looking is by nature persistent. Discovery functionality works primarily
against static products, inventory data retrieval functionality works
regardless of whether a product is static or dynamic.





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
  href="../snippets/../topics/using-postman-with-the-yield-analytics-api.md"
  class="xref" title="How to use Postman with Yield Analytics APIs">Using
  Postman with the Yield Analytics API</a>

  

  
 ![postman header varibles](media/postman_header_variables.png)
  




## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## Paths

Bulk Product Creation



``` pre
POST /api/v1/rest/product/bulk/create
```



- **Description**

  Uniqueness of records is defined by productId and externalId. If
  neither of those is present then the row will result in a NEW product
  record (possibly with a new \[generated\] product name).

  If productId is provided then it MUST correspond to a product id in
  our system; otherwise an error is returned.

  In this scenario we will UPDATE the designated product.

  <b>Note:</b> we do not check the externalId, we simply update this record.
  This means if an externalId was provided in the request but does not
  match the product found by this productId, we will update the
  externalId on this product with the new value provided. If externalId
  conflicts with a pre-existing externalId from another product this
  update will fail and an error message will be generated.

  - If productId is NOT provided then we will check for externalId.

  - If externalId is provided and a product with that externalId exists
    in our system then that product will be UPDATED.

  - If externalId is provided and a product with that externalId does
    NOT exist in our system, the product will be CREATED.

  - If neither productId nor externalId is provided then we will create
    a new product

  Note on product names: Product Name is not required to be unique when
  creating or updating products, but a post-process will run that
  renames products which overlap. Any product name which conflicts with
  another product in the system is renamed to productName-{productId}
  (our internal product id); thereby creating a unique name for that
  product.

  - For each uploaded set of products our system will generate a hash
    based on the contents of the file (and/or post-body) (using MD5
    algorithm) and stored with the product data. This protects against
    duplicate uploads of the exact same data (or file). Duplicate posts
    will result in an error message that the request is a duplicate.

- **Parameters**
  <table class="table frame-all">
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
  <th id="ID-00001482__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001482__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001482__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001482__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001482__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__2">bulkProductCreation</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__3">bulkProductCreation</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9"
  class="xref">BulkProductCreation</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__2">username</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__3">Your username for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__2">password</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__3">Your password for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__2">source</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__3">Your client source for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 1.
  <span class="title">

- **Responses**
  <table class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 2. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001482__entry__26"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th id="ID-00001482__entry__27"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001482__entry__28"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__26">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__27">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__entry__28">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 2.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json

- **Tags**
  - Product Resource

- **Example CURL request**
  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/bulk/create' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}' -d '{
    "bulkProductCreation" : {
      "products" : [ {
        "productName" : "Test Product",
        "state" : "ACTIVE",
        "externalId" : "1",
        "rateCardCPM" : 1.0,
        "productClass" : "RATE_CARD",
        "originatingTarget" : "TEST in ('TEST')"
      } ]
    }
  }'
  ```

  

- **Example HTTP request**
  

  ``` pre
  POST /api/v1/rest/product/bulk/create HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 264

  {
    "bulkProductCreation" : {
      "products" : [ {
        "productName" : "Test Product",
        "state" : "ACTIVE",
        "externalId" : "1",
        "rateCardCPM" : 1.0,
        "productClass" : "RATE_CARD",
        "originatingTarget" : "TEST in ('TEST')"
      } ]
    }
  }
  ```

  

- **Example HTTP response**
  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 459

  {
    "bulkProductCreationResponse" : {
      "products" : [ {
        "productName" : "Failed Creation Test",
        "externalId" : null,
        "productId" : null,
        "status" : "FAILED",
        "errors" : [ {
          "field" : "Failed Field",
          "error" : "Failed Reason"
        } ]
      }, {
        "productName" : "Successful Creation Test",
        "externalId" : null,
        "productId" : null,
        "status" : "PENDING",
        "errors" : null
      } ]
    }
  }
  ```

  

Bulk Product Creation By Date


``` pre
GET /api/v1/rest/product/bulk/create/{date}
```



- **Description**

  Send a GET request to obtain the status of products pending creation
  or having been created for a particular date. Date is required. If not
  specified we return the current set of PENDING products.

- **Parameters**
  <table id="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca"
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
  id="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__2">date</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__3">date</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d1fde52-c7eb-43e8-8943-a1a88f56fbca__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 3.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185"
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
  id="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-b65e1c5c-ea8c-440d-bb66-aa0747855185__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 4.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/bulk/create/2017-06-15' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/bulk/create/2017-06-15 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 211

  {
    "bulkProductCreationResponse" : {
      "products" : [ {
        "productName" : "Test Product",
        "externalId" : "1",
        "productId" : "1",
        "status" : "PENDING",
        "errors" : null
      } ]
    }
  }
  ```

  

Get Consumption Detail by External ID Batch


``` pre
GET /api/v1/rest/product/consumption/batch/externalids/{queries}/{groupingInfo}
```



- **Description**

  The External ID Product Consumption API call can also be called in a
  batch mode, where more than one combination of external ID, start
  date, and end date can be queried for in a single call. In this case,
  the Inventory Batch Lookup Response structure will be returned from
  the call. This structure wraps multiple Inventory Detail structures,
  one for each query made to the batch API call. In the case that an
  invalid External ID is passed in, the API will return a NOT_FOUND
  constant for all string values in the ProductDetail structure.

- **Parameters**
  <table id="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae"
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
  id="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">queries</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">queries</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">queryVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">queryVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">groupingInfo</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">groupingInfo</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">groupingInfoVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">groupingInfoVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-02b76384-e480-4ffe-8a1a-1eeae3343bae__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 5.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e"
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
  id="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ad65efd6-e416-4d53-8a68-aff25d8b033e__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 6.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/consumption/batch/externalids/queries;q=321,2017-03-01,
  2017-03-31;q=322,2017-03-01,2017-03-31/groupInfo;groupBy=salesperson' -i -H 'Content-Type: application/json' -H 
  'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/consumption/batch/externalids/queries;q=321,2017-03-01,2017-03-31;q=322,2017-03-01,
  2017-03-31/groupInfo;groupBy=salesperson HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1767

  {
    "inventoryBatchLookupResponse" : {
      "inventoryDetails" : [ {
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
        "summary" : {
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
        "dailyDetail" : [ {
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
        } ]
      } ]
    }
  }
  ```

  

Get Consumption Detail by External ID


``` pre
GET /api/v1/rest/product/consumption/externalid/{externalId}/{startDate}/{endDate}/{groupingInfo}
```



- **Description**

  The use of the External ID Product Consumption API is limited to
  lookups where the a static Product has been configured with an
  External ID. This allows API developers to use an external correlating
  identifier to lookup Yield Analytics Product Consumption information.
  In order to use the External ID a persistent mapping must be
  specified, configured, and maintained in the Yield Analytics system.
  Contact your Yield Analytics Administrator to setup this mapping.

- **Parameters**
  <table id="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280"
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
  id="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">externalId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">externalId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">groupingInfo</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">groupingInfo</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3f60ebb8-3a99-44ac-bb15-e90e7a5fb280__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 7.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5"
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
  id="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a86117b1-4977-406a-8104-ce06692440d5__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 8.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/consumption/externalid/321/2017-03-01/2017-03-31/groupinfo;
  groupBy=salesperson' -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/consumption/externalid/321/2017-03-01/2017-03-31/groupinfo;groupBy=salesperson HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

Create Product by Originating Target String


``` pre
GET /api/v1/rest/product/create/target/{target}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Analysis Target
  Creation. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic Products.

- **Parameters**
  <table id="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877"
  class="table frame-all">
  <caption><span class="table--title-label">Table 9. <span
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
  id="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__2">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__3">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-ca0b3916-43f8-48a9-8c87-a0e7bea7a877__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 9.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 10. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-5746539c-3af5-4acb-9f4e-c390577242c6__entry__3"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 10.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/create/target/ad_server%20in%20('TEST')' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 
  'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/create/target/ad_server%20in%20('TEST') HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 603

  {
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
  }
  ```

  

Create Product by Originating Target Expression


``` pre
POST /api/v1/rest/product/create/targetexpression
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Analysis Target
  Creation. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic Products.

- **Parameters**
  <table id="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0"
  class="table frame-all">
  <caption><span class="table--title-label">Table 11. <span
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
  id="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__2">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__3">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__5"><a
  href="product-and-inventory-service.html#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-52be0a40-e90a-440a-bcab-f8ce66398ec0__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 11.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 12. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-9cb93bac-1986-494d-bf21-b3ff7ab50010__entry__3"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 12.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/create/targetexpression' -i -X POST -H 
  'Content-Type: application/json;charset=UTF-8' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/create/targetexpression HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 603

  {
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
  }
  ```

  

Find Products by Match Phrase


``` pre
GET /api/v1/rest/product/discover/matchphrase/{matchphrase}
```



- **Description**

  Match Phrase functionality is the easiest Product Discovery
  functionality to use. It may be used to retrieve static-only Products
  from the Yield Analytics API. The Match Phrase specifies a text string
  to be matched in a case-insensitive manner against both Product names
  and included-only Product Targeting criteria term values. The
  specified text matches anywhere in the name or included term values
  but not against the attribute names or excluded term values. For
  example when specifying a match phrase; 'Food', both a Product named
  ROS Food and a Product having category=FOODLOVER would match.

- **Parameters**
  <table id="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07"
  class="table frame-all">
  <caption><span class="table--title-label">Table 13. <span
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
  id="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__2">matchphrase</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__3">matchphrase</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-51ca59dd-9480-45dc-a33b-70e98ed74a07__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 13.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 14. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-83f6ed81-193c-4950-896e-d9393184f6bf__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 14.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/discover/matchphrase/testingMatchphrase' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/discover/matchphrase/testingMatchphrase HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1470

  {
    "productLookupResponse" : {
      "exactMatch" : {
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
      "candidateMatches" : [ {
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
      } ]
    }
  }
  ```

  

Find Products by Targeting Characteristics


``` pre
GET /api/v1/rest/product/discover/targetingcharacteristics/{characteristics}
```



- **Description**

  Targeting Criteria current functionality allows the API developer to
  interact with static products. A future API release may allow for the
  exact match in the ProductLookupResponse to be created from the
  specific Targeting Criteria passed.Targeting Criteria is used to
  provide more exact matching than the Match Phrase functionality. When
  using the Targeting Criteria functionality API developers may specify
  the specific attribute names and values to match. Both inclusion '='
  or exclusion '!=" may be specified. Multiple term values for the same
  attribute may also be supplied. The above example will match any
  Product having category=food and category=cooking where the size is
  350x200. Note that the matched products will usually have other
  targeting attributes defined.

- **Parameters**
  <table id="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160"
  class="table frame-all">
  <caption><span class="table--title-label">Table 15. <span
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
  id="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__2">characteristics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__3">characteristics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__2">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__3">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0d96ebe7-f663-4fe5-9423-d8713ac50160__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 15.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 16. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-d18f2857-d2b0-40bd-bf5c-c9e092fc70bc__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 16.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/discover/targetingcharacteristics/target;category=food;
  size=350x200;category=cooking' -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 
  'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/discover/targetingcharacteristics/target;category=food;size=350x200;category=cooking HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1470

  {
    "productLookupResponse" : {
      "exactMatch" : {
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
      "candidateMatches" : [ {
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
      } ]
    }
  }
  ```

  

Find Products


``` pre
GET /api/v1/rest/product/discover/{productLocator}
```



- **Description**

  The Product Discovery interfaces allow the API developer to find
  products in the Yield Analytics system and retrieve product related
  meta-data. The identifiers returned in the Product Detail response
  data types allow for subsequent retrieval of Product Inventory. All
  Product Discovery interfaces return the ProductLookupResponse data
  type. Depending on the use case, one of the following API calls may be
  used to discover products.

- **Parameters**
  <table id="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87"
  class="table frame-all">
  <caption><span class="table--title-label">Table 17. <span
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
  id="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__2">productLocator</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__3">productLocator</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7d771fe0-09c8-470a-8c7a-32a124f79e87__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 17.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 18. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-9be4b39e-b071-4692-af50-36b518f02555__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 18.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/discover/%7B%22productId%22:%221%22,%22externalId%22:%221%22%7D' -i 
  -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/discover/%7B%22productId%22:%221%22,%22externalId%22:%221%22%7D HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1470

  {
    "productLookupResponse" : {
      "exactMatch" : {
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
      "candidateMatches" : [ {
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
      } ]
    }
  }
  ```

  

Get Forecast Adjustments


``` pre
GET /api/v1/rest/product/forecast/{targets}/{date}
```



- **Description**

  Get forecast adjustment.

- **Parameters**
  <table id="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a"
  class="table frame-all">
  <caption><span class="table--title-label">Table 19. <span
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
  id="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__2">targets</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__3">targets</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__2">date</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__3">date</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0f818792-4e25-458d-a276-1ad2bc89489a__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 19.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 20. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6152f6d9-b744-42ee-9775-0b46aaebf48a__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 20.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/forecast/1/2017-03-01' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/forecast/1/2017-03-01 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 58

  {
    "forecastDebugResponse" : {
      "result" : "foo"
    }
  }
  ```

  

Get Inventory Detail by External ID Batch


``` pre
GET /api/v1/rest/product/inventory/batch/externalids/{queries}
```



- **Description**

  The External ID Product Inventory API call can also be called in a
  batch mode, where more than one combination of external ID, start
  date, and end date can be queried for in a single call. In this case,
  the Inventory Batch Lookup Response structure will be returned from
  the call. This structure wraps multiple Inventory Detail structures,
  one for each query made to the batch API call. In the case that an
  invalid External ID is passed in, the API will return a NOT_FOUND
  constant for all string values in the ProductDetail structure.

- **Parameters**
  <table id="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0"
  class="table frame-all">
  <caption><span class="table--title-label">Table 21. <span
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
  id="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__2">queries</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__3">queries</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__2">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__3">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e77dce38-e260-43c2-ab37-002eef7229e0__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 21.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 22. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-74f3952c-686d-4cb8-a392-4edd80eb1750__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 22.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/batch/externalids/queries;
  q=12345,2017-03-01,2017-03-31;q=23456,2017-03-01,2017-03-31' -i -H 'Content-Type: application/json' 
  -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/batch/externalids/queries;q=12345,2017-03-01,2017-03-31;q=23456,
  2017-03-01,2017-03-31 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1767

  {
    "inventoryBatchLookupResponse" : {
      "inventoryDetails" : [ {
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
        "summary" : {
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
        "dailyDetail" : [ {
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
        } ]
      } ]
    }
  }
  ```

  

Get Inventory Details by Target Expression Batch


``` pre
POST /api/v1/rest/product/inventory/batch/{consumptionFilter}
```



- **Description**

  Inventory Details can be dynamically looked up in batch mode by
  passing url based alias function and consumption filters. The body of
  this call can contain a collection of lookup queries that are defined
  by the presence of a well-formed target expression and the date range
  for the lookup.

- **Parameters**
  <table id="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663"
  class="table frame-all">
  <caption><span class="table--title-label">Table 23. <span
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
  id="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5"><a
  href="product-and-inventory-service.html#ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c"
  class="xref">BatchInventoryQuery</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3d697f44-bfd1-4119-bf51-dd7cd6336663__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 23.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 24. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-90cbc9e7-86ba-4eb8-a09b-489e2b053057__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 24.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/batch/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X POST 
  -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}' -d '{
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('300x250') and state in ('co')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      }, {
        "targetExpression" : "size in ('300x250') and state in ('ca')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      } ]
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/batch/consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;
  CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 348

  {
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('300x250') and state in ('co')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      }, {
        "targetExpression" : "size in ('300x250') and state in ('ca')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      } ]
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1767

  {
    "inventoryBatchLookupResponse" : {
      "inventoryDetails" : [ {
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
        "summary" : {
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
        "dailyDetail" : [ {
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
        } ]
      } ]
    }
  }
  ```

  

Get Inventory Details by Target Expression with Displacement Batch


``` pre
POST /api/v1/rest/product/inventory/displacement/batch/{consumptionFilter}
```



- **Description**

  Inventory Details can be dynamically looked up in batch mode by
  passing url based alias function and consumption filters. The body of
  this call can contain a collection of lookup queries that are defined
  by the presence of a well-formed target expression and the date range
  for the lookup.

- **Parameters**
  <table id="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af"
  class="table frame-all">
  <caption><span class="table--title-label">Table 25. <span
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
  id="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c"
  class="xref">BatchInventoryQuery</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-179d2aaf-ae65-4003-8a0a-3fd53d5201af__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 25.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 26. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-4ec8f653-8349-43ea-8a1c-6a0bb7deea34__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 26.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/displacement/batch/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 
  'source: {{source}}' -d '{
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('300x250') and state in ('co')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      }, {
        "targetExpression" : "size in ('300x250') and state in ('ca')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      } ]
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/displacement/batch/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 348

  {
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('300x250') and state in ('co')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      }, {
        "targetExpression" : "size in ('300x250') and state in ('ca')",
        "startDate" : "2017-01-01",
        "endDate" : "2030-09-01"
      } ]
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1869

  {
    "inventoryWithDisplacementBatchLookupResponse" : {
      "inventoryDetails" : [ {
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
        "summary" : {
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
          "daysOutsideAvailabilityThreshold" : 0,
          "availableWithDisplacement" : 150
        },
        "dailyDetail" : [ {
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
          "daysOutsideAvailabilityThreshold" : 0,
          "availableWithDisplacement" : 150
        } ]
      } ]
    }
  }
  ```

  

Get Inventory Detail by Target Expression with Displacement


``` pre
POST /api/v1/rest/product/inventory/displacement/targetexpression/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Product Inventory
  lookup. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic products.

- **Parameters**
  <table id="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c"
  class="table frame-all">
  <caption><span class="table--title-label">Table 27. <span
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
  id="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5"><a
  href="product-and-inventory-service.html#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-759789e7-cc90-4482-903d-4ef2387e7b6c__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 27.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 28. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-8930478a-4cff-4ec2-aaed-4753243a0624__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 28.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/displacement/targetexpression/
  2017-03-01/2017-03-01/consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;
  PRIORITY%3E=5' -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/displacement/targetexpression/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1693

  {
    "inventoryDetail" : {
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
      "summary" : {
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
        "daysOutsideAvailabilityThreshold" : 0,
        "availableWithDisplacement" : 150
      },
      "dailyDetail" : [ {
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
        "daysOutsideAvailabilityThreshold" : 0,
        "availableWithDisplacement" : 150
      } ]
    }
  }
  ```

  

Get Inventory Detail by External ID


``` pre
GET /api/v1/rest/product/inventory/externalid/{externalId}/{startDate}/{endDate}
```



- **Description**

  The use of the External ID Product Inventory API is limited to
  inventory lookups where the a static Product has been configured with
  an External ID. This allows API developers to use an external
  correlating identifier to lookup Yield Analytics Product Inventory. In
  order to use the External ID a persistent mapping must be specified,
  configured, and maintained in the Yield Analytics system. Contact your
  Yield Analytics Administrator to setup this mapping.

- **Parameters**
  <table id="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a"
  class="table frame-all">
  <caption><span class="table--title-label">Table 29. <span
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
  id="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2">externalId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3">externalId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a98a298b-a489-4e8f-85cf-e0ce3b1b149a__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 29.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 30. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-8a8fa7f1-e725-4c32-b492-527a7792ab3e__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 30.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/externalid/12345/2017-03-01/2017-03-31' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' 
  -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/externalid/12345/2017-03-01/2017-03-31 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

Get Inventory Detail by External ID with Consumption Filter


``` pre
GET /api/v1/rest/product/inventory/externalid/{externalId}/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  The use of the External ID Product Inventory API is limited to
  inventory lookups where the a static Product has been configured with
  an External ID. This allows API developers to use an external
  correlating identifier to lookup Yield Analytics Product Inventory. In
  order to use the External ID a persistent mapping must be specified,
  configured, and maintained in the Yield Analytics system. Contact your
  Yield Analytics Administrator to setup this mapping.

- **Parameters**
  <table id="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008"
  class="table frame-all">
  <caption><span class="table--title-label">Table 31. <span
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
  id="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">externalId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">externalId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">matrixVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2d14cda6-01ec-4b39-aa41-9c47454a9008__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 31.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 32. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7e71a315-babd-4b7e-81e8-9570300c8795__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 32.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/externalid/12345/2017-03-01/2017-03-31/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/externalid/12345/2017-03-01/2017-03-31/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

Get Inventory Detail by Operative Adapter Targeting


``` pre
POST /api/v1/rest/product/inventory/operativeadapter/targeting/{startDate}/{endDate}
```



- **Description**

  The Operative Adapter Targeting Product Inventory API call allows
  Inventory Details to be retrieved for static or dynamic products via
  Operative Targeting Structures syntax combined with Consumption Filter
  inputs.

- **Parameters**
  <table id="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b"
  class="table frame-all">
  <caption><span class="table--title-label">Table 33. <span
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
  id="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2">targeting</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3">targeting</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a"
  class="xref">OperativeTargetingOptions</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-509bc9e3-f778-4738-b120-1c4d835f4c0b__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 33.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 34. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-43373cb8-ee59-4d31-bcb8-c8e160bb0e87__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 34.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/operativeadapter/targeting/2017-03-01/2017-03-01' 
  -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetingOptionFlatList" : [ {
      "mappedField" : "",
      "mappedValue" : "",
      "mappedValueExternalId" : "",
      "productionSystemIds" : [ ],
      "productionSystemName" : "",
      "rank" : 0,
      "status" : "",
      "targetingId" : 0,
      "targetingName" : "TEST",
      "targetingOptionId" : 0,
      "targetingOptionValue" : "",
      "productionSystemId" : 0
    } ]
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/operativeadapter/targeting/2017-03-01/2017-03-01 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 370

  {
    "targetingOptionFlatList" : [ {
      "mappedField" : "",
      "mappedValue" : "",
      "mappedValueExternalId" : "",
      "productionSystemIds" : [ ],
      "productionSystemName" : "",
      "rank" : 0,
      "status" : "",
      "targetingId" : 0,
      "targetingName" : "TEST",
      "targetingOptionId" : 0,
      "targetingOptionValue" : "",
      "productionSystemId" : 0
    } ]
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

Get Inventory Detail by Operative Adapter Targeting with Consumption
Filter


``` pre
POST /api/v1/rest/product/inventory/operativeadapter/targeting/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  The Operative Adapter Targeting Product Inventory API call allows
  Inventory Details to be retrieved for static or dynamic products via
  Operative Targeting Structures syntax combined with Consumption Filter
  inputs.

- **Parameters**
  <table id="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec"
  class="table frame-all">
  <caption><span class="table--title-label">Table 35. <span
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
  id="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">targeting</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">targeting</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a"
  class="xref">OperativeTargetingOptions</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1c87d5e3-f368-4233-bf0c-4221eef480ec__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 35.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 36. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-bed1c82f-db3b-41f9-be1e-e468be44ce7d__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 36.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/operativeadapter/targeting/2017-03-01/2017-03-01/
  consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X 
  POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetingOptionFlatList" : [ {
      "mappedField" : "",
      "mappedValue" : "",
      "mappedValueExternalId" : "",
      "productionSystemIds" : [ ],
      "productionSystemName" : "",
      "rank" : 0,
      "status" : "",
      "targetingId" : 0,
      "targetingName" : "TEST",
      "targetingOptionId" : 0,
      "targetingOptionValue" : "",
      "productionSystemId" : 0
    } ]
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/operativeadapter/targeting/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 370

  {
    "targetingOptionFlatList" : [ {
      "mappedField" : "",
      "mappedValue" : "",
      "mappedValueExternalId" : "",
      "productionSystemIds" : [ ],
      "productionSystemName" : "",
      "rank" : 0,
      "status" : "",
      "targetingId" : 0,
      "targetingName" : "TEST",
      "targetingOptionId" : 0,
      "targetingOptionValue" : "",
      "productionSystemId" : 0
    } ]
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

Get Inventory Detail by Product ID with Consumption Filter


``` pre
GET /api/v1/rest/product/inventory/productid/{productId}/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  Product Inventory may also be retrieved using the Yield Analytics
  internal Product ID combined with Consumption Filter inputs.

- **Parameters**
  <table id="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71"
  class="table frame-all">
  <caption><span class="table--title-label">Table 37. <span
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
  id="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">productId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">productId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-cdea4ba1-44ad-4eec-b85c-878155dcae71__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 37.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 38. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-83c701aa-fefb-4961-be99-060814af8780__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 38.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/productid/-2147483646/2017-03-01/2017-03-01/
  consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' 
  -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/productid/-2147483646/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

Get Roadblock Detail with Consumption Filter


``` pre
POST /api/v1/rest/product/inventory/roadblock/product/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  Roadblock Detail would be retrieved with roadblock Consumption Filter.

- **Parameters**
  <table id="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77"
  class="table frame-all">
  <caption><span class="table--title-label">Table 39. <span
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
  id="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">roadblock</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">roadblock</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929"
  class="xref">Roadblock</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-80f632aa-d76f-47e9-be79-7ca084ae7a77__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 39.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 40. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0422699c-64d9-440d-9c6d-022912fd12ce__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 40.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/roadblock/product/2017-03-01/2017-03-01/consumptionFilter;
  ROADBLOCK=all' -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}' -d '{
    "roadblock" : {
      "targetExpressions" : [ "ad_server in ('TEST') and size in ('180x70'), ad_server in ('TEST') and size in ('1010x150')" ]
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/roadblock/product/2017-03-01/2017-03-01/consumptionFilter;ROADBLOCK=all HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 150

  {
    "roadblock" : {
      "targetExpressions" : [ "ad_server in ('TEST') and size in ('180x70'), ad_server in ('TEST') and size in ('1010x150')" ]
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 78

  {
    "roadblockDetail" : {
      "availability" : 100,
      "capacity" : 100
    }
  }
  ```

  

Get Inventory Detail by Target String


``` pre
GET /api/v1/rest/product/inventory/target/{target}/{startDate}/{endDate}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Product Inventory
  lookup. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic products.

- **Parameters**
  <table id="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe"
  class="table frame-all">
  <caption><span class="table--title-label">Table 41. <span
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
  id="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-aa3c4ffb-6b09-479e-b783-8b8894defdbe__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 41.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 42. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-4e8748b5-3717-47d7-af7a-1f5a3604b993__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 42.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/target/city=Boulder;country=USA/2017-03-01/2017-03-01' -i 
  -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' 
  -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/target/city=Boulder;country=USA/2017-03-01/2017-03-01 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  } 
  ```

  

Get Inventory Detail by Target String with Consumption Filter


``` pre
GET /api/v1/rest/product/inventory/target/{target}/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Product Inventory
  lookup. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic products.

- **Parameters**
  <table id="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a"
  class="table frame-all">
  <caption><span class="table--title-label">Table 43. <span
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
  id="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-345d5335-3b96-4196-9d8e-4e9db3b7a00a__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 43.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 44. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1243adb6-6774-4b36-8539-0218d23d9d34__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 44.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/target/city=Boulder;country=USA/2017-03-01/2017-03-01/
  consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/target/city=Boulder;country=USA/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

**Get Inventory Detail by Target Expression**


``` pre
POST /api/v1/rest/product/inventory/targetexpression/{startDate}/{endDate}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Product Inventory
  lookup. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic products.

- **Parameters**
  <table id="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31"
  class="table frame-all">
  <caption><span class="table--title-label">Table 45. <span
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
  id="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-0dbe01d5-1f2b-4c41-8f11-4af29c961c31__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 45.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 46. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-65f16a52-dc9e-46a3-b9b1-3d4c557449ad__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 46.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/targetexpression/2017-03-01/2017-03-01' -i -X 
  POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/targetexpression/2017-03-01/2017-03-01 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

**Get Inventory Detail by Target Expression with Consumption Filter**


``` pre
POST /api/v1/rest/product/inventory/targetexpression/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Product Inventory
  lookup. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic products.

- **Parameters**
  <table id="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2"
  class="table frame-all">
  <caption><span class="table--title-label">Table 47. <span
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
  id="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1305ec3e-4dbf-437a-9bf6-9b189b4e75f2__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 47.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 48. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6d188086-5f69-4eaa-ad0c-809c94d9913c__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 48.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/targetexpression/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' 
  -H 'source: {{source}}' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/targetexpression/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

**Get Combined Inventory Detail by Target Expression**


``` pre
POST /api/v1/rest/product/inventory/targetexpressioncombined/{startDate}/{endDate}/{consumptionFilter}
```



- **Description**

  The use of a Yield Analytics Originating Target targeting expression
  in Yield Analytics targeting syntax is supported for Product Inventory
  lookup. These expressions are returned in the ProductLookupResponse
  ProductDetail data structure as well as displayed in the Yield
  Analytics UI. This syntax allows for the richest targeting expressions
  to be built and defined. The use of Originating Target works for both
  static and dynamic Products. This API returns a
  CombinedInventoryDetail object that contains an InventoryDetail
  including the effects of frequency capping and another one without
  capping effects. If the consumption filter has no frequency capping
  component, both InventoryDetail results are the same.

- **Parameters**
  <table id="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e"
  class="table frame-all">
  <caption><span class="table--title-label">Table 49. <span
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
  id="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">targetExpression</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5"><a
  href="product-and-inventory-service.html#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a870d0a-1d9b-48f4-98c7-2ac5b107cb9e__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 49.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 50. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-d6887bd9-e425-4bf1-86c2-bfb780349ab0__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 50.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/targetexpressioncombined/2017-03-01/2017-03-01/
  consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 
  'source: {{source}}' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventory/targetexpressioncombined/2017-03-01/2017-03-01/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 3472

  {
    "combinedInventoryDetail" : {
      "uncappedDetail" : {
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
        "summary" : {
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
        "dailyDetail" : [ {
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
        } ]
      },
      "cappedDetail" : {
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
        "summary" : {
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
        "dailyDetail" : [ {
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
        } ]
      }
    }
  }
  ```

  

**Get Inventory Detail by Targeting Characteristics**


``` pre
GET /api/v1/rest/product/inventory/targetingcharacteristics/{characteristics}/{startDate}/{endDate}
```



- **Description**

  The Targeting Characteristics Product Inventory API call allows
  Inventory Detail to be retrieved for static or dynamic products via
  the loosely formed Targeting Criteria syntax.

- **Parameters**
  <table id="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f"
  class="table frame-all">
  <caption><span class="table--title-label">Table 51. <span
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
  id="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">characteristics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">characteristics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">characteristicsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">characteristicsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-2197079d-81d1-4131-bcd9-36363584678f__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 51.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 52. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-19cd75cb-bdd7-4a0f-9f43-c92431947f66__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 52.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/targetingcharacteristics/characteristics;city=Boulder;
  country=USA/2017-03-01/2017-03-01' -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 
  'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/targetingcharacteristics/characteristics;city=Boulder;
  country=USA/2017-03-01/2017-03-01 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

**Get Inventory Detail by Targeting Characteristics with Consumption
Filter**


``` pre
GET /api/v1/rest/product/inventory/targetingcharacteristics/{characteristics}/{startDate}/{endDate}
```



- **Description**

  The Targeting Characteristics Product Inventory API call allows
  Inventory Detail to be retrieved for static or dynamic products via
  the loosely formed Targeting Criteria syntax.

- **Parameters**
  <table id="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa"
  class="table frame-all">
  <caption><span class="table--title-label">Table 53. <span
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
  id="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">characteristics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">characteristics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">characteristicsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">characteristicsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-645e9479-7704-44a7-b4e2-cb4726c6e4aa__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 53.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 54. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-60bb3396-26c3-4725-b358-085022b3d979__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 54.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventory/targetingcharacteristics/characteristics;
  city=Boulder;country=USA/2017-03-01/2017-03-01/consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;
  CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 
  'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventory/targetingcharacteristics/characteristics;city=Boulder;
  country=USA/2017-03-01/2017-03-01/consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;
  CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1611

  {
    "inventoryDetail" : {
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
      "summary" : {
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
      "dailyDetail" : [ {
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
      } ]
    }
  }
  ```

  

**Get Batch Inventory and Contention**


``` pre
POST /api/v1/rest/product/inventoryandcontention/batch/{aliasFunctions}/{consumptionFilter}
```



- **Description**

  A batch related interface is also available to retrieve multiple
  product - date range pairings' inventory and contention data
  concurrently. The batch interface should be preferred in cases where
  several sets of inventory and contention data must be retrieved for
  display as a grouping. The batch interface performs internal
  multi-threading to greatly increase overall throughput and performance
  as batch items are not run serially.

- **Parameters**
  <table id="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744"
  class="table frame-all">
  <caption><span class="table--title-label">Table 55. <span
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
  id="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c"
  class="xref">BatchInventoryQuery</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-1975e746-6e6e-4a33-a7e8-b96994c30744__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 55.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 56. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7581eacd-4d94-4b9b-8b9a-0726afd174ef__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 56.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventoryandcontention/batch/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' 
  -H 'source: {{source}}' -d '{
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('TEST')",
        "startDate" : "2017-01-01",
        "endDate" : "2017-03-01"
      } ]
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventoryandcontention/batch/aliasFunctions;INVENTORY_CLASS=GUARANTEED;
  CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5/consumptionFilter;INVENTORY_CLASS=GUARANTEED;
  CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 181

  {
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('TEST')",
        "startDate" : "2017-01-01",
        "endDate" : "2017-03-01"
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

  

**Get Batch Inventory and Contention with Displacement**


``` pre
POST /api/v1/rest/product/inventoryandcontention/displacement/batch/{aliasFunctions}/{consumptionFilter}
```



- **Description**

  A batch related interface is also available to retrieve multiple
  product - date range pairings' inventory and contention data
  concurrently. The batch interface should be preferred in cases where
  several sets of inventory and contention data must be retrieved for
  display as a grouping. The batch interface performs internal
  multi-threading to greatly increase overall throughput and performance
  as batch items are not run serially.

- **Parameters**
  <table id="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27"
  class="table frame-all">
  <caption><span class="table--title-label">Table 57. <span
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
  id="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">batchInventoryQuery</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c"
  class="xref">BatchInventoryQuery</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-3a57d778-ed03-4927-8fa4-df4fce5bab27__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 57.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 58. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-13ff434e-1aa3-4238-b93a-1a89c4dc7d99__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 58.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventoryandcontention/displacement/batch/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' 
  -H 'source: {{source}}' -d '{
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('TEST')",
        "startDate" : "2017-01-01",
        "endDate" : "2017-03-01"
      } ]
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventoryandcontention/displacement/batch/aliasFunctions;INVENTORY_CLASS=GUARANTEED;
  CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5/consumptionFilter;INVENTORY_CLASS=GUARANTEED;
  CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 181

  {
    "batchInventoryQuery" : {
      "queryCriteria" : [ {
        "targetExpression" : "size in ('TEST')",
        "startDate" : "2017-01-01",
        "endDate" : "2017-03-01"
      } ]
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1713

  {
    "inventoryAndContentionWithDisplacementBatchResponse" : {
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
            "daysOutsideAvailabilityThreshold" : 0,
            "availableWithDisplacement" : 150
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

  

**Get Inventory and Contention by Target Expression with Displacement**


``` pre
POST /api/v1/rest/product/inventoryandcontention/displacement/targetexpression/{startDate}/{endDate}/{aliasFunctions}
/{consumptionFilter}
```



- **Description**

  The Inventory and Contention In cases where both inventory forecast
  data and contender data is required overall performance and throughput
  can be maximized by leveraging the Inventory and Contention based
  APIs. There are both single call and batch invocation options. When
  multiple inventory and contention is being retrieved for a variety of
  products or targets, the batch option should be preferred or the API
  should be accessed in a multithreaded manner. Calls to the Inventory
  and Contention APIs may be filtered using the Yield Analytics API
  consumptionFilter filter specification syntax.

  Additionally, the Inventory and Contention API offers flexible
  extraction of orderline dimensional data using Query Engine aliases.

  The Inventory And Consumption API may be invoked via both GET and POST
  http methods. The use of POST is strongly recommended as this lessens
  the escaping required due to conflicting characters between the
  supplied target expression and URL legal characters.

- **Parameters**
  <table id="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f"
  class="table frame-all">
  <caption><span class="table--title-label">Table 59. <span
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
  id="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-6b75020d-c43b-47d3-b37a-e0ebf07ce11f__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 59.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 60. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-45ee7763-79f2-4a7f-91a4-aba1dd99fa60__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 60.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventoryandcontention/displacement/targetexpression/
  2017-03-01/2017-03-01/aliasFunctions;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/
  consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED' -i -X POST -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 
  'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventoryandcontention/displacement/targetexpression/2017-03-01/2017-03-01/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/consumptionFilter;INVENTORY_CLASS=GUARANTEED;
  CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1410

  {
    "inventoryAndContentionWithDisplacement" : {
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
        "daysOutsideAvailabilityThreshold" : 0,
        "availableWithDisplacement" : 150
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
  }
  ```

  

**Get Inventory and Contention by Target String**


``` pre
GET /api/v1/rest/product/inventoryandcontention/target/{target}/{startDate}/{endDate}/{aliasFunctions}/{consumptionFilter}
```



- **Description**

  The Inventory and Contention In cases where both inventory forecast
  data and contender data is required overall performance and throughput
  can be maximized by leveraging the Inventory and Contention based
  APIs. There are both single call and batch invocation options. When
  multiple inventory and contention is being retrieved for a variety of
  products or targets, the batch option should be preferred or the API
  should be accessed in a multithreaded manner. Calls to the Inventory
  and Contention APIs may be filtered using the Yield Analytics API
  consumptionFilter filter specification syntax.

  Additionally, the Inventory and Contention API offers flexible
  extraction of orderline dimensional data using Query Engine aliases.

  The Inventory And Consumption API may be invoked via both GET and POST
  http methods. The use of POST is strongly recommended as this lessens
  the escaping required due to conflicting characters between the
  supplied target expression and URL legal characters.

- **Parameters**
  <table id="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa"
  class="table frame-all">
  <caption><span class="table--title-label">Table 61. <span
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
  id="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-49150074-dc2a-4ba7-ba49-d6c3b4c478fa__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 61.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 62. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-a9d06b3f-96fd-433c-bc9d-f95aaf51e89c__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 62.
  <span class="title">

- **Consumes**
  - application/json

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventoryandcontention/target/ad_server%20in%20('TEST')
  /2017-03-01/2017-03-01/aliasFunctions;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/
  consumptionFilter;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED' -i -H 
  'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  GET /api/v1/rest/product/inventoryandcontention/target/ad_server%20in%20('TEST')/2017-03-01/2017-03-01/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/consumptionFilter;INVENTORY_CLASS=GUARANTEED;
  CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1353

  {
    "inventoryAndContention" : {
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
  }
  ```

  

**Get Inventory and Contention by Target Expression**


``` pre
POST /api/v1/rest/product/inventoryandcontention/targetexpression/{startDate}/{endDate}/{aliasFunctions}/{consumptionFilter}
```



- **Description**

  The Inventory and Contention In cases where both inventory forecast
  data and contender data is required overall performance and throughput
  can be maximized by leveraging the Inventory and Contention based
  APIs. There are both single call and batch invocation options. When
  multiple inventory and contention is being retrieved for a variety of
  products or targets, the batch option should be preferred or the API
  should be accessed in a multithreaded manner. Calls to the Inventory
  and Contention APIs may be filtered using the Yield Analytics API
  consumptionFilter filter specification syntax.

  Additionally, the Inventory and Contention API offers flexible
  extraction of orderline dimensional data using Query Engine aliases.

  The Inventory And Consumption API may be invoked via both GET and POST
  http methods. The use of POST is strongly recommended as this lessens
  the escaping required due to conflicting characters between the
  supplied target expression and URL legal characters.

- **Parameters**
  <table id="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553"
  class="table frame-all">
  <caption><span class="table--title-label">Table 63. <span
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
  id="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">target</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">startDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">endDate</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">aliasFunctions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">aliasFunctionsVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">consumptionFilter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">PathParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">consumptionFilterVars</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">object</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7eb99320-ba20-43e0-875d-9e50a641b553__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 63.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 64. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-7504bb34-4fb9-43d9-8095-23fa9b8160cb__entry__3">object</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 64.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/inventoryandcontention/targetexpression/2017-03-01/
  2017-03-01/aliasFunctions;INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED' -i -X POST -H 'Content-Type: application/json' 
  -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/inventoryandcontention/targetexpression/2017-03-01/2017-03-01/aliasFunctions;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED/consumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 75

  {
    "targetExpression" : {
      "expression" : "ad_server in ('TEST')"
    }
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 1353

  {
    "inventoryAndContention" : {
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
  }
  ```

  

**Get Operative Adapter Targeting Expression**


``` pre
POST /api/v1/rest/product/targeting/operativeadapter
```



- **Description**

  Get operative adapter targeting expression.

- **Parameters**
  <table id="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330"
  class="table frame-all">
  <caption><span class="table--title-label">Table 65. <span
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
  id="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__2">targets</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__3">targets</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__5"><a
  href="product-and-inventory-service.md#ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a"
  class="xref">OperativeTargetingOptions</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-e6237203-9247-4d09-a545-abf567747330__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 65.
  <span class="title">

- **Responses**
  <table id="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 66. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001482__table-b26c88bf-907b-4bb4-a4b8-5782bfa8c035__entry__3"><a
  href="product-and-inventory-service.md#ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="xref">TargetExpression</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 66.
  <span class="title">

- **Consumes**
  - application/json
  - application/xml

- **Produces**
  - application/json
  - application/xml

- **Tags**
  - Product Resource

- **Example CURL request**
  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/product/targeting/operativeadapter' -i -X POST 
  -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}' -d '{
    "targetingOptionFlatList" : [ {
      "mappedField" : "",
      "mappedValue" : "",
      "mappedValueExternalId" : "",
      "productionSystemIds" : [ ],
      "productionSystemName" : "",
      "rank" : 0,
      "status" : "",
      "targetingId" : 0,
      "targetingName" : "TEST",
      "targetingOptionId" : 0,
      "targetingOptionValue" : "",
      "productionSystemId" : 0
    } ]
  }'
  ```

  

- **Example HTTP request**
  >

  ``` pre
  POST /api/v1/rest/product/targeting/operativeadapter HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 370

  {
    "targetingOptionFlatList" : [ {
      "mappedField" : "",
      "mappedValue" : "",
      "mappedValueExternalId" : "",
      "productionSystemIds" : [ ],
      "productionSystemName" : "",
      "rank" : 0,
      "status" : "",
      "targetingId" : 0,
      "targetingName" : "TEST",
      "targetingOptionId" : 0,
      "targetingOptionValue" : "",
      "productionSystemId" : 0
    } ]
  }
  ```

  

- **Example HTTP response**
  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 46

  {
    "expression" : "ad_unit in ('sf video')"
  }
  ```

  





## Definitions

- 

  **BatchInventoryQuery**
  <table id="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__1">batchInventoryQuery</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__4">BatchInventoryQuery</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__1">queryCriteria</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__2">A
  collection of inventory query criteria</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90b3c205-dc1c-4751-954e-8066fc6bdd4c__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36"
  class="xref">InventoryQueryCriteria</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **BulkProductCreation**
  <table id="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__1">bulkProductCreation</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__4">BulkProductCreation</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__1">products</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__2">A
  collection of product creation data types holding the relevant data for
  each product to be added to the system</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d425465-f4a3-4100-a326-c2b2b69741f9__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802"
  class="xref">ProductCreation</a> array</td>
  </tr>
  </tbody>
  </table>

- **BulkProductCreationResponse**
  >

  A JSON object to hold the request for Bulk Product Creation Response.
  <table id="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__1">products</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__2">A
  collection of product creation detail of the bulk product creation
  response</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-4e07d6c5-5c03-4576-8efe-04d3573965bc__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe"
  class="xref">ProductCreationDetail</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **ColumnData**
  >

  A JSON object to hold the results of a column data.
  <table id="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__2">The
  name of the column data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__2">The
  value object of the column data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **CombinedInventoryDetail**
  >

  A JSON object to hold the results of a combined inventory detail.
  <table id="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__1">cappedDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__2">The
  capped inventory detail of the combined inventory detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc"
  class="xref">InventoryDetail</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__1">uncappedDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__2">The
  uncapped inventory detail of the combined inventory detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f0cbe8a6-95e4-4b3b-94ec-b9a37703bb83__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc"
  class="xref">InventoryDetail</a></td>
  </tr>
  </tbody>
  </table>

  

- **ConsumptionDetail**
  >

  A JSON object to hold the results of a consumption detail.
  <table id="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__1">consumedImpressions</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__2">The
  field contains consumed impressions</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__1">detailName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__2">The
  name of consumption detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **ForecastDebugResponse**
  >

  A JSON object to hold the results of a forecast debug response.
  <table id="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__1">result</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__2">The
  result of the forecast debug response</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-32840ce8-1eb1-4c34-aa76-090b05f1ccb7__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **InventoryAndContention**
  >

  A JSON object to hold the results of an inventory and contention.
  <table id="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__1">contendingData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__2">The
  contending query result data of the inventory and contention</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0"
  class="xref">QueryResultData</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__1">productDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__2">The
  product detail of the inventory and contention</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__1">summaryData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__2">The
  inventory summary data of the inventory and contention</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f"
  class="xref">InventoryData</a></td>
  </tr>
  </tbody>
  </table>

  

- **InventoryAndContentionBatchResponse**
  >

  A JSON object to hold the results of an inventory and contention batch
  response.
  <table id="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__1">batchResults</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__2">A
  collection of inventory and contention batch results</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-c383f0e0-04ee-4591-8187-aba675f56ef1__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699"
  class="xref">InventoryAndContentionBatchResult</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **InventoryAndContentionBatchResult**
  >

  A JSON object to hold the results of an inventory and contention batch
  result.
  <table id="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__1">identifier</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__2">The
  identifier of the inventory and contention batch result</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__1">result</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__2">The
  result of the inventory and contention batch result</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-275eafcb-2b6f-42da-b276-340b120db699__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-15436d8a-417c-455f-b1cc-75ec8cb33805"
  class="xref">InventoryAndContention</a></td>
  </tr>
  </tbody>
  </table>

  

- **InventoryAndContentionWithDisplacement**
  >

  A JSON object to hold the results of an inventory and contention
  detail with displacement enabled.
  <table id="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__1">contendingData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0"
  class="xref">QueryResultData</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__1">productDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__1">summaryData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166"
  class="xref">InventoryDataWithDisplacement</a></td>
  </tr>
  </tbody>
  </table>

  

- **InventoryAndContentionWithDisplacementBatchResponse**
  >

  A JSON object to hold the results of an inventory and contention with
  displacement enabled batch response.
  <table id="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__1">batchResults</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bcdcd183-6173-44ac-9e99-e12f29e58e3c__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb"
  class="xref">InventoryAndContentionWithDisplacementBatchResult</a>
  array</td>
  </tr>
  </tbody>
  </table>

  

- **InventoryAndContentionWithDisplacementBatchResult**
  >

  A JSON object to hold the results of an inventory and contention with
  displacement enabled batch result.
  <table id="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__1">identifier</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__1">result</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-560abf51-557d-4cc2-830f-7f60159c93cb__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-f13888b9-c3d2-4bd5-a41b-48d67161e2f2"
  class="xref">InventoryAndContentionWithDisplacement</a></td>
  </tr>
  </tbody>
  </table>

  

- **InventoryBatchLookupResponse**
  >

  A JSON object to hold the results of an inventory batch lookup
  response.
  <table id="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__1">inventoryDetails</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__2">A
  collection of inventory details</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-52aa3fb6-6e4e-40d6-aa26-3cbedf64648b__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc"
  class="xref">InventoryDetail</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **InventoryData**
  >

  A JSON object to hold the results of an inventory data.
  <table id="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">available</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  field contains available</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">capacity</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  field contains capacity</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">consumptionDetails</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">A
  collection of consumption details</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399"
  class="xref">ConsumptionDetail</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">daysInForecast</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  days in forecast of the inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">daysOutsideAvailabilityThreshold</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  days outside availability threshold of the inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">endDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  end date of inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">evenAvailability</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  even availability of the inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">exceededForecastWindow</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  field indicates whether or not the inventory data exceeded forecast
  window</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">boolean</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">startDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  start date of inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__1">unmetDemand</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__2">The
  field contains unmet demand</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f__entry__4">integer
  (int64)</td>
  </tr>
  </tbody>
  </table>

  

  **InventoryDataWithDisplacement**
  >

  A JSON object to hold the results of an inventory data with
  displacement enabled.
  <table id="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">available</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  field contains available</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">availableWithDisplacement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">capacity</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  field contains capacity</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">consumptionDetails</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">A
  collection of consumption details</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-d9c639d4-33e1-4dda-b53b-0d9075309399"
  class="xref">ConsumptionDetail</a> array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">daysInForecast</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  days in forecast of the inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">daysOutsideAvailabilityThreshold</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  days outside availability threshold of the inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">endDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  end date of inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">evenAvailability</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  even availability of the inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">boolean</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">exceededForecastWindow</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  field indicates whether or not the inventory data exceeded forecast
  window</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">startDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  start date of inventory data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__1">unmetDemand</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__2">The
  field contains unmet demand</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166__entry__4">integer
  (int64)</td>
  </tr>
  </tbody>
  </table>

  

- **InventoryDetail**
  >

  A JSON object to hold the results of an inventory detail.
  <table id="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__1">dailyDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__2">A
  collection of daily inventory detail data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f"
  class="xref">InventoryData</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__1">productDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__2">The
  product detail of the inventory detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__1">summary</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__2">The
  inventory data of the inventory detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-6e69aeaf-a711-4611-b77f-7cd7d2b13adc__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-0b7a1e79-15e0-4043-903a-55dbb0b08e9f"
  class="xref">InventoryData</a></td>
  </tr>
  </tbody>
  </table>

  

- **InventoryDetailWithDisplacement**
  >

  A JSON object to hold the results of an inventory detail with
  displacement enabled.
  <table id="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__1">dailyDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166"
  class="xref">InventoryDataWithDisplacement</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__1">productDetail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__1">summary</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-dc07b199-94b0-419a-b62a-ca493e211166"
  class="xref">InventoryDataWithDisplacement</a></td>
  </tr>
  </tbody>
  </table>

  

- **InventoryQueryCriteria**
  >

  A JSON object to hold the results of an inventory query criteria.
  <table id="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__1">endDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__2">The
  end date of the inventory query criteria</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__1">identifier</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__2">The
  identifier of the inventory query criteria</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__1">startDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__2">The
  start date of the inventory query criteria</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__1">targetExpression</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__2">The
  target expression of the inventory query criteria</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-644e5855-c0f8-45c5-8ece-1de4e5ccca36__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **InventoryWithDisplacementBatchLookupResponse**
  >

  A JSON object to hold the results of an inventory with displacement
  enabled batch lookup response.
  <table id="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__1">inventoryDetails</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-90323c47-2d43-4189-8222-c2eee6c8e734__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-53cfca7c-93ff-4ce0-b1e2-5628f4e021d3"
  class="xref">InventoryDetailWithDisplacement</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **OperativeTargetingOptions**
  >

  A JSON object to hold the OperativeTargetingOptions.
  <table id="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__1">operativeProductId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__1">targetingOptionFlatList</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9"
  class="xref">TargetingOptionFlat</a> array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__1">yxProductId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-dab431dc-f0d2-4c95-aa84-9a54964c515a__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **ProductCreation**
  >

  A JSON object to hold the request for Product Creation.
  <table id="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">externalId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2"><p>rim
  then: not empty and length &lt; 200</p>
  <p>If productId exist and found in system, check for existence of
  externalId. If externalId also exist violates uniqueness of external
  ids. raise error: "Unable to update an existing product with product id:
  XXX that changes externalId to one: XXX that already exist"</p></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">originatingTarget</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">trim
  then: length &gt; 0, parsable, and attributes and values exist in our
  system</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">productClass</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">CUSTOM
  or RATE_CARD or REPORTING or SEASONAL_MODEL</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">productGroupNames</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">Comma
  separated list of user group names. User groups must exist or an error
  will be generated, new user groups are not created.</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">productId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">If
  present must be Long and must correspond to a product in our
  system.</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">productName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">check
  for null, trim then: not empty and length &lt; 4000</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">rateCardCPM</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">if
  present must be double - If omitted default value of 0 will be
  used.</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">number
  (double)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">state</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">ACTIVE
  or INACTIVE</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__1">userGroupNames</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__2">Comma
  separated list of user group names. User groups must exist or an error
  will be generated, new user groups are not created.</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-188a473c-1caf-4708-82a4-84dd0f958802__entry__4">string
  array</td>
  </tr>
  </tbody>
  </table>

  

- **ProductCreationDetail**
  >

  A JSON object to hold the results for Product Creation.
  <table id="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__1">errors</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__2">The
  a collection of validation constraints that were not met during creation
  scheduling</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89"
  class="xref">ProductCreationError</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__1">externalId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__2">The
  ID of the product from it’s system of record</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__1">productId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__2">The
  ID of the product within the Yield Analytics platform</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__1">productName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__2">The
  name of the product within the Yield Analytics platform</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__1">status</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__2">The
  status of the product creation job: PENDING, COMPLETED, FAILED</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-bfbb5ef3-61ef-4514-8267-ddf601a146fe__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **ProductCreationError**
  >

  A JSON object to hold the error for product creation.
  <table id="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__1">error</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__2">The
  error msg of the product creation field</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__1">field</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__2">The
  field of the product creation</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-5d23157c-afba-47c2-b641-e49d3f88ef89__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **ProductDetail**
  >

  A JSON object to hold the results of a product search.
  <table id="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">active</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">baseRateCardPrice</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  base rate card price of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">number
  (double)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">exists</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  exists boolean field of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">externalId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  external product ID of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">isActive</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  is active boolean field of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">isReporting</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  is reporting boolean field of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">isSold</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  is sold boolean field of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">priority</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  priority of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">productClass</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  product class of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">productExpression</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  product expression of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">productId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  product ID of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">productName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  product name of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">rateCardCPM</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  rate card cpm of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">number
  (double)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">rateCardFloor</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  rate card floor of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">number
  (double)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">rateCardProductId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  rate card product id of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">reporting</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">resolved</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  resolved boolean field of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">safeProductExpression</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  safe product expression of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">sold</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">state</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  state of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__1">targetExists</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__2">The
  target exists boolean field of the product detail</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af__entry__4">boolean</td>
  </tr>
  </tbody>
  </table>

  

- **ProductLookupResponse**
  >

  A JSON object to hold the results of a product search.
  <table id="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__1">candidateMatches</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__2">Details
  of the products matched in the search</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__1">exactMatch</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__2">The
  total count of matched products in the search</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-722ab0b8-a102-461c-a6ac-9c99bdb14692__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-18a8325c-82e4-4db2-bfcb-adcab3fd49af"
  class="xref">ProductDetail</a></td>
  </tr>
  </tbody>
  </table>

  

- **QueryResultData**
  >

  A JSON object to hold the results of a query result data.
  <table id="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__1">row</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__2">A
  collection of row data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-91af53c4-9602-4627-a09e-76c3e82cc6d0__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51"
  class="xref">RowData</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **Roadblock**
  <table id="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__1">products</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__2">A
  list of products</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__4">string
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__1">roadblock</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__4">Roadblock</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__1">targetExpressions</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__2">A
  list of target expressions</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-f734af13-4764-400d-a2ea-55689d0f9929__entry__4">string
  array</td>
  </tr>
  </tbody>
  </table>

- **RoadblockDetail**
  >

  A JSON object to hold the results of an roadblock detail.
  <table id="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__1">availability</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__2">The
  availability of roadblock</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__1">capacity</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__2">The
  capacity of roadblock</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-08aca303-edc5-4f95-aba4-d5dcdb6cc90e__entry__4">integer
  (int64)</td>
  </tr>
  </tbody>
  </table>

  

- **RowData**
  >

  A JSON object to hold the results of a row data.
  <table id="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__1">columnData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__2">A
  collection of column data</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-257cafbe-a530-4a82-9094-d41748dada51__entry__4"><a
  href="product-and-inventory-service.md#ID-00001482__table-0be60386-b638-4355-832b-78f80ac3741b"
  class="xref">ColumnData</a> array</td>
  </tr>
  </tbody>
  </table>

  

- **TargetExpression**
  <table id="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__1">expression</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__2">The
  expression field of the target expression</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__1">targetExpression</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-3dcdba84-5f25-43c4-93bc-27881151d18b__entry__4">TargetExpression</td>
  </tr>
  </tbody>
  </table>

- **TargetingOptionFlat**
  >

  A JSON object to hold the TargetingOptionFlat.
  <table id="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">mappedField</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">mappedValue</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">mappedValueExternalId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">productionSystemId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">productionSystemIds</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">productionSystemName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">rank</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">status</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">targetingId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">targetingName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">targetingOptionId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">integer
  (int64)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__1">targetingOptionValue</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__2"></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001482__table-b78a165b-c2c2-45b9-9faa-38a76a4801e9__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  





## Related Topics



- <a href="yield-analytics-api.md" class="xref">Yield Analytics API</a>





=

<a href="yield-analytics-api.md" class="link">Yield
Analytics API</a>






