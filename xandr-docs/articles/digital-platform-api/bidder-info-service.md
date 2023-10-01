---
Title : Bidder Info Service
Description : The Bidder Info Service returns the capabilities of each bidder. This
---


# Bidder Info Service



The Bidder Info Service returns the capabilities of each bidder. This
includes the platforms, such as app or site, and the mediaTypes, such as
banner, that the bidder will bid on. The service also returns a contact
email for the bidder maintainer and the current status of the bidder.
For more information about available demand partners and their
capabilities, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/prebid-server-premium-demand-partner-integrations.html"
class="xref" target="_blank">PSP Demand Partner Integrations</a>.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="bidder-info-service__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th id="bidder-info-service__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th id="bidder-info-service__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="bidder-info-service__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="bidder-info-service__entry__2"><a
href="https://api.appnexus.com/prebid/bidder-info" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/bidder-info</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="bidder-info-service__entry__3">Return all bidder information
for this config.</td>
</tr>
</tbody>
</table>



**Example Response**

The response is a JSON object containing bidder info objects.

``` pre
{
  "33across": {
    "capabilities": {
      "app": {
        "mediaTypes": [
          "banner"
        ]
      },
      "site": {
        "mediaTypes": [
          "banner"
        ]
      }
    },
    "maintainer": {
      "email": "dev@33across.com"
    },
    "status": "ACTIVE"
  },
  "adform": {
    "capabilities": {
      "app": {
        "mediaTypes": [
          "banner"
        ]
      },
      "site": {
        "mediaTypes": [
          "banner"
        ]
      }
    },
    "maintainer": {
      "email": "scope.sspp@adform.com"
    },
    "status": "ACTIVE"
  },
  "adkernel": {
    "capabilities": {
      "app": {
        "mediaTypes": [
          "banner"
        ]
      },
      "site": {
        "mediaTypes": [
          "banner",
          "video"
        ]
      }
    },
    "maintainer": {
      "email": "prebid-dev@adkernel.com"
    },
    "status": "ACTIVE"
  },
  "adkernelAdn": {
    "capabilities": {
      "app": {
        "mediaTypes": [
          "banner"
        ]
      },
      "site": {
        "mediaTypes": [
          "banner",
          "video"
        ]
      }
    },
    "maintainer": {
      "email": "prebid-dev@adkernel.com"
    },
    "status": "ACTIVE"
  },
  ...
```






