# Initialize SDK Settings in iOS

<div class="body">

SDKSettings in <span class="ph">Xandr</span> Mobile SDK contains the
method `optionalSDKInitialization()`, which allows you to pre-configure
common settings such as checking the presence of the User Agent during
initialization, preparing a WebView etc. The completion block of this
method returns “true” if SDK initialization completes successfully and
“false” if it fails.

<div class="section">

## Method

**optionalSDKInitialization**

Checks the availability of User Agent and returns a Boolean value
accordingly during SDK initialization.

``` pre
- (void) optionalSDKInitialization:(sdkInitCompletion _Nullable)success
```

</div>

<div class="section">

##  Example

``` pre
[[ANSDKSettings sharedInstance] optionalSDKInitialization:^(BOOL isSDKInitialized) {
 if(isSDKInitialized){
      NSLog(@"SDK Initialized");
    }else{
      NSLog(@"SDK did not initialize");
    }
  }];
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
