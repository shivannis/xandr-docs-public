---
Title : Buying Native Inventory
Description : Native ads seamlessly integrate advertising into a placement's context.
---


# Buying Native Inventory



Native ads seamlessly integrate advertising into a placement's context.
In contrast with traditional HTML/JavaScript ads, native ads specify the
ad content but not how to display it. This lets publishers control their
user's experience by integrating advertising within their inventory, and
it affords advertisers higher quality inventory to choose from. This
guide contains steps for buying native inventory.

From the Xandr platform you have access to a
number of native supply sources. While you can set up an individual
line item for each source, we recommend that you
set up a single line item to reach all of them
simultaneously. This type of setup allows for easier budgeting,
reporting, performance-tracking, frequency capping, etc. This page
describes the process of setting up a line item
to serve across whichever native sellers you choose.

For specific information on individual sellers, see
<a href="native-inventory-seller-specifications.md"
class="xref">Native Inventory Seller Specifications</a>.





<b>Important:</b> **Third-party pixel
support** - For HTML based banner creatives, tracking pixels are always
fired. With native, creative assets are typically rendered outside of an
iframe, therefore publishers are selective about the javascript they
allow to run on their pages. Some publishers may not fire all javascript
pixels attached to a creative. However, IAS javascript based pixels are
now supported by Outbrain, Sharethrough, Triplelift, and AdYouLike. Note
that AdYouLike only supports javascript pixels on deal ID buying.





Step 1. Ensure You Are in Native Sellers' Allowlists

Some native sellers require you to go through a quick buyer audit before
they'll grant access to their inventory. Here is a list of sellers and
their allowlist requirements:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007d81__entry__1" class="entry">Native Seller</th>
<th id="ID-00007d81__entry__2" class="entry">Are you in an
allowlist?</th>
<th id="ID-00007d81__entry__3" class="entry">How to be put in an
allowlist</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00007d81__entry__1">Ligatus</td>
<td class="entry" headers="ID-00007d81__entry__2">You must be in an
allowlist to buy Ligatus inventory. You can determine whether you're
eligible to serve on Ligatus by checking your settings in Partner
Center. See the <a href="partner-center-guide.md" class="xref">Partner
Center Guide</a> documentation for more information.</td>
<td class="entry" headers="ID-00007d81__entry__3">Please reach out to <a
href="mailto:rta@ligatus.com" class="xref"
target="_blank">rta@ligatus.com</a> for allowlist approval.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00007d81__entry__1">Sanoma Finland</td>
<td class="entry" headers="ID-00007d81__entry__2">If you have not
previously bought Sanoma Finland via Xandr, you
are not yet in an allowlist.</td>
<td class="entry" headers="ID-00007d81__entry__3">Reach out to <a
href="mailto:programmatic@sanoma.com" class="xref"
target="_blank">programmatic@sanoma.com</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00007d81__entry__1">TripleLift</td>
<td class="entry" headers="ID-00007d81__entry__2">If you have not
previously bought TripleLift via Xandr, you are
not yet in an allowlist.</td>
<td class="entry" headers="ID-00007d81__entry__3">Reach out to <a
href="mailto:appnexus@triplelift.com" class="xref" target="_blank"><span
class="ph">appnexus@triplelift.com</a>.</td>
</tr>
</tbody>
</table>

The following sellers do not currently have any allowlist requirements:

- L'Agora
- Leboncoin
- Mopub
- MSN
- Outbrain
- Schibsted Norway
- Sharethrough
- Yieldmo

Step 2. Upload Native Creatives

Navigate to the Creative Manager
screen, click
Create New
 \>  Single creative.
This will bring up the **Create New Creative** dialog.

To maximize reach for your creatives across native inventory sources,
here are some general guidelines we recommend:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00007d81__entry__13" class="entry">Field</th>
<th id="ID-00007d81__entry__14" class="entry"><span
class="ph">Xandr Guidelines</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00007d81__entry__13">Title</td>
<td class="entry" headers="ID-00007d81__entry__14">25 character
maximum</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00007d81__entry__13">Body</td>
<td class="entry" headers="ID-00007d81__entry__14">300 character
maximum</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00007d81__entry__13">Logo</td>
<td class="entry" headers="ID-00007d81__entry__14">1:1 aspect ratio</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00007d81__entry__13">Image</td>
<td class="entry" headers="ID-00007d81__entry__14">1.91:1 aspect ratio
<p>1200x627</p>
<p>200 KB max</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00007d81__entry__13">Sponsored By</td>
<td class="entry" headers="ID-00007d81__entry__14">25 character maximum
(brand of advertisement)</td>
</tr>
</tbody>
</table>

If a parameter is not mentioned in the table above, enter whatever
values make sense for your campaign.

For detailed information on additional fields and uploading a native
creative see <a href="add-a-creative.md" class="xref"
title="You can add a creative by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
a Creative</a> and <a href="add-creatives-in-bulk.md" class="xref"
title="You can add multiple third-party, hosted, and native creatives to the Creative Manager simultaneously by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">Add
Creatives in Bulk</a>. You can also review our <a
href="../attachments/native-best-practices/Buy-Side-Native-Best-Practices.pdf"
class="xref">Native Buy-Side Best Practices</a>.



<b>Warning:</b> Do not use JavaScript
piggyback pixels on native creatives. Only image pixels can be used on
native creatives.



Step 3. Targeting

In terms of targeting, Xandr recommends you do
not target individual sellers as part of your setup. Instead, we
recommend serving on Xandr-audited inventory and
using
<a href="inventory-targeting-ali.md" class="xref">inventory lists</a>
to focus delivery on relevant supply.




