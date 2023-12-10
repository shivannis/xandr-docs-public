---
Title : Publisher Analytics
Description : The Publisher Analytics report can be used to view revenue and profit
ms.date: 10/28/2023
ms.custom: digital-platform-api
data across a specific publisher's sites and placements. This report is
---


# Publisher Analytics





The Publisher Analytics report can be used to view revenue and profit
data across a specific publisher's sites and placements. This report is
available to both network and publisher users.

For instructions on retrieving a report, see the <a
href="report-service.md"
class="xref" target="_blank">Report Service</a> or the
<a href="publisher-analytics.md#publisher-analytics__example"
class="xref">Examples</a> below. This report requires that a publisher
ID be specified as part of the URL as follows:

``` pre
https://api.appnexus.com/report?publisher_id=PUBLISHER_ID
```




## Time Frame



The `report_interval` field in the JSON request can be set to one of the
following:

- current_hour
- last_hour
- today
- yesterday
- last_48_hours
- last_7_days
- last_30_days
- month_to_date
- month_to_yesterday
- quarter_to_date
- last_month
- lifetime



**Data Retention Period**

Most data in this report is maintained permanently (exceptions noted
below). After:

- 100 days, you are no longer able to report on hourly data. However,
  daily, monthly and cumulative intervals are still available.
- 14 months, you are no longer able to report on individual:
  - Creatives
  - Placements
  - Brands

In some cases Analytics reports can show delivery that does not match
Lifetime QuickStats for a given advertiser or publisher. This is due to
the way that Analytics reporting data older than 100 days and 14 months
are aggregated. The data from Billing reports are kept in non-aggregated
form indefinitely.



<b>Note:</b> To run a report for a custom time
frame, set the `start_date` and `end_date` fields in your report
request. For more details about these fields, see <a
href="report-service.md"
class="xref" target="_blank">Report Service</a>.






## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-analytics__dimensions__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="publisher-analytics__dimensions__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-analytics__dimensions__entry__3"
class="entry colsep-1 rowsep-1">Filter?</th>
<th id="publisher-analytics__dimensions__entry__4"
class="entry colsep-1 rowsep-1">Example</th>
<th id="publisher-analytics__dimensions__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">hour</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">time</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"2010-02-01 06:00:00"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The hour of the
auction. Note that, for impressions older than 100 days, the day will be
returned rather than the hour.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">day</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">time</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"2010-02-01"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The day of the
auction.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">month</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">time</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"2010-02"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The month of the
auction.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">publisher_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">923</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">publisher_code</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"My Publisher Code"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The custom code for
the publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">publisher_currency</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"USD"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The currency of the
publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">pub_rule_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">736</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the
publisher rule.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">pub_rule_name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"My Publisher Rule"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The name of the
publisher rule.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">pub_rule</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"My Publisher Rule (736)"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">pub_rule_code</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"My Publisher Rule Code"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">seller_member_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">456</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the
selling member.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">geo_country</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"US"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The code of the
geographical country.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">geo_country_name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"United States"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The name of the
geographical country.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">size</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"728x90"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The size of the
placement/creative served.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">placement_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">546</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the
placement. Note that, for impressions older than 100 days, placements
will be aggregated into one row with <code class="ph codeph">-1</code>
as the <code class="ph codeph">placement_id</code>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">placement_name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"300x250 Business"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The name of the
placement. Note that, for impressions older than 100 days, placements
will be aggregated into one row with <code
class="ph codeph">"All placement data older than 100 days"</code> as the
<code class="ph codeph">placement_name</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">placement</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Photos 728x90 (567)"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">placement_code</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Photos Code"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">deal_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">Yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">2345</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the deal.
For more information about deals you have negotiated with buyers, see <a
href="deal-service.md"
class="xref" target="_blank">Deal Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">deal_name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">No</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The name of the
deal.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">deal</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">No</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Private deal for buyer 1085 with floor of $2.50 (45)"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">deal_code</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">No</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Custom code"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The custom code for
the deal.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">brand_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">3</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the brand
associated with a creative served on the publisher's inventory. For
<code class="ph codeph">imp_type_id</code> = <code
class="ph codeph">6</code>, no information is available in the <code
class="ph codeph">brand_id</code> field for this report. See the <a
href="publisher-brand-review-report.md"
class="xref" target="_blank">Publisher Brand Review Report</a>
instead.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">brand_name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Ace Hardware"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The name of the
brand associated with a creative served on the publisher's inventory.
For <code class="ph codeph">imp_type_id</code> = 6, no information is
available in the <code class="ph codeph">brand_name</code> field for
this report. See the <a
href="publisher-brand-review-report.md"
class="xref" target="_blank">Publisher Brand Review Report</a>
instead.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">brand</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Ace Hardware (3)"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">supply_type</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">
The type of inventory. Possible values:
<ul>
<li><code class="ph codeph">"web"</code></li>
<li><code class="ph codeph">"mobile_web"</code></li>
<li><code class="ph codeph">"mobile_app"</code></li>
</ul>
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">imp_type_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">1</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID for the type
of impression. Possible values (associated types in parentheses):
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
</ul></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">imp_type</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Kept"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The type of
impressions. For possible values see <code
class="ph codeph">imp_type_id</code>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">media_type</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">no</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Banner"</code>, <code class="ph codeph">"Pop"</code>,
<code class="ph codeph">"Interstitial"</code>, <code
class="ph codeph">"Video"</code>, <code class="ph codeph">"Text"</code>,
<code class="ph codeph">"Expandable"</code>, <code
class="ph codeph">"Skin"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The general display
style of a creative served on the publisher's inventory. You can use the
<a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a> to view the complete
list of media types.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">adjustment_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">22</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of an
adjustment you have set using the Adjustment Service. Networks use
adjustments to help display their actual revenue in Xandr
reporting.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">site_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">555</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the site.
For more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">site_name</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"My Site"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The name of the
site. For more information, see the <a
href="site-service.md"
class="xref" target="_blank">Site Service</a>.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">site</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"My Site (555)"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5"><strong>Deprecated</strong>
(as of October 17, 2016).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">venue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">string</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">"Venue 55"</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The word Venue
followed by the ID of the inventory's associated venue.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__1">mediatype_id</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__3">yes</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__4"><code
class="ph codeph">444</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__dimensions__entry__5">The ID of the media
type associated with the creative that was served. For more information,
see the <a
href="media-type-service.md"
class="xref" target="_blank">Media Type Service</a>.</td>
</tr>
</tbody>
</table>




## Metrics

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="publisher-analytics__metrics__entry__1"
class="entry colsep-1 rowsep-1">Column</th>
<th id="publisher-analytics__metrics__entry__2"
class="entry colsep-1 rowsep-1">Type</th>
<th id="publisher-analytics__metrics__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
<th id="publisher-analytics__metrics__entry__4"
class="entry colsep-1 rowsep-1">Formula</th>
<th id="publisher-analytics__metrics__entry__5"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_total</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">234223</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
impressions (including defaults).</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_requests</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">234300</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_requests</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5"><p>The total number of
ad calls (impression requests).</p>

<b>Warning:</b> This metric is typically
inaccurate for video inventory due to occasional delays in receiving
video events, which can lead to inflated request totals based on the
assumption that the video has expired. For a better video request
metric, you should use Ad Requests in the <a
href="seller-fill-and-delivery-network-report.md"
class="xref" target="_blank">Seller Fill and Delivery Network Report</a>
or the <a
href="network-video-analytics.md"
class="xref" target="_blank">Network Video Analytics Report</a>.
</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_sold</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">234123</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_sold</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
impressions sold to direct and real-time advertisers.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_default</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">100</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_default</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
impressions not sold (default creative served).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_blank</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">12</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_blank</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions which were served with a blank.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_psa</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_psa</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions which were served with a PSA.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_default_error</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">3</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_default_error</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions which defaulted due to a timeout error.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_default_bidder</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">5</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_default_bidder</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions which defaulted because there were no valid bids.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_kept</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">405</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_kept</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions your advertiser purchased from your publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_resold</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">506</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_resold</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions your publisher sold to a third party.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_rtb</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">94</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_rtb</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
impressions your advertiser bought from a third party.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_filled</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">4900</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_filled</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of blank,
PSA, default, kept, resold, and external impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">external_impression</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">0</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">external_impression</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of external
impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">external_click</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">0</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">external_click</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of external
clicks.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">clicks</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">545</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">clicks</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
clicks across all impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">post_view_convs_pixel</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">23</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">Post view conversions
for the pixel. For more information on how we attribute post-view (and
other) conversions, see <a
href="monetize_monetize-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Monetize)</a> or <a
href="invest_invest-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Invest).</a></td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">post_clicks_convs_pixel</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">15</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">Post click conversions
for the pixel. For more information on how we attribute post-view (and
other) conversions, see <a
href="monetize_monetize-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Monetize)</a> or <a
href="invest_invest-standard/conversion-attribution.md"
class="xref" target="_blank">Conversion Attribution (Invest).</a></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">400.05</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">publisher_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue paid out to
the publisher (based on revshare or CPM).</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_revenue_pub_curr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">400.05</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">publisher_revenue_pub_curr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue paid out to
the publisher (based on revshare or CPM), in the currency of the
publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_filled_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">350.02</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">publisher_filled_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue paid out to
the publisher (based on revshare or CPM) for filled impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_filled_revenue_publisher_curr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">350.02</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">publisher_filled_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue paid out to
the publisher (based on revshare or CPM) for filled impressions, in the
currency of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_default_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">350.02</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">publisher_default_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue paid out to
the publisher (based on revshare or CPM) for default impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_default_revenue_publisher_curr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">350.02</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">publisher_default_revenue</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue paid out to
the publisher (based on revshare or CPM) for default impressions, in the
currency of the publisher.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">total_convs</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">205</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">total_convs</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
post view and post click conversions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">ctr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">0.002327</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">clicks / imps</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The rate of clicks to
impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">click_thru_pct</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.12359550561797</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(clicks / imps) *
100</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The rate of clicks to
impressions as a percentage.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">convs_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">0.000856</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">total_convs / imps</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The rate of conversions
to impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">convs_per_mm</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">221.877080097625</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(total_convs / imps) x
1,000,000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of
conversions per million impressions.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_rpm</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.71</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(publisher_revenue /
imps) x 1000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The publisher revenue
per 1000 impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_rpm_pub_curr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.71</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(publisher_revenue /
imps) x 1000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The publisher revenue
per 1000 impressions, in the currency of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_filled_rpm</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(publisher_revenue /
imps_filled) x 1000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The publisher revenue
per 1000 filled impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_filled_rpm_publisher_currency</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(publisher_revenue /
imps_filled) x 1000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The publisher revenue
per 1000 filled impressions, in the publisher's currency.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_default_rpm</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.71</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(publisher_revenue /
imps_default) x 1000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The publisher revenue
per 1000 default impressions.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">publisher_default_rpm_publisher_curr</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.71</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(publisher_revenue /
imps_default) x 1000</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The publisher revenue
per 1000 default impressions, in the currency of the publisher.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">imps_viewed</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">30,450</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">imps_viewed</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The number of measured
impressions that were viewable, per the IAB Viewability definition,
which states that an impression is viewable if 50% of the pixels are
in-view during 1 consecutive second.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">view_measured_imps</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10,120</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">view_measured_imps</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">view_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">58%</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">view_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">view_measurement_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">45%</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">view_measurement_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_skips</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_starts</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">11</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_25_pcts</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_50_pcts</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_75_pcts</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_completions</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">12</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_served</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">10</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
video responses served to the player.An ad response occurs when the VAST
document (XML) is served in response to a request.An ad response doesn't
necessarily indicate a successful impression. For an impression, the
first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_errors</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">2</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">revenue_per_video_complete</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">25.76</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The revenue per video
completion.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">cost_per_video_complete</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">money</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">22.76</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_completion_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4">(video
completions/total impressions) x 100</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The ratio of video
completions to impressions, expressed as a percentage.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_start_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The percentage of times
the first segment of the video creative was downloaded and started.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__1">video_skip_rate</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__2">double</td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__3"><code
class="ph codeph">1.12359550561797%</code></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__4"></td>
<td class="entry align-left colsep-1 rowsep-1 valign-top"
headers="publisher-analytics__metrics__entry__5">The percentage of times
the user opted to skip the video.</td>
</tr>
</tbody>
</table>

**Age Buckets**

<table class="table frame-all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th id="publisher-analytics__metrics__entry__261"
class="entry colsep-1 rowsep-1">Bucket ID</th>
<th id="publisher-analytics__metrics__entry__262"
class="entry colsep-1 rowsep-1">Bucket Name</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">0</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"unknown"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">1</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"13-17"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">2</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"18-24"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">3</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"25-34"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">4</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"35-44"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">5</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"45-54"</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">6</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"'55-64"</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__261">7</td>
<td class="entry colsep-1 rowsep-1"
headers="publisher-analytics__metrics__entry__262">"65+"</td>
</tr>
</tbody>
</table>




## Example

**Step 1. Prepare your report request**

``` pre
$ cat the-file.json

{
    "report": {
        "format": "csv",
        "report_interval": "yesterday",
        "columns": [
            "publisher_id",
            "imp_type",
            "geo_country",
            "placement_id",
            "imps_total",
            "imps_kept",
            "imps_resold",
            "publisher_filled_revenue",
            "total_convs"
        ],
        "report_type": "publisher_analytics"
    }
}
```

**Step 2. `POST` the request JSON to the report service**

``` pre
$ curl -b cookies -c cookies -X POST -d @the-file.json 'https://api.appnexus.com/report?publisher_id=5555'

{
    "response": {
        "status": "OK",
        "report_id": "f589854c1697da8ff9ead66825c9bc04"
    }
}
```

**Step 3. Check the status of your request**

``` pre
$ curl -b cookies 'https://api.appnexus.com/report?id=f589854c1697da8ff9ead66825c9bc04'

{
    "response": {
        "status": "OK",
        "report": {
            "name": "",
            "created_on": "2013-10-30 21:15:36",
            "cache_hit": false,
            "fact_cache_hit": false,
            "fact_cache_error": "",
            "header_info": "",
            "row_count": "",
            "report_size": "",
            "internal_info": "",
            "user_id": "2027",
            "entity_id": "0",
            "started_on": "1970-01-01 00:00:01",
            "finished_on": "1970-01-01 00:00:01",
            "query_time": ""
        },
        "execution_status": "pending"
    }
}
```

**Step 4. Download your data**

``` pre
$ curl -b cookies 'https://api.appnexus.com/report-download?id=f589854c1697da8ff9ead66825c9bc04' > /tmp/publisher_analytics.csv
```



<b>Note:</b> There is a limit of 100,000 rows
per report when you download them as XLSX and Excel file.








