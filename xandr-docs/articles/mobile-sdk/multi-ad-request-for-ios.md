---
Title : Multi Ad Request for iOS
Description : ## Overview
This page has instructions and code samples for initiating and
configuring a `ANMultiAdRequest`. `ANMultiAdRequest` enables the user
ms.custom : android-ios
---


# Multi Ad Request for iOS





## Overview

This page has instructions and code samples for initiating and
configuring a `ANMultiAdRequest`. `ANMultiAdRequest` enables the user
to use a single universal tag (UTv3) request to initiate multiple
auctions, the results of which are returned in a single server response.

`ANMultiAdRequest`, like an `AdUnit`, implements a subset of
`ANAdProtocol`. This enables a `ANMultiAdRequest` to adopt the type and
behavior of different `AdUnits` (<a
href="show-banners-on-ios.md"
class="xref" target="_blank">banner</a>, <a
href="show-banner-native-on-ios.md"
class="xref" target="_blank">native</a>, <a
href="show-instream-video-ads-on-ios.md"
class="xref" target="_blank">video</a>, etc.) using the same
specifications of each `AdUnit` type. Custom keywords can be assigned to
a `ANMultiAdRequest` and will be inherited by the contained `AdUnits`.





## Initialization

Users can select from one of three initialization methods. All require a
`memberId` and a `delegate` object as arguments in order
for `ANMultiAdRequest` be initialized. The `memberId` and `delegate` may
only be set once per instance. An optional <a
href="publisher-id-for-ios.md"
class="xref" target="_blank">Publisher ID parameter</a> can be set at
this time. All `AdUnits` must contain the same `memberId` as the one
passed in the initialization process. `AdUnits` containing
`placementIds` will use the associated `memberId` of that placement.
Upon successful initialization, an `ANMultiAdRequest` class instance is
returned.



<b>Note:</b> The `ANMultiAdRequest` instance
will reject `AdUnits` with `memberId` values different from their own.



**Initialization Methods**

**Initialize with a list of one or more AdUnits**

Initializes an instance of `ANMultiAdRequest` with a list of one or more
AdUnits. For example,

**Without Publisher ID**

``` pre
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
            delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
             adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit, ...;
```

**With Publisher ID**

``` pre
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
         publisherId:(NSInteger)publisherId
            delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
             adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                     ... NS_REQUIRES_NIL_TERMINATION;
```

**Initialize with a list of AdUnits and call the load method**

Enables initialization and calls the `load` method with a single line of
code. Like the process above, the instance is initialized with a list of
one or more `AdUnits`. If a failure occurs during the `load` lifecycle,
the class is not initialized and a null object is returned. When a
successful `load` process occurs, a class instance is returned, after
which the success or failure of the instance is communicated to the
caller via `ANMultiAdRequestDelegate`. For example,

**Without Publisher ID**

``` pre
- (nullable instancetype)
    initAndLoadWithMemberId:(NSInteger)memberId
                   delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
                    adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                            ...;
```

**With Publisher ID**

``` pre
- (nullable instancetype)
    initAndLoadWithMemberId:(NSInteger)memberId
                publisherId:(NSInteger)publisherId
                   delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
                    adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                            ... NS_REQUIRES_NIL_TERMINATION;
```

**Simple initialization**

This basic initialization returns an instance of the class but takes no
action. Configuration can be completed by using class properties and
methods. The initialized delegate is set on the `AdUnits` as they are
added.

**Without Publisher ID**

``` pre
- (nullable instancetype)initWithMemberId:(NSInteger)memberId
                              andDelegate:(nonnull id<ANMultiAdRequestDelegate>)
```

**Without Publisher ID**

``` pre
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
         publisherId:(NSInteger)publisherId
         andDelegate:(nullable id<ANMultiAdRequestDelegate>)delegate;
```

**Arguments**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026d2__entry__1"
class="entry colsep-1 rowsep-1">Variable</th>
<th id="ID-000026d2__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000026d2__entry__3"
class="entry colsep-1 rowsep-1">Attributes</th>
<th id="ID-000026d2__entry__4"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-000026d2__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__1"><code
class="ph codeph">memberId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__2">NSInteger</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__3">nonatomic, readonly, assign</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__4">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__5">A
member id. Any <code class="ph codeph">AdUnits</code> contained within
the <code class="ph codeph">ANMultiAdRequest</code> must have identical
<code class="ph codeph">memberIds</code> or the <code
class="ph codeph">ANMultiAdRequest</code> will be rejected. The <code
class="ph codeph">memberId</code> can also be attained by passing in a
<code class="ph codeph">placementId</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__1"><code
class="ph codeph">delegate</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__2">ANMultiAdRequestDelegate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__3">nonnull</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__4">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__5">An
object to be notified with relevant callbacks and information.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__1"><code
class="ph codeph">adUnits</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__2">List
of adUnits</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__3">nonnull</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__4">Optional</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__5">A
list of <code class="ph codeph">AdUnits</code> for initialization of a
<code class="ph codeph">ANMultiAdRequest</code>.</td>
</tr>
</tbody>
</table>



<b>Note:</b> If initialization is successful,
returns  `YES`, otherwise returns `NO`. 







## Configuration

All `ANMultiAdRequest` configuration properties and methods are the same
in type and usage as those used by `AdUnits`. If properties are set in
the `ANMultiAdRequest`, the `AdUnits` inherit those properties. They are
not permanent. Once the `ANMultiAdRequest` has completed its lifecycle,
`AdUnits` will access their local property values after being removed
from the list of `AdUnits` encapsulated by the `ANMultiAdRequest`
instance.

**Parameters**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026d2__entry__21"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000026d2__entry__22"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000026d2__entry__23"
class="entry colsep-1 rowsep-1">Attributes</th>
<th id="ID-000026d2__entry__24"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code
class="ph codeph">memberId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">NSInteger</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readonly</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__24">A
member id. Any <code class="ph codeph">AdUnits</code> contained within
the <code class="ph codeph">MultiAdRequest</code> must have identical
<code class="ph codeph">memberIds</code> or the <code
class="ph codeph">MultiAdRequest</code> will be rejected by <span
class="ph">Xandr's Impression Bus. The <code
class="ph codeph">memberId</code> can also be attained by passing in a
<code class="ph codeph">placementId</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code
class="ph codeph">location</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">ANLocation</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readwrite</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__24">The
user location. <code class="ph codeph">Location</code> can be set with
<code class="ph codeph">horizontalAccuracy</code> and a <code
class="ph codeph">precision</code> level. See <a
href="multi-ad-request-for-ios.md#ID-000026d2__1"
class="xref">Location Methods</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code class="ph codeph">age</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">NSString</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readwrite</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__24">The
user's age.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code
class="ph codeph">gender</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">ANGender</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readwrite</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__24">The
user's gender.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code
class="ph codeph">customKeyword</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">Array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__24">Custom keywords applied to the <code
class="ph codeph">MultiAdRequest. These keywords</code> will be
inherited by the attached <code class="ph codeph">AdUnits</code>. This
list can be supplemented within each <code
class="ph codeph">AdUnit</code> with additional custom keywords.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code
class="ph codeph">AdUnit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">Object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readwrite</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__24">An
<code class="ph codeph">AdUnit</code> item to add to the <code
class="ph codeph">MultiAdRequest</code></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__21"><code
class="ph codeph">countOfAdUnits</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__22">NSUintetger</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__23">readonly</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__24">Returns the number of <code
class="ph codeph">AdUnits</code> contained by the <code
class="ph codeph">MultiAdRequest</code> instance.</td>
</tr>
</tbody>
</table>

**Location Methods**

`setLocationWithLatitude` sets the value of the `location` property of
a `MultiAdRequest` object. Can be called with an additional `precision`
parameter. For example,

**Without Precision Parameter**

``` pre
- (void)setLocationWithLatitude:(CGFloat)latitude
                      longitude:(CGFloat)longitude
                      timestamp:(nullable NSDate *)timestamp
             horizontalAccuracy:(CGFloat)horizontalAccuracy;
```

**With Precision Parameter**

``` pre
- (void)setLocationWithLatitude:(CGFloat)latitude
                      longitude:(CGFloat)longitude
                      timestamp:(nullable NSDate *)timestamp
             horizontalAccuracy:(CGFloat)horizontalAccuracy
                      precision:(NSInteger)precision;
```

**Parameters**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000026d2__entry__53"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000026d2__entry__54"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000026d2__entry__55"
class="entry colsep-1 rowsep-1">Scope</th>
<th id="ID-000026d2__entry__56"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__53"><code
class="ph codeph">latitude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__54">CGFloat</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__55">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__56">The
latitude of the location.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__53"><code
class="ph codeph">longitude</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__54">CGFloat</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__55">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__56">The
longitude of the location.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__53"><code
class="ph codeph">timestamp</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__54">NSDate</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__55">Optional</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__56">The
timestamp that the location was set.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__53"><code
class="ph codeph">horizontalAccuracy</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__54">CGFloat</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__55">Required</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__56">The
radius of uncertainty for the location.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__53"><code
class="ph codeph">precision</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__54">NSInteger</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__55">Optional</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000026d2__entry__56">Determines the decimal degree precision
for the location.</td>
</tr>
</tbody>
</table>

**Methods**

- **`load`**  

  Loads all contained `AdUnits` by sending a `multi-tag UTv3` request to
  Xandr's Impression Bus. For each
  `ANMultiAdRequest` instance, only one load may be active at a time. 
  Loads are complete when one of the `MultiAdRequestDelegate` methods is
  fired. Returns `YES` on success and `NO` on failure.

  **load**

  

  ``` pre
  - (BOOL)load;
  ```

  

- **`addAdUnit`**  

  Adds an `AdUnit` to the ANMultiAdRequest. `AdUnits` will be rejected
  if their `memberId` does not match the `memberId` assigned to
  the `MultiAdRequest` or does not match the `memberId` of the
  other `AdUnits` contained within
  the `ANMultiAdRequest`. Returns `YES` on success and `NO` on failure.

  **addAdUnit**

  ``` pre
  - (BOOL)addAdUnit:(nonnull id<ANAdProtocolFoundation>)adunit;
  ```

  **Arguments**  

  <table class="table">
  <thead class="thead">
  <tr class="header row">
  <th id="ID-000026d2__entry__77"
  class="entry colsep-1 rowsep-1">Parameter</th>
  <th id="ID-000026d2__entry__78"
  class="entry colsep-1 rowsep-1">Type</th>
  <th id="ID-000026d2__entry__79"
  class="entry colsep-1 rowsep-1">Scope</th>
  <th id="ID-000026d2__entry__80"
  class="entry colsep-1 rowsep-1">Description</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__77"><code
  class="ph codeph">AdUnit</code></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__78">Object</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__79">Required</td>
  <td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__80">An
  <code class="ph codeph">AdUnit</code> item to add to the <code
  class="ph codeph">MultiAdRequest</code></td>
  </tr>
  </tbody>
  </table>

- **`removeAdUnit`**

    
  Removes an `AdUnit` from the `ANMultiAdRequest`. Returns `YES` on
  success and `NO` on failure.

  **removeAdUnit**

  ``` pre
  - (BOOL)removeAdUnit:(nonnull id<ANAdProtocolFoundation>)adunit;
  ```

  **Arguments**  

  <table class="table">
  <thead class="thead">
  <tr class="header row">
  <th id="ID-000026d2__entry__85"
  class="entry colsep-1 rowsep-1">Parameter</th>
  <th id="ID-000026d2__entry__86"
  class="entry colsep-1 rowsep-1">Type</th>
  <th id="ID-000026d2__entry__87"
  class="entry colsep-1 rowsep-1">Scope</th>
  <th id="ID-000026d2__entry__88"
  class="entry colsep-1 rowsep-1">Description</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__85"><code
  class="ph codeph">AdUnit</code></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__86">Object</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__87">Required</td>
  <td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__88">An
  <code class="ph codeph">AdUnit</code> item to add to the <code
  class="ph codeph">MultiAdRequest</code></td>
  </tr>
  </tbody>
  </table>

- **`addCustomKeywordWithKey`**  

  Adds a custom keyword to the `ANMultiAdRequest`. Stored as a pair of
  keys and value, custom keywords are inherited by the `AdUnits`
  contained within the `ANMultiAdRequest`. 

  **addCustomKeywordWithKey**

  ``` pre
  - (void)addCustomKeywordWithKey:(nonnull NSString *)key
                            value:(nonnull NSString *)value;
  ```

  **Arguments**  

  <table class="table">
  <thead class="thead">
  <tr class="header row">
  <th id="ID-000026d2__entry__93"
  class="entry colsep-1 rowsep-1">Parameter</th>
  <th id="ID-000026d2__entry__94"
  class="entry colsep-1 rowsep-1">Type</th>
  <th id="ID-000026d2__entry__95"
  class="entry colsep-1 rowsep-1">Scope</th>
  <th id="ID-000026d2__entry__96"
  class="entry colsep-1 rowsep-1">Description</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__93"><code class="ph codeph">key</code></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__94">NSString</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__95">Required</td>
  <td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__96">The
  key identifier for the custom keyword.</td>
  </tr>
  <tr class="even row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__93"><code
  class="ph codeph">value</code></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__94">NSString</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__95">Required</td>
  <td class="entry colsep-1 rowsep-1" headers="ID-000026d2__entry__96">The
  value of the custom keyword.</td>
  </tr>
  </tbody>
  </table>

<!-- -->

- **`removeCustomKeywordWithKey`**  

  Removes a custom keyword from the `ANMultiAdRequest`. The removed
  keyword will no longer be inherited by the `AdUnits` contained within
  the `ANMultiAdRequest`.

  **removeCustomKeywordWithKey**

  ``` pre
  - (void)removeCustomKeywordWithKey:(nonnull NSString *)key;
  ```

  **Arguments**  

  <table class="table">
  <thead class="thead">
  <tr class="header row">
  <th id="ID-000026d2__entry__105"
  class="entry colsep-1 rowsep-1">Parameter</th>
  <th id="ID-000026d2__entry__106"
  class="entry colsep-1 rowsep-1">Type</th>
  <th id="ID-000026d2__entry__107"
  class="entry colsep-1 rowsep-1">Scope</th>
  <th id="ID-000026d2__entry__108"
  class="entry colsep-1 rowsep-1">Description</th>
  </tr>
  </thead>
  <tbody class="tbody">
  <tr class="odd row">
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__105"><code
  class="ph codeph">key</code></td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__106">NSString</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__107">Required</td>
  <td class="entry colsep-1 rowsep-1"
  headers="ID-000026d2__entry__108">The key identifier for the custom
  keyword to be removed.</td>
  </tr>
  </tbody>
  </table>

<!-- -->

- **`clearCustomKeywords`**  

  Removes all custom keywords from the `ANMultiAdRequest`. The removed
  keywords will no longer be inherited by the `AdUnits` contained within
  the `ANMultiAdRequest`. 

  **clearCustomKeywords**

  ``` pre
  - (void)clearCustomKeywords;
  ```

- **`stop`**  

  Stops the `ANMultiAdRequest`, before the request is completed.

  **stop**

  ``` pre
  - (void)stop;
  ```

**ANMultiAdRequestDelegate Methods**

- **`multiAdRequestDidComplete`**

  Returns success of `ANMultiAdRequest`. Success indicates that all
  contained `AdUnits` have loaded and have a clear outcome  

  **multiAdRequestDidComplete**

  ``` pre
  - (void)multiAdRequestDidComplete:(nonnull ANMultiAdRequest *)MultiAdRequest;
  ```

- **`multiAdRequestDidFailWithError`**  

  Returns an error message if the `UT Request` generated by
  an `ANMultiAdRequest` instance fails, for any reason.

  **multiAdRequestDidFailWithError**

  ``` pre
  - (void)multiAdRequestDidFailWithError:(nonnull NSError *)error;
  ```



<b>Note:</b> `[ANMultiAdRequest load]` can
also fail by returning `NO` even prior to sending a `UT Request`. if
load returns `YES` that means the `UT Request` was initiated, and all
further errors will come through the delegate method.







## Related Topics

<a href="show-banners-on-ios.md" class="xref">Show Banners on iOS</a>

<a href="show-interstitials-ads-on-ios.md" class="xref">Show
Interstitials Ads on iOS</a>

<a href="show-instream-video-ads-on-ios.md" class="xref">Show Instream
Video Ads on iOS</a>






