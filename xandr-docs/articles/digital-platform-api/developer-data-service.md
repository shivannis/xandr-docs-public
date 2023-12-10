---
Title : Developer Data Service
Description : The Developer Data Service is used to add data about API objects. The
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Developer Data Service



The Developer Data Service is used to add data about API objects. The
Developer Data Service is flexible, allowing developers to store
anything that might be useful when the user accesses the object
again. Some examples of how this service can be used: 



- Xandr uses it to store data on users not used
  by ad serving (e.g., if the user has seen or dismissed certain
  notifications within ).
- Xandr uses it to keep track of certain
  campaign state as the user is creating a campaign.





To write to the Developer Data Service, you must:

- be a valid and authenticated developer.
- own the object for which you are adding data.
- add data for a unique combination
  of `object_type` and `object_id` (e.g., you can add only one set of
  data for profile 1234).
- restrict the data object to 500 characters or less.
- be switched into a user.
  

  <b>Note:</b> You cannot write to the service
  by passing the `developer_id` through the command line or in the
  object JSON. You must be switched into a user

  



The Developer Data Service is only available for the following objects:

- Creative
- Profile
- Segment
- Member



## REST API

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-00002167__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00002167__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00002167__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__1"><code class="ph codeph">POST</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__2">https://api.<span
class="ph">appnexus.com/developer-data</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__3">Add
new developer data</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__1"><code class="ph codeph">PUT</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__2">https://api.<span
class="ph">appnexus.com/developer-data</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__3">Modify existing developer data</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__2"><ul>
<li>https://api.<span
class="ph">appnexus.com/developer-data?id=ID</li>
<li>https://api.<span
class="ph">appnexus.com/developer-data?object_id=OBJECT_ID</li>
</ul></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__3">View
specific developer data</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__2">https://api.<span
class="ph">appnexus.com/developer-data</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__3">View
all developer data</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__1"><code
class="ph codeph">DELETE</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__2">https://api.<span
class="ph">appnexus.com/developer-data</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__3">Delete developer data</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__1"><code class="ph codeph">GET</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__2">https://api.<span
class="ph">appnexus.com/developer-data/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002167__entry__22"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002167__entry__23"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002167__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__22"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__24">The
ID of the developer data object.
<p><strong>Default:</strong> Auto-generated number.</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__22"><code
class="ph codeph">object_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__23">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__24">The
ID of the object to which you are adding data.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code>, <code
class="ph codeph">DELETE</code></p>
<p><strong>Default:</strong> N/A</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__22"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__24">The
type of object to which you are adding data. Possible values: <code
class="ph codeph">creative</code>, <code
class="ph codeph">profile</code>, <code
class="ph codeph">segment</code>, <code class="ph codeph">member</code>.
<p><strong>Required On:</strong> <code class="ph codeph">POST</code>,
<code class="ph codeph">PUT</code>, <code
class="ph codeph">DELETE</code></p>
<p><strong>Default:</strong> N/A</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__22"><code
class="ph codeph">data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__23">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00002167__entry__24">The
data being added to the object. Must be formatted as an object.
<p><strong>Default:</strong> N/A</p>

<b>Note:</b> Must be less than 500 characters.
</td>
</tr>
</tbody>
</table>





<b>Note:</b> The table below is for
Xandr employees.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002167__entry__37"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00002167__entry__38"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00002167__entry__39"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__37"><code
class="ph codeph">developer_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__38">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00002167__entry__39"><strong>Admin Only.</strong> The ID of
the developer.
<p><strong>Default:</strong> Auto-generated number</p></td>
</tr>
</tbody>
</table>



## Examples

**Add new developer data**

``` pre
$ cat developer_data
{
        "developer_data": {
                "object_id": 10,
                "object_type": "profile",
                "data": "{\"plugin_ids\":{\"segment\":1}}"
        }
}
$ curl -b cookies -X POST -d @developer_data 'https://api.appnexus.com/developer-data'
{
  "response": {
    "status": "OK",
    "count": 6118352,
    "start_element": 0,
    "num_elements": 1,
    "developer-datas": [
      {
                "id": 1,
                "object_id": 10,
                "object_type": "profile",
                "data": "{\"plugin_ids\":{\"segment\":1}}"
                }
        ]
}
```

**View all developer data**

``` pre
$ curl -b cookies 'https://api.appnexus.com/developer-data'
{
  "response": {
    "status": "OK",
    "count": 6118352,
    "start_element": 0,
    "num_elements": 100,
    "developer-datas": [
      {
        "id": 1,
        "object_id": 726837,
        "object_type": "profile",
        "data": {
          "plugin_ids": {
            "segment": "2"
          },
          "usergroup_targeting": null
        }
      },
      {
        "id": 3,
        "object_id": 735066,
        "object_type": "profile",
        "data": {
          "plugin_ids": {
            "segment": "2"
          },
          "usergroup_targeting": null
        }
      },
  ...
    ],
    "dbg_info": {
      "instance": "61.bm-hbapi.prod.nym2",
      "slave_hit": false,
      "db": "master",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [],
      "time": 5967.670917511,
      "start_microtime": 1437417138.3324,
      "version": "1.15.568",
      "slave_miss": "no_service_index",
      "slave_lag": 0,
      "member_last_modified_age": 1437417138,
      "output_term": "developer-datas"
    }
  }
}
```

**View specific developer data**

``` pre
$ curl -b cookies 'http:api.appnexus.com/developer-data?id=3'
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": 0,
    "num_elements": 100,
    "developer-data": {
      "id": 3,
      "object_id": 735066,
      "object_type": "profile",
      "data": {
        "plugin_ids": {
          "segment": "2"
        },
        "usergroup_targeting": null
      }
    },
    "dbg_info": {
      "instance": "65.bm-hbapi.prod.nym2",
      "slave_hit": false,
      "db": "master",
      "awesomesauce_cache_used": false,
      "count_cache_used": false,
      "warnings": [],
      "time": 44.665098190308,
      "start_microtime": 1437418438.3285,
      "version": "1.15.568",
      "slave_miss": "no_service_index",
      "slave_lag": 0,
      "member_last_modified_age": 1437418438,
      "output_term": "developer-data"
    }
  }
}
```






