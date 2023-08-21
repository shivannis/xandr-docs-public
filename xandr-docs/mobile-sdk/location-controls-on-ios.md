# Location Controls on iOS

<div class="body">

On this page you'll find instructions for controlling the accuracy of
the location data the SDK sends to the ad server, as well as for
controlling the HTML5 location access for creatives rendered in a
WebView. Improving location accuracy can be useful for advertisers, as
better location data may lead to better monetization of your ads.

<div class="section">

##  Location Accuracy

Use the ANAdProtocol  setLocationWithLatitude method to control how
accurate the location data is that you pass to the ad server:

``` pre
CLLocation *location = [locationManager location];
NSDate *now = [NSDate date];
[banner.setLocationWithLatitude:location.coordinate.latitude
  longitude:location.coordinate.longitude
  timestamp: now
  horizontalAccuracy: location.horizontal_accuracy
  precision: 4];
```

The `precision` parameter will cause all location information to be
internally rounded to the specified number of digits after the decimal
before being passed to the ad server. The correlation between the value
of `precision` and location accuracy distance is as follows:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18298e69" class="entry nocellnoborder"
style="vertical-align: top">Precision (Integer)</th>
<th id="d18298e72" class="entry cell-noborder"
style="vertical-align: top">Resolution Accuracy</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d18298e69 ">2</td>
<td class="entry cell-noborder"
headers="d18298e72 ">Approx. 1 kilometer</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d18298e69 ">3</td>
<td class="entry cell-noborder"
headers="d18298e72 ">Approx. 100 meters</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d18298e69 ">4</td>
<td class="entry cell-noborder"
headers="d18298e72 ">Approx. 10 meters</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d18298e69 ">-1</td>
<td class="entry cellborder"
headers="d18298e72 ">Full resolution is passed</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Location Access

Creatives rendered in a WebView can access a user's location through
HTML5 location API's. By default, when a creative asks for location a
popup is displayed to the users asking for explicit consent/permission
to use the location. App developers can control this behavior and
disable location access for creatives using the APIs describe below.
When location access is disabled, popups won't be shown to the users and
the creative will receive a PERMISSION_DENIED error for HTML5 location
API calls.

Use
the  ANSDKSettings.sharedInstance.locationEnabledForCreative  property
to control the location access for creatives. Default is YES.

The following code disables location for the creative:

``` pre
ANSDKSettings.sharedInstance.locationEnabledForCreative = NO
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
