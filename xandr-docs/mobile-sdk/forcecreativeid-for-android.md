# forceCreativeId for Android

<div class="body">

A forceCreativeId specifies the ID of a creative that should be forced
to appear in a placement. It is used to request for the desired creative
to display. Forcing a creative allows you to preview an ad on a site,
perform testing or certification, and create tear sheets. This API is
available for banner, interstitial, native and InstreamVideo creatives.

<div class="section">

## Scope of forceCreativeId

The scope of the forceCreativeId is limited to debug or testing purpose
only and not to be used in a production environment.

</div>

<div class="section">

## Method

**setForceCreativeId**

Setter method which assigns the creative Id for display in a placement.
It will pass the forceCreateveId as the argument in the method.

``` pre
public void setForceCreativeId(int forceCreativeId)
```

</div>

<div class="section">

## Example

``` pre
//Banner
BannerAdView banner = new BannerAdView(this);
banner.setForceCreativeId(135482485);
 
//Interstitial
InterstitialAdView interstitialAd = new InterstitialAdView(this);
interstitialAd.setForceCreativeId(135482485);
 
//Native
NativeAdRequest adRequest = new NativeAdRequest(this, "123456");
adRequest.setForceCreativeId(135482485);
 
//InstreamVideo
VideoAd instreamVideoAd = new VideoAd( this , "9924002" );
instreamVideoAd.setForceCreativeId(135482485);   
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
