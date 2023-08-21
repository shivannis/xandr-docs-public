# forceCreativeId for iOS

<div class="body">

A forceCreativeId specifies the ID of a creative that should be forced
to appear in a placement. It is used to request for the desired creative
to display. Forcing a creative allows you to preview an ad on a site,
perform testing or certification, and create tear sheets. This API is
available for banner, interstitial, native and InstreamVideo creatives.

<div class="note">

<span class="notetitle">Note:</span> The scope of the forceCreativeId is
limited to debug or testing purposes. You should never use it in a
production environment. 

</div>

<div class="section">

## Properties

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d8895e61" class="entry nocellnoborder"
style="vertical-align: top">Property</th>
<th id="d8895e64" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d8895e67" class="entry nocellnoborder"
style="vertical-align: top">Attribute</th>
<th id="d8895e70" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d8895e61 "><code class="ph codeph">forceCreativeId</code></td>
<td class="entry -nocellborder"
headers="d8895e64 ">Integer</td>
<td class="entry -nocellborder"
headers="d8895e67 ">readwrite, assign</td>
<td class="entry cellborder"
headers="d8895e70 ">Indicates the id of creative that is to be assigned
to appear in a placement.</td>
</tr>
</tbody>
</table>

</div>

``` pre
@property (nonatomic, readwrite, assign) NSInteger forceCreativeId;
```

</div>

<div class="section">

## Example

``` pre
//Banner
ANBannerAdView *banner = [[ANBannerAdView alloc] initWithFrame:CGRectMake(0, 0, 320, 50) placementId:@"1" adSize:CGSizeMake(320, 50)];
banner.forceCreativeId = 135482485;
 
//Interstitial
ANInterstitialAd *interstitialAd = [[ANInterstitialAd alloc] initWithPlacementId:@"1"];
interstitialAd.forceCreativeId = 135482485;
 
//Native
ANNativeAdRequest *adRequest = [[ANNativeAdRequest alloc] init];
adRequest.forceCreativeId = 135482485;
 
//InstreamVideo
ANInstreamVideoAd  *instreamVideoAd  = [[ANInstreamVideoAd alloc] initWithPlacementId:placementID];
instreamVideoAd.forceCreativeId = 135482485; 
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
