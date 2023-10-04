---
Title : Set Keywords
Description : This function sets the keywords for the specified `targetId`.
---


# Set Keywords





This function sets the keywords for the specified `targetId`.

``` pre
setKeywords (('targetId',{keywords},options))
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000018a9__entry__1" class="entry">Parameter</th>
<th id="ID-000018a9__entry__2" class="entry">Type</th>
<th id="ID-000018a9__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-000018a9__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-000018a9__entry__2">string</td>
<td class="entry" headers="ID-000018a9__entry__3">The unique identifier
of a specific ad slot.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-000018a9__entry__1"><code
class="ph codeph">keywords</code></td>
<td class="entry" headers="ID-000018a9__entry__2">key/value pair</td>
<td class="entry" headers="ID-000018a9__entry__3">A set of key/value
pairs applicable to this ad slot. Query string segments are defined by
key/value pairs in this object. Keywords that contain hyphens must be
enclosed in single quote marks. Best practice is to always surround
keywords with single quotes. Users can also create a custom macro. The
format must be <code class="ph codeph">#{MY_CUSTOM_KEY}</code>.
<p>These key/values/macros are case sensitive (not forced
uppercase).</p>

Note: A maximum of 100 macro
replacements are allowed on a pixel/creative, etc.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-000018a9__entry__1"><code
class="ph codeph">options</code></td>
<td class="entry" headers="ID-000018a9__entry__2">object</td>
<td class="entry" headers="ID-000018a9__entry__3">An object specifying
additional options available when setting keywords. Values are Boolean.
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






