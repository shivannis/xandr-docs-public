# Resize the Banner Ad View to the Size of the Winning Creative on Android

<div class="body">

When you win a bid, you may want to resize the banner ad view to the
size of the winning creative.

To retrieve the height and width of the winning creative, use
the getCreativeHeight and getCreativeWidth methods.

<div class="section">

## Methods

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d21399e54" class="entry cellborder"
style="vertical-align: top">Method</th>
<th id="d21399e57" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d21399e54 "><code
class="ph codeph">getCreativeWidth()</code></td>
<td class="entry cellborder"
headers="d21399e57 ">Retrieve the width of the creative for the banner
ad view.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d21399e54 "><code
class="ph codeph">getCreativeHeight()</code></td>
<td class="entry cellborder"
headers="d21399e57 ">Retrieve the height of the creative for the banner
ad view.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
BannerAdView bav = new BannerAdView(this);
bav.getCreativeWidth();
bav.getCreativeHeight();
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-code-samples.html" class="link">Android SDK Code
Samples</a>

</div>

</div>

</div>
