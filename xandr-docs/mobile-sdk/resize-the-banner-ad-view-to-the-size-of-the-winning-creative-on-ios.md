# Resize the Banner Ad View to the Size of the Winning Creative on iOS

<div class="body">

When you win a bid, you may want to resize the banner ad view to the
size of the winning creative.

To retrieve the height and width of the winning creative, use
the loadedAdSize method.

<div class="section">

## loadedAdSize

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d10561e53" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d10561e56" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d10561e53 "><code class="ph codeph">width</code></td>
<td class="entry cellborder"
headers="d10561e56 ">The width of the creative for the banner ad
view.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d10561e53 "><code class="ph codeph">height</code></td>
<td class="entry cellborder"
headers="d10561e56 ">The height of the creative for the banner ad
view.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
- (void)loadBannerAd
{ 
// Create the banner ad view and add it as a subview.
self.banner = [ANBannerAdView adViewWithFrame:rect placementId:@"1326299"];
self.banner.rootViewController = self;
   
// Fill in the ad sizes array.
CGSize size1 = CGSizeMake(300,  50);
CGSize size2 = CGSizeMake(300, 250);
NSArray *sizes = @[[NSValue valueWithCGSize:size1], [NSValue valueWithCGSize:size2]];
   
// Pass the ad sizes array to the banner ad view.
[self.banner setAdSizes:sizes];
   
[self.view addSubview:self.banner];
   
// Load an ad!
[self.banner loadAd];
}
  
#pragma mark - ANBannerAdViewDelegate
  
-(void)adDidReceiveAd:(id)ad{
    // Once the ad is loaded successfully, use the following to retrieve the ad sizes.
    NSLog(@"BannerAd's width %.2f ",self.banner.loadedAdSize.width )
    NSLog(@"BannerAd's height %.2f ",self.banner.loadedAdSize.height )
    }
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
