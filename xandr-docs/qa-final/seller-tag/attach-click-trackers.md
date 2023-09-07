# Attach Click Trackers

<div class="body refbody">

<div class="section">

This function adds a click event listener to an HTML element that fires
click trackers for native ad units.

``` pre
attachClickTrackers(adObj,'htmlId');
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d171105e71" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d171105e74" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d171105e77" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d171105e71 "><code class="ph codeph">adObj</code></td>
<td class="entry nocellnoborder"
headers="d171105e74 ">object</td>
<td class="entry cell-noborder"
headers="d171105e77 ">The native ad object. (See <a
href="ad-object-api.md" class="xref">Ad Object API</a>.)</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d171105e71 "><code class="ph codeph">adObj</code></td>
<td class="entry -nocellborder"
headers="d171105e74 ">number</td>
<td class="entry cellborder"
headers="d171105e77 ">The HTML element to which the click event listener
will be attached.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.onEvent('adLoaded', function(tag) {
    apntag.attachClickTrackers(tag, 'nativeDivId');
});
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**
- [API References](ast-api-reference.md)


</div>

</div>

</div>
