---
Title : Support for Overriding Country and Zip Codes for iOS
Description : ## Overview
Mobile SDK allows the publishers to override the country codes and zip
codes. The SDK uses City/DMA/Country information from standard feed (log
ms.custom : ios-sdk
---


# Support for Overriding Country and Zip Codes for iOS





## Overview

Mobile SDK allows the publishers to override the country codes and zip
codes. The SDK uses City/DMA/Country information from standard feed (log
level data) for reporting purposes. However it is required to overwrite
these values from reverser geocoded latitude and longitude data (if
available) to keep the data sanity intact. Reason being, if those values
are not overwritten, log level data will point to the ip-address based
locations and eventually will project wrong data set especially with
mobile data.





## Properties

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00003359__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-00003359__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00003359__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-00003359__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__1"><code
class="ph codeph">geoOverrideCountryCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__4">Indicates a string value to override
country code.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__1"><code
class="ph codeph">geoOverrideZipCode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__2">String</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00003359__entry__4">Indicates a string value to override zip
code.</td>
</tr>
</tbody>
</table>

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






