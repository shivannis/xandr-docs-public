---
Title : Member Currency Service
Description : This is a read-only service that shows you the list of currencies used
ms.date: 10/28/2023
ms.custom: digital-platform-api
by a member's publishers. For more details about a currency, see <a
---


# Member Currency Service



This is a read-only service that shows you the list of currencies used
by a member's publishers. For more details about a currency, see <a
href="currency-service.md"
class="xref" target="_blank">Currency Service</a>.



## REST API



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002bd0__entry__1" class="entry colsep-1 rowsep-1">HTTP
Methods</th>
<th id="ID-00002bd0__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002bd0__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002bd0__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002bd0__entry__2">https://api.<span
class="ph">appnexus.com/member-currency?member_id=MEMBER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002bd0__entry__3">View
all available currencies</td>
</tr>
</tbody>
</table>







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002bd0__entry__7"
class="entry colsep-1 rowsep-1">Fields</th>
<th id="ID-00002bd0__entry__8" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002bd0__entry__9"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002bd0__entry__7"><code
class="ph codeph">currencies</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002bd0__entry__8">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002bd0__entry__9">An
array of currency symbols that represent all the currencies used by this
member's active (not deleted) publishers.</td>
</tr>
</tbody>
</table>





## Example

**View all currencies for a member**

``` pre
curl -b cookies -c cookies 'https://api.appnexus.com/member-currency?member_id=958'
{
    "response": {
        "status": "OK",
        "currencies": [
            "USD",
            "EUR",
            "NOK",
            "CAD",
            "GBP",
            "AUD",
            "PHP",
            "CNY",
            "INR",
            "JPY",
            "TWD",
            "CHF",
            "TRY",
            "SEK"
        ]
    }
}
```






