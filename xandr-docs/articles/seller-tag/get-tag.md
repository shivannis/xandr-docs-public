# Get Tag

<div class="body refbody">

<div class="section">

This function returns an object containing all tag objects that were
created by defineTag. The method accepts one optional parameter,
the `targetId` of the ad slot on page. Passing in the `targetId` will
return the tag object with that ID.

``` pre
getTag('targetId1')
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d93632e74" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d93632e77" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d93632e80" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry -nocellborder"
headers="d93632e74 "><code class="ph codeph">targetId</code></td>
<td class="entry -nocellborder"
headers="d93632e77 ">string</td>
<td class="entry cellborder"
headers="d93632e80 ">The unique identifier of a specific ad slot. It is
an optional parameter.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.getTag();
apntag.getTag('apn_ad_slot_1');
```

</div>

<div class="section">

## Example - Returned Tag Object

The returned tag object looks like this:

``` pre
{
  "debug": true,
  "displayed": true,
  "initialHeight": 250,
  "initialWidth": 300,
  "member": "none",
  "modifyTag": "<ƒ (targetId, params)>",
  "off": "<ƒ (event, targetId, handler)>",
  "on": "<ƒ (event, targetId, handler)>",
  "setKeywords": "<ƒ (targetId, params)>",
  "showTagCalled": true,
  "sizes": [300, 250],
  "tagId": 13333444,
  "tagNumber": 0,
  "targetId": "apn_ad_slot_1",
  "utCalled": true,
  "utDivId": "div_utif_ad",
  "utiframeId": "utif_ad_54a77888-dcba-4c4d-abcd-beb888cc9a77",
  "uuid": "63a12376-c123-4212-b123-2dde8b12ab6e"
} 
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
