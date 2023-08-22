# Inventory Relationship FAQ

<div class="body">

**What is Inventory Relationship, and why are we doing it?**

In an effort to maintain transparency and accountability in the supply
sold via, sellers will soon be asked to provide information about their
inventory sources. The requested information is basic business
information about how the inventory is accessed and will be used to
support Xandr inventory quality efforts.

Xandr may verify the publisher information with you or the publisher.
Any inaccurate information could result in your termination or
suspension.

**What is the motivation behind the changes?**

There are talks within online advertising self-regulatory groups to
produce similar recommendations for sellers participating in the RTB
marketplace. Xandr is embracing this industry push to provide a safer
RTB marketplace for buyers. Buyers have long been required to register
and audit creatives on Xandr. Inventory Relationship is another step
towards accountability on the sell side.

**How should sellers define each Inventory Relationship option?**

For a complete list of fields and their usage requirements, please refer
to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
class="xref" target="_blank">Publisher Service</a> documentation.

<div class="tablenoborder">

<table class="table" data-cellpadding="4"
data-cellspacing="0" data-summary="" data-frame="border" data-border="1"
data-rules="all">
<colgroup>
<col />
<col />
<col />
<col />
<col />
<col />
</colgroup>
<tbody class="tbody">
<tr class="odd ">
<td colspan="3" class="entry cellborder"
style="text-align: left; vertical-align: top;"> </td>
<td colspan="3" class="entry cellborder"
style="text-align: center; vertical-align: top;"><strong>Managed</strong></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: middle;"> </td>
<td class="entry cellborder"
style="text-align: center; vertical-align: middle;"><strong>Relationship
undeclared</strong></td>
<td class="entry cellborder"
style="text-align: center; vertical-align: middle;"><strong>Owned &amp;
Operated</strong></td>
<td class="entry cellborder"
style="text-align: left; vertical-align: middle;"><strong>Single
publisher sourced directly from publisher</strong></td>
<td class="entry cellborder"
style="text-align: left; vertical-align: middle;"><strong>Single
publisher sourced indirectly from partner(s)</strong></td>
<td class="entry cellborder"
style="text-align: left; vertical-align: middle;"><strong>Multiple
publishers sourced indirectly from partner(s)</strong></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">Description of Inventory
Source</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">Relationship undeclared
means you have not yet disclosed the publisher's details and how the
inventory is accessed.</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">You are a publisher</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">You are sourcing the
inventory from only one publisher directly.</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">You are sourcing the
inventory via an intermediary (such as a network, SSP, or exchange) from
only one publisher.</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">You are sourcing the
inventory via an intermediary (such as a network, SSP, or exchange) from
multiple publishers .</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">Required Fields</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">NA</td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"><ul>
<li>Publisher Business Name</li>
<li>Publisher Contact
<ul>
<li>Name</li>
<li>Email</li>
<li>Phone</li>
</ul></li>
</ul></td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"><ul>
<li>Publisher Business Name</li>
<li>Publisher Contact Publisher Address
<ul>
<li>Name</li>
<li>Email</li>
<li>Phone</li>
</ul></li>
</ul></td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;"><ul>
<li>Inventory Source Name</li>
<li>Publisher Business Name</li>
<li>Publisher Contact Publisher Address
<ul>
<li>Name</li>
<li>Email</li>
<li>Phone</li>
</ul></li>
</ul></td>
<td class="entry cellborder"
style="text-align: left; vertical-align: top;">Xandr's <a
href="https://docs.xandr.com/bundle/supply-partners/page/best-practices.html"
class="xref" target="_blank">Best Practices for Selling Inventory</a>
guidelines advise that our Supply Partners sell inventory from direct
publishers.</td>
</tr>
</tbody>
</table>

</div>

**What happens if a seller does not populate the required fields?**

To create or edit publishers in the UI or API, you will have to enter
this information where prompted. New publisher objects must have the
proper Inventory Relationship declared. Existing objects should be
updated with the proper Inventory Relationship. We recommend making
these updates via the <a
href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
class="xref" target="_blank">Publisher Service</a>.

**How do I complete the Inventory Relationship and Publisher Information
fields for small publishers without a company?**

For publishers operating as sole proprietorships under their personal
name, please add the payee name in the Business Name field.

**What are the language requirements for the Publisher Information
fields?**

Xandr recommends completing the Publisher Information fields in English.
However, if this is not possible, the local language may be used.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="best-practices.html" class="link">Best Practices</a>

</div>

</div>

</div>
