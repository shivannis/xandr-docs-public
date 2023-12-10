---
Title : Publisher Brand Review Report
Description : This report provides a view of brand performance across a specific
ms.date: 10/28/2023
ms.custom: digital-platform-api
publisher's inventory. This report is available to both network and
---


# Publisher Brand Review Report





This report provides a view of brand performance across a specific
publisher's inventory. This report is available to both network and
publisher users. You can:

- review what creative has served on your inventory under a specific
  publisher and how it performed.
- review creative performance by audit status.



This report requires that a publisher ID be specified as part of the URL
as follows:

``` pre
https://api.appnexus.com/report?publisher_id=PUBLISHER_ID
```



The `time_granularity` of the data is `daily`. For instructions on
retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the <a
href="publisher-brand-review-report.md#publisher-brand-review-report__example"
class="xref">Example</a> below.



>

## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- yesterday
- last_7_days
- last_30_days
- month_to_date
- last_month



**Data Retention Period**

Data retention period for this report is 428 days.



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.





>

## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-brand-review-report__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="publisher-brand-review-report__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-brand-review-report__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="publisher-brand-review-report__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="publisher-brand-review-report__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">month</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The month
of the auction.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">day</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">time</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The day of
the auction.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">placement_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">546</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the placement.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">placement_name</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"300x250 Business"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The name
of the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">placement</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"300x250 Business (546)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">geo_country</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">geo_country_name</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The name
of the geographical country.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">imp_type</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Kept"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The type
of impressions. For possible values see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">imp_type_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5"><div
>
The ID for the type of impression. Possible values (associated types in
parentheses):
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
<li><code class="ph codeph">9 ("External Impression"):</code> An
impression from an impression tracker.</li>
<li><code class="ph codeph">10 ("External Click")</code>: A click from a
click tracker.</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">creative_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">654</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">site_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the site. For more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">site_name</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"My Site"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The name
of the site. For more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">brand_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the brand associated with a creative served on the publisher's
inventory.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">brand_name</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Ace Hardware"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The name
of the brand associated with a creative served on the publisher's
inventory.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">brand</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Ace Hardware (3)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">width</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">250</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The width
of the creative.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">height</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">300</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The height
of the creative.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">site</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"My Site (555)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">site_code</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Site Name Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The custom
code for the site.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">placement_code</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Photos Code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The custom
code for the placement.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">media_type</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Banner", "Pop", "Interstitial", "Video", "Text"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The
general display style of a creative served on the publisher's inventory.
You can use the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">mediatype_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">444</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the media type associated with the creative that was served. For more
information, see the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">deal_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the deal. For more information about deals you have negotiated with
buyers, see <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">deal_name</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The name
of the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">deal</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">deal_code</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Custom code"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The custom
code for the deal.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">brand_offer_category_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">1256</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the brand offer category associated with the impression. See <code
class="ph codeph">category_id</code> in the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> page.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">brand_offer_category_name</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Luxury Cars"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The name
of the brand offer category associated with the impression. See <code
class="ph codeph">category_id</code> in the <a
href="brand-service.md"
class="xref" target="_blank">Brand Service</a> page.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">creative_audit_status_id</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The ID of
the audit status of the creative associated with the impression:
<ul>
<li><code class="ph codeph">0</code> = unaudited</li>
<li><code class="ph codeph">1</code> = seller audited only</li>
<li><code class="ph codeph">2</code> = appnexus audited</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">creative_audit_status</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">no</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4"><code
class="ph codeph">"Unaudited"</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The audit
status of the creative associated with the impression:
<ul>
<li><code class="ph codeph">"Unaudited"</code></li>
<li><code class="ph codeph">"Self Audit Only"</code></li>
<li><code class="ph codeph">"AppNexus Audited"</code></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__1">size</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__2">string</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__3">yes</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__4">"728x90"</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__dimensions__entry__5">The width
and height of the creative associated with the impression.</td>
</tr>
</tbody>
</table>



>

## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-brand-review-report__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="publisher-brand-review-report__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-brand-review-report__metrics__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="publisher-brand-review-report__metrics__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="publisher-brand-review-report__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">34534</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">imps</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The total
number of impressions (including defaults).</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">345</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">clicks</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The total
number of clicks across all impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">int</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">205</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">total_convs</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The total
number of post view and post click conversions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">convs_rate</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">0.000856</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">total_convs /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The rate of
conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">ctr</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">0.002327</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">clicks /
imps</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The rate of
clicks to impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">publisher_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">400.05</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">publisher_revenue</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The revenue
paid out to the publisher (based on revshare or CPM).</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">publisher_rpm</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">money</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">1.71</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">(publisher_revenue
/ imps) x 1000</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The publisher
revenue per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__1">convs_per_mm</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__2">double</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__3"><code
class="ph codeph">221.877080097625</code></td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__4">(total_convs
/ imps) x 1,000,000</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-brand-review-report__metrics__entry__5">The number of
conversions per million impressions.</td>
</tr>
</tbody>
</table>



>

## Example

**Create the JSON report request**

The JSON file should include the `report_type` of
`"publisher_brand_review"`, as well as the columns (dimensions and
metrics) and `report_interval` that you want to retrieve. You can also
filter for specific dimensions, define granularity (`year`, `month`,
`day`), and specify the `"format"` in which the data should be returned
(`"csv"`, `"excel"`, or `"html"`). For a full explanation of fields that
can be included in the JSON file, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.

``` pre
$ cat publisher_brand_review

{"report": 
    {
        "format": "csv",
        "report_interval": "yesterday",
        "row_per": ["placement_id"],
        "columns": ["placement_id","imp_type","creative_id","brand_id"],
        "report_type": "publisher_brand_review"
    }
}
```

**`POST` the request to the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>**

`POST` the JSON request to get back a report ID.

``` pre
$ curl -b cookies -c cookies -X post -d @publisher_brand_review "https://api.appnexus.com/report?publisher_id=384186"

{
   "response":{
      "status":"OK",
      "report_id":"97a181df6d77a8f3cd5a45eff4ea3dab"
   }
}
```

**`GET` the report status from the Report Service**

Make a `GET` call with the report ID to retrieve the status of the
report. Continue making this `GET` call until the `execution_status` is
`"ready"`. Then use the **report-download** service to save the report
data to a file, as described in the next step.

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report?id=97a181df6d77a8f3cd5a45eff4ea3dab'

{
    "response": {
        "status": "OK",
        "report": {
            "name": null,
            "created_on": "2014-11-19 21:57:00",
            "json_request": "{\"report\":{\"format\":\"csv\",\"report_interval\":\"yesterday\",\"row_per\":[\"placement_id\"],\"columns\":[\"placement_id\",\"imp_type\",\"creative_id\",\"brand_id\"],\"report_type\":\"publisher_brand_review\",\"filters\":[{\"seller_member_id\":\"958\"},{\"publisher_id\":\"384186\"}]}}",
            "url": "report-download?id=97a181df6d77a8f3cd5a45eff4ea3dab"
        },
        "execution_status": "ready"
    }
}
```

**`GET` the report data from the Report Download Service**

To download the report data to a file, make another `GET` call with the
report ID, but this time to the **report-download** service. You can
find the service and report ID in the `url` field of the response to
your previous `GET` call. When identifying the file that you want to
save to, be sure to use the file extension of the file format that you
specified in your initial `POST`.



<b>Note:</b> If an error occurs during
download, the response header will include an HTTP error code and
message. Use `-i` or `-v` in your call to expose the response header.



``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/report-download?id=97a181df6d77a8f3cd5a45eff4ea3dab' > /tmp/publisher_brand_review.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








