---
Title : Ad Sizes Service
Description : The Ad Size Service returns the ad sizes which are accepted by the
ms.date: 10/28/2023
ms.custom: digital-platform-api
member associated with the config.
---


# Ad Sizes Service



The Ad Size Service returns the ad sizes which are accepted by the
member associated with the config.

Ad Sizes come from the standard_sizes returned from the Member Service
(See <a
href="member-service.md"
class="xref" target="_blank">Member Service</a>). Sizes are set at the
member level. Since the sizes cannot be set in PSP, we add an endpoint
in PSP to fetch member sizes for user convenience, and so we can surface
them in the PSP UI.

**is_standard** means that the size is a standard size for a creative,
and it is not a custom size added to the member.



## REST API



<table id="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-center colsep-1 rowsep-1">HTTP Method</th>
<th
id="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-center colsep-1 rowsep-1">Endpoint</th>
<th
id="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-center colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"><code
class="ph codeph">GET</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/prebid/ad-sizes" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/prebid/ad-sizes</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="ad-sizes-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Return
all ad sizes.</td>
</tr>
</tbody>
</table>



**Example Response**

The response is a JSON array of ad size objects.

``` pre
[
  {
    "height": 150,
    "is_standard": false,
    "width": 180
  },
  {
    "height": 250,
    "is_standard": false,
    "width": 300
  },
  {
    "height": 480,
    "is_standard": false,
    "width": 640
  },
  {
    "height": 120,
    "is_standard": false,
    "width": 980
  }
]
```






