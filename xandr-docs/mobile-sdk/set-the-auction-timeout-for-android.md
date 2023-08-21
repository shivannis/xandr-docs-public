# Set the Auction Timeout for Android

<div class="body">

The setAuctionTimeout property defines the time period, in milliseconds,
to wait for a bidder to respond to a bid request. If the bidder fails to
respond within the value set for the time out period (for example, 500
milliseconds), the bid request would result in failure. 

<div class="section">

## PROPERTY

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d489e52" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d489e55" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d489e58" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d489e61" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d489e52 "><code class="ph codeph">setAuctionTimeout</code></td>
<td class="entry cellborder"
headers="d489e55 ">integer</td>
<td class="entry cellborder"
headers="d489e58 ">--</td>
<td class="entry cellborder"
headers="d489e61 ">Set the timeout period in milliseconds</td>
</tr>
</tbody>
</table>

</div>

``` pre
public static void setAuctionTimeout(long auctionTimeout)
```

</div>

<div class="section">

## Example

``` pre
SDKSettings.setAuctionTimeout(500)
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
