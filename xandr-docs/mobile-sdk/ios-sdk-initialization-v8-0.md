# iOS SDK Initialization v8.0

<div class="body">

Publishers with iOS SDK v8.0, are required to initialize
<span class="ph">Xandr</span> SDK before making an ad request. When
using <span class="ph">Xandr</span> Mobile Ads SDK for iOS SDK v8, the
init() method must be called prior to any other SDK operations. Without
this initialization no Ad request would go through and the SDK would
throw an exception.

<div class="section">

## API Signature

The API signature for initializing the SDK is exposed using XandrAd. For
Example:

``` pre
/**
 * Initialize Xandr Ads SDK
 * @param memberId for initializing the Xandr SDK
 * @param preCacheRequestObjects provides flexibility to pre-cache content, such as fetch userAgent, fetch IDFA and activate OMID. Pre-caching will make future ad requests faster.
 * @param completionHandler The completion handler to call when the init request is complete
 * */
- (void)initWithMemberID:(NSInteger) memberId
        preCacheRequestObjects:(BOOL)preCacheRequestObjects
        completionHandler: (XandrAdInitCompletion _Nullable)completionHandler;
```

</div>

<div class="section">

## Examples:

**Objective-C**

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

**Swift**

``` pre
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    var window: UIWindow?
 
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 
        // ideally initialize Xandr SDK inside AppDelegate before calling any other SDK methods
        XandrAd.sharedInstance().initWithMemberID(1234, preCacheRequestObjects: true) { initComplete in
            if(initComplete){
                print("XandrAd init Complete")
            }
        }
        return true
    }
}
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-integration.html" class="link">iOS SDK Integration</a>

</div>

</div>

</div>
