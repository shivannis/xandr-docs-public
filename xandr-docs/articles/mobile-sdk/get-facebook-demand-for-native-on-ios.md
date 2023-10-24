---
Title : Get Facebook Demand for Native on iOS
Description : This document describes the process for retrieving native ad assets to
display in Facebook's Audience Network SDK. 
ms.custom : ios-sdk
---


# Get Facebook Demand for Native on iOS



This document describes the process for retrieving native ad assets to
display in Facebook's Audience Network SDK. 



<b>Note:</b> This SDK requires MacOS X 10.7+
and Xcode version 6.0+.





## Ensure That the Proper SDKs are Installed

The Xandr SDK and
Xandr-FAN-Demand Package will need to be
installed. There are two ways to install our SDK:

1.  Download and unzip the latest release of our SDK from
    our <a href="https://github.com/appnexus/mobile-sdk-ios/releases/latest"
    class="xref" target="_blank">Github Releases</a> page. If you don't
    want the binary release, you can clone the source code from
    our <a href="https://github.com/appnexus/mobile-sdk-ios" class="xref"
    target="_blank">Github repo</a> and build it yourself. Drag and drop
    the FacebookCSRAdapter folder into Xcode Project.
2.  Use <a href="https://cocoapods.org/" class="xref"
    target="_blank">CocoaPods</a>. 

Once you have CocoaPods installed.

- Use Terminal or your command line editor of choice and navigate to the
  project directory and create a podfile.

  ``` pre
  pod init
  ```

- Using a text editor, open the newly created podfile. Set the platform
  to 10.0 (AppNexus always supports two iOS
  releases back from the current release) and add pod 'AppNexusSDX' to
  the target. 

  ``` pre
  # iOS: Podfile config to include our SDK
  platform :ios, '10.0'
     
  project 'SampleApp'
     
  target 'SampleApp' do
    
    pod 'AppNexusSDK'
    pod 'AppNexusSDK/FacebookCSRAdapter'
    
  end 
  ```

- Save your changes and return to Terminal and enter: 

  ``` pre
  pod install
  ```

- Cocoapods will download both the AppNexus SDK
  and FacebookCRSAdapter and also create a workspace in the project
  directory. If your project is currently open, close it and open the
  workspace.





## Initialize Facebook's Audience Network SDK

Early in the lifecycle of your app, initialize Facebook's Audience
Network SDK (`FBAudienceNetworkAds`) as shown in the code-block below.

``` pre
[FBAudienceNetworkAds 
  initializeWithSettings:fbAdSettingObject  
  completionHandler:^(FBAdInitResults *results) {
         if (results.success) {
             [ANFBSettings setFBAudienceNetworkInitialize:YES];
             complete(nil);
         } else {
             [ANFBSettings setFBAudienceNetworkInitialize:NO];
             complete(error); 
        }
     }];
```

On successful initialization of
`FBAudienceNetworkAds`, `setFBAudienceNetworkInitialize` is set to YES, 
otherwise it is set as NO. If the value is set as YES i.e. Audience
Network SDK is initialized, `getBidderToken` method of Audience Network
SDK would return the Facebook Bidder Token to proceed further. For
values set as NO, `getBidderToken` method will return nil.

Starting with iOS 14, Publisher App need to set a new
API **setAdvertiserTrackingEnabled**  to fulfil the iOS policy
obligations for using the Audience Network SDK. A new
API **setAdvertiserTrackingEnabled** was added to **FBAdSettings** that
is functional on only iOS 14 (and later) with FacebookAd SDK 6.0.0.

``` pre
// Set the flag as true if a user provides consent
 [FBAdSettings setAdvertiserTrackingEnabled:YES];
 // Set the flag as false if a user disallows tracking
 [FBAdSettings setAdvertiserTrackingEnabled:NO];
```





## Create Native Ad Request and Load Ad



<b>Note:</b> Retain a reference to the request
until a response has been returned.

``` pre
self.nativeAdRequest= [[ANNativeAdRequest alloc] init];
self.nativeAdRequest.placementId = @"18793423";
self.nativeAdRequest.delegate = self;
[self.nativeAdRequest loadAd];
```







## Handle Response for FB Native Banner

Create a layout for FBNativeBanner. You can follow the example provided
by <a
href="https://developers.facebook.com/docs/audience-network/guides/initialize-sdk"
class="xref" target="_blank">Facebook</a>.

If a successful response is returned:

``` pre
- (void)adRequest:(ANNativeAdRequest *)request didReceiveResponse:(ANNativeAdResponse *)response {
    // (code which loads the view)
    self.nativeAdResponse = response;
    self.adTitleLabel.text = self.nativeAdResponse.title;
    self.bodyLabel.text = self.nativeAdResponse.body;
    self.adSponsoredLabel.text = self.nativeAdResponse.sponsoredBy;
 
 
     if(self.nativeAdResponse.customElements[kANNativeCSRObject] && self.nativeAdResponse.customElements[kANNativeCSRObject] isKindOfClass:[ANAdAdapterCSRNativeBannerFacebook class]) {
        ANAdAdapterCSRNativeBannerFacebook *fbNativeBanner = (ANAdAdapterCSRNativeBannerFacebook *)response.customElements[kANNativeCSRObject];
        // CSR registerViewForTracking (see example below)
    }else {
        //  Non CSR registerViewForTracking
            //  See native ad examples here: mobile-sdk/show-native-ads-on-ios.md
    }
}
```

  
On a response error:

``` pre
- (void)adRequest:(ANNativeAdRequest *)request didFailToLoadWithError:(NSError *)error withAdResponseInfo:(ANAdResponseInfo *)adResponseInfo{
    NSLog(@"didFailToLoadWithError");
}
```





## Register the View for Tracking

Call the registerViewForTracking method of
the ANAdAdapterCSRNativeBannerFacebook object.

**For Media View with clickableViews**

``` pre
/*registerViewForTracking using MediaView with Click Tracker */
[fbNativeBanner registerViewForTracking:self.adUIView
                 withRootViewController:self
                          iconView:self.adIconView
                         clickableViews:@[self.adUIView]];          
```

**For Media View with No clickableViews**

``` pre
/*registerViewForTracking using MediaView without Click Tracker */
[fbNativeBanner registerViewForTracking:self.adUIView
                 withRootViewController:self
                          iconView:self.adIconView];          
```

**For ImageView with clickableViews (No Media View)**

``` pre
/* registerViewForTracking using Image View with Click Tracker */
  [fbNativeBanner registerViewForTracking:self.adUIView
                   withRootViewController:self
                            iconImageView:self.imageView
                           clickableViews:@[self.adUIView]];     
```

**For ImageView with No clickableViews (No Media View)**

``` pre
/*registerViewForTracking using Image View without Click Tracker */
[fbNativeBanner registerViewForTracking:self.adUIView
                     withRootViewController:self
                              iconImageView:self.imageView];
```





## Unregister the View

When the ad is finished being displayed, the view must be unregistered.

``` pre
self.nativeAdResponse = nil; // It will handle ad unregister views
```





## Related Topics

- <a href="ios-sdk-integration-instructions.md" class="xref">iOS SDK
  Integration Instructions</a>
- <a href="show-banner-native-on-ios.md" class="xref">Show Banner Native
  on iOS</a>
- <a href="show-native-ads-on-ios.md" class="xref">Show Native Ads on
  iOS</a>






