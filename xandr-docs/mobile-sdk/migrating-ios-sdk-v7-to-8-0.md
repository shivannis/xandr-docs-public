# Migrating iOS SDK v7 to 8.0

<div class="body">

Publishers with SDK v8.0, are required to initialize
<span class="ph">Xandr</span> SDK before making an ad request. When
using <span class="ph">Xandr</span> Mobile Ads SDK for iOS SDK v8 , the
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

<div class="section">

## Removed APIs and their alternatives

Some of the APIs listed below has been removed in the
<span class="ph">Xandr</span> SDK v8.0. If the below listed APIs are
being used, we request the APIs to be migrated to their equivalent or
alternative APIs.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d31430e73" class="entry cellborder"
style="vertical-align: top">Class</th>
<th id="d31430e76" class="entry cellborder"
style="vertical-align: top">Removed Property(s) and Method(s)</th>
<th id="d31430e79" class="entry cellborder"
style="vertical-align: top">Alternative Property(s) and Method(s)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td rowspan="5" class="entry cellborder"
headers="d31430e73 ">ANBannerAdView    </td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : externalUid </td>
<td class="entry cellborder"
headers="d31430e79 ">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : adType</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.adType</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :  creativeId</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong>
: countImpressionOnAdReceived</td>
<td class="entry cellborder"
headers="d31430e79 ">N/A</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Method</strong> : -
(void)setAllowNativeDemand:(BOOL)nativeDemand
withRendererId:(NSInteger)rendererId;</td>
<td class="entry cellborder"
headers="d31430e79 ">ANBannerAdView.shouldAllowNativeDemand
<p>ANBannerAdView.nativeAdRendererId</p></td>
</tr>
<tr class="even ">
<td rowspan="3" class="entry cellborder"
headers="d31430e73 ">ANInterstitialAd  </td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : externalUid </td>
<td class="entry cellborder"
headers="d31430e79 ">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : adType</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.adType</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :  creativeId</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="odd ">
<td rowspan="3" class="entry cellborder"
headers="d31430e73 ">ANInstreamVideoAd  </td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : externalUid </td>
<td class="entry cellborder"
headers="d31430e79 ">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : adType</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.adType</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :  creativeId</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="even ">
<td rowspan="3" class="entry cellborder"
headers="d31430e73 ">ANMultiAdRequest  </td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : externalUid </td>
<td class="entry cellborder"
headers="d31430e79 ">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : adType</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.adType</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :  creativeId</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="odd ">
<td rowspan="3" class="entry cellborder"
headers="d31430e73 ">ANExternalUserId  </td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : source</td>
<td class="entry cellborder"
headers="d31430e79 ">ANUserId.source</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :  userId</td>
<td class="entry cellborder"
headers="d31430e79 ">ANUserId.userId</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Method</strong> : - (nullable
instancetype)initWithSource:(ANExternalUserIdSource)source
userId:(nonnull NSString *)userId;</td>
<td class="entry cellborder"
headers="d31430e79 "><pre class="pre codeblock"><code>ANUserId.initWithANUserIdSource:(ANUserIdSource)source userId:(nonnull NSString *)userId;</code></pre></td>
</tr>
<tr class="even ">
<td rowspan="2" class="entry cellborder"
headers="d31430e73 ">ANNativeAdRequest</td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : adType</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.adType</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : externalUid</td>
<td class="entry cellborder"
headers="d31430e79 ">ANSDKSettings.publisherUserId</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e73 ">ANNativeAdResponse</td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : creativeId</td>
<td class="entry cellborder"
headers="d31430e79 ">ANAdResponseInfo.creativeId</td>
</tr>
<tr class="odd ">
<td rowspan="4" class="entry cellborder"
headers="d31430e73 ">ANSDKSettings   </td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : HTTPSEnabled</td>
<td class="entry cellborder"
headers="d31430e79 ">N/A </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :
externalUserIdArray</td>
<td class="entry cellborder"
headers="d31430e79 ">ANSDKSettings.userIdArray</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> :
 useAdnxsSimpleDomain</td>
<td class="entry cellborder"
headers="d31430e79 ">N/A</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong>
: countImpressionOn1PxRendering</td>
<td class="entry cellborder"
headers="d31430e79 ">N/A</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d31430e73 ">ANTargetingParameters</td>
<td class="entry cellborder"
headers="d31430e76 "><strong>Property</strong> : externalUid</td>
<td class="entry cellborder"
headers="d31430e79 ">N/A</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** <a href="ios-sdk.html" class="link">iOS SDK</a>

</div>

</div>

</div>
