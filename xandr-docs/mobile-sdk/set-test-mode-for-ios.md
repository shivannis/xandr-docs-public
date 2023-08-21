# Set Test Mode for iOS

<div class="body">

<div class="section">

## Overview

An API is introduced in <span class="ph">Xandr</span> mobile SDK to set
the mode of execution of AdRequests as test mode for debugging or
testing purpose. By default, the mode of execution of AdRequests is set
as **No** for test mode. To enable the test mode, the value of the API
needs to be changed to **Yes**. However, the scope of setting the test
mode for AdRequest execution as **Yes** is limited
to debugging/development or testing purpose only,  and not to be used in
a production environment. Enabling the test mode in a production
environment leads to unintended consequences and impacts the
Monetization of your app.

</div>

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d18641e70" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d18641e73" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d18641e76" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d18641e79" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d18641e70 "><code class="ph codeph">enableTestMode</code></td>
<td class="entry cellborder"
headers="d18641e73 ">BOOL</td>
<td class="entry cellborder"
headers="d18641e76 ">readwrite</td>
<td class="entry cellborder"
headers="d18641e79 ">Sets YES or NO for the AdRequests to be executed in
the test mode.</td>
</tr>
</tbody>
</table>

</div>

``` pre
@property (nonatomic) BOOL enableTestMode;
```

</div>

<div class="section">

##   Example

``` pre
ANSDKSettings.sharedInstance.enableTestMode = YES;
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
