# OMID Friendly Obstruction for Android

<div class="body">

<div class="section">

## Overview

The Open Measurement Software Development Kit (OM SDK) is designed to
facilitate third party viewability and verification measurement for ads
served to mobile app environments without requiring multiple Ad
Verification Service Providers (Measurement Provider) SDKs.

Open Measurement Interface Definition (OMID) is an open measurement API
provided by IAB. In short, it enables a publisher to get data on the
viewability of an ad within a mobile device. For more detailed on OMID
,visit the IAB site
<a href="https://iabtechlab.com/standards/open-measurement-sdk/"
class="xref" target="_blank">here</a>. 

The friendly obstructions are the views which OMID will exclude from all
viewability calculations when added to the OMID Session. When there is a
UI element which needs to be considered as a part of the ad, that can be
added as friendly obstructions to prevent it from counting towards
coverage of the ad. For example, any native elements such as a close
button, some logo text, or other objects which need to be considered as
a part of an ad (and not be counted for viewability measurement), should
be registered as friendly obstructions. This applies to any ancestor or
peer views in the view hierarchy .

The OMID API enables :

- Adding a friendly obstruction
- Removing a friendly obstruction
- Removing all friendly obstructions

The details of these APIs for Android platform for different AdUnits are
discussed below:

</div>

<div class="section">

## API Details : Android

**Adding a Friendly Obstruction**

To add a Friendly Obstruction for Banner, Interstitial and Video
AdUnits, pass the view as an argument to the API. 

**API for Adding Friendly Obstruction**

``` pre
public void addFriendlyObstruction(View view)
```

**Examples for Adding a Friendly Obstruction for AdUnits (Banner,
Interstitial, Video and Native)**

``` pre
//Banner
bav.addFriendlyObstruction(view);
//Interstitial
iav.addFriendlyObstruction(view);
//Video
videoAd.addFriendlyObstruction(view);
```

For Native AdUnits, pass the list of Friendly Obstruction views with
register tracking.

**Example for Adding a Friendly Obstruction for Native AdUnit**

``` pre
public static void registerTracking(final NativeAdResponse response, final View view, final NativeAdEventListener listener, final List<View> friendlyObstructionsList);
public static void registerTracking(final NativeAdResponse response, final View container, final List<View> views, final NativeAdEventListener listener, final List<View> friendlyObstructionsList)
```

</div>

<div class="section">

## Removing a Friendly Obstruction

<div class="note">

<span class="notetitle">Note:</span> Native AdUnits does not support
remove API

</div>

To remove a Friendly Obstruction for Banner, Interstitial and Video
AdUnits, pass the view as an argument to the API.  

**API for Removing a Friendly Obstruction**

``` pre
public void removeFriendlyObstruction(View view)
```

**Examples for Removing a Friendly Obstruction for AdUnits (Banner,
Interstitial and Video)**

``` pre
//Banner
bav.removeFriendlyObstruction(view);
//Interstitial
iav.removeFriendlyObstruction(view);
//Video
videoAd.removeFriendlyObstruction(view);
```

</div>

<div class="section">

## Removing All Friendly Obstructions

<div class="note">

<span class="notetitle">Note:</span> Native AdUnits does not support
remove API

</div>

**API for Removing All Friendly Obstruction**

``` pre
public void removeAllFriendlyObstructions()
```

**Examples for Removing All Friendly Obstruction for AdUnits (Banner,
Interstitial and Video)**

``` pre
//Banner
bav.removeAllFriendlyObstructions();
//Interstitial
iav.removeAllFriendlyObstructions();
//Video
videoAd.removeAllFriendlyObstructions();
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
