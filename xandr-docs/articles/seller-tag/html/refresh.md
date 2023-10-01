

# Refresh





This function initiates a new ad server call and refreshes ads on the
page.

``` pre
refresh(['targetId1', 'targetId2'])
```



Note: The existing iFrames related to
the placements passed to the `refresh` method will be replaced and new
iFrames created.



The parameter listed below can be sent as an argument in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000017c2__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000017c2__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000017c2__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000017c2__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000017c2__entry__2">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000017c2__entry__3">The
unique identifier of a specific ad slot. One or more identifiers can be
specified in an array. Omit the parameter to refresh all placements.
This is an optional parameter.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.refresh(['adslot1', 'adslot2']);
```






