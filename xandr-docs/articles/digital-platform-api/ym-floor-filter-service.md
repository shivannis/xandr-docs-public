---
Title : YM Floor Filter Service
Description : This read-only service allows you to view a list of yield management
ms.date: 10/28/2023
ms.custom: digital-platform-api
(YM) floor rules that apply to a specific member. The response will
---


# YM Floor Filter Service



This read-only service allows you to view a list of yield management
(YM) floor rules that apply to a specific member. The response will
include a list of YM floor rule IDs. You can use the ID to get more
information on the YM floor rule settings using the <a
href="yield-management-floor-service.md"
class="xref" target="_blank">Yield Management Floor Service</a>.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000045a5__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000045a5__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000045a5__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000045a5__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000045a5__entry__2"><a
href="https://api.appnexus.com/ym-floor-filter?publisher_id=PUBLISHER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ym-floor-filter?publisher_id=PUBLISHER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000045a5__entry__3">View
all yield management floor rules that apply to a specific
publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000045a5__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000045a5__entry__2"><a
href="https://api.appnexus.com/ym-floor-filter?buyer_member_id=BUYER_MEMBER_ID"
class="xref" target="_blank">https://api.<span
class="ph">appnexus.com/ym-floor-filter?buyer_member_id=BUYER_MEMBER_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000045a5__entry__3">View
all yield management floor rules that apply to a specific buyer.</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000045a5__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000045a5__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000045a5__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000045a5__entry__10"><code
class="ph codeph">ym-floor-filter</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000045a5__entry__11">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000045a5__entry__12">The
list of yield management floor rule IDs for rules that apply to the
member. See <a
href="ym-floor-filter-service.md#ID-000045a5__YM_Floor_Filter"
class="xref">YM Floor Filter</a> below for more information.</td>
</tr>
</tbody>
</table>




## YM Floor Filter



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000045a5__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000045a5__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000045a5__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000045a5__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000045a5__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000045a5__entry__18">The
ID of the yield management floor rule.

<b>Tip:</b> You can use the ID to get more
information on the YM floor rule settings using the <a
href="yield-management-floor-service.md"
class="xref" target="_blank">Yield Management Floor Service</a>.
</td>
</tr>
</tbody>
</table>



## Examples

**View all yield management floor rules that apply to a specific
publisher**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/ym-floor-filter?publisher_id=1"
  
{
  "response": {
    "status": "OK",
    "ym-floor-filter": [
      "1",
      "7"
    ],
  }
}
```

**View all yield management floor rules that apply to a specific buyer**

``` pre
$ curl -b cookies -c cookies "https://api.appnexus.com/ym-floor-filter?buyer_member_id=7"
  
{
  "response": {
    "status": "OK",
    "ym-floor-filter": [
      "1",
      "12"
    ],
  }
}
```

**View all yield management floor rules that apply to any of a series of
buyers**

``` pre
$ curl -b cookies -c cookies "http://sand.api.appnexus.com/ym-floor-filter?buyer_member_id=35,39,183"
  
{
  "response": {
    "status": "OK",
    "ym-floor-filter": [
      "35075",
      "35074",
      "35306",
      "35069",
      "35112",
      "35067",
      "35217",
      "36605",
      "35207",
      "36558",
      "36634",
      "35216",
      "36604",
      "35206",
      "36557",
      "36619",
      "34369",
      "33928",
      "33925",
      "33922",
      "34329",
      "172",
      "172",
      "172",
      "35089",
      "35089",
      "35089",
      "36610",
      "36609",
      "36610",
      "36609",
      "35232",
      "35232",
      "35422",
      "33920",
      "200",
      "200",
      "200",
      "218",
      "218",
      "218",
      "231",
      "231",
      "231",
      "34353",
      "33996",
      "34349",
      "33992",
      "34345",
      "33988",
      "34349",
      "34345",
      "34341",
      "34337",
      "34361",
      "34357",
      "34321"
    ],
    "count": 57,
    "start_element": 0,
    "num_elements": 57,
  }
  }
```






