---
Title : Modify Tag
Description : This function modifies the parameters for a specified target ID. For
ms.custom : seller-tag
---


# Modify Tag





This function modifies the parameters for a specified target ID. For
each key passed in the `params` object, the function will replace any
existing information for that key on the specified ad slot.

``` pre
modifyTag ('targetId', {params})
```



<b>Warning:</b> Do not use `modifyTag` to
change the `targetId` param. Use `defineTag `instead of renaming the tag
object for a new request. Modifying the `targetId` through the
`modifyTag` endpoint will not create a new tag object and can lead to
unexpected results. 



The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000160b__entry__1" class="entry">Parameter</th>
<th id="ID-0000160b__entry__2" class="entry">Type</th>
<th id="ID-0000160b__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000160b__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-0000160b__entry__2">string</td>
<td class="entry" headers="ID-0000160b__entry__3">The unique identifier
of a specific ad slot.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000160b__entry__1"><code
class="ph codeph">params</code></td>
<td class="entry" headers="ID-0000160b__entry__2">object</td>
<td class="entry" headers="ID-0000160b__entry__3">An object of tag
parameters to modify.  See <a href="define-tag.md" class="xref">Define
Tag</a>  for a list of parameters.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.modifyTag('apn_ad_slot_1',{
    invCode: 'XYZ4567',
    tagId: 987654,
    allowSmallerSizes : false
});
```






