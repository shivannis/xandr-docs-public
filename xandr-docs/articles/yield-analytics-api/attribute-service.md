---
Title : Attribute Service
Description : ## Overview
The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
ms.custom : yield-analytics-api

---


# Attribute Service





## Overview

The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
comfortable to developers experienced with Web 2.0, AJAX, REST, and
service oriented development platforms. Developers should have
familiarity with web based application paradigms including AJAX, XML,
JSON, and the HTTP(S) protocol prior to attempting development with the
Yield Analytics API and services.

The Attribute Service currently exposes interfaces related to:



- Attribute Translation creation
- Attribute Translation lookup







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

  

  ![Postman header variables](media/postman_header_variables.png)






## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## Paths

Convert External IDs to Yield Analytics Expression Lexicon



``` pre
POST /api/v1/rest/attributes/convert
```



- **Description**

  Pass in external ids for the attribute and attribute value(s) in order
  to convert to the Yield Analytics targeting lexicon.

- 

  **Parameters**
  <table id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 1. <span
  class="title">Param_table</caption>
  <colgroup>
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  <th
  id="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__6"
  class="entry align-center colsep-1 rowsep-1"><strong>Default</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__2">attributeConverter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__3">attributeConverter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__5"><a
  href="attribute-service.htmdml#ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542"
  class="xref">AttributeConverter</a></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__6">NA</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__2">username</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__5">string</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__6">NA</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__2">password</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__5">string</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__6">NA</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__2">source</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__5">string</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-53c2797a-a0ab-4fa2-8bcd-d36d5fa153a1__entry__6">NA</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 1.
  <span class="title">Param_table

  

- **Responses**

  

  <table id="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372"
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
  id="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-8ca9ae0f-441d-45fd-a38c-d81cf1f55372__entry__3"><a
  href="attribute-service.md#ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3"
  class="xref">StringResponse</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 2.
  <span class="title">

  

- **Consumes**

  application/json

- **Produces**

  application/json

- **Tags**

  Attribute Resource

- **Example CURL request**

  

  ``` pre
          $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/attributes/create' -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}' -d '{
          "attributeTranslation" : {
          "inputAttribute" : "attribute1",
          "inputValue" : "value1",
          "targetAttribute" : "targetattribute1",
          "targetValue" : "targetValue1",
          "adServerType" : "XFP",
          "invincible" : false
          }
          }'
  ```

  

- **Example HTTP request**

  

  ``` pre
          POST /api/v1/rest/attributes/create HTTP/1.1
          Content-Type: application/json
          Accept: application/json
          username: {{username}}
          password: {{password}}
          source: {{source}}
          Host: https://{{client_url}}/api/v1/rest
          Content-Length: 235
          
          {
          "attributeTranslation" : {
          "inputAttribute" : "attribute1",
          "inputValue" : "value1",
          "targetAttribute" : "targetattribute1",
          "targetValue" : "targetValue1",
          "adServerType" : "XFP",
          "invincible" : false
          }
          }
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
          Content-Type: application/json;charset=UTF-8
          Content-Length: 26
          
          {
          "result" : "Created"
          }
  ```

  

Create new attribute translation


``` pre
POST /api/v1/rest/attributes/create
```



- **Description**

  This accepts only a JSON formatted file, parses it and creates a new
  attribute in the Yield Analytics database.

  >

  **Parameters**
  <table id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3"
  class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 3. <span
  class="title">Param_table</caption>
  <colgroup>
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  <col style="width: 16%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  <th
  id="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__6"
  class="entry align-center colsep-1 rowsep-1"><strong>Default</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__1">BodyParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__2">attributeTranslation</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__3">attributeTranslation</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__5"><a
  href="attribute-service.md#ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979"
  class="xref">AttributeTranslation</a></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__6">NA</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__2">username</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__5">string</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__6">NA</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__2">password</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__5">string</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__6">NA</td>
  </tr>
  <tr class="even row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__1">HeaderParameter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__2">source</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__5">string</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-73e16f41-cc2e-4d6d-bf7b-3f0b83df69e3__entry__6">NA</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 3.
  <span class="title">Param_table

  

- **Responses**

  >

  <table id="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced"
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
  id="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001480__table-4e72809c-e62c-4cc3-8a53-9769b2b9eced__entry__3"><a
  href="attribute-service.md#ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3"
  class="xref">StringResponse</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 4.
  <span class="title">

  

- **Consumes**

  application/json

- **Produces**

  application/json

- **Tags**

  Attribute Resource

- **Example CURL request**

  >

  ``` pre
          $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/attributes/create' -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}' -d '{
    "attributeTranslation" : {
      "inputAttribute" : "attribute1",
      "inputValue" : "value1",
      "targetAttribute" : "targetattribute1",
      "targetValue" : "targetValue1",
      "adServerType" : "XFP",
      "invincible" : false
    }
  }'
  ```

  

- **Example HTTP request**

  >

  ``` pre
          POST /api/v1/rest/attributes/create HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 235

  {
    "attributeTranslation" : {
      "inputAttribute" : "attribute1",
      "inputValue" : "value1",
      "targetAttribute" : "targetattribute1",
      "targetValue" : "targetValue1",
      "adServerType" : "XFP",
      "invincible" : false
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
          Content-Type: application/json;charset=UTF-8
          Content-Length: 26
          
          {
          "result" : "Created"
          }
        
  ```

  





## Definitions


**AttributeConverter**

<table id="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542"
class="table frame-all">
<caption><span class="table--title-label">Table 5. <span
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
id="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__1">attributeConverter</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__2"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__3">false</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__4">AttributeConverter</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__1">attributeName</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__2">The
attribute name</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__1">dfpTargetingIds</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__2">Comma
separated DFP ids to be translated.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__1">operator</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__2">The
operator either Inclusion or Exclusion.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-27debddb-b457-43cf-888e-3d1532de4542__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 5.
<span class="title">



**AttributeTranslation**



<table id="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979"
class="table frame-all">
<caption><span class="table--title-label">Table 6. <span
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
id="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">adServerType</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2">The
adServer type of the attribute translation</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">attributeTranslation</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3"></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">AttributeTranslation</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">inputAttribute</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2">The
input attribute of the attribute translation</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">string</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">inputValue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2">The
input value of the attribute translation</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">invincible</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2">The
invincible field of the attribute translation</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">boolean</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">targetAttribute</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2">The
target attribute of the attribute translation</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">string</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__1">targetValue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__2">The
target value of the attribute translation</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-58e7e34e-3531-40bd-9106-7a54cc6bb979__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 6.
<span class="title">



**StringResponse**



A JSON object to hold the string results of api queries.

<table id="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3"
class="table frame-all">
<caption><span class="table--title-label">Table 7. <span
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
id="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
<th
id="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
<th
id="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__4"
class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__1">result</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__2">Operation
result.</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__3">true</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001480__table-92ea4f8d-9d2e-4f5d-bc4a-b356dae704d3__entry__4">string</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 7.
<span class="title">







## Related Topics



- <a href="yield-analytics-api.md" class="xref">Yield Analytics API</a>








<a href="yield-analytics-api.md" class="link">Yield
Analytics API</a>






