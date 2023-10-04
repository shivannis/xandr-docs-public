

# Notify





This function sends a notification to a renderer on a page (such as
Outstream).

``` pre
notify(messageType, messagePayload, targetId)
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000165b__entry__1" class="entry">Parameter</th>
<th id="ID-0000165b__entry__2" class="entry">Type</th>
<th id="ID-0000165b__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000165b__entry__1"><code
class="ph codeph">messageType</code></td>
<td class="entry" headers="ID-0000165b__entry__2">string</td>
<td class="entry" headers="ID-0000165b__entry__3">String that indicates
the message type sent to the renderer. It is a <strong>Required</strong>
parameter. </td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000165b__entry__1"><code
class="ph codeph">messagePayload</code></td>
<td class="entry" headers="ID-0000165b__entry__2">object</td>
<td class="entry" headers="ID-0000165b__entry__3">Javascript object that
contains the message, in a format defined by the specific renderer. The
object can be null, or an empty object.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000165b__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-0000165b__entry__2">string</td>
<td class="entry" headers="ID-0000165b__entry__3">A string that matches
the <code class="ph codeph">targetId</code> for one of the AST tag
objects created by the <code class="ph codeph">defineTag</code> call.
When specified, the notify call will only impact the matching targetId
on the page. If the field is left empty, then the notify function will
impact all defined tags on the page. It is an <strong>Optional</strong>
parameter.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.notify("startPlayback", {key: "data"}, "topBanner728x90")
```






