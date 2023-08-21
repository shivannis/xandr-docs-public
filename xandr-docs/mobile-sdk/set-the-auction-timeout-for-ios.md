# Set the Auction Timeout for iOS

<div class="body">

The setAuctionTimeout property defines the time period, in milliseconds,
to wait for a bidder to respond to a bid request. If the bidder fails to
respond within the value set for time out period (for example, 500
milliseconds), the bid request would result in failure. 

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d4974e53" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d4974e56" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d4974e59" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d4974e62" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d4974e53 "><code
class="ph codeph">setAuctionTimeout</code></td>
<td class="entry cellborder"
headers="d4974e56 ">Integer</td>
<td class="entry cellborder"
headers="d4974e59 ">readwrite</td>
<td class="entry cellborder"
headers="d4974e62 ">Set the timeout period in milliseconds</td>
</tr>
</tbody>
</table>

</div>

``` pre
@property (nonatomic, readwrite, assign) NSUInteger auctionTimeout;
```

</div>

<div class="section">

## Example

``` pre
[[ANSDKSettings sharedInstance] setAuctionTimeout:500];
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-code-samples.html" class="link">iOS SDK Code
Samples</a>

</div>

</div>

</div>
