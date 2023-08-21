# iOS Mediation

<div class="body">

Mediation lets you sell ad impressions through multiple networks to
generate more revenue. This is initiated by your main (mediating) SDK
which calls out to one or more mediated SDKs in a "waterfall"-like
process. If your main SDK can't show an ad for some reason, it can
iterate over the list of mediated SDKs and contact them in the order you
specify. This will continue until the impression is filled or you've run
out of mediated SDKs.

Reasons to mediate to another SDK include the following:

- To provide better monetization under specific circumstances.
- To provide access to information such as a unique user ID or the
  device's operating system, location, or ID.
- Some networks only accept requests from their own SDKs, forcing you to
  use their SDK to access their demand.

This section describes how to mediate your iOS app for our latest
release.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d36656e66" class="entry nocellnoborder"
style="vertical-align: top">Topics</th>
<th id="d36656e69" class="entry cell-noborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry nocellnoborder"
headers="d36656e66 "><a href="mediate-with-ios.html"
class="xref">Mediate with iOS SDK</a></td>
<td class="entry cell-noborder"
headers="d36656e69 ">How to mediate with networks and media types.</td>
</tr>
<tr class="even ">
<td class="entry -nocellborder"
headers="d36656e66 "><a href="ios-custom-adaptors.html" class="xref">iOS
Custom Adapters</a></td>
<td class="entry cellborder"
headers="d36656e69 ">How to call out to another SDK installed on the
same device.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="related-links">

- **[Mediate with iOS](mediate-with-ios.html)**  
- **[iOS Custom Adaptors](ios-custom-adaptors.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:** <a href="ios-sdk.html" class="link">iOS SDK</a>

</div>

</div>

</div>
