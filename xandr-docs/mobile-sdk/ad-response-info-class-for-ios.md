# Ad Response Info Class for iOS

<div class="body">

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

<div class="p">

To retrieve the adResponseInfo object from the ad response:

``` pre
@property (nonatomic, readwrite, strong, nullable) ANAdResponseInfo *adResponseInfo;
```

</div>

<div class="section">

## Properties

<div class="p">

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d36792e90" class="entry nocellnoborder"
style="vertical-align: top">Property</th>
<th id="d36792e93" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d36792e96" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>contentSource        </code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 ">String</td>
<td class="entry cell-noborder"
headers="d36792e96 ">An <span class="ph">Xandr</span> contentSource. A
contentSource can be RTB , CSM or SSM.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>creativeId</code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 ">String</td>
<td class="entry cell-noborder"
headers="d36792e96 ">A unique identifier for the creative associated
with the response.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>memberID</code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 ">Integer</td>
<td class="entry cell-noborder"
headers="d36792e96 ">A unique identifier for the member associated with
the response.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>networkName</code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 "> String</td>
<td class="entry cell-noborder"
headers="d36792e96 ">The name of the network associated with the
response.  </td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>placementId        </code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 "> String</td>
<td class="entry cell-noborder"
headers="d36792e96 ">A unique identifier for the placement tag
associated with the response.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>auctionId</code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 ">String</td>
<td class="entry cell-noborder"
headers="d36792e96 ">A unique identifier generated for the current
bid. </td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>cpm</code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 ">NSNumber</td>
<td class="entry cell-noborder"
headers="d36792e96 ">The bid price of the current auction expressed
as Cost per mille, or thousand (mille = thousand in Latin). A pricing
model in which advertisers pay for every 1000 impressions of their
advertisement served. This is the standard basic pricing model for
online advertising.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d36792e90 "><pre class="pre codeblock"><code>cpmPublisherCurrency</code></pre></td>
<td class="entry nocellnoborder"
headers="d36792e93 ">NSNumber</td>
<td class="entry cell-noborder"
headers="d36792e96 ">The cpm expressed in publishers' currency.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d36792e90 "><pre class="pre codeblock"><code>publisherCurrencyCode</code></pre></td>
<td class="entry -nocellborder"
headers="d36792e93 ">NSString</td>
<td class="entry cellborder"
headers="d36792e96 ">The currency code of the publishers' currency. For
example, USD</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="section">

## Code Samples - Objective C

<div class="p">

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

</div>

</div>

<div class="section">

## Code Samples - Swift

<div class="p">

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

</div>

<div class="p">

<div class="note">

<span class="notetitle">Note:</span>

AdResponseInfo can be retrieved using VideoAd instance, Interstitial Ad
View instance and Native Ad Response also apart from Banner Ad View.

**Objective C**

<div class="p">

``` pre
// For interstitialAd once adDidReceiveAd is callback
  NSString* interstitialAdCreativeId = self.interstitialAd.adResponseInfo.creativeId; // same will be followed to get other adResponseInfo from interstitialAd
 // For videoAd once adDidReceiveAd is callback
  NSString* videoAdCreativeId = self.videoAd.adResponseInfo.creativeId; // same will be followed to get other adResponseInfo from videoAd
 // For nativeAd once didReceiveResponse is callback
  ANAdResponseInfo nativeAdResponseInfo = nativeAdResponse;
   NSString* nativeAdCreativeId = nativeAdResponseInfo.creativeId; // same will be followed to get other adResponseInfo from videoAd
```

</div>

**Swift**

<div class="p">

``` pre
// For interstitialAd once adDidReceiveAd is callback
  let interstitialAdCreativeId : String = (self.interstitialAd.?.adResponseInfo?.creativeId)! // same will be followed to get other adResponseInfo from interstitialAd
 // For videoAd once adDidReceiveAd is callback
  let videoAdCreativeId : String = (self.videoAd.?.adResponseInfo?.creativeId)!  // same will be followed to get other adResponseInfo from videoAd
 // For nativeAd once didReceiveResponse is callback
  let nativeAdCreativeId : String = (self.nativeAdResponse.?.adResponseInfo?.creativeId)!  // same will be followed to get other adResponseInfo from nativeAd
```

</div>

</div>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-ad-units.html" class="link">iOS SDK Ad Units</a>

</div>

</div>

</div>
