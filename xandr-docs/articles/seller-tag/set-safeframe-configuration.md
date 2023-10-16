---
Title : Set SafeFrame Configuration
Description : This function allows configuration of SafeFrame, a managed iframe that
provides additional consumer protection and publisher control beyond
that provided by a standard iframe. Here is more information on
ms.custom : seller-tag
---


# Set SafeFrame Configuration





This function allows configuration of SafeFrame, a managed iframe that
provides additional consumer protection and publisher control beyond
that provided by a standard iframe. Here is more information on
the  SafeFrame API Reference .

``` pre
setSafeFrameConfig({ parameters})
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001cf8__entry__1" class="entry">Parameter</th>
<th id="ID-00001cf8__entry__2" class="entry">Type</th>
<th id="ID-00001cf8__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001cf8__entry__1"><code
class="ph codeph">allowExpansionByPush</code></td>
<td class="entry" headers="ID-00001cf8__entry__2">Boolean</td>
<td class="entry" headers="ID-00001cf8__entry__3">Specifies whether host
can toggle expansion by push.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001cf8__entry__1"><code
class="ph codeph">allowExpansionByOverlay</code></td>
<td class="entry" headers="ID-00001cf8__entry__2">Boolean</td>
<td class="entry" headers="ID-00001cf8__entry__3">Specifies whether host
can toggle expansion by overlay.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.setSafeFrameConfig({
    "allowExpansionByPush" : true,
    "allowExpansionByOverlay" : true
});
```






