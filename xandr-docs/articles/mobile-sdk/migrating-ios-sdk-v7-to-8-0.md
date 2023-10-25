---
Title : Migrating iOS SDK v7 to 8.0
Description : Publishers with SDK v8.0, are required to initialize
---


# Migrating iOS SDK v7 to 8.0



Publishers with SDK v8.0, are required to initialize
Xandr SDK before making an ad request. When
using Xandr Mobile Ads SDK for iOS SDK v8 , the
init()  method must be called prior to any other SDK operations. 
Without this initialization no Ad request would go through and the SDK
would throw an exception.  For more information, see <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/ios---sdk-initialization--v8-0-.html"
class="xref" target="_blank">iOS - SDK Initialization (v8.0)</a>

``` pre
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
     
    // ideally initialize Xandr SDK inside AppDelegate before calling any other SDK methods
    [[XandrAd sharedInstance] initWithMemberID:1234 preCacheRequestObjects:YES completionHandler:^(BOOL success) {
            if(success){
                NSLog(@"XandrAd init Complete");
            }
    }];
    return YES;
    }
```



## Removed APIs and their alternatives

Some of the APIs listed below has been removed in the
Xandr SDK v8.0. If the below listed APIs are
being used, we request the APIs to be migrated to their equivalent or
alternative APIs.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000378f__entry__1"
class="entry colsep-1 rowsep-1">Class</th>
<th id="ID-0000378f__entry__2" class="entry colsep-1 rowsep-1">Removed
Property(s) and Method(s)</th>
<th id="ID-0000378f__entry__3"
class="entry colsep-1 rowsep-1">Alternative Property(s) and
Method(s)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td rowspan="5" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANBannerAdView<br />
<br />
<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUid </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> : adType</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.adType</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
 creativeId</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong>
: countImpressionOnAdReceived</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Method</strong> : -
(void)setAllowNativeDemand:(BOOL)nativeDemand
withRendererId:(NSInteger)rendererId;</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANBannerAdView.shouldAllowNativeDemand
<p>ANBannerAdView.nativeAdRendererId</p></td>
</tr>
<tr class="even row">
<td rowspan="3" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANInterstitialAd<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUid </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> : adType</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.adType</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
 creativeId</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="odd row">
<td rowspan="3" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANInstreamVideoAd<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUid </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> : adType</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.adType</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
 creativeId</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="even row">
<td rowspan="3" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANMultiAdRequest<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUid </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> : adType</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.adType</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
 creativeId</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="odd row">
<td rowspan="3" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANExternalUserId<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> : source</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANUserId.source</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :  userId</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANUserId.userId</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Method</strong> : - (nullable
instancetype)initWithSource:(ANExternalUserIdSource)source
userId:(nonnull NSString *)userId;</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000378f__entry__3"><pre
class="pre codeblock"><code>ANUserId.initWithANUserIdSource:(ANUserIdSource)source userId:(nonnull NSString *)userId;</code></pre></td>
</tr>
<tr class="even row">
<td rowspan="2" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANNativeAdRequest</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> : adType</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.adType</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANNativeAdResponse</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
creativeId</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="odd row">
<td rowspan="4" class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANSDKSettings<br />
<br />
<br />
</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
HTTPSEnabled</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">N/A </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUserIdArray</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">ANSDKSettings.userIdArray</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
 useAdnxsSimpleDomain</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">N/A</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong>
: countImpressionOn1PxRendering</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">N/A</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__1">ANTargetingParameters</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__2"><strong>Property</strong> :
externalUid</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000378f__entry__3">N/A</td>
</tr>
</tbody>
</table>






