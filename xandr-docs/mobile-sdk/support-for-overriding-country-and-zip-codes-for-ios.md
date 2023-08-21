# Support for Overriding Country and Zip Codes for iOS

<div class="body">

<div class="section">

## Overview

Mobile SDK allows the publishers to override the country codes and zip
codes. The SDK uses City/DMA/Country information from standard feed (log
level data) for reporting purposes. However it is required to overwrite
these values from reverser geocoded latitude and longitude data (if
available) to keep the data sanity intact. Reason being, if those values
are not overwritten, log level data will point to the ip-address based
locations and eventually will project wrong data set especially with
mobile data.

</div>

<div class="section">

## Properties

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d30416e59" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d30416e62" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d30416e65" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d30416e68" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d30416e59 "><code
class="ph codeph">geoOverrideCountryCode</code></td>
<td class="entry cellborder"
headers="d30416e62 ">String</td>
<td class="entry cellborder"
headers="d30416e65 ">readwrite</td>
<td class="entry cellborder"
headers="d30416e68 ">Indicates a string value to override country
code.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d30416e59 "><code
class="ph codeph">geoOverrideZipCode</code></td>
<td class="entry cellborder"
headers="d30416e62 ">String</td>
<td class="entry cellborder"
headers="d30416e65 ">readwrite</td>
<td class="entry cellborder"
headers="d30416e68 ">Indicates a string value to override zip code.</td>
</tr>
</tbody>
</table>

</div>

``` pre
/**
* An AppNexus geoOverrideCountryCode  is a string value which allows publishers to override country code.
*/
@property (nonatomic, readwrite, strong, nullable) NSString *geoOverrideCountryCode;
 
/**
* An AppNexus geoOverrideZipCode  is a string value which allows publishers to override zip code.
*/
@property (nonatomic, readwrite, strong, nullable) NSString *geoOverrideZipCode
```

</div>

<div class="section">

## Example

The properties can be accessed:

**Objective C**

``` pre
//Set
ANSDKSettings.sharedInstance.geoOverrideCountryCode = @"US";
ANSDKSettings.sharedInstance.geoOverrideZipCode = @"10010";
.......
//Get
NSString* countryCode = ANSDKSettings.sharedInstance.geoOverrideCountryCode;
NSString* zipCode = ANSDKSettings.sharedInstance.geoOverrideZipCode
```

**Swift**

``` pre
//Set
ANSDKSettings.sharedInstance().geoOverrideCountryCode = "US"
ANSDKSettings.sharedInstance().geoOverrideZipCode = "10010"
.......
//Get
let countryCode = ANSDKSettings.sharedInstance().geoOverrideCountryCode;
let zipCode = ANSDKSettings.sharedInstance().geoOverrideZipCode
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
