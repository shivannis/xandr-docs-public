---
Title : Language Service
Description : Use the read-only Language Service to see what languages are registered
ms.date : 10/28/2023
in the Xandr system. Creatives are tagged with a
---


# Language Service



Use the read-only Language Service to see what languages are registered
in the Xandr system. Creatives are tagged with a
specific language, and ad profiles can be configured to include /
exclude particular languages.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000877a__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000877a__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000877a__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__2">https://api.<span
class="ph">adnxs.com/language</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000877a__entry__3">To
view all the languages</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__2">https://api.<span
class="ph">adnxs.com/language?id=LANGUAGE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000877a__entry__3">To
view information about a particular language</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__2">https://api.<span
class="ph">adnxs.com/language</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000877a__entry__3">To
add a language (admin only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__2">https://api.<span
class="ph">adnxs.com/language?id=LANGUAGE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000877a__entry__3">To
modify a language (admin only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__2">https://api.<span
class="ph">adnxs.com/language?id=LANGUAGE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000877a__entry__3">To
delete a language (admin only)</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000877a__entry__19"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000877a__entry__20"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000877a__entry__21"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__19"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__20">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000877a__entry__21">The
ID of the language</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__19"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__21">When the language was last
modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__19"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__20">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000877a__entry__21">Lanaguage name.</td>
</tr>
</tbody>
</table>





## Example

**View all languages (below output is truncated)**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/language"
{
  "response": {
    "status": "OK",
    "languages": [
      {
        "id": 1,
        "name": "English",
        "last_activity": "2010-05-21 21:05:28"
      },
      {
        "id": 2,
        "name": "Chinese",
        "last_activity": "2010-05-21 21:05:28"
      },
      {
        "id": 3,
        "name": "Spanish",
        "last_activity": "2010-05-21 21:05:28"
      },
      {
        "id": 4,
        "name": "Japanese",
        "last_activity": "2010-05-21 21:05:28"
      },
      {
        "id": 5,
        "name": "French",
        "last_activity": "2010-05-21 21:05:28"
      },
. . . .
 ],
    "count": 14,
    "start_element": null,
    "num_elements": null
  }
}
```






