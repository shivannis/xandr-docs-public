# Set AAID usage for Android

<div class="body">

<div class="section">

## Overview

The Google Advertising ID (AAID) for devices is an Android provided id
to track the users for advertising purposes by the publishers who have
an app on the Google Play Store (post getting consent from the users to
do that). An API is introduced in <span class="ph">Xandr</span> mobile
SDK to enable or disable AAID usage by including or excluding
the AAID field in the ad request. By default, the value is set
as **false** for including the AAID field in the AdRequests.

</div>

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d27742e60" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d27742e63" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d27742e66" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d27742e69" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d27742e60 "><code
class="ph codeph">isAAIDUsageDisabled</code></td>
<td class="entry cellborder"
headers="d27742e63 ">boolean</td>
<td class="entry cellborder"
headers="d27742e66 ">read</td>
<td class="entry cellborder"
headers="d27742e69 ">To get current status of disableAAIDUsage. </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d27742e60 "><code
class="ph codeph">disableAAIDUsage</code></td>
<td class="entry cellborder"
headers="d27742e63 ">boolean</td>
<td class="entry cellborder"
headers="d27742e66 ">write</td>
<td class="entry cellborder"
headers="d27742e69 ">To enable/disable the disableAAIDUsage. Default
value is <strong>false</strong>.</td>
</tr>
</tbody>
</table>

</div>

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

</div>

<div class="section">

##   Example

``` pre
// To Set the disableAAIDUsage
SDKSettings.disableAAIDUsage(false);
// To Get the disableAAIDUsage status
SDKSettings.isAAIDUsageDisabled()
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
