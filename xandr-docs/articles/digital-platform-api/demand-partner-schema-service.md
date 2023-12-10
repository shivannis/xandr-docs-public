---
Title : Demand Partner Schema Service
Description : The Demand Partner Schema Service validates which parameters are
ms.date: 10/28/2023
ms.custom: digital-platform-api
accepted by the demand partner. The Demand Partner Schema Service
---


# Demand Partner Schema Service



The Demand Partner Schema Service validates which parameters are
accepted by the demand partner. The Demand Partner Schema Service
returns all demand partner schemas for the caller's member.

Demand Partner Schemas are unique per demand partner, as each demand
partner will have a different set of parameters required at auction time
when a particular PSP configuration is processed. There is no way to
fetch a schema for a specific demand partner. We only allow a way to see
all schemas for valid PSP demand partners.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="demand-partner-schema-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="demand-partner-schema-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="demand-partner-schema-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-schema-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-schema-service__entry__2"><a
href="https://api.appnexus.com/prebid/demand-partner-schemas"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/prebid/demand-partner-schemas</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="demand-partner-schema-service__entry__3">Return all demand
partner schemas.</td>
</tr>
</tbody>
</table>





**Example Response**

``` pre
{
   "33across":{
      "$schema":"https://json-schema.org/draft-04/schema#",
      "description":"A schema which validates params accepted by the 33Across adapter",
      "properties":{
         "productId":{
            "description":"Product type",
            "type":"string"
         },
         "siteId":{
            "description":"Site Id",
            "type":"string"
         },
         "zoneId":{
            "description":"Zone Id",
            "type":"string"
         }
      },
      "required":[
         "productId",
         "siteId"
      ],
      "title":"33Across Adapter Params",
      "type":"object"
   },
   "adform":{
      "$schema":"https://json-schema.org/draft-04/schema#",
      "description":"A schema which validates params accepted by the Adform adapter",
      "properties":{
         "mid":{
            "description":"An ID which identifies the placement selling the impression",
            "type":[
               "integer",
               "string"
            ]
         },
         "mkv":{
         "description":"Comma-separated key-value pairs. Forbidden symbols: &. Example: mkv='color:blue,length:350'",
         "pattern":"^(\\s*|(([^,:&]*[^,:&\\s]+[^,:&]*)+:[^,:&]*,)*(([^,:&]*[^,:&\\s]+[^,:&]*)+:[^,:&]*,?))$",
            "type":"string"
         },
         "mkw":{
         "description":"Comma-separated keywords. Forbidden symbols: &.",
         "pattern":"^[^&]*$",
            "type":"string"
         },
         "priceType":{
            "description":"An expected price type (net or gross) of bids.",
            "enum":[
               "gross",
               "net"
            ],
            "type":"string"
         }
      },
      "required":[
         "mid"
      ],
      "title":"Adform Adapter Params",
      "type":"object"
   }
}
```







## Related Topics

- <a
  href="prebid-demand-partner-params-service.md"
  class="xref" target="_blank">Prebid Demand Partner Params Service</a>

- <a
  href="monetize_monetize-standard/prebid-server-premium-demand-partner-integrations.md"
  class="xref" target="_blank">PSP Demand Partner Integrations</a>

- <a
  href="monetize_monetize-standard/add-or-edit-a-demand-partner.md"
  class="xref" target="_blank">Add or Edit a Demand Partner</a>

- <a
  href="monetize_monetize-standard/add-edit-or-delete-a-psp-configuration.md"
  class="xref" target="_blank">Add, Edit, or Delete a PSP
  Configuration</a>






