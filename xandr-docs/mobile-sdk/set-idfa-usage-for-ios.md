# Set IDFA usage for iOS

<div class="body">

<div class="section">

## Overview

The Identifier for Advertisers (**IDFA**) is an Apple provided id to
track the users for advertising purposes by the publishers who have an
app on the Apple App Store (post getting consent from the users to do
that). An API is introduced in <span class="ph">Xandr</span> mobile SDK
to enable or disable IDFA usage by including or excluding the IDFA field
in the ad request. By default, the value is set as **NO** for including
the IDFA field in the AdRequests.

</div>

<div class="section">

## Property

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d5102e67" class="entry cellborder"
style="vertical-align: top">Property</th>
<th id="d5102e70" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d5102e73" class="entry cellborder"
style="vertical-align: top">Attribute</th>
<th id="d5102e76" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d5102e67 "><code class="ph codeph">disableIDFAUsage</code></td>
<td class="entry cellborder"
headers="d5102e70 ">BOOL</td>
<td class="entry cellborder"
headers="d5102e73 ">readwrite</td>
<td class="entry cellborder"
headers="d5102e76 ">To exclude the IDFA field in ad request. Default
value is NO. </td>
</tr>
</tbody>
</table>

</div>

``` pre
@property (nonatomic, readwrite) BOOL disableIDFAUsage;
```

</div>

<div class="section">

##   Example

``` pre
[ANSDKSettings sharedInstance].disableIDFAUsage  = YES;
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
