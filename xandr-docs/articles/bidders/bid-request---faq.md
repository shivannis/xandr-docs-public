---
Title : Bid Request - FAQ
Description : <div id="bid-request-faq__section_kcl_wfm_4wb" >
## Aborted Bids
**What does an aborted bid look like?**
The following shows an example of an aborted bid on a given connection,
since only one bid request can be out on a given connection at a time:
Time 0 ms: bid request 1 sent to your bidder
Time 1 ms: bid request 2 queued
Time 1.5 ms: bid request 3 queued
---


# Bid Request - FAQ



<div id="bid-request-faq__section_kcl_wfm_4wb" >

## Aborted Bids

**What does an aborted bid look like?**

The following shows an example of an aborted bid on a given connection,
since only one bid request can be out on a given connection at a time:

Time 0 ms: bid request 1 sent to your bidder

Time 1 ms: bid request 2 queued

Time 1.5 ms: bid request 3 queued

Time 99: bid response 1 received

Time 100: bid request 2 sent

Time 102: bid request 3 aborted because it timed out before the request
was sent.



<div id="bid-request-faq__section_jx4_yfm_4wb" >

## Ad Quality

**How does the bid request specify which brands, buying members,
technical attributes etc. are not allowed in the bid response?**

Blocked categories are sent in the bid request in the `bcat` field.
(Note that the list in this field will contain only IAB categories, not
Xandr categories.) Blocked domains are sent in the bid request `badv`
field. (See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Outgoing Bid Request to Bidders</a> for
more details on `bcat` and `badv`.) These two fields are the only fields
supported by OpenRTB for blocked content. Other eligibility requirements
will be determined based on the hierarchy of rules and auction
mechanics. (This often involves multiple rules conditioned on a number
of distinct factors, so we do not expect a bidder to be able to
replicate this complexity in determining the eligible creatives.) We
allow for multiple bid responses (see <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-response---faq.html"
class="xref" target="_blank">Bid Response - FAQ</a>), in which you can
submit your top bid responses. Xandr will automatically determine the
creative with the highest eligible CPM.



<div id="bid-request-faq__section_lf1_bgm_4wb" >

## Data Format

**What is the format of the country in the bid_request?**

The country is based on the ISO 3166-1 Alpha-3 code. The mappings can be
found in the Alpha-3 code column in the
<a href="https://www.iso.org/obp/ui/#search" class="xref"
target="_blank">ISO Online Browsing Platform</a>.

**Where can I find the DMA in the bid_request?**

The designated market area (DMA) is sent in the `geo.metro` field and is
determined based on the user's IP address.

**Where can I find the postal code in the bid_request?**

The postal code is sent in the `geo.zip` field.



<div id="bid-request-faq__section_ugd_cgm_4wb" >

## Multi-Tag Auctions

**How are multi-tag auctions handled in the bid request?**

The <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Request</a> will generally be for a
single tag. We sometimes send "multi-tag bid requests" where one bid
request may include multiple tag IDs with potentially different sizes,
ad quality standards, reserve prices, etc. These requests should be
handled with individual responses for each tag as if they were
independent requests.

Each individual tag in a multi-tag request has a unique auction ID. Your
bid response may include responses for as many of the tags as you would
like, but you must specify the corresponding auction IDs. See <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Bid Response</a> for more details.



<div id="bid-request-faq__section_z4w_ggm_4wb" >

## Legacy Protocol Information

The following FAQs apply only Xandr's legacy bidding protocol and
OpenRTB 2.0 Bidding Protocol. **These protocols have been deprecated.**
Xandr currently supports the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bid-request---faq.html#"
class="xref" target="_blank">OpenRTB 2.4 bidding protocol</a>.

**Why are there two "inventory_audits" objects in the bid request, one
in the "bid_info" and another in the "tag_info"?**

There are two types of inventory audits that can be applied to an
impression: 1) Xandr's platform audit and 2) seller self-classification.
The "inventory_audits" under the "bid_info" section contains Xandr's
platform audit. The "inventory_audits" under the "tag_info" section
contains the seller self-classification. The reason they are in
different locations is because the platform audit is determined by the
site domain of the referrer URL that comes through on the bid request
and is assigned dynamically to each impression, whereas the seller
self-classification is applied on a tag-by-tag basis and is entered into
our backend.

**What is the format of the country in the bid_request?**

The country is the two-letter country code. The mappings can be found
under the Alpha-2 code in the
<a href="https://www.iso.org/obp/ui/#search" class="xref"
target="_blank">ISO Online Browsing Platform</a>.

**What is the format of the DMA in the bid_request?**

The DMA is a number. You'll need to email
<a href="mailto:mediaprospects@nielsen.com" class="xref"
target="_blank">The Nielsen Company</a> for DMA information.

**What is the format of the postal code in the bid_request?**

The postal code is a Xandr ID corresponding to a postal code in a
specific country.

**How do I determine the creative attributes the seller does not
allow?**

To check the creative attributes that the seller will not allow on an
impression, use the following fields in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Request</a>:

- `excluded_adservers `
- `excluded_brands`
- `excluded_languages`
- `excluded_categories`
- `excluded_creatives`
- `excluded_technical_attributes`






