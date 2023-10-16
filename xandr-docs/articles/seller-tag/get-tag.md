---
Title : Get Tag
Description : This function returns an object containing all tag objects that were
created by defineTag. The method accepts one optional parameter,
ms.custom : seller-tag
---


# Get Tag





This function returns an object containing all tag objects that were
created by defineTag. The method accepts one optional parameter,
the `targetId` of the ad slot on page. Passing in the `targetId` will
return the tag object with that ID.

``` pre
getTag('targetId1')
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000158c__entry__1" class="entry">Parameter</th>
<th id="ID-0000158c__entry__2" class="entry">Type</th>
<th id="ID-0000158c__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000158c__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-0000158c__entry__2">string</td>
<td class="entry" headers="ID-0000158c__entry__3">The unique identifier
of a specific ad slot. It is an optional parameter.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.getTag();
apntag.getTag('apn_ad_slot_1');
```





## Example - Returned Tag Object

The returned tag object looks like this:

``` pre
{
  "debug": true,
  "displayed": true,
  "initialHeight": 250,
  "initialWidth": 300,
  "invCode": "ABC123",
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






