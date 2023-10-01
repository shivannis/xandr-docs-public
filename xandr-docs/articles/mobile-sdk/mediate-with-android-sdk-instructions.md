---
Title : Mediate with Android SDK Instructions
Description : Note:
Android Studio and Gradle
These instructions assume you are using Android Studio and Gradle. Most
---


# Mediate with Android SDK Instructions





Note:

Android Studio and Gradle

These instructions assume you are using Android Studio and Gradle. Most
of the required `AndroidManifest.xml` entries (except the Location
permissions) and ProGuard changes are automatically added to your app.
If you are using other build systems, the steps may vary.



Mediation lets you sell ad impressions through multiple networks to
generate more revenue. This is initiated by your main (mediating) SDK
which calls out to one or more mediated SDKs in a "waterfall"-like
process. If your main SDK can't show an ad for some reason, it can
iterate over the list of mediated SDKs and contact them in the order you
specify. This will continue until the impression is filled or you've run
out of mediated SDKs.

Reasons to mediate to another SDK include the following:

- To provide better monetization under specific circumstances
- To provide access to information such as a unique user ID or the
  device's operating system, location, or ID
- Some networks only accept requests from their own SDKs, forcing you to
  use their SDK to access their demand



## Supported Networks and Media Types

This section lists the networks that we support with mediation adaptors,
as well as the media types that each adaptor supports. For each adaptor,
we show whether the adaptor supports banners, interstitials, native, or
all three.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000050b__entry__1" class="entry">Adaptor</th>
<th id="ID-0000050b__entry__2" class="entry">Version</th>
<th id="ID-0000050b__entry__3" class="entry">Banner</th>
<th id="ID-0000050b__entry__4" class="entry">Interstitial</th>
<th id="ID-0000050b__entry__5" class="entry">Native</th>
<th id="ID-0000050b__entry__6" class="entry">Docs</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000050b__entry__1">Google AdMob and
DFP</td>
<td class="entry" headers="ID-0000050b__entry__2">21.3.0</td>
<td class="entry" headers="ID-0000050b__entry__3">Yes</td>
<td class="entry" headers="ID-0000050b__entry__4">Yes</td>
<td class="entry" headers="ID-0000050b__entry__5">Yes</td>
<td class="entry" headers="ID-0000050b__entry__6"><a
href="https://developers.google.com/admob/android/mediate" class="xref"
target="_blank">Google Mobile Ads - Android Mediation</a></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000050b__entry__1">SmartAdServer</td>
<td class="entry" headers="ID-0000050b__entry__2">7.10.0</td>
<td class="entry" headers="ID-0000050b__entry__3">Yes</td>
<td class="entry" headers="ID-0000050b__entry__4">Yes</td>
<td class="entry" headers="ID-0000050b__entry__5">No</td>
<td class="entry" headers="ID-0000050b__entry__6"><a
href="https://help.smartadserver.com/en/#../../../../specifications/Content/MobileSpecifications/Apps.htm"
class="xref" target="_blank">SmartAdServer SDK Documentation</a></td>
</tr>
</tbody>
</table>





## Maven Settings

To mediate these networks, you'll need a supported release of our SDK,
and a mediation adaptor that allows our SDK to communicate with the
network's SDK. The easiest way to get the SDK and adaptors is to use
Maven from your `build.gradle` as shown in the example below. The first
block includes the dependencies for the SDK itself. The second block
lists adaptors to mediate other SDKs. (Note that these are top-level
blocks, not part of the buildscript block.) You can include or exclude
any of the adaptors in the second block. Including an adaptor causes it
to automatically include the appropriate 3rd party SDK (which is
downloaded from our CDN at Gradle sync time).

Finally, note that the `[8,9)` notation means that when your app is
compiled, the latest version of the SDK in the 8.x series will be
included. When we release a new version of the SDK, all that you'll have
to do to get the new version is recompile your app.

``` pre
repositories {
    mavenCentral()
      maven {
        url 'https://cdn.adnxs.com/anx-sdk/maven'
    }
}
dependencies {
    implementation fileTree(dir: 'libs', include: ['*.jar'])
    implementation 'com.appnexus.opensdk:appnexus-sdk:[8,9)'
    implementation 'com.appnexus.opensdk.mediatedviews:appnexus-googleplay-mediation:[8,9)'
    implementation 'com.appnexus.opensdk.mediatedviews:appnexus-smartadserver-mediation:[8,9)'
}
```



Warning:

Do **not** modify the mediation adaptors' `build.gradle` files. This may
break the build.







## Network-Specific Setup

This section has information about how to set up other networks' SDKs
for mediation, including code samples (when special setup is required)
and links to that SDK's documentation.

- <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/mediate-with-android-sdk-instructions.html#MediatewithAndroidSDKInstructions-AdMob"
  class="xref" target="_blank">AdMob</a>
- <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/mediate-with-android-sdk-instructions.html#MediatewithAndroidSDKInstructions-SmartAdServer"
  class="xref" target="_blank">SmartAdServer</a>

**AdMob**



Note:

For Mobile SDK 7.22 or above, mediating with Google Ad Mob version will
require an explicit dependency on `androidx.work:work-runtime:2.7.0` to
fix a bug causing app crashes on Android S. To fix this bug, add the
following dependencies for the Google Mobile Ads SDK to your module’s
app-level Gradle file:

``` pre
dependencies {
  implementation 'com.google.android.gms:play-services-ads:20.4.0'
  // For apps targeting Android 12, add WorkManager dependency.
  constraints {
    implementation('androidx.work:work-runtime:2.7.0') {
      because '''androidx.work:work-runtime:2.1.0 pulled from
      play-services-ads has a bug using PendingIntent without
      FLAG_IMMUTABLE or FLAG_MUTABLE and will fail in Apps
      targeting S+.'''
    }
  }
}
```





Warning:

Lifecycle Callbacks Required

When mediating AdMob/DFP banners, you must add lifecycle callbacks to
your code as described in the section below: **Implementation Note:
Forwarding Lifecycle Callbacks**, as we need to forward the lifecycle
callbacks to the AdMob/DFP banner as required by them. For more
information about activity lifecycles, see <a
href="https://developer.android.com/training/basics/activity-lifecycle/index.html"
class="xref" target="_blank">Managing the Activity Lifecycle</a> in the
Android docs.

**Implementation Note: Forwarding Lifecycle Callbacks**



The SDK allows you to forward lifecycle callbacks for the subclasses
of `AdView`: `BannerAdView` and `InterstitialAdView`.

Forwarding lifecycle callbacks is highly recommended for better
performance. For anyone mediating AdMob/DFP banners, it is a requirement
that they be called, as we need to forward the lifecycle callbacks to
the AdMob/DFP banner as required by them. See the code sample below for
information about which methods to call, and when.

For more information about activity lifecycles, see <a
href="https://developer.android.com/training/basics/activity-lifecycle/index.html"
class="xref" target="_blank">Managing the Activity Lifecycle</a> in the
Android docs.

``` pre
/**
 * To be called by the developer when the fragment/activity's onDestroy() function is called.
 */
abstract public void activityOnDestroy();
/**
 * To be called by the developer when the fragment/activity's onPause() function is called.
 */
abstract public void activityOnPause();
/**
 * To be called by the developer when the fragment/activity's onResume() function is called.
 */
abstract public void activityOnResume();
```

**Native Mediation**



Note:

Starting with v5.1 of the SDK, the AdMob Native Mediation adapter code
was modified support the
Google <a href="https://developers.google.com/admob/android/native/advanced"
class="xref" target="_blank">UnifiedNativeAd</a>.

The following are no longer relevant and have been removed:

``` pre
AdMobNativeSettings.setEnableAppInstallAd();
AdMobNativeSettings.setEnableContentAd();
```



For native mediation, add initialization code as described here:

If you intend to use MediaView for displaying Images/Video, you need to
enable MediaView before making an ad request. If you don't explicitly
enable it, we download the images for you and MediaView will not fill
the images automatically.

``` pre
AdMobNativeSettings.setEnableMediaView(true);
```

If the NativeAdResponse is from AdMob, create a View of
type UnifiedNativeAdView.

``` pre
private NativeAdRequestListener nativeAdRequestListener = new NativeAdRequestListener() {
 
    @Override
    public void onAdLoaded(NativeAdResponse response) {
        if (response.getNetworkIdentifier() == NativeAdResponse.Network.ADMOB) {
                // Instantiate UnifiedNativeAdView 
                // Set MediaView - Sets a media view for media content.
                // The media content gets loaded on the MediaView, if attached to the layout hierarchy and is registered using the setMediaView(...)
        }
    }
 
    @Override
    public void onAdFailed(ResultCode errorcode) {
  
    }
}
```

  
**Setting the Custom Keyword**

For passing the content URL to the Google SDK, the contenturl needs to
be passed as a custom keyword with the requester ad object
(BannerAdView, InterstitialAdView, NativeAdRequest). The key to be used
is `content_url`. Here is an example:

``` pre
// Add key content_url with a value (www.appnexus.com).
adView.addCustomKeywords("content_url", "www.appnexus.com");
```

For more information about the Google SDK, see the
<a href="https://developers.google.com/mobile-ads-sdk/docs/"
class="xref" target="_blank">Google Mobile Ads SDK</a> .

**SmartAdServer**

No special setup is required.

For more information about the the SmartAdServer SDK, see their <a
href="https://help.smartadserver.com/en/#../../../../specifications/Content/MobileSpecifications/Apps.htm"
class="xref" target="_blank">SDK documentation</a>.

If you intend to support Huawei devices that do not feature Google
services anymore (needed for Advertising Id retrieval), you also need to
declare the Huawei support libraries repository. To support Huawei
devices with SAS adapter, the publishers are required to add following
in the root level build.gradle of your project:

  
// Optional: Huawei services dependencies repository  
maven { url '<a href="https://developer.huawei.com/repo/" class="xref"
target="_blank">https://developer.huawei.com/repo/</a>' }



Warning: Interstitials

If you are using SmartAdServer interstitial, be aware that
`SASInterstitialView` does not have `loadAd()` and `showAd()` methods
corresponding to our mobile SDK's `InterstitialAdView`.
`SASInterstitialView` has only the `loadAd()` method which does both
loading and showing of ads just in one call.

To be consistent with our mobile SDK's `InterstitialAdView.loadAd()` and
`InterstitialAdView.showAd()` method call sequence we do not display the
`SASInterstitialView` until `InterstitialAdView.showAd()` is called.

In other words, it's expected that your app should immediately call
`showAd()` in `InterstitialAdView.onAdLoaded()`. If not, the
`SASInterstitialView` won't be displayed.







## Placement Setup for Interstitial Mediation

Use the following placement settings for interstitial mediation.

**Interstitial Mediation**

If you want to do interstitial mediation, make sure your placement is
set up in  with:

- **Size**: 1x1
- **Media Type**: Interstitial

**Interstitial Mediation plus RTB and/or Managed Demand**

If you want to do interstitial mediation and accept RTB and/or managed
demand through the same placement, you must make sure your placement is
set up in  with:

- **Size**: 1x1
- **Media Type**: Interstitial
- **Media Type**: Banner

For more instructions on creating placements, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/create-a-placement.html"
class="xref" target="_blank">Create a Placement</a> in the Monetize
documentation.

For non-mediated demand, you must pass the actual sizes of the creatives
in your ad calls using the `promo_sizes` placement tag parameter.

For instructions on passing custom interstitial sizes, see "Using Custom
Interstitial Sizes" in the <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-on-android.html"
class="xref" target="_blank">Show Interstitials on Android</a>
documentation.





## Custom Mobile Networks

The Xandr UI has built-in support for a number
of popular mobile ad networks. If you want to mediate a network it
doesn't support, you'll need to:

- Write a <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/android-custom-adaptors.html"
  class="xref" target="_blank">custom mediation adaptor</a> that lets
  our SDK receive events from the SDK you want to mediate.
- Set up a **Custom Mobile Network** using the instructions in <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/mediate-with-android-sdk-instructions.html"
  class="xref" target="_blank">Add a Network</a>.





## Related Topics

- <a href="android-sdk-integration-instructions.html" class="xref">Android
  SDK Integration Instructions</a>
- <a href="android-custom-adaptors.html" class="xref">Android Custom
  Adaptors</a>






