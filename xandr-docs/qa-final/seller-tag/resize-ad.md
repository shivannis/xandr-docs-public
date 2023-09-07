# Resize Ad

<div class="body refbody">

<div class="section">

This function resizes the iFrame placement for the
specified `targetId` after the ad is rendered. If called before the ad
is rendered, this function will not do anything.

``` pre
resizeAd('targetId', [width, height], {config})
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d293920e74" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d293920e77" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d293920e80" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d293920e74 "><code class="ph codeph">targetId</code></td>
<td class="entry cellborder"
headers="d293920e77 ">string</td>
<td class="entry cellborder"
headers="d293920e80 ">The unique identifier of a specific ad slot.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d293920e74 "><code
class="ph codeph">[width, height]</code></td>
<td class="entry cellborder"
headers="d293920e77 ">array of numbers</td>
<td class="entry cellborder"
headers="d293920e80 ">The placement size to which the iFrame should be
resized, in the format <code class="ph codeph">[300,250]</code>.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d293920e74 "><code class="ph codeph">config</code></td>
<td class="entry cellborder"
headers="d293920e77 ">object</td>
<td class="entry cellborder"
headers="d293920e80 ">Contains optional config like settings to alter
typical resizing behavior. See table below for list of supported
flags.</td>
</tr>
</tbody>
</table>

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d293920e145" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d293920e148" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d293920e151" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d293920e145 "><code
class="ph codeph">resizeAdParentDiv</code></td>
<td class="entry cellborder"
headers="d293920e148 ">boolean</td>
<td class="entry cellborder"
headers="d293920e151 ">Setting this property to true will force the
Parent Div container of the Ad creative to resize. This is particularly
useful when resizing banner safeframe creatives when the parent div
doesn't resize in some environments. By default, this option is turned
off.
<div id="ID-000017fe__note_omt_hjc_f5b" class="note">
<span class="notetitle">Note:</span> If the resizeAdParentDiv option is
passed to resizeAd, it will take precedence over the global option
resizeAdParentDiv defined in defineTag. For example, if the value was
set to false in resizeAd call, but the original defineTag had it set to
true - the false setting from the resizeAd will be respected.
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.resizeAd('apn_ad_40954389053', [100, 100], { resizeAdParentDiv: true });
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**

- [AST References](ast-api-reference.md)

</div>

</div>

</div>
