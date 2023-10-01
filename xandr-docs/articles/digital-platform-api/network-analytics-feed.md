---
Title : Network Analytics Feed
Description : The Network Analytics Feed offers you extensive data on your network's
buy-side and sell-side performance. The `report_type` for this feed is
---


# Network Analytics Feed





The Network Analytics Feed offers you extensive data on your network's
buy-side and sell-side performance. The `report_type` for this feed is
`network_analytics_feed`.



Note: How to fetch this feed

For instructions on how to fetch this feed, see the example on the <a
href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
class="xref" target="_blank">Bulk Reporting Feeds</a> page.







**Data Retention Period**

This report's data is retained for 30 days, and is available at an
hourly time granularity.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="network-analytics-feed__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="network-analytics-feed__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="network-analytics-feed__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="network-analytics-feed__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">2010-02-01 06:00:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The year, month, day, and
hour of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">2010-02-01</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The year, month, and day of
the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">2010-02</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The year and month of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">adjustment_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">890</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the adjustment used
to make changes to booked revenue and media cost values.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the advertiser. If
the value is <code class="ph codeph">0</code>, either the impression was
purchased by third-party buyer, or a default or PSA was shown.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">advertiser_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">789</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">This field returns the same
value as <code class="ph codeph">advertiser_id</code>. To map the ID to
the external code for the advertiser, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/lookup-service.html"
class="xref" target="_blank">Lookup Service</a>. If the value is <code
class="ph codeph">0</code>, the impression was purchased by third-party
buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">advertiser_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The currency of the
advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">bid_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Manual"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">
The optimization phase the node was in when it bid for this impression.

Note: The term "give up" is appended to
the bid types below if the valuation for that impression falls below the
venue's "give up price".

For more information, see <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/what-is-a-venue.html"
class="xref" target="_blank">What is a Venue?</a> and <a
href="https://docs.xandr.com/bundle/monetize_monetize-standard/page/topics/give-up-price.html"
class="xref" target="_blank">Give Up</a> in the UI documentation.
Allowed values:

<ul>
<li><code class="ph codeph">"Manual"</code>: Applies when you are
bidding with a CPM goal, whether it's Base, EAP, or ECP.</li>
<li><code class="ph codeph">"Learn"</code>: Applies when you are bidding
with optimization (CPA, CPC, or margin) and we do not yet have enough
data to bid optimized.</li>
<li><code class="ph codeph">"Optimized"</code>: Applies when you are
bidding with optimization (CPA, CPC, or margin) and we have enough data
to bid optimized.</li>
<li><code class="ph codeph">"Unknown"</code>: The node was in an unknown
optimization phase.</li>
<li><code class="ph codeph">"Optimized give up"</code></li>
<li><code class="ph codeph">"Learn give up"</code></li>
<li><code class="ph codeph">"Manual give up"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the buying member.
If the impression was not purchased, this field shows one of the
following values: <code class="ph codeph">229</code> = PSA, <code
class="ph codeph">0</code> = Blank, or <code
class="ph codeph">319</code> = Default.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">buyer_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Real Time"</code>, <code
class="ph codeph">"Direct"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The type of media purchased
by the buyer member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">222</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the campaign.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">50</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the creative. For
external click or impression trackers, this will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>. For <code
class="ph codeph">imp_type</code> = 6, no information is available in
the <code class="ph codeph">creative_id</code> field for this report.
See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/seller-brand-review-report.html"
class="xref" target="_blank">Seller Brand Review Report</a>
instead.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">creative_frequency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"15-30 minutes"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4"><strong>Deprecated.</strong>
If you request this dimension, only a default value will be returned.
Please use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-creative-frequency-and-recency.html"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a> report to view creative frequency data.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">creative_recency_bucket</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"11-20"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4"><strong>Deprecated.</strong>
If you request this dimension, only a default value will be returned.
Please use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/network-creative-frequency-and-recency.html"
class="xref" target="_blank">Network Creative Frequency &amp;
Recency</a> report to view creative recency data.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">456</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the deal. For more
information about negotiated deals between buyers and sellers, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-service.html"
class="xref" target="_blank">Deal Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">entity_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">123</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">If <code
class="ph codeph">imp_type</code> is 1, 2, 3, 4, 6, or 8, the ID of the
buying member; otherwise, the ID of the selling member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">external_inv_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">8293</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the external
inventory code passed in the ad call and predefined by the publisher.
For more details, see <a
href="https://docs.xandr.com/csh?context=52043678" class="xref"
target="_blank">External Inventory Code Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The code of the geographic
country.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">height</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">720</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The height of the
creative/placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Blank"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID for the type of
impression. Possible values (associated types in parentheses):
<ul>
<li><code class="ph codeph">1 ("Blank")</code>: No creative served.</li>
<li><code class="ph codeph">2 ("PSA")</code>: A public service
announcement served because there were no valid bids and no default
creative was available.</li>
<li><code class="ph codeph">3 ("Default Error")</code>: A default
creative served due to a timeout issue.</li>
<li><code class="ph codeph">4 ("Default")</code>: A default creative
served because there were no valid bids.</li>
<li><code class="ph codeph">5 ("Kept")</code>: Your advertiser's
creative served on your publisher's site.</li>
<li><code class="ph codeph">6 ("Resold")</code>: Your publisher's
impression was sold to a third-party buyer.</li>
<li><code class="ph codeph">7 ("RTB")</code>: Your advertiser's creative
served on third-party inventory.</li>
<li><code class="ph codeph">8 ("PSA Error")</code>: A public service
announcement served due to a timeout issue or lack of a default
creative.</li>
<li><code class="ph codeph">9 ("External Impression")</code>: An
impression from an impression tracker.</li>
<li><code class="ph codeph">10 ("External Click")</code>: A click from a
click tracker.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the insertion
order. If the value is <code class="ph codeph">0</code>, the impression
was purchased by a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">insertion_order_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">321</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">This field returns the same
value as <code class="ph codeph">insertion_order_id</code>. To map the
ID to the external code for the insertion order, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/lookup-service.html"
class="xref" target="_blank">Lookup Service</a>. If the value is <code
class="ph codeph">0</code>, the impression was purchased by a
third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the line item. If
the value is <code class="ph codeph">0</code>, the impression was
purchased by a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">line_item_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">111</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">This field returns the same
value as <code class="ph codeph">line_item_id</code>. To map the ID to
the external code for the line item, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/lookup-service.html"
class="xref" target="_blank">Lookup Service</a>. If the value is <code
class="ph codeph">0</code>, the impression was purchased by a
third-party buyer.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The general display style of
a creative, for example, Banner, or Video. You can use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-type-service.html"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">4</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the general display
style of a creative. Possible values: <code class="ph codeph">1</code> =
Banner, <code class="ph codeph">2</code> = Pop, <code
class="ph codeph">3</code> = Interstitial, <code
class="ph codeph">4 </code>= Video, <code class="ph codeph">5</code> =
Test, <code class="ph codeph">6</code> = Expandable, <code
class="ph codeph">8</code> = Skin.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">media_subtype</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Standard Banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The specific display style of
a creative, for example, In-Banner Video, or Standard VAST. You can use
the <a
href="https://docs.xandr.com/bundle/xandr-api/page/media-subtype-service.html"
class="xref" target="_blank">Media Subtype Service</a> to view the
complete list of media subtypes.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">media_subtype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph"> 7 </code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the specific
display style of a creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">pixel_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">543</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the pixel.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">432</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">placement_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Placement Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The external code for the
placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">772</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">publisher_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">772</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">This field returns the same
value as <code class="ph codeph">publisher_id</code>. To map the ID to
the external code for the publisher, use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/lookup-service.html"
class="xref" target="_blank">Lookup Service</a>. If the value is <code
class="ph codeph">0</code>, the impression was purchased by a
third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"USD"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The currency of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">pub_rule_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">588</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the publisher rule.
This is the same as <code class="ph codeph">payment_rule_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">pub_rule_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Pub Rule Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The external code for the
publisher rule.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">892</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the selling
member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">seller_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Real Time"</code>, <code
class="ph codeph">"Direct"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The type of media sold by the
selling member.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">673</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">site_code</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"Site Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The external code for the
site.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"720x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The size of the
creative/placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">width</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">90</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The width of the
creative/placement</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">revenue_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"CPA"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The basis on which an
advertiser pays the member.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">payment_type</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">"com"</code>, <code
class="ph codeph">"revshare"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The basis on which the member
pays a broker.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__3"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__4">The ID of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_id</code> (if included) will be <code
class="ph codeph">null</code>.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="network-analytics-feed__entry__185"
class="entry colsep-1 rowsep-1">Column</th>
<th id="network-analytics-feed__entry__186"
class="entry colsep-1 rowsep-1">Type</th>
<th id="network-analytics-feed__entry__187"
class="entry colsep-1 rowsep-1">Example</th>
<th id="network-analytics-feed__entry__188"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="network-analytics-feed__entry__189"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">25.767257</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">booked_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total revenue booked
through direct advertisers (line item).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">25.767257</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">booked_revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total revenue booked
through a direct advertiser, in the currency of the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of clicks
across all impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">commissions</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">commissions</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">Fees that come out of the
booked revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">2340</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of
impressions (served and resold).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">16.833378</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total cost of the
inventory purchased.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">media_cost_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">16.833378</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">media_cost_pub_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total cost of the
inventory purchased, in the currency of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">network_advertiser_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">network_advertiser_rpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">network_advertiser_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">network_advertiser_rpm_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">network_advertiser_rpm_adv_curr</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">network_advertiser_rpm_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">network_resold_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">double</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">network_resold_rpm</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">network_resold_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">post_click_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of
recorded post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">12.90</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">post_click_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total amount of
recorded post-click revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">post_view_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of
recorded post-view conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">150.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">post_view_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total amount of
recorded post-view revenue.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">ppm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">4.14</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">(profit / imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The profit per thousand
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">profit</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">970.40</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">revenue - media_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total network revenue
minus the network cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">publisher_rpm_publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">200.22</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">publisher_rpm_publisher_currency</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">720.10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total revenue on resold
impressions through direct publishers.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">1921.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">booked_revenue +
reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The sum of booked revenue
and reseller revenue.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">revenue_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">1921.23</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">booked_revenue +
reseller_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The sum of booked revenue
and reseller revenue, in the currency of the advertiser.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">rpm_adv_curr</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">double</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">8.21</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">(revenue / imps) x
1000</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The revenue per thousand
impressions, in the currency of the advertiser.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">serving_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">0.025143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">serving_fees</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">Fees that are added to the
media cost.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">5</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of
post-view and post-click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">total_network_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">money</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">2.60548314606741</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">(revenue / imps) x
1000</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The revenue per 1000
impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">total_publisher_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">double</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">1.66051685393258</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">(media_cost / imps) x
1000</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The cost per 1000
impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">30,450</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">imps_viewed</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that an impression is viewable if 50% of the pixels are
in-view during 1 consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">10,120</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">view_measured_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">double</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">58%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">double</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">45%</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">view_measurement_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__185">imps_master_creative</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__186">int</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__187"><code
class="ph codeph">100</code></td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__188">imps_for_budget_caps_pacing</td>
<td class="entry colsep-1 rowsep-1"
headers="network-analytics-feed__entry__189">The total number of
impressions from the master creative in page-level roadblocking.</td>
</tr>
</tbody>
</table>





## Example

For an example, see the **Example** section in <a
href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
class="xref" target="_blank">Bulk Reporting Feeds</a>.





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/clicktrackers-feed.html"
  class="xref" target="_blank">Clicktrackers Feed</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
  class="xref" target="_blank">Bulk Reporting Feeds</a>






