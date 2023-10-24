---
Title : Mediate with iOS
Description : Mediation lets you sell ad impressions through multiple networks to
generate more revenue. This is initiated by your main (mediating) SDK
ms.custom : ios-sdk
---


# Mediate with iOS



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

This section lists the networks that we provide mediation adaptors for,
and the media types that each adaptor supports. For each adaptor, we
show whether it supports banners, interstitials, native, or all three.

<table class="table">
<thead class="thead">
<tr class="header row rowsep-1">
<th id="ID-00001fbc__entry__1" class="entry colsep-1">Adaptor</th>
<th id="ID-00001fbc__entry__2" class="entry colsep-1">Version</th>
<th id="ID-00001fbc__entry__3" class="entry colsep-1">Banner</th>
<th id="ID-00001fbc__entry__4" class="entry colsep-1">Interstitial</th>
<th id="ID-00001fbc__entry__5" class="entry colsep-1">Native</th>
<th id="ID-00001fbc__entry__6" class="entry colsep-1">Docs</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row rowsep-1">
<td class="entry colsep-1" headers="ID-00001fbc__entry__1">AdMob and
DFP</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__2">10.3.0</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__3">Yes</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__4">Yes</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__5">Yes</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__6"><a
href="https://firebase.google.com/docs/admob/ios/mediation" class="xref"
target="_blank">Google Mobile Ads - iOS Document</a></td>
</tr>
<tr class="even row rowsep-1">
<td class="entry colsep-1"
headers="ID-00001fbc__entry__1">SmartAdServer</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__2">7.17.1</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__3">Yes</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__4">Yes</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__5">No</td>
<td class="entry colsep-1" headers="ID-00001fbc__entry__6"><a
href="https://help.smartadserver.com/iOS/V6.6/" class="xref"
target="_blank">SmartAdServer Documentation</a></td>
</tr>
</tbody>
</table>





## Prerequisites

To mediate these networks, you'll need the following:

- A supported release of our SDK. For instructions on installing our
  SDK, see <a
  href="ios-sdk-integration.md"
  class="xref" target="_blank">Integrate with iOS</a>.
- The SDK of the network you want to mediate.
- A mediation adaptor that allows our SDK to communicate with the
  network's SDK. There are two ways to get our mediation adaptors:
  1.  You can install the binary builds of the adaptors that are
      included with our
      <a href="https://github.com/appnexus/mobile-sdk-ios/releases"
      class="xref" target="_blank">official releases</a>. You can also
      build the adaptors yourself from <a
      href="https://github.com/appnexus/mobile-sdk-ios/tree/master/mediation/mediatedviews"
      class="xref" target="_blank">source</a>.

  2.  If you use <a href="https://cocoapods.org/" class="xref"
      target="_blank">CocoaPods</a>, use the code below in your project
      directory's PodFile. You can include as many or as few adaptors as
      you like from this list:

      ``` pre
      platform :ios, '10.0'
       
      target 'SimpleBanner' do
        pod 'AppNexusSDK/GoogleAdapter'
        pod 'AppNexusSDK/SmartAdAdapter'
      end   
      ```





## Instantiating Mediation Adaptors

If you use the following adaptor, you need to initialize the adaptor's
SDK as early as possible in the lifecycle of the application. A perfect
place to do this is in the app delegate. The code samples below show how
to do this.

**AdMob Native Mediation  
  
**



<b>Note:</b> The instructions in this section
are only needed if you are doing native mediation. Mediating banners and
interstitials should not require any initialization code or further
work.



**To handle AdMob native ads, you need to create a native ad view that
inherits from GADNativeAdView:  
  
**

``` pre
#pragma mark - ANNativeAdRequestDelegate
- (void)adRequest:(ANNativeAdRequest *)request didReceiveResponse:(ANNativeAdResponse *)response
{
   ...
   if (self.nativeAdResponse.networkCode == ANNativeAdNetworkCodeAdMob) {
    // If ANNativeAdNetworkCodeAdMob, special Steps are there for creating a View which supports Google's MediaView Requirements.
        
    GADNativeAdView *nativeAdView = // Pass your Google Admob View(Step 2)for rendering Native Ad response ;
    ...
    // All the native components will be set as regular Ad  
    // Main Image is automatically added by GoogleSDK in the MediaView
   }else{
     ...
      // If not ANNativeAdNetworkCodeAdMob, create a regular View for all others.
   }
}
```

For SDK v5.3 and higher, you need to specify the GADIsADManagerApp key
in the app's info.plist with a boolean YES value.

``` pre
<key>GADIsAdManagerApp</key>
 <true/>
```

**Setting the Custom Keyword**

For passing the content URL to the Google SDK, the content url needs to
be passed as a custom keyword with the requester ad object
(BannerAdView, InterstitialAdView, NativeAdRequest). The key to be used
is `content_url`. Here is an example:

``` pre
// Add key content_url with a value (www.appnexus.com).
[adView addCustomKeywordWithKey:@"content_url" value:@"www.appnexus.com"];
```





## AdMob Banner Mediation  



<b>Note:</b> The instructions in this section
are only needed to load AdMob banner ads in iPads for the apps that
support multi-window capability.



  
To handle AdMob banner ads for the apps that support multi-window
capability in iPads, Xandr Mobile SDK provides a
public class `ANGoogleMediationSettings`. This class contains

- boolean method `setIPadMultiSceneSupport` that needs to be set as
  `YES`, if the app supports multi-screen in iPads

- getter method `getIPadMultiSceneSupport` to fetch the value set for
  the apps

  **  
    
  Objective C**

  ``` pre
  /**
   Set setIPadMultiScreenSupport to YES if the application will support multiscene in iPad.
   */
  + (void)setIPadMultiSceneSupport:(BOOL)setIPadMultiSceneSupport;
  + (BOOL)getIPadMultiSceneSupport;
  ```

  Additionally, publishers should load the ad from `viewDidAppear`
  method instead of `viewDidLoad` in the app.

**Example of Use**

**  
  
Objective C**

``` pre
/**
 Set setIPadMultiScreenSupport to YES if the application will support multiscene in iPad.
 */
[ANGoogleMediationSettings setIPadMultiSceneSupport:YES];
```





## Custom Mobile Networks

Microsoft Monetize has built-in support for a number
of popular mobile ad networks. If you want to mediate a network it
doesn't support, you must:

- Write a <a
  href="ios-custom-adaptors.md"
  class="xref" target="_blank">custom mediation adaptor</a> that lets
  our SDK receive events from the SDK you want to mediate.
- Set up a Custom Mobile Network using
  the instructions in Add a Network.





## Related Topics

- <a
  href="ios-sdk-integration.md"
  class="xref" target="_blank">Integrate with iOS</a>
- <a href="ios-custom-adaptors.md" class="xref">iOS Custom Adaptors</a>






