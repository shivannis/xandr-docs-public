---
Title : Creative Folder Service
Description : The creative folder service allows you to group creatives for
ms.date: 10/28/2023
ms.custom: digital-platform-api
organizational purposes. You can add multiple creatives at once to a
---


# Creative Folder Service



The creative folder service allows you to group creatives for
organizational purposes. You can add multiple creatives at once to a
folder as you create it.



## REST API



<table
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all creative folders (you must specify advertiser).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID&amp;id=FOLDER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID&amp;id=FOLDER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
a specific creative folder.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID</a></p>
<p>(creative-folder JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new creative folder (you can add creatives to the folder in this
action or afterwards).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID</a></p>
<p>(creative-folder JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Add
a new creative to one of your folders.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">PUT</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/creative-folder?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-folder?id=CREATIVE_ID&amp;advertiser_id=ADVERTISER_ID</a></p>
<p>(creative-folder JSON)</p></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Modify
an existing creative folder.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">DELETE</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID&amp;id=FOLDER_ID"
class="xref"
target="_blank">https://api.appnexus.com/creative-folder?advertiser_id=ADVERTISER_ID&amp;id=FOLDER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Delete
an existing creative folder.</td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
internal ID associated with the creative folder.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">parent_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><strong>Deprecated.</strong></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
optional name for the creative folder.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">advertiser_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">All
creatives are attached to either an advertiser or publisher at the time
of creation.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">creatives</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">array
of objects</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">List
of creatives you wish to include in this folder, or list of creatives
already in the folder, depending on your request.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">timestamp</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="buy-side-service-template__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
date and time when the creative folder was last modified.</td>
</tr>
</tbody>
</table>







## Examples

**Add a creative folder that contains two (pre-existing) creatives**

>

``` pre
{code}$ cat creative-folder

{
    "creative-folder":{
        "creatives":[{
                "id":246305
            },
            {
                "id":246221
            }
        ]
    }
}

$ curl -b cookies -c cookies -X POST -d @creative-folder 'https://api.appnexus.com/creative-folder?advertiser_id=493'

{
  "response": {
    "status": "OK",
    "id": 338
  }
}
{code}
```



**View all folders for advertiser 493**

``` pre
{code}$ curl -b cookies -c cookies 'https://api.appnexus.com/creative-folder?advertiser_id=493'

{
  "response": {
    "creative-folders": [
      {
        "id": 81,
        "parent_id": null,
        "advertiser_id": 493,
        "name": "Hosted Images",
        "last_modified": "2010-03-31 21:26:59",
        "creatives": [
          {
            "id": "14900"
          }
        ]
      },
      {
        "id": 82,
        "parent_id": null,
        "advertiser_id": 493,
        "name": "3rd party images",
        "last_modified": "2010-03-31 21:27:07",
        "creatives": [
          {
            "id": "246305"
          }
        ]
      },
      {
        "id": 152,
        "parent_id": null,
        "advertiser_id": 493,
        "name": "an-creatives-2",
        "last_modified": "2010-08-05 15:18:50",
        "creatives": [
          {
            "id": "246214"
          },
          {
            "id": "246215"
          },
          {
            "id": "246216"
          },
          {
            "id": "246217"
          },
          {
            "id": "246218"
          },
          {
            "id": "246219"
          },
          {
            "id": "246220"
          },
          {
            "id": "246221"
          }
        ]
      },
      {
        "id": 338,
        "parent_id": null,
        "advertiser_id": 493,
        "name": null,
        "last_modified": "2011-06-20 19:15:18",
        "creatives": [
          {
            "id": "246221"
          },
          {
            "id": "246305"
          }
        ]
      }
    ],
    "status": "OK",
    "count": 4,
    "start_element": 0,
    "num_elements": 100
  }
}
{code}
```

**Add a creative to an existing creative folder**

Be sure to include append=true to your query statement. If you leave
this off, all existing creatives in the folder will be overwritten.

``` pre
$ cat creative-folder

{
    "creative-folder":{
        "creatives":[{
                "id":876543
            }
        ]
    }
}

curl -b cookies -X PUT -d @creative-folder 'https://api.appnexus.com/creative-folder?id=338&advertiser_id=493&append=true'

{
  "response": {
    "status": "OK",
    "id": 338
  }
}
```






