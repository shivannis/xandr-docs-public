# Listener for AdAboutToExpire on iOS

<div class="body">

A set of two callback methods is introduced under
**ANNativeAdDelegate** API to notify the publisher when an ad is about
to expire and when an ad is actually expired. When an ad is expired, the
impression doesn't get counted for that ad.  Additionally, if the ad
impression is logged before expiry, both callback methods are
invalidated.

After **didReceiveResponse** method is called, the user needs to set
delegate to get following callback methods: 

- **(void)adWillExpire:(nonnull id)response; **

  This callback method is used to notify the publisher when an ad is
  about to expire.

- **(void)adDidExpire:(nonnull id)response; **

  This callback method is used to notify that an ad is expired.

<div class="section">

## Properties

The time interval for about to expire of an ad can be set using the
property **nativeAdAboutToExpireInterval** (The default value of about
to expire time interval is 60 seconds). This interval denotes the time
period in seconds on the basis of which **adWillExpire()** callback is
triggered.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d4337e93" class="entry nocellnoborder"
style="vertical-align: top">Property</th>
<th id="d4337e96" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d4337e99" class="entry nocellnoborder"
style="vertical-align: top">Attribute</th>
<th id="d4337e102" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d4337e93 "><code
class="ph codeph">nativeAdAboutToExpireInterval</code></td>
<td class="entry -nocellborder"
headers="d4337e96 "><code class="ph codeph">NSInteger</code></td>
<td class="entry -nocellborder"
headers="d4337e99 ">readwrite</td>
<td class="entry cellborder"
headers="d4337e102 ">Indicates the time interval of ad expiry in
seconds</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
   An AppNexus nativeAdAboutToExpireInterval. A nativeAdAboutToExpireInterval is a numeric value that is used to notify before ad is about to expire. Default value of aboutToExpireTimeInterval is 60(second).
 * nativeAdAboutToExpireInterval accept value in second.
 */
@property (nonatomic, readwrite, assign) NSInteger nativeAdAboutToExpireInterval;
```

<div class="note">

<span class="notetitle">Note:</span>

The property for about to expire time interval must be set before making
a Native Ad request, so that the response can adapt to the values set in
this variable. If it is not set explicitly, default value (60 seconds)
will be considered.

</div>

</div>

<div class="section">

## Delegate Callbacks

``` pre
self.adRequest= [[ANNativeAdRequest alloc] init];
[self.adRequest setPlacementId:@"1"];
self.adRequest.delegate = self;
```

</div>

<div class="section">

## Methods

**(void)adWillExpire and (void)adDidExpire**

``` pre
- (void)adRequest:(ANNativeAdRequest *)request didReceiveResponse:(ANNativeAdResponse *)response
{
    response.delegate = self; // required to set for adWillExpire & adDidExpire callbacks
}
 
- (void)adDidExpire:(nonnull id)response {
    NSLog(@"adDidExpire");
}
 
- (void)adWillExpire:(nonnull id)response {
    NSLog(@"adWillExpire");
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
