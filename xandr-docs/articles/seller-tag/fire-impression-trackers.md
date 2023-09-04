# Fire Impression Trackers

<div class="body refbody">

<div class="section">

This function accepts one parameter which is a native ad object. The
function fires impression trackers and JavaScript trackers if they exist
on the given native ad object. This could be used in the callback that
handles native ad responses.

``` pre
fireImpressionTrackers(adObj)
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d186001e63" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d186001e66" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d186001e69" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d186001e63 "><code class="ph codeph">adObj</code></td>
<td class="entry -nocellborder"
headers="d186001e66 ">object</td>
<td class="entry cellborder"
headers="d186001e69 ">The native ad object. (See <a
href="ad-object-api.html" class="xref">Ad Object API</a>.)</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.onEvent('adLoaded', function(data) {
  apntag.fireImpressionTrackers(data);
});
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../seller-tag/ast-api-reference.html" class="link">AST API
Reference</a>

</div>

</div>

</div>
