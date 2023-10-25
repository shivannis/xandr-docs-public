---
Title : Resize the Banner Ad View to the Size of the Winning Creative on iOS
Description : When you win a bid, you may want to resize the banner ad view to the
size of the winning creative.
---


# Resize the Banner Ad View to the Size of the Winning Creative on iOS



When you win a bid, you may want to resize the banner ad view to the
size of the winning creative.

To retrieve the height and width of the winning creative, use
the loadedAdSize method.



## loadedAdSize

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000031fe__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000031fe__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000031fe__entry__1"><code
class="ph codeph">width</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000031fe__entry__2">The
width of the creative for the banner ad view.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000031fe__entry__1"><code
class="ph codeph">height</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000031fe__entry__2">The
height of the creative for the banner ad view.</td>
</tr>
</tbody>
</table>





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






