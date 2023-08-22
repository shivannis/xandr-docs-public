# Show Tag

<div class="body refbody">

<div class="section">

This function indicates that an ad placement has been fully defined and
is ready for an ad to be shown in its space. Once this method is called,
the impression will be marked as transacted and will be considered an
"impression" for accounting purposes.

``` pre
showTag('targetId'[, window])
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d6060e57" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d6060e60" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d6060e63" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d6060e57 "><code class="ph codeph">targetId</code></td>
<td class="entry nocellnoborder"
headers="d6060e60 ">string</td>
<td class="entry cell-noborder"
headers="d6060e63 ">The unique identifier of a specific ad slot.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d6060e57 "><code class="ph codeph">window</code></td>
<td class="entry -nocellborder"
headers="d6060e60 ">NA</td>
<td class="entry cellborder"
headers="d6060e63 ">(optional) Default value if not passed: <code
class="ph codeph">window</code>. The window where the target div is
located. Generally only required when putting the <code
class="ph codeph">showTag()</code> call inside an iframe.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.showTag('apn_ad_slot_1');
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
