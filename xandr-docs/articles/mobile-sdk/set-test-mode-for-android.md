---
Title : Set Test Mode for Android
Description : ## Overview
An API is introduced in Xandr mobile SDK to set
the mode of execution of AdRequests as test mode for debugging or
testing purpose. By default, the mode of execution of AdRequests is set
ms.custom : android-sdk
---


# Set Test Mode for Android





## Overview

An API is introduced in Xandr mobile SDK to set
the mode of execution of AdRequests as test mode for debugging or
testing purpose. By default, the mode of execution of AdRequests is set
as **false** for test mode. To enable the test mode, the value of the
API needs to be changed to **true**. However, the scope of setting the
test mode for AdRequest execution as **true** is limited
to debugging/development or testing purpose only,  and not to be used in
a production environment. Enabling the test mode in a production
environment leads to unintended consequences and impacts the
Monetization of your app.





## Property

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000185d__entry__1"
class="entry colsep-1 rowsep-1">Property</th>
<th id="ID-0000185d__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000185d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000185d__entry__1"><code
class="ph codeph">enableTestMode</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000185d__entry__2">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000185d__entry__3">Sets
true or false for the AdRequests to be executed in the test mode.</td>
</tr>
</tbody>
</table>

``` pre
public static void enableTestMode(boolean enabled);
```





##  Example

``` pre
SDKSettings.enableTestMode(true);
```






