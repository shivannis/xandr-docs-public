

# Resize Ad





This function resizes the iFrame placement for the
specified `targetId` after the ad is rendered. If called before the ad
is rendered, this function will not do anything.

``` pre
resizeAd('targetId', [width, height], {config})
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000017fe__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000017fe__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000017fe__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000017fe__entry__3">The
unique identifier of a specific ad slot.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__1"><code
class="ph codeph">[width, height]</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__2">array of numbers</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000017fe__entry__3">The
placement size to which the iFrame should be resized, in the format
<code class="ph codeph">[300,250]</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__1"><code
class="ph codeph">config</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__2">object</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__3">Contains optional config like settings
to alter typical resizing behavior. See table below for list of
supported flags.</td>
</tr>
</tbody>
</table>

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000017fe__entry__13"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000017fe__entry__14"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000017fe__entry__15"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__13"><code
class="ph codeph">resizeAdParentDiv</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__14">boolean</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017fe__entry__15">Setting this property to true will
force the Parent Div container of the Ad creative to resize. This is
particularly useful when resizing banner safeframe creatives when the
parent div doesn't resize in some environments. By default, this option
is turned off.<br />
&#10;
Note: If the resizeAdParentDiv option
is passed to resizeAd, it will take precedence over the global option
resizeAdParentDiv defined in defineTag. For example, if the value was
set to false in resizeAd call, but the original defineTag had it set to
true - the false setting from the resizeAd will be respected.
</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.resizeAd('apn_ad_40954389053', [100, 100], { resizeAdParentDiv: true });
```






