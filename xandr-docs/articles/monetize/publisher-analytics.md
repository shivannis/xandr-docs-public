---
Title : Publisher Analytics
Description : The Publisher Analytics Report allows you to view sell-side performance
data for a specific publisher. The data available via this report is
---


# Publisher Analytics





The Publisher Analytics Report allows you to view sell-side performance
data for a specific publisher. The data available via this report is
even more granular than what you can get from the
<a href="network-analytics-report.html" class="xref">Network Analytics
Report</a>.





## Time Frame

All dates and times are given in UTC.

**Time Ranges**

Time ranges define the time period of the data extracted for the report.
The following is a complete list of time ranges available for reports.

However, all time ranges are not available for every report.



- Custom
- Current Hour
- Last Available Day
- Last Hour
- Today
- Last 24 Hours
- Last 48 Hours
- Yesterday
- Last 2 Days
- Last 7 Days
- Last 7 Available Days
- Last 14 Days
- Last 14 Available Days
- Last 30 Days
- Last 30 Available Days
- Last Month
- Last 100 Days
- Last 365 Days
- Quarter to Date
- Month to Date
- Month to Yesterday
- Lifetime



**Intervals**

Intervals determine how your data is grouped together into rows in the
report response. The following is a complete list of intervals available
for reports. However, all intervals are not available for every report.



- Hourly: Data is grouped into rows by the hour.
- Daily: Data is grouped into rows by the day.
- Monthly: Data is grouped into rows by the month.
- Cumulative: Data is grouped together in one figure, covering the
  entire selected time range.



**Data Retention Period**

Most data in this report is maintained permanently (exceptions noted
below). After:

- 100 days, you are no longer able to report on hourly data (however,
  daily, monthly and cumulative intervals are still available)
- 14 months, you are no longer able to report on individual:
  - Creatives
  - Placements
  - Brands

In some cases Analytics reports can show delivery that does not match
statistics shown elsewhere in Microsoft Monetize for
a given advertiser or publisher. This is due to the way that Analytics
reporting data older than 100 days and 14 months is aggregated. The data
from Billing reports are kept in non-aggregated form indefinitely.

**Real Time Data**

Real Time Data is a new feature being offered within this report (not
all users have access yet). Traditionally, reports have had a 2 hour
built-in delay to allow for a fuller reconciliation with conversions,
impressions and other metrics associated with transactions. However, in
some cases, it is important to have up-to-the-minute information even if
it has not been fully reconciled yet. Dimensions which support the
real-time option are marked with the clock icon.

<img
src="../images/network-analytics-report/real-time-data-reporting.jpg"
class="image" />

- To use this new feature, set the Real Time
  Data field to **Included**. This will cause the data in your
  report to contain both real-time and the more fully reconciled batch
  file data. If you want the report to break out the real-time data from
  batch file data, select the Real-Time
  status checkbox.
- Do not use information in the real-time data portion of your report to
  bill your clients as that data may change slightly once fully
  reconciled within 2 to 4 hours. For more information about how quickly
  reporting data is processed, see
  <a href="availability-of-reporting-data.html" class="xref">Availability
  of Reporting Data</a>.





## Dimensions

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006264__entry__1" class="entry">Column</th>
<th id="ID-00006264__entry__2" class="entry">Filter?</th>
<th id="ID-00006264__entry__3" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Buyer</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The member whose
advertiser purchased the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Advertiser</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The specific
advertiser that purchased the impression.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Placement Group</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The placement group to
which the sold inventory belonged. (The hierarchy of sell-side objects
is <span
class="ph uicontrol">Publisher &gt; <span
class="ph uicontrol">Placement Group &gt; <span
class="ph uicontrol">Placement.) For more information, see
<a href="working-with-placement-groups.html" class="xref">Working with
Placement Groups</a>.

Note: For impressions older than 100
days, the ID will be <code class="ph codeph">0</code>.
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Placement</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The placement where
the impression occurred. For more information about placements, see <a
href="working-with-placements.html" class="xref">Working with
Placements</a>.

Note: For impressions older than 100
days, placements will be aggregated into one row with <code
class="ph codeph">-1</code> as the ID and a generic name.
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Line Item</td>
<td class="entry" headers="ID-00006264__entry__2">No</td>
<td class="entry" headers="ID-00006264__entry__3">The line item under
which the impression was purchased. For more information about line
items, see <a href="working-with-line-items.html" class="xref">Working
with Line Items</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Campaign</td>
<td class="entry" headers="ID-00006264__entry__2">No</td>
<td class="entry" headers="ID-00006264__entry__3">The campaign that was
used to purchase the impression. For more information about campaigns,
see <a href="working-with-campaigns.html" class="xref">Working with
Campaigns</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Split</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The name and ID of the
split that purchased the impressions in this data set. Splits are only
applicable to augmented line items. For any rows with a campaign name,
the Split column (if included) will be null.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Media Type</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The media type
associated with the creative that served on this impression. .</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Brand</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The brand associated
with the creative that served on the impression. For more information
about how to set up your brand preferences, see <a
href="working-with-network-ad-quality.html" class="xref">Working with
Network Ad Quality</a> and <a
href="working-with-publisher-ad-quality.html" class="xref">Working with
Ad Quality</a>. For impression type "Resold", no information is
available in the Brand field for this
report. See the <a href="seller-brand-review-report.html"
class="xref">Seller Brand Review Report</a> instead.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Country</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The country where the
impression occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Size</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The size of the
creative that served, for example, <code
class="ph codeph">"300x50"</code>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Impression Type</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The type of impression
that occurred. For the definitions of each impression type, see <a
href="publisher-analytics.html#ID-00006264__ID-000063c0"
class="xref">Impression Type Definitions</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Payment Rule</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The publisher's
payment rule in effect on this impression, if any. For more information
about payment rules, see <a href="working-with-payment-rules.html"
class="xref">Working with Payment Rules</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">External Code</td>
<td class="entry" headers="ID-00006264__entry__2">No</td>
<td class="entry" headers="ID-00006264__entry__3">The name and ID of the
external inventory code passed in the ad call and predefined by the
publisher. For more details, see <a
href="https://docs.xandr.com/bundle/xandr-api/page/external-inventory-code-service.html"
class="xref" target="_blank">External Inventory Code Service.</a></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Revenue Type</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">How the impression is
being paid for (by the buying member). For example, the buying member
could be paying a flat CPM rate. For the definitions of each revenue
type, see <a href="publisher-analytics.html#ID-00006264__ID-00006436"
class="xref">Revenue Type Definitions</a> below.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Payment Type</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">How the publisher is
being paid for the impression. For example, the publisher could be
getting paid via revenue sharing ("revshare"). For the definitions of
each payment type, see <a
href="publisher-analytics.html#ID-00006264__ID-0000647a"
class="xref">Payment Type Definitions</a> below.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Deal</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The deal associated
with the transaction for the impression.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Filtered Request
Reason</td>
<td class="entry" headers="ID-00006264__entry__2">No</td>
<td class="entry" headers="ID-00006264__entry__3">The reason the ad
request was filtered out by Xandr prior to
bidding.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__1">Adjustments</td>
<td class="entry" headers="ID-00006264__entry__2">No</td>
<td class="entry" headers="ID-00006264__entry__3">Changes to reported
revenue based on factors such as revenue, conversions, clicks, or
impressions reported by an advertiser's or agency's ad servers.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__1">Selling Currency</td>
<td class="entry" headers="ID-00006264__entry__2">Yes</td>
<td class="entry" headers="ID-00006264__entry__3">The transaction
currency used by the seller to sell this impression. Including this
dimension will cause the monetary metrics to be displayed in the selling
currency.</td>
</tr>
</tbody>
</table>







Note: You can also filter on a
particular number of impressions using the **Minimum Impressions**
filter.



**Impression Type Definitions**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006264__entry__64" class="entry">Value</th>
<th id="ID-00006264__entry__65" class="entry">Name</th>
<th id="ID-00006264__entry__66" class="entry">Definition</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__64">1</td>
<td class="entry" headers="ID-00006264__entry__65">Blank</td>
<td class="entry" headers="ID-00006264__entry__66">No creative was
delivered.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__64">2</td>
<td class="entry" headers="ID-00006264__entry__65">PSA</td>
<td class="entry" headers="ID-00006264__entry__66">A PSA creative was
served.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__64">3</td>
<td class="entry" headers="ID-00006264__entry__65">Default Error</td>
<td class="entry" headers="ID-00006264__entry__66">Your default creative
served due to a timeout issue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__64">4</td>
<td class="entry" headers="ID-00006264__entry__65">Default</td>
<td class="entry" headers="ID-00006264__entry__66">Your default creative
served because there were no valid bids.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__64">5</td>
<td class="entry" headers="ID-00006264__entry__65">Kept</td>
<td class="entry" headers="ID-00006264__entry__66">Your advertiser's
creative served on your publisher's site.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__64">6</td>
<td class="entry" headers="ID-00006264__entry__65">Resold</td>
<td class="entry" headers="ID-00006264__entry__66">Your publisher's
impression was sold to a third party.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__64">7</td>
<td class="entry" headers="ID-00006264__entry__65">RTB</td>
<td class="entry" headers="ID-00006264__entry__66">Your advertiser's
creative served on third-party inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__64">8</td>
<td class="entry" headers="ID-00006264__entry__65">PSA Error</td>
<td class="entry" headers="ID-00006264__entry__66">A PSA served due to a
timeout issue or lack of a default creative.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__64">9</td>
<td class="entry" headers="ID-00006264__entry__65">External
Impression</td>
<td class="entry" headers="ID-00006264__entry__66">An impression from an
impression tracker.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__64">10</td>
<td class="entry" headers="ID-00006264__entry__65">External Click</td>
<td id="ID-00006264__ID-00006436" class="entry"
headers="ID-00006264__entry__66">A click from a click tracker.</td>
</tr>
</tbody>
</table>



**Revenue Type Definitions**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006264__entry__97" class="entry">Column</th>
<th id="ID-00006264__entry__98" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__97">No Payment</td>
<td class="entry" headers="ID-00006264__entry__98">Revenue was not
tracked.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__97">Flat CPM</td>
<td class="entry" headers="ID-00006264__entry__98">A flat payment per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__97">Cost Plus CPM</td>
<td class="entry" headers="ID-00006264__entry__98">Media cost (what was
spent on inventory), plus an extra CPM.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__97">Cost Plus Margin</td>
<td class="entry" headers="ID-00006264__entry__98">Media cost (what was
spent on inventory), plus a percentage of spend.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__97">CPC</td>
<td class="entry" headers="ID-00006264__entry__98">A flat payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__97">CPA</td>
<td class="entry" headers="ID-00006264__entry__98">A flat payment per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__97">Revshare</td>
<td id="ID-00006264__ID-0000647a" class="entry"
headers="ID-00006264__entry__98">The selling member gets paid a
percentage of the ad revenue.</td>
</tr>
</tbody>
</table>



**Payment Type Definitions**



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006264__entry__113" class="entry">Column</th>
<th id="ID-00006264__entry__114" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__113">No Payment</td>
<td class="entry" headers="ID-00006264__entry__114">Revenue was not
tracked.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__113">Flat CPM</td>
<td class="entry" headers="ID-00006264__entry__114">A flat payment per
1000 impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__113">Cost Plus CPM</td>
<td class="entry" headers="ID-00006264__entry__114">Media cost (what was
spent on inventory), plus an extra CPM.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__113">Cost Plus
Margin</td>
<td class="entry" headers="ID-00006264__entry__114">Media cost (what was
spent on inventory), plus a percentage of spend.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__113">CPC</td>
<td class="entry" headers="ID-00006264__entry__114">A flat payment per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__113">CPA</td>
<td class="entry" headers="ID-00006264__entry__114">A flat payment per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__113">Revshare</td>
<td class="entry" headers="ID-00006264__entry__114">The publisher gets
paid a percentage of the ad revenue.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__113">Flat Fee</td>
<td class="entry" headers="ID-00006264__entry__114">The publisher gets
paid a flat fee, usually agreed upon in advance.</td>
</tr>
</tbody>
</table>



## Metrics



Note: When values of a metric are
displayed as percentages in the UI, they will be displayed as decimals
when you export the report.



<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00006264__entry__131" class="entry">Column</th>
<th id="ID-00006264__entry__132" class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Imps</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Imps (master
creative)</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
page-level roadblocks that served the master creative.

Note: Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Imps (blank)</td>
<td class="entry" headers="ID-00006264__entry__132">The number of blank
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Imps (PSA)</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
impressions that showed PSAs (Public Service Announcements). PSAs are
served only if there is no other creative to serve.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Imps (PSA
error)</td>
<td class="entry" headers="ID-00006264__entry__132">Like <strong>Imps
(PSA)</strong> above, except that the PSA is serving due to a timeout
issue, as opposed to a lack of valid bids.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Imps (default
error)</td>
<td class="entry" headers="ID-00006264__entry__132">Impressions where a
default creative served due to a timeout issue.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Imps (default)</td>
<td class="entry" headers="ID-00006264__entry__132">Impressions where a
default creative served because there were no valid bids.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Imps (kept)</td>
<td class="entry" headers="ID-00006264__entry__132">A kept impression is
one in which your managed advertiser's creative serves on your managed
publisher's site.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Imps (resold)</td>
<td class="entry" headers="ID-00006264__entry__132">A resold impression
is one that is resold to a third-party buyer.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Imps (RTB)</td>
<td class="entry" headers="ID-00006264__entry__132">Impressions your
advertiser bought from a third party.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Clicks</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
clicks.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">CTR</td>
<td class="entry" headers="ID-00006264__entry__132">The click-through
rate – the ratio of clicks to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Total
Conversions</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
conversions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Conversion Rate</td>
<td class="entry" headers="ID-00006264__entry__132">The ratio of
conversions to impressions.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Conversions Per
Million</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
conversions per million impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Post View
Conversions</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
post-view conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.html" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Post Click
Convs</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
post-click conversions. For more information about how we attribute
post-view (and other) conversions, see <a
href="conversion-attribution.html" class="xref">Conversion
Attribution</a>.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131"><span
class="ph">Network Revenue</td>
<td class="entry" headers="ID-00006264__entry__132">Total <span
class="ph">Network revenue. This value will be displayed in USD
as well as potentially the Selling Currency (if you've selected that
dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Publisher
Revenue</td>
<td class="entry" headers="ID-00006264__entry__132">Total publisher
revenue. This value will be displayed in USD as well as potentially the
Selling Currency (if you've selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131"><span
class="ph">Network Profit</td>
<td class="entry" headers="ID-00006264__entry__132">The sum of booked
revenue and reseller revenue minus total cost.
<p>This value will be displayed in USD as well as potentially the
Selling Currency (if you've selected that dimension).</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Sold <span
class="ph">Network RPM</td>
<td class="entry" headers="ID-00006264__entry__132"><span
class="ph">Network revenue per 1000 impressions that were not
defaults, PSAs, or errors. This value will be displayed in USD as well
as potentially the Selling Currency (if you've selected that
dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131"><span
class="ph">Network PPM</td>
<td class="entry"
headers="ID-00006264__entry__132"><strong>Deprecated.</strong> Total
Network profit per thousand impressions (Total
Network RPM - Total Publisher RPM). This value
will be displayed in USD as well as potentially the Selling Currency (if
you've selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131"><span
class="ph">Network ROI</td>
<td class="entry"
headers="ID-00006264__entry__132"><strong>Deprecated.</strong> Return on
investment for the Network. This value will be
displayed in USD as well as potentially the Selling Currency (if you've
selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Sold Publisher
RPM</td>
<td class="entry" headers="ID-00006264__entry__132">Publisher revenue
per 1000 impressions that were not defaults, PSAs, or errors.This value
will be displayed in USD as well as potentially the Selling Currency (if
you've selected that dimension).</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Total Publisher
RPM</td>
<td class="entry" headers="ID-00006264__entry__132">Publisher revenue
per 1000 impressions, including defaults, PSAs, or errors. This value
will be displayed in USD as well as potentially the Selling Currency (if
you've selected that dimension).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Viewable Imps</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
measured impressions that were viewable, per the IAB Viewability
definition, which states that an impression is viewable if 50% of the
pixels are in-view during 1 consecutive second.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Imps (Master
Creative)</td>
<td class="entry" headers="ID-00006264__entry__132">The number of
page-level roadblocks that served the master creative.

Note: Alpha-Beta Notice:
<p>This field or feature is part of functionality currently in either
Alpha or Beta phase. It is therefore subject to change.</p>
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Impression
Requests</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
ad calls (impression requests).


Warning: This metric is typically
inaccurate for video inventory due to occasional delays in receiving
video events, which can lead to inflated request totals based on the
assumption that the video has expired. For a better video request
metric, you should use Ad Requests in the <a
href="seller-fill-and-delivery-network-report.html" class="xref">Seller
Fill and Delivery Network Report</a> or <a
href="network-video-analytics-report.html" class="xref">Network Video
Analytics Report</a>.

</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Filtered
Requests</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
bid requests for which Xandr did not hold an
auction due to inventory quality concerns.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Total RPM</td>
<td class="entry" headers="ID-00006264__entry__132">The revenue per 1000
impressions, including defaults, PSAs, and errors.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">View-Measured
Imps</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
impressions that were measured for viewability.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Viewability
Rate</td>
<td class="entry" headers="ID-00006264__entry__132">The percentage of
impressions that were viewable out of the total number of impressions
measured for viewability. (Viewed Imps / View Measured Imps)</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Viewability
Measurement Rate</td>
<td class="entry" headers="ID-00006264__entry__132">The percentage of
impressions measured for viewability out of the total number of
impressions. (View Measured Imps / Imps)</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Partner Fees</td>
<td class="entry" headers="ID-00006264__entry__132">The total amount of
third-party costs, budgeted using <a href="partner-fees.html"
class="xref">Partner Fees</a>, that have accrued on an augmented line
item over the reported period of time.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Total Cost</td>
<td class="entry" headers="ID-00006264__entry__132">The total amount of
costs accrued over the reported period of time. This generally includes
two types of costs, budgeted costs (media cost, data cost, partner fees,
serving fees, commissions) and publisher revenue if you track publisher
payouts on the platform.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Total Cost eCPM</td>
<td class="entry" headers="ID-00006264__entry__132">The total cost per
1,000 imps.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Total Cost eCPC</td>
<td class="entry" headers="ID-00006264__entry__132">The total cost per
click.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Total Cost eCPA</td>
<td class="entry" headers="ID-00006264__entry__132">The total cost per
conversion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Profit eCPM</td>
<td class="entry" headers="ID-00006264__entry__132">Profit per thousand
impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Profit eCPC</td>
<td class="entry" headers="ID-00006264__entry__132">Profit per
click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Profit eCPA</td>
<td class="entry" headers="ID-00006264__entry__132">Profit per
conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Profit Margin</td>
<td class="entry" headers="ID-00006264__entry__132">Buyer profit
margin.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Network Profit
eCPM</td>
<td class="entry" headers="ID-00006264__entry__132"><span
class="ph">Network profit per thousand impressions.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Network Profit
eCPC</td>
<td class="entry" headers="ID-00006264__entry__132"><span
class="ph">Network profit per click.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Network Profit
eCPA</td>
<td class="entry" headers="ID-00006264__entry__132"><span
class="ph">Network profit per conversion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Network Profit
Margin</td>
<td class="entry" headers="ID-00006264__entry__132"><span
class="ph">Network profit margin.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Video Skips</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times a user skipped the video. Use this metric for reporting when
buying skippable inventory.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Video Starts</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">25% Video
Complete</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times the video creatives completed 25% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">50% Video
Complete</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times the video creatives completed 50% of the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">75% Video
Complete</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times the video creatives completed 75% of the entire duration.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Video
Completions</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times the video creatives played for the entire duration.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Videos Served</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
video responses served to the player. An ad response occurs when the
VAST document (XML) is served in response to a request. An ad response
doesn't necessarily indicate a successful impression. For an impression,
the first frame of the video must be served.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Video Errors</td>
<td class="entry" headers="ID-00006264__entry__132">The total number of
times a video error occurred.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Revenue Per Video
Complete</td>
<td class="entry" headers="ID-00006264__entry__132">The revenue per
video completion.</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Cost Per Video
Complete</td>
<td class="entry" headers="ID-00006264__entry__132">The cost per video
completion.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Video Completion
Rate</td>
<td class="entry" headers="ID-00006264__entry__132">The ratio of video
completions to impressions, expressed as a percentage (video
completions/total impressions).</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00006264__entry__131">Video Start
Rate</td>
<td class="entry" headers="ID-00006264__entry__132">The percentage of
times the first segment of the video creative was downloaded and
started.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00006264__entry__131">Video Skip Rate</td>
<td class="entry" headers="ID-00006264__entry__132">The percentage of
times the user opted to skip the video.</td>
</tr>
</tbody>
</table>





## To Run your Report

Follow these steps to run your report.

1.  Select Reporting from the
    appropriate top menu (depending on how your account has been
    configured).
    1.  Or, from the Publishers top menu, click on
        Prebid
        Server Premium \>
        Analytics \>
        Prebid Server Analytics
2.  Select the relevant report from the list. The
    Report screen shows the available
    filters, dimensions, and delivery options for the report. The
    selections you make here will determine what report data is
    delivered to you, and how.
    

    Important: For an explanation of
    how grouping and filtering work, see
    <a href="dimensions-metrics-filtering-and-grouping.html"
    class="xref">Dimensions, Metrics, Filtering, and Grouping</a>.

    
3.  Select the relevant filters to limit the data displayed to just the
    information you want. For example, rather than running a report that
    shows impressions for all inventory sources, you may want to list
    results for just a select few. When you select a filter (by clicking
    Edit), a selection panel appears.
    Select items in the **Available** list (left), then click
    Add to include them in the
    **Chosen** list (right).
4.  Group by Dimension. Grouping allows you to display rows of data in
    the order you prefer.
    

    Warning: The more dimensions you
    group by, the larger the data set that is returned. Larger data sets
    can take substantially longer to process. Be sure to group using
    only the dimensions you need.

    
5.  Choose a delivery option. Once you've selected your filters and
    grouped by your chosen dimensions, you need to choose a delivery
    method. Available delivery methods include:
    - **Run now, show results in screen**: For smaller amounts of data,
      you may want to view the report as soon as possible in your
      browser. You can download the report in XLSX, CSV, Excel/TSV and
      JSON format. However, there is a limit of 100,000 rows per report
      when downloading as XLSX and Excel file.
    - **Run in background, notify me when results are ready to view**: A
      popup notification will let you know when the report is ready to
      view or download.
      

      Tip: The maximum size of the
      report that can be downloaded from the UI is 100 MB. Also, there
      is a limit of 100,000 rows per report when downloading as XLSX and
      Excel file. If the size of the report is more than that, you can
      try to download it using the <a
      href="https://docs.xandr.com/bundle/xandr-api/page/report-service.html"
      class="xref" target="_blank">API</a> for that reporting service
      (The limit here is 10 million rows).

      
    - <span id="ID-00006264__d10e107">**Export, send results via
      email**: Run the report in the background and email the results to
      one or more email addresses.
    - **Save as report template**: Save your selected report settings so
      that you can run this report again in the future. You can name
      this template using the text entry field under
      Name this report (its checkbox
      is auto-selected when you choose this option). A saved report can
      be rerun from the Your Reports
      screen.
    - **Add to scheduled reports**: Run this report automatically at
      specified times and have it sent to one or more email addresses.
    - **Name this report**: Give this report with its current settings a
      name for future reference.
6.  <span id="ID-00006264__d10e136">Click Run
    report to send your report request.





## Related Topics

- <a href="publisher-reporting.html" class="xref">Publisher Reporting</a>
- <a href="seller-site-domain-report.html" class="xref">Seller Site Domain
  Report</a>






