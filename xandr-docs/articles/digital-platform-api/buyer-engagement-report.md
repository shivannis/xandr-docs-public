---
Title : Buyer Engagement Report
Description : The Buyer Engagement Report gives you insight into the viewable duration
of your display and video creatives.
---


# Buyer Engagement Report





The Buyer Engagement Report gives you insight into the viewable duration
of your display and video creatives.

For instructions on retrieving a report, please see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a> or the
<a href="buyer-engagement-report.html#buyer-engagement-report__example"
class="xref">example</a> below.





## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- custom
- yesterday
- last_7_days
- last_14_days
- month_to_yesterday
- last_30_days



**Data Retention Period**

Data in this report has a daily time granularity and is retained for
five weeks. This report also displays data under the UTC/GMT time zone.





Note: To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.









## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-engagement-report__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-engagement-report__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-engagement-report__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="buyer-engagement-report__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buyer-engagement-report__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">buyer_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">210</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The member ID of the
buyer</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">seller_member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">765</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The member ID of the seller
who sold the impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">seller_member_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"AdMeld"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the seller who
sold the impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the advertiser
whose creative was served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">advertiser_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Advertiser"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the advertiser
whose creative was served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">947764</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the line item that
served the impression</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">line_item_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"LineItemDEF"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the line item
that served the impression</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">campaign_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">728</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the campaign
(doesn't apply to all advertisers)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">campaign_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Test"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the creative
(doesn't apply to all advertisers)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The size of the creative
that was served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"External Impression"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The type of impression that
served. For possible values, see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5"><p>The ID for the type of
impression that served (associated types in parentheses):</p>
<ul>
<li><code class="ph codeph">1 ("Blank")</code>: No creative served</li>
</ul>
<ul>
<li><code class="ph codeph">2 ("PSA")</code>: A public service
announcement served because there were no valid bids and no default
creative was available</li>
<li><code class="ph codeph">3 ("Default Error")</code>: A default
creative served due to a timeout issue</li>
<li><code class="ph codeph">4 ("Default")</code>: A default creative
served because there were no valid bids</li>
<li><code class="ph codeph">5 ("Kept")</code>: Your advertiser's
creative served on your publisher's site</li>
<li><code class="ph codeph">6 ("Resold")</code>: Your publisher's
impression was sold to a third-party buyer</li>
<li><code class="ph codeph">7 ("RTB")</code>: Your advertiser's creative
served on third-party inventory</li>
<li><code class="ph codeph">8 ("PSA Error")</code>: A public service
announcement served due to a timeout issue or lack of a default
creative</li>
<li><code class="ph codeph">9 ("External Impression")</code>: An
impression from an impression tracker</li>
<li><code class="ph codeph">10 ("External Click")</code>: A click from a
click tracker</li>
<li><code class="ph codeph">11 ("Insertion")</code>: Your creative
served on third-party inventory, where it persists across page-loads and
sessions. This impression type is currently only for Facebook News Feed
creatives.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">648359</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the insertion
order</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">insertion_order_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"InsertionOrderABC"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the insertion
order</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">374967</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the publisher that
owns the inventory</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">publisher_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Publisher XYZ"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the publisher
that owns the inventory</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">546</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the placement
where the creative was served</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"300x250 Business"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the placement
where the creative was served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">554</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the creative that
served.
<p>For impressions older than 14 months, creatives will be aggregated
into one row with 0 as the creative ID.</p>


Note: For external click or impression
trackers, <code class="ph codeph">creative_id</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps</code>".

</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">creative_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Q1 2010 728x90"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5"><p>The name of the creative
that served</p>
<p>For impressions older than 14 months, creatives will be aggregated
into one row with "All creative data older than 14 months" as the
creative name.</p>


Note: For external click or impression
trackers, <code class="ph codeph">creative_name</code> will be <code
class="ph codeph">"External Clicks"</code> or <code
class="ph codeph">"External Imps"</code>.

</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Banner"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5"><p>The general display style
of the creative that served:</p>
<ul>
<li><code class="ph codeph">Banner</code></li>
<li><code class="ph codeph">Interstitial</code></li>
<li><code class="ph codeph">Video</code></li>
<li><code class="ph codeph">Text</code></li>
<li><code class="ph codeph">Expandable</code></li>
<li><code class="ph codeph">Skin</code></li>
<li><code class="ph codeph">Facebook</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">2</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the media type
that served</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">device_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Mobile Phones"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5"><p>The type of device where
the impression occurred:</p>
<ul>
<li><code class="ph codeph">Desktops &amp; Laptops</code></li>
<li><code class="ph codeph">Tablets</code></li>
<li><code class="ph codeph">Mobile Phones</code></li>
<li><code class="ph codeph">TV</code></li>
<li><code class="ph codeph">Game Consoles</code></li>
<li><code class="ph codeph">Set Top Box</code></li>
<li><code class="ph codeph">Media Players</code></li>
<li><code class="ph codeph">Other Devices</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5"><p>The ID of the deal that
the served impression is associated with.</p>
<p>For more information about deals you have negotiated with sellers,
see <a
href="https://docs.xandr.com/bundle/xandr-api/page/deal-buyer-access-service.html"
class="xref" target="_blank">Deal Buyer Access Service</a>.</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the deal that
the served impression is associated with</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">date</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"2012-08-23"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The day when the impression
occurred</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">supply_type</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"mobile_web"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5"><p>The supply (inventory)
type on which the impression occurred:</p>
<ul>
<li><code class="ph codeph">Web</code></li>
<li><code class="ph codeph">Mobile Web</code></li>
<li><code class="ph codeph">Mobile App</code></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">split_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">342</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_id</code> (if included) will be <code
class="ph codeph">null</code> .</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">split_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"Mobile Split A"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The name of the split that
purchased the impressions in this data set. Splits are only applicable
to augmented line items. For any reports that contain campaigns, the
<code class="ph codeph">split_name</code> (if included) will be <code
class="ph codeph">null</code> .</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">domain_name</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"bestsiteever.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The URL of the domain on
which the impression occurred</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">domain_id</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">1536</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The ID of the domain on
which the impression occurred</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__1">domain</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__4"><code
class="ph codeph">"bestsiteever.com (1536)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__5">The URL and ID of the domain
on which the impression occurred</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="buyer-engagement-report__entry__166"
class="entry colsep-1 rowsep-1">Column</th>
<th id="buyer-engagement-report__entry__167"
class="entry colsep-1 rowsep-1">Type</th>
<th id="buyer-engagement-report__entry__168"
class="entry colsep-1 rowsep-1">Example</th>
<th id="buyer-engagement-report__entry__169"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="buyer-engagement-report__entry__170"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">11080000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">Your line item's total
number of impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">132297</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">Your line item's total
number of clicks</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">0.00067472306143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The click-through rate –
the ratio of clicks to impressions, expressed as a percentage</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">view_measurable_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">11080000</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The total number of
impressions that were measured for viewability</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">51.47677411571988</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The total number of
impressions that were deemed viewable as defined by the Interactive
Advertising Bureau (IAB): For at least one second, 50% of a creative's
pixels (or 30% for a creative with at least 242,500 pixels) must be
viewable to a viewer on their screen.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">viewdef_viewed_imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">5.678014273984716</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The number of measured
impressions that were viewable, according to the member-level custom
definition configuration (for more details, contact your <span
class="ph">Xandr account representative)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">view_measurable_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">0.00067472306143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">Viewability Measurement
Rate = View Measurable Imps / Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The percentage of
impressions measured for viewability out of the total number of
impressions</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">0.00067472306143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">Viewability Rate = Viewed
Imps / View Measurable Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170"><p>The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">viewdef_view_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">0.00067472306143</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The percentage of
impressions that were viewable, according to the member-level custom
definition configuration, out of the total number of impressions
measured for viewability</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">average_viewable_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">132297</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">Average Viewable Duration
= Total Viewable Duration / Viewable Imps</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The average number of
seconds for which the creative was in view according to IAB viewability
criteria</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">total_viewable_duration</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">seconds</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">152.4298</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The total number of
seconds for which the creative was in view according to IAB viewability
criteria</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">video_completions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">int</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">10</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">N/A</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The total number of video
creatives played for their entire duration</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">video_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">0.0084979838709677</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">Video Completion Rate =
Video Completions / Total Impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The ratio of video
completions to total impressions, expressed as a percentage</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__166">viewable_completion_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__167">double</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__168"><code
class="ph codeph">0.0084979838709677</code></td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__169">Viewable Completion Rate =
Viewable and Completed Video Impressions / Measurable Video
Impressions</td>
<td class="entry colsep-1 rowsep-1"
headers="buyer-engagement-report__entry__170">The ratio of in-view video
completions to total impressions, expressed as a percentage</td>
</tr>
</tbody>
</table>



<div id="buyer-engagement-report__example" >

## Example

**Create the JSON-formatted report request**

The JSON file should include the `report_type`
`"engagement_report_for_buyers"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (year, month, day),
and specify the format in which the data should be returned (csv, excel,
or html). For a full explanation of fields that can be included in the
JSON file, see the <a
href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
class="xref" target="_blank">Report Service</a>.



``` pre
$ cat engagement_report_for_buyers
  {
    "report":
    {
        "report_type":"engagement_report_for_buyers",
        "columns":[
            "line_item_id",
            "line_item_name",
            "creative_name",
            "viewable_completion_rate",
            "average_viewable_duration",
            "ctr",
            "clicks",
            "imps"
        ],
        "report_interval":"last_7_days",
        "format":"csv"
    }
}
```



**`POST` the request to the Reporting Service**



``` pre
$ curl -b cookies -c cookies -X POST -d @engagement_report_for_buyers 'https://api.appnexus.com/report'
{
   "response":{
      "status":"OK",
      "report_id":"097f59fc3ab7d02c5d60db42081d9b69"
   }
}
```



**`GET` the report status from the Report Service**

Make a `GET` call with the Report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=097f59fc3ab7d02c5d60db42081d9b69'
{
   "response":{
      "status":"OK",
      "report":{
         "name":null,
         "created_on":"2021-05-25 19:19:53",
         "json_request":"{\"report\":{\"report_type\":\"engagement_report_for_buyerss\",\"columns\":[\"line_item_id\",
            \"line_item_name\",\"creative_name\",\"viewable_completion_rate\",\"average_viewable_duration\",\"ctr\",\"clicks\",\"imps\"],
            \"report_interval\":\"last_7_days\"}}",
         "url": "report-download?id=b97897a7864dd8f34e7457226c7af592"
      },
      "execution_status":"ready"
   }
}
```



**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
Report ID, but this time to the **report-download** service. You can
find the service and Report ID in the `url` field of the previous `GET`
response. When identifying the file that you want to save to, be sure to
use the file extension of the `"format"` that you specified in your
initial `POST`.



Note: If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=b97897a7864dd8f34e7457226c7af592' > /tmp/engagement_report_for_buyers.csv
```






