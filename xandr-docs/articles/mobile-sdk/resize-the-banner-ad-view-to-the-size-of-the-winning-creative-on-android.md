---
Title : Resize the Banner Ad View to the Size of the Winning Creative on Android
Description : When you win a bid, you may want to resize the banner ad view to the
size of the winning creative.
ms.custom : android-sdk
---


# Resize the Banner Ad View to the Size of the Winning Creative on Android



When you win a bid, you may want to resize the banner ad view to the
size of the winning creative.

To retrieve the height and width of the winning creative, use
the getCreativeHeight and getCreativeWidth methods.



## Methods

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001795__entry__1"
class="entry colsep-1 rowsep-1">Method</th>
<th id="ID-00001795__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001795__entry__1"><code
class="ph codeph">getCreativeWidth()</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001795__entry__2">Retrieve the width of the creative for
the banner ad view.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001795__entry__1"><code
class="ph codeph">getCreativeHeight()</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001795__entry__2">Retrieve the height of the creative for
the banner ad view.</td>
</tr>
</tbody>
</table>





## Example

``` pre
BannerAdView bav = new BannerAdView(this);
bav.getCreativeWidth();
bav.getCreativeHeight();
```






