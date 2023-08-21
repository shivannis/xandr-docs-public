# Lazy Load for Android

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
both the metrics can be maintained. 

The high-level lifecycle of an AdUnit consists of two stages
as **load** and **display**.  This feature divides the **load** stage
into two further steps as **loadAd** and **loadLazyAd**, followed
by **display** stage. Having said that, a banner webview can be attached
to the **display**, even before **loadAd** is called.  However,
the **display** stage is a convenience provided by the platform and is
separate from the **load** portion of the AdUnit lifecycle. 

The second step **loadLazyAd** in load stage accomplishes two tasks :

- Completes the load of the AdUnit by creating and loading the webview
  which fires the third-party trackers in the creative.
- Fires the MobileSDK trackers. 

</div>

<div class="section">

## Managing CPU Consumption 

The Lazy Load feature causes the initial loadAd to return a lightweight
AdUnit and allows the contents to be loaded later. This functionality
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

Lazy Load enhances the MobileSDK public API with a property (a getter
method) which indicates whether the feature is enabled or not. 

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d27168e126" class="entry nocellnoborder"
style="vertical-align: top">Property</th>
<th id="d27168e129" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d27168e132" class="entry nocellnoborder"
style="vertical-align: top">Attribute</th>
<th id="d27168e135" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d27168e126 "><code
class="ph codeph">isLazyLoadEnabled</code></td>
<td class="entry -nocellborder"
headers="d27168e129 ">boolean</td>
<td class="entry -nocellborder"
headers="d27168e132 ">--</td>
<td class="entry cellborder"
headers="d27168e135 ">Indicates if Lazy Load feature is enabled</td>
</tr>
</tbody>
</table>

</div>

``` pre
public boolean isLazyLoadEnabled;  // getter
```

</div>

<div class="section">

## Methods 

**enableLazyLoad**

Setter method which enables the Lazy Load feature.

``` pre
public void enableLazyLoad();  // setter
```

**loadLazyAd**

Loads the webview of a lazy loaded AdUnit and fires all trackers,
including third-party and MobileSDK trackers. 

``` pre
public void loadLazyAd()
```

</div>

<div class="section">

## Listener Callbacks 

**onLazyAdLoaded**

**onLazyAdLoaded** is fired when the **loadAd** method successfully
returns a lazy loaded AdUnit, that is an AdUnit with an unallocated
webview.  All other features of the AdUnit instance are available,
including a populated instance of **ANAdResponseInfo**. If **loadAd**
fails, then the same callbacks are used as for an AdUnit that was not
lazy loaded.

``` pre
public void onLazyAdLoaded(AdView adView)
```

</div>

<div class="section">

## Example

``` pre
override fun onCreate(savedInstanceState: Bundle?)
{
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_banner_lazy_load)
 
        banner = BannerAdView(this)
        banner.placementID = “1234567”
        banner.setAdSize(300, 250)
 
        banner.enableLazyLoad()
        banner.loadAd()
 }
 
// AdListener Callback method
override fun onLazyAdLoaded(adView: AdView) {
        // Ad is loaded Lazily, Further processing goes here.
}
 
 
// Call this method as per the need, to load the webview content.
banner.loadLazyAd()
 
 
// AdListener Callback method
override fun onAdLoaded(adView: AdView) {
    // Ad loaded, after loadLazyAd() was invoked.
}
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
