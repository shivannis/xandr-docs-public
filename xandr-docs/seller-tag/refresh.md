# Refresh

<div class="body refbody">

<div class="section">

This function initiates a new ad server call and refreshes ads on the
page.

``` pre
refresh(['targetId1', 'targetId2'])
```

<div class="note">

<span class="notetitle">Note:</span> The existing iFrames related to the
placements passed to the `refresh` method will be replaced and new
iFrames created.

</div>

The parameter listed below can be sent as an argument in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d184938e68" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d184938e71" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d184938e74" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d184938e68 "><code class="ph codeph">targetId</code></td>
<td class="entry cellborder"
headers="d184938e71 ">string</td>
<td class="entry cellborder"
headers="d184938e74 ">The unique identifier of a specific ad slot. One
or more identifiers can be specified in an array. Omit the parameter to
refresh all placements. This is an optional parameter.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.refresh(['adslot1', 'adslot2']);
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
