# Add Targeting Parameters on Android

<div class="body">

<div class="section">

## User location

<div class="p">

In this example, we get the user's location from Android and pass it
along in the ad call:

``` pre
import android.location.LocationManager;
import android.location.Location;

// Get the current location, and add it to the ad view.
LocationManager locationManager =
  (LocationManager) getApplicationContext().getSystemService(LOCATION_SERVICE);

Location location =
  locationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);

SDKSettings.setLocation(location);
    
```

</div>

This code assumes you provided the application location access by
setting one or both of
the `ACCESS_COARSE_LOCATION` and `ACCESS_FINE_LOCATION` permissions.

Developers should ensure adequate consent is obtained before sharing
location information. Developers can control whether location is
collected and sent by the SDK.

<div class="p">

By default, the Android SDK automatically transmits location information
if the Android Manifest allows location permissions to the app. If
adequate permissions have not been obtained, or for any other reason,
developers are able to instruct the SDK to not send the location. To
disable the SDK from sending location, you can call:

``` pre
com.appnexus.opensdk.utils.SDKSettings.setLocationEnabled(false);
    
```

</div>

<div class="p">

<div class="note">

<span class="notetitle">Note:</span> This is a global setting for our
mobile SDK only. Keep in mind that third Party SDKs will have their own
settings.

</div>

</div>

</div>

<div class="section">

## Age and gender

<div class="p">

Advertisers may want to target ads by age and gender. In this example,
we add the age and gender to an `AdView `.

``` pre
// Set the user's age.  This can be a number, a year, or a
// numeric range such as "18-35".
adView.setAge("1978");

// Set the user's gender (if known).  This is used by
// advertisers for targeting.
adView.setGender(AdView.GENDER.MALE);
    
```

</div>

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
