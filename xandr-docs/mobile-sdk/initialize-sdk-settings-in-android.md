# Initialize SDK Settings in Android

<div class="body">

<div class="section">

## Overview

SDKSettings in <span class="ph">Xandr</span> Mobile SDK is a API that
can be called to activate OMID, fetch User Agent and AAID (Google
Advertising ID) for devices. The initialization `init()` method passes
these parameters as arguments in the SDK. However, fetching of User
Agent involves instantiating a WebView to get the User Agent string on
the UI thread which contributes mainly for a delayed app start up apart
from retrieving and setting the AAID on a worker thread. To mitigate
this situation and to improve the app launch performance, an additional
flexible `init()`method is provided using which you can disable fetching
of User Agent and AAID for devices optionally.

</div>

<div class="section">

## Method

**SDKSettings.init**

An `init()` method that activates OMID, fetch User Agent and
AAID (Google Advertising ID) for devices.

``` pre
public static void init(activateOmid, fetchUserAgent, fetchAAID)
```

Additionally, below is the overloaded `init()` method that optionally
disable fetching of AAID and UserAgent. It requires enable/disable
booleans for `fetchUserAgent` and `fetchAAID` as arguments.

``` pre
public static void init(final boolean fetchUserAgent, final boolean fetchAAID)
```

</div>

<div class="section">

##  Example

``` pre
// Regular Init method
SDKSettings.init(this, new SDKSettings.InitListener() {
    @Override
    public void onInitFinished() {
        // Initialisation finished
    }
});
// Overloaded Init method with flexibility to enable / disable fetching of User Agent and AAID
SDKSettings.init(this, new SDKSettings.InitListener() {
    @Override
    public void onInitFinished() {
        // Initialisation finished
    }
}, false, true);
//Boolean values false/true are optional and as per usage
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-code-samples.html" class="link">Android SDK Code
Samples</a>

</div>

</div>

</div>
