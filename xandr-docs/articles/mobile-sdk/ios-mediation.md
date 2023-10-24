---
Title : iOS Mediation
Description : Mediation lets you sell ad impressions through multiple networks to
generate more revenue. This is initiated by your main (mediating) SDK
ms.custom : ios-sdk
---


# iOS Mediation



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

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001f77__entry__1" class="entry">Topics</th>
<th id="ID-00001f77__entry__2" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00001f77__entry__1"><a
href="mediate-with-ios.md" class="xref">Mediate with iOS SDK</a></td>
<td class="entry" headers="ID-00001f77__entry__2">How to mediate with
networks and media types.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00001f77__entry__1"><a
href="ios-custom-adaptors.md" class="xref">iOS Custom
Adapters</a></td>
<td class="entry" headers="ID-00001f77__entry__2">How to call out to
another SDK installed on the same device.</td>
</tr>
</tbody>
</table>




