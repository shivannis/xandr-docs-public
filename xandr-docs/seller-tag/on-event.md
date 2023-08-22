# On Event

<div class="body refbody">

<div class="section">

This function defines a callback function to execute on the
given `event_type`.

``` pre
onEvent('eventType', 'targetId', function(){})
```

The parameters listed below can be sent as arguments in the function.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d374655e74" class="entry nocellnoborder"
style="vertical-align: top">Parameter</th>
<th id="d374655e77" class="entry nocellnoborder"
style="vertical-align: top">Type</th>
<th id="d374655e80" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d374655e74 "><code class="ph codeph">eventType</code></td>
<td class="entry nocellnoborder"
headers="d374655e77 ">string</td>
<td class="entry cell-noborder"
headers="d374655e80 ">The event to listen for on the tag.
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
<td class="entry nocellnoborder"
headers="d374655e74 "><code class="ph codeph">targetId</code></td>
<td class="entry nocellnoborder"
headers="d374655e77 ">string</td>
<td class="entry cell-noborder"
headers="d374655e80 ">The unique identifier of a specific ad slot.
Omitting this parameter will execute callback function for all the tags
defined on the page for defined eventType. This is an optional
parameter.</td>
</tr>
<tr class="odd ">
<td class="entry -nocellborder"
headers="d374655e74 "><code class="ph codeph">function</code></td>
<td class="entry -nocellborder"
headers="d374655e77 ">function</td>
<td class="entry cellborder"
headers="d374655e80 ">The function to execute when the event is
triggered. Some events will allow you to include parameters in the
function to receive additional information within the function. See <a
href="ad-object-api.html" class="xref">Ad Object API</a> for
details.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example

``` pre
apntag.onEvent('adError', 'apn_ad_slot_1', function(adError, adObj){
        console.log('callback executed');
        console.log(adObj);
        console.log(adError);
});
 
apntag.onEvent('adError', function(adError, adObj){
        console.log('callback executed');
        console.log(adObj);
        console.log(adError);
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
