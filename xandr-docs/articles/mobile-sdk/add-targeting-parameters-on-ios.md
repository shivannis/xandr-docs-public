---
Title : Add Targeting Parameters on iOS
Description : ## User location
In this snippet, we create an `ANLocation` object and set its latitude
and longitude. We also set the horizontal accuracy, which is the size of
---


# Add Targeting Parameters on iOS





## User location



In this snippet, we create an `ANLocation` object and set its latitude
and longitude. We also set the horizontal accuracy, which is the size of
one side of the "rectangle" inside which the user is located. Finally,
we set the ad view's location property to our `ANLocation` object.

``` pre
// The ANLocation object is built from the properties of the 
// `CLLocation` object.
CLLocation *location = [locationManager location];
ANLocation *an_loc = [[ANLocation alloc] init];
an_loc.latitude = location.coordinate.latitude;
an_loc.longitude = location.coordinate.longitude;
an_loc.horizontalAccuracy = location.horizontal_accuracy;

// Set the ANLocation for the banner ad view.
banner.location = an_loc;
    
```







Note:  Developers should ensure
adequate consent is obtained before sharing location information.
Developers can control whether location is collected and sent by the
SDK.





By default, the iOS SDK does not automatically send location
information. In order for the SDK to use location information for ad
targeting, the app developer must explicitly pass the location
information to the SDK.





## Age and Gender



Age and gender can be added to the banner ad view directly as shown
below. Note that age is an `NSString`, and can contain a numeric age, a
birth year, or a hyphenated age range. For example, it could be "56",
"1974", or "25-35".

``` pre
banner.age = @"42";
banner.gender = FEMALE;
```








