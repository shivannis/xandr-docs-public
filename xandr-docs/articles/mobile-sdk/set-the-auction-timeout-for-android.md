---
Title : Set the Auction Timeout for Android
Description : The setAuctionTimeout property defines the time period, in milliseconds,
to wait for a bidder to respond to a bid request. If the bidder fails to
ms.custom : android-sdk
---


# Set the Auction Timeout for Android



The setAuctionTimeout property defines the time period, in milliseconds,
to wait for a bidder to respond to a bid request. If the bidder fails to
respond within the value set for the time out period (for example, 500
milliseconds), the bid request would result in failure. 



## PROPERTY

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000018a9__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000018a9__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000018a9__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000018a9__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000018a9__entry__1"><code
class="ph codeph">setAuctionTimeout</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018a9__entry__2">integer</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000018a9__entry__3">--</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000018a9__entry__4">Set
the timeout period in milliseconds</td>
</tr>
</tbody>
</table>

``` pre
public static void setAuctionTimeout(long auctionTimeout)
```





## Example

``` pre
SDKSettings.setAuctionTimeout(500)
```






