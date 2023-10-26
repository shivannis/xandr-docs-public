---
Title : Ad Response Info Class for iOS
Description : This document describes about the Ad Response Info class in iOS Mobile
SDK.
ms.custom : android-ios

---


# Ad Response Info Class for iOS



This document describes about the Ad Response Info class in iOS Mobile
SDK.

The <a
href="https://github.com/appnexus/mobile-sdk-ios/blob/master/sdk/sourcefiles/ANAdResponseInfo.h"
class="xref" target="_blank">ANAdResponseInfo class is a read only
public convenience class</a> created to hold Universal Tag response
properties that are relevant to publishers. When an `AdUnit` is returned
from the `loadAd` method without an error, either as a fully defined
`adObject` or as a no bid response, an `ANAdResponseInfo` is
instantiated as a `adResponseInfo` property of the returned Ad Unit. 



To retrieve the adResponseInfo object from the ad response:

``` pre
@property (nonatomic, readwrite, strong, nullable) ANAdResponseInfo *adResponseInfo;
```





## Properties



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000260d__entry__1" class="entry">Property</th>
<th id="ID-0000260d__entry__2" class="entry">Type</th>
<th id="ID-0000260d__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>contentSource        </code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">String</td>
<td class="entry" headers="ID-0000260d__entry__3">An <span
class="ph">Xandr contentSource. A contentSource can be RTB , CSM
or SSM.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>creativeId</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">String</td>
<td class="entry" headers="ID-0000260d__entry__3">A unique identifier
for the creative associated with the response.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>memberID</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">Integer</td>
<td class="entry" headers="ID-0000260d__entry__3">A unique identifier
for the member associated with the response.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>networkName</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2"> String</td>
<td class="entry" headers="ID-0000260d__entry__3">The name of the
network associated with the response.  </td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>placementId        </code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2"> String</td>
<td class="entry" headers="ID-0000260d__entry__3">A unique identifier
for the placement tag associated with the response.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>auctionId</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">String</td>
<td class="entry" headers="ID-0000260d__entry__3">A unique
identifier generated for the current bid.<br />
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>cpm</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">NSNumber</td>
<td class="entry" headers="ID-0000260d__entry__3">The bid price of the
current auction expressed as Cost per mille, or thousand (mille =
thousand in Latin). A pricing model in which advertisers pay for every
1000 impressions of their advertisement served. This is the standard
basic pricing model for online advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>cpmPublisherCurrency</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">NSNumber</td>
<td class="entry" headers="ID-0000260d__entry__3">The cpm expressed in
publishers' currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000260d__entry__1"><pre
class="pre codeblock"><code>publisherCurrencyCode</code></pre></td>
<td class="entry" headers="ID-0000260d__entry__2">NSString</td>
<td class="entry" headers="ID-0000260d__entry__3">The currency code of
the publishers' currency. For example, USD</td>
</tr>
</tbody>
</table>







## Code Samples - Objective C



``` pre
- (void)requestBannerAd
{
  // Make a banner ad view.
  self.banner = [ANBannerAdView adViewWithFrame:CGRectMake(0, 0, 300, 250) placementId:@“1” adSize:CGSizeMake(300,250)];
  self.banner.delegate = self;
  //... Add required configurations
  [self.banner loadAd];
}
// On Ad Loaded
- (void)adDidReceiveAd:(id)ad {
  NSLog(@“Ad did receive ad”);
  NSString* bannerCreativeId = self.banner.adResponseInfo.creativeId;
  NSString* bannerPlacementId = self.banner.adResponseInfo.placementId;
  NSString* bannerAuctionId = self.banner.adResponseInfo.auctionId;
  NSNumber* bannerCPM = self.banner.adResponseInfo.cpm;
  NSNumber* bannerCPMPublisherCurrency = self.banner.adResponseInfo.cpmPublisherCurrency;
  NSString* bannerPublisherCurrencyCode = self.banner.adResponseInfo.publisherCurrencyCode;
}
```







## Code Samples - Swift



``` pre
func requestBannerAd() {
       // Make a banner ad view.
       self.banner = ANBannerAdView(frame: CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 300, height: 250)), placementId: “1”, adSize: CGSize(width: 300, height: 250))
       self.banner!.rootViewController = self
       self.banner!.delegate = self
       //... Add required configurations
       self.banner!.loadAd()
   }
  // On Ad Loaded
   func adDidReceiveAd(_ ad: Any) {
       print(“Ad did receive ad”)
       let bannerCreativeId : String = (self.banner?.adResponseInfo?.creativeId)!
       let bannerPlacementId : String = (self.banner?.adResponseInfo?.placementId)!
       let bannerAuctionId : String = (self.banner?.adResponseInfo?.auctionId)!
       let bannerCPM = (self.banner?.adResponseInfo?.cpm)!
       let bannerCPMPublisherCurrency = (self.banner?.adResponseInfo?.cpmPublisherCurrency)!
       let bannerPublisherCurrencyCode = (self.banner?.adResponseInfo?.publisherCurrencyCode)!
}
```







<b>Note:</b>

AdResponseInfo can be retrieved using VideoAd instance, Interstitial Ad
View instance and Native Ad Response also apart from Banner Ad View.

**Objective C**



``` pre
// For interstitialAd once adDidReceiveAd is callback
  NSString* interstitialAdCreativeId = self.interstitialAd.adResponseInfo.creativeId; // same will be followed to get other adResponseInfo from interstitialAd
 // For videoAd once adDidReceiveAd is callback
  NSString* videoAdCreativeId = self.videoAd.adResponseInfo.creativeId; // same will be followed to get other adResponseInfo from videoAd
 // For nativeAd once didReceiveResponse is callback
  ANAdResponseInfo nativeAdResponseInfo = nativeAdResponse;
   NSString* nativeAdCreativeId = nativeAdResponseInfo.creativeId; // same will be followed to get other adResponseInfo from videoAd
```



**Swift**



``` pre
// For interstitialAd once adDidReceiveAd is callback
  let interstitialAdCreativeId : String = (self.interstitialAd.?.adResponseInfo?.creativeId)! // same will be followed to get other adResponseInfo from interstitialAd
 // For videoAd once adDidReceiveAd is callback
  let videoAdCreativeId : String = (self.videoAd.?.adResponseInfo?.creativeId)!  // same will be followed to get other adResponseInfo from videoAd
 // For nativeAd once didReceiveResponse is callback
  let nativeAdCreativeId : String = (self.nativeAdResponse.?.adResponseInfo?.creativeId)!  // same will be followed to get other adResponseInfo from nativeAd
```












