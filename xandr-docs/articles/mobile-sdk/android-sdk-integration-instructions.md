---
Title : Android SDK Integration Instructions
Description : This page describes how to integrate our SDK with your project.
ms.custom : android-sdk
---


# Android SDK Integration Instructions



This page describes how to integrate our SDK with your project.



For instructions on showing different ad types, see:

- <a
  href="show-banners-on-android.md"
  class="xref" target="_blank">Show Banners on Android</a>
- <a
  href="show-interstitials-on-android.md"
  class="xref" target="_blank">Show Interstitials on Android</a>



  
Follow the instructions in this section to set up our SDK to show ads in
your app.



## Requirements

This SDK requires Android 2.3 or later, and Android SDK version 9 or
higher.

In order to show ads, you must have a valid
Xandr placement ID. This is a numeric ID that
represents a context in an application where ads can be shown.





<b>Tip:</b> **Google Play**

In order to enable the Android Advertising ID (AAID) for frequency
capping and mobile app targeting, you must include Google Play Services
as a dependency of your app. Xandr's SDK will
still function without Google Play Services, but you won't have access
to those features.









<b>Tip:</b> **Android Studio and Gradle**

These instructions assume you are using Android Studio and Gradle. Most
of the required `AndroidManifest.xml` entries (except the Location
permissions) and ProGuard changes are automatically added to your app.
If you are using other build systems, the steps may vary.









## Installation

**Step 1. Get the SDK**

There are several ways to get our SDK:

- Install via Maven from your `build.gradle` file as shown below. Note
  that the `[8,9)` notation means that when your app is compiled, the
  latest version of the SDK in the 8.x release series will be included.
  When we release a new version of the SDK, all you have to do to get
  the new version is recompile your app. If you want to include
  mediation adaptors for other SDKs in your `build.gradle`, see the
  section **Let us Mediate other Networks** of <a
  href="mediate-with-android-sdk-instructions.md"
  class="xref" target="_blank">Mediate with Android</a>.
  

  <b>Note:</b> These are top-level blocks, not
  part of the buildscript block.

  



<b>Warning:</b> The compile command is no
longer supported by Gradle, it has been replaced with the implementation
command.

``` pre
// Android: Gradle config to install the SDK
repositories {
    mavenCentral()
}

dependencies {
    implementation 'com.appnexus.opensdk:appnexus-sdk:[8,9)'
}
   
```



- Check out the source code from
  <a href="https://github.com/appnexus/mobile-sdk-android" class="xref"
  target="_blank">Github</a> and follow the instructions in <a
  href="build-the-android-sdk-from-source.md"
  class="xref" target="_blank">Build the Android SDK From Source.</a>

**Step 2. Edit App Permissions (optional)**

Edit your Android manifest to include the following (optional but
recommended) permissions:

``` pre
<!-- Android: XML to include recommended permissions -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android">

<!-- Add the permissions here... -->
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

- `ACCESS_COARSE_LOCATION` (recommended) - Grants the SDK permission to
  access approximate location based on cell tower.
- `ACCESS_FINE_LOCATION` (recommended) - Grants the SDK permission to
  access a more accurate location based on GPS.



<b>Tip:</b> Location Permissions Must Prompt
the User

In API Level 23 (Marshmallow) and above, you must prompt the user with a
dialog at app runtime for either of the location permissions listed
above. The SDK can only access location permissions with the user's
consent.

For more information, see <a
href="https://developer.android.com/training/permissions/requesting.html#perm-request"
class="xref" target="_blank">Request Permissions</a> from the Android
documentation.





Although not technically required, the location permissions make it
possible for the SDK to send location-based data to advertisers. Sending
better location data generally leads to better monetization.



<b>Note:</b> The SDK will never wake up the
phone to request the location to be updated; this would take time and
battery. Instead, it will use these permissions to access the last known
location of the device.





**Step 3. Edit Proguard Settings**

If your app uses Proguard, you must edit your Proguard settings to avoid
stripping Google Play out of your app. The SDK doesn't require Google
Play to function, but you will lose access to the Android Advertiser ID
(AAID), which is used for app targeting and frequency capping. Edit your
project's `proguard-project.txt` file to add the following:

``` pre
### Proguard settings to support Android Advertiser ID
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient {
    com.google.android.gms.ads.identifier.AdvertisingIdClient$Info getAdvertisingIdInfo(android.content.Context);
}
-keep class com.google.android.gms.ads.identifier.AdvertisingIdClient$Info {
    java.lang.String getId();
    boolean isLimitAdTrackingEnabled();
}     
```

**Step 4. Set up for mediation (optional)**

For instructions on getting set up for mediation, see <a
href="mediate-with-android-sdk-instructions.md"
class="xref" target="_blank">Mediate with Android.</a>





## Implementation <b>Note:</b> Forwarding Lifecycle Callbacks

The SDK allows you to forward lifecycle callbacks for the subclasses of
`AdView`: `BannerAdView` and `InterstitialAdView`.

Forwarding lifecycle callbacks is highly recommended for better
performance. For anyone mediating AdMob/DFP banners, it is a requirement
that they be called, as we need to forward the lifecycle callbacks to
the AdMob/DFP banner as required by them. See the code sample below for
information about which methods to call, and when.

For more information about activity lifecycles, see <a
href="https://developer.android.com/guide/components/activities/intro-activities"
class="xref" target="_blank">Managing the Activity Lifecycle</a> in the
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





## Related Topics

<a
href="show-banners-on-android.md"
class="xref" target="_blank">Show Banners</a>

<a
href="show-interstitials-on-android.md"
class="xref" target="_blank">Show Interstitials</a>






