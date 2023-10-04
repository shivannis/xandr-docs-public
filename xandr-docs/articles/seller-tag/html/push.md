

# Push





This function adds a given function to the `apntag` command queue. This
is the primary way commands should be called. Before `apntag.js` loads,
this function works as `Array.push`, adding commands to the queue.
After `apntag.js` loads, this function will execute commands
immediately.

``` pre
anq.push(function())
```

The parameter listed below can be sent as an argument in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001783__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-00001783__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001783__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001783__entry__1"><code
class="ph codeph">function</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001783__entry__2">function</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001783__entry__3">The
function to execute when the event is triggered. </td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.anq.push(function() {
        apntag.showTag('apn_ad_slot_1');
});
```






