# Listen to Native Ad Events on iOS

<div class="body">

<div class="section">

## Overview

A publisher can opt for the SDK to handle various ad events such as
AdClick, occurrence of impressions etc., by registering into
**NativeAdEventListener** API. Using the API, SDK handles all the
mentioned events and notify the publishers whether the impression
trackers are fired or not for the creatives. To listen to the Ad events,
publishers need to register first using **registerViewForTracking**,
after which SDK uses **NativeAdEventListener** to track the ad events.
Publishers need to unregister using **NativeAdResponse** when they
are finished with the views for the response or wish to reuse the view
object(s) for a new **NativeAdResponse**.

**Scope of Listen to Native Ad events**

The scope of this feature is limited to native creatives only.

</div>

<div class="section">

## Methods 

**Register for tracking of Ad events - registerViewForTracking**

Method that registers a single or a list of the developer views that
will track impressions and respond to clicks for the native ad.

``` pre
- (BOOL)registerViewForTracking:(nonnull UIView *)view
         withRootViewController:(nonnull UIViewController *)rvc
                 clickableViews:(nullable NSArray *)views
                          error:(NSError *__nullable*__nullable)error
```

You can pass friendly obstruction list also in this method. To know more
about Friendly Obstructions, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/omid-friendly-obstruction-for-ios.html"
class="xref" target="_blank">OMID-Friendly Obstruction for iOS</a>.

``` pre
- (BOOL)registerViewForTracking:(nonnull UIView *)view
         withRootViewController:(nonnull UIViewController *)rvc
                 clickableViews:(nullable NSArray<UIView *> *)views
                 openMeasurementFriendlyObstructions:(nonnull NSArray<UIView *> *)obstructionViews
                          error:(NSError *__nullable*__nullable)error;
```

**Tracking of Ad events - NativeAdEventListener**

API with methods to track the ad events such as :

- when the native view is clicked by the user

- when native view returns the click-through URL and click-through
  fallback URL

- when the native view was clicked, and the click through destination is
  about to open in the in-app browser

- when the in-app browser has finished presenting and taken control from
  the application

- when the in-app browser will close and control will be returned to the
  application

- when the in-app browser has closed and control has been returned to
  the application

- when the ad is about to leave the app or when an impression is
  recorded for a native creative

  ``` pre
  /*!
   * Sent when the native view is clicked by the user.
   */
  - (void)adWasClicked:(nonnull id)response;
   
   
  /*!
   * Sent when the native view returns the click-through URL and click-through fallback URL
   *   to the user instead of opening it in a browser.
   */
  - (void)adWasClicked: (nonnull id)response
               withURL: (nonnull NSString *)clickURLString
           fallbackURL: (nonnull NSString *)clickFallbackURLString;
   
   
  /*!
   * Sent when the native view was clicked, and the click through
   * destination is about to open in the in-app browser.
   *
   * @note If it is preferred that the destination open in the
   * native browser instead, then set clickThroughAction to ANClickThroughActionOpenDeviceBrowser.
   */
  - (void)adWillPresent:(nonnull id)response;
   
   
  /*!
   * Sent when the in-app browser has finished presenting and taken
   * control from your application.
   */
  - (void)adDidPresent:(nonnull id)response;
   
   
  /*!
   * Sent when the in-app browser will close and before
   * control has been returned to your application.
   */
  - (void)adWillClose:(nonnull id)response;
   
   
  /*!
   * Sent when the in-app browser has closed and control
   * has been returned to your application.
   */
  - (void)adDidClose:(nonnull id)response;
   
   
  /*!
   * Sent when the ad is about to leave the app.
   * This will happen in a number of cases, including when
   *   clickThroughAction is set to ANClickThroughActionOpenDeviceBrowser.
   */
  - (void)adWillLeaveApplication:(nonnull id)response;
   
   
   
  /*!
  * Sent when  an impression is recorded for an native ad
  */
  - (void)adDidLogImpression:(nonnull id)response;
  ```

**Unregister for tracking of Ad events - unregisterTracking**

Method to unregister a native creative from tracking.

``` pre
self.nativeAdResponse = nil
```

</div>

<div class="section">

## Example

``` pre
- (void)adWasClicked: (nonnull id)response
             withURL: (nonnull NSString *)clickURLString
         fallbackURL: (nonnull NSString *)clickFallbackURLString
{
    NSLog(@"adWasClicked callback called wadWillExpireithURLString");
}
- (void)adWasClicked:(nonnull id)response {
    NSLog(@"adWasClicked callback called");
}
 
 
- (void)adWillPresent:(nonnull id)response {
    NSLog(@"adWillPresent callback called");
}
 
 
- (void)adDidPresent:(nonnull id)response {
    NSLog(@"adDidPresent callback called");
}
 
 
- (void)adWillClose:(nonnull id)response {
    NSLog(@"adWillClose callback called");
}
 
 
- (void)adDidClose:(nonnull id)response {
    NSLog(@"adDidClose callback called");
}
 
 
- (void)adWillLeaveApplication:(nonnull id)response {
    NSLog(@"adWillLeaveApplication callback called");
}
 
 
- (void)adDidLogImpression:(id)ad {
    NSLog(@"adDidLogImpression callback called");
}
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
