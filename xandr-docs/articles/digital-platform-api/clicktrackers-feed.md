---
Title : Clicktrackers Feed
Description : You can use <a
href="https://docs.xandr.com/bundle/xandr-api/page/click-tracker-service.html"
---


# Clicktrackers Feed





You can use <a
href="https://docs.xandr.com/bundle/xandr-api/page/click-tracker-service.html"
class="xref" target="_blank">click trackers</a> to track user clicks on
creatives served by third-party ad servers (rather than by
Xandr). This reporting feed provides data on
those external clicks.



Note: Each row returned is for a single
click event.





Note: How to fetch this feed

For instructions on how to fetch the clicktrackers feed, see the example
on the <a
href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
class="xref" target="_blank">Bulk Reporting Feeds</a> page, but set the
the `"report_type"` to `"clicktrackers"` and build your request using
the fields shown below.







## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="clicktrackers-feed__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="clicktrackers-feed__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="clicktrackers-feed__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="clicktrackers-feed__entry__4"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">hour</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">2012-02-24 12:00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The year, month, day, and hour of
the external click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">2012-02-24</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The year, month, and day of the
external click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">2012-02</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The year and month of the
external click.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">datetime</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">timestamp</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">2012-02-24 12:52:55</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The year, month, day, hour,
minute, and second of the external click.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">advertiser_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">36224</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the advertiser that
owns the click tracker.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">auction_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">7562841545137044238</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID used by <span
class="ph">Xandr for the external click event.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">line_item_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">70411</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the line item to which
the click tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">insertion_order_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">2983</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the insertion order to
which the line item is associated. If <code class="ph codeph">0</code>,
the line item is not associated to an insertion order.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">536</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the member to which the
advertiser belongs.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">pricing_type</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">"cpm"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The way the member is paid by the
advertiser. Possible values: <code class="ph codeph">"none"</code>,
<code class="ph codeph">"cpm"</code>, <code
class="ph codeph">"cpc"</code>, <code class="ph codeph">"cpa"</code>,
<code class="ph codeph">"cost_plus_cpm"</code>, or <code
class="ph codeph">"cost_plus_margin"</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">publisher_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">114370</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the publisher to which
the click tracker is associated.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">site_domain</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">"test-domain.com"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The domain where the external
click occurred.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">tag_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">690240</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the placement to which
the click tracker is associated. If <code class="ph codeph">0</code>,
the click tracker is not associated to a placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">tracker_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">22</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID of the click tracker.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__1">user_id</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__3"><code
class="ph codeph">5809746384815353833</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__4">The ID used by <span
class="ph">Xandr for the user who clicked. If not known, this is
<code class="ph codeph">0</code>.</td>
</tr>
</tbody>
</table>





## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="clicktrackers-feed__entry__65"
class="entry colsep-1 rowsep-1">Column</th>
<th id="clicktrackers-feed__entry__66"
class="entry colsep-1 rowsep-1">Type</th>
<th id="clicktrackers-feed__entry__67"
class="entry colsep-1 rowsep-1">Example</th>
<th id="clicktrackers-feed__entry__68"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="clicktrackers-feed__entry__69"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__65">commission_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__66">money</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__67"><code
class="ph codeph">0.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__68">commission_cpm</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__69">The cpm that the member pays a
broker. This is set at the line item.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__65">commission_revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__66">money</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__67"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__68">commission_revshare</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__69">The revshare that the member
pays a broker. This is set at the line item.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__65">media_buy_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__66">money</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__67"><code
class="ph codeph">0.25</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__68">media_buy_cost</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__69">The amount paid for the external
click. The third-party ad server passes this in the <code
class="ph codeph">"ancost"</code> parameter of the click tracker's query
string.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__65">media_buy_rev_share_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__66">double</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__67"><code
class="ph codeph">0.1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__68">media_buy_rev_share_pct</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__69">The percentage of revenue that
the member pays the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__65">revenue_value</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__66">money</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__67"><code
class="ph codeph">5.00</code></td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__68">revenue_value</td>
<td class="entry colsep-1 rowsep-1"
headers="clicktrackers-feed__entry__69">The amount that the advertiser
pays the member. This is set at the line item.</td>
</tr>
</tbody>
</table>





## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/network-analytics-feed.html"
  class="xref" target="_blank">Network Analytics Feed</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/bulk-reporting-feeds.html"
  class="xref" target="_blank">Bulk Reporting Feeds</a>






