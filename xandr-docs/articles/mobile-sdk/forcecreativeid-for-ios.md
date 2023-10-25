---
Title : forceCreativeId for iOS
Description : A forceCreativeId specifies the ID of a creative that should be forced
to appear in a placement. It is used to request for the desired creative
---


# forceCreativeId for iOS



A forceCreativeId specifies the ID of a creative that should be forced
to appear in a placement. It is used to request for the desired creative
to display. Forcing a creative allows you to preview an ad on a site,
perform testing or certification, and create tear sheets. This API is
available for banner, interstitial, native and InstreamVideo creatives.



Note: The scope of the forceCreativeId
is limited to debug or testing purposes. You should never use it in a
production environment. 





## Properties

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00002ca7__entry__1" class="entry">Property</th>
<th id="ID-00002ca7__entry__2" class="entry">Type</th>
<th id="ID-00002ca7__entry__3" class="entry">Attribute</th>
<th id="ID-00002ca7__entry__4" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00002ca7__entry__1"><code
class="ph codeph">forceCreativeId</code></td>
<td class="entry" headers="ID-00002ca7__entry__2">Integer</td>
<td class="entry" headers="ID-00002ca7__entry__3">readwrite, assign</td>
<td class="entry" headers="ID-00002ca7__entry__4">Indicates the id of
creative that is to be assigned to appear in a placement.</td>
</tr>
</tbody>
</table>

``` pre
@property (nonatomic, readwrite, assign) NSInteger forceCreativeId;
```





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






