---
Title : Initialize SDK Settings in iOS
Description : SDKSettings in Xandr Mobile SDK contains the
method `optionalSDKInitialization()`, which allows you to pre-configure
common settings such as checking the presence of the User Agent during
initialization, preparing a WebView etc. The completion block of this
ms.custom : android-ios
---


# Initialize SDK Settings in iOS



SDKSettings in Xandr Mobile SDK contains the
method `optionalSDKInitialization()`, which allows you to pre-configure
common settings such as checking the presence of the User Agent during
initialization, preparing a WebView etc. The completion block of this
method returns “true” if SDK initialization completes successfully and
“false” if it fails.



## Method

**optionalSDKInitialization**

Checks the availability of User Agent and returns a Boolean value
accordingly during SDK initialization.

``` pre
- (void) optionalSDKInitialization:(sdkInitCompletion _Nullable)success
```





##  Example

``` pre
[[ANSDKSettings sharedInstance] optionalSDKInitialization:^(BOOL isSDKInitialized) {
 if(isSDKInitialized){
      NSLog(@"SDK Initialized");
    }else{
      NSLog(@"SDK did not initialize");
    }
  }];
```






