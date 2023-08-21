# Show High Impact Media Type on Android

<div class="body">

<div class="p">

<div id="ID-000007ff__note_shz_n2s_lwb" class="note">

<span class="notetitle">Note:</span> This feature is available in Xandr
Mobile SDK version 8.1 for Android.

</div>

</div>

<div class="section">

## Overview

This page has instructions and code samples for showing a high impact
media as banner ad view in Xandr Mobile SDK for Android.

</div>

<div class="section">

## Methods

**setAllowHighImpactDemand**

Setter method that defines whether a high impact media can serve on the
Ad object.

``` pre
/**
     * Sets whether or not High Impact media(AppNexus Media Type:11) can serve on this Ad object.
     * This overrides the value set in console.
     *
     * @param enabled whether to enable High Impact media or not. default is false
     */
    public void setAllowHighImpactDemand(boolean enabled) {
        Clog.d(Clog.publicFunctionsLogTag, Clog.getString(
                R.string.set_allow_high_impact, enabled));
        requestParameters.setHighImpactEnabled(enabled);
    }
```

**getAllowHighImpactDemand**

Getter method that indicates whether high impact media is enabled on the
ad view or not.

``` pre
/**
     * Check whether High Impact media is enabled on this ad view
     *
     * @return If true, High Impact Ad can be loaded on the ad view.
     */
    public boolean getAllowHighImpactDemand() {
        return requestParameters.isHighImpactEnabled();
    }
```

</div>

<div class="section">

## Example

``` pre
// Allow High Impact Media for BannerAdView
bannerAdView.setAllowHighImpactDemand(true);
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-ad-units.html" class="link">Android SDK Ad
Units</a>

</div>

</div>

</div>
