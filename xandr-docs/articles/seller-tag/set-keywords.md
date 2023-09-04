# Set Keywords

<div class="body refbody">

<div class="section">

This function sets the keywords for the specified `targetId`.

``` pre
setKeywords (('targetId',{keywords},options))
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d288596e71" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d288596e74" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d288596e77" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d288596e71 "><code class="ph codeph">targetId</code></td>
<td class="entry nocellnoborder"
headers="d288596e74 ">string</td>
<td class="entry cell-noborder"
headers="d288596e77 ">The unique identifier of a specific ad slot.</td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d288596e71 "><code class="ph codeph">keywords</code></td>
<td class="entry nocellnoborder"
headers="d288596e74 ">key/value pair</td>
<td class="entry cell-noborder"
headers="d288596e77 ">A set of key/value pairs applicable to this ad
slot. Query string segments are defined by key/value pairs in this
object. Keywords that contain hyphens must be enclosed in single quote
marks. Best practice is to always surround keywords with single quotes.
Users can also create a custom macro. The format must be <code
class="ph codeph">#{MY_CUSTOM_KEY}</code>.
<p>These key/values/macros are case sensitive (not forced
uppercase).</p>
<div class="note">
<span class="notetitle">Note:</span> A maximum of 100 macro replacements
are allowed on a pixel/creative, etc.
</div></td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d288596e71 "><code class="ph codeph">options</code></td>
<td class="entry -nocellborder"
headers="d288596e74 ">object</td>
<td class="entry cellborder"
headers="d288596e77 ">An object specifying additional options available
when setting keywords. Values are Boolean.
<dl>
<dt>overrideKeyValue</dt>
<dd>
<strong>true:</strong> Existing values for keywords will be overwritten
by values specified in this tag.
</dd>
<dd>
<strong>false:</strong> (Default) Values of keywords in the current tag
will be added to previously-defined keywords.
</dd>
</dl></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.setKeywords('apn_ad_slot_1',
        { genre : ['rock','pop'] }
);
apntag.setKeywords('apn_ad_slot_2',
        { 'hello' : 'world' }
);
 
apntag.setKeywords('apn_ad_slot_3',
        { 'genre' : ['hiphop','classical'] },
        { overrideKeyValue: true}
);
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
