---
Title : Off Event
Description : This function clears the event listeners on the
given `eventType` and `targetId`.
ms.custom : seller-tag
---


# Off Event





This function clears the event listeners on the
given `eventType` and `targetId`.

``` pre
offEvent('eventType','targetId')
```

The parameters listed below can be sent as arguments in the function.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000169f__entry__1" class="entry">Parameter</th>
<th id="ID-0000169f__entry__2" class="entry">Type</th>
<th id="ID-0000169f__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000169f__entry__1"><code
class="ph codeph">eventType</code></td>
<td class="entry" headers="ID-0000169f__entry__2">string</td>
<td class="entry" headers="ID-0000169f__entry__3">The event to listen
for on the tag.
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
<tr class="even row">
<td class="entry" headers="ID-0000169f__entry__1"><code
class="ph codeph">targetId</code></td>
<td class="entry" headers="ID-0000169f__entry__2">string</td>
<td class="entry" headers="ID-0000169f__entry__3">The unique identifier
of a specific ad slot. Omit this parameter to disable all the callback
functions to be executed for this eventType. This is an optional
parameter.</td>
</tr>
</tbody>
</table>





## Example

``` pre
apntag.offEvent('adError','apn_ad_slot_1');
 
apntag.offEvent('adError');
```






