---
Title : Frequently Asked Questions (FAQ) for Enhanced Bidder Profiles
Description : <table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000023f8__entry__1" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-000023f8__entry__2"
class="entry colsep-1 rowsep-1">Question</th>
<th id="ID-000023f8__entry__3"
class="entry colsep-1 rowsep-1">Answer</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">1</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">How
do I know which bidder profile version I am using?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">Your
account manager and services partner should have already discussed this
with you.</td>
---


# Frequently Asked Questions (FAQ) for Enhanced Bidder Profiles



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000023f8__entry__1" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-000023f8__entry__2"
class="entry colsep-1 rowsep-1">Question</th>
<th id="ID-000023f8__entry__3"
class="entry colsep-1 rowsep-1">Answer</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">1</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">How
do I know which bidder profile version I am using?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">Your
account manager and services partner should have already discussed this
with you.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">2</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">Can
I use legacy bidder profiles and Enhanced Bidder Profiles at the same
time?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">No,
a bidder can only be on one version of the bidder profile. This prevents
conflicting logic and confusion.
<p>If you are a bidder on legacy bidder profiles, the profiles listed in
bidder.child_profiles and bidder.parent_profile_id will be used on your
bidder object.</p>
<p>If you are a bidder on Enhanced Bidder Profiles, your profiles with
active set to true in the <code class="ph codeph">/bidder-profile</code>
API service are in effect.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">3</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">What
changes happened between the legacy and Enhanced Bidder Profiles?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">All
changes have been documented here: <a
href="changelog-for-enhanced-bidder-profiles.html"
class="xref">Changelog for Enhanced Bidder Profiles</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">4</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">What
fields in the bidder object changed?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">All
changes have been documented here: <a
href="changelog-for-enhanced-bidder-profiles.html"
class="xref">Changelog for Enhanced Bidder Profiles</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__2">Where can I contribute feedback about
Enhanced Bidder Profiles?</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__3">Please reach out to your account manager
or services partner with any feedback.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">6</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">What
fields are you keeping vs removing?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">You
can see a list of all fields in Enhanced Bidder Profiles here: <a
href="changelog-for-enhanced-bidder-profiles.html"
class="xref">Changelog for Enhanced Bidder Profiles</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">7</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">Why
can't I target Microsoft in the included members array?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">All
members that belong to the Direct Exchange (Exchange 1) are on a
blocklist only. This means that you can not add those members in the
"excluded_members" array on the new bidder profiles. You can see more
information about Exchanges here: <a href="exchange-service.html"
class="xref">Exchange Service</a></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">8</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">Is a
bidder profile active as soon as I POST it?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">No,
new profiles that are added are inactive by default (active: false). You
will have to set active to "true" in order to activate it.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">9</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">Do
the {$MATCHED_PROFILE_CODE} and {$MATCHED_PROFILE_ID} macros work with
the new profiles?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">Yes,
we will still populate both those macros. However, we will only populate
with one id/code if several profiles match.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">10</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">How
can I access my profile in ?</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__3">You
can access your profile in our new Bidder Platform UI: <a
href="https://bidder.appnexus.com/login" class="xref"
target="_blank">https://bidder.<span
class="ph">appnexus.com/login</a></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__1">11</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000023f8__entry__2">How
can I switch from the legacy bidder profiles to Enhanced Bidder
Profiles?</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000023f8__entry__3">Please review the steps here: <a
href="bidder-profile-migration-guide.html" class="xref">Bidder Profile
Migration Guide</a></td>
</tr>
</tbody>
</table>



## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/enhanced-bidder-profiles.html"
  class="xref" target="_blank">Enhanced Bidder Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/exchange-service.html"
  class="xref" target="_blank">Exchange Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/hierarchy-and-ad-type-targeting-for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">Hierarchy and Ad Type Targeting for
  Enhanced Bidder Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/api-use-cases-for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">API Use Cases for Enhanced Bidder
  Profiles</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/changelog-for-enhanced-bidder-profiles.html"
  class="xref" target="_blank">Changelog for Enhanced Bidder Profiles</a>






