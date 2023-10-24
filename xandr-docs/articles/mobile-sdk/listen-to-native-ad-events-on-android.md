---
Title : Listen to Native Ad Events on Android
Description : ## Overview
A publisher can opt for the SDK to handle various ad events such as
AdClick, occurrence of impressions etc., by registering into
ms.custom : android-sdk
---


# Listen to Native Ad Events on Android





## Overview

A publisher can opt for the SDK to handle various ad events such as
AdClick, occurrence of impressions etc., by registering into
**NativeAdEventListener** API. Using the API, SDK handles all the
mentioned events and notify the publishers whether the impression
trackers are fired or not for the creatives. To listen to the Ad events,
publishers need to register first using **registerTracking**, after
which SDK uses **NativeAdEventListener** to track the ad events.
Publishers need to unregister using **unregisterTracking** when they
are finished with the views for the response or wish to reuse the view
object(s) for a new **NativeAdResponse**.

**Scope of Listen to Native Ad events**

The scope of this feature is limited to native creatives only.





## Methods 

**Register for tracking of Ad events - registerTracking**

Method that registers a single or a list of the developer views that
will track impressions and respond to clicks for the native ad.

``` pre
public static void registerTracking(final NativeAdResponse response, final View view, final NativeAdEventListener listener)
public static void registerTracking(final NativeAdResponse response, final View container, final List<View> views, final NativeAdEventListener listener)
```

You can pass friendly obstruction list also in this method. To know more
about Friendly Obstructions, see <a
href="omid-friendly-obstruction-for-android.md"
class="xref" target="_blank">OMID Friendly Obstruction for Android</a>.

``` pre
public static void registerTracking(final NativeAdResponse response, final View view, final NativeAdEventListener listener, final List<View> friendlyObstructionsList)
public static void registerTracking(final NativeAdResponse response, final View container, final List<View> views, final NativeAdEventListener listener, final List<View> friendlyObstructionsList)
```

**Tracking of Ad events - NativeAdEventListener**

API with methods to track the ad events such as

- when ad click is set to be handled by the app or SDK

- when the ad takes the user away from the application

- when an impression is recorded for a native creative  
    

  ``` pre
  /**
   * Called when the developer sets the ad click to be handled by the SDK
   */
  public void onAdWasClicked();
   
  /**
   * Called when the ad takes the user away from the application
   */
  public void onAdWillLeaveApplication();
   
  /**
   * Called when the developer sets the ad click to be handled by the app
   * @param clickUrl the click url
   * @param fallbackURL the fallback url
   */
  public void onAdWasClicked(String clickUrl,String fallbackURL);
   
  /**
   * Called when an impression is recorded for an native ad
   */
  public void onAdImpression();
  ```

**Unregister for tracking of Ad events - unregisterTracking**

Method to unregister a native creative from tracking.

``` pre
public static void unRegisterTracking(final View view)
```





## Example

``` pre
// Register the Native Ad to listen to the Ad events
NativeAdSDK.registerTracking(response, nativeAdContainer, nativeAdEventListener);
// Initialise NativeAdEventListener
NativeAdEventListener nativeAdEventListener = new NativeAdEventListener() {
        @Override
        public void onAdWasClicked() {
            Log.d(LOG_TAG, "Native  onAdWasClicked");
        }
 
        @Override
        public void onAdWillLeaveApplication() {
            Log.d(LOG_TAG, "Native onAdWillLeaveApplication");
        }
 
        @Override
        public void onAdWasClicked(String clickUrl, String fallbackURL) {
            Log.d(LOG_TAG, "onAdWasClicked::clickUrl" + clickUrl + "::fallbackURL::" + fallbackURL);
        }
 
        @Override
        public void onAdImpression() {
            Log.d(LOG_TAG, "Native  onAdImpression");
        }
    };
```






