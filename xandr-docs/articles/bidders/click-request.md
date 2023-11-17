---
Title : Click Request
Description : The impression bus will insert our clicktracking URL into the creative
at serve time and log and report any clicks that occur. If the member
---


# Click Request



The impression bus will insert our clicktracking URL into the creative
at serve time and log and report any clicks that occur. If the member
whose creative served is integrated with a bidder, the Impression Bus
also passes along the click information to the bidder's designated click
handler (defined using the `click_uri` field of the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>).



## Implementation

**Specs**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004b81__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00004b81__entry__2"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-00004b81__entry__3" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004b81__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
timestamp of the click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">auction_id_64</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
unique ID for the auction of the impression won.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
numeric ID of the auction's winning member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">user_id_64</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
unique ID for the user. It will be the same for all requests from this
user until cookies are cleared.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">referer_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
referring URL of the page where the click originates.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">user_agent</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
user agent string from the click request's HTTP header.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">userdata_json</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
data for the user stored in the bidder's reserved space within our data
store.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code
class="ph codeph">custom_notify_data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">some</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004b81__entry__4">The
data passed by the bidder on the bid response.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__1"><code class="ph codeph">test</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__2">all</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__3">Bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004b81__entry__4">Whether or not the impression clicked
was run as a test impression.</td>
</tr>
</tbody>
</table>



<div id="ID-00004b81__section_tct_hzb_rwb" >

## Example Click Request



``` pre
{
   "click_request":{
      "timestamp":"2008-12-01 22:19:00",
      "auction_id_64":677373076784237441,
      "member_id":13,
      "user_id_64":2987961585469200312,
      "referer_url":"sports.yahoo.com",
      "user_agent":"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.4) Gecko/2008102920 Firefox/3.0.4",
      "userdata_json": "{\"segments\":[2]}",
      "test": false
   }
}
```








