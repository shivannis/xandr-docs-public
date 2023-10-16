---
Title : Clear Request
Description : This function resets the state of the `apntag` back to its uninitialized
state. The function clears out the relevant objects in the AST tag,
---


# Clear Request





This function resets the state of the `apntag` back to its uninitialized
state. The function clears out the relevant objects in the AST tag,
enabling the user to call `defineTag` for new placements with an
unconfigured AST tag. This can be useful in single page applications to
reset all the previously defined ad slots, page targeting, etc. Only use
this function if you need to hard reset all the states in the `apntag` .



Note: Unlike the refresh function,
`clearRequest` does not remove any DOM elements, including `iFrames`. It
is the responsibility of the user to manage their DOM elements.



``` pre
clearRequest(targetId)
```







The parameters listed below can be sent as arguments in the function.

<table id="ID-000011a0__table_zfd_2f5_vyb" class="table frame-all"
style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="ID-000011a0__table_zfd_2f5_vyb__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-000011a0__table_zfd_2f5_vyb__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000011a0__table_zfd_2f5_vyb__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__table_zfd_2f5_vyb__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__table_zfd_2f5_vyb__entry__2">string or array of
strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000011a0__table_zfd_2f5_vyb__entry__3">The unique identifier
of a specific ad slot. One or more identifiers can be specified in an
array. The tags identified must be defined first using <code
class="ph codeph">apntag.defineTag</code>. Omit the parameter to clear
all tags. It is an optional parameter.</td>
</tr>
</tbody>
</table>







## Example

To completely reset all tags that are currently defined:

``` pre
apntag.clearRequest(); 
```



To reset a single tag using its `targetId` value:

``` pre
apntag.clearRequest('adslot1');
```





To reset multiple tags using their `targetId` values:

``` pre
apntag.clearRequest(['adslot1', 'adslot2']);
```








