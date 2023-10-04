---
Title : Fire Impression Trackers
Description : This function accepts one parameter which is a native ad object. The
---


# Fire Impression Trackers





This function accepts one parameter which is a native ad object. The
function fires impression trackers and JavaScript trackers if they exist
on the given native ad object. This could be used in the callback that
handles native ad responses.

``` pre
fireImpressionTrackers(adObj)
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001536__entry__1" class="entry">Parameter</th>
<th id="ID-00001536__entry__2" class="entry">Type</th>
<th id="ID-00001536__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001536__entry__1"><code
class="ph codeph">adObj</code></td>
<td class="entry" headers="ID-00001536__entry__2">object</td>
<td class="entry" headers="ID-00001536__entry__3">The native ad object.
(See <a href="ad-object-api.html" class="xref">Ad Object API</a>.)</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.onEvent('adLoaded', function(data) {
  apntag.fireImpressionTrackers(data);
});
```






