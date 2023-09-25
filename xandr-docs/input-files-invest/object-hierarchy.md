---
Title : Object Hierarchy
Description : This page introduces the main objects that you work with to buy media.
---


# Object Hierarchy



This page introduces the main objects that you work with to buy media.

Buy-Side Hierarchy

![Ali Buy Side Object Hierarchy](media/ali-buy-side-object-hierarchy.png)


Member

The <a href="network-guide.md" class="xref"><span
class="ph">Member</a> represents your account as a whole. At this
level, you decide who's eligible to sell to you and what level of
inventory audit you require, you create lists of domains and apps for
efficient allowlist or blocklist targeting in campaigns, you put in
place a cap on how much you are willing to spend per day on third-party
inventory, and more.

Advertiser

An <a href="working-with-advertisers.md" class="xref">advertiser</a>
represents a single client or brand on whose behalf you want to serve
ads on web and/or mobile inventory. At this level, you set the defaults
to use in some of the objects under the advertiser (e.g., default
currency, time format, time zone), a brand and offer category to apply
to all creatives under the advertiser, and more.

You can have many advertisers in your network.

Insertion Order

An <a href="working-with-insertion-orders.md" class="xref">insertion
order</a> represents a financial agreement you have with your advertiser
that specifies what they would like you to execute. The insertion order
contains information such as the total budget an advertiser allocates to
you for a period of time, or which third party verification the
advertiser utilizes. Insertion orders also allow you to group line items
accordingly.

You can have many insertion orders under a single advertiser.

Line Item

The
<a href="working-with-line-items.md" class="xref">line item(s)</a>
under an advertiser or insertion order represent the agreed upon
strategies you will be executing for the advertiser. It contains
information that the advertiser specifies, such as how much your
advertiser has budgeted toward an offering, or which targeting the
advertiser requires.

You can have many line items under a single advertiser or insertion
order.

Creative

A <a href="exploring-creatives.md" class="xref"
title="You can work with creatives from the Creative Manager screen. From there you can view the creatives that are associated to a particular advertiser as well as add and update creatives.">creative</a>
is an actual ad, hosted either by Xandr or by a
third-party ad server. The Xandr platform
enables you to traffic a wide range of
<a href="add-creatives-in-bulk.md" class="xref"
title="You can add multiple third-party, hosted, and native creatives to the Creative Manager simultaneously by either uploading a spreadsheet or the creative files directly from your computer. Only secure content is supported.">creative
types</a>, from banners to rich media types like interstitials
and expandables.

Creatives belong to a specific advertiser. You can associate each
creative to many line items under an advertiser.

Segment Pixel

A <a href="working-with-segments.md" class="xref">segment pixel</a> is
placed on web pages to collect data about users, such as pages they
visit, actions they take, or qualities such as gender, location, and
wealth. When a segment pixel fires, the user is added to a segment,
which can later be targeted in campaigns to attempt to reach the user
again (retargeting).

Segment pixels belong either to the entire network or to a specific
advertiser. Member-level segments are available
for targeting in all line items under all
advertisers. Advertiser-level segments are available for targeting only
in line items under that specific advertiser.

Conversion Pixel

A
<a href="working-with-conversion-pixels.md" class="xref">conversion
pixel</a> is placed on web pages to track user actions in
response to an advertiser's creatives, such as registering at a site or
making a purchase. When a conversion pixel fires,
Xandr determines if the conversion (the
registration, the purchase, etc.) can be "attributed", or tied to the
user clicking on or viewing one of the advertiser's creatives
previously(<a href="conversion-attribution.md" class="xref">conversion
attribution</a>).

You can have many conversion pixels under a single advertiser. You
associate each conversion pixel to many line items.

Third-Party Creative Pixel

A
<a href="create-a-third-party-network-pixel-for-your-creatives.md"
class="xref"
title="You can create third-party creative pixels at the advertiser level and then apply these pixels to some or all display creatives under that Member.">third-party
creative pixel</a> is used to trigger a third-party action when a
creative is served, for example, performing ad verification, collecting
data about the creative, or applying an AdChoices icon.

You can have third-party pixels at the network, advertiser, or creative
levels. Defining these pixels at the network and advertiser levels lets
you save time by applying pixels to creatives across the network or
advertiser rather than one-by-one and helps you avoid the repeat
auditing of creatives.

Impression Tracker

An
<a href="create-an-impression-tracker.md" class="xref">impression
tracker</a> is used to track impressions associated with
creatives that are hosted by off-platform
(non-Xandr) ad servers. This is done by
attaching the tracker as a "piggyback pixel" on the externally hosted
creative.

You can have many impression trackers under a single advertiser.

Click Tracker

A
<a href="create-a-click-tracker.md" class="xref">click tracker</a>
is used to track clicks associated with creatives that are hosted by
off-platform (non-Xandr) ad servers. This is
done by attaching the tracker as a "piggyback pixel" on the externally
hosted creative.

You can have many click trackers under a single advertiser.




