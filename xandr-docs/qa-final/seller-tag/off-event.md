# Off Event

<div class="body refbody">

<div class="section">

This function clears the event listeners on the
given `eventType` and `targetId`.

``` pre
offEvent('eventType','targetId')
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d137511e77" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d137511e80" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d137511e83" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d137511e77 "><code class="ph codeph">eventType</code></td>
<td class="entry nocellnoborder"
headers="d137511e80 ">string</td>
<td class="entry cell-noborder"
headers="d137511e83 ">The event to listen for on the tag.
<ul>
<li><code class="ph codeph">adRequested</code>: An ad was requested from
the Impression Bus.</li>
<li><code class="ph codeph">adAvailable</code>: A creative was returned
from the Impression Bus but has not yet been shown.</li>
<li><code class="ph codeph">adBadRequest</code>: The tag called a
placement that doesn't exist.</li>
<li><code class="ph codeph">adLoaded</code>: An ad placement has been
fully defined and is ready to be shown; <code
class="ph codeph">apn.showTag</code> has been successfully
executed.</li>
<li><code class="ph codeph">adNoBid</code>: No bid was received for the
ad tag.</li>
<li><code class="ph codeph">adRequestFailure</code>: Failure to retrieve
the creative. Could indicate a problem with the setup of the ad tag, or
a problem contacting the endpoint.</li>
<li><code class="ph codeph">adError</code>: Error caused by the creative
itself (any first or third party in the chain) that was delivered by
AST. Note that the ad may still be shown.</li>
<li><code class="ph codeph">adCollapse</code>: Can be triggered by the
creative, if the creative contains <code
class="ph codeph">window.parent.apntag.collapseAd(document.body.id)</code>.</li>
</ul></td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d137511e77 "><code class="ph codeph">targetId</code></td>
<td class="entry -nocellborder"
headers="d137511e80 ">string</td>
<td class="entry cellborder"
headers="d137511e83 ">The unique identifier of a specific ad slot. Omit
this parameter to disable all the callback functions to be executed for
this eventType. This is an optional parameter.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.offEvent('adError','apn_ad_slot_1');
 
apntag.offEvent('adError');
```

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
