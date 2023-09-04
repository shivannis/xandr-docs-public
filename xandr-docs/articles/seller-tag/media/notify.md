# Notify

<div class="body refbody">

<div class="section">

This function sends a notification to a renderer on a page (such as
Outstream).

``` pre
notify(messageType, messagePayload, targetId)
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d362022e63" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d362022e66" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d362022e69" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d362022e63 "><code class="ph codeph">messageType</code></td>
<td class="entry nocellnoborder"
headers="d362022e66 ">string</td>
<td class="entry cell-noborder"
headers="d362022e69 ">String that indicates the message type sent to the
renderer. It is a <strong>Required</strong> parameter. </td>
</tr>
<tr class="even ">
<td class="entry nocellnoborder"
headers="d362022e63 "><code class="ph codeph">messagePayload</code></td>
<td class="entry nocellnoborder"
headers="d362022e66 ">object</td>
<td class="entry cell-noborder"
headers="d362022e69 ">Javascript object that contains the message, in a
format defined by the specific renderer. The object can be null, or an
empty object.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d362022e63 "><code class="ph codeph">targetId</code></td>
<td class="entry -nocellborder"
headers="d362022e66 ">string</td>
<td class="entry cellborder"
headers="d362022e69 ">A string that matches the <code
class="ph codeph">targetId</code> for one of the AST tag objects created
by the <code class="ph codeph">defineTag</code> call. When specified,
the notify call will only impact the matching targetId on the page. If
the field is left empty, then the notify function will impact all
defined tags on the page. It is an <strong>Optional</strong>
parameter.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.notify("startPlayback", {key: "data"}, "topBanner728x90")
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
