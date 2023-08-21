# Ad Response Info Class for Android

<div class="body">

The adResponseInfo class is a convenience class created to
hold Universal Tag response properties that are relevant to publishers.
When an `AdUnit` is returned from the `loadAd` method without an error,
either as a fully defined `adObject` or as a no bid response,
an `ANAdResponseInfo` is instantiated as a `adResponseInfo` property of
the returned Ad Unit. 

<div class="p">

 To retrieve the adResponseInfo object from the ad response:  

``` pre
public ANAdResponseInfo getAdResponseInfo()
```

</div>

<div class="section">

## Properties

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d34080e80" class="entry nocellnoborder"
style="vertical-align: top">Property</th>
<th id="d34080e83" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d34080e86" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>adType</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">AdType</td>
<td class="entry cell-noborder"
headers="d34080e86 ">The Ad Type of the returned ad object.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>contentSource</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">String</td>
<td class="entry cell-noborder"
headers="d34080e86 ">An <span class="ph">AppNexus</span> contentSource.
A contentSource can be RTB , CSM or SSM.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>memberID</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">Integer</td>
<td class="entry cell-noborder"
headers="d34080e86 ">A unique identifier for the member associated with
the response.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>networkName</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">String</td>
<td class="entry cell-noborder"
headers="d34080e86 ">The name of the network associated with the
response.  </td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>tagId</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">String</td>
<td class="entry cell-noborder"
headers="d34080e86 ">A unique identifier for the placement tag
associated with the response.
<div class="note">
<span class="notetitle">Note:</span> This may also be referred to as
placementId in some instances of code.
</div></td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>auctionId</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">String</td>
<td class="entry cell-noborder"
headers="d34080e86 ">A unique identifier generated for the current
bid.</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>cpm</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">Double</td>
<td class="entry cell-noborder"
headers="d34080e86 ">The bid price of the current auction expressed
as Cost per mille, or thousand (mille = thousand in Latin). A pricing
model in which advertisers pay for every 1000 impressions of their
advertisement served. This is the standard basic pricing model for
online advertising.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d34080e80 "><pre class="pre codeblock"><code>cpmPublisherCurrency</code></pre></td>
<td class="entry nocellnoborder"
headers="d34080e83 ">Double</td>
<td class="entry cell-noborder"
headers="d34080e86 ">The cpm expressed in publishers' currency.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d34080e80 "><pre class="pre codeblock"><code>publisherCurrencyCode</code></pre></td>
<td class="entry -nocellborder"
headers="d34080e83 ">String</td>
<td class="entry cellborder"
headers="d34080e86 ">The currency code of the publishers' currency. For
example, USD</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Code Samples - Java

<div class="p">

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

</div>

</div>

<div class="section">

## Code Samples - Kotlin

<div class="p">

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

</div>

<div class="p">

<div class="note">

<span class="notetitle">Note:</span> `AdResponseInfo` can be retrieved
using Video Ad instance, Interstitial Ad View instance and Native Ad
Response also apart from Banner Ad View.

<div class="p">

**Java**

``` pre
//Video Ad
AdResponseInfo adResponseInfo = videoAd.getAdResponseInfo()
//Native Ad
AdResponseInfo adResponseInfo = nativeAdResponse.getAdResponseInfo()
//Insterstitial Ad View
AdResponseInfo adResponseInfo = interstitial.getAdResponseInfo()
```

</div>

**Kotlin**

``` pre
//Video Ad
val adResponseInfo = videoAd.adResponseInfo
//Native Ad
val adResponseInfo = nativeAdResponse.adResponseInfo
//Insterstitial Ad View
val adResponseInfo = interstitial.adResponseInfo
```

</div>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-ad-units.html" class="link">Android SDK Ad
Units</a>

</div>

</div>

</div>
