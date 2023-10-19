---
Title : Query Engine Service
Description : ## Overview
The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
ms.custom : yield-analytics-api

---


# Query Engine Service





## Overview

The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
comfortable to developers experienced with Web 2.0, AJAX, REST, and
service oriented development platforms. Developers should have
familiarity with web based application paradigms including AJAX, XML,
JSON, and the HTTP(S) protocol prior to attempting development with the
Yield Analytics API and services.

The Query Engine service permits the API developer access to a very
flexible engine for querying data from the Yield Analytics system to
accomplish use cases not accounted for with the Product Discovery and
Inventory APIs. While the Query Engine Service’s flexibility and power
permit many use cases to be accomplished, only deeply knowledgeable
users should attempt to form a Query Engine query to insure valid data
is extracted. Please contact your Yield Analytics customer service
contact to help develop the query expressions required to achieve your
data goal.





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

  

  
 ![postman header variables](media/postman_header_variables.png)
  





## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## Paths

Execute Saved Analysis



``` pre
GET /api/v1/rest/queryengine/analysis/{savedAnalysisId}
```



- **Description**

  Look up a saved analysis. These reports can be configured within the
  Yield Analytics UI or through the Yield Analytics API and then
  referenced by report ID.

- **Parameters**
  <table id="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956"
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
  id="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__2">savedAnalysisId</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__3">savedAnalysisId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-19de4848-50d2-4b1e-8e2a-11ef039bb956__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 1.
  <span class="title">

- **Responses**
  <table id="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f"
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
  id="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0da9ede9-e743-4a35-bb33-5e6edfaaf81f__entry__3"><a
  href="query-engine-service.html#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 2.
  <span class="title">

- **Consumes**

  

  - application/json

  

- **Produces**

  

  - application/xml

  - application/json

  

- **Tags**

  

  - Query Engine Resource

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysis/100' 
  -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 
  'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**

  

  ``` pre
  GET /api/v1/rest/queryengine/analysis/100 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Saved Analysis with Row Count



``` pre
GET /api/v1/rest/queryengine/analysis/{savedAnalysisId}/{rowCount}
```



- **Description**

  Look up a saved analysis with a row count. These reports and be
  configured within the Yield Analytics UI or through the Yield
  Analytics API and then referenced by report ID and the result can be
  limited to the desired number of rows.

- **Parameters**
  <table class="table frame-all">
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
  <th id="ID-00001485__entry__32"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001485__entry__33"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001485__entry__34"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__35"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001485__entry__36"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__32">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__33">savedAnalysisId</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__34">savedAnalysisId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__35">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__36">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__32">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__33">rowCount</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__34">rowCount</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__35">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__36">integer (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__32">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__33">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__34">Your username for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__35">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__36">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__32">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__33">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__34">Your password for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__35">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__36">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__32">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__33">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__34">Your client source for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__35">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__36">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 3.
  <span class="title">

- **Responses**
  <table class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 4. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001485__entry__62"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th id="ID-00001485__entry__63"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__64"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__62">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__63">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__64"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 4.
  <span class="title">

- **Consumes**

  

  - application/json

  

- **Produces**

  

  - application/xml

  - application/json

  

- **Tags**

  

  - Query Engine Resource

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysis/100/1' -i -H 'Content-Type: application/json' -H 
  'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**

  

  ``` pre
  GET /api/v1/rest/queryengine/analysis/100/1 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Saved Analysis with Row Count and Row Start



``` pre
GET /api/v1/rest/queryengine/analysis/{savedAnalysisId}/{rowCount}/{startRow}
```



- **Description**

  Look up a saved analysis with a row count and start row. These reports
  and be configured within the Yield Analytics UI or through the Yield
  Analytics API and then referenced by report ID. The row count and row
  start parameters allow for paging through the report rows.

- **Parameters**
  <table class="table frame-all">
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
  <th id="ID-00001485__entry__68"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001485__entry__69"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001485__entry__70"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__71"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001485__entry__72"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__68">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__69">savedAnalysisId</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__70">savedAnalysisId</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__71">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__72">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__68">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__69">rowCount</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__70">rowCount</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__71">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__72">integer (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__68">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__69">startRow</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__70">startRow</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__71">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__72">integer (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__68">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__69">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__70">Your username for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__71">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__72">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__68">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__69">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__70">Your password for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__71">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__72">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__68">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__69">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__70">Your client source for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__71">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__72">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 5.
  <span class="title">

- **Responses**
  <table class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 6. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001485__entry__103"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th id="ID-00001485__entry__104"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__105"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__103">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__104">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__105"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 6.
  <span class="title">

- **Consumes**

  

  - application/json

  

- **Produces**

  

  - application/xml

  - application/json

  

- **Tags**

  

  - Query Engine Resource

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysis/100/1/2' -i -H 'Content-Type: application/json' 
  -H 'Accept: application/json' -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP request**

  

  ``` pre
  GET /api/v1/rest/queryengine/analysis/100/1/2 HTTP/1.1
  Content-Type: application/json
  Accept: application/json
  username: {{username}}
  password: {{password}}
  source: {{source}}
  Host: https://{{client_url}}/api/v1/rest
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Dynamic Analysis



``` pre
POST /api/v1/rest/queryengine/analysisdynamic
```



- **Description**

  Execute Dynamic Analysis

- **Parameters**
  <table class="table frame-all">
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
  <th id="ID-00001485__entry__109"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th id="ID-00001485__entry__110"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001485__entry__111"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__112"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001485__entry__113"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__109">BodyParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__110">reportDefinition</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__111">reportDefinition</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__112">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__113"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__109">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__110">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__111">Your username for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__112">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__113">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__109">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__110">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__111">Your password for accessing the Yield
  Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__112">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__113">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__109">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__110">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__111">Your client source for accessing the
  Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__112">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__113">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 7.
  <span class="title">

- **Responses**
  <table class="table frame-all" style="width:100%;">
  <caption><span class="table--title-label">Table 8. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 33%" />
  <col style="width: 33%" />
  <col style="width: 33%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001485__entry__134"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th id="ID-00001485__entry__135"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__136"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__134">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__135">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__136"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 8.
  <span class="title">

- **Consumes**

  

  - application/json

  - application/xml

  

- **Produces**

  

  - application/json

  - application/xml

  

- **Tags**

  

  - Query Engine Resource

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamic' -i 
  -X POST -H 'Content-Type: application/json;charset=UTF-8' 
  -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
  ```

  

- **Example HTTP request**

  

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamic HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Dynamic Analysis


``` pre
GET /api/v1/rest/queryengine/analysisdynamic/{reportDefinition}
```



- **Description**

  Execute Dynamic Analysis

- **Parameters**
  <table id="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3"
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
  id="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__1">BodyParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__2">reportDefinition</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__3">reportDefinition</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2670f186-ad80-4fd1-9b5c-e9c228d746b3__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 9.
  <span class="title">

- **Responses**
  <table id="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d"
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
  id="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-aee090e3-745c-4d61-805b-9ed0bbaa755d__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 10.
  <span class="title">

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamic' -i 
  -X POST -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
  ```

  

- **Example HTTP request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamic HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Dynamic Analysis with Row Count


``` pre
GET /api/v1/rest/queryengine/analysisdynamic/{reportDefinition}/{rowCount}
```



- **Description**

  Execute Dynamic Analysis with a Row Count

- **Parameters**
  <table id="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3"
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
  id="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__1">BodyParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__2">reportDefinition</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__3">reportDefinition</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__2">rowCount</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__3">rowCount</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__5">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-782e08d6-eee0-40a2-b06f-758cdff2f4c3__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 11.
  <span class="title">

- **Responses**
  <table id="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e"
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
  id="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-5d6c6b86-84ca-4709-a67d-170fa03bb47e__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 12.
  <span class="title">

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamic/1' -i -X POST -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
    
  ```

  

- **Example HTTP request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamic/1 HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Dynamic Analysis with Row Count and Row Start


``` pre
GET /api/v1/rest/queryengine/analysisdynamic/{reportDefinition}/{rowCount}/{startRow}
```



- **Description**

  Execute Dynamic Analysis with a Row Count and Row Start.

- **Parameters**
  <table id="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c"
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
  id="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1">BodyParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2">reportDefinition</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3">reportDefinition</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2">rowCount</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3">rowCount</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2">startRow</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3">startRow</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ff837439-3016-4e91-a4a7-aaf03b68824c__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 13.
  <span class="title">

- **Responses**
  <table id="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6"
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
  id="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-f570b891-42f6-49e5-b011-2160925f5bd6__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 14.
  <span class="title">

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
   $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamic/1/2' -i -X POST 
     -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
  ```

  

- **Example HTTP request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamic/1/2 HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Dynamic Analysis with Row Count


``` pre
POST /api/v1/rest/queryengine/analysisdynamic/{rowCount}
```



- **Description**

  Execute Dynamic Analysis with a Row Count

- **Parameters**
  <table id="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006"
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
  id="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__1">BodyParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__2">reportDefinition</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__3">reportDefinition</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__2">rowCount</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__3">rowCount</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__5">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4ed20ede-5bce-42c0-92de-572e9b865006__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 15.
  <span class="title">

- **Responses**
  <table id="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85"
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
  id="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4c8adc46-8faa-4f6e-8ee3-43f3913b0c85__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 16.
  <span class="title">

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamic/1' -i -X POST 
  -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
  ```

  

- **Example HTTP request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamic/1 HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Execute Dynamic Analysis with Row Count and Row Start


``` pre
POST /api/v1/rest/queryengine/analysisdynamic/{rowCount}/{startRow}
```



- **Description**

  Execute Dynamic Analysis with a Row Count and Row Start.

- **Parameters**
  <table id="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc"
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
  id="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1">BodyParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2">reportDefinition</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3">reportDefinition</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5"><a
  href="query-engine-service.html#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2">rowCount</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3">rowCount</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1">PathParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2">startRow</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3">startRow</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2">username</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2">password</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__1">HeaderParameter</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__2">source</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__4">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d09ff771-d005-439f-bf30-e76bc0a60dcc__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 17.
  <span class="title">

- **Responses**
  <table id="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b"
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
  id="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>HTTP
  Code</strong></th>
  <th
  id="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-7a85c3df-a0eb-4689-9796-f7c07583e71b__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 18.
  <span class="title">

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
   $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamic/1/2' -i -X POST 
  -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
  ```

  

- **Example HTTP request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamic/1/2 HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Get a Dynamic Analyzer Report by Report Definition Using POST



``` pre
POST /api/v1/rest/queryengine/analysisdynamicchart
```



- **Description**

  Reports defined by a reporting definition can be dynamically retrieved
  from the Target Analyzer.

- 

  **Parameters**
  <table id="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41"
  class="table">
  <thead class="thead">
  <tr class="header row rowsep-1">
  <th
  id="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__2">reportDefinition</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__3">reportDefinition</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__5">string</td>
  </tr>
  <tr class="odd row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__5">string</td>
  </tr>
  <tr class="even row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d319fbfa-888c-4e6e-b2d3-4d010816da41__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

- 

  **Responses**
  <table id="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4afceb7f-4161-404e-8855-e89d1877af36__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

Get a Dynamic Analyzer Report by Report Definition Using GET


``` pre
GET /api/v1/rest/queryengine/analysisdynamicchart/{reportDefinition}
```



- **Description**

  Reports defined by a reporting definition can be dynamically retrieved
  from the Target Analyzer.

  >

  **Parameters**
  <table id="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5"
  class="table">
  <thead class="thead">
  <tr class="header row rowsep-1">
  <th
  id="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__2">reportDefinition</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__3">reportDefinition</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="xref">Report</a></td>
  </tr>
  <tr class="even row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__5">string</td>
  </tr>
  <tr class="odd row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__5">string</td>
  </tr>
  <tr class="even row rowsep-1">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5cd08edd-230a-4954-aefc-9bb5a40287e5__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6f58ac79-7423-4768-b380-21c438001db8__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85"
  class="xref">CountResponse</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/analysisdynamicchart/' -i -X POST 
  -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }'
  ```

  

- **Example HTTP Request**

  

  ``` pre
  POST /api/v1/rest/queryengine/analysisdynamicchart/ HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 1889

  {
    "report" : {
      "additionalDimensions" : [ {
        "additionalDimension" : {
          "key" : "CHANNEL"
        }
      } ],
      "additionalMetrics" : [ {
        "additionalMetric" : {
          "key" : "CHANNEL_EARNED_REVENUE_PRODUCT"
        }
      } ],
      "dimensionFilters" : [ {
        "filter" : {
          "name" : "TARGET_TYPE",
          "value" : "REPORTING",
          "operator" : "include"
        }
      } ],
      "leftYAxis" : "IMPRESSION_CAPACITY",
      "metricFilters" : [ {
        "entry" : {
          "string" : "tab1",
          "list" : {
            "filter" : [ {
              "name" : "INVENTORY_CLASS",
              "value" : "Guaranteed",
              "operator" : "include"
            } ]
          }
        }
      } ],
      "pageSize" : 25,
      "rightYAxis" : "None",
      "selectedTab" : "tab1",
      "sortBy" : "DESCENDING_LEFT_Y_AXIS",
      "stackBy" : "",
      "dashboardDateRange" : {
        "type" : "last",
        "rangeLength" : 1,
        "rangeUnits" : "months",
        "customPeriod" : false,
        "trimToRemainderOfCustomPeriod" : false
      },
      "widgetFilter" : {
        "reportParamType" : "MULTI_REPORT",
        "defaultSelections" : "PRODUCT",
        "selectionLabels" : "By Product,By Advertiser",
        "selectionValues" : "PRODUCT,ADVERTISER"
      },
      "tabDateRanges" : [ {
        "entry" : {
          "string" : "tab1",
          "dateRange" : {
            "type" : "current",
            "customPeriod" : false,
            "trimToRemainderOfCustomPeriod" : false
          }
        }
      } ],
      "tablePageSize" : 25,
      "tableState" : {
        "ascending" : false,
        "columnOrdering" : {
          "string" : [ "string" ]
        },
        "sortBy" : "IMPRESSION_CAPACITY"
      },
      "tabs" : [ {
        "tab" : {
          "displayName" : "Dataset1",
          "id" : "tab1",
          "name" : "Dataset1",
          "selected" : true
        }
      } ],
      "xAxis" : "FOCUSED_EARNED_REVENUE"
    }
  }
  ```

  

- **Example HTTP response**

  

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 118

  {
    "successfulStatements" : [ "sample successful statement" ],
    "failedStatements" : [ "sample failed statement" ]
  }
  ```

  

Batch Query POST



``` pre
POST /api/v1/rest/queryengine/batch
```



- **Description**

  The Query Engine Service batch call can run an arbitrary sequence of
  sql statements and return a result set. These may be used to perform
  CRUD operations and or selects.

- 

  **Parameters**
  <table id="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__2">queryStringRequest</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__3">queryStringRequest</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe"
  class="xref">QueryStringRequest</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ad5e93eb-ebeb-4dc7-8d1e-93ca517a3392__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

- 

  **Responses**
  <table id="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-03048bff-d12a-4bcf-abc7-d9cca5de09c7__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85"
  class="xref">CountResponse</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/batch' -i 
  -X POST -H 'Content-Type: application/json;charset=UTF-8' -d 
  '{
    "query" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2010-07-01','2010-07-31') 
     group by consumption_date order by consumption_date asc",
    "batchQueryParams" : [ {
      "first" : "INVENTORY_CLASS",
      "second" : [ "GUARANTEED" ]
    } ]
  }'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/batch HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 268

  {
    "query" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2010-07-01','2010-07-31') 
     group by consumption_date order by consumption_date asc",
    "batchQueryParams" : [ {
      "first" : "INVENTORY_CLASS",
      "second" : [ "GUARANTEED" ]
    } ]
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 326

  {
    "queryString" : "SELECT * FROM TABLE",
    "batchQueryResults" : [ {
      "batchId" : "1",
      "batchParams" : "sample batch param",
      "resultData" : {
        "row" : [ {
          "columnData" : [ {
            "name" : "sample name",
            "value" : "sample value"
          } ]
        } ]
      },
      "resultCode" : 1
    } ]
  }
  ```

  

Batch Query GET


``` pre
GET /api/v1/rest/queryengine/batch/{queries}/{query}
```



- **Description**

  The Query Engine Service batch call can run an arbitrary sequence of
  sql statements and return a result set. These may be used to perform
  CRUD operations and or selects.

  >

  **Parameters**
  <table id="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2">queries</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3">queries</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2">queryVars</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3">queryVars</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5">object</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-04177129-4307-440a-8cd7-4a3417b7541b__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-392b472d-5414-40de-a0e6-25183dec0236__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97"
  class="xref">BatchQueryResponse</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/batch/select%20consumption_date,
  %20sum(consumed)%20from%20OLPCS(network_products(),'2010-07-01','2010-07-31')
  %20group%20by%20consumption_date%20order%20by%20consumption_date%20ascconsumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5/select%20consumption_date,
  %20sum(consumed)%20from%20OLPCS(network_products(),'2010-07-01','2010-07-31')%20group%20by%20
  consumption_date%20order%20by%20consumption_date%20asc' -i -H 'Content-Type: application/json;charset=UTF-8' 
  -d '"{\"relativeDate\":\"2020-03-19\", \"title\":\"test\"}"'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  GET /api/v1/rest/queryengine/batch/select%20consumption_date,%20sum(consumed)%20from%20OLPCS(network_products(),
  '2010-07-01','2010-07-31')%20group%20by%20consumption_date%20order%20by%20consumption_date%20ascconsumptionFilter;
  INVENTORY_CLASS=GUARANTEED;CONSUMPTION_TYPE=DIRECT;CONSUMPTION_TYPE=CONTAINED;PRIORITY%3E=5/select%20consumption_date,
  %20sum(consumed)%20from%20OLPCS(network_products(),'2010-07-01','2010-07-31')%20group%20by%20consumption_date%
  20order%20by%20consumption_date%20asc HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 55

  "{\"relativeDate\":\"2020-03-19\", \"title\":\"test\"}"
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 326

  {
    "queryString" : "SELECT * FROM TABLE",
    "batchQueryResults" : [ {
      "batchId" : "1",
      "batchParams" : "sample batch param",
      "resultData" : {
        "row" : [ {
          "columnData" : [ {
            "name" : "sample name",
            "value" : "sample value"
          } ]
        } ]
      },
      "resultCode" : 1
    } ]
  }
  ```

  

Execute Statement Using GET


``` pre
GET /api/v1/rest/queryengine/execute/{statement}
```



- **Description**

  Execute a SQL statement passed through via the API.

  >

  **Parameters**
  <table id="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__2">statement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__3">statement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-6c1dff87-2c92-4f91-9852-fc0e42a7c25c__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0b3bd234-89ef-4051-af47-ca1c5124c703__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85"
  class="xref">CountResponse</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/execute/select%20*%20from%20list_aliases()%20where%
  20data_source_type%20=%20'ORDER_LINE'' -i -H 'Content-Type: application/json' -H 'Accept: application/json' 
  -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  GET /api/v1/rest/queryengine/execute/select%20*%20from%20list_aliases()%20where%20data_source_type%20=%20'ORDER_LINE' 
  HTTP/1.1
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
  Content-Length: 118

  {
    "successfulStatements" : [ "sample successful statement" ],
    "failedStatements" : [ "sample failed statement" ]
  }
  ```

  

Execute Statement Using POST


``` pre
POST /api/v1/rest/queryengine/execute/{statement}
```



- **Description**

  Execute a SQL statement passed through via the API.

  >

  **Parameters**
  <table id="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__2">statement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__3">statement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b4c3d1a0-657e-4868-a645-2724fc2dbade__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b3ad1353-8e87-4ca9-8f79-4a901b1bd13b__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85"
  class="xref">CountResponse</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/execute/select%20*%20from%20list_aliases()%20
  where%20data_source_type%20=%20'ORDER_LINE'' -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' 
  -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/execute/select%20*%20from%20list_aliases()%20where%20data_source_type%20=%20'ORDER_LINE' 
  HTTP/1.1
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
  Content-Length: 118

  {
    "successfulStatements" : [ "sample successful statement" ],
    "failedStatements" : [ "sample failed statement" ]
  }
  ```

  

Execute SQL Query Statement by Request Object


``` pre
POST /api/v1/rest/queryengine/executerequest
```



- **Description**

  Execute a SQL statement by passing in a Query Request object.

  >

  **Parameters**
  <table id="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__2">statementHolder</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__3">statementHolder</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a"
  class="xref">QueryRequest</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d23cf715-cd77-43b9-aed5-db7c4f915696__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-3e58b869-21ba-48c9-a004-337f7e3983d1__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85"
  class="xref">CountResponse</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/executerequest' -i 
  -X POST -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "queryRequest" : {
      "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
    }
  }'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/executerequest HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 194

  {
    "queryRequest" : {
      "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 118

  {
    "successfulStatements" : [ "sample successful statement" ],
    "failedStatements" : [ "sample failed statement" ]
  }
  ```

  

Query by Body Statement


``` pre
POST /api/v1/rest/queryengine/query
```



- **Description**

  Pass a SQL like statement as part of the body of a post.

  >

  **Parameters**
  <table id="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__2">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__3">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0e13a457-f91b-496a-a321-6b9d5cddf7c7__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b186e03c-5250-4a34-93e0-abdb31875062__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/query' -i -X POST 
  -H 'Content-Type: application/json;charset=UTF-8' -d '{
    "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
  }'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/query HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 167

  {
    "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Query by Statement using GET


``` pre
GET /api/v1/rest/queryengine/query/{query}
```



- **Description**

  Pass a SQL query as a path parameter. In order to execute multiple
  statements your statements need to be delimited by a semi-colon. In
  the case where data contains a semi-colon utilize the POST version of
  this call.

  >

  **Parameters**
  <table id="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__2">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__3">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-5957c2ee-98ae-40fb-b363-0eb113d63389__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-df388e43-238b-4073-bbb2-1626ed128405__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/query/select%20consumption_date,%20sum(consumed)%20
  from%20OLPCS(network_products(),'2010-07-01','2010-07-31')%20group%20by%20consumption_date%20order%20by%20consumption_date%20asc' 
  -i -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'username: {{username}}' 
  -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  GET /api/v1/rest/queryengine/query/select%20consumption_date,%20sum(consumed)%20from%20OLPCS(network_products(),'2010-07-01',
  '2010-07-31')%20group%20by%20consumption_date%20order%20by%20consumption_date%20asc HTTP/1.1
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
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Query by Statement using POST


``` pre
POST /api/v1/rest/queryengine/query/{query}
```



- **Description**

  Pass a SQL query as a path parameter. In order to execute multiple
  statements your statements need to be delimited by a semi-colon. In
  the case where data contains a semi-colon utilize the POST version of
  this call.

  >

  **Parameters**
  <table id="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__2">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__3">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ac4c40a6-1719-4737-8615-11a034038323__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e8ccb0bb-97d0-4bfe-9c4d-e447c9a1d6fd__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/query/select%20consumption_date,
  %20sum(consumed)%20from%20OLPCS(network_products(),'2010-07-01','2010-07-31')%20group%20by%20consumption_date%20order%20by
  %20consumption_date%20asc' -i -X POST -H 'Content-Type: application/json' -H 'Accept: application/json' 
  -H 'username: {{username}}' -H 'password: {{password}}' -H 'source: {{source}}'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/query/select%20consumption_date,%20sum(consumed)%20from%20OLPCS(network_products(),
  '2010-07-01','2010-07-31')%20group%20by%20consumption_date%20order%20by%20consumption_date%20asc HTTP/1.1
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
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Query by Query Request


``` pre
POST /api/v1/rest/queryengine/queryrequest/{decode}
```



- **Description**

  Pass a Query Request object to query the engine.

  >

  **Parameters**
  <table id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  <th
  id="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__6"
  class="entry colsep-1 rowsep-1"><strong>Default</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__2">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__3">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a"
  class="xref">QueryRequest</a></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__6"></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__1">QueryParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__2">decode</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__3">decode</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__4">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__5">boolean</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__6">true</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__5">string</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__6"></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__5">string</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__6"></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__5">string</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-9c632dbb-94fe-460c-bf8e-f772f289d47a__entry__6"></td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2780e824-0535-4b12-81d5-177adb779678__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/queryrequest/true' -i -X POST -H 
  'Content-Type: application/json;charset=UTF-8' -d '{
    "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
  }'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/queryrequest/true HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 167

  {
    "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') group by 
  consumption_date order by consumption_date asc"
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Query Set Using GET


``` pre
GET /api/v1/rest/queryengine/queryset
```



- **Description**

  The Query Engine Service queryset call can run an arbitrary sequence
  of sql statements and return a result set. These may be used to
  perform CRUD operations and or selects.

  >

  **Parameters**
  <table id="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__2">querySet</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__3">querySet</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8"
  class="xref">QuerySet</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d3071445-a12a-4176-b5c8-d3223925f799__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a2818a11-a390-4480-9fe4-a0bd24172b8c__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/queryset' -i -H 'Content-Type: application/json;
  charset=UTF-8' -d '{
    "querySet" : {
      "title" : "test",
      "relativeDate" : "2020-03-19",
      "requests" : [ {
        "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
      } ]
    }
  }'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  GET /api/v1/rest/queryengine/queryset HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 278

  {
    "querySet" : {
      "title" : "test",
      "relativeDate" : "2020-03-19",
      "requests" : [ {
        "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
      } ]
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Query Set Using POST


``` pre
POST /api/v1/rest/queryengine/queryset
```



- **Description**

  The Query Engine Service queryset call can run an arbitrary sequence
  of sql statements and return a result set. These may be used to
  perform CRUD operations and or selects.

  >

  **Parameters**
  <table id="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__1">BodyParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__2">querySet</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__3">querySet</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__5"><a
  href="query-engine-service.md#ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8"
  class="xref">QuerySet</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7284ceb1-c4fa-4b99-ac72-c8e3fab5ee8f__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70__entry__1">200</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70__entry__2">OK</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-5b49cc5c-1fa6-44dc-8833-0277e2a36a70__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  - application/xml

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  

- **Example CURL request**

  >

  ``` pre
  $ curl 'https://{{client_url}}/api/v1/rest/v1/rest/queryengine/queryset' -i -X POST -H 
  'Content-Type: application/json;charset=UTF-8' -d '{
    "querySet" : {
      "title" : "test",
      "relativeDate" : "2020-03-19",
      "requests" : [ {
        "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
      } ]
    }
  }'
  ```

  

- **Example HTTP Request**

  >

  ``` pre
  POST /api/v1/rest/queryengine/queryset HTTP/1.1
  Content-Type: application/json;charset=UTF-8
  Host: https://{{client_url}}/api/v1/rest
  Content-Length: 278

  {
    "querySet" : {
      "title" : "test",
      "relativeDate" : "2020-03-19",
      "requests" : [ {
        "sql" : "select consumption_date, sum(consumed) from OLPCS(network_products(),'2020-03-19','2020-06-19') 
  group by consumption_date order by consumption_date asc"
      } ]
    }
  }
  ```

  

- **Example HTTP response**

  >

  ``` pre
  HTTP/1.1 200 OK
  Content-Type: application/json;charset=UTF-8
  Content-Length: 115

  {
    "row" : [ {
      "columnData" : [ {
        "name" : "sample name",
        "value" : "sample value"
      } ]
    } ]
  }
  ```

  

Reports defined and saved in the Target Analyzer may be executed as a
REST based service


``` pre
GET /api/v1/rest/queryengine/xml/{query}
```



- **Description**

  Get a saved Analyzer Report by ID.

  >

  **Parameters**
  <table id="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__1"
  class="entry colsep-1 rowsep-1"><strong>Type</strong></th>
  <th
  id="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__4"
  class="entry colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__5"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__1">PathParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__2">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__3">query
  that needs to be run</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__2">username</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__3">Your
  username for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__5">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__2">password</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__3">Your
  password for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__5">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__1">HeaderParameter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__2">source</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__3">Your
  client source for accessing the Yield Analytics API</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__4">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2aef77f1-36f0-44d6-98a8-c90a6406deb5__entry__5">string</td>
  </tr>
  </tbody>
  </table>

  

  >

  **Responses**
  <table id="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d__entry__1"
  class="entry colsep-1 rowsep-1"><strong>HTTP Code</strong></th>
  <th
  id="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d__entry__2"
  class="entry colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d__entry__3"
  class="entry colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d__entry__1">200</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d__entry__2">OK</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ace40c6f-4417-4c83-b98d-33bc1a431e6d__entry__3"><a
  href="query-engine-service.md#ID-00001485__table-69617595-0e17-449a-9f18-133659257a55"
  class="xref">QueryEngineXML</a></td>
  </tr>
  </tbody>
  </table>

  

- **Consumes**

  >

  - application/json

  

- **Produces**

  >

  - application/json

  - application/xml

  

- **Tags**

  >

  - Query Engine Resource

  





## Functions



The Query Engine supports a large quantity of built in generic database
Functions. Yield Analytics functions are also in place to facilitate
working with the Inventory Model.

<table id="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 19. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>Function</strong></th>
<th
id="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
<th
id="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3"
class="entry align-center colsep-1 rowsep-1"><strong>Example</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">PRODUCT_GROUP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2"><p>groupNames</p>
<p>returns all the product ids in the target group with the given
name</p></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">PRODUCTS_BY_CHARACTERISTICS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2"><p>characteristics
- e.g. size=120x90, size=460x80, sex=male, behavioral!=political</p>
<p>return all the product ids matching the given
characteristics</p></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">PRODUCTS_BY_MATCHPRASE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2">matchphrases</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">PRODUCTS_BY_NAME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2">names</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">ACTIVE_RATE_CARD_PRODUCTS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2">returns
all the active rate card product ids (PIDs) in the system</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">ALL_RATE_CARD_PRODUCTS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2">returns
all the rate card products ids (PIDs) in the system</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">ACTIVE_REPORTING_PRODUCTS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2">returns
all the active reporting products ids (PIDs) in the system</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__1">ALL_RATE_CARD_PRODUCTS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__2">returns
all the reporting products ids (PIDs) in the system</td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001485__table-adc748bd-2531-4a38-960e-c7c1bbf77593__entry__3">TEST
EXAMPLE</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 19.
<span class="title">







## Aliases



<table id="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09"
class="table frame-all">
<caption><span class="table--title-label">Table 20. <span
class="title"></caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1"
class="entry align-center colsep-1 rowsep-1"><strong>ALIAS_KEY</strong></th>
<th
id="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2"
class="entry align-center colsep-1 rowsep-1"><strong>DATASOURCE_TYPE</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">FOCUSED_EARNED_REVENUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLPEVENT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERED_CLICKS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_CLICKS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERED_CLICKS_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_CLICKS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">BOOKING_TYPE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONSUMED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONSUMED_IMPRESSIONS_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONSUMPTION_DATE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONSUMPTION_TYPE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DAYS_TO_DELIVERY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DAYS_TO_DELIVERY_CUM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERABLE_IMPRESSIONS_UNDERDELIVERY_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">FOCUSED_CONSUMED_VALUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">FOCUSED_EARNED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SCHEDULED_IMPRESSIONS_UNDERDELIVERY_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLP_IMPRESSIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_CPD_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_CPM_ONLY_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_CPD_ONLY_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_CPM_ONLY_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_SALES_DISCOUNT_CALCULABLE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_UNDERDELIVERY_CALCULABLE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_UNDERDELIVERY_CALCULABLE_OLTP_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DATA_ELEMENTS_UNDERDELIVERY_CALCULABLE_OLTP_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DAYS_IN_CPD_ONLY_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERABLE_IMPRESSIONS_UNDERDELIVERY_CALCULABLE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERABLE_IMPRESSIONS_UNDERDELIVERY_CALCULABLE_OLTP_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_REVENUE_UNDERDELIVERY_CALCULABLE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_REVENUE_UNDERDELIVERY_CALCULABLE_OLTP_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RATE_CARD_REVENUE_CPM_ONLY_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RATE_CARD_REVENUE_SALES_DISCOUNT_CALCULABLE_FULL</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RATE_CARD_REVENUE_SALES_DISCOUNT_CALCULABLE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SCHEDULED_IMPRESSIONS_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SCHEDULED_IMPRESSIONS_UNDERDELIVERY_CALCULABLE_OLTP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SCHEDULED_IMPRESSIONS_UNDERDELIVERY_CALCULABLE_OLTP_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">OLTP</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ADVERTISER</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">AGENCY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">BOOKED_CPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">BOOKED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">BOOKED_VALUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CAMPAIGN_NAME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CLOSE_DATE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONSUMED_VALUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_CPD</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_CPM</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_CPM_ONLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_GOAL_BASED_ONLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_TOTAL</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_IMPRESSIONS_UNDERDELIVERY_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_RATE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_CPD_ONLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_CPD_ONLY_FULL</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_CPM_ONLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_CPM_ONLY_FULL</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_FULL</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_SALES_DISCOUNT_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_SALES_DISCOUNT_CALCULABLE_FULL</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACTED_REVENUE_UNDERDELIVERY_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CONTRACT_TYPE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">CURRENT_PRODUCT_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DAYS_IN_CPD_ONLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERABLE_GUARANTEED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERABLE_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DELIVERABLE_IMPRESSIONS_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DIRECT_AVERAGE_FREQUENCY_DAILY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DIRECT_AVERAGE_FREQUENCY_WEEKLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DIRECT_AVERAGE_UNIQUES_DAILY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DIRECT_AVERAGE_UNIQUES_WEEKLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">DIRECT_LIFETIME_UNIQUES</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_IMPRESSIONS_UNDERDELIVERY_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_REVENUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_REVENUE_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EARNED_REVENUE_UNDERDELIVERY_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">END_DATE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">EXTERNAL_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">HARD_CUTOFF</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">IMPRESSION_CAP_PER_DAY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">INDUSTRY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">INVENTORY_CLASS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">IN_NETWORK</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">MASTER_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">MC_TYPE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_EXTERNAL_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_DELIVERY_SCOPE_TARGET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_SITE_NAME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_SIZE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_STATUS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_TARGET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_TARGET_ATTRIBUTE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_TARGET_EXPRESSION</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_TARGET_EXTERNAL_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_LINE_TARGET_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_NAME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ORDER_STATE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PACKAGE_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRICING_TYPE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRIORITY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RANGE_END</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RANGE_START</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RATE_CARD_REVENUE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RATE_CARD_REVENUE_CPM_ONLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">RATE_CARD_REVENUE_SALES_DISCOUNT_CALCULABLE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SALES_PERSON</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SALES_TEAM_MEMBER</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SCHEDULED_IMPRESSIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SCHEDULED_IMPRESSIONS_LIFETIME</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SOLD_AS_PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SOLD_AS_PRODUCT_ID</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">START_DATE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">SYSTEM_OF_RECORD</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">TILE_IDS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">TILE_NAMES</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">ORDER_LINE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">AVAILABILITY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">AVERAGE_FREQUENCY_DAILY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">AVERAGE_FREQUENCY_WEEKLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">AVERAGE_UNIQUES_DAILY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">AVERAGE_UNIQUES_WEEKLY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ESTABLISHED_ASP</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">FLOOR</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">IMPRESSION_CAPACITY</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">NETWORK_STATUS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PARENT_TARGET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT_EXPRESSION
PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">PRODUCT_EXTERNAL_ID</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">RATE_CARD</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">REPORTING_TYPE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">REVENUE_CAPACITY</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">SELL_STATUS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">STATUS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">TARGET_ATTRIBUTE</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">TARGET_CREATION_DATE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">TARGET_GROUP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">TARGET_ID</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">TARGET_OVERLAP</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">TARGET_TYPE</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">UNMET_DEMAND</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">WEIGHTED_RATE_CARD</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">PRODUCT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">&lt;ACTION_NAME&gt;_TOTAL_ACTIONS_POST_CLICKS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ACTIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">&lt;ACTION_NAME&gt;_TOTAL_ACTIONS_POST_IMPRESSIONS</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ACTIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">&lt;ACTION_NAME&gt;_TOTAL_ACTIONS</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__1">ACTIONS</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001485__table-7ad464de-250d-4546-a77c-c2ed97be5f09__entry__2">&lt;ACTION_NAME&gt;_ECPA</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 20.
<span class="title">







## Definitions

- **AdditionalDimension**

  

  A JSON object to hold the results of AdditionalDimension of Analyzer
  Report.
  <table id="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583"
  class="table frame-all">
  <caption><span class="table--title-label">Table 21. <span
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
  id="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__1">groupingModifier</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__2">The
  grouping modifier of additional dimension</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__1">key</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__2">The
  key of additional dimension</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-af5bb4c4-3115-430c-a699-3d51eed47583__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 21.
  <span class="title">

  

- **AdditionalMetric**

  

  A JSON object to hold the results of AdditionalMetric of Analyzer
  Report.
  <table class="table frame-all">
  <caption><span class="table--title-label">Table 22. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 25%" />
  <col style="width: 25%" />
  <col style="width: 25%" />
  <col style="width: 25%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001485__entry__1119"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001485__entry__1120"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__entry__1121"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001485__entry__1122"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__1119">key</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__entry__1120">The key of additional dimension</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__1121">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__entry__1122">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 22.
  <span class="title">

  

- **AnalyzerReport**

  

  A JSON object to hold the results of AnalyzerReport.
  <table id="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">additionalDimensions</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">A
  collection of additional dimensions</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndAdditionalDimension
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">additionalMetrics</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">A
  collection of additional metrics</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndAdditionalMetric
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">dashboardDateRange</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  dashboard date rage of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32"
  class="xref">DateRangeData</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">dashboardDimension</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  dashboard dimension of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">dashboardTableData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  dashboard table data of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e"
  class="xref">TableState</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">dateRange</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  date range of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32"
  class="xref">DateRangeData</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">dateRangeFilters</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">A
  collection of report date range filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndReportDateRangeFilter
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">dimensionFilters</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">A
  collection of dimension filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndFilter
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">includeZeroValues</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  include zero values field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">keyValueFilters</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">A
  collection of report key value filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndReportKeyValueFilter
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">leftYAxis</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  left Y axis of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">metricFilters</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  map of name to a list of metric filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndMetricFilterEntry
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">numericRangeFilters</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  field contains a list of numeric range filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndReportNumericRangeFilter
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">orderBy</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  order by field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">pageSize</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  page size of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">rightYAxis</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  right Y axis of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">selectedTab</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  selected tab of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">sizeBy</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  size by field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">sortBy</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  sort by field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">stackBy</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  stack by field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">stackbyIncrement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  stack by increment field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">tabDateRanges</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  map of name to table date ranges</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndDateRangeEntry
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">tablePageSize</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  table page size of analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">tableState</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  table state of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e"
  class="xref">TableState</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">tabs</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  field contains a list of tabs</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndTab
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">trendPoints</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">A
  collection of trend point</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">MapOfstringAndTrendPoint
  array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">view</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  view of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">widgetCacheWarm</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  widget cache warm field of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">widgetFilter</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  widget filter of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49"
  class="xref">WidgetFilter</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">widgetNumericType</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  widget numeric type of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">enum
  (NEGATIVE_ONLY, POSITIVE_ONLY)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">widgetView</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  widget view of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">xAxis</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  x Axis of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">true</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__1">xAxisIncrement</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__2">The
  x Axis increment of the analyzer report</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__3">false</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **BatchQueryParams**

  A JSON object to hold the batch query params.

  

  <table id="ID-00001485__exception1" class="table frame-all">
  <caption><span class="table--title-label">Table 23. <span
  class="title"></caption>
  <colgroup>
  <col style="width: 25%" />
  <col style="width: 25%" />
  <col style="width: 25%" />
  <col style="width: 25%" />
  </colgroup>
  <thead class="thead">
  <tr class="header row">
  <th id="ID-00001485__exception1__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th id="ID-00001485__exception1__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th id="ID-00001485__exception1__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th id="ID-00001485__exception1__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__1">first</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__2">The first field of the batch
  query params</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__1">second</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__2">A collection of second
  fields</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__exception1__entry__4">string array</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 23.
  <span class="title">

  

- **BatchQueryResponse**

  >

  A JSON object to hold the results of a batch query response.
  <table id="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97"
  class="table frame-all">
  <caption><span class="table--title-label">Table 24. <span
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
  id="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__1">batchQueryResults</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__2">A
  collection of batch query results</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8"
  class="xref">BatchQueryResult</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__1">queryString</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__2">The
  query string of the batch query response</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-470d0c88-b291-4797-801b-dcc2316a2a97__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 24.
  <span class="title">

  

- **BatchQueryResult**

  >

  A JSON object to hold the results of a batch query result.
  <table id="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8"
  class="table frame-all">
  <caption><span class="table--title-label">Table 25. <span
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
  id="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__1"
  class="entry align-center colsep-1 rowsep-1"><strong>Name</strong></th>
  <th
  id="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__2"
  class="entry align-center colsep-1 rowsep-1"><strong>Description</strong></th>
  <th
  id="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__3"
  class="entry align-center colsep-1 rowsep-1"><strong>Required</strong></th>
  <th
  id="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__4"
  class="entry align-center colsep-1 rowsep-1"><strong>Schema</strong></th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__1">batchId</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__2">The
  batch ID of the batch query result</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__1">batchParams</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__2">The
  batch params of the batch query result</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__1">resultCode</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__2">The
  result code of the batch query result</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__1">resultData</td>
  <td class="entry align-left colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__2">The
  query result data of the batch query result</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ebd54150-f998-4526-ba8e-449cfa6441a8__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="xref">QueryResultData</a></td>
  </tr>
  </tbody>
  </table>

  <span class="table--title-label">Table 25.
  <span class="title">

  

- 

  **Column**
  <table id="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__2">The
  name of header</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__2">The
  value of header</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-0f1ba6db-5c0d-474d-9d44-c25e3e46c817__entry__4">string</td>
  </tr>
  </tbody>
  </table>

  

- **ColumnData**

  A JSON object to hold the results of a column data.

  <table id="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__2">The
  name of the column data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__2">The
  value object of the column data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **ColumnFilter**

  A JSON object to hold the results of ColumnFilter of Analyzer Report.

  <table id="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__1">field</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__2">The
  field of the column filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__1">logic</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__2">The
  logic of the column filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__1">operator</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__2">A
  collection of operators</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__4">string
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__2">A
  collection of values</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f__entry__4">string
  array</td>
  </tr>
  </tbody>
  </table>

- **ColumnSort**

  A JSON object to hold the results of ColumnSort of Analyzer Report.

  <table id="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__1">direction</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__2">The
  direction of the column sort</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__1">field</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__2">The
  field of the column sort</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **CountResponse**

  A JSON object to hold the results of a count response.

  <table id="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__1">failedStatements</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__2">The
  count of failed statements</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__4">string
  array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__1">successfulStatements</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__2">The
  count of succesful statements</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-31a825c0-6e14-48e2-a4c7-148e40b8fc85__entry__4">string
  array</td>
  </tr>
  </tbody>
  </table>

- **DateRangeData**

  A JSON object to hold the results of DateRangeData of Analyzer Report.

  <table id="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">customCalendarId</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  custom calendar id of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">customPeriod</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">THe
  custom period field of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">boolean</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">endDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  end date of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">rangeLength</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  range length of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">rangeUnits</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  range units of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">startDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  start date of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">trimToRemainderOfCustomPeriod</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  trim to remainder of custom period field of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__1">type</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__2">The
  type of the date range data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **DateRangeEntry**

  A JSON object to hold DateRangeEntry.

  <table id="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__1">dateRange</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__2">The
  dateRange field of the DateRangeEntry</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32"
  class="xref">DateRangeData</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__1">string</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__2">The
  string field of the DateRangeEntry</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-d6a29eaf-b35b-4bfd-83a0-c93efb14f0bf__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **Filter**

  A JSON object to hold the results of Filter of Analyzer Report.

  <table id="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__2">The
  name of the filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__1">operator</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__2">The
  operator of the filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__2">The
  value of the filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2053a1d2-436b-4363-bf6c-4494b0c05b1e__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **Header**

  A JSON object to hold the results of Filter of Analyzer Report.

  <table id="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__1">generated</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__2">The
  generated string of header</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__1">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__2">The
  query string of header</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **MetricFilterEntry**

  A JSON object to hold MetricFilterEntry.

  <table id="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__1">list</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__2">A
  collection of filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__4">object</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__1">string</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__2">The
  string field of the MetricFilterEntry</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-8ab86f52-94c0-4b3b-a178-facee3c5ce23__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **QueryEngineXML**

  A JSON object to hold the query result.

  <table id="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__1">header</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__2">The
  header of query engine xml</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-b1555650-5971-424e-9951-8db3ae8e8279"
  class="xref">Header</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__1">resultSet</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__2">The
  result set of query engine xml</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-69617595-0e17-449a-9f18-133659257a55__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10"
  class="xref">ResultSet</a></td>
  </tr>
  </tbody>
  </table>

- **QueryRequest**

  A JSON object to hold the query result.

  <table id="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__1">queryRequest</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__2"></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a"
  class="xref">QueryRequest</a></td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__1">sql</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__2">The
  SQL input to the query engine</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **QueryResultData**

  A JSON object to hold the results of a query result data.

  <table id="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__1">row</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__2">A
  collection of row data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-011293f4-1c23-4e79-bd50-3655a69a6567__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03"
  class="xref">RowData</a> array</td>
  </tr>
  </tbody>
  </table>

- **RowData**

  A JSON object to hold the results of a row data.

  <table id="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__1">columnData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__2">A
  collection of column data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-477b2da0-d2ec-40ed-8d1d-b3cc98082b03__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381"
  class="xref">ColumnData</a> array</td>
  </tr>
  </tbody>
  </table>

- **QuerySet**

  A JSON object to hold the results of a query result data.

  <table id="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__1">querySet</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__2"></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__4">QuerySet</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__1">relativeDate</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__2">The
  relative data of the query set</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__1">requests</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__2">A
  collection of query requests</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-bb5261b1-c264-42f8-a57e-b27fa0c5b93a"
  class="xref">QueryRequest</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__1">title</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__2">The
  title of the query set</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4e3bdf42-a100-4b75-9696-f321b717e1d8__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **QueryStringRequest**

  A JSON object to hold the query string request.

  <table id="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__1">batchQueryParams</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__2">A
  collection of batch query params</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__4"><a
  href="query-engine-service.md#ID-00001485__exception1"
  class="xref">BatchQueryParams</a> array</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__1">query</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__2">The
  query field of the query string request</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-ab97b776-61eb-4019-8f19-677c009f77fe__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **Report**

  A JSON object to hold the query string request.

  <table id="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__1">report</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__2"></td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a319c68b-ae92-43e5-ad13-6a11dc5290f5__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-dbdd8bc3-a9e7-4d94-ba94-7f2845ffdb44"
  class="xref">AnalyzerReport</a></td>
  </tr>
  </tbody>
  </table>

- **ReportDateRangeFilter**

  A JSON object to hold the results of ReportDateRangeFilter of Analyzer
  Report.

  <table id="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__1">dataSetKey</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__2">The
  data set key of the report date range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__1">dateRange</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__2">The
  date range data of the report date range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-b38d6f29-81e1-4aa1-90ae-98b4d7cb9a32"
  class="xref">DateRangeData</a></td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__1">key</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__2">The
  key of the report date range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-4becbec6-7adb-4846-9460-34f228d5356e__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **ReportKeyValueFilter**

  A JSON object to hold the results of ReportKeyValueFilter of Analyzer
  Report.

  <table id="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1">dataSetKey</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2">The
  data set key of the report key value filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1">key</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2">The
  key of the report key value filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2">The
  name of the report key value filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1">operator</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2">The
  operator of the report key value filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2">The
  value of the report key value filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__1">valueMatchTypeValue</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__2">The
  value match type value of the report key value filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-872f0951-bbc9-4988-91b6-4325a0d30e14__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **ReportNumericRangeFilter**

  A JSON object to hold the results of ReportNumericRangeFilter of
  Analyzer Report.

  <table id="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__1">dataSetKey</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__2">The
  data set key of the report numeric range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__1">highValue</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__2">The
  high value of the report numeric range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__4">number
  (double)</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__1">id</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__2">The
  ID of the report numeric range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__4">integer
  (int32)</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__1">key</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__2">The
  key of the report numeric range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__1">lowValue</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__2">The
  low value of the report numeric range filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a90a77a2-12d2-4f8d-98e0-b1fecd0dbb6d__entry__4">number
  (double)</td>
  </tr>
  </tbody>
  </table>

- **ResultSet**

  A JSON object to hold the results of ReportNumericRangeFilter of
  Analyzer Report.

  <table id="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__1">rows</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__2">A
  collection of rows</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e0ac7d3b-160a-49c4-b498-df9872fe8f10__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa"
  class="xref">Row</a> array</td>
  </tr>
  </tbody>
  </table>

- **Row**
  <table id="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__1">columns</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__2">A
  collection of columns</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-2833ca55-65b0-409e-b8d9-dfc6e5a520aa__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a"
  class="xref">Column</a> array</td>
  </tr>
  </tbody>
  </table>

- **Column**
  <table id="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__2">The
  name of header</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__1">value</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__2">The
  value of header</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-a8b49cb6-d6ed-4ed8-8324-ea4fa72a303a__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **RowData**

  A JSON object to hold the results of a row data.

  <table id="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__1">columnData</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__2">A
  collection of column data</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-240ab17b-f4e8-4390-9d13-51722cc23893__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-168be7d3-7c56-4fd5-8898-f51cae394381"
  class="xref">ColumnData</a> array</td>
  </tr>
  </tbody>
  </table>

- **Tab**

  A JSON object to hold the results of Tab of Analyzer Report.

  <table id="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__1">displayName</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__2">The
  display name of the tab</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__1">id</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__2">The
  ID of the tab</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__1">name</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__2">The
  name of the tab</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__1">selected</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__2">The
  selected field of the tab</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-994f33ea-cc16-490b-989e-ab7eee06388d__entry__4">boolean</td>
  </tr>
  </tbody>
  </table>

- **TableState**

  A JSON object to hold the results of TableState of Analyzer Report.

  <table id="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1">ascending</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2">The
  ascending field of the table state</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4">boolean</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1">columnFilters</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2">A
  collection of column filters</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-61408f27-262a-463f-8347-c30de4807c0f"
  class="xref">ColumnFilter</a> array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1">columnOrdering</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2">A
  collection of column ordering</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4">object</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1">columnSorts</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2">A
  collection of column sorts</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4"><a
  href="query-engine-service.md#ID-00001485__table-c119cca3-3713-4dcd-8ce6-a2ad9294ec3e"
  class="xref">ColumnSort</a> array</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1">key</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2">The
  key of the table state</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3">false</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__1">sortBy</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__2">The
  sort by field of the table state</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-e6c7496f-ad36-4c95-99be-1bf2b6d4290e__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **TrendPoint**

  A JSON object to hold the results of TrendPoint of Analyzer Report.

  <table id="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__1">key</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__2">The
  key of the trend point</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-7f97c66c-96ba-4a3e-abeb-2b39d29d5811__entry__4">string</td>
  </tr>
  </tbody>
  </table>

- **WidgetFilter**

  A JSON object to hold the results of WidgetFilter of Analyzer Report.

  <table id="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49"
  class="table">
  <thead class="thead">
  <tr class="header row">
  <th
  id="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__1"
  class="entry colsep-1 rowsep-1">Name</th>
  <th
  id="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__2"
  class="entry colsep-1 rowsep-1">Description</th>
  <th
  id="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__3"
  class="entry colsep-1 rowsep-1">Required</th>
  <th
  id="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__4"
  class="entry colsep-1 rowsep-1">Schema</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__1">defaultSelections</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__2">The
  default selections of the widget filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__1">reportParamType</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__2">The
  report param type of the widget filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__4">string</td>
  </tr>
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__1">selectionLabels</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__2">The
  selection labels of the widget filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__4">string</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__1">selectionValues</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__2">The
  selection values of the widget filter</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__3">true</td>
  <td class="entry align-center colsep-1 rowsep-1"
  headers="ID-00001485__table-66797dcd-c778-407b-ba57-91534648cc49__entry__4">string</td>
  </tr>
  </tbody>
  </table>





## Related Topics



- <a href="yield-analytics-api.md" class="xref">Yield Analytics API</a>








<a href="yield-analytics-api.md" class="link">Yield
Analytics API</a>






