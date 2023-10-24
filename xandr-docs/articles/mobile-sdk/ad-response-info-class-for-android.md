---
Title : Ad Response Info Class for Android
Description : The adResponseInfo class is a convenience class created to
hold Universal Tag response properties that are relevant to publishers.
ms.custom : android-sdk
---


# Ad Response Info Class for Android



The adResponseInfo class is a convenience class created to
hold Universal Tag response properties that are relevant to publishers.
When an `AdUnit` is returned from the `loadAd` method without an error,
either as a fully defined `adObject` or as a no bid response,
an `ANAdResponseInfo` is instantiated as a `adResponseInfo` property of
the returned Ad Unit. 



 To retrieve the adResponseInfo object from the ad response:   

``` pre
public ANAdResponseInfo getAdResponseInfo()
```





## Properties

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000b3e__entry__1" class="entry">Property</th>
<th id="ID-00000b3e__entry__2" class="entry">Type</th>
<th id="ID-00000b3e__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>adType</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">AdType</td>
<td class="entry" headers="ID-00000b3e__entry__3">The Ad Type of the
returned ad object.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>contentSource</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">String</td>
<td class="entry" headers="ID-00000b3e__entry__3">An <span
class="ph">AppNexus contentSource. A contentSource can be RTB ,
CSM or SSM.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>memberID</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">Integer</td>
<td class="entry" headers="ID-00000b3e__entry__3">A unique identifier
for the member associated with the response.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>networkName</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">String</td>
<td class="entry" headers="ID-00000b3e__entry__3">The name of the
network associated with the response.  </td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>tagId</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">String</td>
<td class="entry" headers="ID-00000b3e__entry__3">A unique identifier
for the placement tag associated with the response.

<b>Note:</b> This may also be referred to as
placementId in some instances of code.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>auctionId</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">String</td>
<td class="entry" headers="ID-00000b3e__entry__3">A unique
identifier generated for the current bid.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>cpm</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">Double</td>
<td class="entry" headers="ID-00000b3e__entry__3">The bid price of the
current auction expressed as Cost per mille, or thousand (mille =
thousand in Latin). A pricing model in which advertisers pay for every
1000 impressions of their advertisement served. This is the standard
basic pricing model for online advertising.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>cpmPublisherCurrency</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">Double</td>
<td class="entry" headers="ID-00000b3e__entry__3">The cpm expressed in
publishers' currency.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000b3e__entry__1"><pre
class="pre codeblock"><code>publisherCurrencyCode</code></pre></td>
<td class="entry" headers="ID-00000b3e__entry__2">String</td>
<td class="entry" headers="ID-00000b3e__entry__3">The currency code of
the publishers' currency. For example, USD</td>
</tr>
</tbody>
</table>





## Code Samples - Java



``` pre
// Request Banner Ad
bav = new BannerAdView(this);
bav.setPlacementID("1"); // Placement ID
bav.setAdSize(300, 250); // Size
bav.setAdListener(this) // AdListener
// On Ad Loaded
@Override
public void onAdLoaded(AdView bav) {
    log("Banner Ad Loaded");
    
    AdType adType = bav.getAdResponseInfo().getAdType();
    String tagId = bav.getAdResponseInfo().getTagId();
    String auctionId = bav.getAdResponseInfo().getAuctionId();
    Double cpm = bav.getAdResponseInfo().getCpm();
    Double cpmpublisherCurrency = bav.getAdResponseInfo().getCpmPublisherCurrency();
    String publishercurrencyCode = bav.getAdResponseInfo().getPublisherCurrencyCode();
}
```







## Code Samples - Kotlin



``` pre
// Request Banner Ad
banner = BannerAdView(this)
banner.placementID = "1" // PlacementID
banner.setAdSize(300, 250) // Size
banner.adListener = this // AdListener
banner.loadAd()
// On Ad Loaded
override fun onAdLoaded(ad: AdView?) {
    log("Banner Ad Loaded")
    val creativeId = banner.adResponseInfo.creativeId
    val adType = banner.adResponseInfo.adType
    val tagId = banner.adResponseInfo.tagId
    val auctionId = banner.adResponseInfo.auctionId
    val cpm = banner.adResponseInfo.cpm
    val cpmPublisherCurrency = banner.adResponseInfo.cpmPublisherCurrency
    val publisherCurrencyCode = banner.adResponseInfo.publisherCurrencyCode
}
```







<b>Note:</b> `AdResponseInfo` can be retrieved
using Video Ad instance, Interstitial Ad View instance and Native Ad
Response also apart from Banner Ad View.



**Java**

``` pre
//Video Ad
AdResponseInfo adResponseInfo = videoAd.getAdResponseInfo()
//Native Ad
AdResponseInfo adResponseInfo = nativeAdResponse.getAdResponseInfo()
//Insterstitial Ad View
AdResponseInfo adResponseInfo = interstitial.getAdResponseInfo()
```



**Kotlin**

``` pre
//Video Ad
val adResponseInfo = videoAd.adResponseInfo
//Native Ad
val adResponseInfo = nativeAdResponse.adResponseInfo
//Insterstitial Ad View
val adResponseInfo = interstitial.adResponseInfo
```










