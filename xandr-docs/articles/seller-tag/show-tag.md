---
Title : Show Tag
Description : This function indicates that an ad placement has been fully defined and
is ready for an ad to be shown in its space. Once this method is called,
---


# Show Tag





This function indicates that an ad placement has been fully defined and
is ready for an ad to be shown in its space. Once this method is called,
the impression will be marked as transacted and will be considered an
"impression" for accounting purposes.

``` pre
showTag('targetId'[, window])
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001d3d__entry__1" class="entry">Parameter</th>
<th id="ID-00001d3d__entry__2" class="entry">Type</th>
<th id="ID-00001d3d__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001d3d__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-00001d3d__entry__2">string</td>
<td class="entry" headers="ID-00001d3d__entry__3">The unique identifier
of a specific ad slot.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001d3d__entry__1"><code
class="ph codeph">window</code></td>
<td class="entry" headers="ID-00001d3d__entry__2">NA</td>
<td class="entry" headers="ID-00001d3d__entry__3">(optional) Default
value if not passed: <code class="ph codeph">window</code>. The window
where the target div is located. Generally only required when putting
the <code class="ph codeph">showTag()</code> call inside an iframe.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.showTag('apn_ad_slot_1');
```






