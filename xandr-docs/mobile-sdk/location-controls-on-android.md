# Location Controls on Android

<div class="body">

On this page you'll find instructions for controlling the accuracy of
the location data the SDK sends to the ad server, as well as for
controlling the HTML5 location access for creatives rendered in a
WebView. 

<div class="section">

## Overview

**Location accuracy**:

Improving location accuracy can be useful for advertisers, as better
location data may lead to better monetization of your ads.

**Location access**:

Creatives rendered in a WebView can access a user's location through
HTML5 location API's. By default, when a creative asks for location a
popup is displayed to the users asking for explicit consent/permission
to use the location. App developers can control this behavior and
disable location access for creatives using the APIs describe below.
When location access is disabled, popups won't be shown to the users and
the creative will receive a PERMISSION_DENIED error for HTML5 location
API calls.

</div>

<div class="section">

## Location Accuracy

<div class="p">

Use the SDKSettings.setLocationDecimalDigits(int
digitsAfterDecimal) method to control how accurate the location data is
that you pass to the ad server:

``` pre
SDKSettings.setLocationDecimalDigits(2);
```

</div>

The `digitsAfterDecimal` argument will cause all location information to
be internally rounded to the specified number of digits after the
decimal before being passed to the ad server. The correlation between
the value of `digitsAfterDecimal` and location accuracy distance is as
follows:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d8637e90" class="entry nocellnoborder"
style="vertical-align: top">Digits after Decimal</th>
<th id="d8637e93" class="entry cell-noborder"
style="vertical-align: top">Resolution Accuracy</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8637e90 ">2</td>
<td class="entry cell-noborder"
headers="d8637e93 ">Approx. 1 kilometer</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d8637e90 ">3</td>
<td class="entry cell-noborder"
headers="d8637e93 ">Approx. 100 meters</td>
</tr>
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d8637e90 ">4</td>
<td class="entry cell-noborder"
headers="d8637e93 ">Approx. 10 meters</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d8637e90 ">-1</td>
<td class="entry cellborder"
headers="d8637e93 ">Full resolution is passed</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Location Access

Use the  SDKSettings.setLocationEnabledForCreative(boolean
enabled)  method to control the location access for creatives. Default
is *true*.

The following code disables the location pop-up from the creative:

``` pre
SDKSettings.setLocationEnabledForCreative(false);
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
