---
Title : Bid Response
Description : <b>Note:</b>
ms.date : 10/28/2023
- **Not Supported**: The AppNexusBidding
Protocol is no longer supported; this documentation is for legacy
purposes only.
---


# Bid Response





<b>Note:</b>

- **Not Supported**: The AppNexusBidding
  Protocol is no longer supported; this documentation is for legacy
  purposes only.
- If you're a new bidder integrating with Xandr,
  please see the **<a
  href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
  class="xref" target="_blank">OpenRTB 2.4 Bidding Protocol</a>**.



A bidder will send a Bid Response after it receives a <a
href="bid-request.md"
class="xref" target="_blank">Bid Request</a> from the Impression Bus.
The Bid Response will include the bidder's bid ("price") and chosen
creative ("creative_id" or "creative_code"). This creative will be
served if the bid is ultimately accepted by the ad server.



## Implementation

**Specs**

**Bid_response**

<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000011a0__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000011a0__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000011a0__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__1"><code
class="ph codeph">debug_text</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__3">This
optional textfield will be displayed within the debug log when calling
any TinyTag with &amp;debug=1&amp;bidder=BIDDER_ID&amp;dongle=DONGLE
appended to the query string.

<b>Note:</b> DONGLE (a password to protect a
bidder's debug output) is only required if one has been set for your
bidder.

<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__1"><code
class="ph codeph">no_bid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__2">bool</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__3">If
'true', this will signal to the Impression Bus that you have returned a
valid response but have chosen not to bid. This <strong>no_bid</strong>
field is best when you want to no_bid the entire response, not just a
particular tag.
<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>

**Bid_response-\>responses\[ \]**



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000011a0__entry__10"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000011a0__entry__11"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000011a0__entry__12"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">member_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
ID of the member whose creative is chosen by the bidder from the
"members" array in the request.
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">auction_id_64</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
ID of the auction for which this response is being sent.
<p><strong>Required</strong>: Yes</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">exclusive</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">bool</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__12"><em>Owner Phase:</em> If 'true', the
creative in this response will be served. No other bidders will be
allowed to compete for the impression.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">no_bid</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">bool</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">If
'true', this will signal to the Impression Bus that you have returned a
valid response but have chosen not to bid on this tag.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">price</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
gross price, expressed as CPM, that the bidder is willing to pay for
this impression. If exclusive, this is used only for reporting purposes;
if not exclusive, only a bidder that pays more than the reserve price
will be able to bid in the auction. This should be a simple decimal
number. If the value is a string, we will evaluate the string to a 0, so
please ensure the value is a number.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">userdata_js</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
userdata javascript commands to modify the userdata if this bidder's
response is selected.

<b>Note:</b> If the field
<strong>no_cookies</strong> on the bid request is set to true, then
there is no guarantee that any userdata_js commands will be executed
successfully (since AppNexus may not be able to
store any information about the user).

<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">custom_notify_data</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__12">This freeform text field can be used to
pass information to the <a
href="notify-request.md"
class="xref" target="_blank">Notify Request</a>. This will be URL-
and/or cookie-encoded by ImpBus automatically, so it can be passed in
free-text form.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">creative_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__12"><p><em>Owner Phase:</em> The ID of the
creative to use as the new default creative for the impression.</p>
<p><em>Non-owner phase:</em> The ID of the creative that is submitted as
part of the member's bid for the impression.</p>
<p><strong>Required</strong>: Yes (if no code is supplied).</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">creative_code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
custom code of the creative passed into the creative service.
<p><strong>Required</strong>: Yes (if no code is supplied).</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">click_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
click URL to be associated with the creative. If the creative already
has a click_url configured, the value in the bid response will be
prepended to the existing url. You can also use custom macros for your
click tracking.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">pixel_url</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
pixel URL to be associated with the creative. This pixel will be used
for non-secure inventory.
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">pixel_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">enum</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
type of pixel to be used: 'javascript' or 'image' (defaults to image if
not supplied).
<p><strong>Required</strong>: No</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__10"><code
class="ph codeph">deal_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__entry__11">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011a0__entry__12">The
ID of the deal you want to use for this auction.
<p><strong>Required</strong>: No</p></td>
</tr>
</tbody>
</table>



**Bid_response-\>responses\[ \]-\>custom_macros\[ \]**



<table class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000011a0__entry__52"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000011a0__entry__53"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000011a0__entry__54"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000011a0__entry__52"><code
class="ph codeph">name</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000011a0__entry__53">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000011a0__entry__54">The name of the macro to be replaced in
the any of the creative's urls (media, pixel, click, etc) or content.
The name may contain any characters except the carat (^), and must be
formatted as <code class="ph codeph">${MACRO_NAME}</code>

within the creative's urls or content.

<b>Note:</b> Custom macros are replaced AFTER
system macros have been replaced.


<p>See <a
href="creative-service.md"
class="xref" target="_blank">Creative Service</a> for more details on
custom macros.</p>
<p><strong>Required:</strong> No</p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000011a0__entry__52"><code
class="ph codeph">value</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000011a0__entry__53">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="ID-000011a0__entry__54">The value used to replace the macro.
The value may contain any characters except the carat (^). Do not escape
forward slashes.

<b>Note:</b> Even if the value is an integer,
it must be placed within double-quotes.
</td>
</tr>
</tbody>
</table>







## Auction ID

- Each bid response should include the auction ID for the tag it is
  responding to. Multiple responses can be given for the same auction.

- Bid responses in which no_bid is set to true must include the auction
  ID





## Limits on Custom Data (Macros and Notify data)

AppNexus does not impose limits on data passed
in the custom_macros array or the custom_notify_data field, but we
recommend limiting total custom data passed to 1000 characters or less.
This data has to be encoded and sent to the user's browser for certain
types of inventory (external sellers, iFrame placements) as part of a
redirect URL, and longer URLs can break under certain browsers and for
certain sellers.





## Example

**Single Tag Response (using creative ID with pixel)**



``` pre
{
   "bid_response":{
      "responses":[
         {
            "member_id":3,
            "price":11.170,
            "creative_id":11,
            "pixel_url":"https://ad.doubleclick.net/pixel?id=11706",
            "pixel_type":"image",
            "auction_id_64": 2345245234523
         }
      ]
   }
}
```



**Single Tag, Multiple Bids (using creative ID with pixel)**



``` pre
{
   "bid_response":{
      "responses":[
         {
            "member_id":3,
            "price":11.170,
            "creative_id":11,
            "pixel_url":"https://ad.doubleclick.net/pixel?id=11706",
            "pixel_type":"image",
            "auction_id_64": 2345245234523
         },
         {
            "member_id":3,
            "price":9.200,
            "creative_id":12,
            "pixel_url":"https://ad.doubleclick.net/pixel?id=11706",
            "pixel_type":"image",
            "auction_id_64": 2345245234523
         }
      ]
   }
}
```





**Multi Tag Response (using creative code and custom macros)**

``` pre
{
   "bid_response":{
      "responses":[
         {
            "member_id":7,
            "price":3.12,
            "creative_code":"23219",
            "custom_macros":[
               {
                  "name":"CAMPAIGN_ID",
                  "value":452346
               },
               {
                  "name":"INT_CODE",
                  "value":"a352-45we-sdr3"
               }
            ],
            "userdata_js":"update_frequency(23219)",
            "auction_id_64": 2345245234523
         },
         {
            "member_id":14,
            "price":1.14,
            "creative_code":"23219",
            "custom_macros":[
               {
                  "name":"CAMPAIGN_ID",
                  "value":452312
               },
               {
                  "name":"INT_CODE",
                  "value":"c231-4sa2-css5"
               }
            ],
            "userdata_js":"update_frequency(23219)",
            "auction_id_64": 2432387423232
         }
      ]
   }
}
```





**Response to a Deal**

``` pre
{
   "bid_response":{
      "responses":[
         {
            "member_id":5555,
            "price":0.75,
            "creative_id":11,
            "auction_id_64": 5555508250840350700,
            "deal_id": 555664
         }
      ]
   }
   }
```








