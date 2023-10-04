---
Title : Override Ad Quality Settings on a Deal
Description : By default, when you create a deal, the deal inherits any ad quality
settings you have already established for a given network and publisher.
---


# Override Ad Quality Settings on a Deal



By default, when you create a deal, the deal inherits any ad quality
settings you have already established for a given network and publisher.
For example, a network may prohibit animated or Flash ads and a
publisher may ban certain specific brands or category. But, since deals
are special arrangements with buyers, Xandr
allows you to ignore these settings and allow creatives that would
normally be blocked to serve on a deal.



Note: These settings are configured
when you
<a href="create-a-custom-deal.html" class="xref">create a custom
deal</a>. The settings they override are described in
<a href="working-with-network-ad-quality.html" class="xref">Working with
Network Ad Quality</a> and
<a href="working-with-publisher-ad-quality.html" class="xref">Working
with Ad Quality</a>.



Types of Ad Quality Overrides

There are three types of ad quality overrides:

- **Trust Level**: You can override the default buyer trust level to
  give deal buyers additional options: you can allow all creatives to
  serve, or allow creatives that are pending review to serve.
- **Attribute Overrides**: For creative attributes (brands, categories,
  languages, and technical attributes), you can choose to ignore
  existing ad quality settings. For brands, categories, and languages,
  you can also restrict a deal to only use specific attributes.
- **Creative Approval and Blocking**: allows you to specifically approve
  or block individual creatives. This setting overrides trust level and
  attribute overrides. Approved creatives will always be eligible to
  serve, and blocked creatives can never serve on the deal.

Trust Level

Trust Level is used to indicate what level of audit status you want to
permit for creatives to serve for a deal.

- Default: Default setting. If
  selected, this deal uses the default ad quality buyer trust level.
- Allow pending creatives: if checked,
  the default setting is used but creatives submitted for
  Xandr audit in the "pending" state are allowed
  to serve. Once the audit is complete, the creative uses the default ad
  quality setting.
- Maximum: If selected, all creatives
  are allowed to serve for this deal (except for creatives specifically
  banned; see below). With Maximum
  trust level set on a deal, a buyer can serve on that deal even if the
  buyer has been blocked in network or publisher ad quality rules.



Note: If set to anything other than
Default, this setting overrides both network and publisher ad quality
settings and allows deals to serve creatives that would normally be
blocked.



Attribute Overrides

You can also override network and publisher ad quality attribute
settings for a deal. The ad quality attributes consist of:

- Brands: Creatives associated with a
  specific brand
- Categories: Creatives in a
  particular category, such as sports or computers
- Languages: Creatives associated with
  a language
- Technical Attributes: Creatives with
  particular technical attributes, such as audio or expandable creatives



Note: When you ignore ad quality
settings for a brand, creatives of that brand will be allowed to serve,
even if the corresponding category of that brand is blocked. The
exception to this rule is if the creative also has
<a href="self-auditing-creatives.html" class="xref"
title="When adding creatives to Xandr, it&#39;s to your advantage to submit each creative to Xandr for human auditing. The manual audit process includes checking technical attributes, sensitive categories, offer category, brand, and language to enable seller protection features on the platform.">sensitive
categories</a> assigned to it; in order to allow those creatives to
serve, you must either ignore ad quality for those sensitive categories
or approve the creatives individually.



As with all deal overrides, by default, the deal will follow the default
ad quality settings. However, for each attribute you can **ignore** the
ad quality settings (use the **Ad Quality Settings** tab available when
you click into Brand,
Categories, or
Languages), **restrict** the deal to
specific attributes (use the Brand,
Categories, or
Language tabs available when you click
into Brand,
Categories, or
Languages), or **restrict and
ignore**: restrict the deal to specific attributes, and also ignore any
existing ad quality settings. The following examples show how to
configure each of these cases.



Note: Technical attributes are slightly
different: you cannot restrict a deal to specific technical attributes,
but you can ignore ad quality settings for them.



Example 1: Ignore ad quality settings for some attributes on a deal

You want deals to use the existing ad quality settings for languages,
but allow any English, Chinese, or Spanish creatives to ignore the ad
quality settings and always serve. From the Deals screen, click
Edit under Language and then click the
Ad Quality Settings tab. All languages
are displayed; for English, Chinese, and Spanish, click
Ignore. All other languages will now
follow the existing ad quality profile for this deal, but English,
Chinese, and Spanish creatives will always be able to serve.

Example 2: Restrict deal to certain attributes

You want to restrict the deal to only use Scandinavian language
creatives. From the Deals screen, click
Edit under Language. On the
Languages tab, select Danish, Swedish,
and Norwegian. Those languages are listed under Selected Languages. Only
creatives in one of those languages will be able to serve in this deal.

Example 3: Restrict deal to certain attributes and ignore ad quality
settings for an attribute

You want to restrict the deal to only use Scandinavian language
creatives, but you also want creatives in Swedish to **ignore** any
other ad quality settings. From the Deals screen, click
Edit under Language. On the Languages
tab, select Danish, Swedish, and Norwegian. Those languages are listed
under Selected Languages as in Example
2. Now click the Ad Quality Settings
tab. For Swedish, click the Ignore
button. Creatives in all three languages will be able to serve in this
deal, but while Danish and Norwegian creatives may be limited by other
ad quality settings, Swedish creatives will ignore any language
settings.

Creative Approval and Blocking

You can also specifically approve or block specific creatives from deals
by typing their creative IDs in the
Approve or
Block fields.



Note: Creatives on the approve list
will always serve, regardless of any other network or publisher ad
quality settings. Similarly, creatives on the block list will never
serve, regardless of any other ad quality settings.



How Overrides Work with Ad Quality Settings

Consider a more complex example: you are creating a deal for toy
manufacturers in Scandinavian countries.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e37__entry__1" class="entry">Requirement</th>
<th id="ID-00000e37__entry__2" class="entry">Ad Quality Setting</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000e37__entry__1">You trust your buyer
and do not want them to have to wait for their new ads to be
approved.</td>
<td class="entry" headers="ID-00000e37__entry__2">In <span
class="ph uicontrol">Trust Level , check Allow Pending
Creatives.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000e37__entry__1">You want your deal
only to serve relevant categories, and for sporting goods, you want any
ads to serve for that category, regardless of network ad quality
settings.</td>
<td class="entry" headers="ID-00000e37__entry__2">Click <span
class="ph uicontrol">Edit under <span
class="ph uicontrol">Creative Category. In <span
class="ph uicontrol">Categories, include Sporting Goods and Toys
and Games. On the Ad Quality Settings
tab, click Ignore for Sporting Goods.
<p>Now we have restricted creatives so that only the listed categories
can serve. Further, Sporting Goods ads can ignore any other
restriction.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000e37__entry__1">You want your deal
only to serve in Scandinavian languages. For Swedish only, you want to
ignore network ad quality settings to permit any ad in that language to
serve.</td>
<td class="entry" headers="ID-00000e37__entry__2">Click <span
class="ph uicontrol">Edit under <span
class="ph uicontrol">Language. In <span
class="ph uicontrol">Languages, include Danish, Norwegian, and
Swedish. On the Ad Quality Settings
tab, click Ignore for Swedish.
<p>We have restricted further: now, only creatives in the allowed
categories and which are in the selected languages can serve. Swedish
language ads can ignore any other restriction that might be set for
those ads.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000e37__entry__1">You want your deal to
include any types of technical attributes, but you want to make sure
audio ads will always serve.</td>
<td class="entry" headers="ID-00000e37__entry__2">Click <span
class="ph uicontrol">Edit under <span
class="ph uicontrol">Technical Attributes. Click <span
class="ph uicontrol">Ignore for the two types of audio ads. (You
cannot restrict technical attributes on a deal.)
<p>Creatives in the allowed categories and languages, and which are
audio, in Swedish, and in the Sporting Goods category will be allowed to
serve despite any other network or publisher level ad quality
setting.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000e37__entry__1">There are two
particular creatives that you know you always want to serve and three
creatives you always want to block.</td>
<td class="entry" headers="ID-00000e37__entry__2">Click <span
class="ph uicontrol">Edit under <span
class="ph uicontrol">Specific Creatives. In Creatives, type the
creative IDs you want to allow in the <span
class="ph uicontrol">Allow box, and the IDs you want to block in
the Block box.
<p>Any creative in the Allow list will serve, regardless of any other
setting.</p>
<p>Any creative in the Block box will not serve, regardless of any other
setting.</p></td>
</tr>
</tbody>
</table>

Related Topics

- <a href="create-a-custom-deal.html" class="xref">Create a Custom
  Deal</a>




