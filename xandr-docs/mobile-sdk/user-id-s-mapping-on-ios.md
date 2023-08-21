# User ID(s) Mapping on iOS

<div class="body">

<div class="note">

<span class="notetitle">Note:</span> This offering is currently in Alpha
and is subject to changes or deprecation without notice.

</div>

<div class="section">

## Overview

<span class="ph">Xandr</span> offers you the option of sending
**Publisher First party ID** and **User ID(s)** from third party sources
in ad requests. They are global settings and it is sufficient to set the
User ID(s) once per app session as these values would be used in all
consecutive ad requests in the same session. Please note that,
<span class="ph">Xandr</span> does not store these values across
different app sessions.

</div>

<div class="section">

## Mobile SDK Structure

**Publisher First Party ID**

<div class="note">

<span class="notetitle">Note:</span> Deprecation Notice

**`The` `externalUid`** property
of **`ANBannerAdView`**, **`InterstitialAdView`**, **`ANNativeAdRequest`** and **`ANInstreamVideoAd`** class
is now deprecated. You can use **`publisherUserId`** property described
below in **`ANSDKSettings`** class instead. The deprecated methods will
be removed in SDK v8.0.

</div>

You can set **Publisher First Party ID** using
the `publisherUserId` property of  `ANSDKSettings` in MobileSDK API.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d22786e123" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d22786e126" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d22786e129" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d22786e132" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d22786e123 "><code
class="ph codeph">publisherUserId</code></td>
<td class="entry cellborder"
headers="d22786e126 "><code class="ph codeph">NSString</code></td>
<td class="entry cellborder"
headers="d22786e129 ">readwrite</td>
<td class="entry cellborder"
headers="d22786e132 ">Specifies a string that corresponds to the
Publisher User ID for current application user.</td>
</tr>
</tbody>
</table>

</div>

**IDFV as Publisher First Party ID**

Due to introduction of App Tracking Transparency (ATT) changes in iOS
14.5 and above, <span class="ph">Xandr</span> Mobile SDK offers the
publishers to use **Identifier for Vendors (IDFV) **of the device in
cases where there is no in-house **Publisher First Party
ID** and **Identifier for Advertisers (IDFA)** is available.
This feature facilitates the publishers to pass IDFV in the ad requests
automatically whenever both of the Publisher First Party ID and IDFA is
absent. This feature is enabled by default and if the publishers want to
turn it off, they can use `disableIDFVUsage` property
of  `ANSDKSettings` in MobileSDK API.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d22786e203" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d22786e206" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d22786e209" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d22786e212" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d22786e203 "><code
class="ph codeph">disableIDFVUsage</code></td>
<td class="entry cellborder"
headers="d22786e206 "><code class="ph codeph">BOOL</code></td>
<td class="entry cellborder"
headers="d22786e209 ">readwrite</td>
<td class="entry cellborder"
headers="d22786e212 ">Specifies a boolean value which exclude the IDFV
field in ad request. Default value of the property is set
to <strong>NO </strong>and IDFV will be used in cases where both IDFV
and Publisher First Party ID are not present for a given ad
request.</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
An AppNexus disableIDFVUsage  is a boolean value which exclude the IDFV field in ad request. Default value of disableIDFVUsage is set to NO and IDFV will be used in cases where IDFV and Publisher First Party ID is not present.
*/
@property (nonatomic, readwrite) BOOL disableIDFVUsage;
```

  **User ID**

<div class="note">

<span class="notetitle">Note:</span> Deprecation Notice

The
 property \`**ANSDKSettings.externalUserIdArray**\` and \`**ANExternalUserId**\` class
are now deprecated and will be removed in SDK v8.0. You can use the
equivalent
property \`**ANSDKSettings.userIdArray**\`  and \`**ANUserId**\` class
described below instead as a replacement.

</div>

<span class="ph">Xandr</span> supports User ID(s) from the below
external sources:

- Criteo
- The Trade Desk
- NetID
- LiveRamp 
- UID 2.0
- Publisher Provided Id / PPID (publishers can register their own source
  via API and can pass the user id)

You can set **User ID** by

- creating an array of **ANUserId** objects, and
- assigning the array of objects to the **userId`Array`** property
  of `ANSDKSettings `in MobileSDK API  

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d22786e341" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d22786e344" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d22786e347" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d22786e350" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d22786e341 "><code class="ph codeph">userIdArray</code></td>
<td class="entry cellborder"
headers="d22786e344 "><code class="ph codeph">NSArray</code></td>
<td class="entry cellborder"
headers="d22786e347 ">readwrite</td>
<td class="entry cellborder"
headers="d22786e350 ">Specifies a dictionary containing objects that
hold User ID parameters.</td>
</tr>
</tbody>
</table>

</div>

``` pre
// In ANSDKSettings.h: 
/**
 A Dictionary containing objects that hold UserId parameters.
 */ 
@property (nonatomic, readwrite, strong, nullable) NSArray<ANUserId *>  *userIdArray ;
```

``` pre
// In ANUserId.h
 
/*
 *  Supported Third Party ID Sources
 * */
typedef NS_ENUM(NSUInteger, ANUserIdSource) {
    ANUserIdSourceLiveRamp,
    ANUserIdSourceNetId,
    ANUserIdSourceCriteo,
    ANUserIdSourceTheTradeDesk,
    ANUserIdSourceUID2
};
 
 
 
/**
 Defines the User Id Object from an Extended Third Party Source
 */
@interface ANUserId : NSObject
 
/**
 Source of the User Id
 */
@property (nonatomic, readwrite, strong, nonnull) NSString *source;
 
/**
 The User Id String
 */
@property (nonatomic, readwrite, strong, nonnull) NSString *userId;
 
 
- (nullable instancetype)initWithSource:(ANUserIdSource)source userId:(nonnull NSString *)userId; 
- (nullable instancetype)initWithStringSource:(nonnull NSString *)source userId:(nonnull NSString *)userId isFirstParytId:(BOOL)firstParytId;   
@end
```

</div>

<div class="section">

## Examples of Use

``` pre
// iOS: ObjC to show a banner ad
  
#import "MyViewController.h"
#import "ANBannerAdView.h"
@interface MyViewController ()
@property (nonatomic, strong)  ANBannerAdView *banner;
@end
  
@implementation MyViewController
ANBannerAdView *banner = nil;
  
- (void) viewDidLoad
  
{
     
    // User Id from External Third Party Sources     
NSMutableArray<ANUserId *>  *userIdArray  = [[NSMutableArray<ANUserId *> alloc] init];
[userIdArray addObject:[[ANUserId alloc] initWithANUserIdSource:ANUserIdSourceNetId userId:@"userid-netid-foobar" ]];
[userIdArray addObject:[[ANUserId alloc] initWithANUserIdSource:ANUserIdSourceTheTradeDesk userId:@"userid-ttd-foobar" ]];
[userIdArray addObject:[[ANUserId alloc] initWithANUserIdSource:ANUserIdSourceUID2 userId:@"userid-uid2-foobar" ]];
[userIdArray addObject:[[ANUserId alloc] initWithANUserIdSource:ANUserIdSourceCriteo userId:@"userid-Criteo-foobar"]];
[userIdArray addObject:[[ANUserId alloc] initWithANUserIdSource:ANUserIdSourceLiveRamp userId:@"userid-liveramp-foobar" ]]; 
[userIdArray addObject:[[ANUserId alloc] initWithStringSource:@“Generic Source” userId:@“userid-generic-foobar” isFirstParytId:true]];    
ANSDKSettings.sharedInstance.userIdArray = userIdArray;
 
    // Publisher User Id
    ANSDKSettings.sharedInstance.publisherUserId = @"foobar-publisherfirstpartyid";      
        // IDFV as Publisher User Id
        ANSDKSettings.sharedInstance.disableIDFVUsage = NO;     
        // Load Banner Ad
    CGSize  size = CGSizeMake(300, 250); 
    // NOTE  Setting size is necessary only for fetching banner and video ad objects.
    // This field is ignored when the placement returns a native ad object.
    CGRect someRect = CGRectMake(...);
    // Create the banner ad view here, but wait until the delegate fires before displaying.
  
    self.banner = [ANBannerAdView adViewWithFrame:someRect placementId:@"13572468" adSize:size];
    //... Needed Setup
    // Load an ad!
    [self.banner loadAd];
  
}
  
@end
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
