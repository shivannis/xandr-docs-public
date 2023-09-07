# Set SafeFrame Configuration

<div class="body refbody">

<div class="section">

This function allows configuration of SafeFrame, a managed iframe that
provides additional consumer protection and publisher control beyond
that provided by a standard iframe. Here is more information on
the  SafeFrame API Reference .

``` pre
setSafeFrameConfig({ parameters})
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d19881e57" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d19881e60" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d19881e63" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d19881e57 "><code
class="ph codeph">allowExpansionByPush</code></td>
<td class="entry nocellnoborder"
headers="d19881e60 ">Boolean</td>
<td class="entry cell-noborder"
headers="d19881e63 ">Specifies whether host can toggle expansion by
push.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d19881e57 "><code
class="ph codeph">allowExpansionByOverlay</code></td>
<td class="entry -nocellborder"
headers="d19881e60 ">Boolean</td>
<td class="entry cellborder"
headers="d19881e63 ">Specifies whether host can toggle expansion by
overlay.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.setSafeFrameConfig({
    "allowExpansionByPush" : true,
    "allowExpansionByOverlay" : true
});
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
