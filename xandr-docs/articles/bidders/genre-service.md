---
Title : Genre Service
Description : Use the read-only Genre Service to see what video content genres are
registered in the Xandr system. Video content
---


# Genre Service



Use the read-only Genre Service to see what video content genres are
registered in the Xandr system. Video content
fields can be added to line item or deal line item targeting. 



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000865e__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-0000865e__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-0000865e__entry__3"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__2">https://api.<span
class="ph">adnxs.com/video-content-genre</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000865e__entry__3">To
view all defined genres</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__2">https://api.<span
class="ph">adnxs.com/video-content-genre?id=&lt;id value&gt;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000865e__entry__3">To
view a defined genre</td>
</tr>
</tbody>
</table>





## JSON FIELDS

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000865e__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-0000865e__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000865e__entry__12"
class="entry colsep-1 rowsep-1">Description </th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__10"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000865e__entry__12">The
Xandr referential ID associated with the
genre</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__10"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__12"><ul>
<li><strong>Required on</strong> POST/PUT</li>
</ul>
<p>The video taxonomy referential value</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__10"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000865e__entry__11">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000865e__entry__12">The
time of last modification</td>
</tr>
</tbody>
</table>



<div id="ID-0000865e__section_mxt_cy4_nwb" >

## Example

**To retrieve all defined genres  
  
**

``` pre
curl -b cookies -c cookies "https://api.adnxs.com/video-content-genre"
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-content-genres": [
      {
        "id": 1,
        "name": "Horror",
        "last_modified": "2020-09-21 13:59:38"
      },
      {
        "id": 2,
        "name": "Crime",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 3,
        "name": "Game-show",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 4,
        "name": "Documentary",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 5,
        "name": "Romance",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 6,
        "name": "Other-sport",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 7,
        "name": "Talk",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 8,
        "name": "Drama",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 9,
        "name": "Fantasy",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 10,
        "name": "Music",
        "last_modified": "2020-09-21 13:59:39"
      },
      {
        "id": 11,
        "name": "Shopping",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 12,
        "name": "Other",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 13,
        "name": "Action",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 14,
        "name": "Thriller",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 15,
        "name": "News",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 17,
        "name": "Reality",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 18,
        "name": "Comedy",
        "last_modified": "2020-09-21 13:59:40"
      },
      {
        "id": 19,
        "name": "Business",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 20,
        "name": "Cooking",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 21,
        "name": "Sitcom",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 22,
        "name": "Adventure",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 23,
        "name": "Sci-fi",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 25,
        "name": "Football",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 26,
        "name": "Animation",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 27,
        "name": "Baseball",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 28,
        "name": "Basketball",
        "last_modified": "2020-09-21 13:59:41"
      },
      {
        "id": 29,
        "name": "Biography",
        "last_modified": "2020-09-21 13:59:42"
      },
      {
        "id": 30,
        "name": "History",
        "last_modified": "2020-09-21 13:59:42"
      },
      {
        "id": 31,
        "name": "Musical",
        "last_modified": "2020-09-21 13:59:42"
      },
      {
        "id": 32,
        "name": "Mystery",
        "last_modified": "2020-09-21 13:59:42"
      },
      {
        "id": 33,
        "name": "Soccer",
        "last_modified": "2020-09-21 13:59:42"
      },
      {
        "id": 34,
        "name": "War",
        "last_modified": "2020-09-21 13:59:42"
      },
      {
        "id": 35,
        "name": "Western",
        "last_modified": "2020-09-21 13:59:42"
      }
    ],
    "count": 33,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-content-genres"
    }
  }
}
```



<div id="ID-0000865e__section_iyt_cy4_nwb" >

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
  class="xref" target="_blank">Profile Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices.html"
  class="xref" target="_blank">API Best Practices</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics.html"
  class="xref" target="_blank">API Semantics</a>








