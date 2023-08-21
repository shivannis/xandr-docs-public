# Dismiss Interstitials on User Click

<div class="body">

By default, when a user clicks an interstitial ad and is taken to the
landing page in the device's native browser, when they return to the app
the interstitial ad is still displayed.

This page has instructions for dismissing the interstitial ad when the
user clicks.

To change this behavior so that the interstitial ad view is dismissed
when the user clicks on the ad, the following methods are available on
the `InterstitialAdView`:

<div class="section">

## Methods

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d16975e66" class="entry nocellnoborder"
style="vertical-align: top">Method</th>
<th id="d16975e69" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d16975e66 "><code
class="ph codeph">shouldDismissOnClick()</code></td>
<td class="entry cell-noborder"
headers="d16975e69 ">Whether the interstitial ad view will be dismissed
when the user clicks the ad. Defaults to <code
class="ph codeph">false</code>.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d16975e66 "><code
class="ph codeph">setDismissOnClick(boolean)</code></td>
<td class="entry cellborder"
headers="d16975e69 ">Pass <code class="ph codeph">true</code> to dismiss
the interstitial ad view when the user clicks the ad.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
InterstitialAdView iav = new InterstitialAdView(this);
iav.setPlacementID("1326299");
iav.setDismissOnClick(true);       
```

</div>

<div class="section">

## Related Topics

<a href="show-interstitials-on-android.html" class="xref">Show
Interstitials</a>

<a href="xandr-mobile-sdks.html" class="xref"><span
class="ph">Xandr</span> Mobile SDKs</a>

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
