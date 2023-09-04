# Load Tags

<div class="body refbody">

<div class="section">

This function makes an ad server call to load ads that have been defined
by `defineTag` calls. 

``` pre
loadTags(['targetId1', 'targetId2'])
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d297296e66" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d297296e69" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d297296e72" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d297296e66 "><code class="ph codeph">targetId</code></td>
<td class="entry -nocellborder"
headers="d297296e69 ">string</td>
<td class="entry cellborder"
headers="d297296e72 ">The unique identifier of a specific ad slot. One
or more identifiers can be specified in an array. The tags identified
need to have been defined first using <code
class="ph codeph">apntag.defineTag</code>. Omit the parameter to load
all tags. It is an optional parameter.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.loadTags(['adslot1', 'adslot2']);
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
