

# Set Endpoint





This function sets the Impression Bus endpoint to which ad requests are
made.

``` pre
setEndpoint('endpoint', true|false)
```

The parameter listed below can be sent as an argument in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000186d__entry__1"
class="entry colsep-1 rowsep-1">Parameter</th>
<th id="ID-0000186d__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-0000186d__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000186d__entry__1"><code
class="ph codeph">endpoint</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000186d__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000186d__entry__3">Specifies a URL endpoint.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000186d__entry__1"><code
class="ph codeph">freezeIbUrl</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000186d__entry__2">Boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000186d__entry__3">An
optional setting. Default is <strong>false</strong>.
<p>When set to <strong>true</strong>, AST will not attempt to switch the
Impression Bus domain to normal or simple domain as per consent
information present in the auction.</p>
<p>When set to <strong>false</strong>, AST will switch to normal or
simple domain as appropriate.</p>
<div id="ID-0000186d__p-48213689-4c66-4311-83fa-da23bb4e8aca" >

Note: See <a
href="https://docs.xandr.com/bundle/seller-tag/page/seller-tag/set-up-placements-with-ast.html"
class="xref" target="_blank">Set Up Placements with AST</a> for more
details about the simple domain and when it should be used.

</td>
</tr>
</tbody>
</table>





## Example



``` pre
apntag.setEndpoint('ib.adnxs-simple.com', true);
```



Note: Clients who want to test the AST
tag against non-production data can use the example above to point to
our client testing environment.










