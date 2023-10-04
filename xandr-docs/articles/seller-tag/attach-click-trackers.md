---
Title : Attach Click Trackers
Description : This function adds a click event listener to an HTML element that fires
click trackers for native ad units.
---


# Attach Click Trackers





This function adds a click event listener to an HTML element that fires
click trackers for native ad units.

``` pre
attachClickTrackers(adObj,'htmlId');
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000115d__entry__1" class="entry">Parameter</th>
<th id="ID-0000115d__entry__2" class="entry">Type</th>
<th id="ID-0000115d__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000115d__entry__1"><code
class="ph codeph">adObj</code></td>
<td class="entry" headers="ID-0000115d__entry__2">object</td>
<td class="entry" headers="ID-0000115d__entry__3">The native ad object.
(See <a href="ad-object-api.html" class="xref">Ad Object API</a>.)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000115d__entry__1"><code
class="ph codeph">adObj</code></td>
<td class="entry" headers="ID-0000115d__entry__2">number</td>
<td class="entry" headers="ID-0000115d__entry__3">The HTML element to
which the click event listener will be attached.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.onEvent('adLoaded', function(tag) {
    apntag.attachClickTrackers(tag, 'nativeDivId');
});
```






