---
Title : Native Custom Key Service
Description : The **read-only** Native Custom Key Service is used to view the custom
keys that belong to a certain member. Native custom keys are used by
---


# Native Custom Key Service



The **read-only** Native Custom Key Service is used to view the custom
keys that belong to a certain member. Native custom keys are used by
native ad creatives. Technically, native ads are identified by our
system as those creatives that have a `template` with a
`creative_format_id` of `12`, i.e., `"native"`. Some sellers allow
buyers to send along custom values with native ads, such as the
advertiser's brand, and native custom keys are used to store this
information.



## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000231f__entry__1" class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-0000231f__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000231f__entry__3" class="entry colsep-1 rowsep-1">Sort
by?</th>
<th id="ID-0000231f__entry__4" class="entry colsep-1 rowsep-1">Filter
by?</th>
<th id="ID-0000231f__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__1"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__5">Deprecated.
<p><strong>Default</strong>: N/A</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__1"><code
class="ph codeph">custom_key</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__4">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__5">Deprecated.
<p><strong>Default</strong>: null</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__1"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__5">Deprecated.
<p><strong>Default</strong>: Same as <code
class="ph codeph">created_on</code>, until modified.</p>
<p><strong>Required On</strong>: N/A</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__1"><code
class="ph codeph">created_on</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__4">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000231f__entry__5">Deprecated.
<p><strong>Default</strong>: N/A</p>
<p><strong>Required On</strong>: N/A</p></td>
</tr>
</tbody>
</table>





## Examples

**View all of the native custom keys associated with a member**

View a member's native custom keys like so:

``` pre
$ curl -b cookies 'https://api.appnexus.com/native-custom-key?member_id=123'
{
   "response":{
     "status":"OK",
     "count":1,
     "start_element":0,
     "num_elements":100,
     "native_custom_keys":[
       {
         "id":1,
         "custom_key":"object",
         "last_modified":"2015-03-10 22:34:39",
         "created_on":"2015-03-10 22:34:39" 
      }
    ]
  }
}
      
```





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
  class="xref" target="_blank">Member Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
  class="xref" target="_blank">Media Subtype Service</a>






