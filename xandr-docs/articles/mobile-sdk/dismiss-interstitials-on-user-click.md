---
Title : Dismiss Interstitials on User Click
Description : By default, when a user clicks an interstitial ad and is taken to the
landing page in the device's native browser, when they return to the app
the interstitial ad is still displayed.
---


# Dismiss Interstitials on User Click



By default, when a user clicks an interstitial ad and is taken to the
landing page in the device's native browser, when they return to the app
the interstitial ad is still displayed.

This page has instructions for dismissing the interstitial ad when the
user clicks.

To change this behavior so that the interstitial ad view is dismissed
when the user clicks on the ad, the following methods are available on
the `InterstitialAdView`:



## Methods

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001275__entry__1" class="entry">Method</th>
<th id="ID-00001275__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001275__entry__1"><code
class="ph codeph">shouldDismissOnClick()</code></td>
<td class="entry" headers="ID-00001275__entry__2">Whether the
interstitial ad view will be dismissed when the user clicks the ad.
Defaults to <code class="ph codeph">false</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001275__entry__1"><code
class="ph codeph">setDismissOnClick(boolean)</code></td>
<td class="entry" headers="ID-00001275__entry__2">Pass <code
class="ph codeph">true</code> to dismiss the interstitial ad view when
the user clicks the ad.</td>
</tr>
</tbody>
</table>





## Example

``` pre
InterstitialAdView iav = new InterstitialAdView(this);
iav.setPlacementID("1326299");
iav.setDismissOnClick(true);       
```





## Related Topics

<a href="show-interstitials-on-android.html" class="xref">Show
Interstitials</a>

<a href="xandr-mobile-sdks.html" class="xref"><span
class="ph">Xandr Mobile SDKs</a>






