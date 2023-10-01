---
Title : Yield Analytics API
Description : ## Overview
The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
---


# Yield Analytics API





## Overview

The Yield Analytics API and services are exposed via a REST based
interface. It is intended to make development of custom functionality
comfortable to developers experienced with Web 2.0, AJAX, REST, and
service oriented development platforms. Developers should have
familiarity with web based application paradigms including AJAX, XML,
JSON, and the HTTP(S) protocol prior to attempting development with the
Yield Analytics API and services.





## Content Types

The Yield Analytics REST API is currently accessible via two response
MIME content-types:

- XML - using content-type; application-xml

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
  id="ID-00001481__d7e129" class="image" />





## Confidentiality

Confidentiality is maintained by using Secure Socket Layer based
communication to interact with the Yield Analytics API. API developers
should prefer use of HTTPS over HTTP insecure communication whenever
possible. Consult your HTTP Client library on how to enable HTTP over
SSL when developing outside of a web browser context.





## API Services



- <a href="attribute-service.html" class="xref">Attribute Service</a>
- <a href="product-and-inventory-service.html" class="xref"
  title="Product and Inventory Service of Yield Analytics API">Product and
  Inventory Service</a>
- <a href="insertion-order-service.html" class="xref">Insertion Order
  Service</a>
- <a href="order-line-service.html" class="xref">Order Line Service</a>
- <a href="query-engine-service.html" class="xref">Query Engine
  Service</a>
- <a href="bulk-product-creation-service.html" class="xref">Bulk Product
  Creation Service</a>
- <a href="data-service.html" class="xref"
  title="Data Service of Yield Analytics API">Data Service</a>







## Data Filtering

**Alias Functions**

**Consumption Filtering**

For any API calls that accept a Consumption Filter as a path variable or
request object, the availability calculation can be further controlled.
Availability = Capacity - Consumption. Adding a consumption filter to an
availability request controls which consumption is subtracted from the
capacity to give the availability. All order lines that match a
consumption filter will have their consumption subtracted from the
capacity when computing availability.



- When multiple key-value pairs are given with the same key and an =
  (EQUAL) operator as in CONSUMPTION_TYPE above, the values are combined
  using an OR rule. e.g. CONSUMPTION_TYPE can be either DIRECT or
  CONTAINED

- When multiple key-value pairs are given with the same key and and a !=
  (NOT_EQUAL) operator (e. g. EXTERNAL_ID!=223415;EXTERNAL_ID!=223416),
  the values are combined using an AND rule.

- When multiple key-value pairs are given with differing operators
  (e.g., PRIORITY\>=5;PRIORITY\<=10), the values are combined using an
  AND rule.

- Pairs with differing function keys are combined using an AND rule.



To see all the available possible function key values for a given
Analytics installation (it can differ by customer), you can send a REST
query to the query engine and it will return a list of all the function
keys. Here’s the format of the REST query to list the function keys:





## Data Model



  

<div class="imagecenter">

<img src="../images/model-diagram-1.png"
id="ID-00001481__image-b430d21f-5df7-4eb0-93b5-9847cf79bb62"
class="image imagecenter" />



  







## Key Objects

****Order****

An order is a container of line items and has either been created in an
Order Management System (OMS) or directly in the ad server and then is
brought into Yield Analytics each night during the order import step
during processing. An order in the direct sold, guaranteed portion of
the online advertising industry, refers to a mutually agreed insertion
order that incorporates specific terms, under which publishers will
deliver ads (order lines) on sites for the benefit of agency or
advertiser.

When referring to an order in Yield Analytics, it references the name of
the order associated with an order line or group of order lines.

****Order Line Item****

An order line is an ad or placement which has a specific set of flight
dates and a creative associated to it and is purchased as part of an
insertion order. Sometimes referred to as line items as well, these
order lines will have metadata associated with them which helps to
describe contractual agreements for delivery such as the CPM (rate) as
well as ad serving agreements such as the targeting and amount of
scheduled impressions.

****Product****

Think of a product as the thing that a publisher would actually sell to
advertisers. Every product has a unique name and can be thought of as a
pointer to a target. But be careful! There is a tendency to conflate
products and targeting. This is a misnomer, as several products can be
associated with a target. In addition to being associated with targets,
products have additional metadata attached to them, such as name, and
possibly rate and product group. To reiterate: targets are unique; many
products may be associated with a single target.

Products can be deactivated by clients but not deleted. If no active
products are associated with a target, Yield Analytics does not process
against the target, but it does retain its history.

There are four product types in Yield Analytics:

<div id="ID-00001481__p-13c9c9e6-f97c-4b03-a8c3-f2a4815cd910" >

- Rate Card - Represents products in the catalog from which the
  publisher sales team sells

- Reporting - Any inventory you want to analyze in Yield Analytics. This
  is the most important type of product, because they are the class of
  product over which the client has the most control and those that are
  used for accruing historical data. This last piece, that they are the
  foundation for historical data, is often one of the hardest concepts
  for clients to grasp during implementation because it requires them to
  think through all of the products on which they will eventually need
  to collect data. Forecasting can be performed without reporting
  products, however historical reporting (as you might expect) cannot.

- Custom - Products that correspond with order lines. Whenever Yield
  Analytics imports order lines, it creates custom order line products
  that exist only for the life of the order line. These products are
  completely maintained by Yield Analytics (created, maintained,
  inactivated). Often, when clients want to do a product clean up, they
  will attempt to remove custom products and need to be reeducated by
  our Services team.

- Seasonal - Used to define the inventory that is influenced by a
  specific seasonal model. Yield Analytics allows seasonal models to be
  applied to areas of inventory when there are known, seasonal business
  fluctuations in a publisher’s impression volume (for example, a sports
  publisher like ESPN might see a huge once per year spike in late
  January that corresponds with the Superbowl.)



****Target****

A target represents a unique pool of inventory described by a
combination of attribute-value pairs, which uniquely identifies the
inventory pool. This unique, descriptive combination is what we refer to
as a target expression. Targets may be defined at any level of
granularity ('sports', 'entertainment', '300x250', 'Chicago', etc.).
'Sports' and 'entertainment' would likely correspond to a section of a
publisher’s website or a tag used to categorize inventory on the backend
(for ad sales). '300x250' would correspond to the size of an ad tag.
'Chicago' would likely refer to the user’s IP address.

Using the targets above, an example target expression might be:

- adunit in ('sports')

In the above target expression, "adunit" is the targeting attribute, and
"sports" is the attribute value.



A more complex target expression might be:

- adunit in ('sports', 'entertainment') and size in ('300x250') or
  placement in ('business') and size in ('300x250','300x600','1x1') and
  pos in ('top')



## Key Terms

**Allocation**

The process by which Yield Analytics emulates ad server logic to
forecast how individual order lines will consume against individual
products for each day in the forecast date range.

<div id="ID-00001481__p-7ddd9d08-92b3-4d1a-b972-73576af63566" >

- This process accounts for multiple order lines competing for the same
  inventory

- This process accounts for overlaps between products. A single order
  line may consume against many products at once with a single
  impression. Depending on the relationship between the order line’s
  target and the product’s target, the order line’s consumption type
  against the product may be Indirect, Direct, or Contained (see below).

****Allocation Process****



<div id="ID-00001481__p-58b84df4-1786-4f26-96ae-be3ba3508c54" >

- On a given day, for a given tier (priority set), a set of order lines
  will ask for a portion of their impressions

- Portion is defined by flighting, the order line goal (if goal-based),
  share of voice (for CPD lines)

- The amount of impressions is limited by what is available

- The availability drops as we work through order lines

- Availability reduces further on a target as consumption is taken from
  overlapping targets

- The goal of Yield Analytics is to maintain these totals and the
  relationships between them (iterative process)

****At-Risk Metrics****



Yield Analytics uses allocation results to generate several at-risk
metrics that can help ad ops understand what guaranteed order lines are
at risk of under-delivery so they can make appropriate interventions.

<div id="ID-00001481__p-5e06fe1c-6551-454a-8b36-b0c994c9ecca" >

<table id="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249"
class="table frame-all" style="width:100%;">
<caption><span class="table--title-label">Table 1. <span
class="title"></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"
class="entry align-center colsep-1 rowsep-1">Metrics</th>
<th
id="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2"
class="entry align-center colsep-1 rowsep-1">Formula</th>
<th
id="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"><strong>Pacing</strong></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2">Consumed
impressions – Scheduled impressions</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3">A
measure of the risk of an order line under delivering or over
delivering. This metric includes both under-delivery and over-delivery,
and should be used to measure both.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"><strong>Pacing
(Lifetime)</strong></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2">Consumed
impressions – Scheduled impressions</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3">This
is the same as the Pacing metric, except that this metric aggregates
over the lifetime of the order line and is not bound by the time period.
When the lifetime metric is used, the time period filter is only used to
filter to order lines delivering in the selected time period.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"><strong>Consumption-to-Schedule
%</strong></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2">(Consumed
events / Scheduled events) x 100</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3">A
measure of pacing per schedule. For future time periods, this number
takes into account the expected consumption based on the allocation
forecast. Guaranteed order lines with pricing types CPM, CPD, and CPC
are subject to this calculation. C:S% is event agnostic, meaning that
impressions and clicks are used interchangeably, determined by the order
line’s pricing type.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"><strong>Consumption-to-Schedule
% (Lifetime)</strong></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2">(Consumed
events / Scheduled events) x 100</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3">This
is the same as the Consumption-to-schedule % metric, except that this
metric aggregates over the lifetime of all order lines and is not bound
by the time period. When the lifetime metric is used, the time period
filter is only used to filter to order lines delivering in the selected
time period.</td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"><strong>Revenue
Against Goal</strong></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2">Earned
revenue - Contracted revenue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3">A
measure of the revenue that is at risk of underdelivering. This metric
includes both underdelivery and overdelivery, and should be used to
measure both.</td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__1"><strong>Revenue
Against Goal (Lifetime)</strong></td>
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__2">Earned
revenue - Contracted revenue</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-120142d4-88c2-4fe3-bb0d-6543c0c89249__entry__3">This
is the same as the Revenue Against Goal metric, except that this metric
aggregates over the lifetime of all order lines and is not bound by the
time period. When the lifetime metric is used, the time period filter is
only used to filter to order lines delivering in the selected time
period.</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">



****Availability****

Capacity – (Guaranteed) Consumption

- A product’s capacity may be completely consumed by a mixture of
  guaranteed and preemptible order lines. The consumption by preemptible
  order lines is considered to be available.

- A publisher’s goal is usually to "sell over" the preemptible
  consumption with guaranteed (direct sold) order lines because these
  lines usually have a higher rate and they’re not putting other
  guaranteed demand at risk.

**Capacity**

The maximum number of impressions that can be delivered on a given
product.

**Consumption**

The number of impressions that have been delivered in the past or are
forecast to deliver in the future.

**Consumption Type**

This is how Yield Analytics classifies how a given order line is
consuming against a given product, and is a function of the relationship
between the order line’s target and the product’s target.

- Direct: Order line and product share the same target

- Contained: Order line must deliver within the product. The order
  line’s target is a child of the product’s target.

- Indirect: Order line can deliver within or outside the product. The
  order line’s target is either a parent or a sibling of the product’s
  target.

**Flighting Method**

Tells the ideal shape of the distribution of impressions over the order
line’s date range (also known as pacing)

Common flighting methods are:

- evenly

- front loaded

- as fast as possible

**Inventory Class**

An attribute of every order line in Yield Analytics, derived from the
order line’s contract type. There are three inventory class values:

<div id="ID-00001481__p-ce978bf7-b4f3-40da-af71-8ea47b049ddb" >

<table id="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd"
class="table frame-all">
<caption><span class="table--title-label">Table 2. <span
class="title"></caption>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__1"
class="entry align-center colsep-1 rowsep-1">Inventory Class</th>
<th
id="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__2"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__1"><strong>Guaranteed</strong></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__2"><p>Publishers
have made a guarantee to advertisers to deliver a specific volume of
impressions for goal-based lines or a specific share of voice (SOV) for
cost-per-day lines. SOV refers to the proportion of impressions a given
order line consumes of a particular product.</p>
<ul>
<li><p>APAS contract types: Guaranteed Exclusive, Guaranteed
Standard</p></li>
<li><p>DFP contract types: Sponsorship, Standard</p></li>
<li><p>OAS contract types: Dynamic, Dynamic Monthly, Exclusive, Fixed,
Open</p></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__1"><strong>Preemptible</strong></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__2"><p>These
order lines can be preempted by guaranteed order lines.</p>
<ul>
<li><p>APAS contract types: Impressions, Percentage</p></li>
<li><p>DFP contract types: AdMob, AdSense, Advertising Exchange, Bulk,
Click Tracking, House, Network, Price Priority</p></li>
<li><p>OAS contract types: House, and any contract type that includes
the word “Preemptible”</p></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry align-center colsep-1 rowsep-1"
headers="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__1"><strong>Unspecified</strong></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ID-00001481__table-c59afa88-afa3-40c4-aebd-fa363da3b1cd__entry__2">Corresponds
with unfilled impressions and impressions that are delivered by order
lines that have not been imported into Yield Analytics and are therefore
"unknown".</td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 2.
<span class="title">



**Priority**

Determines which order line will be the first to consume capacity (set
in the ad server).

**C:S %**

A measure of pacing per schedule. For future time periods, this number
takes into account the expected consumption based on the allocation
forecast. Guaranteed order lines with pricing types CPM, CPD, and CPC
are subject to this calculation.

**Pacing**

A measure of the risk of an order line under delivering or over
delivering. This metric includes both under delivery and over delivery,
and should be used to measure both.

**Pivoting Attributes**

Pivoting attributes allows different values for the same targeting
attribute to be AND’ed together in one target expression. Yield
Analytics targeting does not allow you to use AND logic between two
values that belong to the same attribute. This is problematic, because
there are cases where that makes sense. For example, keyword targeting
in which you want to target both 'basketball' and 'baseball'. For
example if your desired expression is the following:

- kw in ('basketball') and kw in ('baseball')

It will not be allowed, and you will have to use pivoting. Pivoting
allows you to target both in a single expression by creating a new
attribute with the original attribute and value concatenated together.
For example:

- kw_basketball in ('true') and kw_baseball in ('true')

Pivoted attributes can also be excluded. For example, let’s say in DFP
you have adunit 1, which contains these as children: adunit 2_a, adunit
2_b, adunit 2_c. If you wanted to target everything but adunit 2_b, you
would use the expression below:

- adunit in ('adunit 1') and adunit exclude !in ('adunit 2_b')

DFP also has an attribute called adunit_only, which allows you to select
only the adunit specified and not any of it’s children. However, because
this isn’t universal for all ad servers, we can utilize the syntax in
the expression above.

**Zombie Order Lines**

An order line in Pending status with a start date in the past. The order
line is not delivering in actuality but Yield Analytics allocates it in
the future because it is in Pending status. Order lines that are Pending
and past their start date are known as "zombie" order lines because they
reserve inventory in Yield Analytics that they will never consume,
assuming their status is not changed.





- **[Attribute Service](../topics/attribute-service.html)**  
- **[Product and Inventory
  Service](../topics/product-and-inventory-service.html)**  
  Product and Inventory Service of Yield Analytics API
- **[Insertion Order
  Service](../topics/insertion-order-service.html)**  
- **[Order Line Service](../topics/order-line-service.html)**  
- **[Query Engine Service](../topics/query-engine-service.html)**  
- **[Bulk Product Creation
  Service](../topics/bulk-product-creation-service.html)**  
- **[Data Service](../topics/data-service.html)**  
  Data Service of Yield Analytics API


