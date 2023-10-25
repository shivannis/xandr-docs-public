---
Title : Set AAID usage for Android
Description : ## Overview
The Google Advertising ID (AAID) for devices is an Android provided id
to track the users for advertising purposes by the publishers who have
an app on the Google Play Store (post getting consent from the users to
do that). An API is introduced in Xandr mobile
---


# Set AAID usage for Android





## Overview

The Google Advertising ID (AAID) for devices is an Android provided id
to track the users for advertising purposes by the publishers who have
an app on the Google Play Store (post getting consent from the users to
do that). An API is introduced in Xandr mobile
SDK to enable or disable AAID usage by including or excluding
the AAID field in the ad request. By default, the value is set
as **false** for including the AAID field in the AdRequests.





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000017d8__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000017d8__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000017d8__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000017d8__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017d8__entry__1"><code
class="ph codeph">isAAIDUsageDisabled</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017d8__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017d8__entry__3">read</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000017d8__entry__4">To
get current status of disableAAIDUsage.<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017d8__entry__1"><code
class="ph codeph">disableAAIDUsage</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017d8__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017d8__entry__3">write</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000017d8__entry__4">To
enable/disable the disableAAIDUsage. Default value is
<strong>false</strong>.</td>
</tr>
</tbody>
</table>

``` pre
   /**
    *  An AppNexus disableAAIDUsage is a boolean value, which exclude the AAID field in ad request.
    *  Default value of disableAAIDUsage is set to false
    */
   public static boolean isAAIDUsageDisabled()
   /**
    * Sets true to exclude the AAID field in ad request else false.
    * @param disable whether to disable AAIDUsage or not. default is false
    */
   public static void disableAAIDUsage(boolean disable)
```





##  Example

``` pre
// To Set the disableAAIDUsage
SDKSettings.disableAAIDUsage(false);
// To Get the disableAAIDUsage status
SDKSettings.isAAIDUsageDisabled()
```






