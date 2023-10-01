---
Title : Set Test Mode for iOS
Description : ## Overview
An API is introduced in Xandr mobile SDK to set
the mode of execution of AdRequests as test mode for debugging or
testing purpose. By default, the mode of execution of AdRequests is set
---


# Set Test Mode for iOS





## Overview

An API is introduced in Xandr mobile SDK to set
the mode of execution of AdRequests as test mode for debugging or
testing purpose. By default, the mode of execution of AdRequests is set
as **No** for test mode. To enable the test mode, the value of the API
needs to be changed to **Yes**. However, the scope of setting the test
mode for AdRequest execution as **Yes** is limited
to debugging/development or testing purpose only,  and not to be used in
a production environment. Enabling the test mode in a production
environment leads to unintended consequences and impacts the
Monetization of your app.





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000032be__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-000032be__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000032be__entry__3"
class="entry colsep-1 rowsep-1">Attribute</th>
<th id="ID-000032be__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000032be__entry__1"><code
class="ph codeph">enableTestMode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000032be__entry__2">BOOL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000032be__entry__3">readwrite</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000032be__entry__4">Sets
YES or NO for the AdRequests to be executed in the test mode.</td>
</tr>
</tbody>
</table>

``` pre
@property (nonatomic) BOOL enableTestMode;
```





##  Example

``` pre
ANSDKSettings.sharedInstance.enableTestMode = YES;
```






