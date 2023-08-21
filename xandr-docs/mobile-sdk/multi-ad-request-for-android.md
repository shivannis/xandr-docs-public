# Multi Ad Request for Android

<div class="body">

<div class="section">

## Overview

This page has instructions and code samples for initiating and
configuring a `ANMultiAdRequest.` `ANMultiAdRequest` enables the user
to use a single universal tag (UTv3) request to initiate multiple
auctions, the results of which are returned in a single server response.

`ANMultiAdRequest` is a concrete class and does not implement any
interface. The class adopts the type and behavior of
different `AdUnits` (<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banners-on-android.html"
class="xref" target="_blank">banner</a>, <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-native-ads-on-android.html"
class="xref" target="_blank">native</a>, <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-instream-video-ads-on-android.html"
class="xref" target="_blank">video</a>, etc.) using the same
specifications of each `AdUnit` type. Custom keywords can be assigned to
a `ANMultiAdRequest` and will be inherited by the contained `AdUnits`.
An `ANMultiAdRequest` has a public facing listener which observes for
`onMultiAdRequestCompleted()` or `onMultiAdRequestFailed()`.

</div>

<div class="section">

## Initialization

Users can select from one of two initialization methods. Both require
a memberId and a `multiAdRequestListener` object as arguments in order
for `ANMultiAdRequest` to be initialized.
The memberId and `multiAdRequestListener` may only be set once per
instance. An optional <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/publisher-id-for-android.html"
class="xref" target="_blank">Publisher ID parameter</a> can be set at
this time. All `AdUnits` must contain the same `memberId` as the one
passed in the initialization
process. `AdUnits` containing `placementIds` will use the
associated `memberId` of that placement. Upon successful initialization,
a `ANMultiAdRequest` class instance is returned.

<div class="note">

<span class="notetitle">Note:</span> The `MultiAdRequest` instance will
reject `AdUnits` with `memberId` values different from their own.

</div>

</div>

**Initialization Methods**

**Initialize with a list of AdUnits and call the load method**

Enables initialization and calls the `load` method with a single line of
code. The instance is initialized with a list of one or more `AdUnits`.
If a failure occurs during the `load` lifecycle, the class is not
initialized and a nil object is returned. When a
successful `load` process occurs, a class instance is returned.

**Without Publisher ID**

``` pre
anMultiAdRequest = new ANMultiAdRequest(context, memberId, multiAdRequestListener, loadOnInit, ads);
```

**With Publisher ID**

``` pre
public ANMultiAdRequest(Context context, int memberId, int publisherId, MultiAdRequestListener multiAdRequestListener, boolean loadOnInit, Ad...ads)
```

**Simple Initialization**

This basic initialization returns an instance of the class but takes no
action. Configuration can be completed by using class properties and
methods. The initialized delegate is set on the `AdUnits` as they are
added.

**Without Publisher ID**

``` pre
anMultiAdRequest = new ANMultiAdRequest(context, memberId, multiAdRequestListener);
```

**With Publisher ID**

``` pre
public ANMultiAdRequest(Context context, int memberId, int publisherId, MultiAdRequestListener multiAdRequestListener)
```

<div class="section">

## Arguments

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d622e223" class="entry cellborder"
style="vertical-align: top">Variable</th>
<th id="d622e226" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d622e229" class="entry cellborder"
style="vertical-align: top">Scope</th>
<th id="d622e232" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d622e223 "><code class="ph codeph">memberId</code></td>
<td class="entry cellborder"
headers="d622e226 ">int</td>
<td class="entry cellborder"
headers="d622e229 ">Required</td>
<td class="entry cellborder"
headers="d622e232 ">A member id. Any <code
class="ph codeph">AdUnits</code> contained within the <code
class="ph codeph">ANMultiAdRequest</code> must have identical <code
class="ph codeph">memberIds</code> or the <code
class="ph codeph">ANMultiAdRequest</code> will be rejected. The <code
class="ph codeph">memberId</code> can also be attained by passing in a
<code class="ph codeph">placementId</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d622e223 "><code
class="ph codeph">multiAdRequestListener</code></td>
<td class="entry cellborder"
headers="d622e226 ">MultiAdRequestListener</td>
<td class="entry cellborder"
headers="d622e229 ">Required</td>
<td class="entry cellborder"
headers="d622e232 ">Used to share information about the response whether
it is success or failure.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d622e223 "><code class="ph codeph">loadOnInit</code></td>
<td class="entry cellborder"
headers="d622e226 ">boolean</td>
<td class="entry cellborder"
headers="d622e229 ">Optional</td>
<td class="entry cellborder"
headers="d622e232 ">Boolean value to decide whether to load the <code
class="ph codeph">ANMultiAdRequest</code> during its
initialization.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d622e223 "><code class="ph codeph">ads</code></td>
<td class="entry cellborder"
headers="d622e226 ">Ad</td>
<td class="entry cellborder"
headers="d622e229 ">Optional</td>
<td class="entry cellborder"
headers="d622e232 ">Variable-length argument for taking in a list of
Ads.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Configuration

All `ANMultiAdRequest` configuration properties and methods are the same
in type and usage as those used by `AdUnits`. If properties are set in
the `ANMultiAdRequest`, the `AdUnits` inherit those properties. They are
not permanent, once the `ANMultiAdRequest` has completed its
lifecycle `AdUnits` revert back to their previous property values.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d622e366" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d622e369" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d622e372" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d622e366 "><code class="ph codeph">memberId</code></td>
<td class="entry cellborder"
headers="d622e369 ">int</td>
<td class="entry cellborder"
headers="d622e372 ">A member id. Any <code
class="ph codeph">AdUnits</code> contained within the <code
class="ph codeph">ANMultiAdRequest</code> must have identical <code
class="ph codeph">memberIds</code> or the <code
class="ph codeph">ANMultiAdRequest</code> will be rejected by <span
class="ph">Xandr</span>'s Impression Bus. The <code
class="ph codeph">memberId</code> can also be attained by passing in
a <code class="ph codeph">placementId</code>.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d622e366 "><code class="ph codeph">age</code></td>
<td class="entry cellborder"
headers="d622e369 ">String</td>
<td class="entry cellborder"
headers="d622e372 ">The user's age.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d622e366 "><code class="ph codeph">gender</code></td>
<td class="entry cellborder"
headers="d622e369 ">AdView.GENDER</td>
<td class="entry cellborder"
headers="d622e372 ">The user's gender.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d622e366 "><code class="ph codeph">externalUid</code></td>
<td class="entry cellborder"
headers="d622e369 ">String</td>
<td class="entry cellborder"
headers="d622e372 ">User generated id that can be mapped with <span
class="ph">Xandr</span>'s internal ids and that mapping shared
amongst the members of clients with multiple seats.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d622e366 "><code class="ph codeph">customKeyword</code></td>
<td class="entry cellborder"
headers="d622e369 ">ArrayList&lt;Pair&lt;String, String&gt;&gt;</td>
<td class="entry cellborder"
headers="d622e372 ">Custom keywords applied to the <code
class="ph codeph">ANMultiAdRequest</code>. These keywords will be
inherited by the attached AdUnits. This list can be supplemented within
each <code class="ph codeph">AdUnit</code> with additional custom
keywords.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d622e366 "><code class="ph codeph">AdUnit</code></td>
<td class="entry cellborder"
headers="d622e369 ">Ad</td>
<td class="entry cellborder"
headers="d622e372 ">An AdUnit item to add to the <code
class="ph codeph">ANMultiAdRequest</code>.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## ANMultiAdRequaest Methods

**load()**

Loads all contained `AdUnits` by sending a `multi-tag UTv3` request to
<span class="ph">Xandr</span>'s Impression Bus. For
each `ANMultiAdRequest` instance, only one load may be active at a
time.  Loads are complete when one of the `Listner` methods is fired.
Returns `true` on success and `false` on failure. 

**load**

``` pre
public boolean load()
```

**addAdUnit(Ad adUnit)**

Adds an `AdUnit` to the ANMultiAdRequest. `AdUnits` will be rejected if
their `memberId` does not match the `memberId` assigned to
the `ANMultiAdRequest` or does not match the `memberId` of the
other `AdUnits` contained within
the `ANMultiAdRequest`. Returns `true` on success and `false` on
failure. 

**addAdUnit**

``` pre
public boolean addAdUnit(Ad adUnit)
```

**Arguments** 

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d622e604" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d622e607" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d622e610" class="entry cellborder"
style="vertical-align: top">Scope</th>
<th id="d622e613" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d622e604 "><code class="ph codeph">AdUnit</code></td>
<td class="entry cellborder"
headers="d622e607 ">Ad</td>
<td class="entry cellborder"
headers="d622e610 ">Required</td>
<td class="entry cellborder"
headers="d622e613 ">An <code class="ph codeph">AdUnit</code> item to add
to the <code class="ph codeph">ANMultiAdRequest.</code></td>
</tr>
</tbody>
</table>

</div>

**removeAdUnit(Ad adUnit)**

Removes an `AdUnit` from the `ANMultiAdRequest`. Returns `true` on
success and `false` on failure.

**removeAdUnit**

``` pre
public void removeAdUnit(Ad adUnit)
```

**Arguments**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d622e694" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d622e697" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d622e700" class="entry cellborder"
style="vertical-align: top">Scope</th>
<th id="d622e703" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d622e694 "><code class="ph codeph">AdUnit</code></td>
<td class="entry cellborder"
headers="d622e697 ">Ad</td>
<td class="entry cellborder"
headers="d622e700 ">Required</td>
<td class="entry cellborder"
headers="d622e703 ">An <code class="ph codeph">AdUnit</code> item to
remove from the <code class="ph codeph">ANMultiAdRequest.</code></td>
</tr>
</tbody>
</table>

</div>

**addCustomKeywordWithKey**

Adds a custom keyword to the `ANMultiAdRequest`. Stored as a pair of
keys and value, custom keywords are inherited by the `AdUnits` contained
within the `ANMultiAdRequest`.

**addCustomKeywords**

``` pre
public void addCustomKeywords(String key, String value)
```

**Arguments**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d622e781" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d622e784" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d622e787" class="entry cellborder"
style="vertical-align: top">Scope</th>
<th id="d622e790" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d622e781 "><code class="ph codeph">key</code></td>
<td class="entry cellborder"
headers="d622e784 ">String</td>
<td class="entry cellborder"
headers="d622e787 ">Required</td>
<td class="entry cellborder"
headers="d622e790 ">The key identifier for the custom keyword.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d622e781 "><code class="ph codeph">value</code></td>
<td class="entry cellborder"
headers="d622e784 ">String</td>
<td class="entry cellborder"
headers="d622e787 ">Required</td>
<td class="entry cellborder"
headers="d622e790 ">The value of the custom keyword.</td>
</tr>
</tbody>
</table>

</div>

**removeCustomKeywordWithKey**

Removes a custom keyword from the `MultiAdRequest`. The remove keyword
will no longer be inherited by the `AdUnits` contained within the
`ANMultiAdRequest`.

**removeCustomKeywordWithKey**

``` pre
public void removeCustomKeyword(String key)
```

**Arguments**

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d622e881" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d622e884" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d622e887" class="entry cellborder"
style="vertical-align: top">Scope</th>
<th id="d622e890" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d622e881 "><code class="ph codeph">key</code></td>
<td class="entry cellborder"
headers="d622e884 ">String</td>
<td class="entry cellborder"
headers="d622e887 ">Required</td>
<td class="entry cellborder"
headers="d622e890 ">The key identifier for the custom keyword to be
removed.</td>
</tr>
</tbody>
</table>

</div>

**clearCustomKeywords**

Removes all custom keywords from the `MultiAdRequest`. The cleared
keywords will no longer be inherited by the `AdUnits` contained within
the `ANMultiAdRequest`. 

**clearCustomKeywords**

``` pre
public void clearCustomKeywords()
```

**stop()**

Stops the `MultiAdRequest`, before the request is completed.

**stop**

``` pre
public void stop()
```

**activityOnDestroy()**

Destroys the ad-unit after activity is completed to prevent memory
leaks.

**activityOnDestroy()**

``` pre
adUnit.activityOnDestroy()
```

<div class="note">

<span class="notetitle">Note:</span> As best practices :

- All SDK methods must be called on the main thread.
- `activityOnDestroy()` must be called for the attached AdUnits when
  they are expected to be destroyed.

</div>

**Example**

``` pre
if (anMultiAdRequest != null) {
            for (WeakReference<Ad> adRef: anMultiAdRequest.getAdUnitList()) {
                Ad ad  = adRef.get();
                if (ad instanceof BannerAdView) {
                    ((BannerAdView) ad).activityOnDestroy();
                } else if (ad instanceof InterstitialAdView){
                    ((InterstitialAdView) ad).activityOnDestroy();
                } else if (ad instanceof VideoAd) {
                    ((VideoAd) ad).activityOnDestroy();
                }
            }
        }
```

</div>

<div class="section">

## MultiAdRequestListener Methods

**onMultiAdRequestCompleted()**

Returns success of `ANMultiAdRequest`. Success indicates that all
contained `AdUnits` have loaded and have a clear outcome.

**onMultiAdRequestCompleted**

``` pre
void onMultiAdRequestCompleted()
```

**onMultiAdRequestFailed(ResultCode code)**

Returns an error message if the `UT Request` generated by
an `ANMultiAdRequest` instance fails, for any reason.

**onMultiAdRequestFailed**

``` pre
void onMultiAdRequestFailed(ResultCode code)
```

</div>

<div class="section">

## Related Topics

<a href="show-banners-on-android.html" class="xref">Show Banners on
Android</a>

<a href="show-interstitials-ads-on-ios.html" class="xref">Show
Interstitials Ads on Android</a>

<a href="show-instream-video-ads-on-android.html" class="xref">Show an
Instream Video Ads on Android</a>

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
