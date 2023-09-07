# Set Endpoint

<div class="body refbody">

<div class="section">

This function sets the Impression Bus endpoint to which ad requests are
made.

``` pre
setEndpoint('endpoint', true|false)
```

The parameter listed below can be sent as an argument in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d317996e63" class="entry cellborder"
style="vertical-align: top">Parameter</th>
<th id="d317996e66" class="entry cellborder"
style="vertical-align: top">Type</th>
<th id="d317996e69" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d317996e63 "><code class="ph codeph">endpoint</code></td>
<td class="entry cellborder"
headers="d317996e66 ">string</td>
<td class="entry cellborder"
headers="d317996e69 ">Specifies a URL endpoint.</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d317996e63 "><code class="ph codeph">freezeIbUrl</code></td>
<td class="entry cellborder"
headers="d317996e66 ">Boolean</td>
<td class="entry cellborder"
headers="d317996e69 ">An optional setting. Default is
<strong>false</strong>.
<p>When set to <strong>true</strong>, AST will not attempt to switch the
Impression Bus domain to normal or simple domain as per consent
information present in the auction.</p>
<p>When set to <strong>false</strong>, AST will switch to normal or
simple domain as appropriate.</p>
<div id="ID-0000186d__p-48213689-4c66-4311-83fa-da23bb4e8aca" class="p">
<div class="note">
<span class="notetitle">Note:</span> See <a
href="set-up-placements-with-ast.md"
class="xref" target="_blank">Set Up Placements with AST</a> for more
details about the simple domain and when it should be used.
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

<div class="p">

``` pre
apntag.setEndpoint('ib.adnxs-simple.com', true);
```

<div class="note">

<span class="notetitle">**Note:**</span> Clients who want to test the AST
tag against non-production data can use the example above to point to
our client testing environment.

</div>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Further Reading:**
- [AST References](ast-api-reference.md)

</div>

</div>

</div>
