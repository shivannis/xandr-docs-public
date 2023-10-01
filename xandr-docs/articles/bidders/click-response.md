---
Title : Click Response
Description : Note:
- **Not Supported**: The Xandr bidding protocol
is no longer supported; this documentation is for legacy purposes
only.
---


# Click Response





Note:

- **Not Supported**: The Xandr bidding protocol
  is no longer supported; this documentation is for legacy purposes
  only.

- If you're a new bidder integrating with Xandr,
  please see the **<a
  href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
  class="xref" target="_blank">OpenRTB 2.4 Bidding Protocol</a>**.



Once a bidder receives a <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/click-request.html"
class="xref" target="_blank">Click Request</a>, it can write data to the
bidder's reserved segment of the AppNexus data
store through a ***click response***. This data will then be passed into
the `userdata_json` field of any future <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-request.html"
class="xref" target="_blank">Bid Requests</a>.



## Implementation

**Specs**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000057fa__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000057fa__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000057fa__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000057fa__entry__1"><code
class="ph codeph">userdata_js</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000057fa__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000057fa__entry__3">Javascript string to execute updating
the user's <code class="ph codeph">userdata_json</code> on a future <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-request.html"
class="xref" target="_blank">Bid Request</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000057fa__entry__1"><code
class="ph codeph">segment_actions</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000057fa__entry__2">array</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000057fa__entry__3">List
of segments to modify for the user.</td>
</tr>
</tbody>
</table>





## Example Pixel Response



<div class="example">



This example will call the hypothetical `setZip` function on the user,
add segment `1234` with a `60` minute expiration, and remove segment
code `"abcd"` from the user.

``` pre
{
    "click_response": {
        "userdata_js": "setZip('12345')",
        "segment_actions": [{"action": "add", "id":1234, "expires_min": 60},{"action": "remove", "code":"abcd","member_id":567}],
    }
}
```







## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/click-request.html"
  class="xref" target="_blank">Click Request</a>








