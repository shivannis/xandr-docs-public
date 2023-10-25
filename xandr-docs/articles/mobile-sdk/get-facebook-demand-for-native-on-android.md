---
Title : Get Facebook Demand for Native on Android
Description : This document describes the process for retrieving native ad assets to
display in Facebook's Audience Network SDK.
---


# Get Facebook Demand for Native on Android



This document describes the process for retrieving native ad assets to
display in Facebook's Audience Network SDK.

The following steps are required for retrieving and displaying native
ads for Facebook's Audience Network SDK:

1.  Ensure that the proper SDKs are installed. 
2.  Initialize Facebook's Audience Network SDK.
3.  Create a native banner ad layout.
4.  Create a native ad request and load the ad. 
5.  Inflate and register the native ad.
6.  Unregister the views.



## Ensure That the Proper SDKs are Installed

The Xandr SDK and
Xandr-FAN-Demand Package will need to be
installed. To know more about the details of the releases, please
go to <a href="https://github.com/appnexus/mobile-sdk-android/releases"
class="xref" target="_blank">our page</a> on Github repo. In the
dependencies section of the `build.gradle` of your project add these two
lines: 

``` pre
dependencies {
    implementation 'com.appnexus.opensdk:appnexus-sdk:[8,9)'
    implementation 'com.appnexus.opensdk.csr:appnexus-facebook-csr:[8,9)'
}
```





## Initialize Facebook's Audience Network SDK

Early in the lifecycle of your app, initialize `Audience Network` like
so:

``` pre
AudienceNetworkAds.buildInitSettings(this).withInitListener(new AudienceNetworkAds.InitListener() {
    @Override
    public void onInitialized(AudienceNetworkAds.InitResult initResult) {
        // do something, load ad or else
    }
}).initialize();
```



Note: To ensure a successful
implementation of a native ad with `Audience Network` your custom native
view must include <a
href="https://developers.facebook.com/docs/audience-network/setting-up/ad-setup/android/native#mediaview"
class="xref" target="_blank">MediaView</a> for the main asset. 







## Create a Native Banner Ad Layout

In the activity layout's `activity_main.xml` of your app, add a
container for your native ad. This container should be of type
`com.facebook.ads.NativeAdLayout,` which is a wrapper on top of a
`FrameLayout`. This wrapper provides extra functionality that enables
Xandr SDK to render a native `Ad Reporting Flow`
on top of the ad. 

``` pre
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="https://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">
    ...
    <com.facebook.ads.NativeAdLayout
        android:id="@+id/native_banner_ad_container"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_alignParentBottom="true" />
    ...
</RelativeLayout>
```

<a
href="https://developers.facebook.com/docs/audience-network/guides/ad-formats/native-banner/android#layout"
class="xref" target="_blank">Click here to view sample code </a>provided
by Facebook for setting up native banner ad custom layouts.





## Create a Native Ad Request and Load the Ad



Note: Hold a reference to the request
until you receive a response.



Check the type of response returned from the `NativeAdRequest`. If the
response type is `FBNativeBannerAdResponse`, cast the initial response
to an `FBNativeBannerAdResponse` and call the `inflateAndRegisterFB`
method. For other native ad types, call the `inflateAndRegisterNonFB`. 

``` pre
NativeAdRequest request = new NativeAdRequest(MainActivity.this, "17823252");
request.setListener(new NativeAdRequestListener() {
    @Override
    public void onAdLoaded(NativeAdResponse response) {
        Log.d("NativeBanner", "loaded");
        MainActivity.this.response = response;
        if (response instanceof FBNativeBannerAdResponse) {
            FBNativeBannerAdResponse fbResponse = (FBNativeBannerAdResponse) response;
            inflateAndRegisterFB(fbResponse);
        } else {
            inflateAndRegisterNonFB(response);
        }
    }
 
    @Override
    public void onAdFailed(ResultCode errorcode) {
        Log.d("NativeBanner", "failed");
    }
});
request.loadAd();
```





## Inflate and Register the Native Ad

The process for creating the NativeAdRequest and loading the ad uses one
of these methods, depending on the native ad object returned in the
response:

- inflateAndRegisterFB
- inflateAndRegisterNonFB

These methods are identical in function except for the registration
process. If the object returned in the response is
a `FBNativeBannerAdResponse` the response would call the `registerView`
method to register the ad. If it was not a `FBNativeBannerAdResponse`
object the response would then call `NativeAdSDK.registerTracking` to
register the ad. 

**inflateAndRegisterFB Example **

 Retrieve and display the call to action text for the call to action
button: 

``` pre
Button nativeAdCallToAction = adView.findViewById(R.id.native_ad_call_to_action);
nativeAdCallToAction.setText(fbResponse.getCallToAction());
```

Once the button text has been retrieved, register the native ad so the
click action and impression tracking can be activated:

``` pre
fbResponse.registerView(adView, nativeAdIconView, clickableViews, new NativeAdEventListener() {
    @Override
    public void onAdWasClicked() {
     
    }
 
    @Override
    public void onAdWillLeaveApplication() {
 
    }
 
    @Override
    public void onAdWasClicked(String clickUrl, String fallbackURL) {
 
    }
});
```

**  
inflateAndRegisterNonFB Example**

Retrieve the call to action text to display on the call to action button
and display that text: 

``` pre
Button nativeAdCallToAction = adView.findViewById(R.id.native_ad_call_to_action);
nativeAdCallToAction.setText(response.getCallToAction());
```

Once the button text has been retrieved register the native ad so the
click action and impression tracking can be activated:

``` pre
NativeAdSDK.registerTracking(response, adView, clickableViews, new NativeAdEventListener() {
    @Override
    public void onAdWasClicked() {
         
    }
 
    @Override
    public void onAdWillLeaveApplication() {
 
    }
 
    @Override
    public void onAdWasClicked(String clickUrl, String fallbackURL) {
 
    }
});
```

**Accessing The Original Native Object**

Publishers can access the original native object through the
`getNativeElements` method: 

``` pre
nativeAdCallToAction.setText(fbResponse.getCallToAction());
nativeAdSocialContext.setText(((NativeAdBase) 
response.getNativeElements().get(NativeAdResponse.NATIVE_ELEMENT_OBJECT)).getAdSocialContext());
```





## Unregister the Views

 When the app is finished displaying the ads you must unregister the
views. 

``` pre
if (this.response != null) {
    if (this.response instanceof FBNativeBannerAdResponse) {
        FBNativeBannerAdResponse fbresponse = (FBNativeBannerAdResponse) response;
        fbresponse.unregisterView();
        this.response = null;
    } else {
        NativeAdSDK.unRegisterTracking(nativeAdView);
    }
}
```





## Example App

Xandr has provided an <a
href="https://github.com/appnexus/AppExamples/tree/master/Android/Java/FacebookDemand"
class="xref" target="_blank">example app</a> on our Github repo.





## Related Topics

<a href="android-sdk-integration-instructions.html" class="xref">Android
SDK Integration Instructions</a>

<a href="show-banner-native-on-android.html" class="xref">Show Banner
Native on Android</a>

<a href="show-native-ads-on-android.html" class="xref">Show Native Ads
on Android</a>






