# Push

<div class="body refbody">

<div class="section">

This function adds a given function to the `apntag` command queue. This
is the primary way commands should be called. Before `apntag.js` loads,
this function works as `Array.push`, adding commands to the queue.
After `apntag.js` loads, this function will execute commands
immediately.

``` pre
anq.push(function())
```

The parameter listed below can be sent as an argument in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d287775e76" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d287775e79" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d287775e82" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d287775e76 "><code class="ph codeph">function</code></td>
<td class="entry cellborder"
headers="d287775e79 ">function</td>
<td class="entry cellborder"
headers="d287775e82 ">The function to execute when the event is
triggered. </td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.anq.push(function() {
        apntag.showTag('apn_ad_slot_1');
});
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
