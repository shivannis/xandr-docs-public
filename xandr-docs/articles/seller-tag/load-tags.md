---
Title : Load Tags
Description : This function makes an ad server call to load ads that have been defined
by `defineTag` calls. 
---


# Load Tags





This function makes an ad server call to load ads that have been defined
by `defineTag` calls. 

``` pre
loadTags(['targetId1', 'targetId2'])
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015ce__entry__1" class="entry">Parameter</th>
<th id="ID-000015ce__entry__2" class="entry">Type</th>
<th id="ID-000015ce__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000015ce__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-000015ce__entry__2">string</td>
<td class="entry" headers="ID-000015ce__entry__3">The unique identifier
of a specific ad slot. One or more identifiers can be specified in an
array. The tags identified need to have been defined first using <code
class="ph codeph">apntag.defineTag</code>. Omit the parameter to load
all tags. It is an optional parameter.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.loadTags(['adslot1', 'adslot2']);
```






