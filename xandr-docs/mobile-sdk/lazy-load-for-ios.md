# Lazy Load for iOS

<div class="body">

The Lazy Load feature provides a new API call to manage when all
trackers are fired, including third-party trackers and MobileSDK
trackers.  It also optimizes the Banner AdUnit by allowing the host app
to load its webview only when it is needed and just before it is
needed.  When this feature is enabled, the traditional **loadAd** method
is followed later by a second method, **loadLazyAd**.

<div class="section">

## Firing Trackers

The Lazy Load feature is developed to fire all Mobile SDK and
third-party trackers at the same instance, ensuring an alignment between
both the metrics can be maintained. This feature splits the AdUnit load
process into two steps as **loadAd** and **loadLazyAd**. 

The high-level lifecycle of an AdUnit consists of two stages as **load**
and **display**.  This feature divides the **load** stage into two
further steps as **loadAd** and **loadLazyAd**, followed by **display**
stage. Having said that, a banner webview can be attached to the
**display**, even before **loadAd** is called.  However the **display**
stage is a convenience provided by the platform and is separate from the
**load** portion of the AdUnit lifecycle.

The second step **loadLazyAd** in **load** stage accomplishes two tasks
:

- Completes the load of the AdUnit by creating and loading the webview
  which fires the third-party trackers in the creative.
- Fires the MobileSDK trackers.

</div>

<div class="section">

## Managing CPU Consumption 

The Lazy Load feature causes the initial loadAd to return a lightweight
AdUnit and allows the contents to be loaded later. This functionality
reduces the load time for the AdUnit by deferring the creation and
configuration of the internal webview to a later point. By delaying the
webview load, it reduces the consumption of additional CPU time of
loading the ad object returned in the Universal Tag in the cases where
the AdUnit is unused.

Additionally, it allows the host app to choose the optimal moment to
fire trackers and consume CPU time to load the webview, ideally at the
best possible moment before the ad is displayed to the end-user (or is
queued for display with a high probability).

</div>

<div class="section">

## Scope of Lazy Load

The scope of this feature is limited to Banner AdUnits that display
banner Media Types.  It does not apply to any other AdUnit, including
instream video and native, nor does it apply to Media Types returned by
a multi-format Banner AdUnit other than banner including banner-video
(outstream video) and banner-native. 

</div>

<div class="section">

## Properties

Lazy Load enhances the MobileSDK public API with a property which
indicates whether the feature is enabled or not and if not enable the
same.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d32034e135" class="entry nocellnoborder"
style="vertical-align: top">Property</th>
<th id="d32034e138" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d32034e141" class="entry nocellnoborder"
style="vertical-align: top">Attribute</th>
<th id="d32034e144" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d32034e135 "><code class="ph codeph">enableLazyLoad</code></td>
<td class="entry -nocellborder"
headers="d32034e138 ">BOOL</td>
<td class="entry -nocellborder"
headers="d32034e141 ">readwrite</td>
<td class="entry cellborder"
headers="d32034e144 ">Indicates if Lazy Load is enabled and if not,
enable the same.</td>
</tr>
</tbody>
</table>

</div>

``` pre
@property (nonatomic, readwrite)  BOOL  enableLazyLoad
```

</div>

<div class="section">

## Method

**loadLazyAd**

Loads the webview of a lazy-loaded AdUnit and fires all trackers,
including third-party and MobileSDK trackers. 

``` pre
(BOOL) loadLazyAd;
```

</div>

<div class="section">

## Delegate Callbacks 

**lazyAdDidReceiveAd**

**lazyAdDidReceiveAd** is fired when the **loadAd** method successfully
returns a lazy loaded AdUnit, that is, an AdUnit with an unallocated
webview.  All other features of the AdUnit instance are available,
including a populated instance of **ANAdResponseInfo**. If **loadAd**
fails, then the same callbacks are used as for an AdUnit that was not
lazy-loaded.

``` pre
(void)lazyAdDidReceiveAd:(nonnull id)ad;
```

</div>

<div class="section">

## Example - Objective C

``` pre
@property  (nonatomic, strong, nullable)  ANBannerAdView  *lazyBanner;
 
// ...
 
- (void)viewDidLoad
{
    NSString  *placementID  = @"1234567";
      
    CGRect  rect  = CGRectMake(...);  //Set location on display.
    CGSize  size  = CGSizeMake(...);  //Set size of AdUnit.
 
      
    // Create and configure banner ad view; attach to view hierarchy.
    //
    ANBannerAdView  *banner  = [ANBannerAdView adViewWithFrame:rect placementId:placementID adSize:size];
 
    self.lazyBanner = banner;
 
    self.lazyBanner.delegate = self;
    self.lazyBanner.enableLazyLoad = YES;
 
    [self.view addSubview:self.lazyBanner];
 
 
    // Begin the load of AdUnit.
    //
    [self.lazyBanner loadAd];
}
 
// ...
 
- (void)readyToDisplayLazyBanner
{
    // Complete the load of AdUnit.
    //
    [self.lazyBanner loadLazyAd];
}
 
 
 
//
// ANAdProtocol delegate methods.
//
 
- (void)adDidReceiveAd:(id)ad
{
    // Optional processing when lazy banner webview completes loading.
}
 
- (void)lazyAdDidReceiveAd:(id)ad
{
    // Optional Processing when lazy banner is received.
}
```

</div>

<div class="section">

## Example - Swift

``` pre
import UIKit
import AppNexusSDK
class BannerAdViewController: UIViewController , ANBannerAdViewDelegate{
    var banner: ANBannerAdView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Banner Ad"
        let adWidth: Int = 300
        let adHeight: Int = 250
        let adID = ""
        
        // We want to center our ad on the screen.
        let screenRect: CGRect = UIScreen.main.bounds
        let originX: CGFloat = (screenRect.size.width / 2) - CGFloat((adWidth / 2))
        let originY: CGFloat = (screenRect.size.height / 2) - CGFloat((adHeight / 2))
        // Needed for when we create our ad view.
        
        let rect = CGRect(origin: CGPoint(x: originX,y :originY), size: CGSize(width: adWidth, height: adHeight))
        
        let size = CGSize(width: adWidth, height: adHeight)
        
        // Make a banner ad view.
        self.banner = ANBannerAdView(frame: rect, placementId: adID, adSize: size)
        self.banner?.rootViewController = self
        self.banner?.delegate = self
        self.banner?.enableLazyLoad = true
        // Load an ad.
        self.banner?.loadAd()
        
    }
    
    func adDidReceiveAd(_ ad: Any) {
        print("Ad did receive ad")
        view.addSubview(self.banner!)
    }
  
    func ad(_ ad: Any, requestFailedWithError error: Error) {
        print("Ad request Failed With Error")
    }
    func lazyAdDidReceiveAd(_ ad: Any) {
        self.banner?.loadLazyAd()
    }
   
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
