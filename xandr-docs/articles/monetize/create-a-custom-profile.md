---
Title : Create a Custom Profile
Description : A Custom Ad Quality Profile contains a collection of ad quality settings
for one publisher. You can create a Custom Profile from scratch or you
---


# Create a Custom Profile



A Custom Ad Quality Profile contains a collection of ad quality settings
for one publisher. You can create a Custom Profile from scratch or you
can use an existing
<a href="create-a-publisher-template.html" class="xref">publisher
template</a> as a starting point. If you base your Custom Profile off of
an existing template, keep in mind that future changes to that template
will not be applied to the Custom Profile. Use a Custom Profile if you
want to maintain unique ad quality settings for one publisher.

<div id="ID-000027d8__section-0b5b075d-2299-4462-b228-ed2ee2335638"
>

## Step 1. Create or Update a Base or Conditional Rule

To create a new Custom Profile, select
Publishers
 \>  Ad Quality from the
top navigation menu. This will take you to the Publisher Ad Quality
screen. To edit an existing rule, click on a rule from the list at the
upper left-hand side of the screen. When the rule is highlighted, click
the Full Edit button on the lower
right. To create a new rule, follow the directions in
<a href="create-publisher-ad-quality-rules.html" class="xref">Create
Publisher Ad Quality Rules</a>.

In the rule editing dialog that appears, under
Profile Kind, click
Custom. If you don't want to base this
rule off an existing template, uncheck the **Copy settings from a
template?** checkbox. If this checkbox is checked, you'll be able to
base this Custom Profile on one of your available Publisher Templates.
Note that updates to a Publisher Template are not applied to Custom
Profiles inheriting from that template, since Custom Profiles are used
to maintain a single publisher's ad quality. If you would like to create
ad quality settings that can be applied to more than one publisher, see
<a href="create-a-publisher-template.html" class="xref">Create a
Publisher Template</a>.

Click Save to update your settings.

After saving, you'll return to the Publisher
Ad Quality screen. Note that your currently highlighted rule is
now marked as "Custom".



<div id="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11"
>

## Step 2. Determine which creatives are eligible to serve on your inventory

You can determine which creatives will be eligible to serve on your
inventory based on one or more of the following attributes:

- <a
  href="create-a-custom-profile.html#ID-000027d8__p-dba57d48-5742-4acd-bd44-82ae97e5d440"
  class="xref">Bidders</a>
- <a href="create-a-custom-profile.html#ID-000027d8__p_u2z_jzk_ckb"
  class="xref">Buyers</a>
- <a href="create-a-custom-profile.html#ID-000027d8__p_tf4_kzk_ckb"
  class="xref">Categories</a>
- <a href="create-a-custom-profile.html#ID-000027d8__p_flv_kzk_ckb"
  class="xref">Technical Attributes</a>
- <a href="create-a-custom-profile.html#ID-000027d8__p_uj2_21l_ckb"
  class="xref">Brands</a>
- <a href="create-a-custom-profile.html#ID-000027d8__p_myc_lzk_ckb"
  class="xref">Languages</a>
- <a href="create-a-custom-profile.html#ID-000027d8__ID-00002892"
  class="xref">Ad Servers</a> (Not available to all customers)

**Bidders**

You can manage bidders and individual bidder seats that serve on your
inventory by defining trust level settings here. Choose from

<table id="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a"
class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__1"
class="entry">Trust Level</th>
<th
id="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__1">Standard</td>
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__2">Apply
ad quality standards, require platform audit.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__1">Medium</td>
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__2">Apply
ad quality standards, trust buyer self-classification.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__1">High</td>
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__2">Bypass
ad quality standards, require platform audit.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__1">Maximum</td>
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__2">Bypass
ad quality standards, do not require platform audit.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__1">Banned</td>
<td class="entry"
headers="ID-000027d8__table-5dacbe2b-64ad-4743-b9c2-63f2cb97222a__entry__2">Ban
all creatives from this buyer.</td>
</tr>
</tbody>
</table>

<div id="ID-000027d8__p-bcdcaad3-9e18-427b-9fd6-6f995c6f01a5" >

The bidders and their seats are mapped to the existing buyer IDs, and
all trust settings are inherited by both. Updating trust settings to
either one of the sections (Buyers or Bidders) will update trust
settings for the same bidder or seat in both sections.

<div id="ID-000027d8__note-a37c50d0-9ebf-4569-a828-65e3cc8a11fa"


Note: Updating the trust level for
Bidders will apply the same trust level to all Seats. However, Bidder
trust can be overridden by updating Seat-level trust settings from
Use Bidder to another trust level.





The default trust setting for Bidders is inherited from the Buyers
section and any adjustments to the trust settings should be made in the
Buyer’s section. To know more about Buyer Seat IDs, see: <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/understanding-buyer-seat-ids.html"
class="xref" target="_blank">Understanding Buyer Seat IDs</a>

**Buyers**

In the Buyers section, click the
Edit button. You'll be presented with
a dialog where you can edit the trust level associated with individual
buying members. The buyer trust levels and their descriptions are as
follows:

<table class="table">
<thead class="thead">
<tr class="header row">
<th
id="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__13"
class="entry">Trust Level</th>
<th
id="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__14"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__13">Standard</td>
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__14">Apply
ad quality standards, require platform audit.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__13">Medium</td>
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__14">Apply
ad quality standards, trust buyer self-classification.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__13">High</td>
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__14">Bypass
ad quality standards, require platform audit.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__13">Maximum</td>
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__14">Bypass
ad quality standards, do not require platform audit.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__13">Banned</td>
<td class="entry"
headers="ID-000027d8__section-ffa8c489-2d3d-42ee-bfdb-21ec1eb7bb11__entry__14">Ban
all creatives from this buyer.</td>
</tr>
</tbody>
</table>

**Categories**

Depending upon the category the creative falls into, you may choose to
mark it as:

- **Eligible**: The creative will serve.
- **Banned**: The creative will not serve.
- **Default**: Reuse the default settings (i.e., mark as **Eligible**).

**Technical Attributes**

You may allow or disallow certain creatives based upon technical
attributes such as whether the creative is an expandable, or whether it
plays audio. Choose from:

- **Eligible**: The creative will serve.
- **Banned**: The creative will not serve.
- **Default**: Reuse the default settings (i.e., mark as **Eligible**).

**Brands**

There may be creatives associated with certain brands that you would
prefer don't serve on your inventory. You can define those settings
here. Choose from:

- **Eligible**: The creative will serve.
- **Banned**: The creative will not serve.
- **Default**: Reuse the default settings (i.e., mark as **Eligible**).

You can enter a list of brands with the **Bulk Search** option.

You can also filter and show only those brands that are new in the last
7 days.

**Languages**

Your inventory may interest users who speak certain languages; you can
choose to allow creatives using those languages here. You may also
exclude creatives using certain languages. Choose from:

- **Eligible**: The creative will serve.
- **Banned**: The creative will not serve.
- **Default**: Reuse the default settings (i.e., mark as **Eligible**).

**Ad Servers**

You can choose to serve only those creatives that are hosted on a
specific set of ad server domains. All ad servers are eligible by
default. If you want to allow or ban creatives based on the ad server
called by that creative, click Edit
under Ad Servers. This will take you
to the Ad Server screen. See
<a href="ad-server-settings.html" class="xref">Ad Server Settings</a>
for information on using the Ad Server
screen to create collections of eligible or banned ad servers.



<div id="ID-000027d8__section-da9b988f-0128-4b27-a918-5e8220b278b9"
>

## Step 3. Apply frequency caps to attributes

You can apply per-user frequency caps to particular creatives based on
one or both of the following attributes:

- **Sensitive Categories**: The creative may belong to a sensitive
  category such as "Dating" or "Politics".
- **Technical Attributes**: The creative may have undesirable technical
  attributes, such as whether it plays audio.

By default frequency caps are turned off, in which case you'll see
No limit per user in the upper right
corner of the section. To change this, click
No limit per user. (If frequency caps
have already been set, this area will show the frequency, such as **2
imps per day**, rather than **No limit per user**.) This will expand an
area where you can set the frequency caps for the attributes and
categories to which they're applied.

For more information on frequency caps, see
<a href="frequency-and-recency-caps.html" class="xref"
title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
and Recency Caps</a>.



<div id="ID-000027d8__section-986e196f-78ec-4d00-b2ba-0ec565b2be59"
>

## Related Topics

- <a href="working-with-publisher-ad-quality.html" class="xref">Working
  with Ad Quality</a>
- <a href="explore-publisher-ad-quality.html" class="xref">Explore
  Publisher Ad Quality</a>
- <a href="create-publisher-ad-quality-rules.html" class="xref">Create
  Publisher Ad Quality Rules</a>
- <a href="base-and-conditional-rules.html" class="xref">Base and
  Conditional Rules</a>
- <a href="network-ad-quality-screen.html" class="xref">Network Ad Quality
  Screen</a>
- <a href="update-your-network-profile.html" class="xref">Update Your
  Network Profile</a>
- <a href="create-a-publisher-template.html" class="xref">Create a
  Publisher Template</a>
- <a href="ad-quality-order-of-operations.html" class="xref">Ad Quality
  Order of Operations</a>






