---
Title : Understanding Bid Rejections
Description : There are many reasons a bid might be rejected. Rejected bids show up on
---


# Understanding Bid Rejections



There are many reasons a bid might be rejected. Rejected bids show up on
the Deals screen in the
**Ineligible Bids** column and are
shown in greater detail in the
Rejections section of the
Deal Details screen. The
Bid Rejections table lists out error
IDs you might encounter when a bid is rejected, the cause of the errors,
and what actions buyers and/or sellers should take to resolve these
errors.





Important: **About Impbus Error IDs,
Error Messages, and Bid Rejection Reasons**

Each bid rejection reason has a distinct error ID or set of error IDs
connected to it. The **Impbus Error ID** shows up as a validation in the
Impbus API and in the API and UI Bid Error Report. The **Error Message**
shows up in the Bid Error Reports as well as in the
Rejections section of the
Deal Details screen.





<table class="table">
<caption><span class="table--title-label">Table 1. <span
class="title"><strong>Bid Rejections</strong></caption>
<thead class="thead">
<tr class="header row">
<th id="ID-00000d2d__entry__1" class="entry"><strong>Impbus Error
ID</strong></th>
<th id="ID-00000d2d__entry__2" class="entry"><strong>Error
Message</strong></th>
<th id="ID-00000d2d__entry__3" class="entry"><strong>Owner</strong></th>
<th id="ID-00000d2d__entry__4" class="entry"><strong>What's Causing
It?</strong></th>
<th id="ID-00000d2d__entry__5" class="entry"><strong>Resolution for
seller</strong></th>
<th id="ID-00000d2d__entry__6" class="entry"><strong>Resolution for
buyer</strong></th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">410</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative ad server is
blocked by Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The seller's ad
quality is set to ban an ad server associated with the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the brand ban is desired and then modify their ad quality
rules accordingly.
<p>The seller should notify the buyer that they are blocking an ad
server associated with the buyer's creative.</p></td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking the
buyer's creatives, due to the ad servers those creatives call.
<p>The buyer should adjust their creatives to exclude ad server calls
that the seller has blocked.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">10-16, 50-55, 60-64,
102, 103, 105, 201-205, 207-211, 301, 302, 308, 309, 1000-10002</td>
<td class="entry" headers="ID-00000d2d__entry__2">Bidder error</td>
<td class="entry" headers="ID-00000d2d__entry__3">Demand Partner</td>
<td class="entry" headers="ID-00000d2d__entry__4">The bidder is causing
an error. The issue may be one of the following:
<ul>
<li>Request timed out</li>
<li>Request throttled or aborted</li>
<li>Connection error</li>
<li>Invalid HTTP response code</li>
<li>JSON parsing error</li>
<li>XML parsing error</li>
<li>Bid response parsing error</li>
<li>No ad tag in response</li>
<li>No actions tag in response</li>
<li>No impurl tag in response</li>
<li>No click action in response</li>
<li>No assets tag in response</li>
<li>Incorrect creative format in response</li>
<li>Response too long</li>
<li>No price received from bidder</li>
<li>No creative ID received from bidder</li>
<li>Invalid creative landing page received from bidder</li>
<li>No drop log URL received from bidder</li>
<li>Creative ID was not found</li>
<li>Creative ID is malicious</li>
<li>Creative ID does not belong to bidding member.</li>
<li>Auction ID does not match request</li>
<li>No member ID sent in response</li>
<li>Inactive bidding member</li>
<li>Member has no contract</li>
<li>Member over pacing or credit limit</li>
<li>Exclusive bid from non-owning bidder</li>
<li>Bid from member not associated to bidder</li>
<li>Roadblock bid from non-owning member</li>
<li>Member is not eligible to bid</li>
<li>Member is not eligible to bid without deals</li>
<li>No price set on non-exclusive bid response</li>
<li>Bid from member specifies an invalid currency</li>
<li>Deal is not available for auction</li>
<li>Deal is not available to buying member</li>
<li>No elgible members included in the bid response</li>
<li>Bidder not available</li>
<li>No bid URI set</li>
</ul></td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
contact the demand partner to notify them that they are experiencing
problems with their bidder.</td>
<td class="entry" headers="ID-00000d2d__entry__6">N/A</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">123</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative is blocked by
advertiser exclusions</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">There are competitive
exclusions set on the auction and the creative bidding is not allowed to
serve on the same page as a creative already chosen.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
review their competitive exclusions policy and determine if they should
be adjusted.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that they are seeing significant bid rejections due to
advertiser exclusions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">144</td>
<td class="entry" headers="ID-00000d2d__entry__2">Video creative and tag
failed error rate check</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The creative bid was
rejected because the creative has a historically high VAST error rate on
this tag.</td>
<td class="entry" headers="ID-00000d2d__entry__5">N/A</td>
<td class="entry" headers="ID-00000d2d__entry__6">Buyer should
investigate why creative has high occurrence of VAST errors in which the
VAST creative does not render in the specific tag environment. They can
pull VAST error report from their own systems (if available) or file a
support ticket for Xandr to pull a video error
report.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">318</td>
<td class="entry" headers="ID-00000d2d__entry__2">Deal %d bans segment
adds on view</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">Creative should not
fire a segment add pixel.</td>
<td class="entry" headers="ID-00000d2d__entry__5"></td>
<td class="entry" headers="ID-00000d2d__entry__6">Buyer should ensure
that the creative does not have a segment add pixel action.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">319</td>
<td class="entry" headers="ID-00000d2d__entry__2">Deal %d bans segment
adds on click</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">Creative should not
fire a segment add on click.</td>
<td class="entry" headers="ID-00000d2d__entry__5"></td>
<td class="entry" headers="ID-00000d2d__entry__6">Buyer should ensure
that the creative does not have a segment add pixel action.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">304, 306, 310,</td>
<td class="entry" headers="ID-00000d2d__entry__2">Bid is blocked by
yield management floor</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The buyer is bidding
below a yield management floor. This may be because the buyer is not
taking fees into account.
<p>This may also mean the buyer is bidding an amount low enough to
provide a negative revenue share to the seller.</p></td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
contact the buyer and discuss their bidding strategy, and explain that
they're bidding below a deal floor.
<p>The seller may want to consider altering their yield management floor
rules.</p></td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should make
sure that they are bidding high enough to be above all yield management
floors, net fees.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">311</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative is blocked by
deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow the creative's brand.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting is set up properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's deal settings are blocking their
creatives' brands.
<p>The buyer should adjust their brand settings to not serve creatives
associated with brands the seller has blocked.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">408</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative brand is
blocked by Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">The seller's ad
quality is set to ban the brand of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the brand ban is desired and then modify their ad quality
rules accordingly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking their
creatives' brands.
<p>The buyer should adjust their brand settings to not serve creatives
associated with brands the seller has blocked.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">403</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative brand is
blocked by Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">The seller's ad
quality is set to ban the buying member.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the brand ban is desired and then modify their ad quality
rules accordingly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking the
buyer.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">325</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative category is
blocked by deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow the category of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting is set up properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's deal settings are blocking their
creatives' category. The buyer and seller should investigate which
categories are being blocked.
<p>The buyer should adjust their creative settings to not serve
creatives associated with categories the seller has blocked.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">407, 420</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative category is
blocked by Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">The seller's ad
quality is set to ban the buying member. This could be either because
the category is explicitly banned, or because the category needs to be
in an allowlist.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the category ban is desired and then modify their ad
quality rules accordingly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking their
creatives' category. The buyer and seller should investigate which
categories are being blocked.
<p>The buyer should adjust their creative settings to not serve
creatives associated with categories the seller has blocked.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">324</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative is blocked by
deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The specific creative
is blocked on the deal.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the creative block is desired, and contact the buyer to
share their decision.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller is blocking one or more of their
creatives on the deal. The buyer and seller should investigate which
creatives are being blocked.
<p>The buyer should adjust their line item
targeting the deal to not bid with creatives the seller has
blocked.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">404</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative is blocked by
Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">Seller's ad profile is
set to ban the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the creative ban is desired and then modify their ad
quality rules accordingly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking the
buyer's creative.
<p>The buyer should target the deal with creatives that are not
blocked.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">405</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative ID is blocked
by auditing</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The buyer is bidding
with an unaudited creative. The seller has blocked unaudited creatives
in ad quality</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the unaudited creative ban is desired and modify their ad
quality rules accordingly. Otherwise, the seller should contact the
buyer to ensure their creative is audited by <span
class="ph">Xandr.</td>
<td class="entry" headers="ID-00000d2d__entry__6">If serving unaudited
creatives is desired, the buyer should notify the seller that the seller
is blocking their unaudited creatives.
<p>Otherwise, the buyer should check their creative settings to ensure
that their creatives are audited by <span
class="ph">Xandr.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">326</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative media subtype
is blocked by deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow the media subtype of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting is set up properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's deal settings are blocking the media
subtypes of the buyer's creatives.
<p>The buyer should change their creatives to not include media subtypes
the seller has blocked.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">104</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative is not
approved for SSL</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The buyer is bidding
with a non-ssl-approved creative for a secure auction.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
contact the buyer and ask them to add a secure creative for use on sites
requiring SSL.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should add
secure creatives to their line item targeting
the deal, for use on sites requiring SSL.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">312</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative size is
blocked by deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow the size of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting is set up properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the deal is blocking their creatives due to their
size.
<p>The buyer should adjust their line item
targeting the deal to include creatives in the allowed sizes.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">308, 309</td>
<td class="entry" headers="ID-00000d2d__entry__2">Deal ID is
unavailable</td>
<td class="entry" headers="ID-00000d2d__entry__3">Demand Partner</td>
<td class="entry" headers="ID-00000d2d__entry__4">There are two
possibilities here:
<p>(A) The bid in the bid response has an incorrect deal ID.</p>
<p>(B) The bid in the bid response has a buyer member not associated
with the deal.</p></td>
<td class="entry" headers="ID-00000d2d__entry__5">Depending on the
reason for this error, there are two possible resolutions:
<p>(A) The seller should notify the demand partner that their deal
targeting is having problems.</p>
<p>(B) The seller should check if the deal is set up with the
appropriate demand partner, and confirm with the demand partner that the
deal is set up properly.</p></td>
<td class="entry" headers="ID-00000d2d__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">310</td>
<td class="entry" headers="ID-00000d2d__entry__2">Bid is blocked by deal
floor</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The bid is below the
deal floor. This may be because the buyer is not taking fees into
account.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
contact the buyer and discuss their bidding strategy, and explain that
they're bidding below the deal price.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should make
sure that they are bidding high enough to be above the deal price, net
fees.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">106-122, 124, 125,
313-317, 320, 329-333,</td>
<td class="entry" headers="ID-00000d2d__entry__2">Invalid creative</td>
<td class="entry" headers="ID-00000d2d__entry__3">Demand Partner</td>
<td class="entry" headers="ID-00000d2d__entry__4">An invalid creative
has been received from the bidder. The issue may be one of the
following:
<ul>
<li>Creative size doesn't match tag size</li>
<li>Creative not in VAST format</li>
<li>Creative doesn't include VAST media subtype for VAST tag</li>
<li>Creative has VAST media subtype for non-VAST tag</li>
<li>Flash creative returned for user that doesn't have flash</li>
<li>Creative format not allowed by site</li>
<li>Creative click action not allowed by site</li>
<li>Creative has invalid media type</li>
<li>Creative initiates pop</li>
<li>Creative has no click URL</li>
<li>Creative has no landing page URL</li>
<li>Creative is banned by bid request</li>
<li>Creative has an inactive or nonexistant CCRT</li>
<li>Creative has no content JS in template for JS tag</li>
<li>creative has no content JS or HTML in template for iframe tag</li>
<li>Creative has no content XML in template for VAST tag</li>
<li>Creative has format not allowed by seller</li>
<li>Creative does not have valid MIME type</li>
<li>Creative ID is suspicious</li>
<li>Creative has unsupported video attribute</li>
<li>Creative duration is below minimum duration, or exceeds maximum
duration</li>
<li>Creative is missing a linear element required for VAST</li>
<li>Creative is missing a video_attributes object</li>
<li>Creative has an unsupported video framework</li>
<li>Creative doesn't have a valid bitrate</li>
<li>Creative has creative_video_attribute with vast_type unrecognized by
impbus</li>
<li>Creative is missing creative_vast_inline required for VAST</li>
<li>Creative is missing creative_vast_inline_linear required for
VAST</li>
<li>Creative is missing creative_vast_inline_linear media_files required
for VAST</li>
</ul></td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
notify the demand partner that they're having problems with their
creatives.</td>
<td class="entry" headers="ID-00000d2d__entry__6">N/A</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">322</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative language is
blocked by deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow the language of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting is set up properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's deal settings are blocking the
creative's language.
<p>The buyer should adjust their brand settings to not serve creatives
with languages the seller has blocked.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">409</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative language is
blocked by Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">The seller has blocked
the creative's language in ad quality.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the language ban is desired and then modify their ad
quality rules accordingly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking the
creative's language.
<p>The buyer should adjust their brand settings to not serve creatives
with languages the seller has blocked.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">327</td>
<td class="entry" headers="ID-00000d2d__entry__2">Payment type is
blocked by deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow the payment type of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting is set up properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's deal settings are blocking the
payment type of the buyer's creatives.
<p>The buyer should confirm that their creatives and deal targeting are
set up properly.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">323</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative technical
attribute blocked by deal</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The deal does not
allow a technical attribute of the creative.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
check if the deal is set up properly. Then the seller should confirm
with buyer that their deal targeting and creatives are set up
properly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's deal settings are blocking some
technical attributes of the buyer's creatives.
<p>The buyer should change their creatives to not include technical
attributes the seller has blocked.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">406</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative technical
Attribute is blocked by Ad Profile</td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller</td>
<td class="entry" headers="ID-00000d2d__entry__4">The seller has blocked
a creative's technical attribute in ad quality.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller should
determine if the technical attribute ban is desired and then modify
their ad quality rules accordingly.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer should
notify the seller that the seller's ad quality rules are blocking some
technical attributes of the buyers' creatives.
<p>The buyer should change their creatives to not include technical
attributes the seller has blocked.</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1">345</td>
<td class="entry" headers="ID-00000d2d__entry__2">Creative adserver is
banned on deal.</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4"></td>
<td class="entry" headers="ID-00000d2d__entry__5"></td>
<td class="entry" headers="ID-00000d2d__entry__6">Buyer should change
the creative, or contact the Seller for an exception.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">347</td>
<td class="entry" headers="ID-00000d2d__entry__2"><p>Bid blocked by
Yield Management Floors.</p></td>
<td class="entry" headers="ID-00000d2d__entry__3">Seller/Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The bid was blocked
due to the floor configured by Yield Management Floors configured in
Xandr Curate or the floor sent in the bid
request to Xandr.</td>
<td class="entry" headers="ID-00000d2d__entry__5">The seller could
consider lowering the floor to increase the number of eligible bids in
the auction.</td>
<td class="entry" headers="ID-00000d2d__entry__6">The buyer could
consider increasing their bids to increase the number of bids that are
eligible in the auction.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000d2d__entry__1"><p>417</p></td>
<td class="entry" headers="ID-00000d2d__entry__2"><p>Ad profile contains
brand or category restrictions, and dynamic brand is unknown.</p></td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The brand or category
of the creative is unknown, and the seller’s ad quality profile includes
at least one brand or category block.</td>
<td class="entry" headers="ID-00000d2d__entry__5"><ul>
<li>Seller can remove the brand or category restrictions in their ad
quality rules to allow these creatives.</li>
<li>For the seller to fix the issue, they should remove brand/language
restrictions or contact the buyer to fix the issue.</li>
</ul></td>
<td class="entry" headers="ID-00000d2d__entry__6"><p>Buyer should ensure
to send a valid brand URL in the bid response.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000d2d__entry__1">418</td>
<td class="entry" headers="ID-00000d2d__entry__2">Ad profile contains
language restrictions, and dynamic language is unknown.</td>
<td class="entry" headers="ID-00000d2d__entry__3">Buyer</td>
<td class="entry" headers="ID-00000d2d__entry__4">The language of the
creative is unknown, and the seller’s ad quality profile includes at
least one language block.</td>
<td class="entry" headers="ID-00000d2d__entry__5">Seller can remove the
language restrictions in their ad quality rules to allow these
creatives.</td>
<td class="entry" headers="ID-00000d2d__entry__6"><p>Buyer should ensure
to send a valid language value in their bid response.</p></td>
</tr>
</tbody>
</table>

<span class="table--title-label">Table 1.
<span class="title">**Bid Rejections**




