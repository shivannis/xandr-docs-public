# Publisher ID for Android

<div class="body">

This document describes the publisher_id parameter of the Universal Tag
service.  

<div class="section">

## What Is Publisher ID

The Publisher ID parameter enables publishers to indicate what action
should occur when an ad request fails at the placement level.
Previously, if the request failed, the Member ID would be used to
determine which default creative to return with the request. With the
addition of the Publisher ID parameter publishers now have two options
for resolving default placements when the request fails, the publisher
and the member default placement. 

</div>

<div class="section">

## Publisher Id Process

When an invalid placement code is called:

- If a `publisher_id` is present in the JSON request, the request will
  be rerouted to the publisher level default placement. 
- When there is no `publisher_id` in the JSON request, the request will
  be rerouted to the member level default placement. 

</div>

<div class="section">

## Ad Unit 

The <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/android-sdk-ad-units.html"
class="xref" target="_blank">AdUnit</a> class has two methods for
setting and retrieving `publisherId`. 

**Setter**

``` pre
public void setPublisherId(int publisherId)
```

**Getter**

``` pre
public int getPublisherId() 
```

</div>

<div class="section">

## Multi Ad Request Changes

Users can select from one of three initialization methods. All require
a `memberId` and a `delegate` object as arguments in order
for `ANMultiAdRequest` be initialized, `publisherId` is an optional
setting. The `memberId, ``delegate` and `publisherId` may only be set
during initialization. All `AdUnits` must contain the same `memberId` as
the one passed in the initialization process.  See <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/multi-ad-request-for-android.html"
class="xref" target="_blank">ANMultiAdRequest</a> for more details.

``` pre
public ANMultiAdRequest(Context context, int memberId, int publisherId, MultiAdRequestListener multiAdRequestListener, boolean loadOnInit, Ad... ads)
public ANMultiAdRequest(Context context, int memberId, int publisherId, MultiAdRequestListener multiAdRequestListener)
```

<div class="note">

<span class="notetitle">Note:</span> The `addAdUnit` method of the
`ANMultiAdRequest` will read the attached `publisher_id` of the
`AdUnit`. If that value does not match the publisherId set to the
`ANMultiAdRequest` instance, the `ANMultiAdRequest` instance will reject
the `AdUnit`.

</div>

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
