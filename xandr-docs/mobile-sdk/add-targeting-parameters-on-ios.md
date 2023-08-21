# Add Targeting Parameters on iOS

<div class="body">

<div class="section">

## User location

<div class="p">

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

</div>

<div class="p">

<div class="note">

<span class="notetitle">Note:</span>  Developers should ensure adequate
consent is obtained before sharing location information. Developers can
control whether location is collected and sent by the SDK.

</div>

</div>

By default, the iOS SDK does not automatically send location
information. In order for the SDK to use location information for ad
targeting, the app developer must explicitly pass the location
information to the SDK.

</div>

<div class="section">

## Age and Gender

<div class="p">

Age and gender can be added to the banner ad view directly as shown
below. Note that age is an `NSString`, and can contain a numeric age, a
birth year, or a hyphenated age range. For example, it could be "56",
"1974", or "25-35".

``` pre
banner.age = @"42";
banner.gender = FEMALE;
```

</div>

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
