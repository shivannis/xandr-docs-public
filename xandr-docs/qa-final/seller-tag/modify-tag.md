# Modify Tag

<div class="body refbody">

<div class="section">

This function modifies the parameters for a specified target ID. For
each key passed in the `params` object, the function will replace any
existing information for that key on the specified ad slot.

``` pre
modifyTag ('targetId', {params})
```

<div class="note warning">

<span class="warningtitle">**Warning:**</span> Do not use `modifyTag` to
change the `targetId` param. Use `defineTag `instead of renaming the tag
object for a new request. Modifying the `targetId` through the
`modifyTag` endpoint will not create a new tag object and can lead to
unexpected results. 

</div>

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d139087e83" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d139087e86" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d139087e89" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d139087e83 "><code class="ph codeph">targetId</code></td>
<td class="entry nocellnoborder"
headers="d139087e86 ">string</td>
<td class="entry cell-noborder"
headers="d139087e89 ">The unique identifier of a specific ad slot.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d139087e83 "><code class="ph codeph">params</code></td>
<td class="entry -nocellborder"
headers="d139087e86 ">object</td>
<td class="entry cellborder"
headers="d139087e89 ">An object of tag parameters to modify.  See <a
href="define-tag.md" class="xref">Define Tag</a>  for a list of
parameters.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.modifyTag('apn_ad_slot_1',{
    invCode: 'XYZ4567',
    tagId: 987654,
    allowSmallerSizes : false
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
