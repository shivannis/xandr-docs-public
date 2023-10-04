---
Title : Browser Service
Description : The read-only Browser Service allows you to see what browsers are
registered in the our system. You can use this service to retrieve the
---


# Browser Service



The read-only Browser Service allows you to see what browsers are
registered in the our system. You can use this service to retrieve the
IDs of browsers for targeting in campaigns via the <a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">Profile Service</a>.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000424__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00000424__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00000424__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__2">https://api.<span
class="ph">appnexus.com/browser</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__3">View
all browsers available for targeting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__2">https://api.<span
class="ph">appnexus.com/browser?search=SEARCH_TERM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__3">View
all browsers with IDs or names containing certain characters</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__2">https://api.<span
class="ph">appnexus.com/browser?id=BROWSER_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__3">View
a specific browser</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__2">https://api.<span
class="ph">appnexus.com/browser/meta</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__3">Find
out which fields you can filter and sort by</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000424__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000424__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000424__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__18">The
ID of the browser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__16"><code
class="ph codeph">is_aggregated</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__17">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__18">If
true, Xandr aggregates data for the browser in
reporting. If false, the carrier will appear as "Other Browser" in
reporting.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__16"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__18">The
date and time when the browser entry was last modified.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000424__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000424__entry__18">The
name of the browser.</td>
</tr>
</tbody>
</table>





## Examples

**View all browsers**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/browser'
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "browsers": [
            {
                "id": 0,
                "name": "Unknown",
                "last_modified": "2012-11-27 15:32:33",
                "is_aggregated": true
            },
            {
                "id": 1,
                "name": "Internet Explorer 8",
                "last_modified": "2012-11-27 15:32:43",
                "is_aggregated": true
            },
            {
                "id": 2,
                "name": "Internet Explorer 7",
                "last_modified": "2012-11-27 15:32:43",
                "is_aggregated": true
            },
            {
                "id": 3,
                "name": "Internet Explorer 6",
                "last_modified": "2012-11-27 15:32:43",
                "is_aggregated": true
            },
                        ...
                ]
        } 
}
```

**View a specific browser**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/browser?id=8'
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "browser": {
            "id": 8,
            "name": "Chrome (all versions)",
            "last_modified": "2012-11-27 15:32:43",
            "is_aggregated": true
        }
    }
}
```

**Search for a browser**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/browser?search=firefox'
{
    "response": {
        "status": "OK",
        "start_element": 0,
        "num_elements": 100,
        "browsers": [
            {
                "id": 5,
                "name": "Firefox 4",
                "last_modified": "2012-11-27 15:32:43",
                "is_aggregated": true
            },
            {
                "id": 6,
                "name": "Firefox 3",
                "last_modified": "2012-11-27 15:32:43",
                "is_aggregated": true
            },
            {
                "id": 7,
                "name": "Firefox (other versions)",
                "last_modified": "2012-11-27 15:32:43",
                "is_aggregated": true
            }
        ]
    }
}
```






