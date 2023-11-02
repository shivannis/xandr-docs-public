---
title: Publisher ID for iOS
description: The publisher ID parameter provides publishers two options for resolving default placements when an ad request fails at the placement level
ms.custom: ios-sdk
---

# Publisher ID for iOS

This document describes the `publisher_id` parameter of the Universal Tag service.  

## What is Publisher ID?

The Publisher ID parameter enables publishers to indicate what action should occur when an ad request fails at the placement level. Previously, if the request failed, the Member ID would be used to determine which default creative to return with the request. With the addition of the Publisher ID parameter publishers now have two options for resolving default placements when the request fails, the publisher and the member default placement.

### Publisher ID process

When an invalid placement code is called:

- If a `publisher_id` is present in the JSON request, the request will be rerouted to the publisher level default placement.
- When there is no `publisher_id` in the JSON request, the request will be rerouted to the member level default placement.

## Ad unit

The [AdUnit](./ios-sdk-ad-units.md) class has two methods for setting and retrieving `publisherId`.

### Setters

**Swift**

```
public func setPublisherId (publisherId:Int)
```

**Objective C**

```
- (void)setPublisherId:(NSInteger)publisherId;
```

### Getters

**Swift**

```
publisherId:Int
```

**Objective C**

```
(NSInteger) publisherId;
```

## Multi ad request changes

Users can select from one of three initialization methods. All require a `memberId` and a `delegate` object as arguments in order for `ANMultiAdRequest` be initialized, `publisherId` is an optional setting. The `memberId`, `delegate` and `publisherId` may only be set during initialization. All `AdUnits` must contain the same `memberId` as the one passed in the initialization process.  See [ANMultiAdRequest](./multi-ad-request-for-ios.md) for more details.

**Objective C**

```
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
            delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
             adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                     ... NS_REQUIRES_NIL_TERMINATION;
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
         publisherId:(NSInteger)publisherId
            delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
             adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                     ... NS_REQUIRES_NIL_TERMINATION;
- (nullable instancetype)
    initAndLoadWithMemberId:(NSInteger)memberId
                   delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
                    adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                            ... NS_REQUIRES_NIL_TERMINATION;
- (nullable instancetype)
    initAndLoadWithMemberId:(NSInteger)memberId
                publisherId:(NSInteger)publisherId
                   delegate:(nullable id<ANMultiAdRequestDelegate>)delegate
                    adUnits:(nonnull id<ANAdProtocolFoundationCore>)firstAdUnit,
                            ... NS_REQUIRES_NIL_TERMINATION;
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
         andDelegate:(nullable id<ANMultiAdRequestDelegate>)delegate;
- (nullable instancetype)
    initWithMemberId:(NSInteger)memberId
         publisherId:(NSInteger)publisherId
         andDelegate:(nullable id<ANMultiAdRequestDelegate>)delegate;
```

> [!NOTE]
> The `addAdUnit` method of the `ANMultiAdRequest` will read the attached publisherId of the `AdUnit`. If that value does not match the `publisherId` set to the `ANMultiAdRequest` instance, the `ANMultiAdRequest` instance will reject the `AdUnit`.
